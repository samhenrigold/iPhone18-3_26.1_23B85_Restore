uint64_t sub_1000ECA08()
{
  *&v1 = sub_1000EF9EC();
  *(v0 + 104) = v1;
  *(v0 + 32) = _swiftEmptyArrayStorage;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  type metadata accessor for OctaneConfigurationSettings();
  swift_allocObject();
  v2 = sub_1000EF980();
  *(v0 + 48) = sub_1000815A0(v2, v3, v4, v5, v6, v7, v8, v9, 1, _swiftEmptyArrayStorage);
  *(v0 + 56) = _swiftEmptyArrayStorage;
  type metadata accessor for OctaneAppPolicies();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  v10[4] = _swiftEmptyArrayStorage;
  *(v0 + 120) = v10;
  *(v0 + 64) = _swiftEmptyArrayStorage;
  *(v0 + 128) = xmmword_100206E30;
  return v0;
}

unint64_t sub_1000ECAD4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027BBA0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000ECB34(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0x73746375646F7270;
      break;
    case 3:
      result = 0x73676E6974746573;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x63696C6F50707061;
      break;
    case 7:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000ECC74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000ECAD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000ECCA4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000ECB34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000ECCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000ECB20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000ECD14@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOBSDSocket.Option.so_keepalive.getter();
  *a1 = result;
  return result;
}

_UNKNOWN **sub_1000ECD3C@<X0>(void *a1@<X8>)
{
  result = sub_1000ECB24();
  *a1 = result;
  return result;
}

uint64_t sub_1000ECD64(uint64_t a1)
{
  v2 = sub_1000EF060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000ECDA0(uint64_t a1)
{
  v2 = sub_1000EF060();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ECDDC(void *a1)
{
  v2 = swift_allocObject();
  sub_1000ECE2C(a1);
  return v2;
}

uint64_t sub_1000ECE2C(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B3F38, &unk_10020CB30);
  sub_10001A278();
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  *&v9 = sub_1000EF9EC();
  *(v1 + 104) = v9;
  v10 = sub_10001AE68(a1, a1[3]);
  sub_1000EF060();
  sub_1001F8178();
  if (v2)
  {
    sub_1000EF9DC();

    if (v8)
    {

      if (!v5)
      {
LABEL_5:
        if (v10)
        {
LABEL_6:

          v12 = sub_1000EF9CC();
          sub_1000EF440(v12, v13);

LABEL_10:
          type metadata accessor for OctaneConfiguration();
          swift_deallocPartialClassInstance();
          goto LABEL_11;
        }

LABEL_9:
        v14 = sub_1000EF9CC();
        sub_1000EF440(v14, v15);
        goto LABEL_10;
      }
    }

    else if (!v5)
    {
      goto LABEL_5;
    }

    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  LOBYTE(v43) = 0;
  sub_1000EF974();
  *(v3 + 16) = sub_1001F7C08();
  *(v3 + 24) = v11;

  sub_1000183C4(&qword_1002AC7F0, &qword_1001FE670);
  v54 = 1;
  sub_1000EF490(&qword_1002B3F40);
  sub_1000EF904();
  sub_1000EF974();
  sub_1001F7C48();
  sub_1000EF99C();
  if (v19)
  {
    v17 = v18;
  }

  *(v3 + 32) = v17;
  v54 = 2;
  sub_1000EF904();
  sub_1000EF974();
  sub_1001F7C48();
  sub_1000EF99C();
  if (v19)
  {
    v20 = _swiftEmptyArrayStorage;
  }

  *(v3 + 40) = v20;
  type metadata accessor for OctaneConfigurationSettings();
  v54 = 3;
  sub_1000EF92C();
  sub_1000EF638(v21, 255, v22, &unk_1002071E4);
  sub_1000EF904();
  sub_1000EF974();
  sub_1001F7C48();
  v23 = v43;
  if (!v43)
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    swift_allocObject();
    v24 = sub_1000EF980();
    v23 = sub_1000815A0(v24, v25, v26, v27, v28, v29, v30, v31, 1, _swiftEmptyArrayStorage);
  }

  *(v3 + 48) = v23;
  v54 = 4;
  sub_1000EF510();
  sub_1000EF974();
  sub_1001F7C48();
  v32 = sub_1000EF9CC();
  v33 = v44;
  *(v3 + 72) = v43;
  *(v3 + 88) = v33;
  *(v3 + 104) = v45;
  sub_1000EF440(v32, v34);
  sub_1000183C4(&qword_1002B3F10, &qword_10020CB28);
  v54 = 5;
  sub_1000EF564(&qword_1002B3F60);
  sub_1000EF974();
  sub_1001F7C48();
  sub_1000EF99C();
  if (v19)
  {
    v35 = _swiftEmptyArrayStorage;
  }

  *(v3 + 56) = v35;
  type metadata accessor for OctaneAppPolicies();
  v54 = 6;
  sub_1000EF95C();
  sub_1000EF638(v36, 255, v37, &unk_1002099C0);
  sub_1000EF904();
  sub_1000EF974();
  sub_1001F7C48();
  v38 = v43;
  if (!v43)
  {
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0xE000000000000000;
    v38[4] = _swiftEmptyArrayStorage;
  }

  *(v3 + 120) = v38;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  v54 = 7;
  sub_1000EF5E4();
  sub_1000EF974();
  sub_1001F7C48();
  if (v44)
  {
    v39 = 4;
  }

  else
  {
    v39 = v43;
  }

  if (v44)
  {
    v40 = 0;
  }

  else
  {
    v40 = *(&v43 + 1);
  }

  v41 = sub_1000263B8();
  v42(v41);
  *(v3 + 128) = v39;
  *(v3 + 136) = v40;
LABEL_11:
  sub_100019CCC(a1);
  return v3;
}

char *sub_1000ED418(NSObject *a1)
{
  v2 = sub_1001F61C8();
  sub_10001A278();
  v102 = v3;
  __chkstk_darwin(v4);
  sub_100023510();
  v101 = (v6 - v5);
  v7 = sub_1001F6288();
  sub_10001A278();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v91 - v14;
  __chkstk_darwin(v16);
  v103 = v91 - v17;
  __chkstk_darwin(v18);
  v20 = v91 - v19;
  __chkstk_darwin(v21);
  v23 = v91 - v22;
  v24 = sub_1000EDDB0();
  if (v24 == 2)
  {
    type metadata accessor for OctaneError(0);
    sub_1000EF944();
    sub_1000EF638(v25, 255, v26, &unk_10020793C);
    swift_allocError();
    (*(v9 + 16))(v27, a1, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    LODWORD(v99) = v24;
    v98 = v2;
    v92 = v12;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v28 = sub_1001F6688();
    v29 = sub_100019C94(v28, qword_1002E6180);
    v30 = *(v9 + 16);
    v100 = a1;
    v96 = v30;
    v97 = v9 + 16;
    v30(v23, a1, v7);
    v91[1] = v29;
    v31 = sub_1001F6668();
    v32 = sub_1001F7288();
    v33 = os_log_type_enabled(v31, v32);
    v94 = v15;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v95 = v7;
      v35 = v34;
      v36 = swift_slowAlloc();
      v93 = v20;
      v91[0] = v36;
      v104 = v36;
      *v35 = 136315395;
      v37 = v99;
      if (v99)
      {
        v38 = 0x656C646E7562;
      }

      else
      {
        v38 = 1701603686;
      }

      if (v99)
      {
        v39 = 0xE600000000000000;
      }

      else
      {
        v39 = 0xE400000000000000;
      }

      v40 = sub_1000E4544(v38, v39, &v104);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2081;
      v41 = sub_1001F6248(0);
      v43 = v42;
      v44 = *(v9 + 8);
      v44(v23, v95);
      v45 = sub_1000E4544(v41, v43, &v104);

      *(v35 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v31, v32, "Reading StoreKit configuration %s at %{private}s", v35, 0x16u);
      v46 = v91[0];
      swift_arrayDestroy();
      v47 = v93;
      sub_10003A72C(v46);
      v48 = v35;
      v7 = v95;
      sub_10003A72C(v48);

      v49 = v44;
    }

    else
    {
      v47 = v20;

      v49 = *(v9 + 8);
      v49(v23, v7);
      v37 = v99;
    }

    v23 = v103;
    if (v37)
    {
      v104 = 0xD000000000000016;
      v105 = 0x8000000100225B30;
      v50 = v102;
      v51 = v9;
      v52 = v101;
      v53 = v98;
      (*(v102 + 13))(v101, enum case for URL.DirectoryHint.inferFromPath(_:), v98);
      sub_10001C790();
      sub_1001F6278();
      v54 = v52;
      v9 = v51;
      (*(v50 + 1))(v54, v53);
    }

    else
    {
      v96(v103, v100, v7);
    }

    v55 = v47;
    (*(v9 + 32))(v47, v23, v7);
    v56 = sub_1001F6248(0);
    v58 = v57;
    v59 = objc_allocWithZone(NSData);
    v60 = v106;
    v61 = sub_1000EF218(v56, v58, 0);
    if (v60)
    {
      v62 = sub_1000EF9BC();
      (v49)(v62);
    }

    else
    {
      v63 = v61;
      v64 = sub_1001F63C8();
      v66 = v65;

      sub_1001F5E88();
      swift_allocObject();
      sub_1001F5E78();
      type metadata accessor for OctaneConfiguration();
      sub_1000EF638(&qword_1002B3F80, v67, type metadata accessor for OctaneConfiguration, &unk_10020CAEC);
      sub_1001F5E68();
      v106 = v64;

      v23 = v104;
      if (v99)
      {

        v68 = v100;
      }

      else
      {
        v69 = sub_1001F7EA8();

        v68 = v100;
        if ((v69 & 1) == 0)
        {
          v89 = sub_1000EF9BC();
          (v49)(v89);
          sub_10003A380(v106, v66);
          return v23;
        }
      }

      v99 = v9;
      v103 = v66;
      v104 = 0x737465737341;
      v105 = 0xE600000000000000;
      v71 = v101;
      v70 = v102;
      (*(v102 + 13))(v101, enum case for URL.DirectoryHint.isDirectory(_:), v98);
      sub_10001C790();
      v72 = v94;
      sub_1001F6278();
      (*(v70 + 1))(v71, v98);
      v73 = sub_100072764(v72);
      v102 = v49;
      v93 = v55;
      *(v23 + 8) = v73;

      v75 = v92;
      v96(v92, v68, v7);

      v76 = sub_1001F6668();
      v77 = sub_1001F7288();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = v7;
        v79 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v104 = v101;
        *v79 = 134218242;
        *(v79 + 4) = *(*(v23 + 8) + 16);

        *(v79 + 12) = 2080;
        v80 = sub_1001F6248(0);
        v100 = v76;
        v81 = v80;
        v83 = v82;
        v84 = v75;
        v85 = v102;
        v102(v84, v78);
        v86 = sub_1000E4544(v81, v83, &v104);

        *(v79 + 14) = v86;
        v87 = v100;
        _os_log_impl(&_mh_execute_header, v100, v77, "Found %ld asset(s)\nin the StoreKit configuration at %s", v79, 0x16u);
        v88 = v101;
        sub_100019CCC(v101);
        sub_10003A72C(v88);
        sub_10003A72C(v79);
        sub_10003A380(v106, v103);

        v85(v94, v78);
        v85(v93, v78);
      }

      else
      {
        sub_10003A380(v106, v103);

        v90 = v102;
        v102(v75, v7);
        v90(v94, v7);
        v90(v93, v7);
      }
    }
  }

  return v23;
}

