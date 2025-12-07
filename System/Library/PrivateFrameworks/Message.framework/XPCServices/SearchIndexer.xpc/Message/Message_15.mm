void sub_1001078B8(uint64_t *a1, uint64_t a2)
{
  v5 = _s12LocalMailboxV6LoggerVMa(0);
  __chkstk_darwin(v5);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v75 - v9;
  __chkstk_darwin(v11);
  v13 = &v75 - v12;
  __chkstk_darwin(v14);
  v16 = &v75 - v15;
  __chkstk_darwin(v17);
  v19 = &v75 - v18;
  __chkstk_darwin(v20);
  if ((*(a1 + 36) & 1) == 0)
  {
    v76 = v21;
    v77 = &v75 - v22;
    v37 = *(a1 + 8);
    v38 = *a1;
    v39 = *(a1 + 8);
    v40 = a1[2];

    v41 = v2;
    sub_100186664(v38, v39, v40, v37);
    if (a1[6])
    {
      v42 = v77;
      sub_100108E28(a2, v77);
      sub_100108E28(a2, v19);
      sub_100108E28(a2, v16);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v24 = sub_1004A4A54();
      v43 = sub_1004A6024();
      if (os_log_type_enabled(v24, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v80 = v45;
        *v44 = 68158979;
        *(v44 + 4) = 2;
        *(v44 + 8) = 256;
        v46 = v76;
        v47 = v19[*(v76 + 20)];
        sub_100108E8C(v19);
        *(v44 + 10) = v47;
        *(v44 + 11) = 1040;
        *(v44 + 13) = 2;
        *(v44 + 17) = 512;
        v48 = *&v16[*(v46 + 20) + 2];
        sub_100108E8C(v16);
        *(v44 + 19) = v48;
        *(v44 + 21) = 2160;
        *(v44 + 23) = 0x786F626C69616DLL;
        *(v44 + 31) = 2085;
        v49 = v42 + *(v46 + 20);
        v50 = *(v49 + 8);
        v51 = *(v49 + 16);

        sub_100108E8C(v42);
        v78 = v50;
        v79 = v51;
        v52 = sub_1004A5824();
        v54 = sub_10015BA6C(v52, v53, &v80);

        *(v44 + 33) = v54;
        _os_log_impl(&_mh_execute_header, v24, v43, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Mailbox supports CONDSTORE, but flag change has no MODSEQ.", v44, 0x29u);
        sub_1000197E0(v45);
        goto LABEL_8;
      }

      sub_100108E8C(v16);
      sub_100108E8C(v19);

      v74 = v42;
      goto LABEL_30;
    }

    v64 = a1[5];
    v65 = *(a1 + 14);
    v67 = a1[8];
    v66 = a1[9];
    v68 = *v41;
    v69 = *(*v41 + 2);
    if (!v69 || (static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(v65, v67, v66, *&v68[32 * v69], *&v68[32 * v69 + 8], *&v68[32 * v69 + 16]) & 1) == 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_100085AD0(0, *(v68 + 2) + 1, 1, v68);
      }

      v72 = *(v68 + 2);
      v71 = *(v68 + 3);
      if (v72 >= v71 >> 1)
      {
        v68 = sub_100085AD0((v71 > 1), v72 + 1, 1, v68);
      }

      *(v68 + 2) = v72 + 1;
      v73 = &v68[32 * v72];
      *(v73 + 8) = v65;
      *(v73 + 5) = v67;
      *(v73 + 6) = v66;
      *(v73 + 7) = v64;
      *v41 = v68;
      return;
    }

    v70 = *(v68 + 2);
    if (v70)
    {
      if (v64 <= *&v68[32 * v70 + 24])
      {
        v66 = *&v68[32 * v70 + 24];
      }

      else
      {
        v66 = v64;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    v68 = sub_100139908(v68);
LABEL_21:
    if (v70 > *(v68 + 2))
    {
      __break(1u);
    }

    else
    {
      *&v68[32 * v70 + 24] = v66;
      *v41 = v68;
    }

    return;
  }

  if (*(a1 + 28))
  {
    v23 = v21;
    sub_100108E28(a2, v13);
    sub_100108E28(a2, v10);
    sub_100108E28(a2, v7);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v24 = sub_1004A4A54();
    v25 = sub_1004A6014();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v80 = v27;
      *v26 = 68158979;
      v28 = v23;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v29 = v10[*(v23 + 20)];
      sub_100108E8C(v10);
      *(v26 + 10) = v29;
      *(v26 + 11) = 1040;
      *(v26 + 13) = 2;
      *(v26 + 17) = 512;
      v30 = *&v7[*(v23 + 20) + 2];
      sub_100108E8C(v7);
      *(v26 + 19) = v30;
      *(v26 + 21) = 2160;
      *(v26 + 23) = 0x786F626C69616DLL;
      *(v26 + 31) = 2085;
      v31 = &v13[*(v28 + 20)];
      v32 = *(v31 + 1);
      v33 = *(v31 + 4);

      sub_100108E8C(v13);
      v78 = v32;
      v79 = v33;
      v34 = sub_1004A5824();
      v36 = sub_10015BA6C(v34, v35, &v80);

      *(v26 + 33) = v36;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Flag change has no UID and no sequence number.", v26, 0x29u);
      sub_1000197E0(v27);
LABEL_8:

      return;
    }

    sub_100108E8C(v7);
    sub_100108E8C(v10);

    v74 = v13;
LABEL_30:
    sub_100108E8C(v74);
    return;
  }

  v55 = *(a1 + 6);
  v56 = *a1;
  v57 = *(a1 + 8);
  v58 = a1[2];
  v59 = v2;
  v60 = v2[4];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = sub_1000859C4(0, *(v60 + 2) + 1, 1, v60);
  }

  v62 = *(v60 + 2);
  v61 = *(v60 + 3);
  if (v62 >= v61 >> 1)
  {
    v60 = sub_1000859C4((v61 > 1), v62 + 1, 1, v60);
  }

  *(v60 + 2) = v62 + 1;
  v63 = &v60[32 * v62];
  *(v63 + 8) = v55;
  *(v63 + 5) = v56;
  v63[48] = v57;
  *(v63 + 7) = v58;
  v59[4] = v60;
}

uint64_t sub_100107FA0()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_100107FF0()
{
  sub_10018A6B4(_swiftEmptyArrayStorage);
  v2 = v1;
  v4 = v3;
  v6 = v5;

  v0[1] = v2;
  v0[2] = v4;
  v0[3] = v6;
  return result;
}

uint64_t sub_100108050(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 16);
  if (!v5)
  {
LABEL_15:

    v8 = 0;
    LODWORD(v16) = 1;
    v20 = v24;
    goto LABEL_16;
  }

  v7 = result;
  v8 = 0;
  v9 = v4 + 48;
  while (1)
  {
    if (v8 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v11 = v4;
    v12 = *(v9 - 16);
    v13 = *(v9 - 8);

    LOBYTE(v12) = ConnectionCommandIDSet.isDisjoint(with:)(v7, a2, a3, v12, v13);

    if ((v12 & 1) == 0)
    {
      break;
    }

    ++v8;
    v9 += 32;
    v4 = v11;
    if (v5 == v8)
    {
      v8 = v5;
      goto LABEL_8;
    }
  }

  v4 = v11;
LABEL_8:
  if (*(v4 + 16) < v8)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  sub_100092028(0, v8, 0);
  v14 = _swiftEmptyArrayStorage[2];
  v15 = (v4 + 56);
  v16 = v8;
  do
  {
    v18 = *v15;
    v15 += 4;
    v17 = v18;
    v19 = _swiftEmptyArrayStorage[3];
    if (v14 >= v19 >> 1)
    {
      sub_100092028((v19 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    _swiftEmptyArrayStorage[v14++ + 4] = v17;
    --v16;
  }

  while (v16);
  v20 = v24;
  v4 = v11;
LABEL_16:
  v21 = sub_1000AFBEC(_swiftEmptyArrayStorage);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    if ((*(v20 + 48) & 1) == 0 && v21 <= *(v20 + 40))
    {
      v21 = *(v20 + 40);
    }

    *(v20 + 40) = v21;
    *(v20 + 48) = 0;
  }

  if (v16)
  {
LABEL_24:
  }

  else
  {
    if (*(v4 + 16) >= v8)
    {
      sub_100164C3C(0, v8);
      goto LABEL_24;
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

char *sub_100108270(char *result, __n128 a2)
{
  v3 = result;
  v4 = *v2;
  if (*(*v2 + 16))
  {
    v5 = static ConnectionCommandIDSet.empty.getter(a2);
    v7 = v6;
    v9 = v8;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085AD0(0, *(v4 + 2) + 1, 1, v4);
      v4 = result;
    }

    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      result = sub_100085AD0((v10 > 1), v11 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 2) = v11 + 1;
    v12 = &v4[32 * v11];
    *(v12 + 8) = v5;
    *(v12 + 5) = v7;
    *(v12 + 6) = v9;
    *(v12 + 7) = v3;
    *v2 = v4;
  }

  else
  {
    *(v2 + 40) = result;
    *(v2 + 48) = 0;
  }

  return result;
}

uint64_t sub_100108344()
{
  if ((*(*(v0 + 32) + 16) != 0) | *(v0 + 48) & 1)
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

double sub_100108378@<D0>(uint64_t a1@<X8>)
{
  sub_100107504(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1001083C4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005D0A58, &unk_1004D4D48);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_10002587C(a1, a1[3]);
  sub_1001090D4();
  sub_1004A6FA4();
  v12 = a2;
  v11[15] = 0;
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100109128();
  sub_1004A6C74();
  if (!v3)
  {
    v11[14] = 1;
    sub_1004A6CA4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100108578(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D0A30, &qword_1004D4D38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10002587C(a1, a1[3]);
  sub_100108FA8();
  sub_1004A6FA4();
  v11 = *v3;
  v10[7] = 0;
  sub_10000C9C0(&qword_1005D0A40, &qword_1004D4D40);
  sub_100108FFC();
  sub_1004A6C74();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  sub_1004A6BE4();
  v10[5] = 2;
  sub_1004A6BE4();
  v10[4] = 3;
  sub_1004A6C34();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100108768()
{
  if (*v0)
  {
    return 0x65636E6575716573;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1001087B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001004AA3E0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xED000065756C6156)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1004A6D34();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1001088A4(uint64_t a1)
{
  v2 = sub_1001090D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001088E0(uint64_t a1)
{
  v2 = sub_1001090D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100108938()
{
  v1 = 0x65636E6575716573;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x577365676E616863;
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

uint64_t sub_1001089D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001093D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100108A04(uint64_t a1)
{
  v2 = sub_100108FA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100108A40(uint64_t a1)
{
  v2 = sub_100108FA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100108A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if ((sub_1001029D0(a1, a7) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1001045DC(a2, a8) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1001044E0(a3, a9) & 1) == 0)
  {
    return 0;
  }

  result = sub_100102318(a4, a10);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (a6)
  {
    return (a12 & 1) != 0;
  }

  if (a12)
  {
    return 0;
  }

  if (((a11 | a5) & 0x8000000000000000) == 0)
  {
    return a11 == a5;
  }

  __break(1u);
  return result;
}

unint64_t sub_100108B5C(uint64_t a1)
{
  result = sub_100108B84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100108B84()
{
  result = qword_1005D0A28;
  if (!qword_1005D0A28)
  {
    result = swift_getWitnessTable(byte_1004D4BE4, &_s18CondStoreResponsesVN, v0, v1);
    atomic_store(result, &qword_1005D0A28);
  }

  return result;
}

void *sub_100108BD8(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100091A08(0, v2, 0);
  v4 = a1 + 56;
  result = sub_1004A6554();
  v6 = result;
  v7 = 0;
  v20 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v21 = v7;
    v22 = *(a1 + 36);
    v23 = *(*(a1 + 48) + 4 * v6);
    result = sub_1004A6934();
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      result = sub_100091A08((v10 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v12 = &_swiftEmptyArrayStorage[2 * v11];
    v12[4] = HIDWORD(v23);
    v12[5] = 0xE000000000000000;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v13 = *(a1 + 56 + 8 * v9);
    if ((v13 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v6 & 0x3F));
    if (v14)
    {
      v8 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v17 = (a1 + 64 + 8 * v9);
      while (v16 < (v8 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_100020944(v6, v22, 0);
          v8 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v6, v22, 0);
    }

LABEL_4:
    v7 = v21 + 1;
    v6 = v8;
    if (v21 + 1 == v20)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100108E28(uint64_t a1, uint64_t a2)
{
  v4 = _s12LocalMailboxV6LoggerVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100108E8C(uint64_t a1)
{
  v2 = _s12LocalMailboxV6LoggerVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100108F10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100108F58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100108FA8()
{
  result = qword_1005D0A38;
  if (!qword_1005D0A38)
  {
    result = swift_getWitnessTable("u(\v", &_s18CondStoreResponsesV13CapturedValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D0A38);
  }

  return result;
}

unint64_t sub_100108FFC()
{
  result = qword_1005D0A48;
  if (!qword_1005D0A48)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005D0A40, &qword_1004D4D40);
    v4[0] = sub_100109080();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005D0A48);
  }

  return result;
}

unint64_t sub_100109080()
{
  result = qword_1005D0A50;
  if (!qword_1005D0A50)
  {
    result = swift_getWitnessTable(byte_1004D4CE8, &_s18CondStoreResponsesV13CapturedValueV14SequenceUpdateVN, v0, v1);
    atomic_store(result, &qword_1005D0A50);
  }

  return result;
}

unint64_t sub_1001090D4()
{
  result = qword_1005D0A60;
  if (!qword_1005D0A60)
  {
    result = swift_getWitnessTable(byte_1004D4ED4, &_s18CondStoreResponsesV13CapturedValueV14SequenceUpdateV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D0A60);
  }

  return result;
}

unint64_t sub_100109128()
{
  result = qword_1005D0A68;
  if (!qword_1005D0A68)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10000DEFC(&unk_1005DA9A0, &unk_1004CF770);
    v4[0] = &protocol witness table for String;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005D0A68);
  }

  return result;
}

unint64_t sub_1001091C8()
{
  result = qword_1005D0A70;
  if (!qword_1005D0A70)
  {
    result = swift_getWitnessTable(aU_2, &_s18CondStoreResponsesV13CapturedValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D0A70);
  }

  return result;
}

unint64_t sub_100109220()
{
  result = qword_1005D0A78;
  if (!qword_1005D0A78)
  {
    result = swift_getWitnessTable(byte_1004D4EAC, &_s18CondStoreResponsesV13CapturedValueV14SequenceUpdateV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D0A78);
  }

  return result;
}

unint64_t sub_100109278()
{
  result = qword_1005D0A80;
  if (!qword_1005D0A80)
  {
    result = swift_getWitnessTable(byte_1004D4E1C, &_s18CondStoreResponsesV13CapturedValueV14SequenceUpdateV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D0A80);
  }

  return result;
}

unint64_t sub_1001092D0()
{
  result = qword_1005D0A88;
  if (!qword_1005D0A88)
  {
    result = swift_getWitnessTable("]$\v", &_s18CondStoreResponsesV13CapturedValueV14SequenceUpdateV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D0A88);
  }

  return result;
}

unint64_t sub_100109328()
{
  result = qword_1005D0A90;
  if (!qword_1005D0A90)
  {
    result = swift_getWitnessTable("E \v", &_s18CondStoreResponsesV13CapturedValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D0A90);
  }

  return result;
}

unint64_t sub_100109380()
{
  result = qword_1005D0A98;
  if (!qword_1005D0A98)
  {
    result = swift_getWitnessTable(byte_1004D4D8C, &_s18CondStoreResponsesV13CapturedValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D0A98);
  }

  return result;
}

uint64_t sub_1001093D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEF73657461647055;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x577365676E616863 && a2 == 0xEE00444955687469 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA3A0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004AA3C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

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

Swift::Int sub_10010955C()
{
  result = sub_100093190(&off_1005990D0);
  qword_1005DDF70 = result;
  return result;
}

uint64_t sub_100109584()
{
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004D13E0;
  *(v0 + 32) = type metadata accessor for FindMissingMessages(0);
  sub_100026044();

  sub_1004A6674();
  *(v0 + 80) = type metadata accessor for FetchSearchResultMessages(0);

  sub_1004A6674();
  *(v0 + 128) = &type metadata for DetectChangesToMessages;

  sub_1004A6674();
  *(v0 + 176) = &type metadata for DetectChangesToMessagesInRecent;

  sub_1004A6674();
  *(v0 + 224) = &type metadata for DetectRemovedMessages;

  sub_1004A6674();
  *(v0 + 272) = &type metadata for DetectRemovedMessagesInRecent;

  sub_1004A6674();
  return v0;
}

void sub_100109724(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  if (*(v1 + 112))
  {
    sub_1000118A4(a1, v8);
    sub_1000118A4(a1, v5);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v15 = sub_1004A4A54();
    v16 = sub_1004A6034();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v17 = 68159235;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      v18 = &v5[*(v3 + 20)];
      *(v17 + 10) = *v18;
      *(v17 + 11) = 2082;
      v19 = &v8[*(v3 + 20)];
      *(v17 + 13) = sub_10015BA6C(*(v19 + 1), *(v19 + 2), &v46);
      *(v17 + 21) = 1040;
      *(v17 + 23) = 2;
      *(v17 + 27) = 512;
      v20 = *(v18 + 12);
      sub_100011908(v5);
      *(v17 + 29) = v20;
      *(v17 + 31) = 2160;
      *(v17 + 33) = 0x786F626C69616DLL;
      *(v17 + 41) = 2085;
      v21 = *(v19 + 4);
      v22 = *(v19 + 10);

      sub_100011908(v8);
      v44 = v21;
      v45 = v22;
      v23 = sub_1004A5824();
      v25 = sub_10015BA6C(v23, v24, &v46);

      *(v17 + 43) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Not purging any messages.", v17, 0x33u);
      swift_arrayDestroy();

      return;
    }

    sub_100011908(v5);

    v42 = v8;
  }

  else
  {
    v26 = *(v1 + 104);
    sub_1000118A4(a1, &v43 - v13);
    sub_1000118A4(a1, v11);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v27 = sub_1004A4A54();
    v28 = sub_1004A6034();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v43 = v26;
      v30 = v29;
      v46 = swift_slowAlloc();
      *v30 = 68159491;
      *(v30 + 4) = 2;
      *(v30 + 8) = 256;
      v31 = &v11[*(v3 + 20)];
      *(v30 + 10) = *v31;
      *(v30 + 11) = 2082;
      v32 = &v14[*(v3 + 20)];
      *(v30 + 13) = sub_10015BA6C(*(v32 + 1), *(v32 + 2), &v46);
      *(v30 + 21) = 1040;
      *(v30 + 23) = 2;
      *(v30 + 27) = 512;
      v33 = *(v31 + 12);
      sub_100011908(v11);
      *(v30 + 29) = v33;
      *(v30 + 31) = 2160;
      *(v30 + 33) = 0x786F626C69616DLL;
      *(v30 + 41) = 2085;
      v34 = *(v32 + 4);
      v35 = *(v32 + 10);

      sub_100011908(v14);
      v44 = v34;
      v45 = v35;
      v36 = sub_1004A5824();
      v38 = sub_10015BA6C(v36, v37, &v46);

      *(v30 + 43) = v38;
      *(v30 + 51) = 2082;
      v44 = v43;
      sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
      v39 = MessageIdentifierRange.debugDescription.getter();
      v41 = sub_10015BA6C(v39, v40, &v46);

      *(v30 + 53) = v41;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task purging UIDs %{public}s", v30, 0x3Du);
      swift_arrayDestroy();

      return;
    }

    sub_100011908(v11);

    v42 = v14;
  }

  sub_100011908(v42);
}

double sub_100109C14()
{
  if (qword_1005CCE78 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_100109C74(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  if (*(v3 + 112) & 1) != 0 || (v5 = *(v3 + 104), (sub_10002092C(a1, a2)))
  {
    v6 = 0xF000000000000007;
  }

  else
  {
    v7 = swift_allocObject();
    v8 = *(v3 + 24);
    *(v7 + 16) = *(v3 + 16);
    *(v7 + 24) = v8;
    *(v7 + 32) = v5;
    v9 = *(v3 + 124);
    *(v7 + 40) = *(v3 + 116);
    *(v7 + 48) = v9;
    v6 = v7 | 0x3000000000000002;
  }

  *a3 = v6;
}

__n128 sub_100109D30(uint64_t a1, __int128 *a2)
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
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100109D5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 125))
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

uint64_t sub_100109DA4(uint64_t result, int a2, int a3)
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
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 125) = 1;
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

    *(result + 125) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100109E18()
{
  result = qword_1005D0AA0;
  if (!qword_1005D0AA0)
  {
    result = swift_getWitnessTable(asc_1004D502C, &type metadata for PurgeMessagesOutsideWindowOfInterest.ActionID, v0, v1);
    atomic_store(result, &qword_1005D0AA0);
  }

  return result;
}

unint64_t sub_100109E6C(uint64_t a1)
{
  result = sub_100109E94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100109E94()
{
  result = qword_1005D0B58;
  if (!qword_1005D0B58)
  {
    result = swift_getWitnessTable(byte_1004D4FE8, &type metadata for PurgeMessagesOutsideWindowOfInterest, v0, v1);
    atomic_store(result, &qword_1005D0B58);
  }

  return result;
}

uint64_t sub_100109EE8()
{

  return _swift_deallocObject(v0, 49, 7);
}

Swift::Int sub_100109F38()
{
  result = sub_100093190(&off_100599148);
  qword_1005DDF78 = result;
  return result;
}

void sub_100109F60(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v23 - v8;
  sub_1000118A4(a1, v23 - v8);
  sub_1000118A4(a1, v6);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000B43E8(v2, v28);
  sub_1000B43E8(v2, v27);
  sub_1000B43E8(v2, v26);
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v12 = 68160003;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v13 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v13;
    *(v12 + 11) = 2082;
    v14 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_10015BA6C(*(v14 + 1), *(v14 + 2), &v25);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    v15 = *(v13 + 12);
    sub_100011908(v6);
    *(v12 + 29) = v15;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v16 = *(v14 + 4);
    LODWORD(v14) = *(v14 + 10);

    sub_100011908(v9);
    v23[1] = v16;
    v24 = v14;
    v17 = sub_1004A5824();
    v19 = sub_10015BA6C(v17, v18, &v25);

    *(v12 + 43) = v19;
    *(v12 + 51) = 2048;
    v20 = v29;
    sub_1000B42C8(v28);
    *(v12 + 53) = v20;
    *(v12 + 61) = 2048;
    v21 = *(v27[15] + 16);
    sub_1000B42C8(v27);
    *(v12 + 63) = v21;
    *(v12 + 71) = 2048;
    v22 = v26[14];
    sub_1000B42C8(v26);
    *(v12 + 73) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. highest-mod-seq local: %llu, changes without UID: %ld, server: %llu", v12, 0x51u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000B42C8(v26);
    sub_1000B42C8(v27);
    sub_1000B42C8(v28);
    sub_100011908(v6);

    sub_100011908(v9);
  }
}

uint64_t sub_10010A268@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 104);
  if ((v5 < *(v3 + 112) || *(*(v3 + 120) + 16)) && (sub_100112A10(a1, a2) & 1) == 0)
  {
    if (*(v3 + 128))
    {
      v9 = &off_100599720;
    }

    else
    {
      v9 = &off_100599660;
    }

    v10 = a3 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
    v11 = sub_100016948();
    static MessageIdentifierRange.all.getter(&type metadata for UID, v11, &v14);
    v13 = v14;
    Range<>.init<A>(_:)(&v13, &type metadata for UID, v11);
    sub_100016D2C();
    sub_1004A7124();
    *v10 = v9;
    *(v10 + 8) = v5;
    *(v10 + 16) = 0;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    v12 = sub_10000C9C0(&qword_1005D0C20, &qword_1004D5180);
    return (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
  }

  else
  {
    v6 = sub_10000C9C0(&qword_1005D0C20, &qword_1004D5180);
    v7 = *(*(v6 - 8) + 56);

    return v7(a3, 1, 1, v6);
  }
}

void sub_10010A434(uint64_t result)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  if ((v3 | v2) < 0)
  {
    __break(1u);
  }

  else if (v3 != v2)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
    __chkstk_darwin(result);
    if (*(v6 + 192))
    {
      v8 = *(v6 + 176);
      v7 = *(v6 + 184);
      v12 = *(v6 + 168);
      v9 = v12;
      v10 = v6;

      sub_1000BE940(&v12, v4, v5, 0, sub_10010AB08);
      sub_100020D58(v9, v8, v7, 1);
      v11 = v12;
      *(v10 + 176) = 0;
      *(v10 + 184) = 0;
      *(v10 + 168) = v11;
      *(v10 + 192) = 1;
    }
  }
}

uint64_t sub_10010A530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = *(a2 + 120);
  v13 = (a1 + *(type metadata accessor for MailboxSyncState(0) + 48));
  v14 = v13[3];
  v15 = v13[4];
  sub_100025928(v13, v14);
  (*(v15 + 32))(v12, v14, v15);
  v16 = v13[3];
  v17 = v13[4];
  sub_10002587C(v13, v16);
  (*(v17 + 40))(v16, v17);
  v19 = *(v18 + 16);

  sub_1000118A4(a3, v11);
  sub_1000118A4(a3, v8);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v20 = sub_1004A4A54();
  v21 = sub_1004A6034();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v19;
    v40 = v23;
    *v22 = 68159491;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v24 = *(v6 + 20);
    v37 = a2;
    v25 = &v8[v24];
    *(v22 + 10) = v8[v24];
    *(v22 + 11) = 2082;
    v26 = &v11[*(v6 + 20)];
    *(v22 + 13) = sub_10015BA6C(*(v26 + 1), *(v26 + 2), &v40);
    *(v22 + 21) = 1040;
    *(v22 + 23) = 2;
    *(v22 + 27) = 512;
    LOWORD(v25) = *(v25 + 12);
    sub_100011908(v8);
    *(v22 + 29) = v25;
    *(v22 + 31) = 2160;
    *(v22 + 33) = 0x786F626C69616DLL;
    *(v22 + 41) = 2085;
    v27 = *(v26 + 4);
    LODWORD(v25) = *(v26 + 10);

    sub_100011908(v11);
    v38 = v27;
    v39 = v25;
    a2 = v37;
    v28 = sub_1004A5824();
    v30 = sub_10015BA6C(v28, v29, &v40);

    *(v22 + 43) = v30;
    *(v22 + 51) = 2048;
    *(v22 + 53) = v36;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Number of changes to-be-sent to the persistence: %ld.", v22, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_100011908(v8);

    sub_100011908(v11);
  }

  v31 = *(a2 + 112);
  v32 = v13[3];
  v33 = v13[4];
  sub_100025928(v13, v32);
  return (*(v33 + 64))(v31, a3, v32, v33);
}

double sub_10010A8B8()
{
  if (qword_1005CCE80 != -1)
  {
    swift_once();
  }

  return result;
}

__n128 sub_10010A948(uint64_t a1, uint64_t a2)
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

uint64_t sub_10010A97C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_10010A9C4(uint64_t result, int a2, int a3)
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
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10010AA38()
{
  result = qword_1005D0B60;
  if (!qword_1005D0B60)
  {
    result = swift_getWitnessTable(byte_1004D514C, &type metadata for QuickFlagChangesResync.CommandID, v0, v1);
    atomic_store(result, &qword_1005D0B60);
  }

  return result;
}

unint64_t sub_10010AA8C(uint64_t a1)
{
  result = sub_10010AAB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10010AAB4()
{
  result = qword_1005D0C18;
  if (!qword_1005D0C18)
  {
    result = swift_getWitnessTable(byte_1004D5108, &type metadata for QuickFlagChangesResync, v0, v1);
    atomic_store(result, &qword_1005D0C18);
  }

  return result;
}

__n128 sub_10010AB28(uint64_t a1, uint64_t a2)
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

uint64_t sub_10010AB44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_10010ABA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t (*sub_10010AC1C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10010BB10(v6, a2, a3);
  return sub_10010ACA4;
}

uint64_t (*sub_10010ACA8(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10010BBC0(v4, a2);
  return sub_10010F278;
}

void sub_10010AD20(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10010AD6C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(v3 + 48);
  if (!v4)
  {
    goto LABEL_16;
  }

  if (!*(v4 + 16) || (v28 = a2, v5 = sub_100063B5C(a1, a2), (v6 & 1) == 0))
  {
    v20 = 0;
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  v7 = *(v4 + 56) + 72 * v5;
  v31 = *v7;
  v8 = *(v7 + 64);
  v10 = *(v7 + 32);
  v9 = *(v7 + 48);
  v32 = *(v7 + 16);
  v33 = v10;
  v34 = v9;
  v35 = v8;
  v11 = *(&v31 + 1);
  v12 = v31;
  v14 = *(&v32 + 1);
  v13 = v32;
  v16 = *(&v10 + 1);
  v15 = v10;
  v17 = *(&v9 + 1);
  v18 = v9;
  v19 = v8;
  v20 = HIBYTE(v8);
  sub_100063BD4(&v31, v30);
  if (!v12)
  {
LABEL_15:
    *&v31 = 0;
    *(&v31 + 1) = v11;
    *&v32 = v13;
    *(&v32 + 1) = v14;
    *&v33 = v15;
    *(&v33 + 1) = v16;
    *&v34 = v18;
    *(&v34 + 1) = v17;
    LOBYTE(v35) = v19;
    HIBYTE(v35) = v20;
    sub_100025F40(&v31, &qword_1005CF248, &qword_1004D22C0);
    goto LABEL_16;
  }

  v31 = __PAIR128__(v11, v12);
  v32 = __PAIR128__(v14, v13);
  v33 = __PAIR128__(v16, v15);
  v34 = __PAIR128__(v17, v18);
  v35 = __PAIR16__(v20, v19);
  result = sub_100025F40(&v31, &qword_1005CF248, &qword_1004D22C0);
  if (v20)
  {
LABEL_16:
    v25 = 0;
    v26 = 1;
LABEL_17:
    LOBYTE(v31) = v26;
    return v25 | (v26 << 32);
  }

  if (a3 != -1)
  {
    if (a3 + 1 > v15)
    {
      v22 = a3 + 1;
    }

    else
    {
      v22 = v15;
    }

    v24 = sub_10010AC1C(v30, a1, v28);
    if (*v23 && *(v23 + 65) != 1)
    {
      *(v23 + 32) = v22;
    }

    (v24)(v30, 0);
    v26 = v15 > a3;
    if (v15 <= a3)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10010AF60(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_10010D2D0(v9, v10) & 1;
}

uint64_t sub_10010B014(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10010B050(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 11) = *(a1 + 27);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 11) = *(a2 + 27);
  return sub_10010D194(&v5, &v7) & 1;
}

void sub_10010B09C(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    return;
  }

  v15 = *(a1 + 24);
  v16 = v15 >> 60;
  if ((v15 >> 60) > 8)
  {
    goto LABEL_15;
  }

  if (((1 << v16) & 0x1D6) != 0)
  {
    return;
  }

  if (v16 != 3)
  {
    if (v16 == 5)
    {
      if (!*(v2 + 48))
      {
        return;
      }

      v26 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v25 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v27 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v28 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v29 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1000CB7C8(v15);

      sub_10010E780(v27, v26, v25);
      sub_10013CE40(v29, v28, &v90);

      sub_10010E7C0(v27, v26, v25);

      sub_100025F40(&v90, &qword_1005CF248, &qword_1004D22C0);
LABEL_24:
      sub_1000CB848(v15);
      return;
    }

LABEL_15:
    v75 = v12;
    v79 = v2;
    v30 = *(v15 + 16);
    v31 = *(v15 + 40);
    v32 = *(v15 + 24);
    v33 = *(v15 + 56);
    v34 = *(v15 + 88);
    v35 = *(v15 + 72);
    v36 = *(v15 + 104);
    v37 = *(v15 + 120);
    v38 = *(v15 + 152);
    v39 = *(v15 + 136);
    v40 = *(v15 + 184);
    v99 = *(v15 + 168);
    v100 = v40;
    v96 = v37;
    v97 = v39;
    v98 = v38;
    v92 = v33;
    v93 = v35;
    v94 = v34;
    v95 = v36;
    v90 = v32;
    v91 = v31;
    sub_1000CB7C8(v15);
    sub_1000CB7C8(v15);

    sub_10010E800(&v90, v80);
    sub_10010E0AC(v30, &v90, v83);
    v41 = v83[0];
    v42 = v83[1];
    v43 = v83[2];
    v77 = v83[4];
    v78 = v83[3];
    v76 = v84 | (v85 << 16);
    sub_10010E85C(a2, v14, type metadata accessor for State.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v44 = sub_1004A4A54();
    v45 = sub_1004A6034();
    if (os_log_type_enabled(v44, v45))
    {
      v73 = v41 >> 56;
      v71 = (v41 & 0x100) == 0;
      v72 = (v41 & 0x1000000) == 0;
      v46 = swift_slowAlloc();
      v74 = v43;
      v47 = v46;
      *v46 = 68159744;
      *(v46 + 4) = 2;
      *(v46 + 8) = 256;
      v48 = *(v75 + 20);
      LODWORD(v75) = v45;
      v49 = v41;
      v50 = v42;
      v51 = v14[v48];
      sub_10010E8C4(v14);
      *(v47 + 10) = v51;
      v42 = v50;
      v41 = v49;
      *(v47 + 11) = 1024;
      *(v47 + 13) = (v49 & 1) == 0;
      *(v47 + 17) = 1024;
      *(v47 + 19) = v71;
      *(v47 + 23) = 1024;
      *(v47 + 25) = (v49 & 0xFF0000) == 0;
      *(v47 + 29) = 1024;
      *(v47 + 31) = v72;
      *(v47 + 35) = 1024;
      *(v47 + 37) = (v42 & 1) == 0;
      *(v47 + 41) = 1024;
      v52 = v73;
      *(v47 + 43) = v73 == 1;
      *(v47 + 47) = 1024;
      *(v47 + 49) = v52 == 2;
      _os_log_impl(&_mh_execute_header, v44, v75, "[%.*hhx] Server support: move: %{BOOL}d, Gmail labels: %{BOOL}d, cond-store: %{BOOL}d, message-seq-numbers: %{BOOL}d special-use: %{BOOL}d list-status: %{BOOL}d status-mod-seq: %{BOOL}d", v47, 0x35u);
      v43 = v74;
    }

    else
    {
      sub_10010E8C4(v14);
    }

    v53 = v79;
    sub_1000CB848(v15);

    if (*v53 == 2)
    {
      sub_1000CB848(v15);
      if (v41 == 2)
      {
        return;
      }
    }

    else if (v41 == 2)
    {
      sub_1000CB848(v15);
    }

    else
    {
      v59 = *(v53 + 16);
      v60 = *(v53 + 32);
      v61 = *(v53 + 40) | (*(v53 + 42) << 16);
      v86[0] = *v53;
      v86[1] = v59;
      v87 = v60;
      v88 = v61;
      v89 = BYTE2(v61);
      v80[0] = v41;
      v80[1] = v42;
      v80[2] = v43;
      v80[3] = v78;
      v80[4] = v77;
      v81 = v76;
      v82 = BYTE2(v76);
      v62 = sub_10010D194(v86, v80);
      sub_1000CB848(v15);
      if (v62)
      {
        return;
      }
    }

    *v53 = v41;
    *(v53 + 8) = v42;
    v63 = v77;
    v64 = v78;
    *(v53 + 16) = v43;
    *(v53 + 24) = v64;
    *(v53 + 32) = v63;
    BYTE2(v63) = BYTE2(v76);
    *(v53 + 40) = v76;
    *(v53 + 42) = BYTE2(v63);
    return;
  }

  v17 = swift_projectBox();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    sub_10010E85C(v17, v10, type metadata accessor for UntaggedResponse);
    v54 = *v10;
    v55 = *(v10 + 1);
    v56 = *(v10 + 4);
    v57 = v10[20];
    v58 = *(v10 + 3);
    v78 = *(v10 + 4);
    v79 = v58;
    sub_1000CB7C8(v15);
    sub_1000CB7C8(v15);

    RemoteMailbox.init(attributes:path:)(v54, v55, v56 | (v57 << 32), &v90);
    sub_10010B818(&v90);
    sub_1000CB848(v15);

    sub_100063C30(&v90);

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 9)
  {
    sub_10010E85C(v17, v7, type metadata accessor for UntaggedResponse);
    v19 = *v7;
    v20 = *(v7 + 2);
    v21 = *(v7 + 6);
    v94 = *(v7 + 5);
    v95 = v21;
    v22 = *(v7 + 8);
    v96 = *(v7 + 7);
    v97 = v22;
    v23 = *(v7 + 2);
    v90 = *(v7 + 1);
    v91 = v23;
    v24 = *(v7 + 4);
    v92 = *(v7 + 3);
    v93 = v24;
    if (BYTE8(v90) & 1) != 0 || (v92 & 1) != 0 || (BYTE8(v92))
    {

      sub_10009A0FC(&v90);
    }

    else
    {
      v65 = v90;
      v66 = HIDWORD(v91);
      v67 = DWORD1(v92);
      sub_1000CB7C8(v15);
      sub_1000CB7C8(v15);

      sub_10009A0FC(&v90);
      if (*(v2 + 48))
      {
        v78 = v93;
        v79 = BYTE8(v93);
        v77 = v95;
        v76 = BYTE8(v95);
        v69 = sub_10010AC1C(v80, v19, v20);
        if (*v68)
        {
          *(v68 + 24) = v65;
          *(v68 + 32) = v66 | (v67 << 32);
          v70 = v79;
          *(v68 + 40) = v78;
          *(v68 + 48) = v70;
          *(v68 + 56) = v77;
          *(v68 + 64) = v76;
        }

        (v69)(v80, 0);
        sub_1000CB848(v15);
      }

      else
      {

        sub_1000CB848(v15);
      }
    }

    goto LABEL_24;
  }
}

void sub_10010B818(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 48))
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    sub_100063BD4(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *(v1 + 48);
    sub_10001CA34(a1, v3, v4, isUniquelyReferenced_nonNull_native);
    v7 = v15[0];
  }

  else
  {
    sub_10000C9C0(&qword_1005D0C28, &qword_1004D52F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004CEAA0;
    v10 = *a1;
    *(inited + 40) = *(a1 + 8);
    *(inited + 32) = v10;
    v11 = inited + 32;
    *(inited + 48) = *a1;
    v12 = *(a1 + 16);
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    *(inited + 112) = *(a1 + 64);
    *(inited + 80) = v13;
    *(inited + 96) = v14;
    *(inited + 64) = v12;
    v7 = sub_100162334(inited);
    swift_setDeallocating();
    sub_100063BD4(a1, v15);
    sub_100063BD4(a1, v15);
    sub_100025F40(v11, &qword_1005D0C30, &qword_1004D52F8);
  }

  *(v2 + 48) = v7;
}

uint64_t sub_10010B948()
{
  if (*v0)
  {
    return 0x616C696176616E75;
  }

  else
  {
    return 0x6574726F70707573;
  }
}

uint64_t sub_10010B990(__int16 a1)
{
  LOBYTE(v1) = a1;
  if ((a1 & 0x100) != 0)
  {
    if (!a1)
    {
      return 0x31303533636672;
    }

    v1 = a1;
    v5 = 0;
  }

  else
  {
    result = 0x2D6C616963657073;
    if (!v1)
    {
      return result;
    }

    v1 = v1;
    v5 = 0x2D6C616963657073;
  }

  if (v1 == 2)
  {
    v3._countAndFlagsBits = 0xD00000000000001BLL;
  }

  else
  {
    v3._countAndFlagsBits = 0x6174732D7473696CLL;
  }

  if (v1 == 2)
  {
    v4 = 0x80000001004AA400;
  }

  else
  {
    v4 = 0xEB00000000737574;
  }

  v3._object = v4;
  sub_1004A5994(v3);

  return v5;
}

uint64_t sub_10010BA84()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_10010B990(v1 | *v0);
}

unint64_t sub_10010BAA0()
{
  v1 = 0x6174732D7473696CLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C696176616E75;
  }
}

uint64_t (*sub_10010BB10(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10010C1B4(v7);
  v7[9] = sub_10010BCC4(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10010BBBC;
}

uint64_t (*sub_10010BBC0(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10010C1E8(v5);
  v5[9] = sub_10010BFAC(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10010F27C;
}

void sub_10010BC64(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10010BCC4(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x1C8uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 68) = a3;
  *(v10 + 432) = a2;
  *(v10 + 440) = v4;
  v12 = *v4;
  v13 = sub_100063B5C(a2, a3);
  *(v11 + 66) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10013A2D4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1000C2FD4(v18, a4 & 1);
    v13 = sub_100063B5C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1004A6E24();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v11 + 448) = v13;
  if (v19)
  {
    memmove((v11 + 144), (*(*v5 + 56) + 72 * v13), 0x42uLL);
  }

  else
  {
    *(v11 + 208) = 0;
    *(v11 + 176) = 0u;
    *(v11 + 192) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 160) = 0u;
  }

  return sub_10010BE34;
}

void sub_10010BE34(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 160);
  *(v2 + 216) = *(*a1 + 144);
  *(v2 + 232) = v3;
  v4 = *(v2 + 192);
  *(v2 + 248) = *(v2 + 176);
  *(v2 + 264) = v4;
  *(v2 + 280) = *(v2 + 208);
  v5 = *(v2 + 216);
  if (a2)
  {
    if (v5)
    {
      v7 = *(v2 + 440);
      v6 = *(v2 + 448);
      if ((*(v2 + 66) & 1) == 0)
      {
        v8 = *(v2 + 68);
        v9 = *(v2 + 432);
        v10 = *v7;
        v11 = *(v2 + 192);
        *(v2 + 32) = *(v2 + 176);
        *(v2 + 48) = v11;
        *(v2 + 64) = *(v2 + 208);
        v12 = *(v2 + 160);
        *v2 = *(v2 + 144);
        *(v2 + 16) = v12;
        v13 = v9;
        v14 = v2;
LABEL_11:
        sub_10001C6AC(v6, v13, v8, v14, v10);

        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v5)
  {
    v7 = *(v2 + 440);
    v6 = *(v2 + 448);
    if ((*(v2 + 66) & 1) == 0)
    {
      v8 = *(v2 + 68);
      v17 = *(v2 + 432);
      v10 = *v7;
      v18 = *(v2 + 144);
      *(v2 + 88) = *(v2 + 160);
      v19 = *(v2 + 192);
      *(v2 + 104) = *(v2 + 176);
      *(v2 + 120) = v19;
      *(v2 + 136) = *(v2 + 208);
      *(v2 + 72) = v18;
      v14 = v2 + 72;
      v13 = v17;
      goto LABEL_11;
    }

LABEL_7:
    memmove((*(*v7 + 56) + 72 * v6), (v2 + 144), 0x42uLL);
    goto LABEL_12;
  }

  if (*(v2 + 66))
  {
    v15 = *(v2 + 448);
    v16 = **(v2 + 440);
    sub_10009DA94(*(v16 + 48) + 16 * v15);
    sub_10013D1E8(v15, v16);
  }

LABEL_12:
  v20 = *(v2 + 192);
  *(v2 + 320) = *(v2 + 176);
  *(v2 + 336) = v20;
  *(v2 + 352) = *(v2 + 208);
  v21 = *(v2 + 160);
  *(v2 + 288) = *(v2 + 144);
  *(v2 + 304) = v21;
  sub_10010E920(v2 + 216, v2 + 360);
  sub_100025F40(v2 + 288, &qword_1005CF248, &qword_1004D22C0);

  free(v2);
}

void (*sub_10010BFAC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_100063E70(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_10013BB00();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1000C6184(v16, a3 & 1);
    v11 = sub_100063E70(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
    result = sub_1004A6E24();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_10010C100;
}

void sub_10010C100(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_10001C814(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    sub_10013DA7C(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_10010C1B4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10010C1DC;
}

uint64_t (*sub_10010C1E8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10010F264;
}

unint64_t sub_10010C210(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1004A5A34();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1004A5A04();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_10010C28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1004A5AA4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10010CD9C(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1004A67E4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10010C818(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1004A5AA4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10010CD9C(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1004A67E4();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10010CD9C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1004A5AB4();
  v6 = sub_10010CE1C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10010CE1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1004A63E4();
    if (!v9 || (v10 = v9, v11 = sub_10015BEAC(v9, 0), v12 = sub_10010CF74(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1004A58E4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1004A58E4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1004A67E4();
LABEL_4:

  return sub_1004A58E4();
}

unint64_t sub_10010CF74(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10010C210(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1004A5A24();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1004A67E4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10010C210(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1004A59F4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10010D194(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || ((a1[4] ^ a2[4]) & 1) != 0 || ((a1[5] ^ a2[5]) & 1) != 0 || a1[6] != a2[6] || a1[7] != a2[7] || ((a1[8] ^ a2[8]) & 1) != 0 || a1[9] != a2[9])
  {
    return 0;
  }

  v2 = a2[24];
  if (a1[24])
  {
    if (!a2[24])
    {
      return v2 & 1;
    }
  }

  else
  {
    if (*(a1 + 2) != *(a2 + 2))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  if (a1[40])
  {
    v2 = 0;
    if (v3)
    {
      if ((a2[40] & 1) == 0 || !v4)
      {
        return v2 & 1;
      }
    }

    else if ((a2[40] & 1) == 0 || v4)
    {
      return v2 & 1;
    }
  }

  else
  {
    v2 = 0;
    if ((a2[40] & 1) != 0 || v3 != v4)
    {
      return v2 & 1;
    }
  }

  if (a1[41] != a2[41])
  {
    return 0;
  }

  v2 = a1[42] ^ a2[42] ^ 1;
  return v2 & 1;
}

uint64_t sub_10010D2D0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vmovn_s64(vceqq_s64(vandq_s8(vzip1q_s64(*a2, *a1), v5), vdupq_n_s64(2uLL)));
  if (v6.i8[4])
  {
    if ((v6.i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6.i8[0])
    {
      return 0;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40) | (*(a1 + 42) << 16);
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *(a2 + 40) | (*(a2 + 42) << 16);
    v29[0] = *a2;
    v29[1] = v10;
    v30 = v11;
    v31 = v12;
    v32 = BYTE2(v12);
    v25[0] = v4;
    v25[1] = v7;
    v26 = v8;
    v27 = v9;
    v28 = BYTE2(v9);
    if ((sub_10010D194(v25, v29) & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = sub_100113FD0(v13, v14);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if ((*(a1 + 65) ^ *(a2 + 65)))
  {
    return 0;
  }

  v18 = *(a1 + 72);
  v19 = *(a2 + 72);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v21 = *(a1 + 80);
    v20 = *(a1 + 88);
    v23 = *(a2 + 80);
    v22 = *(a2 + 88);

    LOBYTE(v20) = static Mailbox.__derived_struct_equals(_:_:)(v18, v21, v20, v19, v23, v22, v24);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_10010D48C(uint64_t a1)
{
  v2 = Capability.listStatus.unsafeMutableAddressor();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(v2 + 24);

  LOBYTE(v3) = sub_100012A38(v3, v4, v5, v6, a1);

  if (v3)
  {
    v7 = Capability.yahooMailHighestModificationSequence.unsafeMutableAddressor();
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = *(v7 + 24);

    LOBYTE(v8) = sub_100012A38(v8, v9, v10, v11, a1);

    if (v8)
    {

      return 2;
    }

    else
    {
      v13 = Capability.condStore.unsafeMutableAddressor();
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = *(v13 + 24);

      LOBYTE(v14) = sub_100012A38(v14, v15, v16, v17, a1);

      if (v14)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10010D5AC(void *a1)
{
  v1 = a1[9];
  if (v1)
  {
    v2 = a1[8] == 0x4920216F6F686159 && v1 == 0xEB000000002E636ELL;
    if (v2 || (v3 = a1, v4 = sub_1004A6D34(), a1 = v3, (v4 & 1) != 0))
    {
      sub_10010E990(a1);
      return 0;
    }
  }

  v6 = a1[1];
  if (!v6)
  {
    sub_10010E990(a1);
    return 2;
  }

  if (*a1 != 0x70616D4947 || v6 != 0xE500000000000000)
  {
    v8 = a1;
    v9 = sub_1004A6D34();
    sub_10010E990(v8);
    if (v9)
    {
      return 1;
    }

    return 2;
  }

  sub_10010E990(a1);
  return 1;
}

unsigned __int8 *sub_10010D688(unint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (!v4)
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        goto LABEL_19;
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_90:
    v24 = sub_10010C28C(v7, v1, 10);
    v42 = v43;
    goto LABEL_86;
  }

  while (1)
  {
    v7 = v6;
LABEL_8:
    v8 = *(a1 + 48) + ((v7 << 11) | (32 * __clz(__rbit64(v4))));
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(v8 + 16);
    v12 = *(v8 + 24);

    v44 = v11;
    v45 = v10;
    if (v12)
    {
    }

    else
    {
      sub_1004A5AB4();
      sub_1004A5864();
    }

    v13 = sub_1004A5834();
    v15 = v14;

    if (v13 == 0x4C4547415353454DLL && v15 == 0xEC00000054494D49)
    {

      goto LABEL_23;
    }

    v17 = sub_1004A6D34();

    if (v17)
    {
      break;
    }

    v4 &= v4 - 1;

    v6 = v7;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

LABEL_23:

  v7 = Capability.value.getter(v45, v9, v44, v12);
  v1 = v19;

  if (!v1)
  {
    return 0;
  }

  v20 = HIBYTE(v1) & 0xF;
  v21 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v22 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_19:

    return 0;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    goto LABEL_90;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v47[0] = v7;
    v47[1] = v1 & 0xFFFFFFFFFFFFFFLL;
    if (v7 == 43)
    {
      if (v20)
      {
        if (--v20)
        {
          v24 = 0;
          v34 = v47 + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              break;
            }

            v24 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            ++v34;
            if (!--v20)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

LABEL_95:
      __break(1u);
      return result;
    }

    if (v7 != 45)
    {
      if (v20)
      {
        v24 = 0;
        v39 = v47;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            break;
          }

          ++v39;
          if (!--v20)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    if (v20)
    {
      if (--v20)
      {
        v24 = 0;
        v28 = v47 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v30 - v29;
          if (__OFSUB__(v30, v29))
          {
            break;
          }

          ++v28;
          if (!--v20)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    goto LABEL_93;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    result = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1004A67E4();
  }

  v23 = *result;
  if (v23 == 43)
  {
    if (v21 < 1)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v20 = v21 - 1;
    if (v21 != 1)
    {
      v24 = 0;
      if (result)
      {
        v31 = result + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            goto LABEL_84;
          }

          v33 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            goto LABEL_84;
          }

          v24 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            goto LABEL_84;
          }

          ++v31;
          if (!--v20)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_76;
    }

LABEL_84:
    v24 = 0;
    LOBYTE(v20) = 1;
    goto LABEL_85;
  }

  if (v23 != 45)
  {
    if (v21)
    {
      v24 = 0;
      if (result)
      {
        while (1)
        {
          v37 = *result - 48;
          if (v37 > 9)
          {
            goto LABEL_84;
          }

          v38 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            goto LABEL_84;
          }

          v24 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            goto LABEL_84;
          }

          ++result;
          if (!--v21)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_84;
  }

  if (v21 < 1)
  {
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v20 = v21 - 1;
  if (v21 == 1)
  {
    goto LABEL_84;
  }

  v24 = 0;
  if (result)
  {
    v25 = result + 1;
    while (1)
    {
      v26 = *v25 - 48;
      if (v26 > 9)
      {
        goto LABEL_84;
      }

      v27 = 10 * v24;
      if ((v24 * 10) >> 64 != (10 * v24) >> 63)
      {
        goto LABEL_84;
      }

      v24 = v27 - v26;
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_84;
      }

      ++v25;
      if (!--v20)
      {
        goto LABEL_85;
      }
    }
  }

LABEL_76:
  LOBYTE(v20) = 0;
LABEL_85:
  v48 = v20;
  v42 = v20;
LABEL_86:

  if (v42)
  {
    return 0;
  }

  result = v24;
  if ((v24 - 1000000) < 0xFFFFFFFFFFF0BDC1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10010DB74(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (!v5)
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_96:

LABEL_19:
    appended = Capability.mailboxSpecificAppendLimit.unsafeMutableAddressor();
    v21 = *appended;
    v22 = appended[1];
    v23 = appended[2];
    v24 = *(appended + 24);

    LODWORD(v21) = sub_100012A38(v21, v22, v23, v24, v1);

    return ~v21 & 1;
  }

  while (1)
  {
    v8 = v7;
LABEL_8:
    v9 = v1;
    v10 = *(v1 + 48) + ((v8 << 11) | (32 * __clz(__rbit64(v5))));
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);

    v49 = v13;
    v50 = v12;
    if (v14)
    {
    }

    else
    {
      sub_1004A5AB4();
      sub_1004A5864();
    }

    v15 = sub_1004A5834();
    v17 = v16;

    if (v15 == 0x494C444E45505041 && v17 == 0xEB0000000054494DLL)
    {
      v1 = v9;

      goto LABEL_22;
    }

    v19 = sub_1004A6D34();

    v1 = v9;
    if (v19)
    {
      break;
    }

    v5 &= v5 - 1;

    v7 = v8;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

LABEL_22:
  v26 = Capability.value.getter(v50, v11, v49, v14);
  v28 = v27;

  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = HIBYTE(v28) & 0xF;
  v30 = v26 & 0xFFFFFFFFFFFFLL;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v31 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v31 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    goto LABEL_96;
  }

  if ((v28 & 0x1000000000000000) != 0)
  {
    v33 = sub_10010C818(v26, v28, 10);
    v46 = v48;
    goto LABEL_87;
  }

  if ((v28 & 0x2000000000000000) != 0)
  {
    v51[0] = v26;
    v51[1] = v28 & 0xFFFFFFFFFFFFFFLL;
    if (v26 == 43)
    {
      if (v29)
      {
        if (--v29)
        {
          v33 = 0;
          v41 = v51 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            if (!is_mul_ok(v33, 0xAuLL))
            {
              break;
            }

            v36 = __CFADD__(10 * v33, v42);
            v33 = 10 * v33 + v42;
            if (v36)
            {
              break;
            }

            ++v41;
            if (!--v29)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_85;
      }

LABEL_102:
      __break(1u);
      return result;
    }

    if (v26 != 45)
    {
      if (v29)
      {
        v33 = 0;
        v44 = v51;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          if (!is_mul_ok(v33, 0xAuLL))
          {
            break;
          }

          v36 = __CFADD__(10 * v33, v45);
          v33 = 10 * v33 + v45;
          if (v36)
          {
            break;
          }

          ++v44;
          if (!--v29)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_85;
    }

    if (v29)
    {
      if (--v29)
      {
        v33 = 0;
        v37 = v51 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          if (!is_mul_ok(v33, 0xAuLL))
          {
            break;
          }

          v36 = 10 * v33 >= v38;
          v33 = 10 * v33 - v38;
          if (!v36)
          {
            break;
          }

          ++v37;
          if (!--v29)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_85;
    }

    goto LABEL_100;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    result = (v28 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1004A67E4();
  }

  v32 = *result;
  if (v32 == 43)
  {
    if (v30 < 1)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v29 = v30 - 1;
    if (v30 != 1)
    {
      v33 = 0;
      if (result)
      {
        v39 = (result + 1);
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            goto LABEL_85;
          }

          if (!is_mul_ok(v33, 0xAuLL))
          {
            goto LABEL_85;
          }

          v36 = __CFADD__(10 * v33, v40);
          v33 = 10 * v33 + v40;
          if (v36)
          {
            goto LABEL_85;
          }

          ++v39;
          if (!--v29)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_77;
    }

LABEL_85:
    v33 = 0;
    LOBYTE(v29) = 1;
    goto LABEL_86;
  }

  if (v32 != 45)
  {
    if (v30)
    {
      v33 = 0;
      if (result)
      {
        while (1)
        {
          v43 = *result - 48;
          if (v43 > 9)
          {
            goto LABEL_85;
          }

          if (!is_mul_ok(v33, 0xAuLL))
          {
            goto LABEL_85;
          }

          v36 = __CFADD__(10 * v33, v43);
          v33 = 10 * v33 + v43;
          if (v36)
          {
            goto LABEL_85;
          }

          ++result;
          if (!--v30)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_85;
  }

  if (v30 < 1)
  {
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v29 = v30 - 1;
  if (v30 == 1)
  {
    goto LABEL_85;
  }

  v33 = 0;
  if (result)
  {
    v34 = (result + 1);
    while (1)
    {
      v35 = *v34 - 48;
      if (v35 > 9)
      {
        goto LABEL_85;
      }

      if (!is_mul_ok(v33, 0xAuLL))
      {
        goto LABEL_85;
      }

      v36 = 10 * v33 >= v35;
      v33 = 10 * v33 - v35;
      if (!v36)
      {
        goto LABEL_85;
      }

      ++v34;
      if (!--v29)
      {
        goto LABEL_86;
      }
    }
  }

LABEL_77:
  LOBYTE(v29) = 0;
LABEL_86:
  v52 = v29;
  v46 = v29;
LABEL_87:

  if ((v46 & 1) != 0 || v33 >> 5 < 0xC35)
  {
    goto LABEL_19;
  }

  if (v33 >= 2000000000)
  {
    v47 = 2000000000;
  }

  else
  {
    v47 = v33;
  }

  if (v33 >= 0)
  {
    return v47;
  }

  else
  {
    return 2000000000;
  }
}

uint64_t sub_10010E0AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = Capability.move.unsafeMutableAddressor();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);

  v11 = sub_100012A38(v7, v8, v9, v10, a1);

  v12 = Capability.gmailExtensions.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = *(v12 + 24);

  v17 = sub_100012A38(v13, v14, v15, v16, a1);

  v18 = Capability.condStore.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = *(v18 + 24);

  LOBYTE(v19) = sub_100012A38(v19, v20, v21, v22, a1);

  if (v19)
  {
    v76 = 0;
    v23 = a2[9];
    if (!v23)
    {
LABEL_12:
      v75 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v24 = Capability.yahooMailHighestModificationSequence.unsafeMutableAddressor();
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = *(v24 + 24);

    LOBYTE(v25) = sub_100012A38(v25, v26, v27, v28, a1);

    if (v25)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    v76 = v29;
    v23 = a2[9];
    if (!v23)
    {
      goto LABEL_12;
    }
  }

  if ((a2[8] != 0x4920216F6F686159 || v23 != 0xEB000000002E636ELL) && (sub_1004A6D34() & 1) == 0)
  {
    goto LABEL_12;
  }

  v75 = 1;
LABEL_13:
  v74 = (v17 & 1) == 0;
  v73 = (v11 & 1) == 0;
  v30 = Capability.partial.unsafeMutableAddressor();
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = *(v30 + 24);

  LOBYTE(v31) = sub_100012A38(v31, v32, v33, v34, a1);

  v35 = Capability.extendedSearch.unsafeMutableAddressor();
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  v39 = *(v35 + 24);

  LOBYTE(v36) = sub_100012A38(v36, v37, v38, v39, a1);

  v72 = (v31 & 1) == 0;
  v71 = (v36 & 1) == 0;
  v40 = Capability.namespace.unsafeMutableAddressor();
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  LOBYTE(v38) = *(v40 + 24);

  LOBYTE(v41) = sub_100012A38(v41, v42, v43, v38, a1);

  v70 = (v41 & 1) == 0;

  v69 = sub_10010D48C(v44);
  v45 = Capability.specialUse.unsafeMutableAddressor();
  v46 = *v45;
  v47 = v45[1];
  v48 = v45[2];
  v49 = *(v45 + 24);

  LOBYTE(v46) = sub_100012A38(v46, v47, v48, v49, a1);

  v68 = (v46 & 1) == 0;
  v67 = sub_10010D5AC(a2);

  v51 = sub_10010D688(v50);
  v78 = v52 & 1;

  v54 = sub_10010DB74(v53);
  v77 = v55 & 1;
  v56 = Capability.idle.unsafeMutableAddressor();
  v57 = *v56;
  v58 = v56[1];
  v59 = v56[2];
  v60 = *(v56 + 24);

  LOBYTE(v57) = sub_100012A38(v57, v58, v59, v60, a1);

  LOBYTE(v41) = (v57 & 1) == 0;
  v61 = Capability.uidBatches.unsafeMutableAddressor();
  v62 = *v61;
  v63 = v61[1];
  v64 = v61[2];
  v65 = *(v61 + 24);

  LOBYTE(v62) = sub_100012A38(v62, v63, v64, v65, a1);

  *a3 = v73;
  *(a3 + 1) = v74;
  *(a3 + 2) = v76;
  *(a3 + 3) = v75;
  *(a3 + 4) = v72;
  *(a3 + 5) = v71;
  *(a3 + 6) = v70;
  *(a3 + 7) = v69;
  *(a3 + 8) = v68;
  *(a3 + 9) = v67;
  *(a3 + 16) = v51;
  *(a3 + 24) = v78;
  *(a3 + 32) = v54;
  *(a3 + 40) = v77;
  *(a3 + 41) = v41;
  *(a3 + 42) = (v62 & 1) == 0;
  return result;
}

uint64_t sub_10010E4CC(uint64_t result, char a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  if (a2)
  {
    return 1;
  }

  if ((a5 & 1) == 0 && a4 - 5 > 0xFFFFFFFD)
  {
    return 0;
  }

  v5 = __OFSUB__(a3, result);
  v6 = a3 - result;
  if (a3 < result)
  {
    if (__OFSUB__(result, a3))
    {
      __break(1u);
      goto LABEL_22;
    }

    v5 = __OFSUB__(0, result - a3);
    v6 = a3 - result;
    if (!v5)
    {
LABEL_11:
      v7 = v6 / 1000000000.0;
      if (a4 == 4)
      {
        if (v7 <= 4.0)
        {
LABEL_13:
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v9 = sub_1004A4A54();
          v10 = sub_1004A6034();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v19 = v12;
            *v11 = 68158466;
            *(v11 + 4) = 3;
            *(v11 + 8) = 2048;
            *(v11 + 10) = v7;
            *(v11 + 18) = 2082;
            v13 = sub_1004A6754();
            v15 = sub_10015BA6C(v13, v14, &v19);

            *(v11 + 20) = v15;
            *(v11 + 28) = 1024;
            *(v11 + 30) = a5 & 1;
            _os_log_impl(&_mh_execute_header, v9, v10, "Last mailbox list update was %.*g seconds ago. Not requesting update. (kind: %{public}s, update was requested: %{BOOL}d", v11, 0x22u);
            sub_1000197E0(v12);
          }

          return 0;
        }
      }

      else if (v7 <= 47.0)
      {
        goto LABEL_13;
      }

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v16 = sub_1004A4A54();
      v17 = sub_1004A6034();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 68157952;
        *(v18 + 4) = 3;
        *(v18 + 8) = 2048;
        *(v18 + 10) = v7;
        _os_log_impl(&_mh_execute_header, v16, v17, "Last mailbox list update was %.*g seconds ago. Requesting update.", v18, 0x12u);
      }

      return 1;
    }

    __break(1u);
  }

  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_22:
  __break(1u);
  return result;
}

double sub_10010E780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000110B0(a1);
  }

  return result;
}

uint64_t sub_10010E7C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_10001114C(result);
  }

  return result;
}

uint64_t sub_10010E85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010E8C4(uint64_t a1)
{
  v2 = type metadata accessor for State.Logger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010E920(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CF248, &qword_1004D22C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s6RemoteV6ServerV11ListSupportVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6RemoteV6ServerV11ListSupportVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10010EB98(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10010EBAC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[43])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10010EBF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _s6RemoteV6ServerV13SearchSupportVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *_s6RemoteV6ServerV13SearchSupportVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10010EDAC()
{
  result = qword_1005D0C38;
  if (!qword_1005D0C38)
  {
    result = swift_getWitnessTable(a1_2, &_s6RemoteV6ServerV11MoveSupportON, v0, v1);
    atomic_store(result, &qword_1005D0C38);
  }

  return result;
}

unint64_t sub_10010EE04()
{
  result = qword_1005D0C40;
  if (!qword_1005D0C40)
  {
    result = swift_getWitnessTable(byte_1004D54A0, &_s6RemoteV6ServerV17ListStatusSupportON, v0, v1);
    atomic_store(result, &qword_1005D0C40);
  }

  return result;
}

unint64_t sub_10010EE5C()
{
  result = qword_1005D0C48;
  if (!qword_1005D0C48)
  {
    result = swift_getWitnessTable(a9_0, &_s6RemoteV6ServerV16NamespaceSupportON, v0, v1);
    atomic_store(result, &qword_1005D0C48);
  }

  return result;
}

unint64_t sub_10010EEB4()
{
  result = qword_1005D0C50;
  if (!qword_1005D0C50)
  {
    result = swift_getWitnessTable(byte_1004D5598, &_s6RemoteV6ServerV17GmailLabelSupportON, v0, v1);
    atomic_store(result, &qword_1005D0C50);
  }

  return result;
}

unint64_t sub_10010EF0C()
{
  result = qword_1005D0C58;
  if (!qword_1005D0C58)
  {
    result = swift_getWitnessTable(aI_2, &_s6RemoteV6ServerV16CondStoreSupportON, v0, v1);
    atomic_store(result, &qword_1005D0C58);
  }

  return result;
}

unint64_t sub_10010EFF4()
{
  result = qword_1005D0C60;
  if (!qword_1005D0C60)
  {
    result = swift_getWitnessTable(byte_1004D5774, &_s6RemoteV6ServerV13SearchSupportV18PagesSearchSupportON, v0, v1);
    atomic_store(result, &qword_1005D0C60);
  }

  return result;
}

unint64_t sub_10010F04C()
{
  result = qword_1005D0C68;
  if (!qword_1005D0C68)
  {
    result = swift_getWitnessTable(byte_1004D57DC, &_s6RemoteV6ServerV13SearchSupportV21ExtendedSearchSupportON, v0, v1);
    atomic_store(result, &qword_1005D0C68);
  }

  return result;
}

unint64_t sub_10010F0A4()
{
  result = qword_1005D0C70;
  if (!qword_1005D0C70)
  {
    result = swift_getWitnessTable(asc_1004D5844, &_s6RemoteV6ServerV23SequenceNumbersBehaviorON, v0, v1);
    atomic_store(result, &qword_1005D0C70);
  }

  return result;
}

unint64_t sub_10010F0FC()
{
  result = qword_1005D0C78;
  if (!qword_1005D0C78)
  {
    result = swift_getWitnessTable(byte_1004D58AC, &_s6RemoteV6ServerV20ConnectionCountLimitON, v0, v1);
    atomic_store(result, &qword_1005D0C78);
  }

  return result;
}

unint64_t sub_10010F154()
{
  result = qword_1005D0C80;
  if (!qword_1005D0C80)
  {
    result = swift_getWitnessTable(byte_1004D5964, &_s6RemoteV6ServerV21BackgroundIdleSupportON, v0, v1);
    atomic_store(result, &qword_1005D0C80);
  }

  return result;
}

unint64_t sub_10010F1AC()
{
  result = qword_1005D0C88;
  if (!qword_1005D0C88)
  {
    result = swift_getWitnessTable(byte_1004D59CC, &_s6RemoteV6ServerV17UIDBatchesSupportON, v0, v1);
    atomic_store(result, &qword_1005D0C88);
  }

  return result;
}

unint64_t sub_10010F204()
{
  result = qword_1005D0C90;
  if (!qword_1005D0C90)
  {
    result = swift_getWitnessTable(a5, &_s6RemoteV6ServerV17SpecialUseSupportON, v0, v1);
    atomic_store(result, &qword_1005D0C90);
  }

  return result;
}

uint64_t sub_10010F2A8(uint64_t result)
{
  if (*(v1 + 24) == 1)
  {
    v2 = result;
    v3 = *v1;
    v4 = *(v1 + 8);
    v42 = (v1 + 8);
    v5 = *(v1 + 16);
    v49 = *v1;
    v6 = result + 64;
    v7 = 1 << *(result + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(result + 64);
    v39 = v5;
    v40 = v4;
    sub_100020D10(v3, v4, v5, 1);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    v12 = 0;
    v41 = v3;
    v46 = v1;
    v43 = v2;
    v13 = v3 + 32;
LABEL_7:
    while (v9)
    {
      v14 = v9;
LABEL_13:
      v9 = (v14 - 1) & v14;
      v16 = *(v3 + 16);
      if (v16)
      {
        v45 = (v14 - 1) & v14;
        v17 = 0;
        v18 = (*(v2 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v14)))));
        v19 = *v18;
        v20 = v18[1];
        v21 = *v18 + 32;
        while (1)
        {
          v22 = (v13 + 176 * v17);
          if (v22[1] == v20)
          {
            v23 = *v22;
            v24 = *(*v22 + 16);
            if (v24 == *(v19 + 16))
            {
              break;
            }
          }

LABEL_15:
          if (++v17 == v16)
          {
            v9 = v45;
            goto LABEL_7;
          }
        }

        if (v24)
        {
          v25 = v23 == v19;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          v26 = (v23 + 32);
          v27 = v21;
          while (v24)
          {
            if (*v26 != *v27)
            {
              goto LABEL_15;
            }

            ++v26;
            ++v27;
            if (!--v24)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_26:
        v28 = v22[17];

        v44 = v28;

        sub_1000B5158(v11, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v1 + 32);
        *&v48[0] = v30;
        v32 = sub_100063C84(v19, v20);
        v33 = v30[2];
        v34 = (v31 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_39;
        }

        v36 = v31;
        if (v30[3] >= v35)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10013A644();
            v30 = *&v48[0];
          }
        }

        else
        {
          sub_1000C3618(v35, isUniquelyReferenced_nonNull_native);
          v30 = *&v48[0];
          v37 = sub_100063C84(v19, v20);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_40;
          }

          v32 = v37;
        }

        *(v46 + 32) = v30;
        if (v36)
        {
        }

        else
        {
          sub_10001C714(v32, v19, v20, _swiftEmptySetSingleton, v30);
        }

        v9 = v45;
        sub_1000809B8(v44);
        sub_100168DE0(v17, v47);
        v48[8] = v47[8];
        v48[9] = v47[9];
        v48[10] = v47[10];
        v48[4] = v47[4];
        v48[5] = v47[5];
        v48[6] = v47[6];
        v48[7] = v47[7];
        v48[0] = v47[0];
        v48[1] = v47[1];
        v48[2] = v47[2];
        v48[3] = v47[3];
        sub_10000E0E8(v48);
        v11 = sub_10010F618;
        v3 = v49;
        v1 = v46;
        v2 = v43;
        v13 = v49 + 32;
      }
    }

    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v15 >= v10)
      {

        sub_100020D58(v41, v40, v39, 1);
        result = sub_1000B5158(v11, 0);
        *v1 = v3;
        *v42 = 0;
        v42[1] = 0;
        *(v1 + 24) = 1;
        return result;
      }

      v14 = *(v6 + 8 * v15);
      ++v12;
      if (v14)
      {
        v12 = v15;
        goto LABEL_13;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = sub_1004A6E24();
    __break(1u);
  }

  return result;
}

void sub_10010F628(uint64_t a1)
{
  v3 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = *(v1 + 48);
  if (*(v15 + 16) == 1 && (sub_10012D588(v15, v47), v47[0]))
  {
    v16 = v47[2];
    v17 = v48;

    sub_100111420(a1, v14, type metadata accessor for Task.Logger);
    sub_100111420(a1, v11, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v18 = sub_1004A4A54();
    v19 = sub_1004A6034();

    if (os_log_type_enabled(v18, v19))
    {
      v42 = v17;
      v20 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = v41;
      *v20 = 68158723;
      *(v20 + 4) = 2;
      *(v20 + 8) = 256;
      v21 = *&v11[*(v3 + 20)];
      sub_1001114F0(v11, type metadata accessor for Task.Logger);
      *(v20 + 10) = v21;
      *(v20 + 11) = 2082;
      v22 = &v14[*(v3 + 20)];
      v23 = v22[1];
      v24 = v22[2];
      v25 = v22[3];
      sub_100018BD0(*v22, v23, v24, v25, v22[4]);
      sub_1001114F0(v14, type metadata accessor for Task.Logger);
      if (v25 < 0)
      {
      }

      v26 = sub_10015BA6C(v23, v24, &v43);

      *(v20 + 13) = v26;
      *(v20 + 21) = 2160;
      *(v20 + 23) = 0x786F626C69616DLL;
      *(v20 + 31) = 2085;
      v44 = v16;
      v45 = v42;
      v27 = sub_1004A5824();
      v29 = sub_10015BA6C(v27, v28, &v43);

      *(v20 + 33) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%.*hhx-%{public}s] Created task for '%{sensitive,mask.mailbox}s'", v20, 0x29u);
      swift_arrayDestroy();

LABEL_11:

      return;
    }

    sub_1001114F0(v11, type metadata accessor for Task.Logger);

    v40 = v14;
  }

  else
  {
    sub_100111420(a1, v8, type metadata accessor for Task.Logger);
    sub_100111420(a1, v5, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1001115A0(v1, &v44);
    v18 = sub_1004A4A54();
    v30 = sub_1004A6034();
    if (os_log_type_enabled(v18, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43 = v32;
      *v31 = 68158466;
      *(v31 + 4) = 2;
      *(v31 + 8) = 256;
      v33 = *&v5[*(v3 + 20)];
      sub_1001114F0(v5, type metadata accessor for Task.Logger);
      *(v31 + 10) = v33;
      *(v31 + 11) = 2082;
      v34 = &v8[*(v3 + 20)];
      v35 = v34[1];
      v36 = v34[2];
      v37 = v34[3];
      sub_100018BD0(*v34, v35, v36, v37, v34[4]);
      sub_1001114F0(v8, type metadata accessor for Task.Logger);
      if (v37 < 0)
      {
      }

      v38 = sub_10015BA6C(v35, v36, &v43);

      *(v31 + 13) = v38;
      *(v31 + 21) = 2048;
      v39 = *(v46 + 16);
      sub_1001115D8(&v44);
      *(v31 + 23) = v39;
      _os_log_impl(&_mh_execute_header, v18, v30, "[%.*hhx-%{public}s] Created task for %ld mailboxes.", v31, 0x1Fu);
      sub_1000197E0(v32);

      goto LABEL_11;
    }

    sub_1001115D8(&v44);
    sub_1001114F0(v5, type metadata accessor for Task.Logger);

    v40 = v8;
  }

  sub_1001114F0(v40, type metadata accessor for Task.Logger);
}

void sub_10010FB7C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v32 = a3;
  v30 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v30);
  v31 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v3 + 48);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v35 = v5;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = (*(v35 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v35 + 56) + 32 * v13;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);

      if ((sub_10011224C(v15, v16, v33, v34, sub_100111220) & 1) == 0)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v26 = v31;
    *v31 = v18;
    *(v26 + 8) = v19;
    *(v26 + 16) = v20;
    *(v26 + 24) = v21;
    swift_storeEnumTagMultiPayload();
    v27 = sub_10000C9C0(&qword_1005D0D28, &qword_1004D5B60);
    v28 = *(v27 + 48);
    v29 = v32;
    *v32 = v15;
    v29[1] = v16;
    sub_100111488(v26, v29 + v28, type metadata accessor for ClientCommand);
    (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v22 = sub_10000C9C0(&qword_1005D0D28, &qword_1004D5B60);
    v23 = *(*(v22 - 8) + 56);
    v24 = v22;
    v25 = v32;

    v23(v25, 1, 1, v24);
  }
}

void sub_10010FE44(uint64_t a1, Swift::UInt a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v84 = &v76 - v19;
  __chkstk_darwin(v20);
  v79 = &v76 - v21;
  __chkstk_darwin(v22);
  v80 = &v76 - v24;
  v88 = v7;
  v25 = *(v7 + 48);
  if (!*(v25 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v83 = v23;
  v85 = a1;
  v86 = a2;
  v26 = sub_100063C84(a1, a2);
  if ((v27 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v28 = *(v25 + 56) + 32 * v26;
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  LODWORD(v28) = *(v28 + 24);
  v81 = v30;
  v82 = v28;

  v32 = v87;
  sub_100010880(a7, a3, a4, a5, a6);
  if (v32)
  {
    v33 = v84;
    sub_100111420(a7, v84, type metadata accessor for Task.Logger);
    sub_100111420(a7, v17, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v34 = v31;
    v35 = sub_1004A4A54();
    v36 = sub_1004A6014();

    if (os_log_type_enabled(v35, v36))
    {
      LODWORD(v80) = v36;
      v78 = v34;
      v37 = v29;
      v87 = v32;
      v38 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v91 = v79;
      *v38 = 68159235;
      *(v38 + 4) = 2;
      *(v38 + 8) = 256;
      v39 = v83;
      v40 = *&v17[*(v83 + 20)];
      sub_1001114F0(v17, type metadata accessor for Task.Logger);
      *(v38 + 10) = v40;
      *(v38 + 11) = 2082;
      v41 = (v33 + *(v39 + 20));
      v42 = v41[1];
      v43 = v41[2];
      v44 = v41[3];
      sub_100018BD0(*v41, v42, v43, v44, v41[4]);
      sub_1001114F0(v33, type metadata accessor for Task.Logger);
      if (v44 < 0)
      {
      }

      v45 = sub_10015BA6C(v42, v43, &v91);

      *(v38 + 13) = v45;
      *(v38 + 21) = 2160;
      *(v38 + 23) = 0x786F626C69616DLL;
      *(v38 + 31) = 2085;
      v89 = v37;
      v90 = v81;

      v46 = sub_1004A5824();
      v48 = sub_10015BA6C(v46, v47, &v91);

      *(v38 + 33) = v48;
      *(v38 + 41) = 2160;
      *(v38 + 43) = 0x786F626C69616DLL;
      *(v38 + 51) = 2085;

      v89 = v78;
      v90 = v82;
      v49 = sub_1004A5824();
      v51 = sub_10015BA6C(v49, v50, &v91);

      *(v38 + 53) = v51;
      _os_log_impl(&_mh_execute_header, v35, v80, "[%.*hhx-%{public}s] Failed to rename '%{sensitive,mask.mailbox}s' to '%{sensitive,mask.mailbox}s'.", v38, 0x3Du);
      swift_arrayDestroy();

      v52 = v85;
      v53 = v86;
    }

    else
    {
      sub_1001114F0(v17, type metadata accessor for Task.Logger);

      sub_1001114F0(v33, type metadata accessor for Task.Logger);
      v52 = v85;
      v53 = v86;
    }

    sub_1000883C4(&v89, v52, v53);
  }

  else
  {
    v54 = v80;
    sub_100111420(a7, v80, type metadata accessor for Task.Logger);
    v55 = v79;
    sub_100111420(a7, v79, type metadata accessor for Task.Logger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();

    v56 = v31;
    v57 = sub_1004A4A54();
    v58 = sub_1004A6034();

    if (os_log_type_enabled(v57, v58))
    {
      LODWORD(v84) = v58;
      v78 = v56;
      v59 = v29;
      v87 = 0;
      v60 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v91 = v77;
      *v60 = 68159235;
      *(v60 + 4) = 2;
      *(v60 + 8) = 256;
      v61 = v83;
      v62 = *(v55 + *(v83 + 20));
      sub_1001114F0(v55, type metadata accessor for Task.Logger);
      *(v60 + 10) = v62;
      *(v60 + 11) = 2082;
      v63 = (v54 + *(v61 + 20));
      v64 = v63[1];
      v65 = v63[2];
      v66 = v63[3];
      sub_100018BD0(*v63, v64, v65, v66, v63[4]);
      sub_1001114F0(v54, type metadata accessor for Task.Logger);
      if (v66 < 0)
      {
      }

      v67 = sub_10015BA6C(v64, v65, &v91);

      *(v60 + 13) = v67;
      *(v60 + 21) = 2160;
      *(v60 + 23) = 0x786F626C69616DLL;
      *(v60 + 31) = 2085;
      v89 = v59;
      v90 = v81;

      v68 = sub_1004A5824();
      v70 = sub_10015BA6C(v68, v69, &v91);

      *(v60 + 33) = v70;
      *(v60 + 41) = 2160;
      *(v60 + 43) = 0x786F626C69616DLL;
      *(v60 + 51) = 2085;

      v89 = v78;
      v90 = v82;
      v71 = sub_1004A5824();
      v73 = sub_10015BA6C(v71, v72, &v91);

      *(v60 + 53) = v73;
      _os_log_impl(&_mh_execute_header, v57, v84, "[%.*hhx-%{public}s] Did rename '%{sensitive,mask.mailbox}s' to '%{sensitive,mask.mailbox}s'.", v60, 0x3Du);
      swift_arrayDestroy();

      v74 = v85;
      v75 = v86;
    }

    else
    {
      sub_1001114F0(v55, type metadata accessor for Task.Logger);

      sub_1001114F0(v54, type metadata accessor for Task.Logger);
      v74 = v85;
      v75 = v86;
    }

    sub_1000883C4(&v89, v74, v75);
  }
}

uint64_t sub_100110618@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100111348();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100110678(uint64_t a1)
{

  sub_10010F2A8(v2);

  *(a1 + 137) = 1;
  return result;
}

unint64_t sub_1001106E4()
{
  result = qword_1005D0C98;
  if (!qword_1005D0C98)
  {
    result = swift_getWitnessTable(a5_0, &type metadata for RenameMailboxes.ActionID, v0, v1);
    atomic_store(result, &qword_1005D0C98);
  }

  return result;
}

unint64_t sub_10011073C()
{
  result = qword_1005D0CA0;
  if (!qword_1005D0CA0)
  {
    result = swift_getWitnessTable("1]\t", &type metadata for OpaqueMailboxID, v0, v1);
    atomic_store(result, &qword_1005D0CA0);
  }

  return result;
}

unint64_t sub_100110790(uint64_t a1)
{
  result = sub_1001107B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001107B8()
{
  result = qword_1005D0D20;
  if (!qword_1005D0D20)
  {
    result = swift_getWitnessTable(byte_1004D5AF0, &type metadata for RenameMailboxes, v0, v1);
    atomic_store(result, &qword_1005D0D20);
  }

  return result;
}

uint64_t sub_10011080C(unint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    sub_10008E7D8();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  sub_10013E544(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

uint64_t sub_1001108E4(unint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    sub_10008E93C();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  sub_10013E6FC(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

BOOL sub_100110A10(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = a2[1];
  if (v3 >> 60 == 11)
  {
    return v4 >> 60 == 11;
  }

  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (((v4 >> 60) | 4) == 0xF)
  {
    return 0;
  }

  return sub_10003A194(*(a1 + 8), v3, *a2, v4);
}

uint64_t sub_100110AA0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = a2 + 24;
  v5 = result & 1;
LABEL_2:
  v6 = (v4 + 8 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_19;
    }

    v8 = *(v6 + 12);
    v6 += 2;
    ++v2;
    if (v8 == v5)
    {
      v9 = *v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100091A48(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_100091A48((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[v11];
      *(v12 + 8) = v9;
      *(v12 + 36) = v8;
      v2 = v7;
      goto LABEL_2;
    }
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    sub_100091A28(0, v13, 0);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 4;
    do
    {
      v16 = _swiftEmptyArrayStorage[v15];
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_100091A28((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100110C64(char a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  result = sub_100110AA0(a1 & 1, a3);
  v22 = *(result + 16);
  if (v22)
  {
    v12 = 0;
    v20 = result + 32;
    v23 = result;
    while (v12 < *(result + 16))
    {
      v13 = *(v24 + 16);
      if (v13)
      {
        v14 = *(v20 + 4 * v12);
        v15 = v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v16 = *(v21 + 72);
        do
        {
          sub_100111420(v15, v10, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v10, v7, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v7, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v17 = *&v7[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v7, type metadata accessor for ClientCommand);
            if (v17 == v14)
            {
              v18 = 1;
              goto LABEL_13;
            }
          }

          v15 += v16;
          --v13;
        }

        while (v13);
      }

      ++v12;
      result = v23;
      if (v12 == v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v18 = 0;
LABEL_13:

    return v18;
  }

  return result;
}

void *sub_100110EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v17 = a2;
  v18 = BYTE4(a2) & 1;
  v14[2] = &v16;

  v4 = sub_10009E080(sub_100111608, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = _swiftEmptyArrayStorage;
    v6 = v4;
    sub_100091A28(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = v15[2];
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = v8[3];
      if (v9 >= v12 >> 1)
      {
        sub_100091A28((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      v8[2] = v9 + 1;
      *(v8 + v9 + 8) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

void *sub_100110FD4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  result = sub_100110EA0(a1, a2 | ((HIDWORD(a2) & 1) << 32), a4);
  v23 = result[2];
  if (v23)
  {
    v14 = 0;
    v21 = result + 4;
    v24 = result;
    while (v14 < result[2])
    {
      v15 = *(v25 + 16);
      if (v15)
      {
        v16 = *(v21 + v14);
        v17 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v18 = *(v22 + 72);
        do
        {
          sub_100111420(v17, v12, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v12, v9, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v9, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v19 = *&v9[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v9, type metadata accessor for ClientCommand);
            if (v19 == v16)
            {
              v20 = 1;
              goto LABEL_13;
            }
          }

          v17 += v18;
          --v15;
        }

        while (v15);
      }

      ++v14;
      result = v24;
      if (v14 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v20 = 0;
LABEL_13:

    return v20;
  }

  return result;
}

void *sub_100111220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a1;
  v16[1] = a2;
  v14[2] = v16;

  v4 = sub_10009E234(sub_100111550, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = _swiftEmptyArrayStorage;
    v6 = v4;
    sub_100091A28(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = v15[2];
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = v8[3];
      if (v9 >= v12 >> 1)
      {
        sub_100091A28((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      v8[2] = v9 + 1;
      *(v8 + v9 + 8) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_100111348()
{
  v1 = *(v0 + 64);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1004A6554();
  v3 = sub_1001108E4(v2, *(v1 + 36));
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;

  return v3;
}

uint64_t sub_1001113E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100111420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100111488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001114F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100111550(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 16) == v2[1])
  {
    return sub_1000FFC98(*(a1 + 8), *v2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100111658(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 40;
LABEL_2:
  v6 = (v5 + 16 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_19;
    }

    v8 = *v6;
    v6 += 2;
    ++v3;
    if (v8 == v2)
    {
      v9 = *(v6 - 6);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100091CA8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_100091CA8((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v11];
      *(v12 + 8) = v9;
      v12[5] = v2;
      v3 = v7;
      goto LABEL_2;
    }
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    sub_100091A28(0, v13, 0);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 4;
    do
    {
      v16 = _swiftEmptyArrayStorage[v15];
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_100091A28((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v16;
      v15 += 2;
      ++v14;
      --v13;
    }

    while (v13);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100111808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  result = sub_100111658(a1, a3);
  v22 = *(result + 16);
  if (v22)
  {
    v12 = 0;
    v20 = result + 32;
    v23 = result;
    while (v12 < *(result + 16))
    {
      v13 = *(v24 + 16);
      if (v13)
      {
        v14 = *(v20 + 4 * v12);
        v15 = v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v16 = *(v21 + 72);
        do
        {
          sub_100111420(v15, v10, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v10, v7, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v7, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v17 = *&v7[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v7, type metadata accessor for ClientCommand);
            if (v17 == v14)
            {
              v18 = 1;
              goto LABEL_13;
            }
          }

          v15 += v16;
          --v13;
        }

        while (v13);
      }

      ++v12;
      result = v23;
      if (v12 == v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v18 = 0;
LABEL_13:

    return v18;
  }

  return result;
}

void *sub_100111A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v18[-v6];
  v19 = a1;

  sub_10009E6CC(sub_100112CBC, v18, a2);
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100091A28(0, v10, 0);
    v11 = v20;
    v12 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_100112D18(v12, v7);
      v14 = *v7;
      sub_100112D88(v7);
      v20 = v11;
      v16 = v11[2];
      v15 = v11[3];
      if (v16 >= v15 >> 1)
      {
        sub_100091A28((v15 > 1), v16 + 1, 1);
        v11 = v20;
      }

      v11[2] = v16 + 1;
      *(v11 + v16 + 8) = v14;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v11;
}

void *sub_100111C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  result = sub_100111A44(a1, a3);
  v22 = result[2];
  if (v22)
  {
    v12 = 0;
    v20 = result + 4;
    v23 = result;
    while (v12 < result[2])
    {
      v13 = *(v24 + 16);
      if (v13)
      {
        v14 = *(v20 + v12);
        v15 = v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v16 = *(v21 + 72);
        do
        {
          sub_100111420(v15, v10, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v10, v7, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v7, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v17 = *&v7[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v7, type metadata accessor for ClientCommand);
            if (v17 == v14)
            {
              v18 = 1;
              goto LABEL_13;
            }
          }

          v15 += v16;
          --v13;
        }

        while (v13);
      }

      ++v12;
      result = v23;
      if (v12 == v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v18 = 0;
LABEL_13:

    return v18;
  }

  return result;
}

void *sub_100111E70(uint64_t a1, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  v24 = a1;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  result = sub_100112888(a2, a3);
  v22 = result[2];
  if (v22)
  {
    v12 = 0;
    v20 = result + 4;
    v23 = result;
    while (v12 < result[2])
    {
      v13 = *(v24 + 16);
      if (v13)
      {
        v14 = *(v20 + v12);
        v15 = v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v16 = *(v21 + 72);
        do
        {
          sub_100111420(v15, v10, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v10, v7, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v7, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v17 = *&v7[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v7, type metadata accessor for ClientCommand);
            if (v17 == v14)
            {
              v18 = 1;
              goto LABEL_13;
            }
          }

          v15 += v16;
          --v13;
        }

        while (v13);
      }

      ++v12;
      result = v23;
      if (v12 == v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v18 = 0;
LABEL_13:

    return v18;
  }

  return result;
}

void *sub_10011210C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a1;
  v16[1] = a2;
  v14[2] = v16;

  v4 = sub_10009EDBC(sub_100112DF0, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = _swiftEmptyArrayStorage;
    v6 = v4;
    sub_100091A28(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = v15[2];
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = v8[3];
      if (v9 >= v12 >> 1)
      {
        sub_100091A28((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      v8[2] = v9 + 1;
      *(v8 + v9 + 8) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_10011224C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, __n128))
{
  v29 = a3;
  v9 = type metadata accessor for TaskHistory.Previous(0);
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  result = a5(a1, a2, a4, v13);
  v27 = *(result + 16);
  if (v27)
  {
    v17 = 0;
    v25 = result + 32;
    v28 = result;
    while (v17 < *(result + 16))
    {
      v18 = *(v29 + 16);
      if (v18)
      {
        v19 = *(v25 + 4 * v17);
        v20 = v29 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
        v21 = *(v26 + 72);
        do
        {
          sub_100111420(v20, v15, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v15, v11, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v11, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v22 = *&v11[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v11, type metadata accessor for ClientCommand);
            if (v22 == v19)
            {
              v23 = 1;
              goto LABEL_13;
            }
          }

          v20 += v21;
          --v18;
        }

        while (v18);
      }

      ++v17;
      result = v28;
      if (v17 == v27)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v23 = 0;
LABEL_13:

    return v23;
  }

  return result;
}

uint64_t sub_100112498(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = result;
  v4 = *(a2 + 16);
  v5 = a2 + 24;
LABEL_2:
  v6 = (v5 + 8 * v2);
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_19;
    }

    v8 = *(v6 + 12);
    v6 += 2;
    ++v2;
    if (v8 == v3)
    {
      v9 = *v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000921C8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_1000921C8((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[v11];
      *(v12 + 8) = v9;
      *(v12 + 36) = v3;
      v2 = v7;
      goto LABEL_2;
    }
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    sub_100091A28(0, v13, 0);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 4;
    do
    {
      v16 = _swiftEmptyArrayStorage[v15];
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_100091A28((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10011264C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for TaskHistory.Previous(0);
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  result = sub_100112498(a1, a3);
  v22 = *(result + 16);
  if (v22)
  {
    v12 = 0;
    v20 = result + 32;
    v23 = result;
    while (v12 < *(result + 16))
    {
      v13 = *(v24 + 16);
      if (v13)
      {
        v14 = *(v20 + 4 * v12);
        v15 = v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v16 = *(v21 + 72);
        do
        {
          sub_100111420(v15, v10, type metadata accessor for TaskHistory.Previous);
          sub_100111488(v10, v7, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1001114F0(v7, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v17 = *&v7[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
            sub_1001114F0(v7, type metadata accessor for ClientCommand);
            if (v17 == v14)
            {
              v18 = 1;
              goto LABEL_13;
            }
          }

          v15 += v16;
          --v13;
        }

        while (v13);
      }

      ++v12;
      result = v23;
      if (v12 == v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v18 = 0;
LABEL_13:

    return v18;
  }

  return result;
}

void *sub_100112888(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v9 = v8 + 1;
      if (v8 >= v7 >> 1)
      {
        a2(v7 > 1, v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9;
      *(&_swiftEmptyArrayStorage[4] + v8) = v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage[2];
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  sub_100091A28(0, v9, 0);
  v10 = _swiftEmptyArrayStorage[2];
  v11 = 32;
  do
  {
    v12 = *(_swiftEmptyArrayStorage + v11);
    v13 = _swiftEmptyArrayStorage[3];
    if (v10 >= v13 >> 1)
    {
      sub_100091A28((v13 > 1), v10 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v12;
    v11 += 4;
    ++v10;
    --v9;
  }

  while (v9);
LABEL_14:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100112A28(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    goto LABEL_20;
  }

  v7 = result;
  v8 = 0;
  v9 = a4 + 56;
  do
  {
    v10 = (v9 + 32 * v8);
    v11 = v8;
    while (1)
    {
      if (v11 >= v4)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_27;
      }

      v13 = *(v10 - 2);
      v12 = *(v10 - 1);
      v14 = *v10;
      if ((*v10 & 1) == 0)
      {
        break;
      }

      if ((a3 & 1) != 0 && v13 == v7 && v12 == a2)
      {
        v26 = v9;
        v13 = v7;
        v12 = a2;
        goto LABEL_15;
      }

LABEL_4:
      ++v11;
      v10 += 32;
      if (v8 == v4)
      {
        goto LABEL_20;
      }
    }

    if (a3 & 1) != 0 || ((v13 ^ v7))
    {
      goto LABEL_4;
    }

    v26 = v9;
LABEL_15:
    v24 = *(v10 - 6);
    result = swift_isUniquelyReferenced_nonNull_native();
    v25 = a2;
    if ((result & 1) == 0)
    {
      result = sub_100091D08(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v9 = v26;
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_100091D08((v15 > 1), v16 + 1, 1);
      v17 = v16 + 1;
      v9 = v26;
    }

    _swiftEmptyArrayStorage[2] = v17;
    v18 = &_swiftEmptyArrayStorage[4 * v16];
    *(v18 + 8) = v24;
    v18[5] = v13;
    v18[6] = v12;
    *(v18 + 56) = v14;
    a2 = v25;
  }

  while (v8 != v4);
LABEL_20:
  v19 = _swiftEmptyArrayStorage[2];
  if (v19)
  {
    sub_100091A28(0, v19, 0);
    v20 = _swiftEmptyArrayStorage[2];
    v21 = 4;
    do
    {
      v22 = _swiftEmptyArrayStorage[v21];
      v23 = _swiftEmptyArrayStorage[3];
      if (v20 >= v23 >> 1)
      {
        sub_100091A28((v23 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      *(&_swiftEmptyArrayStorage[4] + v20) = v22;
      v21 += 4;
      ++v20;
      --v19;
    }

    while (v19);
  }

  return _swiftEmptyArrayStorage;
}

BOOL sub_100112C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else if ((a4 & 0x100000000) != 0)
  {
    return 0;
  }

  return a2 == a4 && (sub_1000FFC98(a1, a3) & 1) != 0;
}

uint64_t sub_100112CBC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  return sub_10003D8C0(a1 + *(v4 + 52), v3) & 1;
}

uint64_t sub_100112D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100112D88(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100112E34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  sub_1000118A4(a1, &v24 - v8);
  sub_1000118A4(a1, v6);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_100113B98(v2, v28);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_100113B98(v2, v27);
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v12 = 68159747;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v13 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v13;
    *(v12 + 11) = 2082;
    v14 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_10015BA6C(*(v14 + 1), *(v14 + 2), &v26);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    LOWORD(v13) = *(v13 + 12);
    sub_100011908(v6);
    *(v12 + 29) = v13;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v15 = *(v14 + 4);
    LODWORD(v14) = *(v14 + 10);

    sub_100011908(v9);
    v24 = v15;
    v25 = v14;
    v16 = sub_1004A5824();
    v18 = sub_10015BA6C(v16, v17, &v26);

    *(v12 + 43) = v18;
    *(v12 + 51) = 1024;
    if (v29)
    {
      v19 = 0;
    }

    else
    {
      v19 = v28[26];
    }

    sub_100113BD0(v28);
    *(v12 + 53) = v19;
    *(v12 + 57) = 2082;
    v20 = sub_100186D4C(*&v27[109]);
    v22 = v21;
    sub_100113BD0(v27);
    v23 = sub_10015BA6C(v20, v22, &v26);

    *(v12 + 59) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Local UID validity: 0x%x, reason: %{public}s", v12, 0x43u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100113BD0(v28);
    sub_100011908(v6);

    sub_100113BD0(v27);
    sub_100011908(v9);
  }
}

void sub_100113150(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v5);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v32[-v9];
  if ((*(v2 + 145) & 1) == 0)
  {
    v11 = *(v2 + 144);
    v12 = *(v2 + 136);
    v13 = *(v2 + 128);
    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v37 = v15;
    v38 = BYTE4(v15) & 1;
    v39 = v14;
    v40 = v13 & 1;
    v41 = v12;
    v42 = v11 & 1;
    v16 = sub_1000B7584(*(v2 + 24), *(v2 + 32), (a1 + 168), &v37);
    if (v16)
    {
      v18 = sub_1001138EC((a1 + 216), v16, v17);
      v19 = *(*(a1 + 216) + 16);
      if (v19 < v18)
      {
        __break(1u);
        return;
      }

      sub_1001647BC(v18, v19);
    }

    if ((*(v2 + 108) & 1) == 0)
    {
      v20 = *(v2 + 104);
      sub_1000118A4(a2, v10);
      sub_1000118A4(a2, v7);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v21 = sub_1004A4A54();
      v22 = sub_1004A6014();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v33 = v20;
        v24 = v23;
        v36 = swift_slowAlloc();
        *v24 = 68159747;
        *(v24 + 4) = 2;
        *(v24 + 8) = 256;
        v25 = &v7[*(v5 + 20)];
        *(v24 + 10) = *v25;
        *(v24 + 11) = 2082;
        v26 = &v10[*(v5 + 20)];
        *(v24 + 13) = sub_10015BA6C(*(v26 + 1), *(v26 + 2), &v36);
        *(v24 + 21) = 1040;
        *(v24 + 23) = 2;
        *(v24 + 27) = 512;
        LOWORD(v25) = *(v25 + 12);
        sub_100011908(v7);
        *(v24 + 29) = v25;
        *(v24 + 31) = 2160;
        *(v24 + 33) = 0x786F626C69616DLL;
        *(v24 + 41) = 2085;
        v27 = *(v26 + 4);
        LODWORD(v26) = *(v26 + 10);

        sub_100011908(v10);
        v34 = v27;
        v35 = v26;
        v28 = sub_1004A5824();
        v30 = sub_10015BA6C(v28, v29, &v36);

        *(v24 + 43) = v30;
        *(v24 + 51) = 1024;
        *(v24 + 53) = v33;
        *(v24 + 57) = 1024;
        if ((v15 & &_mh_execute_header) != 0)
        {
          v31 = 0;
        }

        else
        {
          v31 = v15;
        }

        *(v24 + 59) = v31;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did delete all existing local messages due to validity change: 0x%x → 0x%x", v24, 0x3Fu);
        swift_arrayDestroy();
      }

      else
      {
        sub_100011908(v7);

        sub_100011908(v10);
      }
    }
  }
}

double sub_1001134B0()
{
  if (qword_1005CCE88 != -1)
  {
    swift_once();
  }

  return result;
}

__n128 sub_10011350C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100113540(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
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

uint64_t sub_100113588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100113604@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a5@<X8>)
{
  result = sub_1001137D4(a1, a2, a3);
  *a5 = result;
  return result;
}

unint64_t sub_100113658()
{
  result = qword_1005D0D30;
  if (!qword_1005D0D30)
  {
    result = swift_getWitnessTable(aA_5, &type metadata for ReSyncMailbox.ActionID, v0, v1);
    atomic_store(result, &qword_1005D0D30);
  }

  return result;
}

unint64_t sub_1001136AC(uint64_t a1)
{
  result = sub_1001136D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001136D4()
{
  result = qword_1005D0DE8;
  if (!qword_1005D0DE8)
  {
    result = swift_getWitnessTable(byte_1004D5BE4, &type metadata for ReSyncMailbox, v0, v1);
    atomic_store(result, &qword_1005D0DE8);
  }

  return result;
}

uint64_t sub_100113728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = v6 + 48 * result;
    if (*(v7 + 32) == a3)
    {
      v8 = *(v7 + 24);
      v9 = *(v8 + 16);
      if (v9 == *(a2 + 16))
      {
        break;
      }
    }

LABEL_3:
    if (++result == v3)
    {
      return 0;
    }
  }

  if (v9)
  {
    v10 = v8 == a2;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = (v8 + 32);
    v12 = (a2 + 32);
    while (v9)
    {
      if (*v11 != *v12)
      {
        goto LABEL_3;
      }

      ++v11;
      ++v12;
      if (!--v9)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001137D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 20);
  v6 = *(v3 + 108);
  if (v5)
  {
    if (*(v3 + 108))
    {
      return 0xF000000000000007;
    }
  }

  else
  {
    if (v4 != *(v3 + 104))
    {
      v6 = 1;
    }

    if ((v6 & 1) == 0)
    {
      return 0xF000000000000007;
    }
  }

  v7 = *(a3 + 32);
  if (v7 < 2)
  {
    v8 = *(a3 + 24);
    if ((*(v3 + 145) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
    if ((*(v3 + 145) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v9 = &_mh_execute_header;
  if (!*(a3 + 20))
  {
    v9 = 0;
  }

  *(v3 + 112) = v9 | v4;
  *(v3 + 120) = xmmword_1004B1230;
  *(v3 + 136) = v8;
  *(v3 + 144) = v7 > 1;
  *(v3 + 145) = 0;
LABEL_14:
  if (sub_10001FDE8(a1, a2))
  {
    return 0xF000000000000007;
  }

  v11 = swift_allocObject();
  v12 = *(v3 + 8);
  *(v11 + 16) = *v3;
  *(v11 + 24) = v12;
  *(v11 + 32) = v4;
  *(v11 + 36) = v5;
  *(v11 + 40) = 0;
  *(v11 + 48) = 1;
  *(v11 + 56) = v8;
  *(v11 + 64) = v7 > 1;
  v13 = v11 | 0x1000000000000004;

  return v13;
}

uint64_t sub_1001138EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = sub_100113728(*a1, a2, a3);
  v7 = result;
  if (v3)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      v10 = *(v4 + 16);
      if (v8 == v10)
      {
        return v7;
      }

      if (v8 >= v10)
      {
        goto LABEL_30;
      }

      v11 = v4 + 32 + 48 * v8;
      v13 = *(v11 + 24);
      v12 = *(v11 + 32);
      if (v12 == a3 && (v14 = *(v13 + 16), v14 == *(a2 + 16)))
      {
        if (v14)
        {
          v15 = v13 == a2;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v16 = (v13 + 32);
          v17 = (a2 + 32);
          while (v14)
          {
            if (*v16 != *v17)
            {
              goto LABEL_21;
            }

            ++v16;
            ++v17;
            if (!--v14)
            {
              goto LABEL_7;
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
          __break(1u);
LABEL_35:
          __break(1u);
          break;
        }
      }

      else
      {
LABEL_21:
        if (v7 != v8)
        {
          if (v7 >= v10)
          {
            goto LABEL_33;
          }

          v18 = v4 + 32 + 48 * v7;
          v19 = *v18;
          v32 = *(v18 + 16);
          v20 = *(v18 + 24);
          v30 = *(v18 + 40);
          v31 = *(v18 + 32);
          v22 = *v11;
          v21 = *(v11 + 8);
          v34 = *(v11 + 16);
          v35 = *(v11 + 40);
          v33 = *(v18 + 8);
          sub_100014CEC(*v18, v33);

          sub_100014CEC(v22, v21);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100139868(v4);
            v4 = result;
          }

          if (v7 >= *(v4 + 16))
          {
            goto LABEL_34;
          }

          v23 = v4 + 32 + 48 * v7;
          v24 = *v23;
          v25 = *(v23 + 8);
          *v23 = v22;
          *(v23 + 8) = v21;
          *(v23 + 16) = v34;
          *(v23 + 24) = v13;
          *(v23 + 32) = v12;
          *(v23 + 40) = v35;
          sub_100014D40(v24, v25);

          if (v8 >= *(v4 + 16))
          {
            goto LABEL_35;
          }

          v26 = v4 + 32 + 48 * v8;
          v27 = *v26;
          v28 = *(v26 + 8);
          *v26 = v19;
          *(v26 + 8) = v33;
          *(v26 + 16) = v32;
          *(v26 + 24) = v20;
          *(v26 + 32) = v31;
          *(v26 + 40) = v30;
          sub_100014D40(v27, v28);

          *a1 = v4;
        }

        v9 = __OFADD__(v7++, 1);
        if (v9)
        {
          goto LABEL_32;
        }
      }

LABEL_7:
      v9 = __OFADD__(v8++, 1);
      if (v9)
      {
        goto LABEL_31;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100113B60()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100113C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_100092328(0, v1, 0);
  v3 = a1 + 64;
  result = sub_1004A6554();
  v5 = v23;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(*(a1 + 56) + 32 * result);
    v11 = *(a1 + 36);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v21 = *(a1 + 36);
      v22 = result;
      sub_100092328((v12 > 1), v13 + 1, 1);
      v5 = v23;
      v11 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    *(&_swiftEmptyArrayStorage[4] + v13) = v10;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v8);
    if ((v14 & v9) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_100020944(result, v11, 0);
          v5 = v23;
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_100020944(result, v11, 0);
      v5 = v23;
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
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t _s13IMAP2Behavior19RunningSyncRequestsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v26 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v25 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v11 = (*(v3 + 56) + 32 * (v8 | (v4 << 6)));
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = v11[16];
    v15 = *(v11 + 3);
    v16 = sub_100067004();
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    v18 = v2;
    v19 = (*(v2 + 56) + 32 * v16);
    v20 = *(v19 + 1);
    v21 = *(v19 + 3);
    v27 = *v19;
    v28 = v19[16];

    v23 = static SyncRequest.__derived_struct_equals(_:_:)(v27, v20, v28, v12, v13, v14, v22);

    result = 0;
    if (v23)
    {
      v24 = v21 == v15;
      v2 = v18;
      if (v24)
      {
        continue;
      }
    }

    return result;
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v25)
    {
      return 1;
    }

    v10 = *(v26 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v7 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100113FD0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 48) + 16 * v12;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v3 + 56) + 72 * v12;
    v17 = *(v16 + 64);
    v19 = *(v16 + 32);
    v18 = *(v16 + 48);
    v36 = *(v16 + 16);
    v20 = *v16;
    v37 = v19;
    v38 = v18;
    v35 = v20;
    v39 = v17;
    v32 = v18;
    v33 = v36;
    v30 = v19;
    v31 = v20;

    sub_100063BD4(&v35, v34);
    v21 = v14 == 0;
    if (!v14)
    {
      return v21;
    }

    v42[0] = v31;
    v42[1] = v33;
    v42[2] = v30;
    v42[3] = v32;
    v43 = v17;
    v22 = sub_100063B5C(v14, v15);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      sub_100063C30(v42);
      return 0;
    }

    v25 = *(a2 + 56) + 72 * v22;
    v40[0] = *v25;
    v27 = *(v25 + 32);
    v26 = *(v25 + 48);
    v28 = *(v25 + 16);
    v41 = *(v25 + 64);
    v40[2] = v27;
    v40[3] = v26;
    v40[1] = v28;
    sub_100063BD4(v40, &v35);
    v29 = static RemoteMailbox.__derived_struct_equals(_:_:)(v40, v42);
    sub_100063C30(v40);
    result = sub_100063C30(v42);
    if ((v29 & 1) == 0)
    {
      return v21;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001141E0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = sub_100063C84(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    v16 = v15;

    if ((v16 & 1) == 0)
    {

      return 0;
    }

    v17 = sub_100083308(*(*(a2 + 56) + 8 * v14), v13);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100114320(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 2 * v12);
    result = sub_100063C84(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 2 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10011442C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v30 = result;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
LABEL_13:
    v14 = (*(v3 + 56) + 24 * (v10 | (v4 << 6)));
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = v14[16];
    v18 = sub_100067004();
    if (v19)
    {
      v20 = (*(v2 + 56) + 24 * v18);
      v21 = *(v20 + 1);
      v22 = v20[16];
      v23 = v11;
      v24 = *v20;

      v25 = v24;
      v8 = v23;
      v26 = v22;
      v2 = a2;
      v28 = static SyncRequest.__derived_struct_equals(_:_:)(v25, v21, v26, v15, v16, v17, v27);

      v3 = v30;

      if (v28)
      {
        continue;
      }
    }

    return 0;
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001145B4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v27 = (v8 - 1) & v8;
LABEL_13:
    v13 = v3;
    v14 = (*(v3 + 56) + 24 * (v10 | (v4 << 6)));
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(v14 + 16);
    v18 = *(v14 + 17);
    v19 = sub_100067004();
    if (v20)
    {
      v21 = (*(a2 + 56) + 24 * v19);
      v22 = *v21;
      v23 = *(v21 + 1);
      v24 = *(v21 + 16);
      v25 = *(v21 + 17) ? 256 : 0;
      v26 = v18 ? 256 : 0;
      result = static MessageToDownload.__derived_struct_equals(_:_:)(v22, v23, v25 | v24, v15, v16, v26 | v17);
      v3 = v13;
      v8 = v27;
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100114730(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_17:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    v15 = *(v3 + 56) + 12 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    result = sub_100063D94(v14);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v19 = *(a2 + 56) + 12 * result;
    if (*(v19 + 8))
    {
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v16 == *v19)
      {
        v9 = v17;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100114864(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (!v8)
      {
        v11 = v4;
        while (1)
        {
          v4 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v4 >= v9)
          {
            return 1;
          }

          v12 = *(v5 + 8 * v4);
          ++v11;
          if (v12)
          {
            v10 = __clz(__rbit64(v12));
            v94 = (v12 - 1) & v12;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
      }

      v10 = __clz(__rbit64(v8));
      v94 = (v8 - 1) & v8;
LABEL_13:
      v13 = (*(v3 + 56) + 24 * (v10 | (v4 << 6)));
      v14 = *v13;
      v16 = *(v13 + 1);
      v15 = *(v13 + 2);
      sub_100014CEC(v16, v15);
      v17 = sub_100067004();
      if ((v18 & 1) == 0 || (v19 = (*(v2 + 56) + 24 * v17), v14 != *v19))
      {
LABEL_155:
        sub_100014D40(v16, v15);
        return 0;
      }

      v20 = *(v19 + 1);
      v21 = *(v19 + 2);
      v22 = v21 >> 62;
      v23 = v15 >> 62;
      if (v21 >> 62 == 3)
      {
        if (v20)
        {
          v24 = 0;
        }

        else
        {
          v24 = v21 == 0xC000000000000000;
        }

        if (v24 && v15 >> 62 == 3 && !v16 && v15 == 0xC000000000000000)
        {
          v27 = 0;
          v28 = 0xC000000000000000;
          goto LABEL_59;
        }

LABEL_39:
        v29 = 0;
        if (v23 <= 1)
        {
          goto LABEL_37;
        }

        goto LABEL_40;
      }

      if (v22 > 1)
      {
        if (v22 != 2)
        {
          goto LABEL_39;
        }

        v31 = *(v20 + 16);
        v30 = *(v20 + 24);
        v32 = __OFSUB__(v30, v31);
        v29 = v30 - v31;
        if (v32)
        {
          goto LABEL_160;
        }

        if (v23 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v22)
      {
        LODWORD(v29) = HIDWORD(v20) - v20;
        if (__OFSUB__(HIDWORD(v20), v20))
        {
          goto LABEL_161;
        }

        v29 = v29;
        if (v23 <= 1)
        {
LABEL_37:
          if (v23)
          {
            LODWORD(v33) = HIDWORD(v16) - v16;
            if (__OFSUB__(HIDWORD(v16), v16))
            {
              goto LABEL_158;
            }

            v33 = v33;
          }

          else
          {
            v33 = BYTE6(v15);
          }

          goto LABEL_46;
        }
      }

      else
      {
        v29 = BYTE6(v21);
        if (v23 <= 1)
        {
          goto LABEL_37;
        }
      }

LABEL_40:
      if (v23 != 2)
      {
        if (v29)
        {
          goto LABEL_155;
        }

        goto LABEL_58;
      }

      v35 = *(v16 + 16);
      v34 = *(v16 + 24);
      v32 = __OFSUB__(v34, v35);
      v33 = v34 - v35;
      if (v32)
      {
        goto LABEL_159;
      }

LABEL_46:
      if (v29 != v33)
      {
        goto LABEL_155;
      }

      if (v29 >= 1)
      {
        break;
      }

LABEL_58:
      v27 = v16;
      v28 = v15;
LABEL_59:
      sub_100014D40(v27, v28);
      v8 = v94;
    }

    if (v22 <= 1)
    {
      break;
    }

    if (v22 != 2)
    {
      memset(__s1, 0, 14);
      if (v23 == 2)
      {
        v65 = *(v16 + 16);
        v86 = *(v16 + 24);
        v91 = v20;
        sub_100014CEC(v20, v21);
        v66 = sub_1004A40D4();
        v90 = v2;
        if (v66)
        {
          v67 = sub_1004A4104();
          if (__OFSUB__(v65, v67))
          {
            goto LABEL_175;
          }

          v66 += v65 - v67;
        }

        v68 = &v86[-v65];
        if (__OFSUB__(v86, v65))
        {
          goto LABEL_169;
        }

        v69 = sub_1004A40F4();
        if (!v66)
        {
          goto LABEL_186;
        }

LABEL_119:
        if (v69 >= v68)
        {
          v72 = v68;
        }

        else
        {
          v72 = v69;
        }

        v53 = memcmp(__s1, v66, v72);
        sub_100014D40(v91, v21);
        sub_100014D40(v16, v15);
        v2 = v90;
        goto LABEL_148;
      }

      if (v23 != 1)
      {
LABEL_81:
        __s2 = v16;
        v96 = v15;
        v97 = BYTE2(v15);
        v98 = BYTE3(v15);
        v99 = BYTE4(v15);
        v100 = BYTE5(v15);
        v53 = memcmp(__s1, &__s2, BYTE6(v15));
        v56 = v16;
        v57 = v15;
LABEL_151:
        sub_100014D40(v56, v57);
        goto LABEL_152;
      }

      v83 = ((v16 >> 32) - v16);
      if (v16 >> 32 < v16)
      {
        goto LABEL_166;
      }

      v91 = v20;
      sub_100014CEC(v20, v21);
      v49 = sub_1004A40D4();
      if (!v49)
      {
        goto LABEL_182;
      }

      v50 = v49;
      v51 = sub_1004A4104();
      if (__OFSUB__(v16, v51))
      {
        goto LABEL_171;
      }

      v39 = (v16 - v51 + v50);
      result = sub_1004A40F4();
      if (!v39)
      {
        goto LABEL_183;
      }

      goto LABEL_77;
    }

    v88 = v2;
    v92 = v20;
    v41 = *(v20 + 16);
    sub_100014CEC(v20, v21);
    v42 = sub_1004A40D4();
    if (v42)
    {
      v43 = v42;
      v44 = sub_1004A4104();
      if (__OFSUB__(v41, v44))
      {
        goto LABEL_163;
      }

      v84 = (v41 - v44 + v43);
    }

    else
    {
      v84 = 0;
    }

    sub_1004A40F4();
    v3 = a1;
    if (v23 == 2)
    {
      v74 = *(v16 + 16);
      v73 = *(v16 + 24);
      v58 = sub_1004A40D4();
      if (v58)
      {
        v75 = sub_1004A4104();
        if (__OFSUB__(v74, v75))
        {
          goto LABEL_177;
        }

        v58 += v74 - v75;
      }

      v32 = __OFSUB__(v73, v74);
      v76 = v73 - v74;
      if (v32)
      {
        goto LABEL_172;
      }

      v77 = sub_1004A40F4();
      if (v77 >= v76)
      {
        v61 = v76;
      }

      else
      {
        v61 = v77;
      }

      v62 = v84;
      if (!v84)
      {
        goto LABEL_192;
      }

      v2 = v88;
      if (!v58)
      {
        goto LABEL_191;
      }
    }

    else
    {
      if (v23 != 1)
      {
        result = v84;
        v2 = v88;
        __s1[0] = v16;
        LOWORD(__s1[1]) = v15;
        BYTE2(__s1[1]) = BYTE2(v15);
        BYTE3(__s1[1]) = BYTE3(v15);
        BYTE4(__s1[1]) = BYTE4(v15);
        BYTE5(__s1[1]) = BYTE5(v15);
        if (!v84)
        {
          goto LABEL_187;
        }

LABEL_150:
        v53 = memcmp(result, __s1, BYTE6(v15));
        sub_100014D40(v16, v15);
        v56 = v92;
        v57 = v21;
        goto LABEL_151;
      }

      if (v16 >> 32 < v16)
      {
        goto LABEL_167;
      }

      v58 = sub_1004A40D4();
      if (v58)
      {
        v59 = sub_1004A4104();
        if (__OFSUB__(v16, v59))
        {
          goto LABEL_179;
        }

        v58 += v16 - v59;
      }

      v2 = v88;
      v60 = sub_1004A40F4();
      if (v60 >= (v16 >> 32) - v16)
      {
        v61 = (v16 >> 32) - v16;
      }

      else
      {
        v61 = v60;
      }

      v62 = v84;
      if (!v84)
      {
        goto LABEL_189;
      }

      if (!v58)
      {
        goto LABEL_188;
      }
    }

LABEL_144:
    if (v62 == v58)
    {
      sub_100014D40(v16, v15);
      sub_100014D40(v92, v21);
      v3 = a1;
      v8 = v94;
    }

    else
    {
      v53 = memcmp(v62, v58, v61);
      sub_100014D40(v16, v15);
      v54 = v92;
      v55 = v21;
LABEL_147:
      sub_100014D40(v54, v55);
LABEL_148:
      v3 = a1;
LABEL_152:
      v8 = v94;
      if (v53)
      {
        return 0;
      }
    }
  }

  if (!v22)
  {
    __s1[0] = v20;
    LOWORD(__s1[1]) = v21;
    BYTE2(__s1[1]) = BYTE2(v21);
    BYTE3(__s1[1]) = BYTE3(v21);
    BYTE4(__s1[1]) = BYTE4(v21);
    BYTE5(__s1[1]) = BYTE5(v21);
    if (!v23)
    {
      goto LABEL_81;
    }

    v91 = v20;
    if (v23 != 1)
    {
      v70 = *(v16 + 16);
      v87 = *(v16 + 24);
      sub_100014CEC(v20, v21);
      v66 = sub_1004A40D4();
      v90 = v2;
      if (v66)
      {
        v71 = sub_1004A4104();
        if (__OFSUB__(v70, v71))
        {
          goto LABEL_176;
        }

        v66 += v70 - v71;
      }

      v68 = &v87[-v70];
      if (__OFSUB__(v87, v70))
      {
        goto LABEL_168;
      }

      v69 = sub_1004A40F4();
      if (!v66)
      {
        goto LABEL_190;
      }

      goto LABEL_119;
    }

    v83 = ((v16 >> 32) - v16);
    if (v16 >> 32 < v16)
    {
      goto LABEL_165;
    }

    sub_100014CEC(v20, v21);
    v36 = sub_1004A40D4();
    if (!v36)
    {
      goto LABEL_193;
    }

    v37 = v36;
    v38 = sub_1004A4104();
    if (__OFSUB__(v16, v38))
    {
      goto LABEL_170;
    }

    v39 = (v16 - v38 + v37);
    result = sub_1004A40F4();
    if (!v39)
    {
      goto LABEL_194;
    }

LABEL_77:
    if (result >= v83)
    {
      v52 = v83;
    }

    else
    {
      v52 = result;
    }

    v53 = memcmp(__s1, v39, v52);
    sub_100014D40(v91, v21);
    v54 = v16;
    v55 = v15;
    goto LABEL_147;
  }

  v89 = v2;
  v45 = v20;
  if (v20 > v20 >> 32)
  {
    goto LABEL_162;
  }

  v92 = v20;
  sub_100014CEC(v20, v21);
  v46 = sub_1004A40D4();
  if (v46)
  {
    v47 = v46;
    v48 = sub_1004A4104();
    if (__OFSUB__(v45, v48))
    {
      goto LABEL_164;
    }

    v85 = (v45 - v48 + v47);
  }

  else
  {
    v85 = 0;
  }

  sub_1004A40F4();
  v3 = a1;
  if (v23 == 2)
  {
    v79 = *(v16 + 16);
    v78 = *(v16 + 24);
    v58 = sub_1004A40D4();
    if (v58)
    {
      v80 = sub_1004A4104();
      if (__OFSUB__(v79, v80))
      {
        goto LABEL_178;
      }

      v58 += v79 - v80;
    }

    v32 = __OFSUB__(v78, v79);
    v81 = v78 - v79;
    if (v32)
    {
      goto LABEL_174;
    }

    v82 = sub_1004A40F4();
    if (v82 >= v81)
    {
      v61 = v81;
    }

    else
    {
      v61 = v82;
    }

    v62 = v85;
    if (!v85)
    {
      goto LABEL_185;
    }

    v2 = v89;
    if (!v58)
    {
      goto LABEL_184;
    }

    goto LABEL_144;
  }

  if (v23 != 1)
  {
    result = v85;
    v2 = v89;
    __s1[0] = v16;
    LOWORD(__s1[1]) = v15;
    BYTE2(__s1[1]) = BYTE2(v15);
    BYTE3(__s1[1]) = BYTE3(v15);
    BYTE4(__s1[1]) = BYTE4(v15);
    BYTE5(__s1[1]) = BYTE5(v15);
    if (!v85)
    {
      goto LABEL_195;
    }

    goto LABEL_150;
  }

  if (v16 >> 32 < v16)
  {
    goto LABEL_173;
  }

  v58 = sub_1004A40D4();
  if (v58)
  {
    v63 = sub_1004A4104();
    if (__OFSUB__(v16, v63))
    {
      goto LABEL_180;
    }

    v58 += v16 - v63;
  }

  v2 = v89;
  v64 = sub_1004A40F4();
  if (v64 >= (v16 >> 32) - v16)
  {
    v61 = (v16 >> 32) - v16;
  }

  else
  {
    v61 = v64;
  }

  v62 = v85;
  if (!v85)
  {
    goto LABEL_181;
  }

  if (v58)
  {
    goto LABEL_144;
  }

  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  sub_1004A40F4();
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  result = sub_1004A40F4();
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
  return result;
}