uint64_t sub_1000EDDB0()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_10001A2D8();

  if (v1)
  {
    return (v1 >> 8) & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000EDE14(uint64_t a1, uint64_t a2)
{
  result = sub_1000EDF4C(a1, a2);
  if (!result)
  {
    result = sub_1000EDE80(a1, a2);
    if (!result)
    {

      return sub_1000EE5B8(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1000EDE80(uint64_t a1, uint64_t a2)
{
  sub_10013B560();
  result = sub_1000263DC();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if (v2)
    {
      result = sub_1000EFA40();
      v4 = result;
    }

    else
    {
      if (i >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      result = sub_100026418();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = *(v4 + 80);
    v11 = *(v4 + 88);
    v12 = v10 == a1 && v11 == a2;
    if (v12 || (sub_1000263FC(v10, v11) & 1) != 0)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000EDF4C(uint64_t a1, uint64_t a2)
{
  sub_10013B560();
  result = sub_1000263DC();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if (v2)
    {
      result = sub_1000EFA40();
      v4 = result;
    }

    else
    {
      if (i >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      result = sub_100026418();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = *(v4 + 80);
    v11 = *(v4 + 88);
    v12 = v10 == a1 && v11 == a2;
    if (v12 || (sub_1000263FC(v10, v11) & 1) != 0)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000EE018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {

    v7 = sub_1001B8580(v5, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    v9 = sub_1000EF438;
  }

  else
  {
    v9 = static System.hasAsyncAwaitSupport.getter;
    v8 = 0;
    v7 = 0;
  }

  if (a2)
  {

    v12 = sub_1001B8580(v10, v11);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = v13;
    v15 = sub_1000EF430;
  }

  else
  {
    v15 = static System.hasAsyncAwaitSupport.getter;
    v14 = 0;
  }

  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v8;
  v39 = v15;
  v16[4] = v15;
  v16[5] = v14;
  v34 = v16;
  if (v7)
  {
    v17 = *(v7 + 16);

    sub_100073F34(v17, 0);
  }

  else
  {
  }

  v18 = *(v3 + 40);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1000EF334;
  *(v19 + 24) = v34;

  sub_1001BA3D0(v18, sub_1000EF3C8, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1000EF334;
  *(v20 + 24) = v34;

  sub_1001BA3D0(v21, sub_1000EF900, v20);
  v22 = *(v3 + 56);
  v38 = v22 & 0xFFFFFFFFFFFFFF8;
  v35 = v22 + 32;
  v36 = v22 & 0xC000000000000001;

  v23 = 0;
  v24 = 0;
  v37 = v22 >> 62;
  while (1)
  {
    if (v23)
    {
      for (i = 0; ; ++i)
      {
        v26 = v23 >> 62 ? sub_1001F7B48() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (i == v26)
        {
          break;
        }

        if ((v23 & 0xC000000000000001) != 0)
        {
          v27 = sub_1001F7808();
        }

        else
        {
          if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v27 = *(v23 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (v9(v27) & 1) != 0 && (v39(v27))
        {
          sub_1001F7878();
          sub_1001F7908();
          sub_1001F7918();
          sub_1001F7898();
        }

        else
        {
        }
      }
    }

    v28 = v37 ? sub_1001F7B48() : *(v38 + 16);
    if (v24 == v28)
    {
      break;
    }

    if (v36)
    {
      v29 = sub_1001F7808();
    }

    else
    {
      if (v24 >= *(v38 + 16))
      {
        goto LABEL_44;
      }

      v29 = *(v35 + 8 * v24);
    }

    if (__OFADD__(v24++, 1))
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v31 = *(v29 + 56);

    v23 = v31;
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {

    sub_1001F7F28();
    type metadata accessor for OctaneIAP();
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

LABEL_45:
  type metadata accessor for OctaneIAP();

  v32 = sub_1001F7AD8();

LABEL_40:

  sub_1001BA528(v32);

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000EE4E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);

  LOBYTE(a2) = sub_1000BFAC4(v3, v4, a2);

  return a2 & 1;
}

uint64_t sub_1000EE538(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OctaneSubscription();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = *(result + 192);
    v5 = *(result + 200);

    v6 = sub_1000BFAC4(v4, v5, a2);

    return v6;
  }

  return result;
}

uint64_t sub_1000EE5B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5 >> 62)
  {
LABEL_28:
    v6 = sub_1001F7B48();
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return 0;
    }
  }

  v7 = v5 & 0xC000000000000001;

  v8 = 0;
  while (2)
  {
    sub_1001C19A8();
    if (v7)
    {
      result = sub_1000EFA40();
    }

    else
    {
    }

    if (__OFADD__(v8++, 1))
    {
      __break(1u);
      return result;
    }

    v11 = *(result + 56);
    v12 = sub_10013B560();

    for (i = 0; v12 != i; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_1001F7808();
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v14 = *(v11 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v15 = *(v14 + 80) == a1 && *(v14 + 88) == a2;
      if (v15 || (sub_1001F7EA8() & 1) != 0)
      {

        return v14;
      }
    }

    v7 = v5 & 0xC000000000000001;
    if (v8 != v6)
    {
      continue;
    }

    break;
  }

  return 0;
}

uint64_t sub_1000EE77C(uint64_t a1, uint64_t a2)
{
  sub_10013B560();
  result = sub_1000263DC();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if (v2)
    {
      result = sub_1000EFA40();
      v4 = result;
    }

    else
    {
      if (i >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      result = sub_100026418();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = *(v4 + 16);
    v11 = *(v4 + 24);
    v12 = v10 == a1 && v11 == a2;
    if (v12 || (sub_1000263FC(v10, v11) & 1) != 0)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000EE848(void *a1)
{
  v3 = *(*(v1 + 120) + 32);
  v20 = v3 & 0xC000000000000001;
  v21 = sub_10013B560();

  for (i = 0; ; i = v22 + 1)
  {
    if (v21 == i)
    {

      return 0;
    }

    v5 = v20;
    sub_1001C19A8();
    if (v5)
    {
      result = sub_1001F7808();
      v6 = result;
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = v6[2];
    v9 = v6[3];
    v11 = *a1;
    v10 = a1[1];
    v12 = v8 == *a1 && v9 == v10;
    if (v12 || (v22 = i, v13 = a1, v14 = v6[6], v15 = sub_1001F7EA8(), (v15 & 1) != 0) || (v23 = v11, v24 = v10, __chkstk_darwin(v15), v19 = &v23, v16 = sub_1000E0B14(sub_100048E80, v18, v14)) || (a1 = v13, v23 = v8, v24 = v9, __chkstk_darwin(v16), v19 = &v23, sub_1000E0B14(sub_100072CF0, v18, v17)))
    {

      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1000EEA24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for OctaneAsset(0);
  sub_10001A278();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100023510();
  v13 = (v12 - v11);
  v14 = *(v3 + 64);
  v15 = *(v14 + 16);

  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {

      v18 = 1;
      goto LABEL_12;
    }

    if (i >= *(v14 + 16))
    {
      break;
    }

    sub_1000EF15C(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * i, v13);
    v17 = *v13 == a1 && v13[1] == a2;
    if (v17 || (sub_1001F7EA8() & 1) != 0)
    {

      sub_100059450(v13, a3);
      v18 = 0;
LABEL_12:
      sub_100018460(a3, v18, 1, v7);
      return;
    }

    sub_1000594B4(v13);
  }

  __break(1u);
}

uint64_t sub_1000EEB8C()
{

  sub_1000EF440(*(v0 + 72), *(v0 + 80));

  return v0;
}

uint64_t sub_1000EEBEC()
{
  sub_1000EEB8C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000EEC44(void *a1)
{
  v2 = v1;
  v4 = sub_1000183C4(&qword_1002B3EE0, &unk_10020CB18);
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v17 - v8;
  sub_10001AE68(a1, a1[3]);
  sub_1000EF060();
  sub_1001F8198();
  v10 = *(v2 + 16);
  LOBYTE(v17[0]) = 0;

  sub_100024A88();
  sub_1001F7D18();
  if (v10)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {

    *&v17[0] = *(v2 + 32);
    v18 = 1;
    sub_1000183C4(&qword_1002AC7F0, &qword_1001FE670);
    sub_1000EF490(&qword_1002B3EF0);
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7DC8();
    *&v17[0] = *(v2 + 40);
    v18 = 2;
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7DC8();
    *&v17[0] = *(v2 + 48);
    v18 = 3;
    type metadata accessor for OctaneConfigurationSettings();
    sub_1000EF92C();
    sub_1000EF638(v12, 255, v13, &unk_1002071BC);
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7DC8();
    v14 = *(v2 + 88);
    v17[0] = *(v2 + 72);
    v17[1] = v14;
    v17[2] = *(v2 + 104);
    v18 = 4;
    sub_1000EF0B4();
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7D58();
    *&v17[0] = *(v2 + 56);
    v18 = 5;
    sub_1000183C4(&qword_1002B3F10, &qword_10020CB28);
    sub_1000EF564(&qword_1002B3F18);
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7DC8();
    *&v17[0] = *(v2 + 120);
    v18 = 6;
    type metadata accessor for OctaneAppPolicies();
    sub_1000EF95C();
    sub_1000EF638(v15, 255, v16, &unk_100209998);
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7DC8();
    v17[0] = *(v2 + 128);
    v18 = 7;
    sub_1000EF108();
    sub_1000EF91C();
    sub_100024A88();
    sub_1001F7DC8();
    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_1000EF010@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000ECDDC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000EF060()
{
  result = qword_1002B3EE8;
  if (!qword_1002B3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3EE8);
  }

  return result;
}

unint64_t sub_1000EF0B4()
{
  result = qword_1002B3F08;
  if (!qword_1002B3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3F08);
  }

  return result;
}

unint64_t sub_1000EF108()
{
  result = qword_1002B3F30;
  if (!qword_1002B3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3F30);
  }

  return result;
}

uint64_t sub_1000EF15C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OctaneAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EF1C0(char a1)
{
  if (a1)
  {
    return 0x656C646E7562;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t sub_1000EF1EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EF1C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1000EF218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001F6B48();

  v10 = 0;
  v6 = [v3 initWithContentsOfFile:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1001F61B8();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1000EF2F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000EF334(uint64_t a1)
{
  v3 = *(v1 + 32);
  if ((*(v1 + 16))())
  {
    return v3(a1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EF390()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000EF3F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EF440(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000EF490(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002AC7F0, &qword_1001FE670);
    sub_1000EFA00();
    result = sub_1000EFA20();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000EF510()
{
  result = qword_1002B3F58;
  if (!qword_1002B3F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3F58);
  }

  return result;
}

uint64_t sub_1000EF564(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B3F10, &qword_10020CB28);
    sub_1000EFA00();
    result = sub_1000EFA20();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000EF5E4()
{
  result = qword_1002B3F78;
  if (!qword_1002B3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3F78);
  }

  return result;
}

uint64_t sub_1000EF638(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_BYTE *storeEnumTagSinglePayload for OctaneConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x1000EF74CLL);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000EF788()
{
  result = qword_1002B3F88;
  if (!qword_1002B3F88)
  {
    sub_100019BC4(&qword_1002B3F90, qword_10020CBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3F88);
  }

  return result;
}

unint64_t sub_1000EF7F0()
{
  result = qword_1002B3F98;
  if (!qword_1002B3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3F98);
  }

  return result;
}

unint64_t sub_1000EF848()
{
  result = qword_1002B3FA0;
  if (!qword_1002B3FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3FA0);
  }

  return result;
}

unint64_t sub_1000EF8A0()
{
  result = qword_1002B3FA8;
  if (!qword_1002B3FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B3FA8);
  }

  return result;
}

double sub_1000EF9EC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = 0.0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  return result;
}

uint64_t sub_1000EFA00()
{

  return sub_1000EF638(v2, 255, v0, v1);
}

uint64_t sub_1000EFA20()
{

  return swift_getWitnessTable();
}

uint64_t sub_1000EFA40()
{

  return sub_1001F7808();
}

uint64_t sub_1000EFA58()
{
  sub_100037B94();
  v6._countAndFlagsBits = 47;
  v6._object = 0xE100000000000000;
  if (sub_1001F6D58(v6))
  {
    v0 = sub_10007B9BC();
    v5 = sub_1000F5CC4(v0, v1);
  }

  else
  {
    v2 = sub_10007B9BC();
    v5 = sub_1000F5CC4(v2, v3);
    v7._countAndFlagsBits = 47;
    v7._object = 0xE100000000000000;
    sub_1001F6CA8(v7);
  }

  v8._countAndFlagsBits = sub_100037B7C();
  sub_1001F6CA8(v8);
  return v5;
}

void *sub_1000EFAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_100056A98(0, __src);
  v22 = v19;
  v21 = v18;
  v12 = v20;
  sub_1000374B8(&v21, &qword_1002AEBE0, &qword_100203700);
  type metadata accessor for PurchaseEngagementDialog();
  swift_allocObject();
  v13 = sub_1000FDB8C(a1, a2, a3, a4, a5);
  sub_1000374B8(&v22, &qword_1002AF480, &unk_1002087C0);
  memcpy(__dst, __src, 0xB0uLL);
  LOBYTE(__dst[22]) = 19;
  *(&__dst[22] + 1) = *v17;
  HIDWORD(__dst[22]) = *&v17[3];
  __dst[23] = 0xD000000000000022;
  __dst[24] = 0x8000000100225080;
  __dst[25] = v13;
  LOBYTE(__dst[26]) = v12;
  memcpy(v24, __src, 0xB0uLL);
  v24[176] = 19;
  *v25 = *v17;
  *&v25[3] = *&v17[3];
  v26 = 0xD000000000000022;
  v27 = 0x8000000100225080;
  v28 = v13;
  v29 = v12;
  sub_100057E10(__dst, &v15);
  sub_100057E48(v24);
  return memcpy(a6, __dst, 0xD1uLL);
}

void *sub_1000EFC84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v79 = a2;
  v5 = sub_1000183C4(&qword_1002B4148, &unk_10020CE30);
  __chkstk_darwin(v5);
  v82 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = (&v74 - v8);
  v85 = type metadata accessor for PurchaseConfiguration(0);
  __chkstk_darwin(v85);
  v81 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v80 = (&v74 - v11);
  __chkstk_darwin(v12);
  v14 = (&v74 - v13);
  __chkstk_darwin(v15);
  v17 = (&v74 - v16);
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v21 = sub_1001F6688();
  sub_100019C94(v21, qword_1002E6180);
  sub_100103950();
  sub_100103950();
  v22 = sub_1001F6668();
  v23 = sub_1001F72B8();
  v24 = os_log_type_enabled(v22, v23);
  v83 = v5;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v77 = v14;
    v26 = v25;
    v76 = swift_slowAlloc();
    v86[0] = v76;
    *v26 = 136315394;
    v75 = v22;
    LODWORD(v74) = v23;
    v28 = *(v20 + 2);
    v27 = *(v20 + 3);

    sub_1001039A8(v20, type metadata accessor for PurchaseConfiguration);
    v29 = v28;
    v3 = v2;
    v30 = sub_1000E4544(v29, v27, v86);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = *v17;
    v32 = v17[1];

    sub_1001039A8(v17, type metadata accessor for PurchaseConfiguration);
    v33 = sub_1000E4544(v31, v32, v86);

    *(v26 + 14) = v33;
    v34 = v75;
    _os_log_impl(&_mh_execute_header, v75, v74, "Will run simulated off device purchase of %s for %s", v26, 0x16u);
    swift_arrayDestroy();

    v14 = v77;
  }

  else
  {

    sub_1001039A8(v17, type metadata accessor for PurchaseConfiguration);
    sub_1001039A8(v20, type metadata accessor for PurchaseConfiguration);
  }

  sub_10001AE68((v88 + 48), *(v88 + 72));
  v35 = a1[2];
  v36 = a1[3];
  sub_1000795A8(*a1, a1[1]);
  v37 = sub_1000EDE14(v35, v36);

  if (!v37)
  {
    sub_1000AC650();
    swift_allocError();
    *v54 = 1;
    return swift_willThrow();
  }

  sub_100103950();
  v38 = v85;
  v39 = *(v85 + 44);
  v40 = *(&v39->isa + v14);
  v78 = v3;
  if (v40 == 3 || (v41 = (v14 + *(v85 + 40)), (v42 = v41[1]) == 0) || v40 != 1 || (v43 = *v41, v44 = *(v88 + 72), v74 = (v14 + *(v85 + 40)), v75 = v39, sub_10001AE68((v88 + 48), v44), v45 = v14[2], v46 = v14[3], sub_1000795A8(*v14, v14[1]), v47 = sub_1000EE5B8(v45, v46), , v38 = v85, !v47))
  {
LABEL_28:
    v59 = v38;
    v60 = v80;
    sub_100103950();

    sub_10019724C(v60, v37, v87);
    v61 = v81;
    sub_100103950();
    v62 = v83;
    v63 = *(v83 + 44);
    v64 = sub_1001F6508();
    v65 = v82;
    sub_100018460(&v82[v63], 1, 1, v64);
    v66 = v61[1];
    *v65 = *v61;
    *(v65 + 1) = v66;
    v65[16] = 1;
    *(v65 + 3) = v37;
    v67 = *(v59 + 32);

    sub_1001033F4(v61 + v67, &v65[v63]);
    v68 = *(v61 + *(v59 + 48));
    sub_1001039A8(v61, type metadata accessor for PurchaseConfiguration);
    if (v68 == 2)
    {
      type metadata accessor for OctaneSubscription();
      LOBYTE(v68) = swift_dynamicCastClass() != 0;
    }

    v65[*(v62 + 48)] = v68 & 1;
    v65[*(v62 + 52)] = 1;
    v69 = v84;
    sub_1000ACDAC();
    v70 = sub_1000F057C(v86, v87, v69, 0);
    sub_1000ACE5C(v87);
    sub_1000374B8(v69, &qword_1002B4148, &unk_10020CE30);
    if (v70)
    {

      v71 = v79;
      sub_100026064(v86, v79);
      *(v71 + 40) = v70;
    }

    else
    {
      v72 = *(sub_10001AE68(v86, v86[3]) + 176);
      if (v72 == 22)
      {
        type metadata accessor for OctaneError(0);
        sub_1001038BC(&qword_1002B09C8, type metadata accessor for OctaneError, &unk_10020793C);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_1001032F0();
        swift_allocError();
        *v73 = v72;
      }

      swift_willThrow();
    }

    sub_1001039A8(v14, type metadata accessor for PurchaseConfiguration);
    return sub_100019CCC(v86);
  }

  v48 = *(v47 + 152);

  result = sub_10013B560();
  v50 = 0;
  v76 = v48 & 0xC000000000000001;
  v77 = result;
  while (1)
  {
    if (v77 == v50)
    {

      goto LABEL_27;
    }

    if (v76)
    {
      v51 = v14;
      result = sub_1001F7808();
      v52 = result;
    }

    else
    {
      if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v51 = v14;
      v52 = *(v48 + 8 * v50 + 32);
    }

    if (__OFADD__(v50, 1))
    {
      break;
    }

    v53 = v52[10] == v43 && v42 == v52[11];
    if (v53 || (sub_1001F7EA8() & 1) != 0)
    {

      v56 = v52[2];
      v55 = v52[3];

      v57 = v74;
      v58 = v75;
      *v74 = v56;
      v57[1] = v55;
      v14 = v51;
      *(&v58->isa + v51) = 1;
LABEL_27:
      v38 = v85;
      goto LABEL_28;
    }

    ++v50;
    v14 = v51;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000F04DC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a1[24];
  if ((a4 & 1) == 0)
  {
  }

  v5 = sub_10008B260(v4);

  return v5;
}

char *sub_1000F057C(uint64_t *a1, uint64_t *a2, char **a3, uint64_t a4)
{
  v320 = a4;
  v352 = a2;
  v343 = a1;
  v6 = type metadata accessor for IAPTransaction(0);
  v324 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v294 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F6578();
  v319 = *(v9 - 8);
  __chkstk_darwin(v9);
  v318 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = sub_1000183C4(&qword_1002B2000, &unk_1002087D0);
  __chkstk_darwin(v312);
  v311 = &v294 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v310 = &v294 - v13;
  v309 = sub_1000183C4(&qword_1002B2008, &unk_1002081F0);
  __chkstk_darwin(v309);
  v314 = &v294 - v14;
  v15 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  __chkstk_darwin(v15 - 8);
  v313 = (&v294 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v330 = &v294 - v18;
  __chkstk_darwin(v19);
  v323 = &v294 - v20;
  __chkstk_darwin(v21);
  v321 = &v294 - v22;
  v329 = type metadata accessor for PromotionalOfferData(0);
  __chkstk_darwin(v329);
  v24 = (&v294 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1000183C4(&qword_1002B23D8, &unk_10020CE40);
  __chkstk_darwin(v25 - 8);
  v328 = &v294 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v333 = &v294 - v28;
  v29 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  __chkstk_darwin(v29 - 8);
  v317 = &v294 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v327 = &v294 - v32;
  __chkstk_darwin(v33);
  v35 = &v294 - v34;
  v341 = sub_1001F6508();
  v338 = *(v341 - 8);
  __chkstk_darwin(v341);
  v315 = &v294 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v316 = &v294 - v38;
  __chkstk_darwin(v39);
  v322 = &v294 - v40;
  __chkstk_darwin(v41);
  v337 = &v294 - v42;
  v43 = sub_1000183C4(&qword_1002B4148, &unk_10020CE30);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v340 = &v294 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v351 = *(a3 + *(v47 + 52));
  v335 = v47;
  v336 = v9;
  v344 = v4;
  v325 = v8;
  v326 = v24;
  v334 = v35;
  if (v351)
  {
    v48 = 0;
    v49 = 0;
  }

  else
  {
    sub_10001AE68(v4 + 6, v4[9]);
    v49 = sub_100079484();
    sub_10001AE68(v4 + 6, v4[9]);
    v48 = sub_1000799F4();
  }

  v346 = a3;
  sub_1000ACFAC();
  v50 = ((*(v44 + 80) + 16) & ~*(v44 + 80)) + v45;
  v51 = (v50 + 9) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  sub_1000ACDAC();
  v53 = (v52 + v50);
  v331 = v49;
  *v53 = v49;
  v332 = v48;
  v53[1] = v48;
  v54 = v352;
  memcpy((v52 + v51), v352, 0x379uLL);
  sub_1000AC5F4(v54, v385);
  v55 = sub_1001F6B48();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_100103728;
  *(v56 + 24) = v52;
  *&v385[2] = sub_1000ACC74;
  *(&v385[2] + 1) = v56;
  *&v385[0] = _NSConcreteStackBlock;
  *(&v385[0] + 1) = 1107296256;
  *&v385[1] = sub_100146934;
  *(&v385[1] + 1) = &unk_1002891C0;
  v57 = _Block_copy(v385);

  AnalyticsSendEventLazy();
  _Block_release(v57);

  sub_100056A98(1, &v367);
  v365 = v367;
  v366 = v368;
  v364 = v369;
  *v363 = *v370;
  *&v363[15] = *&v370[15];
  v362 = v372;
  v361[0] = *v373;
  *(v361 + 3) = *&v373[3];
  v347 = v374;
  v348 = v371;
  v58 = v375;
  v350 = v376;
  memcpy(v360, v377, sizeof(v360));
  v339 = v377[88];
  *v359 = *v378;
  v349 = v379;
  *&v359[15] = *&v378[15];
  v342 = v380;
  v59 = v344;
  v60 = v346;
  if (v351)
  {
    if (v346[3][112] == 1)
    {
      sub_10001AE68(v344 + 11, v344[14]);
      v61 = v337;
      sub_1001F64E8();
      v62 = sub_10008D53C();
      (*(v338 + 1))(v61, v341);
      if (v62)
      {
        v385[0] = v365;
        *&v385[1] = v366;
        BYTE8(v385[1]) = v364;
        *(&v385[1] + 9) = *v363;
        *(&v385[2] + 1) = *&v363[15];
        v63 = v347;
        *&v385[3] = v348;
        BYTE8(v385[3]) = v362;
        *(&v385[3] + 9) = v361[0];
        HIDWORD(v385[3]) = *(v361 + 3);
        *&v385[4] = v347;
        *(&v385[4] + 1) = v58;
        v64 = v350;
        *&v385[5] = v350;
        memcpy(&v385[5] + 8, v360, 0x58uLL);
        v65 = 4;
        LOBYTE(v385[11]) = 4;
        *(&v385[11] + 1) = *v359;
        *&v385[12] = *&v359[15];
        v66 = v349;
        *(&v385[12] + 1) = v349;
        v67 = v342;
        LOBYTE(v385[13]) = v342;
        v68 = v343;
        v343[3] = &type metadata for LegacyInAppBuyResponse;
        v68[4] = sub_1000AC7BC();
        v69 = v58;
        v70 = swift_allocObject();
        *v68 = v70;
        v71 = v67;
        v72 = v66;
        sub_100057E10(v385, v353);

        v73 = (v70 + 16);
        v74 = v69;
        memcpy(v73, v385, 0xD1uLL);
        v75 = v348;
LABEL_31:
        v90 = 0;
        goto LABEL_129;
      }
    }
  }

  v345 = v58;
  v76 = v352;
  v308 = *(v60 + 16);
  if ((v308 & 1) == 0)
  {
    v77 = v352[33];
    if (!v77 || (v78 = v352[32], , v386._countAndFlagsBits = v78, v386._object = v77, v79.value = sub_1001F6FF8(v386).value, v79.value == 2) || !v79.value)
    {
      v80 = v340;
      sub_1000ACFAC();
      v81 = v60[3];
      v82 = *(v81 + 112);
      if (v82 == 1)
      {
        v83 = sub_1000F34D0(v59);
        v71 = v342;
        if (v83)
        {
          sub_1000374B8(v80, &qword_1002B4148, &unk_10020CE30);
          memcpy(v356, v76, 0x100uLL);
          memcpy(v353, v76 + 34, 0x269uLL);
          sub_1000AC5F4(v76, v385);

          memcpy(v385, v356, 0x100uLL);
          v385[16] = xmmword_100208700;
          memcpy(&v385[17], v353, 0x269uLL);

          v84 = sub_100197CC4();
          v86 = v85;
          sub_1000ACE5C(v385);
          v87 = v86;
          v74 = v345;
          sub_100056F34(v81, v84, v87, v358);
          v88 = v343;
          v343[3] = &type metadata for LegacyInAppBuyResponse;
          v88[4] = sub_1000AC7BC();
          v89 = swift_allocObject();
          *v88 = v89;
          memcpy((v89 + 16), v358, 0xD1uLL);
          v90 = 0;
          v64 = v350;
          v63 = v347;
          v75 = v348;
LABEL_19:
          v72 = v349;
          v65 = v339;
          goto LABEL_129;
        }

        v82 = *(v81 + 112);
      }

      if (v82 == 2)
      {
        v91 = sub_1000F34D0(v59);
        sub_1000374B8(v80, &qword_1002B4148, &unk_10020CE30);
        if (v91)
        {
          memcpy(v356, v76, 0x100uLL);
          memcpy(v353, v76 + 34, 0x269uLL);
          sub_1000AC5F4(v76, v385);

          memcpy(v385, v356, 0x100uLL);
          v385[16] = xmmword_100208700;
          memcpy(&v385[17], v353, 0x269uLL);

          v92 = sub_100197CC4();
          v94 = v93;
          sub_1000ACE5C(v385);
          v95 = v94;
          v74 = v345;
          sub_100056F60(v81, v92, v95, v358);
          v96 = v343;
          v343[3] = &type metadata for LegacyInAppBuyResponse;
          v96[4] = sub_1000AC7BC();
          v97 = swift_allocObject();
          *v96 = v97;
          memcpy((v97 + 16), v358, 0xD1uLL);
          v90 = 0;
          v64 = v350;
          v63 = v347;
          v75 = v348;
          v71 = v342;
          goto LABEL_19;
        }
      }

      else
      {
        sub_1000374B8(v80, &qword_1002B4148, &unk_10020CE30);
      }
    }
  }

  v340 = v379;
  v98 = v60[3];
  v99 = *(v98 + 112);
  sub_10019814C();
  if (v99 == 3)
  {
    v101 = v350;
    v102 = v347;
    v74 = v345;
    if (v100 > 1)
    {
      type metadata accessor for MultipleQuantitiesNotAllowedDialog();
      swift_allocObject();
      v103 = sub_10013DADC();
LABEL_26:
      v104 = v103;

      v71 = 1;
      v364 = 1;
      v349 = v104;
      v385[0] = v365;
      *&v385[1] = v366;
      BYTE8(v385[1]) = 1;
      *(&v385[1] + 9) = *v363;
      *(&v385[2] + 1) = *&v363[15];
      if (v351)
      {
        v105 = v348;
        *&v385[3] = v348;
        BYTE8(v385[3]) = v362;
        *(&v385[3] + 9) = v361[0];
        HIDWORD(v385[3]) = *(v361 + 3);
        *&v385[4] = v102;
        *(&v385[4] + 1) = v74;
        *&v385[5] = v101;
        memcpy(&v385[5] + 8, v360, 0x58uLL);
        v65 = 3;
        LOBYTE(v385[11]) = 3;
        *(&v385[11] + 1) = *v359;
        *&v385[12] = *&v359[15];
        *(&v385[12] + 1) = v104;
        LOBYTE(v385[13]) = 1;
        v106 = v343;
        v343[3] = &type metadata for LegacyInAppBuyResponse;
        v106[4] = sub_1000AC7BC();
        v107 = swift_allocObject();
        *v106 = v107;
        memcpy((v107 + 16), v385, 0xD1uLL);
        sub_100057E10(v385, v353);
        v75 = v105;
      }

      else
      {
        v115 = v348;
        *&v385[3] = v348;
        BYTE8(v385[3]) = v362;
        *(&v385[3] + 9) = v361[0];
        HIDWORD(v385[3]) = *(v361 + 3);
        *&v385[4] = v102;
        *(&v385[4] + 1) = v74;
        *&v385[5] = v101;
        memcpy(&v385[5] + 8, v360, 0x58uLL);
        LOBYTE(v385[11]) = 0;
        *(&v385[11] + 1) = *v359;
        *&v385[12] = *&v359[15];
        *(&v385[12] + 1) = v104;
        LOBYTE(v385[13]) = 1;
        v116 = v343;
        v343[3] = &type metadata for LegacyInAppBuyResponse;
        v116[4] = sub_1000AC7BC();
        v117 = swift_allocObject();
        *v116 = v117;
        memcpy((v117 + 16), v385, 0xD1uLL);
        sub_100057E10(v385, v353);
        v75 = v115;
        v65 = 0;
      }

      v63 = v102;
      v90 = 0;
      v64 = v101;
      v72 = v349;
      goto LABEL_129;
    }
  }

  else
  {
    v101 = v350;
    v102 = v347;
    v74 = v345;
    if (v100 > 10)
    {
      type metadata accessor for InvalidQuantityDialog();
      swift_allocObject();
      v103 = sub_10013D980(10);
      goto LABEL_26;
    }
  }

  v108 = v101;
  v109 = v76[64];
  v110 = v76[65];
  v337 = v98;
  if (v110)
  {
    v111 = v334;
    sub_1001F6518();
    if (sub_10001C990(v111, 1, v336) == 1)
    {
      sub_1000374B8(v111, &qword_1002AFA30, &unk_10020FA10);
      type metadata accessor for InvalidAppAccountTokenDialog();
      swift_allocObject();
      v72 = sub_10013DB94();

      v364 = 1;
      v385[0] = v365;
      *&v385[1] = v366;
      BYTE8(v385[1]) = 1;
      *(&v385[1] + 9) = *v363;
      *(&v385[2] + 1) = *&v363[15];
      v112 = v348;
      *&v385[3] = v348;
      BYTE8(v385[3]) = v362;
      *(&v385[3] + 9) = v361[0];
      HIDWORD(v385[3]) = *(v361 + 3);
      *&v385[4] = v102;
      *(&v385[4] + 1) = v345;
      v64 = v108;
      v74 = v345;
      *&v385[5] = v64;
      memcpy(&v385[5] + 8, v360, 0x58uLL);
      LOBYTE(v385[11]) = 0;
      *(&v385[11] + 1) = *v359;
      *&v385[12] = *&v359[15];
      *(&v385[12] + 1) = v72;
      v71 = v342;
      LOBYTE(v385[13]) = v342;
      v113 = v343;
      v343[3] = &type metadata for LegacyInAppBuyResponse;
      v113[4] = sub_1000AC7BC();
      v114 = swift_allocObject();
      *v113 = v114;
      memcpy((v114 + 16), v385, 0xD1uLL);
      sub_100057E10(v385, v353);
      v75 = v112;
      v65 = 0;
      v63 = v102;
      goto LABEL_31;
    }

    sub_1000374B8(v111, &qword_1002AFA30, &unk_10020FA10);
    v98 = v337;
  }

  v303 = v110;
  v299 = v109;
  v118 = v59;
  sub_10001AE68((v59 + 48), *(v59 + 72));
  v119 = v60[1];
  v334 = *v60;
  v307 = sub_1000795A8(v334, v119);
  memcpy(v358, v76 + 72, sizeof(v358));
  v120 = *(v76 + 888);
  memcpy(v385, v76 + 72, 0x138uLL);
  v304 = v120;
  BYTE8(v385[19]) = v120;
  if (sub_1000AC6F8(v385) == 1)
  {
    v305 = 0;
    v306 = 0;
    v121 = v118;
    goto LABEL_43;
  }

  if (BYTE8(v385[19]) == 1)
  {

    v121 = v118;
  }

  else
  {
    v122 = sub_1001F7EA8();

    v121 = v118;
    if ((v122 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  v384 = *(v76 + 31);
  v123 = *(&v384 + 1);
  if (*(&v384 + 1))
  {
    v124 = v384;
    v125 = swift_allocObject();
    v125[2] = v121;
    v125[3] = v124;
    v306 = v125;
    v125[4] = v123;

    sub_1000ACFAC();
    v305 = sub_100103944;
    goto LABEL_43;
  }

LABEL_42:
  v305 = 0;
  v306 = 0;
LABEL_43:
  type metadata accessor for OctaneSubscription();
  v126 = swift_dynamicCastClass();
  if (!v126)
  {
    sub_10001AE68(v121 + 11, v121[14]);
    sub_10019814C();
    v132 = v60 + *(v335 + 44);
    v133 = v334;
    v298 = v119;
    sub_10008B744(v98, v334, v119, v134, v132, 0);
    v136 = v135;
    v301 = 0;
    v328 = 0;
    v333 = 0;
    goto LABEL_47;
  }

  v127 = v126;
  v128 = sub_100197678();
  v302 = v127;
  if (v129)
  {
    v130 = v128;
    v131 = v129;

    v144 = sub_1000F4B50(v130, v131, v127);
    v145 = v119;
  }

  else
  {
    v145 = v119;

    v144 = 0;
  }

  v146 = v333;
  v147 = v351 ^ 1;
  sub_1001976E0(v351 ^ 1, v333);
  v300 = v144;
  v301 = v147;
  v148 = v328;
  sub_1000ACFAC();
  if (sub_10001C990(v148, 1, v329) == 1)
  {
    sub_1000374B8(v146, &qword_1002B23D8, &unk_10020CE40);
    v149 = v76[67];
    v150 = v145;
    v151 = v346;
    if (!v149)
    {
      v301 = 0;
      v202 = v341;
      v121 = v344;
      v203 = v321;
LABEL_135:
      v298 = v150;
      v208 = 0;
      if (v300)
      {
        v210 = 0;
        v209 = 1;
        v207 = 0;
        goto LABEL_139;
      }

      v207 = 0;
      goto LABEL_138;
    }

    v329 = 0;
    v121 = v344;
  }

  else
  {
    v152 = v326;
    sub_100103A00();
    v153 = v344;
    v154 = sub_1000F4EF8(v152, v302, v76, v301);
    v298 = v145;
    v329 = v154;
    v121 = v153;
    sub_1001039A8(v152, type metadata accessor for PromotionalOfferData);
    sub_1000374B8(v333, &qword_1002B23D8, &unk_10020CE40);
    v149 = v76[67];
    if (!v149)
    {
      v209 = 0;
      v208 = v329;
      if (v329)
      {
        v207 = 0;
        v301 = 0;
        v210 = 0;
        v202 = v341;
        v203 = v321;
        v151 = v346;
        goto LABEL_139;
      }

      v301 = 0;
      v202 = v341;
      v203 = v321;
      v151 = v346;
      goto LABEL_134;
    }

    v151 = v346;
    v150 = v298;
  }

  v204 = v76[66];

  v205 = sub_1000F585C(v204, v149, v302);
  v206 = v150;
  v207 = v205;
  v298 = v206;

  v208 = v329;
  if (v329)
  {
    v209 = 0;
    v210 = 0;
    v202 = v341;
    v203 = v321;
    goto LABEL_139;
  }

  v202 = v341;
  v203 = v321;
  if (!v207)
  {
LABEL_134:
    v150 = v298;
    goto LABEL_135;
  }

  v210 = 0;
  v208 = 0;
  v209 = 1;
  if (*(v207 + 104) == 1 && !v300)
  {
LABEL_138:
    v210 = sub_1000F3D3C(v302, v76);
    v208 = 0;
    v209 = 1;
  }

LABEL_139:
  v297 = v209;
  v329 = v208;
  sub_100026064((v121 + 11), v353);
  sub_10001AE68(v353, *(&v353[1] + 1));
  v321 = *(v335 + 44);
  sub_1000ACFAC();
  if (sub_10001C990(v203, 1, v202) == 1)
  {
    v247 = v322;
    sub_1001F64E8();
    if (sub_10001C990(v203, 1, v202) != 1)
    {
      sub_1000374B8(v203, &unk_1002B3450, &qword_100202EE0);
    }
  }

  else
  {
    v247 = v322;
    (*(v338 + 4))(v322, v203, v202);
  }

  v248 = sub_1000F04DC(v302, v334, v298, 1);
  v295 = *(v338 + 1);
  v296 = v338 + 8;
  v295(v247, v202);
  v326 = v207;
  if (!v248)
  {
    sub_100019CCC(v353);
    goto LABEL_150;
  }

  sub_100019CCC(v353);
  v249 = sub_1000BFC14();
  v251 = sub_1000EE5B8(v249, v250);

  if (!v251)
  {

    v202 = v341;
LABEL_150:
    sub_10001AE68(v121 + 11, v121[14]);
    sub_10008C1B4(v302, v334, v298, v151 + v321, v301, v255, v256);
    v136 = v257;
    if (!v351)
    {
      v328 = 0;
      v253 = 0;
      v254 = 1;
      v260 = v349;
      goto LABEL_154;
    }

    v258 = v313;
    sub_1000ACFAC();
    v254 = 1;
    v259 = sub_10001C990(v258, 1, v202);
    sub_1000374B8(v258, &unk_1002B3450, &qword_100202EE0);
    if (v259 == 1)
    {
      v328 = 0;
      v253 = 0;
      v260 = v349;
LABEL_154:
      v133 = v334;
      goto LABEL_170;
    }

    sub_10001AE68(v121 + 11, v121[14]);

    v133 = v334;
    sub_100091DC8();
    v262 = v261;

    if (v262)
    {
      v263 = sub_1000C1A68();
      if (v263 == sub_1000C1A68())
      {

        v328 = 0;
        v253 = 0;
        v136 = v262;
LABEL_169:
        v260 = v349;
        goto LABEL_170;
      }
    }

    v328 = 0;
    v253 = 0;
    goto LABEL_169;
  }

  v252 = sub_1000258F4(v302);
  if (v252)
  {
    v133 = v334;
    if (v252 == 2)
    {
      sub_10001AE68(v121 + 11, v121[14]);
      v136 = sub_10008B654(v251, v302, v248, v151 + v321);

      v210 = 0;
      v328 = 0;
      v253 = 0;
      v254 = 1;
LABEL_166:
      v260 = v349;
      goto LABEL_170;
    }

LABEL_160:
    v264 = v302[10];
    v265 = v302[11];

    v136 = v248;

    sub_1000C1ACC(v264, v265);

    sub_1000C1B88(5u);
    sub_1000C20A4(0, 0);

    v266 = v297;
    if (v326)
    {
      v266 = 0;
    }

    if ((v266 & 1) == 0 || v300)
    {

      sub_1000C39F0(v267, 0, 0);
    }

    sub_10001AE68(v121 + 11, v121[14]);
    sub_10008EA08(v136, v301);

    v253 = v302[11];
    v328 = v302[10];

    v210 = 0;
    v254 = 0;
    goto LABEL_166;
  }

  v133 = v334;
  if (!v207)
  {
    goto LABEL_160;
  }

  v136 = v248;
  sub_1000C23D8(2u);

  type metadata accessor for CannotRedeemOfferCodeDialog();
  swift_allocObject();
  v260 = sub_10013D2EC();

  v210 = 0;
  v254 = 0;
  v328 = 0;
  v253 = 0;
  v342 = 1;
  v339 = 15;
  v340 = v260;
LABEL_170:
  v349 = v260;
  v322 = swift_allocObject();
  *(v322 + 16) = -8;
  if (v254)
  {
    if (v326)
    {

      sub_1000C39F0(v268, 1, 0);
    }

    if ((v297 & 1) == 0)
    {

      sub_1000C39F0(v269, 1, 0);
    }

    if (v300)
    {

      sub_1000C39F0(v270, 1, 0);
    }

    v271 = sub_1000AA124(v322, v121);
    sub_1000C3FF4(v307, v271);
    sub_10001AE68(v121 + 11, v121[14]);
    sub_10008EA08(v136, v301);
  }

  if ((v210 & 1) != 0 && v302[17])
  {
    v272 = v326 != 0;

    sub_1000C39F0(v273, 1, v272);
    v274 = sub_1000AA124(v322, v121);
    sub_1000C3FF4(v307, v274);
    sub_10001AE68(v121 + 11, v121[14]);
    sub_10008EA08(v136, v301);
  }

  v275 = v323;
  sub_1000ACFAC();
  v276 = sub_10001C990(v275, 1, v341);
  v76 = v352;
  v333 = v253;
  if (v276 == 1)
  {

    sub_1000374B8(v275, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000374B8(v275, &unk_1002B3450, &qword_100202EE0);
    sub_1000C5464(4);
    if ((v277 & 1) == 0)
    {
      sub_1000BFDA8();
      v278 = v316;
      sub_1001F6418();
      v279 = v315;
      sub_1001F6418();
      v313 = sub_10001AE68(v121 + 11, v121[14]);
      v280 = v302[25];
      v321 = v302[24];
      sub_1001038BC(&qword_1002AD110, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v323 = v280;

      v281 = v341;
      if ((sub_1001F6A98() & 1) == 0)
      {
        __break(1u);
        JUMPOUT(0x1000F34C0);
      }

      v282 = v338;
      v283 = *(v338 + 2);
      v284 = v310;
      v283(v310, v278, v281);
      v285 = v312;
      v283(&v284[*(v312 + 48)], v279, v281);
      v286 = v311;
      sub_1000ACFAC();
      v287 = *(v285 + 48);
      v338 = *(v282 + 4);
      (v338)(v314, v286, v281);
      v288 = &v286[v287];
      v289 = v295;
      v295(v288, v281);
      sub_1000ACDAC();
      v290 = *(v285 + 48);
      v291 = v314;
      (v338)(&v314[*(v309 + 36)], &v286[v290], v281);
      v289(v286, v281);
      sub_1000C1A68();
      LOBYTE(v286) = sub_100091A58(v321);

      sub_1000374B8(v291, &qword_1002B2008, &unk_1002081F0);
      v137 = v332;
      if (v286)
      {
        sub_10001AE68(v121 + 11, v121[14]);
        sub_10008CBB0(v136);

        v292 = v341;
        v289(v315, v341);
        v289(v316, v292);

        v339 = 21;
      }

      else
      {

        v293 = v341;
        v289(v315, v341);
        v289(v316, v293);
      }

      v76 = v352;
      v133 = v334;
      goto LABEL_48;
    }
  }

LABEL_47:
  v137 = v332;
LABEL_48:
  memcpy(v353, v358, 0x138uLL);
  BYTE8(v353[19]) = v304;
  v138 = sub_1000AC6F8(v353);
  v139 = v138 != 1;
  v140 = v331;
  if (v138 != 1)
  {
    sub_1000C398C(SBYTE8(v353[19]));
    if ((v304 & 1) == 0)
    {
      v141 = v76[43];
      v299 = v76[42];
      v303 = v141;
    }

    if (v303)
    {
      v142 = v327;
      sub_1001F6518();
      v143 = v336;
      if (sub_10001C990(v142, 1, v336) == 1)
      {
        sub_1000374B8(v142, &qword_1002AFA30, &unk_10020FA10);
      }

      else
      {
        v155 = v318;
        v156 = v319;
        (*(v319 + 32))(v318, v142, v143);
        v157 = v317;
        (*(v156 + 16))(v317, v155, v143);
        sub_100018460(v157, 0, 1, v143);
        sub_1000C4280();
        v158 = v155;
        v133 = v334;
        v137 = v332;
        (*(v156 + 8))(v158, v143);
        v140 = v331;
      }
    }
  }

  switch(sub_1000C257C())
  {
    case 1u:

      goto LABEL_63;
    default:
      v159 = sub_1001F7EA8();

      if ((v159 & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_63:
      v160 = v76[33];
      if (v160 && (v161 = v76[32], , v387._countAndFlagsBits = v161, v387._object = v160, v162.value = sub_1001F6FF8(v387).value, v162.value != 2))
      {
        if (v140 && !v162.value)
        {
          goto LABEL_66;
        }
      }

      else
      {
LABEL_65:
        if (v140)
        {
LABEL_66:
          v163 = v333 == 0;
          goto LABEL_70;
        }
      }

      v163 = 0;
LABEL_70:
      sub_10001AE68(v121 + 6, v121[9]);
      v164 = v352[8];
      v165 = v352[9];
      v171 = sub_100079640(32, v164, v165, v166, v167, v168, v169, v170);
      v338 = v136;
      if (v137)
      {
        v339 = 2;
        sub_1000C23D8(2u);
        v342 = 1;
        sub_1000C36CC(1);

        v172 = 0;
        v173 = 0;
LABEL_72:
        v139 = 1;
        v174 = v352;
LABEL_73:
        v175 = v335;
        goto LABEL_120;
      }

      if (!v163)
      {
        if (v171 == 1)
        {
          v176 = v308;
          if (v351)
          {
            goto LABEL_86;
          }

          if ((v308 & 1) == 0)
          {
            sub_1000C23D8(4u);
            v177 = sub_1000BFC14();
            v179 = v178;
            v180 = sub_100197CC4();
            v182 = v181;
            v183 = v320;

            v184 = v179;
            v136 = v338;
            sub_1000EFAEC(v177, v184, v180, v182, v183, v356);
            *v355 = v365;
            *&v355[16] = v366;
            v355[24] = v364;
            *&v355[25] = *v363;
            *&v355[40] = *&v363[15];
            *&v355[48] = v348;
            v355[56] = v362;
            *&v355[57] = v361[0];
            *&v355[60] = *(v361 + 3);
            *&v355[64] = v347;
            *&v355[72] = v345;
            *&v355[80] = v350;
            memcpy(&v355[88], v360, 0x58uLL);
            v355[176] = v339;
            *&v355[177] = *v359;
            *&v355[192] = *&v359[15];
            *&v355[200] = v349;
            v355[208] = v342;
            sub_100057E48(v355);
            v345 = *&v356[72];
            *&v383 = *&v356[64];
            v365 = *v356;
            v366 = *&v356[16];
            v364 = v356[24];
            v174 = v352;
            *v363 = *&v356[25];
            *&v363[15] = *&v356[40];
            v361[0] = *&v356[57];
            *(v361 + 3) = *&v356[60];
            v350 = *&v356[80];
            memcpy(v360, &v356[88], sizeof(v360));
            v339 = v356[176];
            *v359 = *&v356[177];
            v185 = *&v356[200];
            *&v359[15] = *&v356[192];
            v342 = v356[208];
            v186 = sub_1000F36FC(v164, v165, v305, v306);
            sub_1000374B8(&v383, &qword_1002AFDB8, &qword_1002049E8);
            v173 = 0;
            v347 = v186;
            v187 = v186[2];
            v172 = v185;
            v348 = v187;
            v362 = 0;
            v139 = 1;
            goto LABEL_73;
          }
        }

        else
        {
          v176 = v308;
          if (v351)
          {
            goto LABEL_86;
          }
        }

        sub_10001AE68(v121 + 6, v121[9]);
        v199 = sub_10007A214(1uLL, v133, v298, v194, v195, v196, v197, v198);
        if ((v200 & 1) == 0)
        {
          v211 = v199;
          sub_1000C23D8(2u);
          v339 = sub_100087764(v211);

          v340 = 0;
          v349 = 0;
          v201 = 1;
          v139 = 1;
          if ((v176 & 1) == 0)
          {
LABEL_99:
            if (!sub_1000C43D8())
            {
              v139 = 1;
              sub_1000C23D8(1u);
            }

            memcpy(v356, v358, sizeof(v356));
            v357 = v304;
            v212 = sub_1000AC6F8(v356);
            v175 = v335;
            v342 = v201;
            if (v212 == 1)
            {
              v213 = v301;
              v173 = 0;
            }

            else
            {
              if (v357 == 1)
              {
                v173 = sub_1001F7EA8();
              }

              else
              {
                v173 = 1;
              }

              v213 = v301;
            }

            v214 = v338;
            v216 = v305;
            v215 = v306;
            sub_10003742C(v305, v306);
            v217 = v215;
            v218 = v325;
            sub_1001D4DFC(v214, v216, v217, v325);
            v219 = v333;
            if (v333)
            {

              *(v218 + 88) = v328;
              *(v218 + 96) = v219;
            }

            *&v383 = v374;
            sub_1000183C4(&qword_1002AC7E8, &qword_100200A10);
            v220 = swift_allocObject();
            *(v220 + 16) = xmmword_1001FE9E0;
            sub_100103950();
            sub_1000374B8(&v383, &qword_1002AFDB8, &qword_1002049E8);
            v221 = *(v220 + 16);
            v347 = v220;
            v348 = v221;
            v362 = 0;
            sub_1001039A8(v218, type metadata accessor for IAPTransaction);
            v172 = v349;
            v301 = v213;
            goto LABEL_110;
          }

LABEL_95:
          if (sub_1000C43D8() != 2 && sub_1000C43D8() != 1)
          {
            v139 = 1;
            sub_1000C23D8(1u);
          }

          v349 = 0;
          goto LABEL_99;
        }

LABEL_86:
        v201 = v342;
        if (!v176)
        {
          goto LABEL_99;
        }

        goto LABEL_95;
      }

      sub_1000C2320(0);
      sub_1000C23D8(4u);
      if (v308)
      {

        v172 = 0;
        v173 = 0;
        v342 = 1;
        v339 = 5;
        goto LABEL_72;
      }

      v188 = v335;
      v189 = v320;
      if (!v320)
      {

        v172 = 0;
        v173 = 0;
        v342 = 1;
        v339 = 5;
        v139 = 1;
        v175 = v188;
LABEL_110:
        v136 = v338;
        goto LABEL_119;
      }

      sub_10001AE68(v121 + 6, v121[9]);

      sub_10007992C();

      v191 = sub_1000E087C(v190);
      v383 = *v356;
      sub_10001C838(&v383);
      v382 = *&v356[16];
      sub_10001C838(&v382);
      v381 = *&v356[32];
      sub_1000374B8(&v381, &qword_1002ACA10, qword_1001FEBF0);

      if (v191)
      {
        v192 = *(v191 + 32);
        v193 = *(v191 + 40);
      }

      else
      {
        v192 = sub_1001E8450();
        v193 = v222;
      }

      v136 = v338;
      v223 = sub_1000C1A68();
      type metadata accessor for AskToBuyDialog();
      swift_allocObject();
      v224 = v298;

      v172 = sub_1000FD874(v192, v193, v223, v334, v224, v189);

      v173 = 0;
      v342 = 1;
      v339 = 5;
      v139 = 1;
      v175 = v335;
LABEL_119:
      v174 = v352;
LABEL_120:
      v349 = v172;
      if (v337[112] == 3 && (*(v346 + *(v175 + 48)) & 1) == 0)
      {
        sub_1000C1ACC(0, 0);
      }

      else if (!v139)
      {
        if ((v173 & 1) == 0)
        {
          goto LABEL_125;
        }

        goto LABEL_124;
      }

      sub_10001AE68(v121 + 11, v121[14]);
      sub_10008EA08(v136, v301);
      if (v173)
      {
LABEL_124:
        sub_1000F3918(v174);
        v226 = v225;
        v228 = v227;
        sub_10003A36C(v345, v350);
        v345 = v226;
        v350 = v228;
      }

LABEL_125:
      v229 = v346;
      v230 = v175;
      v231 = v330;
      sub_1000ACFAC();
      v232 = v229;
      LODWORD(v229) = sub_10001C990(v231, 1, v341);
      sub_1000374B8(v231, &unk_1002B3450, &qword_100202EE0);
      if (v229 != 1 && *(v232 + *(v230 + 48)) == 1)
      {
        sub_10001AE68(v344 + 11, v344[14]);
        sub_10009208C(v136, v233, v234, v235, v236, v237, v238);
      }

      *v355 = v365;
      *&v355[16] = v366;
      v355[24] = v364;
      *&v355[25] = *v363;
      *&v355[40] = *&v363[15];
      v240 = v347;
      v241 = v348;
      *&v355[48] = v348;
      v355[56] = v362;
      *&v355[57] = v361[0];
      *&v355[60] = *(v361 + 3);
      *&v355[64] = v347;
      v242 = v345;
      *&v355[72] = v345;
      v64 = v350;
      *&v355[80] = v350;
      memcpy(&v355[88], v360, 0x58uLL);
      v65 = v339;
      v355[176] = v339;
      *&v355[177] = *v359;
      *&v355[192] = *&v359[15];
      v243 = v349;
      *&v355[200] = v349;
      v71 = v342;
      v355[208] = v342;
      v244 = v343;
      v343[3] = &type metadata for LegacyInAppBuyResponse;
      v244[4] = sub_1000AC7BC();
      v245 = swift_allocObject();
      *v244 = v245;
      v63 = v240;
      v74 = v242;
      v90 = v338;
      sub_100057E10(v355, &v354);
      sub_100037408(v305, v306);

      memcpy((v245 + 16), v355, 0xD1uLL);
      v75 = v241;
      v72 = v243;
LABEL_129:
      v353[0] = v365;
      *&v353[1] = v366;
      BYTE8(v353[1]) = v364;
      *(&v353[1] + 9) = *v363;
      *(&v353[2] + 1) = *&v363[15];
      *&v353[3] = v75;
      BYTE8(v353[3]) = v362;
      *(&v353[3] + 9) = v361[0];
      HIDWORD(v353[3]) = *(v361 + 3);
      *&v353[4] = v63;
      *(&v353[4] + 1) = v74;
      *&v353[5] = v64;
      memcpy(&v353[5] + 8, v360, 0x58uLL);
      LOBYTE(v353[11]) = v65;
      *(&v353[11] + 1) = *v359;
      *&v353[12] = *&v359[15];
      *(&v353[12] + 1) = v72;
      LOBYTE(v353[13]) = v71;
      sub_100057E48(v353);
      return v90;
  }
}

BOOL sub_1000F34D0(uint64_t a1)
{
  v2 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-1] - v3;
  v5 = sub_1001F6508();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026064(a1 + 88, v12);
  sub_10001AE68(v12, v12[3]);
  sub_1000183C4(&qword_1002B4148, &unk_10020CE30);
  sub_1000ACFAC();
  if (sub_10001C990(v4, 1, v5) == 1)
  {
    sub_1001F64E8();
    if (sub_10001C990(v4, 1, v5) != 1)
    {
      sub_1000374B8(v4, &unk_1002B3450, &qword_100202EE0);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  v9 = sub_10008D53C();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
  }

  sub_100019CCC(v12);
  return v9 != 0;
}

void *sub_1000F36FC(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v9 = type metadata accessor for IAPTransaction(0) - 8;
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AE68((v4 + 88), *(v4 + 112));
  v12 = sub_10008D8C8(a1, a2);
  result = sub_10013B560();
  v14 = result;
  v15 = 0;
  v22 = v12 & 0xFFFFFFFFFFFFFF8;
  v23 = v12 & 0xC000000000000001;
  v16 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v14 == v15)
    {

      return v16;
    }

    if (v23)
    {
      result = sub_1001F7808();
    }

    else
    {
      if (v15 >= *(v22 + 16))
      {
        goto LABEL_15;
      }

      result = *(v12 + 8 * v15 + 32);
    }

    v17 = result;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    sub_10003742C(a3, a4);
    sub_1001D4DFC(v17, a3, a4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032DBC(0, v16[2] + 1, 1, v16);
      v16 = v20;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      sub_100032DBC(v18 > 1, v19 + 1, 1, v16);
      v16 = v21;
    }

    v16[2] = v19 + 1;
    result = sub_100103A00();
    ++v15;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1000F3918(uint64_t *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v4 = a1[49];
    if (v4)
    {
      v5 = a1[10];
      v6 = a1[48];
      sub_10001AE68((v1 + 88), *(v1 + 112));
      sub_10008D944(a1[8], a1[9], v5, v2, v6, v4);
    }
  }
}

uint64_t sub_1000F3998(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CheddarTransaction(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000BFC24();
  v13 = v12;
  sub_10001AE68(a2 + 6, a2[9]);
  v19 = sub_10007A214(2uLL, v11, v13, v14, v15, v16, v17, v18);
  LOBYTE(v11) = v20;

  v21 = a1;

  sub_100140370(v21, a3, a4, v19, v11 & 1, v10);
  sub_10001AE68(a2 + 11, a2[14]);
  sub_1000B033C(v10, v19, v11 & 1);
  return sub_1001039A8(v10, type metadata accessor for CheddarTransaction);
}

void sub_1000F3ADC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10001AE68((v5 + 48), *(v5 + 72));
  v11 = sub_1000795A8(a1, a2);
  v22 = *(v11 + 80);
  if (v22 && ((v12 = *(v11 + 72), v13 = *(v11 + 112), v12 == a3) ? (v14 = v22 == a4) : (v14 = 0), (v21 = *(v11 + 96), v14) || (sub_1001F7EA8() & 1) != 0))
  {

    v16 = v21;
    v15 = v22;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v17 = sub_1001F6688();
    sub_100019C94(v17, qword_1002E6180);

    v18 = sub_1001F6668();
    v19 = sub_1001F7298();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_1000E4544(a3, a4, &v23);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1000E4544(a1, a2, &v23);
      _os_log_impl(&_mh_execute_header, v18, v19, "No subscription offers key pair set found with keyID %s for %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    v12 = 0;
    v13 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *a5 = v12;
  *(a5 + 8) = v15;
  *(a5 + 24) = v16;
  *(a5 + 40) = v13;
}

uint64_t sub_1000F3D3C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IntroOfferEligibilityOverride(0);
  __chkstk_darwin(v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000183C4(&qword_1002B23C0, &unk_1002087B0);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  v12 = sub_1000183C4(&qword_1002B23C8, &unk_10020CE50);
  __chkstk_darwin(v12 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  __chkstk_darwin(v18);
  if (!a1[17])
  {
    goto LABEL_19;
  }

  v60 = &v59 - v19;
  sub_100198684(v17);
  v59 = v11;
  v20 = v60;
  sub_1000ACDAC();
  sub_1000ACFAC();
  if (sub_10001C990(v14, 1, v9) != 1)
  {
    v23 = v59;
    sub_1000ACDAC();
    v24 = *(a2 + 64);
    v25 = *(a2 + 72);
    sub_1000F3ADC(v24, v25, *(v23 + 16), *(v23 + 24), v62);
    if (*(&v62[0] + 1))
    {
      v63 = v62[0];
      v64 = v62[1];
      v65 = v62[2];
      sub_10001AE68(v3 + 6, v3[9]);
      sub_10007A214(2uLL, v24, v25, v26, v27, v28, v29, v30);
      sub_1000F46D8();
      v32 = v31;
      v66 = v63;
      sub_10001C838(&v66);
      v67 = v64;
      sub_10001C838(&v67);
      v68 = v65;
      sub_1000374B8(&v68, &qword_1002AEBE0, &qword_100203700);
      if (v32)
      {
        v33 = v23;
        v34 = a1[10];
        v35 = a1[11];

        LOBYTE(v34) = sub_100023590(v34, v35, v24, v25);

        if (v34)
        {
          sub_1000374B8(v60, &qword_1002B23C8, &unk_10020CE50);
          sub_100103950();
          sub_1000374B8(v33, &qword_1002B23C0, &unk_1002087B0);
          v22 = v8[*(v6 + 44)];
          sub_1001039A8(v8, type metadata accessor for IntroOfferEligibilityOverride);
          return v22 & 1;
        }

        if (qword_1002AC510 != -1)
        {
          swift_once();
        }

        v51 = sub_1001F6688();
        sub_100019C94(v51, qword_1002E6180);

        v52 = sub_1001F6668();
        v53 = sub_1001F7298();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v61[0] = v55;
          *v54 = 136315138;
          v56 = a1[10];
          v57 = a1[11];

          v58 = sub_1000E4544(v56, v57, v61);

          *(v54 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v52, v53, "Invalid intro offer override data for %s", v54, 0xCu);
          sub_100019CCC(v55);
        }

        sub_1000374B8(v60, &qword_1002B23C8, &unk_10020CE50);
        v49 = v59;
        goto LABEL_18;
      }

      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v45 = sub_1001F6688();
      sub_100019C94(v45, qword_1002E6180);

      v37 = sub_1001F6668();
      v38 = sub_1001F7298();

      if (!os_log_type_enabled(v37, v38))
      {
LABEL_17:

        sub_1000374B8(v60, &qword_1002B23C8, &unk_10020CE50);
        v49 = v23;
LABEL_18:
        sub_1000374B8(v49, &qword_1002B23C0, &unk_1002087B0);
LABEL_19:
        v22 = 0;
        return v22 & 1;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v61[0] = v40;
      *v39 = 136315138;
      v46 = a1[10];
      v47 = a1[11];

      v48 = sub_1000E4544(v46, v47, v61);

      *(v39 + 4) = v48;
      v23 = v59;
      v44 = "Invalid intro offer override signature for %s";
    }

    else
    {
      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v36 = sub_1001F6688();
      sub_100019C94(v36, qword_1002E6180);

      v37 = sub_1001F6668();
      v38 = sub_1001F7298();

      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_17;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v63 = v40;
      *v39 = 136315138;
      v41 = a1[10];
      v42 = a1[11];

      v43 = sub_1000E4544(v41, v42, &v63);

      *(v39 + 4) = v43;
      v23 = v59;
      v44 = "Missing key pair set to validate intro offer override for %s";
    }

    _os_log_impl(&_mh_execute_header, v37, v38, v44, v39, 0xCu);
    sub_100019CCC(v40);

    goto LABEL_17;
  }

  sub_1000374B8(v14, &qword_1002B23C8, &unk_10020CE50);
  sub_10001AE68(v3 + 11, v3[14]);

  v21 = sub_10008D2D0();

  sub_1000374B8(v20, &qword_1002B23C8, &unk_10020CE50);
  v22 = v21 ^ 1;
  return v22 & 1;
}

void sub_1000F46D8()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v33[3] = v5;
  v34 = v0;
  v7 = v6;
  v8 = sub_1001F68E8();
  sub_10001A278();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100099484();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = v33 - v16;
  v18 = sub_1001F6328();
  if (v19 >> 60 == 15)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v20 = sub_1001F6688();
    sub_10009951C(v20, qword_1002E6180);
    v21 = *v7;
    v22 = *(v7 + 8);
    v36 = *(v7 + 32);

    sub_1000ACFAC();
    v23 = sub_1001F6668();
    v24 = sub_1001F7298();

    sub_1000374B8(&v36, &qword_1002AEBE0, &qword_100203700);
    if (os_log_type_enabled(v23, v24))
    {
      sub_100099504();
      v25 = swift_slowAlloc();
      v26 = sub_10003A894();
      v35 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1000E4544(v21, v22, &v35);
      sub_100103E78();
      _os_log_impl(v27, v28, v29, v30, v25, 0xCu);
      sub_100019CCC(v26);
      sub_100099474();

      sub_100021754();
    }
  }

  else
  {
    v31 = v19;
    v33[1] = v4;
    v33[2] = v2;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v32 = v18;
    sub_100040C70(v18, v19);
    sub_10003A318();
    sub_1001F6888();
    (*(v10 + 32))(v17, v14, v8);
    sub_1000FDD50();
    sub_10003A36C(v32, v31);
    (*(v10 + 8))(v17, v8);
  }

  sub_100037B00();
}

uint64_t sub_1000F4B50(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10001AE68((v3 + 88), *(v3 + 112));
  if (!sub_10008D3AC(a3))
  {

LABEL_5:
    v9 = 7;
LABEL_6:
    LOBYTE(v27) = v9;
    sub_1000AC650();
    swift_willThrowTypedImpl();
    return v9;
  }

  v8 = sub_1001F7EA8();

  if (v8)
  {
    goto LABEL_5;
  }

  v11 = sub_100025820(a1, a2);
  if (!v11)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v22 = sub_1001F6688();
    sub_100019C94(v22, qword_1002E6180);

    v23 = sub_1001F6668();
    v24 = sub_1001F7298();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1000E4544(a1, a2, &v27);
      _os_log_impl(&_mh_execute_header, v23, v24, "Requested win-back offer with invalid offer identifier %s.", v25, 0xCu);
      sub_100019CCC(v26);
    }

    v9 = 8;
    goto LABEL_6;
  }

  v9 = v11;
  if (*(v11 + 112))
  {
    sub_10001AE68((v4 + 88), *(v4 + 112));
    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001FE9E0;
    v13 = *(a3 + 200);
    *(inited + 32) = *(a3 + 192);
    *(inited + 40) = v13;

    sub_10008B3C8();
    v15 = v14;
    swift_setDeallocating();
    sub_1001E56B4();
    if (sub_10013B560())
    {
      sub_1001C19A8();
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = sub_1001F7808();
      }

      else
      {
        v16 = *(v15 + 32);
      }

      v17 = v16;

      v18 = v17;
      v19 = sub_1000C4418();
      if (v19)
      {
        sub_1000C1570(v19);
        v21 = v20;

        if (!v21)
        {

          return v9;
        }
      }

      else
      {
      }
    }

    else
    {

      v18 = 0;
    }

    LOBYTE(v27) = 7;
    sub_1000AC650();
    swift_willThrowTypedImpl();
  }

  else
  {
    LOBYTE(v27) = 7;
    sub_1000AC650();
    swift_willThrowTypedImpl();
  }

  return 7;
}

uint64_t sub_1000F4EF8(uint64_t *a1, uint64_t a2, void *a3, char a4)
{
  v88 = a1;
  v8 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  __chkstk_darwin(v8 - 8);
  v10 = &v60 - v9;
  v65 = sub_1000183C4(&qword_1002B23B8, &unk_1002087A0);
  __chkstk_darwin(v65);
  v66 = &v60 - v11;
  v67 = type metadata accessor for PromotionalOfferData.SigningMethod(0);
  __chkstk_darwin(v67);
  v68 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PromotionalOfferData(0);
  __chkstk_darwin(v13);
  v15 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001AE68(v4 + 11, v4[14]);
  v16 = a3[9];
  v70 = a3[8];
  v71 = v16;
  if (sub_10008D3AC(a2))
  {
    v69 = a2;
    v17 = sub_1001F7EA8();

    if (v17)
    {
      goto LABEL_5;
    }

    v20 = *v88;
    v63 = v88[1];
    v64 = v20;
    v21 = sub_100025678(v20, v63);
    if (!v21)
    {
      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v28 = sub_1001F6688();
      sub_100019C94(v28, qword_1002E6180);
      sub_100103950();
      v29 = sub_1001F6668();
      v30 = sub_1001F7298();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v72 = v32;
        *v31 = 136315138;
        v33 = *v15;
        v34 = v15[1];

        sub_1001039A8(v15, type metadata accessor for PromotionalOfferData);
        v35 = sub_1000E4544(v33, v34, &v72);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "Requested promotional offer with invalid offer identifier %s.", v31, 0xCu);
        sub_100019CCC(v32);
      }

      else
      {

        sub_1001039A8(v15, type metadata accessor for PromotionalOfferData);
      }

      v18 = 3;
      goto LABEL_6;
    }

    v18 = v21;
    if ((a4 & 1) == 0)
    {
      return v18;
    }

    v22 = sub_1001C7F80();
    if (!v23 || (sub_1000F3ADC(v70, v71, v22, v23, v73), , !*(&v73[0] + 1)))
    {
      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v36 = sub_1001F6688();
      sub_100019C94(v36, qword_1002E6180);
      v37 = v69;

      v38 = sub_1001F6668();
      v39 = sub_1001F7298();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v72 = v41;
        *v40 = 136315138;
        v42 = *(v37 + 80);
        v43 = *(v37 + 88);

        v44 = sub_1000E4544(v42, v43, &v72);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "Missing key pair set to validate promotional offer signature for %s", v40, 0xCu);
        sub_100019CCC(v41);
      }

      goto LABEL_44;
    }

    v74 = v73[0];
    v75 = v73[1];
    v76 = v73[2];
    memcpy(v87, a3 + 72, 0x139uLL);
    v24 = sub_1000AC6F8(v87);
    v62 = v18;
    if (v24 == 1 || (v87[312] & 1) != 0 && (sub_1001F7EA8() & 1) == 0)
    {
      if (a3[65])
      {
        sub_1001F6518();
        v25 = sub_1001F6578();
        if (sub_10001C990(v10, 1, v25) != 1)
        {
          sub_1001F6528();
          (*(*(v25 - 8) + 8))(v10, v25);
          v61 = sub_1001F6BB8();
          v27 = v26;

          goto LABEL_35;
        }
      }

      else
      {
        v46 = sub_1001F6578();
        sub_100018460(v10, 1, 1, v46);
      }

      sub_1000374B8(v10, &qword_1002AFA30, &unk_10020FA10);
      v61 = 0;
      v27 = 0xE000000000000000;
    }

    else
    {
      v45 = a3[43];
      if (v45)
      {
        v61 = a3[42];
        v27 = v45;
      }

      else
      {
        v61 = 0;
        v27 = 0xE000000000000000;
      }
    }

LABEL_35:
    v47 = v69;
    sub_10001AE68(v4 + 6, v4[9]);
    sub_10007A214(2uLL, v70, v71, v48, v49, v50, v51, v52);
    if (sub_100025678(v64, v63))
    {

      v53 = v68;
      sub_100103950();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        memcpy(v86, v53, sizeof(v86));
        v58 = *(v47 + 80);
        v59 = *(v47 + 88);

        v57 = sub_1001C80E8(v70, v71, v58, v59, v61, v27, &v74);
        v80 = v74;
        sub_10001C838(&v80);
        v81 = v75;
        sub_10001C838(&v81);
        v82 = v76;
        sub_1000374B8(&v82, &qword_1002AEBE0, &qword_100203700);

        sub_1000AC71C(v86);
LABEL_41:
        v18 = v62;
        if (v57)
        {
          return v18;
        }

        goto LABEL_44;
      }

      v54 = v66;
      sub_1000ACDAC();
      sub_1000F46D8();
      v56 = v55;
      v83 = v74;
      sub_10001C838(&v83);
      v84 = v75;
      sub_10001C838(&v84);
      v85 = v76;
      sub_1000374B8(&v85, &qword_1002AEBE0, &qword_100203700);
      if (v56)
      {
        v57 = sub_1001C8BAC(v64, v63, v70, v71);
        sub_1000374B8(v54, &qword_1002B23B8, &unk_1002087A0);
        goto LABEL_41;
      }

      sub_1000374B8(v54, &qword_1002B23B8, &unk_1002087A0);
    }

    else
    {
      v77 = v74;
      sub_10001C838(&v77);
      v78 = v75;
      sub_10001C838(&v78);
      v79 = v76;
      sub_1000374B8(&v79, &qword_1002AEBE0, &qword_100203700);
    }

LABEL_44:
    LOBYTE(v72) = 9;
    sub_1000AC650();
    swift_willThrowTypedImpl();

    return 9;
  }

LABEL_5:
  v18 = 4;
LABEL_6:
  LOBYTE(v72) = v18;
  sub_1000AC650();
  swift_willThrowTypedImpl();
  return v18;
}

uint64_t sub_1000F585C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_10002574C(a1, a2);
  if (!v7)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v22 = sub_1001F6688();
    sub_100019C94(v22, qword_1002E6180);

    v23 = sub_1001F6668();
    v24 = sub_1001F7298();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_1000E4544(a1, a2, &v32);
      *(v25 + 12) = 2080;
      v26 = *(a3 + 80);
      v27 = *(a3 + 88);

      v28 = sub_1000E4544(v26, v27, &v32);

      *(v25 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "Internal ID %s did not correspond to a configured offer for codes for %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = 2;
    LOBYTE(v32) = 2;
    sub_1000AC650();
    swift_willThrowTypedImpl();
    return v29;
  }

  v8 = v7;
  sub_10001AE68((v3 + 88), *(v3 + 112));
  v9 = sub_10008D3AC(a3);
  v10 = *(v8 + 96);

  v11 = sub_1000BF948(v9, v10);

  if ((v11 & 1) == 0)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v12 = sub_1001F6688();
    sub_100019C94(v12, qword_1002E6180);

    v13 = sub_1001F6668();
    v14 = sub_1001F7298();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v15 = 136315650;
      *(v15 + 4) = sub_1000E4544(a1, a2, &v32);
      *(v15 + 12) = 2080;
      sub_1000AC6A4();

      v16 = sub_1001F70B8();
      v18 = v17;

      v19 = sub_1000E4544(v16, v18, &v32);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2080;
      if (v9)
      {
        if (v9 == 1)
        {
          v20 = 0xE800000000000000;
          v21 = 0x676E697473697865;
        }

        else
        {
          v20 = 0xE700000000000000;
          v21 = 0x64657269707865;
        }
      }

      else
      {
        v20 = 0xE300000000000000;
        v21 = 7824750;
      }

      v30 = sub_1000E4544(v21, v20, &v32);

      *(v15 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v13, v14, " Currently ineligible for offer code  %s: %s does not  contain %s", v15, 0x20u);
      swift_arrayDestroy();
    }

    v29 = 5;
    LOBYTE(v32) = 5;
    sub_1000AC650();
    swift_willThrowTypedImpl();

    return v29;
  }

  return v8;
}

uint64_t sub_1000F5CC4(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 8))();
  v6._countAndFlagsBits = 3092282;
  v6._object = 0xE300000000000000;
  sub_1001F6CA8(v6);
  v7._countAndFlagsBits = (*(a2 + 16))(a1, a2);
  sub_1001F6CA8(v7);

  v8._countAndFlagsBits = 58;
  v8._object = 0xE100000000000000;
  sub_1001F6CA8(v8);
  (*(a2 + 24))(a1, a2);
  v9._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v9);

  return v5;
}

uint64_t sub_1000F5DC8()
{
  type metadata accessor for OctaneServer();
  result = sub_1000F5E04();
  qword_1002E60C8 = result;
  return result;
}

uint64_t sub_1000F5E04()
{
  sub_100037B94();
  type metadata accessor for OctaneConfigurationManager();
  swift_allocObject();
  v0 = sub_10007B72C();
  v1 = qword_1002AC540;
  swift_retain_n();
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = sub_100102B50(v0, qword_1002E61A8);

  v3 = sub_100037B7C();

  return sub_100102D24(v3, v4, v0, v2);
}

uint64_t sub_1000F5EC4()
{
  v1 = v0;
  v2 = sub_1000183C4(&qword_1002B4118, &qword_10020CDA8);
  __chkstk_darwin(v2 - 8);
  v359 = v345 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v357 = v345 - v5;
  __chkstk_darwin(v6);
  v356 = v345 - v7;
  __chkstk_darwin(v8);
  v355 = v345 - v9;
  __chkstk_darwin(v10);
  v354 = v345 - v11;
  __chkstk_darwin(v12);
  v353 = v345 - v13;
  __chkstk_darwin(v14);
  v352 = v345 - v15;
  __chkstk_darwin(v16);
  v351 = v345 - v17;
  __chkstk_darwin(v18);
  v350 = v345 - v19;
  __chkstk_darwin(v20);
  v349 = v345 - v21;
  __chkstk_darwin(v22);
  v348 = v345 - v23;
  __chkstk_darwin(v24);
  v347 = v345 - v25;
  __chkstk_darwin(v26);
  v346 = v345 - v27;
  __chkstk_darwin(v28);
  v30 = v345 - v29;
  sub_100026064(v0 + 64, &v365);
  sub_100026064(v0 + 104, &v363);
  v31 = sub_1000183C4(&qword_1002B4120, &unk_10020CDB0);
  v32 = swift_allocObject();
  v33 = sub_10004BD98(&v365, *(&v366 + 1));
  v34 = __chkstk_darwin(v33);
  v36 = (v345 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36, v34);
  v38 = sub_10004BD98(&v363, v364);
  v39 = __chkstk_darwin(v38);
  v41 = (v345 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41, v39);
  v43 = *v36;
  v44 = *v41;

  v46 = sub_100102438(v45, v43, v44, v32);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  swift_weakAssign();
  sub_1000183C4(&qword_1002ADBF0, &unk_100200930);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10020CCD0;
  v48 = type metadata accessor for AppIconRoute();
  swift_allocObject();
  v49 = sub_10005DCA4();
  *(v47 + 56) = v48;
  *(v47 + 64) = &off_100282840;
  *(v47 + 32) = v49;
  sub_100026064(v1 + 64, &v365);
  v50 = sub_10004BD98(&v365, *(&v366 + 1));
  v51 = __chkstk_darwin(v50);
  v53 = (v345 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53, v51);
  v55 = sub_100101D84(*v53, type metadata accessor for AssetRoute, sub_1000FE818);
  sub_100019CCC(&v365);
  *(v47 + 96) = type metadata accessor for AssetRoute();
  *(v47 + 104) = &off_100284C10;
  *(v47 + 72) = v55;
  v56 = *(v1 + 24);
  v57 = *(v1 + 32);
  sub_100026064(v1 + 64, &v365);
  v58 = sub_10004BD98(&v365, *(&v366 + 1));
  v59 = __chkstk_darwin(v58);
  v61 = (v345 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = *v61;

  v64 = sub_100103048(v1, v56, v57, v63);
  sub_100019CCC(&v365);
  *(v47 + 136) = type metadata accessor for BagRoute();
  *(v47 + 144) = &off_100284C10;
  *(v47 + 112) = v64;
  sub_100026064(v1 + 64, &v365);
  v65 = sub_10004BD98(&v365, *(&v366 + 1));
  v66 = __chkstk_darwin(v65);
  v68 = (v345 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68, v66);
  v70 = sub_100101D84(*v68, type metadata accessor for FetchSoftwareAddOnsRoute, sub_1000FE93C);
  sub_100019CCC(&v365);
  *(v47 + 176) = type metadata accessor for FetchSoftwareAddOnsRoute();
  *(v47 + 184) = &off_100284C10;
  *(v47 + 152) = v70;
  *(v47 + 216) = v31;
  *(v47 + 224) = &off_100284C10;
  *(v47 + 192) = v46;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v71 = sub_10004BD98(&v365, *(&v366 + 1));
  v72 = __chkstk_darwin(v71);
  v74 = (v345 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v75 + 16))(v74, v72);
  v76 = sub_10004BD98(&v363, v364);
  v77 = __chkstk_darwin(v76);
  v79 = (v345 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v80 + 16))(v79, v77);
  v81 = *v74;
  v82 = *v79;
  v358 = v46;

  v83 = sub_100101FF8(v81, v82, type metadata accessor for InAppTransactionDoneRoute, 128, sub_1000FEA60);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v47 + 256) = type metadata accessor for InAppTransactionDoneRoute();
  *(v47 + 264) = &off_100284C10;
  *(v47 + 232) = v83;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v84 = sub_10004BD98(&v365, *(&v366 + 1));
  v85 = __chkstk_darwin(v84);
  v87 = (v345 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v88 + 16))(v87, v85);
  v89 = sub_10004BD98(&v363, v364);
  v90 = __chkstk_darwin(v89);
  v92 = (v345 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v93 + 16))(v92, v90);
  v94 = sub_100101FF8(*v87, *v92, type metadata accessor for InAppCheckDownloadQueueRoute, 128, sub_1000FED54);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v47 + 296) = type metadata accessor for InAppCheckDownloadQueueRoute();
  *(v47 + 304) = &off_100284C10;
  *(v47 + 272) = v94;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v95 = sub_10004BD98(&v365, *(&v366 + 1));
  v96 = __chkstk_darwin(v95);
  v98 = (v345 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v99 + 16))(v98, v96);
  v100 = sub_10004BD98(&v363, v364);
  v101 = __chkstk_darwin(v100);
  v103 = (v345 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v104 + 16))(v103, v101);
  v105 = sub_100101FF8(*v98, *v103, type metadata accessor for InAppPendingTransactionsRoute, 128, sub_1000FF050);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v47 + 336) = type metadata accessor for InAppPendingTransactionsRoute();
  *(v47 + 344) = &off_100284C10;
  *(v47 + 312) = v105;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v106 = sub_10004BD98(&v365, *(&v366 + 1));
  v107 = __chkstk_darwin(v106);
  v109 = (v345 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v110 + 16))(v109, v107);
  v111 = sub_10004BD98(&v363, v364);
  v112 = __chkstk_darwin(v111);
  v114 = (v345 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v115 + 16))(v114, v112);
  v116 = sub_100101FF8(*v109, *v114, type metadata accessor for InAppRegrantPurchaseHistoryRoute, 128, sub_1000FF34C);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v47 + 376) = type metadata accessor for InAppRegrantPurchaseHistoryRoute();
  *(v47 + 384) = &off_100284C10;
  *(v47 + 352) = v116;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v117 = sub_10004BD98(&v365, *(&v366 + 1));
  v118 = __chkstk_darwin(v117);
  v120 = (v345 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v121 + 16))(v120, v118);
  v122 = sub_10004BD98(&v363, v364);
  v123 = __chkstk_darwin(v122);
  v125 = (v345 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v126 + 16))(v125, v123);
  v127 = sub_100101FF8(*v120, *v125, type metadata accessor for CreateAppReceiptRoute, 128, sub_1000FF648);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v47 + 416) = type metadata accessor for CreateAppReceiptRoute();
  *(v47 + 424) = &off_100284C10;
  *(v47 + 392) = v127;
  sub_100026064(v1 + 64, &v365);
  v128 = sub_10004BD98(&v365, *(&v366 + 1));
  v129 = __chkstk_darwin(v128);
  v131 = (v345 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v132 + 16))(v131, v129);
  v133 = *v131;

  v134 = sub_100102760(v133, v1);
  sub_100019CCC(&v365);
  *(v47 + 456) = type metadata accessor for InAppsRoute();
  *(v47 + 464) = &off_100284C10;
  *(v47 + 432) = v134;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(&v365, &v363);
  v135 = sub_10004BD98(&v363, v364);
  v136 = __chkstk_darwin(v135);
  v138 = (v345 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v139 + 16))(v138, v136);
  v140 = *v138;

  v141 = sub_1001028B0(0xD00000000000002BLL, 0x8000000100227B70, v140, v1);
  sub_100019CCC(&v365);
  sub_100019CCC(&v363);
  *(v47 + 496) = type metadata accessor for InAppPurchasablesRoute();
  *(v47 + 504) = &off_100284C10;
  *(v47 + 472) = v141;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v142 = sub_10004BD98(&v365, *(&v366 + 1));
  v143 = __chkstk_darwin(v142);
  v145 = (v345 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v146 + 16))(v145, v143);
  v147 = sub_10004BD98(&v363, v364);
  v148 = __chkstk_darwin(v147);
  v150 = (v345 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v151 + 16))(v150, v148);
  v152 = sub_100101FF8(*v145, *v150, type metadata accessor for TransactionHistoryRoute, 128, sub_1000FF944);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v47 + 536) = type metadata accessor for TransactionHistoryRoute();
  *(v47 + 544) = &off_100284C10;
  *(v47 + 512) = v152;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v153 = sub_10004BD98(&v365, *(&v366 + 1));
  v154 = __chkstk_darwin(v153);
  v156 = (v345 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v157 + 16))(v156, v154);
  v158 = sub_10004BD98(&v363, v364);
  v159 = __chkstk_darwin(v158);
  v161 = (v345 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v162 + 16))(v161, v159);
  v163 = sub_100101FF8(*v156, *v161, type metadata accessor for SingleStatusRoute, 128, sub_1000FFC40);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v47 + 576) = type metadata accessor for SingleStatusRoute();
  *(v47 + 584) = &off_100284C10;
  *(v47 + 552) = v163;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v164 = sub_10004BD98(&v365, *(&v366 + 1));
  v165 = __chkstk_darwin(v164);
  v167 = (v345 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v168 + 16))(v167, v165);
  v169 = sub_10004BD98(&v363, v364);
  v170 = __chkstk_darwin(v169);
  v172 = (v345 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v173 + 16))(v172, v170);
  v174 = sub_100101FF8(*v167, *v172, type metadata accessor for AllStatusRoute, 128, sub_1000FFF3C);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v47 + 616) = type metadata accessor for AllStatusRoute();
  *(v47 + 624) = &off_100284C10;
  *(v47 + 592) = v174;
  sub_100026064(v1 + 64, &v365);
  v175 = type metadata accessor for AppInformationRoute();
  v176 = swift_allocObject();
  v177 = sub_10004BD98(&v365, *(&v366 + 1));
  v178 = __chkstk_darwin(v177);
  v180 = (v345 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v181 + 16))(v180, v178);
  v182 = *v180;

  v183 = sub_1001029F8(v182, v1, v176);
  sub_100019CCC(&v365);
  *(v47 + 656) = v175;
  *(v47 + 664) = &off_100284C10;
  *(v47 + 632) = v183;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v184 = sub_10004BD98(&v365, *(&v366 + 1));
  v185 = __chkstk_darwin(v184);
  v187 = (v345 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v188 + 16))(v187, v185);
  v189 = sub_10004BD98(&v363, v364);
  v190 = __chkstk_darwin(v189);
  v192 = (v345 - ((v191 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v193 + 16))(v192, v190);
  v194 = sub_100101FF8(*v187, *v192, type metadata accessor for AskToBuyPermissionRoute, 128, sub_100100238);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v47 + 696) = type metadata accessor for AskToBuyPermissionRoute();
  *(v47 + 704) = &off_100284C10;
  *(v47 + 672) = v194;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v195 = sub_10004BD98(&v365, *(&v366 + 1));
  v196 = __chkstk_darwin(v195);
  v198 = (v345 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v199 + 16))(v198, v196);
  v200 = sub_10004BD98(&v363, v364);
  v201 = __chkstk_darwin(v200);
  v203 = (v345 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v204 + 16))(v203, v201);
  v205 = sub_100101FF8(*v198, *v203, type metadata accessor for OfferEligibilityRoute, 128, sub_100100534);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v47 + 736) = type metadata accessor for OfferEligibilityRoute();
  *(v47 + 744) = &off_100284C10;
  *(v47 + 712) = v205;
  for (i = 32; i != 752; i += 40)
  {
    sub_100026064(v47 + i, &v365);
    sub_1000E5A50(&v365);
    sub_100019CCC(&v365);
  }

  swift_setDeallocating();
  sub_1001E568C();
  v345[1] = sub_1000183C4(&qword_1002B4128, &qword_10020CDC0);
  v207 = swift_allocObject();
  *(v207 + 16) = xmmword_100200C80;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v208 = sub_10004BD98(&v365, *(&v366 + 1));
  v209 = __chkstk_darwin(v208);
  (*(v211 + 16))(v345 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0), v209);
  v212 = sub_10004BD98(&v363, v364);
  v213 = __chkstk_darwin(v212);
  (*(v215 + 16))(v345 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0), v213);
  v216 = sub_1001021A4();
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v207 + 56) = type metadata accessor for RefundRequestRoute();
  *(v207 + 64) = &off_100284C10;
  *(v207 + 32) = v216;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v217 = sub_10004BD98(&v365, *(&v366 + 1));
  v218 = __chkstk_darwin(v217);
  v220 = (v345 - ((v219 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v221 + 16))(v220, v218);
  v222 = sub_10004BD98(&v363, v364);
  v223 = __chkstk_darwin(v222);
  v225 = (v345 - ((v224 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v226 + 16))(v225, v223);
  v227 = sub_100101FF8(*v220, *v225, type metadata accessor for RefundRequestUIRoute, 144, sub_100100830);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  v228 = 0;
  if (v227)
  {
    v228 = type metadata accessor for RefundRequestUIRoute();
    v229 = &off_100284C10;
  }

  else
  {
    v229 = 0;
    *(v207 + 80) = 0;
    *(v207 + 88) = 0;
  }

  v230 = v348;
  v231 = v346;
  *(v207 + 72) = v227;
  *(v207 + 96) = v228;
  *(v207 + 104) = v229;
  sub_10016036C(0xD000000000000019, 0x8000000100227BA0, 0x722D646E75666572, 0xEE00747365757165, 29546, 0xE200000000000000, v30);
  v232 = type metadata accessor for StaticResourceRoute(0);
  if (sub_10001C990(v30, 1, v232) == 1)
  {
    sub_1000374B8(v30, &qword_1002B4118, &qword_10020CDA8);
    *(v207 + 112) = 0u;
    *(v207 + 128) = 0u;
    *(v207 + 144) = 0;
  }

  else
  {
    *(v207 + 136) = v232;
    *(v207 + 144) = &off_10028F4D8;
    sub_1000629FC((v207 + 112));
    sub_100103A00();
  }

  sub_10016036C(0xD000000000000019, 0x8000000100227BC0, 0x6C61626F6C67, 0xE600000000000000, 7566179, 0xE300000000000000, v231);
  v233 = sub_10001C990(v231, 1, v232);
  v234 = v347;
  if (v233 == 1)
  {
    sub_1000374B8(v231, &qword_1002B4118, &qword_10020CDA8);
    *(v207 + 152) = 0u;
    *(v207 + 168) = 0u;
    *(v207 + 184) = 0;
  }

  else
  {
    *(v207 + 176) = v232;
    *(v207 + 184) = &off_10028F4D8;
    sub_1000629FC((v207 + 152));
    sub_100103A00();
  }

  sub_10016036C(0xD000000000000019, 0x8000000100227BE0, 0x722D646E75666572, 0xEE00747365757165, 7566179, 0xE300000000000000, v234);
  if (sub_10001C990(v234, 1, v232) == 1)
  {
    sub_1000374B8(v234, &qword_1002B4118, &qword_10020CDA8);
    *(v207 + 192) = 0u;
    *(v207 + 208) = 0u;
    *(v207 + 224) = 0;
  }

  else
  {
    *(v207 + 216) = v232;
    *(v207 + 224) = &off_10028F4D8;
    sub_1000629FC((v207 + 192));
    sub_100103A00();
  }

  *(v207 + 256) = &type metadata for SystemImageRoute;
  *(v207 + 264) = &off_100291CC0;
  sub_10016036C(0xD000000000000029, 0x8000000100227C00, 0xD000000000000018, 0x8000000100227C30, 6778480, 0xE300000000000000, v230);
  if (sub_10001C990(v230, 1, v232) == 1)
  {
    sub_1000374B8(v230, &qword_1002B4118, &qword_10020CDA8);
    *(v207 + 272) = 0u;
    *(v207 + 288) = 0u;
    *(v207 + 304) = 0;
  }

  else
  {
    *(v207 + 296) = v232;
    *(v207 + 304) = &off_10028F4D8;
    sub_1000629FC((v207 + 272));
    sub_100103A00();
  }

  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v235 = sub_10004BD98(&v365, *(&v366 + 1));
  v236 = __chkstk_darwin(v235);
  (*(v238 + 16))(v345 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0), v236);
  v239 = sub_10004BD98(&v363, v364);
  v240 = __chkstk_darwin(v239);
  (*(v242 + 16))(v345 - ((v241 + 15) & 0xFFFFFFFFFFFFFFF0), v240);
  v243 = sub_100101E90();
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v207 + 336) = type metadata accessor for OfferCodeRedeemUIRoute();
  *(v207 + 344) = &off_100284C10;
  *(v207 + 312) = v243;
  v244 = v349;
  sub_10016036C(0xD00000000000001ELL, 0x8000000100227C50, 0x6465722D65646F63, 0xEB000000006D6565, 29546, 0xE200000000000000, v349);
  if (sub_10001C990(v244, 1, v232) == 1)
  {
    sub_1000374B8(v244, &qword_1002B4118, &qword_10020CDA8);
    *(v207 + 352) = 0u;
    *(v207 + 368) = 0u;
    *(v207 + 384) = 0;
  }

  else
  {
    *(v207 + 376) = v232;
    *(v207 + 384) = &off_10028F4D8;
    sub_1000629FC((v207 + 352));
    sub_100103A00();
  }

  v245 = v350;
  sub_10016036C(0xD00000000000001ELL, 0x8000000100227C70, 0x6465722D65646F63, 0xEB000000006D6565, 7566179, 0xE300000000000000, v350);
  if (sub_10001C990(v245, 1, v232) == 1)
  {
    sub_1000374B8(v245, &qword_1002B4118, &qword_10020CDA8);
    *(v207 + 392) = 0u;
    *(v207 + 408) = 0u;
    *(v207 + 424) = 0;
  }

  else
  {
    *(v207 + 416) = v232;
    *(v207 + 424) = &off_10028F4D8;
    sub_1000629FC((v207 + 392));
    sub_100103A00();
  }

  v246 = _swiftEmptyArrayStorage;
  for (j = 32; j != 432; j += 40)
  {
    sub_1000ACFAC();
    v360 = v365;
    v361 = v366;
    v362 = v367;
    if (*(&v366 + 1))
    {
      sub_10002DD3C(&v360, &v363);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000325D4();
        v246 = v249;
      }

      v248 = v246[2];
      if (v248 >= v246[3] >> 1)
      {
        sub_1000325D4();
        v246 = v250;
      }

      v246[2] = v248 + 1;
      sub_10002DD3C(&v363, &v246[5 * v248 + 4]);
    }

    else
    {
      sub_1000374B8(&v360, &qword_1002B4130, &qword_10020CDC8);
    }
  }

  swift_setDeallocating();
  sub_1001E56A0();
  v251 = v246[2];
  if (v251)
  {
    v252 = (v246 + 4);
    do
    {
      sub_100026064(v252, &v365);
      sub_1000E5A50(&v365);
      sub_100019CCC(&v365);
      v252 += 40;
      --v251;
    }

    while (v251);
  }

  v253 = swift_allocObject();
  *(v253 + 16) = xmmword_10020CCE0;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v254 = sub_10004BD98(&v365, *(&v366 + 1));
  v255 = __chkstk_darwin(v254);
  v257 = (v345 - ((v256 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v258 + 16))(v257, v255);
  v259 = sub_10004BD98(&v363, v364);
  v260 = __chkstk_darwin(v259);
  v262 = (v345 - ((v261 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v263 + 16))(v262, v260);
  v264 = sub_100101FF8(*v257, *v262, type metadata accessor for SubscriptionsListUIRoute, 144, sub_100100B38);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  v265 = 0;
  if (v264)
  {
    v265 = type metadata accessor for SubscriptionsListUIRoute();
    v266 = &off_100284C10;
  }

  else
  {
    v266 = 0;
    *(v253 + 40) = 0;
    *(v253 + 48) = 0;
  }

  *(v253 + 32) = v264;
  *(v253 + 56) = v265;
  *(v253 + 64) = v266;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v267 = sub_10004BD98(&v365, *(&v366 + 1));
  v268 = __chkstk_darwin(v267);
  v270 = (v345 - ((v269 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v271 + 16))(v270, v268);
  v272 = sub_10004BD98(&v363, v364);
  v273 = __chkstk_darwin(v272);
  v275 = (v345 - ((v274 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v276 + 16))(v275, v273);
  v277 = sub_100101FF8(*v270, *v275, type metadata accessor for EditSubscriptionUIRoute, 144, sub_100100E38);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  v278 = 0;
  if (v277)
  {
    v278 = type metadata accessor for EditSubscriptionUIRoute();
    v279 = &off_100284C10;
  }

  else
  {
    v279 = 0;
    *(v253 + 80) = 0;
    *(v253 + 88) = 0;
  }

  *(v253 + 72) = v277;
  *(v253 + 96) = v278;
  *(v253 + 104) = v279;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v280 = sub_10004BD98(&v365, *(&v366 + 1));
  v281 = __chkstk_darwin(v280);
  v283 = (v345 - ((v282 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v284 + 16))(v283, v281);
  v285 = sub_10004BD98(&v363, v364);
  v286 = __chkstk_darwin(v285);
  v288 = (v345 - ((v287 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v289 + 16))(v288, v286);
  v290 = sub_100101FF8(*v283, *v288, type metadata accessor for EditSubscriptionHelperRoute, 128, sub_100101138);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v253 + 136) = type metadata accessor for EditSubscriptionHelperRoute();
  *(v253 + 144) = &off_100284C10;
  *(v253 + 112) = v290;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v291 = sub_10004BD98(&v365, *(&v366 + 1));
  v292 = __chkstk_darwin(v291);
  v294 = (v345 - ((v293 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v295 + 16))(v294, v292);
  v296 = sub_10004BD98(&v363, v364);
  v297 = __chkstk_darwin(v296);
  v299 = (v345 - ((v298 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v300 + 16))(v299, v297);
  v301 = sub_100101FF8(*v294, *v299, type metadata accessor for DisableAutoRenewRoute, 128, sub_100101738);
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v253 + 176) = type metadata accessor for DisableAutoRenewRoute();
  *(v253 + 184) = &off_100284C10;
  *(v253 + 152) = v301;
  v302 = v351;
  sub_10016036C(0x697263736275732FLL, 0xEE00736E6F697470, 0x7069726373627573, 0xED0000736E6F6974, 1819112552, 0xE400000000000000, v351);
  if (sub_10001C990(v302, 1, v232) == 1)
  {
    sub_1000374B8(v302, &qword_1002B4118, &qword_10020CDA8);
    *(v253 + 192) = 0u;
    *(v253 + 208) = 0u;
    *(v253 + 224) = 0;
  }

  else
  {
    *(v253 + 216) = v232;
    *(v253 + 224) = &off_10028F4D8;
    sub_1000629FC((v253 + 192));
    sub_100103A00();
  }

  v303 = v353;
  v304 = v352;
  sub_10016036C(0xD000000000000020, 0x8000000100227C90, 0x7069726373627573, 0xED0000736E6F6974, 29546, 0xE200000000000000, v352);
  if (sub_10001C990(v304, 1, v232) == 1)
  {
    sub_1000374B8(v304, &qword_1002B4118, &qword_10020CDA8);
    *(v253 + 232) = 0u;
    *(v253 + 248) = 0u;
    *(v253 + 264) = 0;
  }

  else
  {
    *(v253 + 256) = v232;
    *(v253 + 264) = &off_10028F4D8;
    sub_1000629FC((v253 + 232));
    sub_100103A00();
  }

  sub_10016036C(0xD000000000000020, 0x8000000100227CC0, 0x7069726373627573, 0xED0000736E6F6974, 7566179, 0xE300000000000000, v303);
  if (sub_10001C990(v303, 1, v232) == 1)
  {
    sub_1000374B8(v303, &qword_1002B4118, &qword_10020CDA8);
    *(v253 + 272) = 0u;
    *(v253 + 288) = 0u;
    *(v253 + 304) = 0;
  }

  else
  {
    *(v253 + 296) = v232;
    *(v253 + 304) = &off_10028F4D8;
    sub_1000629FC((v253 + 272));
    sub_100103A00();
  }

  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v305 = sub_10004BD98(&v365, *(&v366 + 1));
  v306 = __chkstk_darwin(v305);
  (*(v308 + 16))(v345 - ((v307 + 15) & 0xFFFFFFFFFFFFFFF0), v306);
  v309 = sub_10004BD98(&v363, v364);
  v310 = __chkstk_darwin(v309);
  (*(v312 + 16))(v345 - ((v311 + 15) & 0xFFFFFFFFFFFFFFF0), v310);
  v313 = sub_100101E90();
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v253 + 336) = type metadata accessor for PriceIncreaseUIRoute();
  *(v253 + 344) = &off_100284C10;
  *(v253 + 312) = v313;
  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v314 = sub_10004BD98(&v365, *(&v366 + 1));
  v315 = __chkstk_darwin(v314);
  (*(v317 + 16))(v345 - ((v316 + 15) & 0xFFFFFFFFFFFFFFF0), v315);
  v318 = sub_10004BD98(&v363, v364);
  v319 = __chkstk_darwin(v318);
  (*(v321 + 16))(v345 - ((v320 + 15) & 0xFFFFFFFFFFFFFFF0), v319);
  v322 = sub_1001021A4();
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v253 + 376) = type metadata accessor for PriceIncreaseHelperRoute();
  *(v253 + 384) = &off_100284C10;
  *(v253 + 352) = v322;
  v323 = v354;
  sub_10016036C(0xD000000000000021, 0x8000000100227CF0, 0x6E692D6563697270, 0xEE00657361657263, 29546, 0xE200000000000000, v354);
  if (sub_10001C990(v323, 1, v232) == 1)
  {
    sub_1000374B8(v323, &qword_1002B4118, &qword_10020CDA8);
    *(v253 + 392) = 0u;
    *(v253 + 408) = 0u;
    *(v253 + 424) = 0;
  }

  else
  {
    *(v253 + 416) = v232;
    *(v253 + 424) = &off_10028F4D8;
    sub_1000629FC((v253 + 392));
    sub_100103A00();
  }

  v324 = v355;
  sub_10016036C(0xD000000000000021, 0x8000000100227D20, 0x6E692D6563697270, 0xEE00657361657263, 7566179, 0xE300000000000000, v355);
  if (sub_10001C990(v324, 1, v232) == 1)
  {
    sub_1000374B8(v324, &qword_1002B4118, &qword_10020CDA8);
    *(v253 + 432) = 0u;
    *(v253 + 448) = 0u;
    *(v253 + 464) = 0;
  }

  else
  {
    *(v253 + 456) = v232;
    *(v253 + 464) = &off_10028F4D8;
    sub_1000629FC((v253 + 432));
    sub_100103A00();
  }

  sub_100026064(v1 + 64, &v365);
  sub_100026064(v1 + 104, &v363);
  v325 = sub_10004BD98(&v365, *(&v366 + 1));
  v326 = __chkstk_darwin(v325);
  (*(v328 + 16))(v345 - ((v327 + 15) & 0xFFFFFFFFFFFFFFF0), v326);
  v329 = sub_10004BD98(&v363, v364);
  v330 = __chkstk_darwin(v329);
  (*(v332 + 16))(v345 - ((v331 + 15) & 0xFFFFFFFFFFFFFFF0), v330);
  v333 = sub_1001021A4();
  sub_100019CCC(&v363);
  sub_100019CCC(&v365);
  *(v253 + 496) = type metadata accessor for BillingErrorHelperRoute();
  *(v253 + 504) = &off_100284C10;
  *(v253 + 472) = v333;
  v334 = v356;
  sub_10016036C(0x676E696C6C69622FLL, 0xED0000726F727245, 0x2D676E696C6C6962, 0xED0000726F727265, 1819112552, 0xE400000000000000, v356);
  if (sub_10001C990(v334, 1, v232) == 1)
  {
    sub_1000374B8(v334, &qword_1002B4118, &qword_10020CDA8);
    *(v253 + 512) = 0u;
    *(v253 + 528) = 0u;
    *(v253 + 544) = 0;
  }

  else
  {
    *(v253 + 536) = v232;
    *(v253 + 544) = &off_10028F4D8;
    sub_1000629FC((v253 + 512));
    sub_100103A00();
  }

  v335 = v359;
  v336 = v357;
  sub_10016036C(0xD000000000000020, 0x8000000100227D50, 0x2D676E696C6C6962, 0xED0000726F727265, 29546, 0xE200000000000000, v357);
  if (sub_10001C990(v336, 1, v232) == 1)
  {
    sub_1000374B8(v336, &qword_1002B4118, &qword_10020CDA8);
    *(v253 + 552) = 0u;
    *(v253 + 568) = 0u;
    *(v253 + 584) = 0;
  }

  else
  {
    *(v253 + 576) = v232;
    *(v253 + 584) = &off_10028F4D8;
    sub_1000629FC((v253 + 552));
    sub_100103A00();
  }

  sub_10016036C(0xD000000000000020, 0x8000000100227D80, 0x2D676E696C6C6962, 0xED0000726F727265, 7566179, 0xE300000000000000, v335);
  if (sub_10001C990(v335, 1, v232) == 1)
  {
    sub_1000374B8(v335, &qword_1002B4118, &qword_10020CDA8);
    *(v253 + 592) = 0u;
    *(v253 + 608) = 0u;
    *(v253 + 624) = 0;
  }

  else
  {
    *(v253 + 616) = v232;
    *(v253 + 624) = &off_10028F4D8;
    sub_1000629FC((v253 + 592));
    sub_100103A00();
  }

  v337 = _swiftEmptyArrayStorage;
  for (k = 32; k != 632; k += 40)
  {
    sub_1000ACFAC();
    v360 = v365;
    v361 = v366;
    v362 = v367;
    if (*(&v366 + 1))
    {
      sub_10002DD3C(&v360, &v363);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000325D4();
        v337 = v340;
      }

      v339 = v337[2];
      if (v339 >= v337[3] >> 1)
      {
        sub_1000325D4();
        v337 = v341;
      }

      v337[2] = v339 + 1;
      sub_10002DD3C(&v363, &v337[5 * v339 + 4]);
    }

    else
    {
      sub_1000374B8(&v360, &qword_1002B4130, &qword_10020CDC8);
    }
  }

  swift_setDeallocating();
  sub_1001E56A0();
  v342 = v337[2];
  if (v342)
  {
    v343 = (v337 + 4);
    do
    {
      sub_100026064(v343, &v365);
      sub_1000E5A50(&v365);
      sub_100019CCC(&v365);
      v343 += 40;
      --v342;
    }

    while (v342);
  }
}

void sub_1000F98E4(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*sub_10001AE68((v2 + 64), *(v2 + 88)) + 24) + 16);

  os_unfair_lock_lock(v3);
  v4 = sub_10007B9BC();
  sub_1000793C4(v4, v5);
  os_unfair_lock_unlock(v3);

  sub_100103C20();
  sub_10007B9A4();
  sub_10008CEC4();
}

uint64_t sub_1000F9984@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1001F6508();
  sub_10001A278();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100023510();
  v14 = v13 - v12;
  if (!swift_weakLoadStrong())
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v56 = v3;
    v57 = a2;
    v15 = sub_1001F6688();
    sub_100019C94(v15, qword_1002E6180);
    v16 = sub_1001F6668();
    v17 = sub_1001F72A8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Creating temporary buy route to simulate off-device buy.", v18, 2u);
      sub_100021754();
    }

    sub_100026064(v5 + 64, v59);
    sub_100026064(v5 + 104, v58);
    sub_1000183C4(&qword_1002B4120, &unk_10020CDB0);
    v55[0] = swift_allocObject();
    sub_10004BD98(v59, v59[3]);
    v55[1] = v55;
    sub_10002DFFC();
    __chkstk_darwin(v19);
    sub_100023510();
    v22 = (v21 - v20);
    (*(v23 + 16))(v21 - v20);
    sub_10004BD98(v58, v58[3]);
    sub_10002DFFC();
    __chkstk_darwin(v24);
    v26 = sub_100103BE8(v25, v55[0]);
    v27(v26);
    v28 = *v22;
    v29 = *v4;

    sub_100102438(v30, v28, v29, v55[0]);
    sub_100019CCC(v58);
    sub_100019CCC(v59);
    v4 = v56;
    a2 = v57;
  }

  sub_1001F64E8();
  sub_1000EFC84(a1, a2);
  if (v4)
  {
    v31 = sub_10007B9A4();
    v32(v31);

    sub_100103F44();
    v33 = sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    if (sub_100103C94(v33, v34, v35, &type metadata for InAppBuyRouteError) && LOBYTE(v58[0]) == 1)
    {

      sub_100050490();
      sub_10002E0D8();
      swift_allocError();
      *v36 = 0;
LABEL_24:
      swift_willThrow();
    }

    v43 = sub_100103F44();
    if (sub_100103C94(v43, v44, v45, &type metadata for ConfigurationError))
    {

      v46 = v58[0];
      sub_100050490();
LABEL_23:
      sub_10002E0D8();
      swift_allocError();
      *v53 = v46;
      goto LABEL_24;
    }

    v47 = sub_100103F44();
    if (sub_100103C94(v47, v48, v49, &type metadata for TransactionError))
    {

      v46 = v58[0];
      sub_10005C288();
      goto LABEL_23;
    }

    v50 = sub_100103F44();
    if (sub_100103C94(v50, v51, v52, &type metadata for FailureType))
    {

      v46 = v58[0];
      sub_1001032F0();
      goto LABEL_23;
    }

    sub_10005C288();
    sub_10002E0D8();
    swift_allocError();
    *v54 = 3;
    swift_willThrow();
  }

  else
  {
    v57 = v8;
    v37 = a2;

    if (qword_1002AC478 != -1)
    {
      sub_10007B910();
      swift_once();
    }

    v39 = *a1;
    v38 = a1[1];
    sub_100130A24(v39, v38);
    sub_1001F6428();
    v40 = *(v37 + 40);
    if (v41 < sub_1000BFDA8() || (*(v40 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels) & 2) != 0)
    {
      sub_1000FC3FC(0, v39, v38, 0xD000000000000011, 0x8000000100227F40);

      return (*(v10 + 8))(v14, v57);
    }

    else
    {
      (*(v10 + 8))(v14, v57);
    }
  }
}

uint64_t sub_1000F9F44@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for PurchaseConfiguration(0);
  sub_100023520();
  __chkstk_darwin(v5);
  sub_100099484();
  __chkstk_darwin(v6);
  v8 = (&v23 - v7);
  sub_1001F6158();
  swift_allocObject();
  sub_1001F6148();
  sub_1001038BC(&qword_1002B4138, type metadata accessor for PurchaseConfiguration, &unk_100212AA0);
  sub_1001F6138();
  if (v3)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v9 = sub_1001F6688();
    sub_100019C94(v9, qword_1002E6180);
    swift_errorRetain();
    v10 = sub_1001F6668();
    v11 = sub_1001F7298();

    if (os_log_type_enabled(v10, v11))
    {
      sub_100099504();
      v12 = swift_slowAlloc();
      sub_100103CF0();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      sub_100103EE8();
      _os_log_impl(v15, v16, v17, v18, v19, v20);
      sub_1000374B8(v13, &unk_1002BA650, &unk_100203AA0);
      sub_100021754();

      sub_100099474();
    }

    sub_10005C288();
    sub_10002E0D8();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();
  }

  else
  {
    sub_100103A00();
    sub_1000F9984(v8, a3);
    sub_1001039A8(v8, type metadata accessor for PurchaseConfiguration);
  }
}

uint64_t sub_1000FA204(uint64_t a1)
{
  v2 = a1;
  sub_100103C20();
  v3 = sub_100103D60();
  if (v3)
  {
    v4 = v3;
    switch(sub_1000C257C())
    {
      case 3u:

        goto LABEL_7;
      default:
        v7 = sub_1001F7EA8();

        if (v7)
        {
LABEL_7:
          if (v2)
          {
            v9 = sub_1000BFC14();
            v11 = v10;
          }

          else
          {
            v9 = 0;
            v11 = 0;
          }

          sub_1000C1ACC(v9, v11);

          sub_1000C1B88(5u);
          sub_1000AD62C((v1 + 104), *(v1 + 128));
          v12 = sub_10008EA08(v4, 1);
          if (v12 == 4)
          {

            return 0;
          }

          v13 = v12;
          sub_10005C288();
          sub_10002E0D8();
          v5 = swift_allocError();
          *v14 = v13;
        }

        else
        {
          sub_10005C288();
          sub_10002E0D8();
          v5 = swift_allocError();
          *v8 = 1;
        }

        break;
    }
  }

  else
  {
    sub_10005C288();
    sub_10002E0D8();
    v5 = swift_allocError();
    sub_100103D04(v5, v6);
  }

  return v5;
}

uint64_t sub_1000FA414()
{
  v1 = v0;
  sub_100037B94();
  if (qword_1002AC478 != -1)
  {
    sub_10007B910();
    swift_once();
  }

  v2 = qword_1002E60D8;
  v3 = sub_100037B7C();
  sub_1001323E4(v3, v4, 0, v5, v6, v7, v8, v9);
  sub_1000AD62C((v1 + 64), *(v1 + 88));
  v10 = *(*(v2 + 24) + 16);

  os_unfair_lock_lock(v10);
  sub_100103E6C();
  sub_1000794A8(v11, v12, v13);
  os_unfair_lock_unlock(v10);

  return 0;
}

uint64_t sub_1000FA4D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_100103C40();
  sub_100103C20();
  v6 = sub_100103D60();
  if (v6)
  {
    v7 = v6;
    sub_1000AD62C((v4 + 104), *(v4 + 128));
    v8 = sub_10008CB2C(v7, a4 & 1);
    if (v8 == 4)
    {

      return 0;
    }

    else
    {
      v11 = v8;
      sub_10005C288();
      sub_10002E0D8();
      v9 = swift_allocError();
      *v12 = v11;
    }
  }

  else
  {
    sub_10005C288();
    sub_10002E0D8();
    v9 = swift_allocError();
    sub_100103D04(v9, v10);
  }

  return v9;
}

uint64_t sub_1000FA5B8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  sub_1001F6508();
  sub_10001A278();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100023510();
  sub_10001AE68(v3 + 8, v3[11]);
  v11 = sub_100103C50();
  sub_1000795A8(v11, v12);
  v13 = sub_1000EDE14(a1, a2);

  if (!v13)
  {
    goto LABEL_9;
  }

  HIDWORD(v45) = a3;
  type metadata accessor for OctaneSubscription();
  if (!swift_dynamicCastClass())
  {

LABEL_9:
    sub_100050490();
    sub_10002E0D8();
    v22 = swift_allocError();
    *v23 = 0;
    return v22;
  }

  sub_10001AE68(v3 + 13, v3[16]);
  sub_1001F64E8();
  sub_100103E6C();
  v14 = sub_10008D53C();
  v15 = *(v9 + 8);
  v16 = sub_1000701E4();
  v15(v16);
  if (v14)
  {
    sub_1001F64E8();
    v17 = sub_1000C18DC();
    v18 = sub_1000701E4();
    v15(v18);
    if ((v45 & 0x100000000) != 0)
    {
      if ((v17 & 1) == 0)
      {
LABEL_21:

        return 0;
      }

      sub_1001F64F8();
      sub_1001F6428();
      v20 = v19;
      v21 = sub_1000701E4();
      v15(v21);
      sub_1000C223C(v20, 0);
      sub_1000C1ACC(0, 0);
      if (sub_1000C152C() != 5)
      {
        sub_1000C1B88(2u);
      }
    }

    else
    {
      sub_1001F64F8();
      sub_1001F6428();
      v26 = v25;
      v27 = sub_1000701E4();
      v15(v27);
      sub_1000C223C(v26, 0);
    }

    sub_1000AD62C(v4 + 13, v4[16]);
    sub_10008EA08(v14, 1);
    if ((v45 & 0x100000000) == 0)
    {
      sub_10001AE68(v4 + 8, v4[11]);
      sub_100103C50();
      if (sub_10007AB88())
      {
        sub_1000AD62C(v4 + 13, v4[16]);
        sub_10008EF68(v14, v28, v29, v30, v31, v32, v33);
      }

      else
      {
        if (qword_1002AC420 != -1)
        {
          swift_once();
        }

        sub_10004EBCC(v14);
        sub_1000AD62C(v4 + 13, v4[16]);
        sub_10008BF94(v14, 0, v34, v35, v36, v37, v38, v39, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
      }

      if (qword_1002AC478 != -1)
      {
        sub_10007B910();
        swift_once();
      }

      v41 = sub_100037B7C();
      sub_100130A24(v41, v42);
    }

    goto LABEL_21;
  }

  sub_10005C288();
  sub_10002E0D8();
  v22 = swift_allocError();
  sub_100103D04(v22, v24);

  return v22;
}

void sub_1000FA930(uint64_t a1)
{
  if (qword_1002AC478 != -1)
  {
    sub_10007B910();
    swift_once();
  }

  sub_1001318E0(a1);
}

uint64_t sub_1000FA984()
{
  sub_100037B94();
  sub_100103C20();
  v0 = sub_100037B7C();
  v2 = sub_10008E918(v0, v1);
  v73 = sub_10013B560();
  if (!v73)
  {

    goto LABEL_52;
  }

  v3 = 0;
  v72 = v2 & 0xC000000000000001;
  v70 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = _swiftEmptyDictionarySingleton;
  v71 = v2;
  do
  {
    if (v72)
    {
      sub_10007B9BC();
      v5 = sub_1001F7808();
    }

    else
    {
      if (v3 >= *(v70 + 16))
      {
        goto LABEL_62;
      }

      v5 = *(v2 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
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
      goto LABEL_67;
    }

    v8 = sub_1000C5388(15);
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = v8;
    v11 = v9;
    if (v4[2] && (v12 = sub_100103EB8(), (v13 & 1) != 0))
    {
      v14 = *(v4[7] + 8 * v12);
      if (v14 >= sub_1000C1A68())
      {

LABEL_26:

        goto LABEL_27;
      }

      v15 = *&v6[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___id];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v75 = v4;
      v17 = v10;
      sub_100103EB8();
      sub_100103F10();
      if (v20)
      {
        goto LABEL_64;
      }

      v21 = v18;
      v22 = v19;
      sub_1000183C4(&qword_1002B4158, qword_10020CE60);
      if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v4))
      {
        v23 = sub_10011108C(v17);
        v2 = v71;
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_68;
        }

        v21 = v23;
      }

      else
      {
        v2 = v71;
      }

      v4 = v75;
      if (v22)
      {
        *(*(v75 + 56) + 8 * v21) = v15;
      }

      else
      {
        sub_100103EFC(v75 + 8 * (v21 >> 6));
        v39 = (v38 + 16 * v21);
        *v39 = v17;
        v39[1] = v11;
        *(v4[7] + 8 * v21) = v15;
        v40 = v4[2];
        v20 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v20)
        {
          goto LABEL_65;
        }

        v4[2] = v41;
      }

      v7 = v3 + 1;
    }

    else
    {
      v25 = sub_1000C1A68();
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *&v75 = v4;
      v27 = v10;
      sub_100103EB8();
      sub_100103F10();
      if (v20)
      {
        goto LABEL_61;
      }

      v30 = v28;
      v31 = v29;
      sub_1000183C4(&qword_1002B4158, qword_10020CE60);
      if (sub_1001F7A98(v26, v4))
      {
        v32 = sub_10011108C(v27);
        if ((v31 & 1) != (v33 & 1))
        {
LABEL_68:
          result = sub_1001F7FC8();
          __break(1u);
          return result;
        }

        v30 = v32;
      }

      if (v31)
      {

        v4 = v75;
        *(*(v75 + 56) + 8 * v30) = v25;
      }

      else
      {
        v4 = v75;
        sub_100103EFC(v75 + 8 * (v30 >> 6));
        v35 = (v34 + 16 * v30);
        *v35 = v27;
        v35[1] = v11;
        *(v4[7] + 8 * v30) = v25;

        v36 = v4[2];
        v20 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v20)
        {
          goto LABEL_63;
        }

        v4[2] = v37;
      }

      v7 = v3 + 1;
      v2 = v71;
    }

LABEL_27:
    ++v3;
  }

  while (v7 != v73);
  if (v73 < 1)
  {
    goto LABEL_66;
  }

  v42 = 0;
  v43 = _swiftEmptyArrayStorage;
  do
  {
    if (v72)
    {
      v44 = sub_1001F7808();
    }

    else
    {
      v44 = *(v2 + 8 * v42 + 32);
    }

    v45 = v44;
    v46 = sub_1000BFF88();
    v47 = sub_1000C5388(15);
    if (v48)
    {
      v49 = sub_1001F1394(v47, v48, v4);
      v51 = v50;

      if ((v51 & 1) == 0 && sub_1000C1A68() == v49)
      {
        v76 = &type metadata for Bool;
        LOBYTE(v75) = 1;
        sub_10003708C(&v75, &v74);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1001E5A4C();
      }

      v2 = v71;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032BE8();
      v43 = v53;
    }

    v52 = v43[2];
    if (v52 >= v43[3] >> 1)
    {
      sub_100032BE8();
      v43 = v54;
    }

    ++v42;

    v43[2] = v52 + 1;
    v43[v52 + 4] = v46;
  }

  while (v73 != v42);

LABEL_52:
  v55 = objc_opt_self();
  sub_1000183C4(&qword_1002ADB98, &qword_1002008D0);
  isa = sub_1001F6F18().super.isa;

  *&v75 = 0;
  v57 = [v55 dataWithJSONObject:isa options:0 error:&v75];

  v58 = v75;
  if (v57)
  {
    v59 = sub_1001F63C8();
  }

  else
  {
    v60 = v58;
    sub_1001F61B8();

    swift_willThrow();
    if (qword_1002AC510 != -1)
    {
LABEL_67:
      sub_1000216F8();
      swift_once();
    }

    v61 = sub_1001F6688();
    sub_10009951C(v61, qword_1002E6180);
    swift_errorRetain();
    v62 = sub_1001F6668();
    v63 = sub_1001F7298();

    if (os_log_type_enabled(v62, v63))
    {
      sub_100099504();
      v64 = swift_slowAlloc();
      v65 = sub_10003A894();
      *&v75 = v65;
      *v64 = 136446210;
      swift_getErrorValue();
      v66 = sub_1001F7FE8();
      v68 = sub_1000E4544(v66, v67, &v75);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Error serializing transaction dictionaries: %{public}s", v64, 0xCu);
      sub_100019CCC(v65);
      sub_100021754();

      sub_100099474();
    }

    else
    {
    }

    return 0;
  }

  return v59;
}

uint64_t sub_1000FB050(uint64_t a1)
{
  sub_100103C20();
  v2 = sub_10008E840();
  if (v2)
  {
    v3 = v2;
    sub_1000AD62C((v1 + 104), *(v1 + 128));
    v4 = 0;
    sub_10008E384(v3, 1, 0);
  }

  else
  {
    sub_10005C288();
    sub_10002E0D8();
    v4 = swift_allocError();
    sub_100103D04(v4, v5);
  }

  return v4;
}

uint64_t sub_1000FB114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_100103C40();
  sub_100103C20();
  v6 = sub_100103D60();
  if (v6)
  {
    v7 = v6;
    sub_1000AD62C((v4 + 104), *(v4 + 128));
    v8 = a4(v7);
    if (v8 == 4)
    {

      return 0;
    }

    else
    {
      v11 = v8;
      sub_10005C288();
      sub_10002E0D8();
      v9 = swift_allocError();
      *v12 = v11;
    }
  }

  else
  {
    sub_10005C288();
    sub_10002E0D8();
    v9 = swift_allocError();
    sub_100103D04(v9, v10);
  }

  return v9;
}

uint64_t sub_1000FB1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000AD62C((v4 + 64), *(v4 + 88));
  v7 = sub_10007B9BC();
  return sub_100079C88(v7, v8, 6, a3, a4);
}

void sub_1000FB238(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  sub_1000AD62C((v4 + 64), *(v4 + 88));
  if ((sub_10007A620(a1, a2, a3, a4) & 1) == 0)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v10 = sub_1001F6688();
    sub_10009951C(v10, qword_1002E6180);

    v11 = sub_1001F6668();
    v12 = sub_1001F72B8();

    if (os_log_type_enabled(v11, v12))
    {
      sub_100099504();
      v13 = swift_slowAlloc();
      v25 = sub_10003A894();
      *v13 = 136315138;
      v14 = sub_100037B7C();
      *(v13 + 4) = sub_1000E4544(v14, v15, v16);
      sub_100103EE8();
      _os_log_impl(v17, v18, v19, v20, v21, v22);
      sub_100019CCC(v25);
      sub_100021754();

      sub_100099474();
    }

    sub_10001AE68((v5 + 104), *(v5 + 128));
    v23 = sub_100103C50();
    sub_1000910F8(v23, v24);
  }

  sub_10002E230();
}

void sub_1000FB38C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_100103C20();
  sub_10007B9BC();
  v6 = sub_10008E840();
  if (v6)
  {
    v7 = v6;
    sub_1000AD62C((v4 + 104), *(v4 + 128));
    sub_10008F8E8(v7, a4 & 1);
  }

  else
  {
    sub_10005C288();
    sub_10002E0D8();
    v8 = swift_allocError();
    sub_100103D04(v8, v9);
  }
}

uint64_t sub_1000FB424(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_100103C40();
  sub_100103C20();
  v6 = sub_100103D60();
  if (v6)
  {
    v7 = v6;
    sub_1000AD62C((v4 + 104), *(v4 + 128));
    sub_10008FD70(v7, a4 & 1);

    return 0;
  }

  else
  {
    sub_10005C288();
    sub_10002E0D8();
    v9 = swift_allocError();
    sub_100103D04(v9, v8);
  }

  return v9;
}

uint64_t sub_1000FB65C()
{
  v1 = v0;
  sub_100037B94();
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v2 = sub_1001F6688();
  sub_100019C94(v2, qword_1002E6180);

  v3 = sub_1001F6668();
  v4 = sub_1001F72B8();

  if (os_log_type_enabled(v3, v4))
  {
    sub_100099504();
    v5 = swift_slowAlloc();
    v33 = sub_10003A894();
    *v5 = 136315138;
    v6 = sub_100037B7C();
    *(v5 + 4) = sub_1000E4544(v6, v7, v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "appstored is checking for messages for %s", v5, 0xCu);
    sub_100019CCC(v33);
    sub_100021754();

    sub_100021754();
  }

  sub_10001AE68(v1 + 13, v1[16]);
  sub_100103C50();
  v9 = sub_10008FFB8();
  if (!v10)
  {

    v21 = sub_1001F6668();
    sub_1001F72B8();

    if (sub_100103F5C())
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v11 = v9;
  v12 = v10;
  v13 = *(v1[6] + 16);

  os_unfair_lock_lock(v13);
  os_unfair_lock_unlock(v13);

  sub_100103E6C();
  v18 = sub_1000B4DDC(v14, v15, v16, v11, v12, v17);

  if (!v18)
  {

    v21 = sub_1001F6668();
    sub_1001F72B8();

    if (sub_100103F5C())
    {
LABEL_11:
      sub_100099504();
      v22 = swift_slowAlloc();
      v23 = sub_10003A894();
      *v22 = 136315138;
      v24 = sub_100037B7C();
      *(v22 + 4) = sub_1000E4544(v24, v25, v26);
      sub_100103DB8();
      _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
      sub_100019CCC(v23);
      sub_100099474();

      sub_100021754();
    }

LABEL_12:

    return 0;
  }

  sub_1001DEFAC(v18);
  v20 = v19;

  return v20;
}

uint64_t sub_1000FB934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v6 = sub_1001F6688();
  sub_10009951C(v6, qword_1002E6180);

  v7 = sub_1001F6668();
  v8 = sub_1001F72B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v36 = sub_10003A894();
    *v9 = 136315394;
    v10 = sub_100037B7C();
    *(v9 + 4) = sub_1000E4544(v10, v11, v12);
    *(v9 + 12) = 2048;
    *(v9 + 14) = v5 + 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "storekitd is checking for messages for %s with type %ld", v9, 0x16u);
    sub_100019CCC(v36);
    sub_100021754();

    sub_100021754();
  }

  if ((v5 - 1) > 2u)
  {
    v28 = sub_1001F6668();
    v29 = sub_1001F72B8();
    if (sub_100099534(v29))
    {
      sub_100099504();
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = 1;
      sub_100103E78();
      _os_log_impl(v31, v32, v33, v34, v30, 0xCu);
      sub_100021754();
    }

    return 0;
  }

  sub_1000AD62C((v3 + 104), *(v3 + 128));
  sub_100103E6C();
  v16 = sub_100090FDC(v13, v14, v15);
  if (!v17)
  {
    return 0;
  }

  v18 = v16;
  v19 = v17;
  v20 = *(*(v4 + 48) + 16);

  os_unfair_lock_lock(v20);
  os_unfair_lock_unlock(v20);

  sub_100103E6C();
  v25 = sub_1000B4DDC(v21, v22, v23, v18, v19, v24);

  if (!v25)
  {
    return 0;
  }

  sub_1001DEFAC(v25);
  v27 = v26;

  return v27;
}

uint64_t sub_1000FBE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000AD62C((v4 + 64), *(v4 + 88));
  sub_100079A18(a1, 0, a2, a3, a4, v9, v10, v11);
  return 0;
}

uint64_t sub_1000FBE8C()
{
  sub_100019CCC((v0 + 64));
  sub_100019CCC((v0 + 104));

  return swift_weakDestroy();
}

uint64_t sub_1000FBEC4()
{
  v0 = sub_1000E5CF8();
  sub_100019CCC((v0 + 64));
  sub_100019CCC((v0 + 104));
  swift_weakDestroy();
  return v0;
}

uint64_t sub_1000FBF04()
{
  sub_1000FBEC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000FBF88()
{
  v1 = *(*(v0 + 48) + 16);

  os_unfair_lock_lock(v1);
  v2 = *(v0 + 40);
  os_unfair_lock_unlock(v1);

  return v2;
}

void sub_1000FBFE4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a2 + 16))
  {
    goto LABEL_4;
  }

  if (*(v4 + 56))
  {
    swift_getKeyPath();
    sub_1000A3FC4();
    v6 = swift_allocObject();
    sub_100103D7C(v6);

    sub_10007B9A4();
    sub_1000FC704();

    swift_unknownObjectRelease();

LABEL_4:
    sub_10002E230();
    return;
  }

  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v7 = sub_1001F6688();
  sub_10009951C(v7, qword_1002E6180);
  oslog = sub_1001F6668();
  v8 = sub_1001F7298();
  if (os_log_type_enabled(oslog, v8))
  {
    sub_100099504();
    v9 = swift_slowAlloc();
    sub_100103CF0();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    sub_1000ACEB0();
    if (a1)
    {
      v11 = 37;
    }

    else
    {
      v11 = 36;
    }

    v12.super.super.isa = sub_1001F73C8(v11).super.super.isa;
    *(v9 + 4) = v12;
    v10->super.super.isa = v12.super.super.isa;
    sub_100103F24(&_mh_execute_header, v13, v14, "Unable to communicate with daemon to simulate push %@", v15, v16, v17, v18, v21, oslog);
    sub_1000374B8(v10, &unk_1002BA650, &unk_100203AA0);
    sub_100021754();

    sub_100021754();
  }

  sub_10002E230();
}

void sub_1000FC1F0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a2 + 16))
  {
    goto LABEL_4;
  }

  if (*(v4 + 56))
  {
    swift_getKeyPath();
    sub_1000A3FC4();
    v6 = swift_allocObject();
    sub_100103D7C(v6);

    sub_10007B9A4();
    sub_1000FC704();

    swift_unknownObjectRelease();

LABEL_4:
    sub_10002E230();
    return;
  }

  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v7 = sub_1001F6688();
  sub_10009951C(v7, qword_1002E6180);
  oslog = sub_1001F6668();
  v8 = sub_1001F7298();
  if (os_log_type_enabled(oslog, v8))
  {
    sub_100099504();
    v9 = swift_slowAlloc();
    sub_100103CF0();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    sub_1000ACEB0();
    if (a1)
    {
      v11 = 37;
    }

    else
    {
      v11 = 36;
    }

    v12.super.super.isa = sub_1001F73C8(v11).super.super.isa;
    *(v9 + 4) = v12;
    v10->super.super.isa = v12.super.super.isa;
    sub_100103F24(&_mh_execute_header, v13, v14, "Unable to communicate with daemon to simulate push %@", v15, v16, v17, v18, v21, oslog);
    sub_1000374B8(v10, &unk_1002BA650, &unk_100203AA0);
    sub_100021754();

    sub_100021754();
  }

  sub_10002E230();
}

void sub_1000FC3FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 56);
  if (v7)
  {
    v12 = a1 & 1;
    KeyPath = swift_getKeyPath();
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v12;
    *(v14 + 32) = a4;
    *(v14 + 40) = a5;
    *(v14 + 48) = v7;
    swift_unknownObjectRetain_n();

    sub_1000FC994(a2, a3, KeyPath, sub_100103358, v14);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v15 = sub_1001F6688();
    sub_100019C94(v15, qword_1002E6180);
    oslog = sub_1001F6668();
    v16 = sub_1001F7298();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      sub_1000ACEB0();
      if (a1)
      {
        v19 = 37;
      }

      else
      {
        v19 = 36;
      }

      v20.super.super.isa = sub_1001F73C8(v19).super.super.isa;
      *(v17 + 4) = v20;
      v18->super.super.isa = v20.super.super.isa;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Unable to communicate with daemon to simulate push %@", v17, 0xCu);
      sub_1000374B8(v18, &unk_1002BA650, &unk_100203AA0);
    }
  }
}

uint64_t sub_1000FC654(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

uint64_t sub_1000FC698(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

void sub_1000FC704()
{
  sub_100037C08();
  v28 = v1;
  v3 = v2;
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1001F6738();
  sub_10001A278();
  __chkstk_darwin(v13);
  sub_100023510();
  sub_1001F6768();
  sub_10001A278();
  v29 = v15;
  v30 = v14;
  __chkstk_darwin(v14);
  sub_100023510();
  v18 = v17 - v16;
  sub_1000A3FC4();
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = v10;
  v19[4] = v8;
  v19[5] = v6;
  v19[6] = v12;
  v31[4] = v3;
  v31[5] = v19;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 1107296256;
  v31[2] = sub_1000172C0;
  v31[3] = v28;
  v20 = _Block_copy(v31);

  sub_1001F6758();
  sub_100103C7C();
  sub_1001038BC(v21, v22, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
  sub_100103C60();
  sub_100019C4C(v23, v24, &qword_1001FE6D0, v25);
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v20);
  v26 = sub_10007B9A4();
  v27(v26);
  (*(v29 + 8))(v18, v30);

  sub_100037B00();
}

uint64_t sub_1000FC994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1001F6738();
  v23 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1001F6768();
  v15 = *(v22 - 8);
  __chkstk_darwin(v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v6 + 48);
  v18 = swift_allocObject();
  v18[2] = v6;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a1;
  v18[7] = a2;
  aBlock[4] = sub_1001033BC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_1002890F8;
  v19 = _Block_copy(aBlock);

  sub_1001F6758();
  v24 = _swiftEmptyArrayStorage;
  sub_1001038BC(&qword_1002BA610, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
  sub_100019C4C(&qword_1002BA620, &qword_1002AC880, &qword_1001FE6D0, &protocol conformance descriptor for [A]);
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v19);
  (*(v23 + 8))(v14, v12);
  (*(v15 + 8))(v17, v22);
}

void sub_1000FCC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t))
{
  sub_100037C08();
  v72 = v21;
  v73 = v22;
  v70[2] = v24;
  v71 = v23;
  v74 = v25;
  v27 = v26;
  v29 = v28;
  v81 = a21;
  v82 = v30;
  sub_1001F6738();
  sub_10001A278();
  v78 = v32;
  v79 = v31;
  __chkstk_darwin(v31);
  sub_100023510();
  sub_100103ED4(v33);
  sub_1001F6768();
  sub_10001A278();
  v76 = v35;
  v77 = v34;
  __chkstk_darwin(v34);
  sub_100023510();
  v38 = v37 - v36;
  v39 = sub_1001F6728();
  sub_10001A278();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_100023510();
  v45 = (v44 - v43);
  v80 = sub_1001F67D8();
  sub_10001A278();
  v47 = v46;
  __chkstk_darwin(v48);
  sub_100099484();
  v51 = v49 - v50;
  __chkstk_darwin(v52);
  v54 = v70 - v53;
  v84[0] = v29;

  v83 = v27;
  swift_getAtKeyPath();

  v55 = v85[2];

  if (!v55)
  {
    v70[1] = v29[6];
    sub_1001F67C8();
    *v45 = 500;
    (*(v41 + 104))(v45, enum case for DispatchTimeInterval.milliseconds(_:), v39);
    sub_1001F6828();
    (*(v41 + 8))(v45, v39);
    v70[0] = *(v47 + 8);
    (v70[0])(v51, v80);
    v56 = swift_allocObject();
    v57 = v83;
    v56[2] = v29;
    v56[3] = v57;
    v58 = v72;
    v59 = v74;
    v56[4] = v71;
    v56[5] = v59;
    v84[4] = v58;
    v84[5] = v56;
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 1107296256;
    v84[2] = sub_1000172C0;
    v84[3] = v73;
    v60 = _Block_copy(v84);

    sub_1001F6758();
    v85 = _swiftEmptyArrayStorage;
    sub_100103C7C();
    sub_1001038BC(v61, v62, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
    sub_100103C60();
    sub_100019C4C(v63, v64, &qword_1001FE6D0, v65);
    v66 = v75;
    v67 = v79;
    sub_1001F7708();
    sub_1001F72F8();
    _Block_release(v60);
    (*(v78 + 8))(v66, v67);
    (*(v76 + 8))(v38, v77);
    (v70[0])(v54, v80);
  }

  v85 = v29;

  v68 = v82;

  v69 = swift_modifyAtReferenceWritableKeyPath();
  v81(v68);
  v69(v84, 0);

  sub_100037B00();
}

uint64_t sub_1000FD150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a5;
  v49 = a6;
  v42 = a4;
  v40 = a3;
  v8 = sub_1001F6738();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F6768();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v41 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F6728();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1001F67D8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  aBlock[0] = a1;

  v50 = a2;
  swift_getAtKeyPath();

  v23 = *(v52[0] + 16);

  if (!v23)
  {
    v39 = *(a1 + 48);
    sub_1001F67C8();
    *v15 = 500;
    (*(v13 + 104))(v15, enum case for DispatchTimeInterval.milliseconds(_:), v12);
    sub_1001F6828();
    (*(v13 + 8))(v15, v12);
    v24 = *(v17 + 8);
    v37 = v17 + 8;
    v38 = v24;
    v36 = v16;
    v24(v19, v16);
    v25 = swift_allocObject();
    v26 = v50;
    v25[2] = a1;
    v25[3] = v26;
    v27 = v42;
    v25[4] = v40;
    v25[5] = v27;
    aBlock[4] = sub_1001033E8;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000172C0;
    aBlock[3] = &unk_100289148;
    v28 = _Block_copy(aBlock);

    v29 = v41;
    sub_1001F6758();
    v52[0] = _swiftEmptyArrayStorage;
    sub_1001038BC(&qword_1002BA610, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
    sub_100019C4C(&qword_1002BA620, &qword_1002AC880, &qword_1001FE6D0, &protocol conformance descriptor for [A]);
    v30 = v43;
    v31 = v47;
    sub_1001F7708();
    sub_1001F72F8();
    _Block_release(v28);
    (*(v46 + 8))(v30, v31);
    (*(v44 + 8))(v29, v45);
    v38(v22, v36);
  }

  v52[2] = a1;

  v32 = v49;

  v33 = swift_modifyAtReferenceWritableKeyPath();
  sub_1001D1564(v52, v48, v32);

  v33(aBlock, 0);
}

uint64_t sub_1000FD6C8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    sub_1001D1564(&v7, v6, v5);

    v4 += 2;
  }
}

uint64_t sub_1000FD770(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1001D1564(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000FD874(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = sub_10013CA74();
  *(v10 + 219) = 1;
  *(v10 + 24) = xmmword_10020CCF0;

  *&v21[0] = 0;
  *(&v21[0] + 1) = 0xE000000000000000;
  sub_1001F77B8(66);
  v23._object = 0x8000000100227F60;
  v23._countAndFlagsBits = 0x1000000000000014;
  sub_1001F6CA8(v23);
  v24._countAndFlagsBits = a1;
  v24._object = a2;
  sub_1001F6CA8(v24);

  v25._countAndFlagsBits = 0x100000000000002CLL;
  v25._object = 0x8000000100227F80;
  sub_1001F6CA8(v25);
  swift_beginAccess();
  *(v10 + 40) = v21[0];

  sub_10013BF90();
  *(v10 + 56) = 2;
  *(v10 + 64) = xmmword_10020CD00;

  *(v10 + 144) = xmmword_10020CD10;

  v20 = 1;
  v11 = *(v10 + 96);
  v21[0] = *(v10 + 80);
  v21[1] = v11;
  v22[0] = *(v10 + 112);
  *(v22 + 10) = *(v10 + 122);
  *(v10 + 80) = 0;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 513;
  sub_1000374B8(v21, &qword_1002B4150, &qword_10020F2B0);

  if (a6)
  {

    sub_1001F77B8(25);

    *&v18[0] = 0x7975426F546B7361;
    *(&v18[0] + 1) = 0xE90000000000002FLL;
    v26._countAndFlagsBits = 0x6C65636E6163;
    v26._object = 0xE600000000000000;
    sub_1001F6CA8(v26);
    v27._countAndFlagsBits = 0x3D6469743FLL;
    v27._object = 0xE500000000000000;
    sub_1001F6CA8(v27);
    v28._countAndFlagsBits = sub_1001F7E28();
    sub_1001F6CA8(v28);

    v29._countAndFlagsBits = 0x3D64696226;
    v29._object = 0xE500000000000000;
    sub_1001F6CA8(v29);
    v30._countAndFlagsBits = a4;
    v30._object = a5;
    sub_1001F6CA8(v30);
    v12 = sub_1001B3448(0x7975426F546B7361, 0xE90000000000002FLL);
    v14 = v13;

    v15 = *(v10 + 176);
    v18[0] = *(v10 + 160);
    v18[1] = v15;
    v19[0] = *(v10 + 192);
    *(v19 + 10) = *(v10 + 202);
    *(v10 + 160) = 3;
    *(v10 + 168) = 0u;
    *(v10 + 184) = 0u;
    *(v10 + 200) = v12;
    *(v10 + 208) = v14;
    *(v10 + 216) = 513;
    sub_1000374B8(v18, &qword_1002B4150, &qword_10020F2B0);
  }

  else
  {
  }

  return v10;
}

uint64_t sub_1000FDB8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_10013CA74();
  *(v10 + 24) = 0xD000000000000020;
  *(v10 + 32) = 0x8000000100227FB0;

  swift_beginAccess();
  *(v10 + 40) = 0xD000000000000048;
  *(v10 + 48) = 0x8000000100227FE0;

  sub_10013BF90();
  *(v10 + 56) = 2;
  *(v10 + 64) = xmmword_10020CD20;

  if (a5)
  {
    type metadata accessor for ConfirmPurchaseEngagementUIRoute();

    v21._countAndFlagsBits = a3;
    v21._object = a4;
    v11 = sub_100062764(v21);
    v13 = v12;

    v14 = sub_1001B3448(v11, v13);
    v16 = v15;

    v17 = *(v10 + 96);
    v19[0] = *(v10 + 80);
    v19[1] = v17;
    v20[0] = *(v10 + 112);
    *(v20 + 10) = *(v10 + 122);
    *(v10 + 80) = 2;
    *(v10 + 88) = a3;
    *(v10 + 96) = a4;
    *(v10 + 104) = a1;
    *(v10 + 112) = a2;
    *(v10 + 120) = v14;
    *(v10 + 128) = v16;
    *(v10 + 136) = 256;
    sub_1000374B8(v19, &qword_1002B4150, &qword_10020F2B0);
  }

  else
  {
  }

  *(v10 + 218) = 1;
  return v10;
}

void sub_1000FDD50()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v78 = v6;
  sub_1001F6968();
  sub_10001A278();
  v81 = v8;
  v82 = v7;
  __chkstk_darwin(v7);
  sub_100023510();
  sub_100103ED4(v9);
  v80 = sub_1001F6938();
  sub_10001A278();
  v77 = v10;
  __chkstk_darwin(v11);
  sub_100099484();
  v83 = v12 - v13;
  __chkstk_darwin(v14);
  v76 = &v76 - v15;
  v16 = sub_1001F6B98();
  sub_10001A278();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100023510();
  v22 = v21 - v20;
  v23 = sub_1000183C4(v4, v2);
  v24 = *(v0 + *(v23 + 52));

  v90 = sub_1000FE42C(1, v24);
  v91 = v25;
  v92 = v26;
  v93 = v27;
  sub_1000183C4(&qword_1002AF8A8, &unk_100203E00);
  sub_100019C4C(&qword_1002AF8B0, &qword_1002AF8A8, &unk_100203E00, &protocol conformance descriptor for ArraySlice<A>);
  sub_1001F6A68();
  swift_unknownObjectRelease();
  sub_1001F6B88();
  v28 = sub_1001F6B68();
  v30 = v29;

  (*(v18 + 8))(v22, v16);
  if (v30 >> 60 == 15)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v31 = sub_1001F6688();
    sub_10009951C(v31, qword_1002E6180);
    v32 = sub_1001F6668();
    v33 = sub_1001F7298();
    if (!sub_100099534(v33))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v34 = (v5 + *(v23 + 48));
    v36 = *v34;
    v35 = v34[1];
    v88 = v36;
    v89 = v35;
    v86 = 45;
    v87 = 0xE100000000000000;
    v84 = 43;
    v85 = 0xE100000000000000;
    v37 = sub_10001C790();
    v88 = sub_100103DC8(&v86, &v84, v38, v39, v40, v41, v42, v43, type metadata for String, v37, v37, v37);
    v89 = v44;
    v86 = 95;
    v87 = 0xE100000000000000;
    v84 = 47;
    v85 = 0xE100000000000000;
    v51 = sub_100103DC8(&v86, &v84, v45, v46, v47, v48, v49, v50, type metadata for String, v37, v37, v37);
    v53 = v52;

    v90 = v51;
    v91 = v53;

    sub_100037A2C();
    v54 = sub_1001F6C38();

    if (v54 % 4)
    {
      v94._countAndFlagsBits = 61;
      v94._object = 0xE100000000000000;
      v95._countAndFlagsBits = sub_1001F6D78(v94, 4 - v54 % 4);
      sub_1001F6CA8(v95);
    }

    v55 = sub_1001F6328();
    v57 = v56;
    sub_100040C5C(v55, v56);

    if (v57 >> 60 != 15)
    {
      v65 = sub_100103E18();
      sub_10003A36C(v65, v66);
      v90 = v55;
      v91 = v57;
      v67 = sub_100103E18();
      sub_100040C70(v67, v68);
      sub_10003A3D8();
      v69 = v83;
      sub_1001F6928();
      v71 = v76;
      v70 = v77;
      v72 = v80;
      (*(v77 + 32))(v76, v69, v80);
      v73 = v79;
      sub_1001F6878();
      v90 = v28;
      v91 = v30;
      sub_1001F6948();
      v74 = sub_100103E18();
      sub_10003A36C(v74, v75);
      (*(v81 + 8))(v73, v82);
      (*(v70 + 8))(v71, v72);
      sub_10003A36C(v28, v30);
      goto LABEL_15;
    }

    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v58 = sub_1001F6688();
    sub_10009951C(v58, qword_1002E6180);
    v32 = sub_1001F6668();
    v59 = sub_1001F7298();
    if (!sub_100099534(v59))
    {
      goto LABEL_13;
    }
  }

  v60 = swift_slowAlloc();
  *v60 = 0;
  sub_100103E78();
  _os_log_impl(v61, v62, v63, v64, v60, 2u);
  sub_100021754();

LABEL_13:
  sub_10003A36C(v28, v30);
LABEL_14:

LABEL_15:
  sub_100037B00();
}

uint64_t sub_1000FE42C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1000FE538(0, (v3 - result) & ~((v3 - result) >> 63), v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_1000FE4C8(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_1000FE4C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_1000FE538(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1000FE584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[3] = type metadata accessor for OctaneConfigurationManager();
  v24[4] = &off_100284570;
  v24[0] = a1;
  v22 = type metadata accessor for DatabaseStore();
  v23 = &off_100295930;
  v21[0] = a2;
  *(a3 + 96) = &_swiftEmptySetSingleton;
  *(a3 + 104) = &_swiftEmptySetSingleton;
  *(a3 + 112) = 0;
  type metadata accessor for SubscriptionRenewalCoordinator();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = _swiftEmptyArrayStorage;
  *(a3 + 120) = v6;
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *(a3 + 128) = v7;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0xB000000000000000;
  *(a3 + 168) = 0x3FF0000000000000;
  sub_100026064(v24, a3 + 16);
  sub_100026064(v21, a3 + 56);
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v9 = sub_1001F6688();
  sub_100019C94(v9, qword_1002E6180);
  sub_100026064(v21, v20);
  v10 = sub_1001F6668();
  v11 = sub_1001F7288();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    sub_10001AE68(v20, v20[3]);
    v14 = sub_1001E0044();
    v16 = v15;
    sub_100019CCC(v20);
    v17 = sub_1000E4544(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Transaction manager initialized with database: %{public}s", v12, 0xCu);
    sub_100019CCC(v13);
  }

  else
  {

    sub_100019CCC(v20);
  }

  sub_10001AE68(v21, v22);
  sub_1001E5114(sub_1001032E8, a3);
  sub_100019CCC(v24);
  sub_100019CCC(v21);
  return a3;
}

void *sub_1000FE818(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for OctaneConfigurationManager();
  v13[3] = v4;
  v13[4] = &off_100284570;
  v13[0] = a1;
  v5 = sub_10004BD98(v13, v4);
  v6 = __chkstk_darwin(v5);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = *v8;
  a2[9] = v4;
  a2[10] = &off_100284570;
  a2[5] = 0;
  a2[6] = v10;
  a2[2] = 0xD000000000000018;
  a2[3] = 0x8000000100227F20;
  a2[4] = 0;
  sub_100019CCC(v13);
  return a2;
}

void *sub_1000FE93C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for OctaneConfigurationManager();
  v13[3] = v4;
  v13[4] = &off_100284570;
  v13[0] = a1;
  v5 = sub_10004BD98(v13, v4);
  v6 = __chkstk_darwin(v5);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = *v8;
  a2[9] = v4;
  a2[10] = &off_100284570;
  a2[5] = 0;
  a2[6] = v10;
  a2[2] = 0xD00000000000002ELL;
  a2[3] = 0x80000001002239C0;
  a2[4] = 0;
  sub_100019CCC(v13);
  return a2;
}

void *sub_1000FEA60(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  a3[14] = v7;
  a3[15] = &off_100285BD8;
  a3[11] = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  a3[2] = 0xD000000000000031;
  a3[3] = 0x80000001002238F0;
  a3[4] = 0;
  a3[5] = 0;
  sub_10002DD3C(&v27, (a3 + 6));
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

uint64_t sub_1000FED54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  *(a3 + 16) = 0xD000000000000038;
  *(a3 + 24) = 0x8000000100223870;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v27, a3 + 48);
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

uint64_t sub_1000FF050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  *(a3 + 16) = 0xD000000000000035;
  *(a3 + 24) = 0x8000000100223830;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v27, a3 + 48);
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

uint64_t sub_1000FF34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  *(a3 + 16) = 0xD000000000000038;
  *(a3 + 24) = 0x80000001002238B0;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v27, a3 + 48);
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

uint64_t sub_1000FF648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  *(a3 + 16) = 0xD00000000000002DLL;
  *(a3 + 24) = 0x8000000100223990;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v27, a3 + 48);
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

uint64_t sub_1000FF944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  *(a3 + 16) = 0xD000000000000018;
  *(a3 + 24) = 0x8000000100227EB0;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v27, a3 + 48);
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

uint64_t sub_1000FFC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  *(a3 + 16) = 0xD000000000000019;
  *(a3 + 24) = 0x8000000100227E90;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v27, a3 + 48);
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

uint64_t sub_1000FFF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  *(a3 + 16) = 0xD000000000000015;
  *(a3 + 24) = 0x8000000100223810;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v27, a3 + 48);
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

uint64_t sub_100100238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  *(a3 + 16) = 0xD000000000000011;
  *(a3 + 24) = 0x8000000100227E50;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v27, a3 + 48);
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

uint64_t sub_100100534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  *(a3 + 16) = 0xD00000000000001CLL;
  *(a3 + 24) = 0x8000000100227E30;
  *(a3 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v27, a3 + 48);
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

uint64_t sub_100100830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  *(a3 + 128) = xmmword_100206DF0;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  *(a3 + 16) = 0x2F646E756665722FLL;
  *(a3 + 24) = 0xEF74736575716572;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  sub_10002DD3C(&v27, a3 + 48);
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

uint64_t sub_100100B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  *(a3 + 128) = xmmword_100206DF0;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  *(a3 + 16) = 0xD000000000000013;
  *(a3 + 24) = 0x8000000100227E10;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  sub_10002DD3C(&v27, a3 + 48);
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

uint64_t sub_100100E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  *(a3 + 128) = xmmword_100206DF0;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  *(a3 + 112) = v7;
  *(a3 + 120) = &off_100285BD8;
  *(a3 + 88) = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  *(a3 + 16) = 0xD000000000000017;
  *(a3 + 24) = 0x8000000100227DF0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  sub_10002DD3C(&v27, a3 + 48);
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

void *sub_100101138(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for OctaneConfigurationManager();
  v34[3] = v6;
  v34[4] = &off_100284570;
  v34[0] = a1;
  v7 = type metadata accessor for OctaneTransactionManager();
  v33[3] = v7;
  v33[4] = &off_100285BD8;
  v33[0] = a2;
  sub_100026064(v34, v32);
  sub_100026064(v33, v31);
  v8 = sub_10004BD98(v32, v32[3]);
  v9 = __chkstk_darwin(v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10004BD98(v31, v31[3]);
  v14 = __chkstk_darwin(v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v30[3] = v6;
  v30[4] = &off_100284570;
  v30[0] = v18;
  a3[14] = v7;
  a3[15] = &off_100285BD8;
  a3[11] = v19;
  v20 = sub_10004BD98(v30, v6);
  v21 = __chkstk_darwin(v20);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v29 = &off_100284570;
  v28 = v6;
  *&v27 = v25;
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  a3[2] = 0xD00000000000001ELL;
  a3[3] = 0x8000000100227DD0;
  a3[4] = 0;
  a3[5] = 0;
  sub_10002DD3C(&v27, (a3 + 6));
  sub_100019CCC(v30);
  sub_100019CCC(v31);
  sub_100019CCC(v32);
  return a3;
}

void *sub_10010142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v36 = a4;
  v35 = a3;
  v12 = type metadata accessor for OctaneConfigurationManager();
  v44[3] = v12;
  v44[4] = &off_100284570;
  v44[0] = a5;
  v13 = type metadata accessor for OctaneTransactionManager();
  v43[3] = v13;
  v43[4] = &off_100285BD8;
  v43[0] = a6;
  sub_100026064(v44, v42);
  sub_100026064(v43, v41);
  v14 = sub_10004BD98(v42, v42[3]);
  v15 = __chkstk_darwin(v14);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = sub_10004BD98(v41, v41[3]);
  v20 = __chkstk_darwin(v19);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  v24 = *v17;
  v25 = *v22;
  v40[4] = &off_100284570;
  v40[3] = v12;
  v40[0] = v24;
  a7[14] = v13;
  a7[15] = &off_100285BD8;
  a7[11] = v25;
  v26 = sub_10004BD98(v40, v12);
  v27 = __chkstk_darwin(v26);
  v29 = (&v34 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = *v29;
  v39 = &off_100284570;
  v38 = v12;
  *&v37 = v31;
  sub_100019CCC(v43);
  sub_100019CCC(v44);
  a7[2] = a1;
  a7[3] = a2;
  v32 = v36;
  a7[4] = v35;
  a7[5] = v32;
  sub_10002DD3C(&v37, (a7 + 6));
  sub_100019CCC(v40);
  sub_100019CCC(v41);
  sub_100019CCC(v42);
  return a7;
}

void *sub_100101738(uint64_t a1, uint64_t a2, void *a3)
{
  v21[3] = type metadata accessor for OctaneConfigurationManager();
  v21[4] = &off_100284570;
  v21[0] = a1;
  v20[3] = type metadata accessor for OctaneTransactionManager();
  v20[4] = &off_100285BD8;
  v20[0] = a2;
  sub_100026064(v21, v19);
  sub_100026064(v20, v18);
  v6 = sub_10004BD98(v19, v19[3]);
  v7 = __chkstk_darwin(v6);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9, v7);
  v11 = sub_10004BD98(v18, v18[3]);
  v12 = __chkstk_darwin(v11);
  v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = sub_10010142C(0xD000000000000016, 0x8000000100227DB0, 0, 4, *v9, *v14, a3);
  sub_100019CCC(v20);
  sub_100019CCC(v21);
  sub_100019CCC(v18);
  sub_100019CCC(v19);
  return v16;
}

void sub_100101948()
{
  sub_100037C08();
  sub_100103C40();
  v21[3] = type metadata accessor for OctaneConfigurationManager();
  v21[4] = &off_100284570;
  v21[0] = v1;
  v20[3] = type metadata accessor for OctaneTransactionManager();
  v20[4] = &off_100285BD8;
  v20[0] = v2;
  *(v0 + 128) = xmmword_100206DF0;
  sub_100026064(v21, v19);
  sub_100026064(v20, v18);
  sub_10004BD98(v19, v19[3]);
  sub_10002DFFC();
  __chkstk_darwin(v3);
  sub_100023510();
  v5 = sub_100103E84(v4);
  v6(v5);
  sub_10004BD98(v18, v18[3]);
  sub_10002DFFC();
  __chkstk_darwin(v7);
  sub_100023510();
  v9 = sub_100103E3C(v8);
  v10(v9);
  sub_100103CB4();
  sub_100103C08();
  __chkstk_darwin(v11);
  v13 = sub_100103BE8(v12, v15);
  v14(v13);
  sub_100103D20();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  sub_10002DD3C(&v16, v0 + 48);
  sub_100019CCC(&v17);
  sub_100019CCC(v18);
  sub_100019CCC(v19);
  sub_100037B00();
}

void sub_100101B68()
{
  sub_100037C08();
  sub_100103C40();
  v21[3] = type metadata accessor for OctaneConfigurationManager();
  v21[4] = &off_100284570;
  v21[0] = v1;
  v20[3] = type metadata accessor for OctaneTransactionManager();
  v20[4] = &off_100285BD8;
  v20[0] = v2;
  sub_100026064(v21, v19);
  sub_100026064(v20, v18);
  sub_10004BD98(v19, v19[3]);
  sub_10002DFFC();
  __chkstk_darwin(v3);
  sub_100023510();
  v5 = sub_100103E84(v4);
  v6(v5);
  sub_10004BD98(v18, v18[3]);
  sub_10002DFFC();
  __chkstk_darwin(v7);
  sub_100023510();
  v9 = sub_100103E3C(v8);
  v10(v9);
  sub_100103CB4();
  sub_100103C08();
  __chkstk_darwin(v11);
  v13 = sub_100103BE8(v12, v15);
  v14(v13);
  sub_100103D20();
  *(v0 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v16, v0 + 48);
  sub_100019CCC(&v17);
  sub_100019CCC(v18);
  sub_100019CCC(v19);
  sub_100037B00();
}

uint64_t sub_100101D84(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void, uint64_t))
{
  v15 = type metadata accessor for OctaneConfigurationManager();
  v16 = &off_100284570;
  v14[0] = a1;
  a2(0);
  v6 = swift_allocObject();
  sub_10004BD98(v14, v15);
  sub_100103C08();
  __chkstk_darwin(v7);
  sub_100023510();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = a3(*v10, v6);
  sub_100019CCC(v14);
  return v12;
}

uint64_t sub_100101E90()
{
  v1 = sub_100103DF0();
  v2 = sub_100103E9C(v1, &off_100284570);
  v3 = sub_100103DA8(v2, &off_100285BD8);
  v0(v3);
  swift_allocObject();
  sub_10004BD98(v16, v1);
  sub_100103C08();
  __chkstk_darwin(v4);
  v6 = sub_100103BE8(v5, v15[0]);
  v7(v6);
  sub_10004BD98(v15, v15[3]);
  sub_100103C08();
  __chkstk_darwin(v8);
  sub_100023510();
  v10 = sub_100103E24(v9);
  v11(v10);
  sub_100103E54();
  sub_100101948();
  v13 = v12;
  sub_100019CCC(v15);
  sub_100019CCC(v16);
  return v13;
}

uint64_t sub_100101FF8(uint64_t a1, void *a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t (*a5)(void, void, uint64_t))
{
  v8 = type metadata accessor for OctaneConfigurationManager();
  v9 = sub_100103E9C(v8, &off_100284570);
  v10 = sub_100103DA8(v9, &off_100285BD8);
  a3(v10);
  v11 = swift_allocObject();
  sub_10004BD98(v24, v8);
  sub_10002DFFC();
  __chkstk_darwin(v12);
  sub_100023510();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  sub_10004BD98(v23, v23[3]);
  sub_10002DFFC();
  __chkstk_darwin(v17);
  v19 = sub_100103BE8(v18, v23[0]);
  v20(v19);
  v21 = a5(*v15, *a2, v11);
  sub_100019CCC(v23);
  sub_100019CCC(v24);
  return v21;
}

uint64_t sub_1001021A4()
{
  v1 = sub_100103DF0();
  v2 = sub_100103E9C(v1, &off_100284570);
  v3 = sub_100103DA8(v2, &off_100285BD8);
  v0(v3);
  swift_allocObject();
  sub_10004BD98(v16, v1);
  sub_100103C08();
  __chkstk_darwin(v4);
  v6 = sub_100103BE8(v5, v15[0]);
  v7(v6);
  sub_10004BD98(v15, v15[3]);
  sub_100103C08();
  __chkstk_darwin(v8);
  sub_100023510();
  v10 = sub_100103E24(v9);
  v11(v10);
  sub_100103E54();
  sub_100101B68();
  v13 = v12;
  sub_100019CCC(v15);
  sub_100019CCC(v16);
  return v13;
}

void *sub_10010230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for OctaneConfigurationManager();
  v19[3] = v10;
  v19[4] = &off_100284570;
  v19[0] = a3;
  a5[11] = a4;
  a5[12] = &off_100289088;
  v11 = sub_10004BD98(v19, v10);
  v12 = __chkstk_darwin(v11);
  v14 = (&v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = *v14;
  a5[9] = v10;
  a5[10] = &off_100284570;
  a5[5] = 0;
  a5[6] = v16;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = 0;
  sub_100019CCC(v19);
  return a5;
}

uint64_t sub_100102438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OctaneConfigurationManager();
  v36[3] = v7;
  v36[4] = &off_100284570;
  v36[0] = a2;
  v8 = type metadata accessor for OctaneTransactionManager();
  v35[3] = v8;
  v35[4] = &off_100285BD8;
  v35[0] = a3;
  swift_weakInit();
  swift_weakAssign();
  sub_100026064(v36, v34);
  sub_100026064(v35, v33);
  v9 = sub_10004BD98(v34, v34[3]);
  v10 = __chkstk_darwin(v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = sub_10004BD98(v33, v33[3]);
  v15 = __chkstk_darwin(v14);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = *v12;
  v20 = *v17;
  v32[4] = &off_100284570;
  v32[3] = v7;
  v32[0] = v19;
  *(a4 + 112) = v8;
  *(a4 + 120) = &off_100285BD8;
  *(a4 + 88) = v20;
  v21 = sub_10004BD98(v32, v7);
  v22 = __chkstk_darwin(v21);
  v24 = (&v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = *v24;
  v30 = v7;
  v31 = &off_100284570;

  *&v29 = v26;
  sub_100019CCC(v35);
  sub_100019CCC(v36);
  *(a4 + 16) = 0xD000000000000021;
  *(a4 + 24) = 0x8000000100223930;
  *(a4 + 32) = xmmword_10020CD30;
  sub_10002DD3C(&v29, a4 + 48);
  sub_100019CCC(v32);
  sub_100019CCC(v33);
  sub_100019CCC(v34);
  return a4;
}

void *sub_100102760(uint64_t a1, uint64_t a2)
{
  v13[3] = type metadata accessor for OctaneConfigurationManager();
  v13[4] = &off_100284570;
  v13[0] = a1;
  sub_100026064(v13, v12);
  type metadata accessor for InAppsRoute();
  v4 = swift_allocObject();
  v5 = sub_10004BD98(v12, v12[3]);
  v6 = __chkstk_darwin(v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = sub_10010230C(0xD00000000000001FLL, 0x8000000100227ED0, *v8, a2, v4);
  sub_100019CCC(v13);
  sub_100019CCC(v12);
  return v10;
}

void *sub_1001028B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = type metadata accessor for OctaneConfigurationManager();
  v17[4] = &off_100284570;
  v17[0] = a3;
  type metadata accessor for InAppPurchasablesRoute();
  v8 = swift_allocObject();
  sub_100026064(v17, v16);
  v9 = sub_10004BD98(v16, v16[3]);
  v10 = __chkstk_darwin(v9);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = sub_10010230C(a1, a2, *v12, a4, v8);
  sub_100019CCC(v17);
  sub_100019CCC(v16);
  return v14;
}

void *sub_1001029F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for OctaneConfigurationManager();
  v14[3] = v5;
  v14[4] = &off_100284570;
  v14[0] = a1;
  a3[12] = 0;
  swift_unknownObjectWeakInit();
  v6 = sub_10004BD98(v14, v5);
  v7 = __chkstk_darwin(v6);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9, v7);
  v11 = *v9;
  a3[9] = v5;
  a3[10] = &off_100284570;
  a3[5] = 0;
  a3[6] = v11;
  a3[2] = 0xD00000000000001CLL;
  a3[3] = 0x8000000100227E70;
  a3[4] = 0;
  sub_100019CCC(v14);
  a3[12] = &off_100289088;
  swift_unknownObjectWeakAssign();

  return a3;
}

uint64_t sub_100102B50(uint64_t a1, uint64_t a2)
{
  v21 = type metadata accessor for OctaneConfigurationManager();
  v22 = &off_100284570;
  v20[0] = a1;
  v18 = type metadata accessor for DatabaseStore();
  v19 = &off_100295930;
  v17[0] = a2;
  type metadata accessor for OctaneTransactionManager();
  v4 = swift_allocObject();
  v5 = sub_10004BD98(v20, v21);
  v6 = __chkstk_darwin(v5);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = sub_10004BD98(v17, v18);
  v11 = __chkstk_darwin(v10);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = sub_1000FE584(*v8, *v13, v4);
  sub_100019CCC(v17);
  sub_100019CCC(v20);
  return v15;
}

uint64_t sub_100102D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for OctaneConfigurationManager();
  v31[3] = v8;
  v31[4] = &off_100284570;
  v31[0] = a3;
  v9 = type metadata accessor for OctaneTransactionManager();
  v29 = v9;
  v30 = &off_100285BD8;
  v28[0] = a4;
  type metadata accessor for OctaneServer();
  v10 = swift_allocObject();
  v11 = sub_10004BD98(v31, v8);
  v12 = __chkstk_darwin(v11);
  v14 = (&v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = sub_10004BD98(v28, v29);
  v17 = __chkstk_darwin(v16);
  v19 = (&v26[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v27[3] = v8;
  v27[4] = &off_100284570;
  v26[4] = &off_100285BD8;
  v27[0] = v21;
  v26[3] = v9;
  v26[0] = v22;
  swift_weakInit();
  sub_100026064(v27, v10 + 64);
  sub_100026064(v26, v10 + 104);
  swift_weakAssign();
  v23 = sub_1000E50DC(a1, a2, 0);

  sub_1000F5EC4();

  sub_100019CCC(v26);
  sub_100019CCC(v27);
  sub_100019CCC(v28);
  sub_100019CCC(v31);
  return v23;
}

void *sub_100103048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = type metadata accessor for OctaneConfigurationManager();
  v19 = &off_100284570;
  v17[0] = a4;
  type metadata accessor for BagRoute();
  v8 = swift_allocObject();
  v9 = sub_10004BD98(v17, v18);
  v10 = __chkstk_darwin(v9);
  v12 = (&v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = sub_10010317C(a1, a2, a3, *v12, v8);
  sub_100019CCC(v17);
  return v14;
}

void *sub_10010317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for OctaneConfigurationManager();
  v18[3] = v9;
  v18[4] = &off_100284570;
  v18[0] = a4;
  a5[12] = 0;
  swift_unknownObjectWeakInit();
  a5[12] = &off_100289088;
  swift_unknownObjectWeakAssign();
  a5[13] = a2;
  a5[14] = a3;

  v10 = sub_10004BD98(v18, v9);
  v11 = __chkstk_darwin(v10);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  a5[9] = v9;
  a5[10] = &off_100284570;
  a5[5] = 0;
  a5[6] = v15;
  a5[2] = 0xD000000000000029;
  a5[3] = 0x8000000100227EF0;
  a5[4] = 0;
  sub_100019CCC(v18);
  return a5;
}

unint64_t sub_1001032F0()
{
  result = qword_1002B4140;
  if (!qword_1002B4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4140);
  }

  return result;
}

uint64_t sub_10010336C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001033CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001033F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100103464()
{
  v1 = (sub_1000183C4(&qword_1002B4148, &unk_10020CE30) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[13];
  v7 = sub_1001F6508();
  if (!sub_10001C990(v5 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  if (*(v0 + v4 + 600) != 1)
  {
  }

  return _swift_deallocObject(v0, v4 + 889, v2 | 7);
}

uint64_t sub_100103728()
{
  v1 = *(sub_1000183C4(&qword_1002B4148, &unk_10020CE30) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];

  return sub_1000A9A04(v0 + v2, v6, v7, v0 + v4);
}

uint64_t sub_1001037CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100103804()
{

  v1 = v0[12];
  if (v1 >> 60 != 15)
  {
    sub_10003A380(v0[11], v1);
  }

  if (v0[15] != 1)
  {
  }

  return _swift_deallocObject(v0, 225, 7);
}

uint64_t sub_1001038BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100103904()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100103950()
{
  sub_100023584();
  v1(0);
  sub_100023520();
  v2 = sub_100037A2C();
  v3(v2);
  return v0;
}

uint64_t sub_1001039A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100023520();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100103A00()
{
  sub_100023584();
  v1(0);
  sub_100023520();
  v2 = sub_100037A2C();
  v3(v2);
  return v0;
}

uint64_t sub_100103A74()
{

  swift_unknownObjectRelease();
  sub_1000A3FC4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100103ACC()
{

  sub_1000A3FC4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100103B48()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100103C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_100103CB4()
{
  v9 = *v3;
  v10 = *v4;
  *(v7 - 256) = v5;
  *(v7 - 264) = v1;
  *(v7 - 288) = v9;
  v0[14] = v2;
  v0[15] = v6;
  v0[11] = v10;

  return sub_10004BD98(v7 - 288, v1);
}

double sub_100103CFC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

uint64_t sub_100103D20()
{
  v7 = *v4;
  *(v6 - 296) = v5;
  *(v6 - 304) = v3;
  *(v6 - 328) = v7;
  sub_100019CCC((v6 - 168));
  result = sub_100019CCC((v6 - 128));
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  return result;
}

uint64_t sub_100103D60()
{

  return sub_10008E840();
}

uint64_t sub_100103D7C(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  *(a1 + 48) = v2;

  return swift_unknownObjectRetain_n();
}

uint64_t sub_100103DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 96) = a2;
  *(v3 - 128) = v2;
  return 0;
}

uint64_t sub_100103DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_1001F75F8();
}

uint64_t sub_100103DF0()
{

  return type metadata accessor for OctaneConfigurationManager();
}

uint64_t sub_100103E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 64) = a1;
  *(v3 - 56) = a2;
  *(v3 - 88) = v2;

  return type metadata accessor for OctaneTransactionManager();
}

unint64_t sub_100103EB8()
{

  return sub_10011108C(v0);
}

void sub_100103F24(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v11, a4, v10, 0xCu);
}

uint64_t sub_100103F44()
{
  *(v1 - 120) = v0;

  return swift_errorRetain();
}

BOOL sub_100103F5C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100103F88(void *a1)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001042A8();
  sub_1001F8168();
  if (!v2)
  {
    sub_10001AE68(v5, v5[3]);
    sub_1001042A8();
    v1 = sub_1001F7ED8();
    sub_100019CCC(v5);
  }

  sub_100019CCC(a1);
  return v1 & 1;
}

uint64_t sub_1001040C4(void *a1, uint64_t a2)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001F8188();
  sub_10004BD98(v3, v3[3]);
  sub_1001F7EF8();
  return sub_100019CCC(v3);
}

uint64_t sub_100104158@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100103F88(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlexiblyDecodableBool(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100104270);
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

uint64_t sub_1001042BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 58))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100104310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100104380(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027BCA8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001043CC(char a1)
{
  result = 7959874;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 1869901639;
      break;
    case 3:
      result = 0x4165636976726553;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

BOOL sub_100104460(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027BD28;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  return v4 != 0;
}

uint64_t sub_1001044B8(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027BD60;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010450C(char a1)
{
  if (a1)
  {
    return 0x2E746E756F636361;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

unint64_t sub_100104578@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100104380(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1001045A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001043CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_100104690@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100104460(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1001047AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001044B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1001047DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10010450C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001048B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027BDB0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100104908(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6D61726150797562;
      break;
    case 2:
      result = 0x656D614E6D657469;
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 0x746567726174;
      break;
    case 5:
      result = 0x6567726174627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001049CC(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B4188, &qword_10020D060);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_10001AE68(a1, a1[3]);
  sub_10010513C();
  sub_1001F8198();
  v12[15] = *v3;
  v12[14] = 0;
  sub_1001052F4();
  sub_100024A88();
  sub_1001F7D58();
  if (!v2)
  {
    v12[13] = 1;
    sub_100024A88();
    sub_1001F7D18();
    v12[12] = 2;
    sub_100024A88();
    sub_1001F7D18();
    v12[11] = 3;
    sub_100024A88();
    sub_1001F7D18();
    v12[10] = v3[56];
    v12[9] = 4;
    sub_100105348();
    sub_100024A88();
    sub_1001F7D58();
    v12[8] = v3[57];
    v12[7] = 5;
    sub_10010539C();
    sub_100024A88();
    sub_1001F7D58();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100104BF4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000183C4(&qword_1002B4160, &qword_10020D058);
  sub_10001A278();
  __chkstk_darwin(v5);
  v40 = 1;
  v6 = a1[3];
  v7 = a1[4];
  v42 = a1;
  sub_10001AE68(a1, v6);
  sub_10010513C();
  sub_1001F8178();
  if (v2)
  {
    sub_100105B08();
    sub_100019CCC(v42);
    v30 = 4;
    *v31 = v41[0];
    *&v31[3] = *(v41 + 3);
    v32 = 0;
    v33 = 0;
    v34 = a2;
    v35 = v7;
    v36 = v6;
    v37 = a1;
    v38 = v40;
    v39 = 2;
    return sub_100105190(&v30);
  }

  else
  {
    sub_1001051C0();
    sub_100105B1C(&unk_100289730);
    v24 = v30;
    v21 = a2;
    v22 = sub_100105AE4(1);
    v23 = v8;
    v9 = sub_100105AE4(2);
    v20 = v10;
    v11 = sub_100105AE4(3);
    v19 = v12;
    LOBYTE(v25) = 4;
    sub_100105214();
    sub_100105B1C(&unk_1002896A0);
    v40 = v30;
    v28 = 5;
    sub_100105268();
    sub_100105B1C(&unk_100289610);
    v13 = sub_100105AD4();
    v14(v13);
    v15 = v29;
    LOBYTE(v25) = v24;
    *(&v25 + 1) = v22;
    *&v26 = v23;
    *(&v26 + 1) = v9;
    *v27 = v20;
    *&v27[8] = v11;
    *&v27[16] = v19;
    v16 = v40;
    v27[24] = v40;
    v27[25] = v29;
    sub_1001052BC(&v25, &v30);
    sub_100019CCC(v42);
    v30 = v24;
    v32 = v22;
    v33 = v23;
    v34 = v9;
    v35 = v20;
    v36 = v11;
    v37 = v19;
    v38 = v16;
    v39 = v15;
    result = sub_100105190(&v30);
    v18 = v26;
    *v21 = v25;
    v21[1] = v18;
    v21[2] = *v27;
    *(v21 + 42) = *&v27[10];
  }

  return result;
}

uint64_t sub_100104F88()
{
  result = sub_1000C85D8(&off_10027A038);
  qword_1002E60D0 = result;
  return result;
}

unint64_t sub_100104FD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001048B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100105004@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100104908(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100105038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100104904(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100105060(uint64_t a1)
{
  v2 = sub_10010513C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010509C(uint64_t a1)
{
  v2 = sub_10010513C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001050D8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100104BF4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 10);
    *(a2 + 42) = *(v7 + 10);
  }

  return result;
}

unint64_t sub_10010513C()
{
  result = qword_1002B4168;
  if (!qword_1002B4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4168);
  }

  return result;
}

unint64_t sub_1001051C0()
{
  result = qword_1002B4170;
  if (!qword_1002B4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4170);
  }

  return result;
}

unint64_t sub_100105214()
{
  result = qword_1002B4178;
  if (!qword_1002B4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4178);
  }

  return result;
}

unint64_t sub_100105268()
{
  result = qword_1002B4180;
  if (!qword_1002B4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4180);
  }

  return result;
}

unint64_t sub_1001052F4()
{
  result = qword_1002B4190;
  if (!qword_1002B4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4190);
  }

  return result;
}

unint64_t sub_100105348()
{
  result = qword_1002B4198;
  if (!qword_1002B4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4198);
  }

  return result;
}

unint64_t sub_10010539C()
{
  result = qword_1002B41A0;
  if (!qword_1002B41A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x1001054BCLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001054F4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001055C0);
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

_BYTE *sub_1001055F4(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100105690);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_1001056C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x100105790);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001057C8()
{
  result = qword_1002B41A8;
  if (!qword_1002B41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41A8);
  }

  return result;
}

unint64_t sub_100105820()
{
  result = qword_1002B41B0;
  if (!qword_1002B41B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B41B0);
  }

  return result;
}