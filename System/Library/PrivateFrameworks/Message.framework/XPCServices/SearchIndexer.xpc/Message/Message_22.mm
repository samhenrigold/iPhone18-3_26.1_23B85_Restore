uint64_t sub_10017178C()
{
  v1 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100124EFC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 12;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_100124F60(v3);
      result = 2;
      break;
    case 2:
      sub_100124F60(v3);
      result = 3;
      break;
    case 3:
      sub_100124F60(v3);
      result = 4;
      break;
    case 4:
      sub_100124F60(v3);
      result = 5;
      break;
    case 5:
      sub_100124F60(v3);
      result = 6;
      break;
    case 6:
      sub_100124F60(v3);
      result = 20;
      break;
    case 7:
      sub_100124F60(v3);
      result = 7;
      break;
    case 8:
      sub_100124F60(v3);
      result = 8;
      break;
    case 9:
      sub_100124F60(v3);
      result = 9;
      break;
    case 10:
      sub_100124F60(v3);
      result = 19;
      break;
    case 11:
      sub_100124F60(v3);
      result = 10;
      break;
    case 12:
      sub_100124F60(v3);
      result = 18;
      break;
    case 13:
      sub_100124F60(v3);
      result = 11;
      break;
    case 14:
      sub_100124F60(v3);
      result = 23;
      break;
    case 15:
      return result;
    case 16:
      result = 13;
      break;
    case 17:
      result = 14;
      break;
    case 18:
      sub_100124F60(v3);
      result = 21;
      break;
    case 19:
      sub_100124F60(v3);
      result = 22;
      break;
    case 20:
      sub_100124F60(v3);
      result = 15;
      break;
    case 21:
      sub_100124F60(v3);
      result = 16;
      break;
    case 22:
      sub_100124F60(v3);
      result = 17;
      break;
    default:
      sub_100124F60(v3);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_1001719EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v61 = a1;
  v57 = a7;
  v55 = a3;
  v56 = a6;
  v59 = a5;
  v60 = a2;
  v12 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v12 - 8);
  v58 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v49[-v15];
  v17 = sub_1004A4944();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = tracingSignposter.unsafeMutableAddressor();
  (*(v18 + 16))(v20, v21, v17);
  sub_10000E268(a8, v16, &qword_1005D0F20, &qword_1004E9390);
  sub_100014CEC(a9, a10);
  sub_100014CEC(a9, a10);

  v22 = sub_1004A4934();
  v23 = sub_1004A6154();

  if ((sub_1004A6354() & 1) == 0)
  {
    sub_100014D40(a9, a10);

    sub_100014D40(a9, a10);
    sub_100025F40(v16, &qword_1005D0F20, &qword_1004E9390);
    return (*(v18 + 8))(v20, v17);
  }

  v51 = v20;
  v52 = v22;
  v53 = v17;
  v54 = v16;
  v50 = v23;
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v64 = v26;
  *v24 = 141559555;
  *(v24 + 4) = 0x786F626C69616DLL;
  *(v24 + 12) = 2085;
  v62 = a4;
  v63 = v59;

  v27 = sub_1004A5824();
  v29 = sub_10015BA6C(v27, v28, &v64);

  *(v24 + 14) = v29;
  *(v24 + 22) = 1040;
  v30 = v61;
  v31 = v60 - v61;
  if (!v61)
  {
    v31 = 0;
  }

  if (v31 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v31 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v60 = v26;
  *(v24 + 24) = v31;
  *(v24 + 28) = 2096;
  if (v30)
  {
    *(v24 + 30) = v30;
    *(v24 + 38) = 2112;
    v32 = sub_100171FC0(v56 & 0xFFFF010101010101, v57 & 1);
    *(v24 + 40) = v32;
    v33 = v25;
    *v25 = v32;
    *(v24 + 48) = 2048;
    v34 = v54;
    v35 = v58;
    sub_10000E268(v54, v58, &qword_1005D0F20, &qword_1004E9390);
    v36 = sub_1004A44E4();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      sub_100025F40(v34, &qword_1005D0F20, &qword_1004E9390);
      sub_100025F40(v35, &qword_1005D0F20, &qword_1004E9390);
      v38 = 0;
    }

    else
    {
      sub_1004A4464();
      v38 = v40;
      sub_100025F40(v34, &qword_1005D0F20, &qword_1004E9390);
      (*(v37 + 8))(v35, v36);
    }

    v41 = v18;
    *(v24 + 50) = v38;
    *(v24 + 58) = 2048;
    v42 = a10 >> 62;
    v44 = v52;
    v43 = v53;
    if ((a10 >> 62) > 1)
    {
      if (v42 != 2)
      {
        sub_100014D40(a9, a10);
        v45 = 0;
        goto LABEL_21;
      }

      v47 = *(a9 + 16);
      v46 = *(a9 + 24);
      sub_100014D40(a9, a10);
      v45 = v46 - v47;
      if (!__OFSUB__(v46, v47))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v42)
    {
      sub_100014D40(a9, a10);
      v45 = BYTE6(a10);
LABEL_21:
      *(v24 + 60) = v45;
      sub_100014D40(a9, a10);
      v48 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, v50, v48, "PersistenceEvent.update.messageDataForUpload", "mailbox %{sensitive,mask.mailbox}s, id %.*P, flags: %@, date %f, data %ld", v24, 0x44u);
      sub_100025F40(v33, &qword_1005D51A0, &qword_1004D0940);

      sub_1000197E0(v60);

      return (*(v41 + 8))(v51, v43);
    }

    sub_100014D40(a9, a10);
    LODWORD(v45) = HIDWORD(a9) - a9;
    if (!__OFSUB__(HIDWORD(a9), a9))
    {
      v45 = v45;
      goto LABEL_21;
    }

    goto LABEL_24;
  }

LABEL_25:
  sub_100014D40(a9, a10);
  sub_100014D40(a9, a10);
  result = sub_100025F40(v54, &qword_1005D0F20, &qword_1004E9390);
  __break(1u);
  return result;
}

NSString sub_100171FC0(unint64_t a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = _swiftEmptyArrayStorage;
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = sub_100085070(0, 1, 1, _swiftEmptyArrayStorage);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_100085070((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 0x646165726E75;
  *(v7 + 5) = 0xE600000000000000;
  if ((a1 & 0x100) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_100085070((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[16 * v9];
    *(v10 + 4) = 0x646574656C6564;
    *(v10 + 5) = 0xE700000000000000;
  }

LABEL_12:
  if ((a1 & 0x10000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_100085070((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v13 = &v4[16 * v12];
    *(v13 + 4) = 0x6465726577736E61;
    *(v13 + 5) = 0xE800000000000000;
    if ((a1 & 0x1000000) == 0)
    {
LABEL_14:
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 0x1000000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_100085070((v14 > 1), v15 + 1, 1, v4);
  }

  *(v4 + 2) = v15 + 1;
  v16 = &v4[16 * v15];
  *(v16 + 4) = 0x7466617264;
  *(v16 + 5) = 0xE500000000000000;
  if ((a1 & 0x100000000) == 0)
  {
LABEL_15:
    if ((a1 & 0x10000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
  }

  v18 = *(v4 + 2);
  v17 = *(v4 + 3);
  if (v18 >= v17 >> 1)
  {
    v4 = sub_100085070((v17 > 1), v18 + 1, 1, v4);
  }

  *(v4 + 2) = v18 + 1;
  v19 = &v4[16 * v18];
  *(v19 + 4) = 0x6564726177726F66;
  *(v19 + 5) = 0xE900000000000064;
  if ((a1 & 0x10000000000) == 0)
  {
LABEL_16:
    if ((a1 & 0xFF000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
  }

  v21 = *(v4 + 2);
  v20 = *(v4 + 3);
  if (v21 >= v20 >> 1)
  {
    v4 = sub_100085070((v20 > 1), v21 + 1, 1, v4);
  }

  *(v4 + 2) = v21 + 1;
  v22 = &v4[16 * v21];
  *(v22 + 4) = 0x7463657269646572;
  *(v22 + 5) = 0xEA00000000006465;
  if ((a1 & 0xFF000000000000) == 0)
  {
LABEL_17:
    if (!HIBYTE(a1))
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_40:
  v23 = sub_1004A5804();
  v25 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
  }

  v27 = *(v4 + 2);
  v26 = *(v4 + 3);
  if (v27 >= v26 >> 1)
  {
    v4 = sub_100085070((v26 > 1), v27 + 1, 1, v4);
  }

  *(v4 + 2) = v27 + 1;
  v28 = &v4[16 * v27];
  *(v28 + 4) = v23;
  *(v28 + 5) = v25;
  if (!HIBYTE(a1))
  {
LABEL_18:
    if ((a2 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

LABEL_45:
  v29 = sub_1004A5804();
  v31 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
  }

  v33 = *(v4 + 2);
  v32 = *(v4 + 3);
  if (v33 >= v32 >> 1)
  {
    v4 = sub_100085070((v32 > 1), v33 + 1, 1, v4);
  }

  *(v4 + 2) = v33 + 1;
  v34 = &v4[16 * v33];
  *(v34 + 4) = v29;
  *(v34 + 5) = v31;
  if (a2)
  {
LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
    }

    v36 = *(v4 + 2);
    v35 = *(v4 + 3);
    if (v36 >= v35 >> 1)
    {
      v4 = sub_100085070((v35 > 1), v36 + 1, 1, v4);
    }

    *(v4 + 2) = v36 + 1;
    v37 = &v4[16 * v36];
    strcpy(v37 + 32, "iCloudCleanup");
    *(v37 + 23) = -4864;
  }

LABEL_55:
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  sub_1004A5614();

  v38 = sub_1004A5734();

  return v38;
}

uint64_t sub_100172534(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_10017266C(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_10017266C(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_10017266C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1004A40D4();
  v7 = result;
  if (result)
  {
    result = sub_1004A4104();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1004A40F4();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_100172714(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v133 - v8;
  v143 = sub_1004A4944();
  v140 = *(v143 - 8);
  __chkstk_darwin(v143);
  v137 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v136 = &v133 - v12;
  __chkstk_darwin(v13);
  v138 = &v133 - v14;
  __chkstk_darwin(v15);
  v135 = &v133 - v16;
  __chkstk_darwin(v17);
  v134 = &v133 - v18;
  __chkstk_darwin(v19);
  v21 = &v133 - v20;
  __chkstk_darwin(v22);
  v24 = &v133 - v23;
  __chkstk_darwin(v25);
  v139 = &v133 - v26;
  __chkstk_darwin(v27);
  v29 = &v133 - v28;
  __chkstk_darwin(v30);
  v32 = &v133 - v31;
  __chkstk_darwin(v33);
  v35 = &v133 - v34;
  v36 = sub_1004A4904();
  v37 = *(v36 - 8);
  v141 = v36;
  v142 = v37;
  __chkstk_darwin(v36);
  v39 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A4914();
  v40 = a3 >> 60;
  if ((a3 >> 60) > 3)
  {
    if (v40 > 5)
    {
      v41 = v140;
      v42 = v143;
      if (v40 == 6)
      {
        v91 = tracingSignposter.unsafeMutableAddressor();
        v92 = v136;
        (*(v41 + 16))(v136, v91, v42);
        v93 = sub_1004A4934();
        v94 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          v96 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, v94, v96, "ConnectionEvent.pathAttributesDidChange", "", v95, 2u);
        }

        v50 = *(v41 + 8);
        v51 = v92;
        goto LABEL_48;
      }

      if (v40 == 7)
      {
        v43 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v44 = tracingSignposter.unsafeMutableAddressor();
        v45 = v137;
        (*(v41 + 16))(v137, v44, v42);
        v46 = sub_1004A4934();
        v47 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v48 = swift_slowAlloc();
          *v48 = 16777472;
          v48[4] = v43;
          v49 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, v47, v49, "ConnectionEvent.betterPathDidChange", "%hhu", v48, 5u);
        }

        v50 = *(v41 + 8);
        v51 = v45;
        goto LABEL_48;
      }

      v113 = v138;
      if (a3 == 0x8000000000000000)
      {
        v126 = tracingSignposter.unsafeMutableAddressor();
        v127 = v134;
        (*(v41 + 16))(v134, v126, v42);
        v128 = sub_1004A4934();
        v129 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          v131 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v128, v129, v131, "ConnectionEvent.mailboxSelected", "no mailbox", v130, 2u);
        }

        v50 = *(v41 + 8);
        v51 = v127;
        goto LABEL_48;
      }

      if (a3 == 0x8000000000000008)
      {
        v114 = tracingSignposter.unsafeMutableAddressor();
        v113 = v135;
        (*(v41 + 16))(v135, v114, v42);
        v115 = sub_1004A4934();
        v116 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          v118 = sub_1004A48F4();
          v119 = "ConnectionEvent.empty";
LABEL_46:
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v115, v116, v118, v119, "", v117, 2u);
        }
      }

      else
      {
        v132 = tracingSignposter.unsafeMutableAddressor();
        (*(v41 + 16))(v113, v132, v42);
        v115 = sub_1004A4934();
        v116 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          v118 = sub_1004A48F4();
          v119 = "ConnectionEvent.stateDidChange";
          goto LABEL_46;
        }
      }

      v50 = *(v41 + 8);
      v51 = v113;
      goto LABEL_48;
    }

    v74 = v143;
    if (v40 != 4)
    {
      v120 = tracingSignposter.unsafeMutableAddressor();
      v121 = v140;
      (*(v140 + 16))(v24, v120, v74);
      v122 = sub_1004A4934();
      v123 = sub_1004A6154();
      if (sub_1004A6354())
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        v125 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v122, v123, v125, "ConnectionEvent.mailboxSelectFailed", "", v124, 2u);
      }

      (*(v121 + 8))(v24, v74);
      return (*(v142 + 8))(v39, v141);
    }

    v138 = v39;
    v136 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v75 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x14);
    v77 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v76 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v78 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v79 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v80 = tracingSignposter.unsafeMutableAddressor();
    v81 = v139;
    v82 = v140;
    (*(v140 + 16))(v139, v80, v74);
    sub_10001123C(v77, v76, v78, v79);
    sub_10001123C(v77, v76, v78, v79);
    v83 = sub_1004A4934();
    LODWORD(v137) = sub_1004A6154();
    if (sub_1004A6354())
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v144 = v85;
      *v84 = 136446466;
      v86 = Tag.debugDescription.getter(v136 | (v75 << 32));
      v88 = sub_10015BA6C(v86, v87, &v144);

      *(v84 + 4) = v88;
      *(v84 + 12) = 256;
      sub_100173584(v77, v76, v78, v79);
      *(v84 + 14) = v79 + 1;
      sub_100173584(v77, v76, v78, v79);
      v72 = v138;
      v89 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, v137, v89, "ConnectionEvent.commandDidComplete", "tag: %{public}s response: %hhu", v84, 0xFu);
      sub_1000197E0(v85);

      (*(v82 + 8))(v139, v143);
      return (*(v142 + 8))(v72, v141);
    }

    sub_100173584(v77, v76, v78, v79);

    sub_100173584(v77, v76, v78, v79);
    (*(v82 + 8))(v81, v74);
    return (*(v142 + 8))(v138, v141);
  }

  if (v40 > 1)
  {
    v58 = v140;
    if (v40 != 2)
    {
      v103 = swift_projectBox();
      v104 = v9;
      sub_100124EFC(v103, v9);
      v105 = tracingSignposter.unsafeMutableAddressor();
      v106 = v143;
      (*(v58 + 16))(v29, v105, v143);
      v107 = v6;
      sub_100124EFC(v9, v6);
      v108 = sub_1004A4934();
      v109 = sub_1004A6154();
      if (sub_1004A6354())
      {
        v110 = swift_slowAlloc();
        *v110 = 16777472;
        v111 = sub_10017178C();
        sub_100124F60(v107);
        v110[4] = v111;
        v112 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v108, v109, v112, "ConnectionEvent.untagged", "response: %hhu", v110, 5u);
      }

      else
      {
        sub_100124F60(v107);
      }

      (*(v58 + 8))(v29, v106);
      sub_100124F60(v104);
      return (*(v142 + 8))(v39, v141);
    }

    v138 = v39;
    v59 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v60 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

    v61 = tracingSignposter.unsafeMutableAddressor();
    v62 = v143;
    (*(v58 + 16))(v21, v61, v143);

    v63 = sub_1004A4934();
    v64 = sub_1004A6154();

    if (sub_1004A6354())
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v139 = v21;
      v67 = v58;
      v68 = v66;
      v146 = v66;
      *v65 = 141558275;
      *(v65 + 4) = 0x786F626C69616DLL;
      *(v65 + 12) = 2085;

      v144 = v59;
      v145 = v60;
      v69 = sub_1004A5824();
      v71 = sub_10015BA6C(v69, v70, &v146);

      *(v65 + 14) = v71;
      v72 = v138;
      v73 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, v64, v73, "ConnectionEvent.mailboxSelected", "mailbox %{sensitive,mask.mailbox}s", v65, 0x16u);
      sub_1000197E0(v68);

      (*(v67 + 8))(v139, v143);
      return (*(v142 + 8))(v72, v141);
    }

    (*(v58 + 8))(v21, v62);
    return (*(v142 + 8))(v138, v141);
  }

  v52 = v140;
  if (v40)
  {
    v97 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v98 = tracingSignposter.unsafeMutableAddressor();
    (*(v52 + 16))(v32, v98, v143);

    v99 = sub_1004A4934();
    v100 = sub_1004A6154();
    if (sub_1004A6354())
    {
      v101 = swift_slowAlloc();
      *v101 = 16777472;
      v101[4] = !CommandConnection.RecentErrors.isEmpty.getter(v97);

      v102 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v99, v100, v102, "ConnectionEvent.connectionDidFail", "error: %hhu", v101, 5u);
    }

    else
    {
    }

    (*(v52 + 8))(v32, v143);
    return (*(v142 + 8))(v39, v141);
  }

  v53 = tracingSignposter.unsafeMutableAddressor();
  v42 = v143;
  (*(v52 + 16))(v35, v53, v143);
  v54 = sub_1004A4934();
  v55 = sub_1004A6154();
  if (sub_1004A6354())
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, v55, v57, "ConnectionEvent.connectionDidAuthenticate", "", v56, 2u);
  }

  v50 = *(v52 + 8);
  v51 = v35;
LABEL_48:
  v50(v51, v42);
  return (*(v142 + 8))(v39, v141);
}

uint64_t sub_100173584(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    sub_10001114C(result);
  }

  return result;
}

uint64_t sub_1001735CC(uint64_t a1, void *a2)
{
  v3 = 256;
  if (!*(v2 + 37))
  {
    v3 = 0;
  }

  v4 = v3 | *(v2 + 36);
  v5 = 0x10000;
  if (!*(v2 + 38))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v2 + 39))
  {
    v6 = 0;
  }

  v7 = v4 | v5 | v6;
  v8 = &_mh_execute_header;
  if (!*(v2 + 40))
  {
    v8 = 0;
  }

  v9 = 0x10000000000;
  if (!*(v2 + 41))
  {
    v9 = 0;
  }

  return sub_1001719EC(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v7 | v8 | v9 | (*(v2 + 42) << 48) | (*(v2 + 43) << 56), *(v2 + 44), *(v2 + 48), *(v2 + 56), *(v2 + 64));
}

uint64_t sub_10017368C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1001736F8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

Swift::Int sub_100173754()
{
  result = sub_100093190(&off_1005990F8);
  qword_1005DDF90 = result;
  return result;
}

void sub_10017377C(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  if (*(v1 + 112) == 1)
  {
    sub_1000118A4(a1, &v39 - v13);
    sub_1000118A4(a1, v11);
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
      v42 = swift_slowAlloc();
      *v17 = 68159235;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      v18 = &v11[*(v3 + 20)];
      *(v17 + 10) = *v18;
      *(v17 + 11) = 2082;
      v19 = &v14[*(v3 + 20)];
      *(v17 + 13) = sub_10015BA6C(*(v19 + 1), *(v19 + 2), &v42);
      *(v17 + 21) = 1040;
      *(v17 + 23) = 2;
      *(v17 + 27) = 512;
      v20 = *(v18 + 12);
      sub_100011908(v11);
      *(v17 + 29) = v20;
      *(v17 + 31) = 2160;
      *(v17 + 33) = 0x786F626C69616DLL;
      *(v17 + 41) = 2085;
      v21 = *(v19 + 4);
      v22 = *(v19 + 10);

      sub_100011908(v14);
      v40 = v21;
      v41 = v22;
      v23 = sub_1004A5824();
      v25 = sub_10015BA6C(v23, v24, &v42);

      *(v17 + 43) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v17, 0x33u);
      swift_arrayDestroy();

LABEL_6:

      return;
    }

    sub_100011908(v11);

    v38 = v14;
  }

  else
  {
    v26 = *(v1 + 104);
    sub_1000118A4(a1, v8);
    sub_1000118A4(a1, v5);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v15 = sub_1004A4A54();
    v27 = sub_1004A6034();
    if (os_log_type_enabled(v15, v27))
    {
      v28 = swift_slowAlloc();
      v39 = v26;
      v29 = v28;
      v42 = swift_slowAlloc();
      *v29 = 68159491;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = &v5[*(v3 + 20)];
      *(v29 + 10) = *v30;
      *(v29 + 11) = 2082;
      v31 = &v8[*(v3 + 20)];
      *(v29 + 13) = sub_10015BA6C(*(v31 + 1), *(v31 + 2), &v42);
      *(v29 + 21) = 1040;
      *(v29 + 23) = 2;
      *(v29 + 27) = 512;
      v32 = *(v30 + 12);
      sub_100011908(v5);
      *(v29 + 29) = v32;
      *(v29 + 31) = 2160;
      *(v29 + 33) = 0x786F626C69616DLL;
      *(v29 + 41) = 2085;
      v33 = *(v31 + 4);
      v34 = *(v31 + 10);

      sub_100011908(v8);
      v40 = v33;
      v41 = v34;
      v35 = sub_1004A5824();
      v37 = sub_10015BA6C(v35, v36, &v42);

      *(v29 + 43) = v37;
      *(v29 + 51) = 2048;
      *(v29 + 53) = v39;
      _os_log_impl(&_mh_execute_header, v15, v27, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task (XYHIGHESTMODSEQ %llu).", v29, 0x3Du);
      swift_arrayDestroy();

      goto LABEL_6;
    }

    sub_100011908(v5);

    v38 = v8;
  }

  sub_100011908(v38);
}

void sub_100173C24(uint64_t a1, uint64_t a2)
{
  v93 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v93);
  v6 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v92 = &v85[-v8];
  __chkstk_darwin(v9);
  v90 = &v85[-v10];
  __chkstk_darwin(v11);
  v91 = &v85[-v12];
  __chkstk_darwin(v13);
  v88 = &v85[-v14];
  __chkstk_darwin(v15);
  v89 = &v85[-v16];
  __chkstk_darwin(v17);
  v19 = &v85[-v18];
  __chkstk_darwin(v20);
  v22 = &v85[-v21];
  v104 = 0;
  v105 = 1;
  v95 = *(v2 + 40);
  v94 = *(v2 + 48);
  v96 = &v104;
  v97 = v2;
  if (*(a1 + 192) == 1)
  {
    v24 = v6;
    v26 = *(a1 + 176);
    v25 = *(a1 + 184);
    v101 = *(a1 + 168);
    v23 = v101;

    sub_1000BE940(&v101, v95, v94, 0, sub_100174A5C);
    v27 = v26;
    v6 = v24;
    sub_100020D58(v23, v27, v25, 1);
    v28 = v101;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v28;
    *(a1 + 192) = 1;
  }

  if (*(*(v2 + 120) + 16))
  {
    sub_1000118A4(a2, v22);
    sub_1000118A4(a2, v19);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000B3F58(v2, &v101);
    v29 = sub_1004A4A54();
    v30 = sub_1004A6034();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v100 = v87;
      *v31 = 68159491;
      *(v31 + 4) = 2;
      *(v31 + 8) = 256;
      v32 = v93;
      v33 = &v19[*(v93 + 20)];
      *(v31 + 10) = *v33;
      *(v31 + 11) = 2082;
      v34 = *(v32 + 20);
      v86 = v30;
      v35 = &v22[v34];
      *(v31 + 13) = sub_10015BA6C(*&v22[v34 + 8], *&v22[v34 + 16], &v100);
      *(v31 + 21) = 1040;
      *(v31 + 23) = 2;
      *(v31 + 27) = 512;
      v36 = *(v33 + 12);
      sub_100011908(v19);
      *(v31 + 29) = v36;
      *(v31 + 31) = 2160;
      *(v31 + 33) = 0x786F626C69616DLL;
      *(v31 + 41) = 2085;
      v37 = *(v35 + 4);
      LODWORD(v35) = *(v35 + 10);

      sub_100011908(v22);
      v98 = v37;
      v99 = v35;
      v38 = sub_1004A5824();
      v40 = sub_10015BA6C(v38, v39, &v100);

      *(v31 + 43) = v40;
      *(v31 + 51) = 2048;
      v41 = *(v103 + 16);
      sub_1000B3FB4(&v101);
      *(v31 + 53) = v41;
      _os_log_impl(&_mh_execute_header, v29, v86, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent %ld changes to the persistence.", v31, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000B3FB4(&v101);
      sub_100011908(v19);

      sub_100011908(v22);
    }
  }

  v42 = v104;
  if (v105 != 1)
  {
    v57 = v92;
    sub_1000118A4(a2, v92);
    sub_1000118A4(a2, v6);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v58 = sub_1004A4A54();
    v59 = sub_1004A6034();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v98 = v91;
      *v60 = 68159491;
      *(v60 + 4) = 2;
      *(v60 + 8) = 256;
      v61 = v93;
      v62 = &v6[*(v93 + 20)];
      *(v60 + 10) = *v62;
      *(v60 + 11) = 2082;
      v63 = &v57[*(v61 + 20)];
      *(v60 + 13) = sub_10015BA6C(*(v63 + 1), *(v63 + 2), &v98);
      *(v60 + 21) = 1040;
      *(v60 + 23) = 2;
      *(v60 + 27) = 512;
      v64 = *(v62 + 12);
      sub_100011908(v6);
      *(v60 + 29) = v64;
      *(v60 + 31) = 2160;
      *(v60 + 33) = 0x786F626C69616DLL;
      *(v60 + 41) = 2085;
      v65 = *(v63 + 4);
      v66 = *(v63 + 10);

      sub_100011908(v57);
      v101 = v65;
      v102 = v66;
      v67 = sub_1004A5824();
      v69 = sub_10015BA6C(v67, v68, &v98);

      *(v60 + 43) = v69;
      *(v60 + 51) = 2048;
      *(v60 + 53) = v42;
      _os_log_impl(&_mh_execute_header, v58, v59, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating local HIGHESTMODSEQ to %llu.", v60, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100011908(v6);

      sub_100011908(v57);
    }

    v70 = v42;
    v71 = 0;
    goto LABEL_19;
  }

  if (v104)
  {
    v43 = v91;
    sub_1000118A4(a2, v91);
    v44 = v90;
    sub_1000118A4(a2, v90);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v45 = sub_1004A4A54();
    v46 = sub_1004A6034();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v47 = 68159235;
      *(v47 + 4) = 2;
      *(v47 + 8) = 256;
      v48 = v93;
      v49 = &v44[*(v93 + 20)];
      *(v47 + 10) = *v49;
      *(v47 + 11) = 2082;
      v50 = &v43[*(v48 + 20)];
      *(v47 + 13) = sub_10015BA6C(*(v50 + 1), *(v50 + 2), &v98);
      *(v47 + 21) = 1040;
      *(v47 + 23) = 2;
      *(v47 + 27) = 512;
      v51 = *(v49 + 12);
      sub_100011908(v44);
      *(v47 + 29) = v51;
      *(v47 + 31) = 2160;
      *(v47 + 33) = 0x786F626C69616DLL;
      *(v47 + 41) = 2085;
      v52 = *(v50 + 4);
      v53 = *(v50 + 10);

      sub_100011908(v43);
      v101 = v52;
      v102 = v53;
      v54 = sub_1004A5824();
      v56 = sub_10015BA6C(v54, v55, &v98);

      *(v47 + 43) = v56;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Clearing local HIGHESTMODSEQ.", v47, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100011908(v44);

      sub_100011908(v43);
    }

    v70 = 0;
    v71 = 1;
LABEL_19:
    sub_1000BEC60(v70, v71, v95, v94);
    return;
  }

  v72 = v89;
  sub_1000118A4(a2, v89);
  v73 = v88;
  sub_1000118A4(a2, v88);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v74 = sub_1004A4A54();
  v75 = sub_1004A6034();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v76 = 68159235;
    *(v76 + 4) = 2;
    *(v76 + 8) = 256;
    v77 = v93;
    v78 = &v73[*(v93 + 20)];
    *(v76 + 10) = *v78;
    *(v76 + 11) = 2082;
    v79 = &v72[*(v77 + 20)];
    *(v76 + 13) = sub_10015BA6C(*(v79 + 1), *(v79 + 2), &v98);
    *(v76 + 21) = 1040;
    *(v76 + 23) = 2;
    *(v76 + 27) = 512;
    v80 = *(v78 + 12);
    sub_100011908(v73);
    *(v76 + 29) = v80;
    *(v76 + 31) = 2160;
    *(v76 + 33) = 0x786F626C69616DLL;
    *(v76 + 41) = 2085;
    v81 = *(v79 + 4);
    LODWORD(v78) = *(v79 + 10);

    sub_100011908(v72);
    v101 = v81;
    v102 = v78;
    v82 = sub_1004A5824();
    v84 = sub_10015BA6C(v82, v83, &v98);

    *(v76 + 43) = v84;
    _os_log_impl(&_mh_execute_header, v74, v75, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No change to local HIGHESTMODSEQ.", v76, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100011908(v73);

    sub_100011908(v72);
  }
}

uint64_t sub_1001746E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 112))
  {
    v5 = (a1 + *(type metadata accessor for MailboxSyncState(0) + 48));
    v6 = v5[3];
    v7 = v5[4];
    sub_10002587C(v5, v6);
    v8 = (*(v7 + 72))(v6, v7);
  }

  else
  {
    v9 = 0;
    v8 = *(a3 + 104);
  }

  *a2 = v8;
  *(a2 + 8) = v9 & 1;
  v10 = a1 + *(type metadata accessor for MailboxSyncState(0) + 48);
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  sub_100025928(v10, v11);
  (*(v12 + 48))(v11, v12);
  v13 = *(v10 + 24);
  v14 = *(v10 + 32);
  sub_100025928(v10, v13);
  return (*(v14 + 80))(v13, v14);
}

double sub_1001747E0()
{
  if (qword_1005CCE98 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100174840@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  result = sub_100174A64(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  return result;
}

__n128 sub_10017489C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001748D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_100174918(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10017498C()
{
  result = qword_1005D22F8;
  if (!qword_1005D22F8)
  {
    result = swift_getWitnessTable(byte_1004DA168, &type metadata for UpdateLocalFlags.ActionID, v0, v1);
    atomic_store(result, &qword_1005D22F8);
  }

  return result;
}

unint64_t sub_1001749E0(uint64_t a1)
{
  result = sub_100174A08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100174A08()
{
  result = qword_1005D23B0;
  if (!qword_1005D23B0)
  {
    result = swift_getWitnessTable(byte_1004DA124, &type metadata for UpdateLocalFlags, v0, v1);
    atomic_store(result, &qword_1005D23B0);
  }

  return result;
}

uint64_t sub_100174A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v102 = a4;
  v105 = a1;
  v106 = a2;
  v101 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v101);
  v8 = &v98[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v103 = &v98[-v10];
  v115 = 0;
  v116 = _swiftEmptyArrayStorage;
  v117 = _swiftEmptyArrayStorage;
  v11 = (a3 + *(type metadata accessor for MailboxSyncState(0) + 48));
  v12 = v11[3];
  v13 = v11[4];
  v100 = v11;
  sub_10002587C(v11, v12);
  v104 = (*(v13 + 40))(v12, v13);
  v110 = v15;
  v111 = v14;
  v16 = v15[2];

  v112 = v5;
  v109 = v16;
  if (v16)
  {
    v17 = 0;
    v107 = v8;
    v108 = v111 + 32;
    for (i = v110 + 6; ; i += 3)
    {
      if (v17 >= *(v111 + 16))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
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
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }

      if (v17 >= v110[2])
      {
        goto LABEL_76;
      }

      v19 = *(v108 + 4 * v17);
      v20 = *(i - 2);
      v21 = *(i - 8);
      v22 = *i;
      v23 = (v17 + 1);
      v24 = *(v5 + 120);
      if (!*(v24 + 16) || (v25 = sub_100067004(), (v26 & 1) == 0))
      {
        v29 = 0;
        v28 = 0;
        if (v22 == 1)
        {
LABEL_16:

          sub_100175584(v28, v29, 1);
          v8 = v107;
          if (v23 >= v109)
          {
            break;
          }

          goto LABEL_41;
        }

        goto LABEL_9;
      }

      v113 = (v17 + 1);
      v27 = *(v24 + 56) + 24 * v25;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);

      if (v30 == 1)
      {
        v23 = v113;
        if (v22 == 1)
        {
          goto LABEL_16;
        }

LABEL_9:
        v113 = v23;
        v30 = 1;
LABEL_10:
        swift_bridgeObjectRetain_n();
        sub_100175584(v28, v29, v30);
        sub_100175584(v20, v21, v22);
        goto LABEL_11;
      }

      if (v22 == 1)
      {
        goto LABEL_10;
      }

      if (v28 == 2)
      {
        if (v20 != 2)
        {
          goto LABEL_32;
        }
      }

      else if (v20 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(v28 & 0xFFFFFFFF01010101, v29, v20 & 0xFFFFFFFF01010101, v21) & 1) == 0)
      {
        goto LABEL_32;
      }

      if (v30)
      {
        if (v22)
        {
          swift_bridgeObjectRetain_n();
          sub_100175598(v28, v29, v30);
          sub_100175598(v20, v21, v22);
          v99 = sub_100083478(v30, v22);
          sub_100175584(v20, v21, v22);
          sub_100175584(v28, v29, v30);
          sub_100175584(v20, v21, v22);
          if (v99)
          {
LABEL_34:
            sub_100175584(v28, v29, v30);

            v5 = v112;
            goto LABEL_40;
          }
        }

        goto LABEL_33;
      }

      if (!v22)
      {
        goto LABEL_34;
      }

LABEL_32:
      swift_bridgeObjectRetain_n();
      sub_100175584(v20, v21, v22);
LABEL_33:
      sub_100175584(v28, v29, v30);
LABEL_11:

      v5 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = *(v5 + 120);
      v32 = v114;
      v33 = sub_100067004();
      v35 = *(v32 + 16);
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_79;
      }

      v39 = v34;
      if (*(v32 + 24) < v38)
      {
        sub_1000C8954(v38, isUniquelyReferenced_nonNull_native);
        v33 = sub_100067004();
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_82;
        }

LABEL_19:
        v41 = v114;
        if ((v39 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v43 = v33;
      sub_10013CA80();
      v33 = v43;
      v41 = v114;
      if ((v39 & 1) == 0)
      {
LABEL_37:
        *&v41[8 * (v33 >> 6) + 64] |= 1 << v33;
        *(*(v41 + 6) + 4 * v33) = v19;
        v44 = *(v41 + 7) + 24 * v33;
        *v44 = v20;
        *(v44 + 8) = v21;
        *(v44 + 16) = v22;
        v45 = *(v41 + 2);
        v37 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v37)
        {
          goto LABEL_80;
        }

        *(v41 + 2) = v46;
        goto LABEL_39;
      }

LABEL_20:
      v42 = *(v41 + 7) + 24 * v33;
      *v42 = v20;
      *(v42 + 8) = v21;
      *(v42 + 16) = v22;

LABEL_39:
      *(v5 + 120) = v41;
      sub_100186664(v20, v21, v22, v19);
LABEL_40:
      v8 = v107;
      if (v113 >= v109)
      {
        break;
      }

LABEL_41:
      ++v17;
    }
  }

  v47 = v115;
  v48 = v116;
  v49 = v117;
  if (!v117[2])
  {
    v67 = *(v5 + 128);
    if (sub_1000201A4(v67, 0, v105, v106))
    {

      return 0;
    }

    if (*(v5 + 112) == 1)
    {
      v90 = v100[3];
      v91 = v100[4];
      sub_10002587C(v100, v90);
      v92 = (*(v91 + 72))(v90, v91);
      LOBYTE(v90) = v93;

      if (v90)
      {
        if (!v92)
        {
          return 0;
        }

        v94 = swift_allocObject();
        v95 = *(v5 + 48);
        *(v94 + 16) = *(v5 + 40);
        *(v94 + 24) = v95;
        *(v94 + 32) = 0;
        *(v94 + 40) = 1;
LABEL_74:

        return v67;
      }
    }

    else
    {
      v92 = *(v5 + 104);
    }

    v96 = swift_allocObject();
    v97 = *(v5 + 48);
    *(v96 + 16) = *(v5 + 40);
    *(v96 + 24) = v97;
    *(v96 + 32) = v92;
    *(v96 + 40) = 0;
    goto LABEL_74;
  }

  v50 = v102;
  v51 = v103;
  sub_1000118A4(v102, v103);
  sub_1000118A4(v50, v8);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v52 = sub_1004A4A54();
  v53 = sub_1004A6034();
  v54 = os_log_type_enabled(v52, v53);
  v111 = v47;
  if (v54)
  {
    v55 = v51;
    v56 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v114 = v113;
    *v56 = 68159491;
    *(v56 + 4) = 2;
    *(v56 + 8) = 256;
    v57 = v101;
    v58 = &v8[*(v101 + 20)];
    *(v56 + 10) = *v58;
    *(v56 + 11) = 2082;
    v59 = v55 + *(v57 + 20);
    *(v56 + 13) = sub_10015BA6C(*(v59 + 8), *(v59 + 16), &v114);
    *(v56 + 21) = 1040;
    *(v56 + 23) = 2;
    *(v56 + 27) = 512;
    v60 = *(v58 + 12);
    sub_100011908(v8);
    *(v56 + 29) = v60;
    *(v56 + 31) = 2160;
    *(v56 + 33) = 0x786F626C69616DLL;
    *(v56 + 41) = 2085;
    v61 = *(v59 + 32);
    v62 = *(v59 + 40);

    sub_100011908(v55);
    v115 = v61;
    LODWORD(v116) = v62;
    v63 = sub_1004A5824();
    v65 = sub_10015BA6C(v63, v64, &v114);
    v5 = v112;

    *(v56 + 43) = v65;
    *(v56 + 51) = 2048;
    v66 = v49[2];

    *(v56 + 53) = v66;

    _os_log_impl(&_mh_execute_header, v52, v53, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Got %ld flag/label changes.", v56, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {

    sub_100011908(v8);

    sub_100011908(v51);
  }

  v69 = *(v5 + 128);
  if (sub_1000201A4(v69, 0, v105, v106))
  {
    if (__OFADD__(v69, 1))
    {
      goto LABEL_81;
    }

    *(v5 + 128) = v69 + 1;
  }

  v70 = v49[2];

  if (v70)
  {
    v71 = 0;
    v72 = v49 + 6;
    v113 = _swiftEmptyArrayStorage;
    v110 = v49 + 6;
LABEL_54:
    v73 = &v72[3 * v71];
    while (v71 < v48[2])
    {
      if (v71 >= v49[2])
      {
        goto LABEL_78;
      }

      v74 = *(v48 + v71 + 8);
      v75 = *(v73 - 2);
      v76 = *v73;
      ++v71;
      v77 = *(v73 - 8);
      swift_bridgeObjectRetain_n();
      v78 = MessageFlagUpdate.init(message:flags:gmailLabels:)(v74, v75, v77, v76);
      v80 = v79;
      v82 = v81;

      if (v82 != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_100086DB4(0, *(v113 + 2) + 1, 1, v113);
        }

        v84 = *(v113 + 2);
        v83 = *(v113 + 3);
        if (v84 >= v83 >> 1)
        {
          v113 = sub_100086DB4((v83 > 1), v84 + 1, 1, v113);
        }

        *(&v85 + 1) = v80;
        *&v85 = v78;
        v86 = v113;
        *(v113 + 2) = v84 + 1;
        v87 = &v86[24 * v84];
        *(v87 + 8) = v78;
        *(v87 + 36) = v85 >> 32;
        v87[44] = BYTE4(v80);
        *(v87 + 6) = v82;
        v5 = v112;
        v72 = v110;
        if (v71 < v70)
        {
          goto LABEL_54;
        }

        goto LABEL_67;
      }

      v73 += 3;
      v5 = v112;
      if (v71 >= v70)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_77;
  }

  v113 = _swiftEmptyArrayStorage;
LABEL_67:

  v88 = swift_allocObject();
  v89 = *(v5 + 24);
  v88[2] = *(v5 + 16);
  v88[3] = v89;
  v88[4] = v113;

  return 0;
}

uint64_t sub_10017550C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10017554C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100175584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

double sub_100175598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

double sub_1001755BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[0] = &type metadata for UpdateServerUnreadCount;
  sub_1004A6674();
  v6[6] = 0xD000000000000017;
  v6[7] = 0x80000001004DA190;
  if (*(a1 + 16))
  {
    v5 = a1;
    sub_10014256C(&v5, a2);
    sub_1001425C8(&v5);
  }

  else
  {

    sub_100014BEC(v6);
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001756A4(uint64_t *a1, uint64_t *a2)
{
  if (a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  return sub_1000FFC98(*a1, *a2) & (v3 == v2);
}

void sub_1001756FC(uint64_t a1)
{
  v3 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v3);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21[-1] - v7;
  sub_1000D696C(a1, &v21[-1] - v7);
  sub_1000D696C(a1, v5);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10014256C(v1, v21);
  v9 = sub_1004A4A54();
  v10 = sub_1004A6034();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 68158466;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v13 = *&v5[*(v3 + 20)];
    sub_1000FF274(v5);
    *(v11 + 10) = v13;
    *(v11 + 11) = 2082;
    v14 = &v8[*(v3 + 20)];
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    sub_100018BD0(*v14, v15, v16, v17, v14[4]);
    sub_1000FF274(v8);
    if (v17 < 0)
    {
    }

    v18 = sub_10015BA6C(v15, v16, &v20);

    *(v11 + 13) = v18;
    *(v11 + 21) = 2048;
    v19 = *(v21[0] + 16);
    sub_1001425C8(v21);
    *(v11 + 23) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%.*hhx-%{public}s] Updating local server unread count for %ld mailboxes.", v11, 0x1Fu);
    sub_1000197E0(v12);
  }

  else
  {
    sub_1001425C8(v21);
    sub_1000FF274(v5);

    sub_1000FF274(v8);
  }
}

void sub_10017594C(uint64_t a1, uint64_t a2)
{
  v94 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v94);
  v86 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v84 - v6;
  __chkstk_darwin(v8);
  v98 = &v84 - v9;
  v11 = __chkstk_darwin(v10);
  v13 = &v84 - v12;
  v89 = a1;
  v14 = *(a1 + 176);
  a1 += 176;
  v15 = *(a1 - 8);
  v100 = *(a1 + 8);
  v101 = v14;
  v88 = a1;
  v105 = *(a1 + 16);
  v85 = v7;
  if (v105 == 1 && (v16 = *(v15 + 16)) != 0)
  {
    v17 = (v15 + 32);
    while (1)
    {
      v18 = *v17;
      v19 = v17[2];
      v111 = v17[1];
      v112 = v19;
      v110 = v18;
      v20 = v17[3];
      v21 = v17[4];
      v22 = v17[6];
      v115 = v17[5];
      v116 = v22;
      v113 = v20;
      v114 = v21;
      v23 = v17[7];
      v24 = v17[8];
      v25 = v17[10];
      v119 = v17[9];
      v120 = v25;
      v117 = v23;
      v118 = v24;
      v27 = *(&v110 + 1);
      v26 = v110;
      v28 = DWORD2(v111);
      sub_10000E08C(&v110, v109);

      LOBYTE(v28) = MailboxName.isInbox.getter(v29, v28);

      if (v28)
      {
        break;
      }

      sub_10000E0E8(&v110);
      v17 += 11;
      if (!--v16)
      {
        v30 = 0;
        v27 = 0;
        goto LABEL_9;
      }
    }

    sub_10000E0E8(&v110);
    v30 = v26;
LABEL_9:
    v7 = v85;
  }

  else
  {
    v30 = 0;
    v27 = 0;
  }

  v31 = *v87;
  v104 = *(*v87 + 16);
  if (v104)
  {
    v93 = v27;
    v32 = 0;
    v33 = 0;
    v103 = v31 + 32;
    v11.n128_u64[0] = 68158722;
    v90 = v11;
    v99 = v30;
    v34 = v31;
    v91 = v31;
    v92 = a2;
    while (1)
    {
      if (v33 >= *(v34 + 16))
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        return;
      }

      v35 = (v103 + 24 * v33);
      v37 = *v35;
      v36 = v35[1];
      v107 = v35[2];
      v108 = v36;
      if (v105 && (v38 = *(v15 + 16)) != 0)
      {
        v39 = 0;
        while (1)
        {
          v40 = (v15 + 32 + 176 * v39);
          if (v40[1] == v36)
          {
            v41 = *v40;
            v42 = *(*v40 + 16);
            if (v42 == *(v37 + 16))
            {
              break;
            }
          }

LABEL_18:
          if (++v39 == v38)
          {

            v30 = v99;
            goto LABEL_37;
          }
        }

        if (v42)
        {
          v43 = v41 == v37;
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          v44 = (v41 + 32);
          v45 = (v37 + 32);
          while (v42)
          {
            if (*v44 != *v45)
            {
              goto LABEL_18;
            }

            ++v44;
            ++v45;
            if (!--v42)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
          goto LABEL_67;
        }

LABEL_29:

        sub_100020D10(v15, v101, v100, 1);
        v46 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_100139804(v15);
        }

        if (v39 >= *(v46 + 2))
        {
          goto LABEL_69;
        }

        v47 = &v46[176 * v39];
        if (!v47[200] && v107 == *(v47 + 24))
        {
          v47[200] = 1;
        }

        sub_100020D58(v15, v101, v100, 1);
        v100 = 0;
        v101 = 0;
        v49 = v88;
        v48 = v89;
        *(v89 + 168) = v46;
        *v49 = 0;
        v49[1] = 0;
        v15 = v46;
        *(v48 + 192) = 1;
        v30 = v99;
      }

      else
      {
      }

LABEL_37:
      if (v32 >= 5)
      {
        if (!v30)
        {
          goto LABEL_12;
        }

        if (v108 != v93)
        {
          goto LABEL_12;
        }

        v65 = *(v37 + 16);
        if (v65 != *(v30 + 16))
        {
          goto LABEL_12;
        }

        if (v65 && v37 != v30)
        {
          break;
        }
      }

LABEL_38:
      v106 = v15;
      sub_1000D696C(a2, v13);
      v50 = v98;
      sub_1000D696C(a2, v98);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      swift_bridgeObjectRetain_n();
      v51 = sub_1004A4A54();
      v102 = sub_1004A6034();
      if (os_log_type_enabled(v51, v102))
      {
        v96 = v51;
        v97 = v32;
        v52 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v110 = v95;
        *v52 = v90.n128_u32[0];
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v53 = v94;
        v54 = *(v50 + *(v94 + 20));
        sub_1000FF274(v50);
        *(v52 + 10) = v54;
        *(v52 + 11) = 2082;
        v55 = &v13[*(v53 + 20)];
        v56 = v55[1];
        v57 = v55[2];
        v58 = v55[3];
        sub_100018BD0(*v55, v56, v57, v58, v55[4]);
        sub_1000FF274(v13);
        if (v58 < 0)
        {
        }

        v59 = sub_10015BA6C(v56, v57, &v110);

        *(v52 + 13) = v59;
        *(v52 + 21) = 2048;

        *(v52 + 23) = v107;

        *(v52 + 31) = 2080;
        v60 = OpaqueMailboxID.description.getter(v37);
        v62 = v61;

        v63 = sub_10015BA6C(v60, v62, &v110);

        *(v52 + 33) = v63;
        v64 = v96;
        _os_log_impl(&_mh_execute_header, v96, v102, "[%.*hhx-%{public}s] Did store server unread count %ld (aka. UNSEEN) for %s.", v52, 0x29u);
        swift_arrayDestroy();

        v34 = v91;
        a2 = v92;
        v32 = v97;
        v30 = v99;
      }

      else
      {

        sub_1000FF274(v50);

        swift_bridgeObjectRelease_n();
        sub_1000FF274(v13);
      }

      v67 = __OFADD__(v32++, 1);
      v15 = v106;
      if (v67)
      {
        goto LABEL_68;
      }

LABEL_13:
      if (++v33 == v104)
      {
        v7 = v85;
        goto LABEL_58;
      }
    }

    v66 = 32;
    while (*(v37 + v66) == *(v30 + v66))
    {
      ++v66;
      if (!--v65)
      {
        goto LABEL_38;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v32 = 0;
  v34 = v31;
LABEL_58:

  v68 = *(v34 + 16);
  v69 = v86;
  if (v32 < v68)
  {
    sub_1000D696C(a2, v7);
    sub_1000D696C(a2, v69);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_10014256C(v87, &v110);
    v70 = sub_1004A4A54();
    v71 = sub_1004A6034();
    if (os_log_type_enabled(v70, v71))
    {
      v97 = v32;
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v109[0] = v73;
      *v72 = 68158466;
      *(v72 + 4) = 2;
      *(v72 + 8) = 256;
      v74 = v94;
      v75 = *(v69 + *(v94 + 20));
      sub_1000FF274(v69);
      *(v72 + 10) = v75;
      *(v72 + 11) = 2082;
      v76 = &v7[*(v74 + 20)];
      v77 = v7;
      v78 = v76[1];
      v79 = v76[2];
      v80 = v76[3];
      sub_100018BD0(*v76, v78, v79, v80, v76[4]);
      sub_1000FF274(v77);
      if (v80 < 0)
      {
      }

      v81 = sub_10015BA6C(v78, v79, v109);

      *(v72 + 13) = v81;
      *(v72 + 21) = 2048;
      v82 = *(v110 + 16);
      v83 = v82 - v97;
      if (__OFSUB__(v82, v97))
      {
        goto LABEL_70;
      }

      sub_1001425C8(&v110);
      *(v72 + 23) = v83;
      _os_log_impl(&_mh_execute_header, v70, v71, "[%.*hhx-%{public}s] Did store server unread counts for %ld more mailboxes.", v72, 0x1Fu);
      sub_1000197E0(v73);
    }

    else
    {
      sub_1001425C8(&v110);
      sub_1000FF274(v69);

      sub_1000FF274(v7);
    }
  }
}

uint64_t sub_1001761A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = sub_100176548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t WatchOSHeaderInfo.messageIDHeader.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

unint64_t sub_100176208()
{
  result = qword_1005D23B8;
  if (!qword_1005D23B8)
  {
    result = swift_getWitnessTable(byte_1004DA264, &type metadata for UpdateServerUnreadCount.ActionID, v0, v1);
    atomic_store(result, &qword_1005D23B8);
  }

  return result;
}

unint64_t sub_10017625C(uint64_t a1)
{
  result = sub_100176284();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100176284()
{
  result = qword_1005D2438;
  if (!qword_1005D2438)
  {
    result = swift_getWitnessTable(byte_1004DA220, &type metadata for UpdateServerUnreadCount, v0, v1);
    atomic_store(result, &qword_1005D2438);
  }

  return result;
}

void sub_1001762D8(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (v3)
  {
    v7 = a1[4];
    v8 = a1[5];
    v45 = a1[6];
    v9 = *a3;
    v10 = sub_100063C84(v7, v8);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      sub_1000C2D38(v14, a2 & 1);
      v18 = sub_100063C84(v7, v8);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_27:
        sub_1004A6E24();
        __break(1u);
        return;
      }

      v15 = v18;
      v20 = *a3;
      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_9:

      *(v20[7] + 8 * v15) = v45;
      v21 = v3 - 1;
      if (v3 == 1)
      {
        return;
      }

LABEL_15:
      for (i = a1 + 9; ; i += 3)
      {
        v27 = *(i - 2);
        v28 = *(i - 1);
        v29 = *i;
        v30 = *a3;
        v31 = sub_100063C84(v27, v28);
        v33 = v30[2];
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          break;
        }

        v36 = v31;
        v37 = v32;
        v38 = v30[3];

        if (v38 < v35)
        {
          sub_1000C2D38(v35, 1);
          v39 = sub_100063C84(v27, v28);
          if ((v37 & 1) != (v40 & 1))
          {
            goto LABEL_27;
          }

          v36 = v39;
        }

        v41 = *a3;
        if (v37)
        {

          *(v41[7] + 8 * v36) = v29;
        }

        else
        {
          v41[(v36 >> 6) + 8] |= 1 << v36;
          v42 = (v41[6] + 16 * v36);
          *v42 = v27;
          v42[1] = v28;
          *(v41[7] + 8 * v36) = v29;
          v43 = v41[2];
          v24 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v24)
          {
            goto LABEL_26;
          }

          v41[2] = v44;
        }

        if (!--v21)
        {
          return;
        }
      }

      goto LABEL_25;
    }

    if (a2)
    {
      v20 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_10013A16C();
      v20 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20[(v15 >> 6) + 8] |= 1 << v15;
    v22 = (v20[6] + 16 * v15);
    *v22 = v7;
    v22[1] = v8;
    *(v20[7] + 8 * v15) = v45;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v20[2] = v25;
    v21 = v3 - 1;
    if (v3 == 1)
    {
      return;
    }

    goto LABEL_15;
  }
}

uint64_t sub_100176548(uint64_t a1, uint64_t a2)
{
  if (sub_10001E3C0(a1, a2))
  {
    return 0xF000000000000007;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100091B08(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = (v4 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v17 = v6;
      v12 = v6[2];
      v11 = v6[3];

      if (v12 >= v11 >> 1)
      {
        sub_100091B08((v11 > 1), v12 + 1, 1);
        v6 = v17;
      }

      v7 += 3;
      v6[2] = v12 + 1;
      v13 = &v6[3 * v12];
      v13[4] = v8;
      v13[5] = v9;
      v13[6] = v10;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      v14 = _swiftEmptyDictionarySingleton;
      goto LABEL_11;
    }
  }

  sub_10000C9C0(&qword_1005CF770, &qword_1004D2C90);
  v14 = sub_1004A6A74();
LABEL_11:
  v17 = v14;
  sub_1001762D8(v6, 1, &v17);

  v15 = v17;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  return v16 | 0x4000000000000000;
}

uint64_t sub_1001766CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10017671C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = sub_1000CE570(&off_1005992B0);
  *(a3 + 48) = 0;
  v6 = type metadata accessor for UploadFlagChanges(0);
  sub_100016D2C();
  sub_1004A7114();
  sub_1004A7114();
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = 0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v8;
  *(a3 + 32) = v7;
  *(a3 + 56) = v6;
  sub_100026044();

  sub_1004A6674();
  type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v6[9]) = a2;
  return result;
}

void sub_100176838(void *a1)
{
  v2 = *(type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100141B10(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10017C094(v5);
  *a1 = v3;
}

Swift::Int sub_1001768E0()
{
  result = sub_100093190(&off_100599288);
  qword_1005DDF98 = result;
  return result;
}

uint64_t sub_100176908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v8 = *(v7 - 8);
  (*(v8 + 56))(v6, 1, 1, v7);
  v16 = a1;

  sub_100176838(&v16);

  v9 = *(v4 + 24);
  v10 = v16;
  *&v6[*(v4 + 20)] = v16;
  v11 = &v6[v9];
  v12 = v10 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = (2 * *(v10 + 16)) | 1;
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = 0;
  *(v11 + 3) = v13;
  sub_10017F180(v6, a2, type metadata accessor for UploadFlagChanges.EncodedFlags);
}

uint64_t sub_100176A78()
{
  v0 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v1 = MessageIdentifierSet.startIndex.getter(v0);
  v3 = v2;
  v5 = v1 == MessageIdentifierSet.endIndex.getter(v0) && v3 == v4;
  v6 = v5;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    MessageIdentifierSet.subscript.getter(v3, v0, &v18);
    v7 = v18;
  }

  v8 = MessageIdentifierSet.startIndex.getter(v0);
  v10 = v9;
  v12 = v8 == MessageIdentifierSet.endIndex.getter(v0) && v10 == v11;
  v13 = !v12;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    MessageIdentifierSet.subscript.getter(v10, v0, &v17);
    v14 = v17;
  }

  if (v7 < v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v6)
  {
    return v13;
  }

  else
  {
    return v15;
  }
}

void sub_100176B84(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  sub_10017EF90(a1, v19 - v6, type metadata accessor for MailboxTaskLogger);
  sub_10017EF90(a1, v4, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v8 = sub_1004A4A54();
  v9 = sub_1004A6034();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 68159235;
    *(v10 + 4) = 2;
    *(v10 + 8) = 256;
    v11 = &v4[*(v2 + 20)];
    *(v10 + 10) = *v11;
    *(v10 + 11) = 2082;
    v12 = &v7[*(v2 + 20)];
    *(v10 + 13) = sub_10015BA6C(*(v12 + 1), *(v12 + 2), &v21);
    *(v10 + 21) = 1040;
    *(v10 + 23) = 2;
    *(v10 + 27) = 512;
    v13 = *(v11 + 12);
    sub_10017EFF8(v4, type metadata accessor for MailboxTaskLogger);
    *(v10 + 29) = v13;
    *(v10 + 31) = 2160;
    *(v10 + 33) = 0x786F626C69616DLL;
    *(v10 + 41) = 2085;
    v14 = *(v12 + 4);
    v15 = *(v12 + 10);

    sub_10017EFF8(v7, type metadata accessor for MailboxTaskLogger);
    v19[1] = v14;
    v20 = v15;
    v16 = sub_1004A5824();
    v18 = sub_10015BA6C(v16, v17, &v21);

    *(v10 + 43) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v10, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10017EFF8(v4, type metadata accessor for MailboxTaskLogger);

    sub_10017EFF8(v7, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_100176E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X8>)
{
  v7 = v6;
  v46 = a3;
  v47 = a5;
  v44 = a1;
  v45 = a2;
  v48 = a6;
  v9 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  v13 = sub_10000C9C0(&qword_1005D27D0, &qword_1004DA4A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = *(a4 + 88);
  v20 = *(a4 + 120);
  v49[4] = *(a4 + 104);
  v49[5] = v20;
  v50 = *(a4 + 136);
  v21 = *(a4 + 56);
  v49[0] = *(a4 + 40);
  v49[1] = v21;
  v49[2] = *(a4 + 72);
  v49[3] = v19;
  v22 = type metadata accessor for UploadFlagChanges(0);
  sub_100177380(v49, v47, v15);
  v23 = sub_10000C9C0(&qword_1005D27D8, &qword_1004DA4A8);
  if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
  {
    v24 = v48;
    sub_100025F40(v15, &qword_1005D27D0, &qword_1004DA4A0);
    v25 = sub_1004A70C4();
    v27 = v45;
    v26 = v46;
    if (v25 & 1) != 0 || (sub_10011264C(2, v45, v46))
    {
      if (sub_10011264C(1, v27, v26))
      {
        goto LABEL_6;
      }

      v28 = *(v22 + 40);
      if (sub_1004A70C4())
      {
        goto LABEL_6;
      }

      v39 = *(v7 + *(v22 + 36));
      if (v39 == 2)
      {
        goto LABEL_12;
      }

      if (sub_100058284(0, v44, v27, v26))
      {
LABEL_6:
        v29 = sub_10000C9C0(&qword_1005D27E0, &unk_1004DA4B0);
        return (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
      }

      if (v39)
      {
LABEL_12:
        v40 = &off_1005995F0;
      }

      else
      {
        v40 = &off_100599558;
      }

      v38 = sub_10000C9C0(&qword_1005D27E0, &unk_1004DA4B0);
      v41 = &v24[*(v38 + 48)];
      *v24 = 1;
      v42 = v41 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
      sub_10000E268(v7 + v28, v41, &unk_1005D91B0, &unk_1004CF400);
      *v42 = v40;
      *(v42 + 8) = 0;
      *(v42 + 16) = 1;
      type metadata accessor for ClientCommand(0);
    }

    else
    {
      v38 = sub_10000C9C0(&qword_1005D27E0, &unk_1004DA4B0);
      *v24 = 2;
      type metadata accessor for ClientCommand(0);
    }

    swift_storeEnumTagMultiPayload();
    return (*(*(v38 - 8) + 56))(v24, 0, 1, v38);
  }

  else
  {
    v31 = &v15[*(v23 + 48)];
    v32 = *v31;
    v33 = v31[1];
    v47 = *(v31 + 1);
    sub_100025FDC(v15, v18, &unk_1005D91B0, &unk_1004CF400);
    (*(v10 + 16))(v12, v18, v9);
    sub_1004A7104();
    v34 = sub_10000C9C0(&qword_1005D27E0, &unk_1004DA4B0);
    v35 = v48;
    v36 = &v48[*(v34 + 48)];
    *v48 = 0;
    v37 = v36 + *(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48);
    sub_100025FDC(v18, v36, &unk_1005D91B0, &unk_1004CF400);
    *v37 = v32;
    *(v37 + 1) = v33;
    *(v37 + 8) = v47;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v34 - 8) + 56))(v35, 0, 1, v34);
  }
}

uint64_t sub_100177380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v44 = a3;
  v7 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  __chkstk_darwin(v13);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
  __chkstk_darwin(v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017EF90(v4, v15, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v36 = sub_10000C9C0(&qword_1005D27D8, &qword_1004DA4A8);
      return (*(*(v36 - 8) + 56))(v44, 1, 1, v36);
    }

    sub_10017EFF8(v4, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    v20 = *(v15 + *(sub_10000C9C0(&qword_1005D27C8, &unk_1004DA490) + 48));
    sub_10017F180(v15, v18, type metadata accessor for UploadFlagChanges.EncodedFlags);
  }

  else
  {
    sub_10017EFF8(v4, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    v21 = *v15;

    sub_100095920(a1, &v46);
    v43 = v21;
    sub_10017ABDC(v21, a1, v18);
    v22 = *&v18[*(v16 + 20)];
    if (*(v22 + 16) || sub_10017B0F8())
    {
      sub_10017EF90(a2, v12, type metadata accessor for MailboxTaskLogger);
      sub_10017EF90(a2, v9, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v23 = sub_1004A4A54();
      v24 = sub_1004A6034();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v41 = v23;
        v26 = v25;
        v42 = swift_slowAlloc();
        v45 = v42;
        *v26 = 68159747;
        v40 = v24;
        *(v26 + 4) = 2;
        *(v26 + 8) = 256;
        v27 = *(v7 + 20);
        v39 = v22;
        v28 = &v9[v27];
        *(v26 + 10) = v9[v27];
        *(v26 + 11) = 2082;
        v29 = &v12[*(v7 + 20)];
        *(v26 + 13) = sub_10015BA6C(*(v29 + 1), *(v29 + 2), &v45);
        *(v26 + 21) = 1040;
        *(v26 + 23) = 2;
        *(v26 + 27) = 512;
        LOWORD(v28) = *(v28 + 12);
        sub_10017EFF8(v9, type metadata accessor for MailboxTaskLogger);
        *(v26 + 29) = v28;
        *(v26 + 31) = 2160;
        *(v26 + 33) = 0x786F626C69616DLL;
        *(v26 + 41) = 2085;
        v30 = *(v29 + 4);
        v31 = *(v29 + 10);

        sub_10017EFF8(v12, type metadata accessor for MailboxTaskLogger);
        v46 = v30;
        v47 = v31;
        v32 = sub_1004A5824();
        v34 = sub_10015BA6C(v32, v33, &v45);

        *(v26 + 43) = v34;
        *(v26 + 51) = 2048;
        *(v26 + 53) = *(v39 + 16);
        *(v26 + 61) = 2048;
        swift_beginAccess();
        *(v26 + 63) = sub_10017B0F8();
        v35 = v41;
        _os_log_impl(&_mh_execute_header, v41, v40, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Grouped the local flag changes into %ld message sets. Expecting %ld commands.", v26, 0x47u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10017EFF8(v9, type metadata accessor for MailboxTaskLogger);

        sub_10017EFF8(v12, type metadata accessor for MailboxTaskLogger);
      }
    }

    v20 = v43;
  }

  swift_beginAccess();
  sub_10017B264(a2, v44);
  swift_endAccess();
  v38 = *(sub_10000C9C0(&qword_1005D27C8, &unk_1004DA490) + 48);
  sub_10017EF90(v18, v4, type metadata accessor for UploadFlagChanges.EncodedFlags);
  *(v4 + v38) = v20;
  swift_storeEnumTagMultiPayload();
  return sub_10017EFF8(v18, type metadata accessor for UploadFlagChanges.EncodedFlags);
}

uint64_t sub_100177930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v250 = a6;
  v255 = a3;
  v256 = a1;
  v236 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  __chkstk_darwin(v236);
  v237 = &v227 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v246);
  v229 = &v227 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v230 = &v227 - v12;
  __chkstk_darwin(v13);
  v239 = &v227 - v14;
  __chkstk_darwin(v15);
  v241 = &v227 - v16;
  __chkstk_darwin(v17);
  v231 = &v227 - v18;
  __chkstk_darwin(v19);
  v232 = &v227 - v20;
  __chkstk_darwin(v21);
  v243 = &v227 - v22;
  __chkstk_darwin(v23);
  v244 = &v227 - v24;
  __chkstk_darwin(v25);
  v234 = &v227 - v26;
  __chkstk_darwin(v27);
  v235 = &v227 - v28;
  v29 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v29 - 8);
  v252 = &v227 - v30;
  v31 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v31 - 8);
  v249 = &v227 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v227 - v34;
  v36 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v253 = *(v36 - 8);
  v254 = v36;
  __chkstk_darwin(v36);
  v38 = &v227 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v247 = &v227 - v40;
  __chkstk_darwin(v41);
  v240 = &v227 - v42;
  __chkstk_darwin(v43);
  v45 = &v227 - v44;
  __chkstk_darwin(v46);
  v242 = &v227 - v47;
  __chkstk_darwin(v48);
  v248 = &v227 - v49;
  __chkstk_darwin(v50);
  v238 = &v227 - v51;
  __chkstk_darwin(v52);
  v233 = &v227 - v53;
  __chkstk_darwin(v54);
  v56 = &v227 - v55;
  __chkstk_darwin(v57);
  v245 = &v227 - v58;
  v257 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v257);
  v60 = &v227 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v63 = &v227 - v62;
  __chkstk_darwin(v64);
  v258 = &v227 - v65;
  v66 = type metadata accessor for UploadFlagChanges(0);
  v67 = *(v66 + 52);
  if (!*(v6 + v67))
  {
    *(v6 + v67) = 1;
    v72 = swift_allocObject();
    v73 = v6[1];
    v72[2] = *v6;
    v72[3] = v73;
    v72[4] = 1;

    return 0;
  }

  v68 = v66;
  v227 = v38;
  v69 = a4;
  if ((sub_1000203A4(1, a2, a4) & 1) == 0)
  {
    v75 = swift_allocObject();
    v76 = v6[1];
    v75[2] = *v6;
    v75[3] = v76;
    v75[4] = 733;

    return 1;
  }

  v228 = *(v68 + 40);
  v251 = v6;
  MessageIdentifierSet.subtracting(_:)(v6 + v228, v258);
  v70 = v255;
  if ((sub_10001A3D4(1, v256, a2, v255) & 1) != 0 && (sub_1000203A4(3, a2, v69) & 1) == 0)
  {
    sub_10000E268(v258, v63, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v63, &unk_1005D91B0, &unk_1004CF400);
      v71 = 1;
    }

    else
    {
      sub_100025FDC(v63, v56, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v56, v35, &qword_1005CD1D0, &unk_1004CF2C0);
      v71 = 0;
    }

    v78 = v253;
    v77 = v254;
    (*(v253 + 56))(v35, v71, 1, v254);
    if ((*(v78 + 48))(v35, 1, v77) == 1)
    {
      sub_100025F40(v35, &qword_1005CD518, &qword_1004CF2F0);
      goto LABEL_12;
    }

    v86 = v245;
    sub_100025FDC(v35, v245, &qword_1005CD1D0, &unk_1004CF2C0);
    v87 = v252;
    MessageIdentifierSet.ranges.getter(v252);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v88 = sub_1004A7044();
    v89 = sub_1004A7074();
    v90 = sub_1004A7044();
    v91 = sub_1004A7074();
    if (v88 < v90 || v91 < v88)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v92 = sub_1004A7044();
    v93 = sub_1004A7074();
    sub_100025F40(v87, &qword_1005CD7A0, &unk_1004CF590);
    v94 = v89 < v92;
    v95 = v243;
    v96 = v244;
    if (v94 || v93 < v89)
    {
      goto LABEL_91;
    }

    v97 = v89 - v88;
    if (__OFSUB__(v89, v88))
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }

    v98 = v248;
    if (v97 > 19)
    {
      v175 = v250;
      sub_10017EF90(v250, v244, type metadata accessor for MailboxTaskLogger);
      sub_10017EF90(v175, v95, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10000E268(v86, v98, &qword_1005CD1D0, &unk_1004CF2C0);
      v104 = sub_1004A4A54();
      v176 = sub_1004A6034();
      if (os_log_type_enabled(v104, v176))
      {
        v177 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v261 = v256;
        *v177 = 68159491;
        *(v177 + 4) = 2;
        *(v177 + 8) = 256;
        v178 = v246;
        v179 = v95 + *(v246 + 20);
        *(v177 + 10) = *v179;
        *(v177 + 11) = 2082;
        v180 = v96 + *(v178 + 20);
        *(v177 + 13) = sub_10015BA6C(*(v180 + 8), *(v180 + 16), &v261);
        *(v177 + 21) = 1040;
        *(v177 + 23) = 2;
        *(v177 + 27) = 512;
        LOWORD(v179) = *(v179 + 24);
        sub_10017EFF8(v95, type metadata accessor for MailboxTaskLogger);
        *(v177 + 29) = v179;
        *(v177 + 31) = 2160;
        *(v177 + 33) = 0x786F626C69616DLL;
        *(v177 + 41) = 2085;
        v181 = *(v180 + 32);
        LODWORD(v180) = *(v180 + 40);

        sub_10017EFF8(v96, type metadata accessor for MailboxTaskLogger);
        v259 = v181;
        v260 = v180;
        v182 = sub_1004A5824();
        v184 = sub_10015BA6C(v182, v183, &v261);

        *(v177 + 43) = v184;
        *(v177 + 51) = 2048;
        v185 = v248;
        v186 = MessageIdentifierSet.count.getter();
        sub_100025F40(v185, &qword_1005CD1D0, &unk_1004CF2C0);
        *(v177 + 53) = v186;
        _os_log_impl(&_mh_execute_header, v104, v176, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to delete %ld messages after uploading flag changes", v177, 0x3Du);
        goto LABEL_68;
      }

      sub_100025F40(v98, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10017EFF8(v95, type metadata accessor for MailboxTaskLogger);

      v202 = v96;
    }

    else
    {
      v99 = v250;
      v100 = v235;
      sub_10017EF90(v250, v235, type metadata accessor for MailboxTaskLogger);
      v101 = v234;
      sub_10017EF90(v99, v234, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v102 = v233;
      sub_10000E268(v86, v233, &qword_1005CD1D0, &unk_1004CF2C0);
      v103 = v238;
      sub_10000E268(v86, v238, &qword_1005CD1D0, &unk_1004CF2C0);
      v104 = sub_1004A4A54();
      v105 = sub_1004A6034();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v261 = v256;
        *v106 = 68159747;
        *(v106 + 4) = 2;
        *(v106 + 8) = 256;
        v107 = v246;
        v108 = v101 + *(v246 + 20);
        *(v106 + 10) = *v108;
        *(v106 + 11) = 2082;
        v109 = v100 + *(v107 + 20);
        *(v106 + 13) = sub_10015BA6C(*(v109 + 8), *(v109 + 16), &v261);
        *(v106 + 21) = 1040;
        *(v106 + 23) = 2;
        *(v106 + 27) = 512;
        LOWORD(v108) = *(v108 + 24);
        sub_10017EFF8(v101, type metadata accessor for MailboxTaskLogger);
        *(v106 + 29) = v108;
        *(v106 + 31) = 2160;
        *(v106 + 33) = 0x786F626C69616DLL;
        *(v106 + 41) = 2085;
        v110 = *(v109 + 32);
        LODWORD(v109) = *(v109 + 40);

        sub_10017EFF8(v100, type metadata accessor for MailboxTaskLogger);
        v259 = v110;
        v260 = v109;
        v111 = sub_1004A5824();
        v113 = sub_10015BA6C(v111, v112, &v261);

        *(v106 + 43) = v113;
        *(v106 + 51) = 2048;
        v114 = MessageIdentifierSet.count.getter();
        sub_100025F40(v102, &qword_1005CD1D0, &unk_1004CF2C0);
        *(v106 + 53) = v114;
        *(v106 + 61) = 2082;
        v115 = v238;
        v116 = MessageIdentifierSet.debugDescription.getter();
        v118 = v117;
        sub_100025F40(v115, &qword_1005CD1D0, &unk_1004CF2C0);
        v119 = sub_10015BA6C(v116, v118, &v261);

        *(v106 + 63) = v119;
        _os_log_impl(&_mh_execute_header, v104, v105, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to delete %ld messages with UIDs %{public}s after uploading flag changes", v106, 0x47u);
LABEL_68:
        swift_arrayDestroy();

LABEL_76:
        sub_100025F40(v258, &unk_1005D91B0, &unk_1004CF400);
        v203 = sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0);
        swift_allocBox();
        v204 = *(v203 + 48);
        v205 = v251[1];
        *v206 = *v251;
        v206[1] = v205;
        sub_100025FDC(v86, v206 + v204, &qword_1005CD1D0, &unk_1004CF2C0);

        return 3;
      }

      sub_100025F40(v102, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10017EFF8(v101, type metadata accessor for MailboxTaskLogger);

      sub_100025F40(v103, &qword_1005CD1D0, &unk_1004CF2C0);
      v202 = v100;
    }

    sub_10017EFF8(v202, type metadata accessor for MailboxTaskLogger);
    goto LABEL_76;
  }

LABEL_12:
  v79 = v256;
  v80 = sub_10001A3D4(1, v256, a2, v70);
  v81 = v251;
  v82 = v69;
  if ((v80 & 1) != 0 && (sub_1000203A4(4, a2, v69) & 1) == 0)
  {
    sub_10000E268(v81 + v228, v60, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v60, &unk_1005D91B0, &unk_1004CF400);
      v84 = 1;
      v85 = v252;
      v83 = v249;
    }

    else
    {
      sub_100025FDC(v60, v45, &unk_1005D91B0, &unk_1004CF400);
      v83 = v249;
      sub_100025FDC(v45, v249, &qword_1005CD1D0, &unk_1004CF2C0);
      v84 = 0;
      v85 = v252;
    }

    v121 = v253;
    v120 = v254;
    (*(v253 + 56))(v83, v84, 1, v254);
    if ((*(v121 + 48))(v83, 1, v120) == 1)
    {
      sub_100025F40(v83, &qword_1005CD518, &qword_1004CF2F0);
      goto LABEL_27;
    }

    v124 = v242;
    sub_100025FDC(v83, v242, &qword_1005CD1D0, &unk_1004CF2C0);
    MessageIdentifierSet.ranges.getter(v85);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v125 = sub_1004A7044();
    v126 = sub_1004A7074();
    v127 = sub_1004A7044();
    v128 = sub_1004A7074();
    if (v125 < v127 || v128 < v125)
    {
      goto LABEL_93;
    }

    v129 = sub_1004A7044();
    v130 = sub_1004A7074();
    sub_100025F40(v85, &qword_1005CD7A0, &unk_1004CF590);
    v131 = v241;
    v132 = v240;
    if (v126 < v129 || v130 < v126)
    {
      goto LABEL_94;
    }

    v133 = v126 - v125;
    v134 = v247;
    if (__OFSUB__(v126, v125))
    {
      goto LABEL_95;
    }

    v135 = v239;
    if (v133 <= 19)
    {
      v136 = v250;
      v137 = v232;
      sub_10017EF90(v250, v232, type metadata accessor for MailboxTaskLogger);
      v138 = v231;
      sub_10017EF90(v136, v231, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10000E268(v124, v132, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000E268(v124, v134, &qword_1005CD1D0, &unk_1004CF2C0);
      v189 = sub_1004A4A54();
      v139 = sub_1004A6034();
      if (os_log_type_enabled(v189, v139))
      {
        v140 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v261 = v256;
        *v140 = 68159747;
        *(v140 + 4) = 2;
        *(v140 + 8) = 256;
        v141 = v246;
        v142 = v138 + *(v246 + 20);
        *(v140 + 10) = *v142;
        v143 = v137;
        *(v140 + 11) = 2082;
        v144 = v137 + *(v141 + 20);
        *(v140 + 13) = sub_10015BA6C(*(v144 + 8), *(v144 + 16), &v261);
        *(v140 + 21) = 1040;
        *(v140 + 23) = 2;
        *(v140 + 27) = 512;
        LOWORD(v142) = *(v142 + 24);
        sub_10017EFF8(v138, type metadata accessor for MailboxTaskLogger);
        *(v140 + 29) = v142;
        *(v140 + 31) = 2160;
        *(v140 + 33) = 0x786F626C69616DLL;
        *(v140 + 41) = 2085;
        v145 = *(v144 + 32);
        LODWORD(v144) = *(v144 + 40);

        sub_10017EFF8(v143, type metadata accessor for MailboxTaskLogger);
        v259 = v145;
        v260 = v144;
        v146 = sub_1004A5824();
        v148 = sub_10015BA6C(v146, v147, &v261);

        *(v140 + 43) = v148;
        *(v140 + 51) = 2048;
        v149 = MessageIdentifierSet.count.getter();
        sub_100025F40(v132, &qword_1005CD1D0, &unk_1004CF2C0);
        *(v140 + 53) = v149;
        *(v140 + 61) = 2082;
        v150 = v247;
        v151 = MessageIdentifierSet.debugDescription.getter();
        v153 = v152;
        sub_100025F40(v150, &qword_1005CD1D0, &unk_1004CF2C0);
        v154 = sub_10015BA6C(v151, v153, &v261);

        *(v140 + 63) = v154;
        _os_log_impl(&_mh_execute_header, v189, v139, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removing %ld deleted messages with UIDs %{public}s after uploading flag changes", v140, 0x47u);
LABEL_71:
        swift_arrayDestroy();

LABEL_80:
        sub_100025F40(v258, &unk_1005D91B0, &unk_1004CF400);
        v208 = sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0);
        swift_allocBox();
        v209 = *(v208 + 48);
        v210 = v251[1];
        *v211 = *v251;
        v211[1] = v210;
        sub_100025FDC(v124, v211 + v209, &qword_1005CD1D0, &unk_1004CF2C0);

        return 4;
      }

      sub_100025F40(v132, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10017EFF8(v138, type metadata accessor for MailboxTaskLogger);

      sub_100025F40(v134, &qword_1005CD1D0, &unk_1004CF2C0);
      v207 = v137;
    }

    else
    {
      v187 = v250;
      sub_10017EF90(v250, v241, type metadata accessor for MailboxTaskLogger);
      sub_10017EF90(v187, v135, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v188 = v227;
      sub_10000E268(v124, v227, &qword_1005CD1D0, &unk_1004CF2C0);
      v189 = sub_1004A4A54();
      v190 = sub_1004A6034();
      if (os_log_type_enabled(v189, v190))
      {
        v192 = v135;
        v193 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v261 = v256;
        *v193 = 68159491;
        *(v193 + 4) = 2;
        *(v193 + 8) = 256;
        v194 = v246;
        v195 = v192 + *(v246 + 20);
        *(v193 + 10) = *v195;
        *(v193 + 11) = 2082;
        v196 = v131 + *(v194 + 20);
        *(v193 + 13) = sub_10015BA6C(*(v196 + 8), *(v196 + 16), &v261);
        *(v193 + 21) = 1040;
        *(v193 + 23) = 2;
        *(v193 + 27) = 512;
        LOWORD(v195) = *(v195 + 24);
        sub_10017EFF8(v192, type metadata accessor for MailboxTaskLogger);
        *(v193 + 29) = v195;
        *(v193 + 31) = 2160;
        *(v193 + 33) = 0x786F626C69616DLL;
        *(v193 + 41) = 2085;
        v197 = *(v196 + 32);
        LODWORD(v196) = *(v196 + 40);

        sub_10017EFF8(v131, type metadata accessor for MailboxTaskLogger);
        v259 = v197;
        v260 = v196;
        v198 = sub_1004A5824();
        v200 = sub_10015BA6C(v198, v199, &v261);

        *(v193 + 43) = v200;
        *(v193 + 51) = 2048;
        v201 = MessageIdentifierSet.count.getter();
        sub_100025F40(v188, &qword_1005CD1D0, &unk_1004CF2C0);
        *(v193 + 53) = v201;
        _os_log_impl(&_mh_execute_header, v189, v190, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removing %ld deleted messages after uploading flag changes", v193, 0x3Du);
        goto LABEL_71;
      }

      sub_100025F40(v188, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10017EFF8(v135, type metadata accessor for MailboxTaskLogger);

      v207 = v131;
    }

    sub_10017EFF8(v207, type metadata accessor for MailboxTaskLogger);
    goto LABEL_80;
  }

LABEL_27:
  if ((sub_10011264C(0, a2, v70) & 1) != 0 && (sub_10001A3D4(0, v79, a2, v70) & 1) == 0)
  {
    if (sub_10001A3D4(1, v79, a2, v70))
    {
LABEL_38:
      sub_100025F40(v258, &unk_1005D91B0, &unk_1004CF400);
      return 5;
    }

    v122 = 0;
    goto LABEL_34;
  }

  v122 = sub_10017968C();
  if ((sub_10001A3D4(1, v79, a2, v70) & 1) == 0)
  {
LABEL_34:
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v123 = sub_1004A70C4();
    if (!v122 || (v123 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (!v122)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (sub_100058284(1, v79, a2, v70) & 1) != 0 || (sub_1000203A4(2, a2, v82))
  {
    goto LABEL_38;
  }

  v155 = v237;
  sub_10017EF90(v251 + *(v68 + 32), v237, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100025F40(v258, &unk_1005D91B0, &unk_1004CF400);
    sub_10017EFF8(v155, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    return 5;
  }

  v156 = *(v155 + *(sub_10000C9C0(&qword_1005D27C8, &unk_1004DA490) + 48));
  sub_10017EFF8(v155, type metadata accessor for UploadFlagChanges.EncodedFlags);
  v157 = sub_1001643A4(_swiftEmptyArrayStorage);
  v158 = *(v156 + 16);
  if (v158)
  {
    v159 = 0;
    v160 = 0;
    v161 = (v156 + 56);
    v162 = v257;
    while (v160 < *(v156 + 16))
    {
      v163 = *(v161 - 6);
      v164 = *v161;
      LODWORD(v259) = v163;

      if (MessageIdentifierSet.contains(_:)(&v259, v162) & 1) != 0 || (LODWORD(v259) = v163, (MessageIdentifierSet.contains(_:)(&v259, v162)))
      {
      }

      else
      {
        sub_1000B5158(v159, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v259 = v157;
        v166 = sub_100067004();
        v168 = v157[2];
        v169 = (v167 & 1) == 0;
        v170 = __OFADD__(v168, v169);
        v171 = v168 + v169;
        if (v170)
        {
          goto LABEL_89;
        }

        v172 = v167;
        if (v157[3] >= v171)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v174 = v166;
            sub_10013BC64();
            v166 = v174;
          }
        }

        else
        {
          sub_1000C6A34(v171, isUniquelyReferenced_nonNull_native);
          v166 = sub_100067004();
          if ((v172 & 1) != (v173 & 1))
          {
            goto LABEL_96;
          }
        }

        v162 = v257;
        v157 = v259;
        if ((v172 & 1) == 0)
        {
          sub_10001C858(v166, v163, _swiftEmptySetSingleton, v259);
        }

        sub_100080CB4(v164);
        v159 = sub_10010F618;
      }

      ++v160;
      v161 += 4;
      if (v158 == v160)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v159 = 0;
LABEL_82:

  if (!v157[2])
  {
    sub_100025F40(v258, &unk_1005D91B0, &unk_1004CF400);

    sub_1000B5158(v159, 0);
    return 5;
  }

  v212 = v250;
  v213 = v230;
  sub_10017EF90(v250, v230, type metadata accessor for MailboxTaskLogger);
  v214 = v229;
  sub_10017EF90(v212, v229, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v215 = sub_1004A4A54();
  v216 = sub_1004A6034();
  if (os_log_type_enabled(v215, v216))
  {
    v217 = swift_slowAlloc();
    v257 = swift_slowAlloc();
    v261 = v257;
    *v217 = 68159491;
    *(v217 + 4) = 2;
    *(v217 + 8) = 256;
    v218 = v246;
    v219 = v214 + *(v246 + 20);
    *(v217 + 10) = *v219;
    *(v217 + 11) = 2082;
    v220 = v213 + *(v218 + 20);
    *(v217 + 13) = sub_10015BA6C(*(v220 + 8), *(v220 + 16), &v261);
    *(v217 + 21) = 1040;
    *(v217 + 23) = 2;
    *(v217 + 27) = 512;
    LOWORD(v219) = *(v219 + 24);
    sub_10017EFF8(v214, type metadata accessor for MailboxTaskLogger);
    *(v217 + 29) = v219;
    *(v217 + 31) = 2160;
    *(v217 + 33) = 0x786F626C69616DLL;
    *(v217 + 41) = 2085;
    v221 = *(v220 + 32);
    LODWORD(v220) = *(v220 + 40);

    sub_10017EFF8(v213, type metadata accessor for MailboxTaskLogger);
    v259 = v221;
    v260 = v220;
    v222 = sub_1004A5824();
    v224 = sub_10015BA6C(v222, v223, &v261);

    *(v217 + 43) = v224;
    *(v217 + 51) = 2048;
    *(v217 + 53) = v157[2];
    _os_log_impl(&_mh_execute_header, v215, v216, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did upload flags for %ld messages", v217, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_10017EFF8(v214, type metadata accessor for MailboxTaskLogger);

    sub_10017EFF8(v213, type metadata accessor for MailboxTaskLogger);
  }

  sub_100025F40(v258, &unk_1005D91B0, &unk_1004CF400);
  v225 = swift_allocObject();
  v226 = v251[1];
  v225[2] = *v251;
  v225[3] = v226;
  v225[4] = v157;

  sub_1000B5158(v159, 0);
  return 2;
}

BOOL sub_10017968C()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005D2500, &qword_1004DA328);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017EF90(v1, v10, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10017EFF8(v10, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 0;
  }

  sub_10000C9C0(&qword_1005D27C8, &unk_1004DA490);

  sub_10017F180(v10, v7, type metadata accessor for UploadFlagChanges.EncodedFlags);
  sub_10000E268(v7, v4, &qword_1005D2500, &qword_1004DA328);
  v12 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v13 = (*(*(v12 - 8) + 48))(v4, 1, v12);
  sub_100025F40(v4, &qword_1005D2500, &qword_1004DA328);
  v14 = v13 == 1 && *&v7[*(v5 + 24) + 16] == *&v7[*(v5 + 24) + 24] >> 1;
  sub_10017EFF8(v7, type metadata accessor for UploadFlagChanges.EncodedFlags);
  return v14;
}

void sub_1001798F8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = a1;
  v73 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v73);
  v76 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v78 = &v64 - v7;
  v8 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  __chkstk_darwin(v8);
  v10 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v77);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v64 - v14;
  v16 = type metadata accessor for UploadFlagChanges(0);
  v66 = *(v16 + 44);
  sub_10000E268(v3 + v66, v15, &unk_1005D91B0, &unk_1004CF400);
  v17 = *(v16 + 32);
  sub_10017EF90(v3 + v17, v10, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10017EFF8(v10, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    v75 = _swiftEmptyArrayStorage;
    v19 = v76;
    v20 = v15;
LABEL_8:
    v26 = v78;
    v27 = *(v79 + 16);
    if (v27)
    {
      v28 = 0;
      v29 = v79 + 32;
      *&v18 = 68159491;
      v70 = v18;
      v69 = v3;
      v68 = v8;
      v72 = a2;
      v71 = v20;
      v67 = v17;
      v74 = v27;
      v65 = v79 + 32;
      while (2)
      {
        v30 = (v29 + 32 * v28);
        v31 = v28;
        v32 = v77;
        while (1)
        {
          if (v31 >= v27)
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v33 = v30[1];
          *v82 = *v30;
          *&v82[16] = v33;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_47;
          }

          v79 = v31 + 1;
          sub_10017F058(v82, v81);
          if (MessageIdentifierSet.count.getter() > 732)
          {
            sub_10017F0B4(v82);
LABEL_44:
            v3 = v69;
            v17 = v67;
            goto LABEL_45;
          }

          v34 = *v82;
          *v81 = *v82;
          if ((MessageIdentifierSet.contains(_:)(v81, v32) & 1) == 0)
          {
            break;
          }

          sub_10017EF90(a2, v26, type metadata accessor for MailboxTaskLogger);
          sub_10017EF90(a2, v19, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_10017F058(v82, v81);
          v35 = sub_1004A4A54();
          v36 = sub_1004A6014();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            *v37 = v70;
            *(v37 + 4) = 2;
            *(v37 + 8) = 256;
            v38 = v73;
            v39 = v19 + *(v73 + 20);
            *(v37 + 10) = *v39;
            *(v37 + 11) = 2082;
            v40 = v78 + *(v38 + 20);
            *(v37 + 13) = sub_10015BA6C(*(v40 + 8), *(v40 + 16), &v80);
            *(v37 + 21) = 1040;
            *(v37 + 23) = 2;
            *(v37 + 27) = 512;
            LOWORD(v39) = *(v39 + 24);
            sub_10017EFF8(v76, type metadata accessor for MailboxTaskLogger);
            *(v37 + 29) = v39;
            *(v37 + 31) = 2160;
            *(v37 + 33) = 0x786F626C69616DLL;
            *(v37 + 41) = 2085;
            v41 = *(v40 + 32);
            LODWORD(v40) = *(v40 + 40);

            sub_10017EFF8(v78, type metadata accessor for MailboxTaskLogger);
            *v81 = v41;
            *&v81[8] = v40;
            a2 = v72;
            v42 = sub_1004A5824();
            v44 = sub_10015BA6C(v42, v43, &v80);
            v32 = v77;

            *(v37 + 43) = v44;
            v19 = v76;
            *(v37 + 51) = 1024;
            sub_10017F0B4(v82);
            *(v37 + 53) = v34;
            sub_10017F0B4(v82);
            _os_log_impl(&_mh_execute_header, v35, v36, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Ignoring duplicate updates for UID %u.", v37, 0x39u);
            swift_arrayDestroy();
            v20 = v71;

            v26 = v78;
          }

          else
          {
            sub_10017F0B4(v82);
            sub_10017EFF8(v19, type metadata accessor for MailboxTaskLogger);
            sub_10017F0B4(v82);

            sub_10017EFF8(v26, type metadata accessor for MailboxTaskLogger);
          }

          ++v31;
          v30 += 2;
          v27 = v74;
          if (v79 == v74)
          {
            goto LABEL_44;
          }
        }

        LODWORD(v80) = v34;
        MessageIdentifierSet.insert(_:)(v81, &v80, v32);
        v45 = 256;
        if (!v82[5])
        {
          v45 = 0;
        }

        v46 = v45 | v82[4];
        v47 = 0x10000;
        if (!v82[6])
        {
          v47 = 0;
        }

        v48 = 0x1000000;
        if (!v82[7])
        {
          v48 = 0;
        }

        v49 = v46 | v47 | v48;
        v50 = &_mh_execute_header;
        if (!v82[8])
        {
          v50 = 0;
        }

        v51 = 0x10000000000;
        if (!v82[9])
        {
          v51 = 0;
        }

        v81[0] = v82[12];
        *&v81[1] = *&v82[13];
        v81[9] = v82[21];
        v52 = FlagsWithModifications.locallyModified.getter(v49 | v50 | v51 | (v82[10] << 48) | (v82[11] << 56), *v81, *&v81[8]);
        if (*(v52 + 16))
        {
          v53 = v52;
          sub_1004A6E94();
          sub_1004A6EB4(1uLL);
          v54 = sub_1004A6F14();
          v55 = -1 << *(v53 + 32);
          v56 = v54 & ~v55;
          v3 = v69;
          v17 = v67;
          if ((*(v53 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
          {
            v57 = ~v55;
            while (*(*(v53 + 48) + v56) != 1)
            {
              v56 = (v56 + 1) & v57;
              if (((*(v53 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            LODWORD(v80) = v34;
            MessageIdentifierSet.insert(_:)(v81, &v80, v77);
          }

          else
          {
LABEL_34:
          }
        }

        else
        {

          v3 = v69;
          v17 = v67;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v74;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = sub_100087220(0, *(v75 + 2) + 1, 1, v75);
        }

        v60 = *(v75 + 2);
        v59 = *(v75 + 3);
        if (v60 >= v59 >> 1)
        {
          v75 = sub_100087220((v59 > 1), v60 + 1, 1, v75);
        }

        v61 = v75;
        *(v75 + 2) = v60 + 1;
        v62 = &v61[32 * v60];
        v63 = *&v82[16];
        *(v62 + 2) = *v82;
        *(v62 + 3) = v63;
        v28 = v79;
        v29 = v65;
        if (v79 != v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_45:
    sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
    sub_10017EFF8(v3 + v17, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    *(v3 + v17) = v75;
    swift_storeEnumTagMultiPayload();
    return;
  }

  v21 = *v10;
  sub_10000E268(v15, v12, &unk_1005D91B0, &unk_1004CF400);
  v22 = *(v21 + 16);
  v75 = v21;

  v19 = v76;
  v20 = v15;
  if (!v22)
  {
LABEL_7:

    sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v12, v20, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_8;
  }

  v23 = 0;
  v24 = v75 + 32;
  while (v23 < *(v75 + 2))
  {
    ++v23;
    v25 = *v24;
    v24 += 32;
    *v82 = v25;
    MessageIdentifierSet.insert(_:)(v81, v82, v77);
    if (v22 == v23)
    {
      goto LABEL_7;
    }
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_10017A1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v65);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v60 - v9;
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  __chkstk_darwin(v14);
  v16 = &v60 - v15;
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  v66 = type metadata accessor for UploadFlagChanges(0);
  if (*(a2 + *(v66 + 48)))
  {
    sub_10017EF90(a3, v16, type metadata accessor for MailboxTaskLogger);
    sub_10017EF90(a3, v13, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v23 = sub_1004A4A54();
    v24 = sub_1004A6034();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v69 = v61;
      *v25 = 68159235;
      v62 = a2;
      v63 = v7;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      v26 = v65;
      v27 = *(v65 + 20);
      v64 = v10;
      v28 = &v13[v27];
      *(v25 + 10) = v13[v27];
      *(v25 + 11) = 2082;
      v29 = &v16[*(v26 + 20)];
      *(v25 + 13) = sub_10015BA6C(*(v29 + 1), *(v29 + 2), &v69);
      *(v25 + 21) = 1040;
      *(v25 + 23) = 2;
      *(v25 + 27) = 512;
      v30 = *(v28 + 12);
      sub_10017EFF8(v13, type metadata accessor for MailboxTaskLogger);
      *(v25 + 29) = v30;
      *(v25 + 31) = 2160;
      *(v25 + 33) = 0x786F626C69616DLL;
      *(v25 + 41) = 2085;
      v31 = *(v29 + 4);
      v32 = *(v29 + 10);
      v7 = v63;

      sub_10017EFF8(v16, type metadata accessor for MailboxTaskLogger);
      v67 = v31;
      v68 = v32;
      a2 = v62;
      v33 = sub_1004A5824();
      v35 = sub_10015BA6C(v33, v34, &v69);

      *(v25 + 43) = v35;
      v10 = v64;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence has more flag changes to upload. Will mark as needing to re-run.", v25, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10017EFF8(v13, type metadata accessor for MailboxTaskLogger);

      sub_10017EFF8(v16, type metadata accessor for MailboxTaskLogger);
    }

    sub_10013FC9C(7u);
    result = sub_100088568(&v67, 7);
  }

  else
  {
    sub_10017EF90(a3, v22, type metadata accessor for MailboxTaskLogger);
    sub_10017EF90(a3, v19, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v36 = sub_1004A4A54();
    v37 = sub_1004A6034();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v69 = v61;
      *v38 = 68159235;
      v63 = v7;
      v64 = v10;
      *(v38 + 4) = 2;
      *(v38 + 8) = 256;
      v39 = v65;
      v40 = *(v65 + 20);
      v62 = a2;
      v41 = &v19[v40];
      *(v38 + 10) = v19[v40];
      *(v38 + 11) = 2082;
      v42 = a1;
      v43 = &v22[*(v39 + 20)];
      *(v38 + 13) = sub_10015BA6C(*(v43 + 1), *(v43 + 2), &v69);
      *(v38 + 21) = 1040;
      *(v38 + 23) = 2;
      *(v38 + 27) = 512;
      LOWORD(v41) = *(v41 + 12);
      sub_10017EFF8(v19, type metadata accessor for MailboxTaskLogger);
      *(v38 + 29) = v41;
      *(v38 + 31) = 2160;
      *(v38 + 33) = 0x786F626C69616DLL;
      *(v38 + 41) = 2085;
      v44 = *(v43 + 4);
      LODWORD(v41) = *(v43 + 10);
      a1 = v42;
      v7 = v63;

      sub_10017EFF8(v22, type metadata accessor for MailboxTaskLogger);
      v67 = v44;
      v68 = v41;
      a2 = v62;
      v45 = sub_1004A5824();
      v47 = sub_10015BA6C(v45, v46, &v69);

      *(v38 + 43) = v47;
      v10 = v64;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking no more flag changes pending upload.", v38, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10017EFF8(v19, type metadata accessor for MailboxTaskLogger);

      sub_10017EFF8(v22, type metadata accessor for MailboxTaskLogger);
    }

    result = type metadata accessor for MailboxSyncState(0);
    *(a1 + *(result + 52) + 1) = 0;
  }

  if (*(a2 + *(v66 + 52)) == 3)
  {
    sub_10017EF90(a3, v10, type metadata accessor for MailboxTaskLogger);
    sub_10017EF90(a3, v7, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v49 = sub_1004A4A54();
    v50 = sub_1004A6034();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v51 = 68159235;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v52 = v65;
      v53 = &v7[*(v65 + 20)];
      *(v51 + 10) = *v53;
      *(v51 + 11) = 2082;
      v54 = v10;
      v55 = &v10[*(v52 + 20)];
      *(v51 + 13) = sub_10015BA6C(*(v55 + 1), *(v55 + 2), &v69);
      *(v51 + 21) = 1040;
      *(v51 + 23) = 2;
      *(v51 + 27) = 512;
      LOWORD(v53) = *(v53 + 12);
      sub_10017EFF8(v7, type metadata accessor for MailboxTaskLogger);
      *(v51 + 29) = v53;
      *(v51 + 31) = 2160;
      *(v51 + 33) = 0x786F626C69616DLL;
      *(v51 + 41) = 2085;
      v56 = *(v55 + 4);
      LODWORD(v55) = *(v55 + 10);

      sub_10017EFF8(v54, type metadata accessor for MailboxTaskLogger);
      v67 = v56;
      v68 = v55;
      v57 = sub_1004A5824();
      v59 = sub_10015BA6C(v57, v58, &v69);

      *(v51 + 43) = v59;
      _os_log_impl(&_mh_execute_header, v49, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking flag changes upload as “has dependencies”.", v51, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10017EFF8(v7, type metadata accessor for MailboxTaskLogger);

      sub_10017EFF8(v10, type metadata accessor for MailboxTaskLogger);
    }

    return sub_100088568(&v67, 7);
  }

  return result;
}

double sub_10017AA50()
{
  if (qword_1005CCEA0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10017AAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_100177930(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  return result;
}

uint64_t sub_10017AB08(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (*(result + 192) == 1)
  {
    v5 = *(result + 176);
    v4 = *(result + 184);
    v9 = *(result + 168);
    v6 = v9;
    v7 = result;

    sub_1000BE940(&v9, v2, v3, 0, sub_10017E52C);
    result = sub_100020D58(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

uint64_t sub_10017ABDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = sub_10000C9C0(&qword_1005D27E8, &qword_1004DA4C8);
  __chkstk_darwin(v50);
  v49 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v48 = v40 - v8;
  v47 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v57 = sub_1001641A4(_swiftEmptyArrayStorage);
  sub_100095920(a2, &v56);
  sub_10017E534(a1, a2, &v57);
  sub_100095958(a2);
  sub_100095958(a2);
  v12 = v57;
  v13 = *(v57 + 16);
  if (v13)
  {
    v40[1] = a1;
    v41 = a3;
    v56 = _swiftEmptyArrayStorage;
    sub_1000921A8(0, v13, 0);
    v11 = v56;
    v14 = v12 + 64;
    result = sub_1004A6554();
    v16 = result;
    v17 = 0;
    v54 = *(v12 + 36);
    v42 = v12 + 72;
    v43 = v13;
    v45 = v12 + 64;
    v44 = v12;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v12 + 32))
    {
      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_24;
      }

      if (v54 != *(v12 + 36))
      {
        goto LABEL_25;
      }

      v52 = 1 << v16;
      v53 = v16 >> 6;
      v51 = v17;
      v20 = v10;
      v21 = v50;
      v22 = *(v50 + 48);
      v23 = *(v12 + 48);
      v24 = *(v12 + 56);
      v25 = v24 + *(*(sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400) - 8) + 72) * v16;
      v55 = *(v23 + 16 * v16);
      v26 = v11;
      v27 = v48;
      sub_10000E268(v25, &v48[v22], &unk_1005D91B0, &unk_1004CF400);
      v28 = v49;
      *v49 = v55;
      v29 = *(v21 + 48);
      v10 = v20;
      v30 = &v27[v22];
      v11 = v26;
      sub_100025FDC(v30, v28 + v29, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v28 + v29, v20, &unk_1005D91B0, &unk_1004CF400);
      *(v20 + *(v47 + 20)) = v55;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_100025F40(v28, &qword_1005D27E8, &qword_1004DA4C8);
      v56 = v26;
      v32 = v26[2];
      v31 = v26[3];
      if (v32 >= v31 >> 1)
      {
        sub_1000921A8((v31 > 1), v32 + 1, 1);
        v11 = v56;
      }

      v11[2] = v32 + 1;
      result = sub_10017F180(v20, v11 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v32, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v12 = v44;
      v18 = 1 << *(v44 + 32);
      v14 = v45;
      if (v16 >= v18)
      {
        goto LABEL_26;
      }

      v33 = *(v45 + 8 * v53);
      if ((v33 & v52) == 0)
      {
        goto LABEL_27;
      }

      if (v54 != *(v44 + 36))
      {
        goto LABEL_28;
      }

      v34 = v33 & (-2 << (v16 & 0x3F));
      if (v34)
      {
        v18 = __clz(__rbit64(v34)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v19 = v43;
      }

      else
      {
        v35 = v53 << 6;
        v36 = v53 + 1;
        v37 = (v42 + 8 * v53);
        v19 = v43;
        while (v36 < (v18 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_100020944(v16, v54, 0);
            v18 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_100020944(v16, v54, 0);
      }

LABEL_4:
      v17 = v51 + 1;
      v16 = v18;
      if (v51 + 1 == v19)
      {

        a3 = v41;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_22:
    sub_100176908(v11, a3);
  }

  return result;
}

uint64_t sub_10017B0F8()
{
  v1 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for UploadFlagChanges.EncodedFlags(0) + 20));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = &v4[*(v1 + 20)];
    v9 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    while (1)
    {
      result = sub_10017EF90(v9, v4, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v12 = *(*v8 + 16) != 0;
      v13 = __OFADD__(v7, v12);
      v14 = v7 + v12;
      if (v13)
      {
        break;
      }

      v15 = *(*(v8 + 1) + 16) != 0;
      v7 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        goto LABEL_10;
      }

      sub_10017EFF8(v4, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_10017B264@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v91 = a1;
  v81 = a2;
  v83 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v83);
  v95 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v94 = &v80 - v6;
  v7 = sub_10000C9C0(&qword_1005D2500, &qword_1004DA328);
  __chkstk_darwin(v7 - 8);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v80 - v11;
  v13 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  __chkstk_darwin(v13);
  v88 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v86 = &v80 - v16;
  v18 = __chkstk_darwin(v17);
  v20 = &v80 - v19;
  v84 = v21;
  v85 = v12 + 8;
  v92 = (v21 + 48);
  v93 = (v21 + 56);
  v18.n128_u64[0] = 68159491;
  v82 = v18;
  v87 = &v80 - v19;
  v89 = v9;
  for (i = v12; ; v12 = i)
  {
    sub_10000E268(v3, v9, &qword_1005D2500, &qword_1004DA328);
    if ((*v92)(v9, 1, v13) == 1)
    {
      sub_100025F40(v9, &qword_1005D2500, &qword_1004DA328);
      result = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
      v23 = (v3 + *(result + 24));
      v25 = v23[2];
      v24 = v23[3];
      if (v25 == v24 >> 1)
      {
        (*v93)(v12, 1, 1, v13);
        sub_100025F40(v12, &qword_1005D2500, &qword_1004DA328);
        v68 = sub_10000C9C0(&qword_1005D27D8, &qword_1004DA4A8);
        v69 = *(*(v68 - 8) + 56);
        v70 = v81;
        v71 = 1;
        return v69(v70, v71, 1, v68);
      }

      if (v25 >= (v24 >> 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v26 = v23[1];
      v27 = v84;
      sub_10017EF90(v26 + *(v84 + 72) * v25, v12, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v23[1] = v26;
      v23[2] = v25 + 1;
      v23[3] = v24;
      v28 = *(v27 + 56);
      v28(v12, 0, 1, v13);
    }

    else
    {
      v29 = v86;
      sub_10017F180(v9, v86, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_100025F40(v3, &qword_1005D2500, &qword_1004DA328);
      v28 = *v93;
      (*v93)(v3, 1, 1, v13);
      sub_10017F180(v29, v12, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v30 = *(v13 + 20);
      v31 = v85;

      *&v31[v30] = _swiftEmptySetSingleton;
      v28(v12, 0, 1, v13);
    }

    sub_10017F180(v12, v20, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v32 = &v20[*(v13 + 20)];
    v34 = *v32;
    v33 = v32[1];
    v35 = *(*v32 + 16);
    v36 = *(v33 + 16);
    if (v35)
    {
      if (v36)
      {
        sub_100025F40(v3, &qword_1005D2500, &qword_1004DA328);
        sub_10017EF90(v20, v3, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v28(v3, 0, 1, v13);
        v55 = v20;
        v56 = v81;
        sub_10000E268(v55, v81, &unk_1005D91B0, &unk_1004CF400);
        v57 = *(v33 + 16);
        if (v57)
        {
          v58 = sub_100135390(*(v33 + 16), 0);
          v59 = sub_100139548(&v97, v58 + 4, v57, v33);
          v60 = v97;

          result = sub_100020D08(v60);
          if (v59 != v57)
          {
            goto LABEL_28;
          }

          v56 = v81;
        }

        else
        {
          v58 = _swiftEmptyArrayStorage;
        }

        v78 = sub_10000C9C0(&qword_1005D27D8, &qword_1004DA4A8);
        v79 = v56 + *(v78 + 48);
        sub_10017EFF8(v87, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        *v79 = 257;
        *(v79 + 8) = v58;
        v69 = *(*(v78 - 8) + 56);
        v70 = v56;
        v71 = 0;
        v68 = v78;
      }

      else
      {
        v72 = sub_10000C9C0(&qword_1005D27D8, &qword_1004DA4A8);
        v94 = *(v72 + 48);
        v95 = v72;
        v73 = v20;
        v63 = v81;
        sub_10000E268(v73, v81, &unk_1005D91B0, &unk_1004CF400);
        v74 = sub_100135390(v35, 0);
        v75 = sub_100139548(&v97, v74 + 4, v35, v34);
        v76 = v97;

        result = sub_100020D08(v76);
        if (v75 != v35)
        {
          goto LABEL_29;
        }

        v77 = v63 + v94;
        sub_10017EFF8(v87, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        *v77 = 256;
        *(v77 + 8) = v74;
LABEL_23:
        v68 = v95;
        v69 = *(*(v95 - 8) + 56);
        v70 = v63;
        v71 = 0;
      }

      return v69(v70, v71, 1, v68);
    }

    if (v36)
    {
      break;
    }

    v37 = v91;
    v38 = v94;
    sub_10017EF90(v91, v94, type metadata accessor for MailboxTaskLogger);
    v39 = v95;
    sub_10017EF90(v37, v95, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v40 = v88;
    sub_10017EF90(v20, v88, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v41 = sub_1004A4A54();
    v42 = sub_1004A6034();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v43 = v82.n128_u32[0];
      *(v43 + 4) = 2;
      *(v43 + 8) = 256;
      v44 = v83;
      v45 = v95 + *(v83 + 20);
      *(v43 + 10) = *v45;
      *(v43 + 11) = 2082;
      v46 = v94 + *(v44 + 20);
      *(v43 + 13) = sub_10015BA6C(*(v46 + 8), *(v46 + 16), &v96);
      *(v43 + 21) = 1040;
      *(v43 + 23) = 2;
      *(v43 + 27) = 512;
      LOWORD(v45) = *(v45 + 24);
      sub_10017EFF8(v95, type metadata accessor for MailboxTaskLogger);
      *(v43 + 29) = v45;
      *(v43 + 31) = 2160;
      *(v43 + 33) = 0x786F626C69616DLL;
      *(v43 + 41) = 2085;
      v47 = *(v46 + 32);
      LODWORD(v46) = *(v46 + 40);

      sub_10017EFF8(v94, type metadata accessor for MailboxTaskLogger);
      v97 = v47;
      LODWORD(v98) = v46;
      v20 = v87;
      v48 = sub_1004A5824();
      v50 = sub_10015BA6C(v48, v49, &v96);

      *(v43 + 43) = v50;
      *(v43 + 51) = 2080;
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v51 = MessageIdentifierSet.debugDescription.getter();
      v53 = v52;
      sub_10017EFF8(v40, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v54 = sub_10015BA6C(v51, v53, &v96);

      *(v43 + 53) = v54;
      _os_log_impl(&_mh_execute_header, v41, v42, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No flag changes for messages %s", v43, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_10017EFF8(v39, type metadata accessor for MailboxTaskLogger);

      sub_10017EFF8(v40, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_10017EFF8(v38, type metadata accessor for MailboxTaskLogger);
    }

    sub_10017EFF8(v20, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v9 = v89;
  }

  v61 = sub_10000C9C0(&qword_1005D27D8, &qword_1004DA4A8);
  v94 = *(v61 + 48);
  v95 = v61;
  v62 = v20;
  v63 = v81;
  sub_10000E268(v62, v81, &unk_1005D91B0, &unk_1004CF400);
  v64 = sub_100135390(v36, 0);
  v65 = sub_100139548(&v97, v64 + 4, v36, v33);
  v66 = v97;

  result = sub_100020D08(v66);
  if (v65 == v36)
  {
    v67 = v63 + v94;
    sub_10017EFF8(v87, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    *v67 = 257;
    *(v67 + 8) = v64;
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10017BD28(int *a1, uint64_t a2, void *a3)
{
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v40[1] = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = v40 - v6;
  v8 = *a1;
  v9 = *(a1 + 13);
  v10 = *(a1 + 21);
  v11 = 256;
  if ((*(a1 + 5) & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((*(a1 + 6) & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((*(a1 + 7) & 1) == 0)
  {
    v13 = 0;
  }

  v14 = &_mh_execute_header;
  if ((a1[2] & 1) == 0)
  {
    v14 = 0;
  }

  v15 = 0x10000000000;
  if ((*(a1 + 9) & 1) == 0)
  {
    v15 = 0;
  }

  v16 = a1[1] & 1 | (*(a1 + 10) << 48) | v11 | v12 | v13 | v14 | v15 | (*(a1 + 11) << 56);
  v42[0] = a1[3] & 1;
  *&v42[1] = v9;
  v42[9] = v10;
  v17 = FlagEncoder.encode(_:)(v16, *v42, *&v42[8]);
  v19 = v18;
  v20 = Flag.deleted.unsafeMutableAddressor();
  v21 = *v20;
  v22 = v20[1];

  v23 = sub_100011C2C(v21, v22, v17);

  if (v23)
  {
    sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004CEAA0;
    v25 = v20[1];
    *(inited + 32) = *v20;
    LOBYTE(v20) = inited + 32;
    *(inited + 40) = v25;

    v26 = sub_1000933B0(inited);
    swift_setDeallocating();
    sub_100093590(inited + 32);

    v27 = _swiftEmptySetSingleton;
    v17 = v26;
  }

  else
  {

    v27 = v19;
  }

  v43 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v42 = *a3;
  v29 = *v42;
  *a3 = 0x8000000000000000;
  v31 = sub_100063F7C(v17, v27);
  v32 = *(v29 + 16);
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v20) = v30;
  if (*(v29 + 24) >= v34)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

LABEL_24:
    sub_10013CBFC();
    goto LABEL_19;
  }

  sub_1000C8C10(v34, isUniquelyReferenced_nonNull_native);
  v35 = sub_100063F7C(v17, v27);
  if ((v20 & 1) != (v36 & 1))
  {
    result = sub_1004A6E24();
    __break(1u);
    return result;
  }

  v31 = v35;
LABEL_19:
  v37 = v41;
  *a3 = *v42;

  v38 = *a3;
  if (v20)
  {
  }

  else
  {
    sub_100016D2C();
    sub_1004A7114();
    sub_10001C990(v31, v17, v27, v7, v38);
  }

  return MessageIdentifierSet.insert(_:)(v42, &v43, v37);
}

void sub_10017C094(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1004A6CC4(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
        v6 = sub_1004A5C64();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10017C530(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10017C1C0(0, v2, 1, a1);
  }
}

void sub_10017C1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v46 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  __chkstk_darwin(v46);
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v38 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v43 = -v17;
    v44 = v16;
    v19 = a1 - a3;
    v37 = v17;
    v20 = v16 + v17 * a3;
    v47 = &v36 - v14;
LABEL_6:
    v41 = v18;
    v42 = a3;
    v39 = v20;
    v40 = v19;
    v21 = v18;
    while (1)
    {
      sub_10017EF90(v20, v15, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_10017EF90(v21, v11, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v22 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v23 = MessageIdentifierSet.startIndex.getter(v22);
      v25 = v24;
      v27 = v23 == MessageIdentifierSet.endIndex.getter(v22) && v25 == v26;
      v28 = v27;
      if (v27)
      {
        v48 = 0;
      }

      else
      {
        MessageIdentifierSet.subscript.getter(v25, v22, &v50);
        v48 = v50;
      }

      v29 = MessageIdentifierSet.startIndex.getter(v22);
      v31 = v30;
      if (v29 == MessageIdentifierSet.endIndex.getter(v22) && v31 == v32)
      {
        sub_10017EFF8(v11, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v15 = v47;
        sub_10017EFF8(v47, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
LABEL_5:
        a3 = v42 + 1;
        v18 = v41 + v37;
        v19 = v40 - 1;
        v20 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_6;
      }

      MessageIdentifierSet.subscript.getter(v31, v22, &v49);
      if (v28)
      {
        sub_10017EFF8(v11, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v15 = v47;
        sub_10017EFF8(v47, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      }

      else
      {
        v33 = v49;
        sub_10017EFF8(v11, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v15 = v47;
        sub_10017EFF8(v47, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        if (v48 >= v33)
        {
          goto LABEL_5;
        }
      }

      if (!v44)
      {
        break;
      }

      v34 = v45;
      sub_10017F180(v20, v45, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      swift_arrayInitWithTakeFrontToBack();
      sub_10017F180(v34, v21, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v21 += v43;
      v20 += v43;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_10017C530(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v155 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v148 = *(v155 - 8);
  __chkstk_darwin(v155);
  v142 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v154 = &v134 - v10;
  __chkstk_darwin(v11);
  v157 = &v134 - v12;
  __chkstk_darwin(v13);
  v15 = &v134 - v14;
  __chkstk_darwin(v16);
  v18 = &v134 - v17;
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v149 = a3;
  v25 = *(a3 + 8);
  if (v25 < 1)
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_131:
    a3 = *v139;
    if (!*v139)
    {
      goto LABEL_171;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_133;
    }

    goto LABEL_165;
  }

  v136 = &v134 - v22;
  v137 = v24;
  v150 = v23;
  v135 = a4;
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v156 = v15;
  while (1)
  {
    v28 = v26;
    if (v26 + 1 >= v25)
    {
      v40 = v26 + 1;
    }

    else
    {
      v151 = v25;
      v29 = *v149;
      v30 = *(v148 + 72);
      v31 = *v149 + v30 * (v26 + 1);
      v32 = v136;
      sub_10017EF90(v31, v136, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v153 = v29;
      v33 = v29 + v30 * v26;
      v34 = v137;
      sub_10017EF90(v33, v137, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      LODWORD(v147) = sub_100176A78();
      if (v5)
      {
        sub_10017EFF8(v34, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        sub_10017EFF8(v32, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
LABEL_143:

        return;
      }

      sub_10017EFF8(v34, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_10017EFF8(v32, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v138 = v26;
      v35 = v26 + 2;
      a3 = v153 + v30 * (v26 + 2);
      v36 = v30;
      v152 = v30;
      v145 = v27;
      v146 = 0;
      while (1)
      {
        v40 = v151;
        if (v151 == v35)
        {
          break;
        }

        sub_10017EF90(a3, v150, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v41 = v18;
        sub_10017EF90(v31, v18, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v42 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
        v43 = MessageIdentifierSet.startIndex.getter(v42);
        v45 = v44;
        v47 = v43 == MessageIdentifierSet.endIndex.getter(v42) && v45 == v46;
        v48 = v47;
        LODWORD(v153) = v48;
        if (v47)
        {
          v49 = 0;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v45, v42, &v158);
          v49 = v158;
        }

        v50 = MessageIdentifierSet.startIndex.getter(v42);
        v52 = v51;
        v54 = v50 == MessageIdentifierSet.endIndex.getter(v42) && v52 == v53;
        v55 = !v54;
        if (v54)
        {
          v37 = 0;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v52, v42, &v158);
          v37 = v158;
        }

        if (v49 < v37)
        {
          v38 = v55;
        }

        else
        {
          v38 = 0;
        }

        if (v153)
        {
          v39 = v55;
        }

        else
        {
          v39 = v38;
        }

        sub_10017EFF8(v41, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        sub_10017EFF8(v150, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        ++v35;
        v36 = v152;
        a3 += v152;
        v31 += v152;
        v27 = v145;
        v5 = v146;
        v18 = v41;
        if ((v147 ^ v39))
        {
          v40 = v35 - 1;
          break;
        }
      }

      v15 = v156;
      v28 = v138;
      if (v147)
      {
        if (v40 < v138)
        {
          goto LABEL_164;
        }

        if (v138 < v40)
        {
          v134 = v18;
          v56 = v36 * (v40 - 1);
          v57 = v40 * v36;
          v151 = v40;
          v58 = v138;
          v59 = v138 * v36;
          do
          {
            if (v58 != --v40)
            {
              v60 = *v149;
              if (!*v149)
              {
                goto LABEL_168;
              }

              a3 = v60 + v59;
              sub_10017F180(v60 + v59, v142, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
              if (v59 < v56 || a3 >= v60 + v57)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v59 != v56)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10017F180(v142, v60 + v56, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
              v36 = v152;
            }

            ++v58;
            v56 -= v36;
            v57 -= v36;
            v59 += v36;
          }

          while (v58 < v40);
          v15 = v156;
          v18 = v134;
          v28 = v138;
          v40 = v151;
        }
      }
    }

    v61 = v149[1];
    if (v40 < v61)
    {
      if (__OFSUB__(v40, v28))
      {
        goto LABEL_161;
      }

      if (v40 - v28 < v135)
      {
        break;
      }
    }

LABEL_80:
    if (v40 < v28)
    {
      goto LABEL_160;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_100085288(0, *(v27 + 2) + 1, 1, v27);
    }

    a3 = *(v27 + 2);
    v85 = *(v27 + 3);
    v86 = a3 + 1;
    if (a3 >= v85 >> 1)
    {
      v27 = sub_100085288((v85 > 1), a3 + 1, 1, v27);
    }

    *(v27 + 2) = v86;
    v87 = &v27[16 * a3];
    *(v87 + 4) = v28;
    *(v87 + 5) = v40;
    v26 = v40;
    v88 = *v139;
    if (!*v139)
    {
      goto LABEL_170;
    }

    if (a3)
    {
      while (1)
      {
        v89 = v86 - 1;
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v90 = *(v27 + 4);
          v91 = *(v27 + 5);
          v100 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          v93 = v100;
LABEL_100:
          if (v93)
          {
            goto LABEL_149;
          }

          v106 = &v27[16 * v86];
          v108 = *v106;
          v107 = *(v106 + 1);
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_152;
          }

          v112 = &v27[16 * v89 + 32];
          v114 = *v112;
          v113 = *(v112 + 1);
          v100 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v100)
          {
            goto LABEL_155;
          }

          if (__OFADD__(v110, v115))
          {
            goto LABEL_156;
          }

          if (v110 + v115 >= v92)
          {
            if (v92 < v115)
            {
              v89 = v86 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        v116 = &v27[16 * v86];
        v118 = *v116;
        v117 = *(v116 + 1);
        v100 = __OFSUB__(v117, v118);
        v110 = v117 - v118;
        v111 = v100;
LABEL_114:
        if (v111)
        {
          goto LABEL_151;
        }

        v119 = &v27[16 * v89];
        v121 = *(v119 + 4);
        v120 = *(v119 + 5);
        v100 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v100)
        {
          goto LABEL_154;
        }

        if (v122 < v110)
        {
          goto LABEL_3;
        }

LABEL_121:
        a3 = v89 - 1;
        if (v89 - 1 >= v86)
        {
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
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
          goto LABEL_163;
        }

        if (!*v149)
        {
          goto LABEL_167;
        }

        v127 = *&v27[16 * a3 + 32];
        v128 = *&v27[16 * v89 + 40];
        sub_10017D120(*v149 + *(v148 + 72) * v127, *v149 + *(v148 + 72) * *&v27[16 * v89 + 32], *v149 + *(v148 + 72) * v128, v88);
        if (v5)
        {
          goto LABEL_143;
        }

        if (v128 < v127)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_100141810(v27);
        }

        if (a3 >= *(v27 + 2))
        {
          goto LABEL_146;
        }

        v129 = &v27[16 * a3];
        *(v129 + 4) = v127;
        *(v129 + 5) = v128;
        v159 = v27;
        sub_100141784(v89);
        v27 = v159;
        v86 = *(v159 + 2);
        v15 = v156;
        if (v86 <= 1)
        {
          goto LABEL_3;
        }
      }

      v94 = &v27[16 * v86 + 32];
      v95 = *(v94 - 64);
      v96 = *(v94 - 56);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_147;
      }

      v99 = *(v94 - 48);
      v98 = *(v94 - 40);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_148;
      }

      v101 = &v27[16 * v86];
      v103 = *v101;
      v102 = *(v101 + 1);
      v100 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v100)
      {
        goto LABEL_150;
      }

      v100 = __OFADD__(v92, v104);
      v105 = v92 + v104;
      if (v100)
      {
        goto LABEL_153;
      }

      if (v105 >= v97)
      {
        v123 = &v27[16 * v89 + 32];
        v125 = *v123;
        v124 = *(v123 + 1);
        v100 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v100)
        {
          goto LABEL_157;
        }

        if (v92 < v126)
        {
          v89 = v86 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_100;
    }

LABEL_3:
    v25 = v149[1];
    if (v26 >= v25)
    {
      goto LABEL_131;
    }
  }

  if (__OFADD__(v28, v135))
  {
    goto LABEL_162;
  }

  if (v28 + v135 < v61)
  {
    v61 = v28 + v135;
  }

  if (v61 < v28)
  {
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v27 = sub_100141810(v27);
LABEL_133:
    v159 = v27;
    v130 = *(v27 + 2);
    if (v130 >= 2)
    {
      while (*v149)
      {
        v131 = *&v27[16 * v130];
        v132 = *&v27[16 * v130 + 24];
        sub_10017D120(*v149 + *(v148 + 72) * v131, *v149 + *(v148 + 72) * *&v27[16 * v130 + 16], *v149 + *(v148 + 72) * v132, a3);
        if (v5)
        {
          goto LABEL_143;
        }

        if (v132 < v131)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_100141810(v27);
        }

        if (v130 - 2 >= *(v27 + 2))
        {
          goto LABEL_159;
        }

        v133 = &v27[16 * v130];
        *v133 = v131;
        *(v133 + 1) = v132;
        v159 = v27;
        sub_100141784(v130 - 1);
        v27 = v159;
        v130 = *(v159 + 2);
        if (v130 <= 1)
        {
          goto LABEL_143;
        }
      }

      goto LABEL_169;
    }

    goto LABEL_143;
  }

  v141 = v61;
  if (v40 == v61)
  {
    goto LABEL_80;
  }

  v134 = v18;
  v145 = v27;
  v146 = v5;
  v62 = *v149;
  v63 = *(v148 + 72);
  v64 = *v149 + v63 * (v40 - 1);
  v152 = -v63;
  v153 = v62;
  v138 = v28;
  v65 = v28 - v40;
  v140 = v63;
  v66 = v62 + v40 * v63;
  v67 = v157;
LABEL_60:
  v151 = v40;
  v143 = v66;
  v144 = v65;
  v147 = v64;
  v68 = v64;
  while (1)
  {
    sub_10017EF90(v66, v15, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    sub_10017EF90(v68, v67, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v69 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v70 = MessageIdentifierSet.startIndex.getter(v69);
    v72 = v71;
    v74 = v70 == MessageIdentifierSet.endIndex.getter(v69) && v72 == v73;
    v75 = v74;
    if (v74)
    {
      v76 = 0;
    }

    else
    {
      MessageIdentifierSet.subscript.getter(v72, v69, &v158);
      v76 = v158;
    }

    v77 = MessageIdentifierSet.startIndex.getter(v69);
    v79 = v78;
    if (v77 == MessageIdentifierSet.endIndex.getter(v69) && v79 == v80)
    {
      a3 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element;
      v67 = v157;
      sub_10017EFF8(v157, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v15 = v156;
      sub_10017EFF8(v156, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
LABEL_59:
      v40 = v151 + 1;
      v64 = v147 + v140;
      v65 = v144 - 1;
      v66 = v143 + v140;
      if (v151 + 1 == v141)
      {
        v27 = v145;
        v5 = v146;
        v18 = v134;
        v28 = v138;
        v40 = v141;
        goto LABEL_80;
      }

      goto LABEL_60;
    }

    v81 = v79;
    v67 = v157;
    MessageIdentifierSet.subscript.getter(v81, v69, &v158);
    if (v75)
    {
      sub_10017EFF8(v67, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v15 = v156;
      sub_10017EFF8(v156, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    }

    else
    {
      v82 = v158;
      a3 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element;
      sub_10017EFF8(v67, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v15 = v156;
      sub_10017EFF8(v156, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      if (v76 >= v82)
      {
        goto LABEL_59;
      }
    }

    if (!v153)
    {
      break;
    }

    a3 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element;
    v83 = v154;
    sub_10017F180(v66, v154, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    swift_arrayInitWithTakeFrontToBack();
    sub_10017F180(v83, v68, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v68 += v152;
    v66 += v152;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_59;
    }
  }

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
}

void sub_10017D120(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  __chkstk_darwin(v72);
  v68 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = &v66 - v10;
  __chkstk_darwin(v11);
  v13 = &v66 - v12;
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_99;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_100;
  }

  v20 = (a2 - a1) / v18;
  v79 = a1;
  v78 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v23 = v68;
    }

    else
    {
      v23 = v68;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    if (v22 < 1)
    {
      v43 = a4 + v22;
    }

    else
    {
      v40 = -v18;
      v41 = a4 + v22;
      v42 = v71;
      v43 = a4 + v22;
      v74 = a4;
      v70 = -v18;
      do
      {
        v66 = v43;
        v44 = a2;
        a2 += v40;
        v75 = a2;
        v69 = v44;
        while (1)
        {
          if (v44 <= a1)
          {
            v79 = v44;
            v77 = v66;
            goto LABEL_97;
          }

          v45 = a3;
          v67 = v43;
          v73 = v41 + v40;
          sub_10017EF90(v41 + v40, v42, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_10017EF90(a2, v23, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          v46 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
          v47 = MessageIdentifierSet.startIndex.getter(v46);
          v49 = v48;
          v51 = v47 == MessageIdentifierSet.endIndex.getter(v46) && v49 == v50;
          v52 = v51;
          if (v51)
          {
            v53 = 0;
          }

          else
          {
            MessageIdentifierSet.subscript.getter(v49, v46, &v77);
            v53 = v77;
          }

          v54 = v68;
          v55 = MessageIdentifierSet.startIndex.getter(v46);
          v57 = v56;
          v59 = v55 == MessageIdentifierSet.endIndex.getter(v46) && v57 == v58;
          v60 = !v59;
          if (v59)
          {
            v61 = 0;
          }

          else
          {
            MessageIdentifierSet.subscript.getter(v57, v46, &v77);
            v61 = v77;
          }

          a2 = v75;
          v23 = v54;
          v62 = v53 < v61 && v60;
          v63 = v52 ? v60 : v62;
          a3 = v45 + v70;
          sub_10017EFF8(v54, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_10017EFF8(v71, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          if (v63)
          {
            break;
          }

          v43 = v73;
          v64 = v74;
          if (v45 < v41 || a3 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v71;
          }

          else
          {
            v42 = v71;
            if (v45 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v41 = v43;
          v44 = v69;
          v40 = v70;
          if (v73 <= v64)
          {
            a2 = v69;
            goto LABEL_96;
          }
        }

        v65 = v74;
        if (v45 < v69 || a3 >= v69)
        {
          swift_arrayInitWithTakeFrontToBack();
          v42 = v71;
          v43 = v67;
        }

        else
        {
          v42 = v71;
          v43 = v67;
          if (v45 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v40 = v70;
      }

      while (v41 > v65);
    }

LABEL_96:
    v79 = a2;
    v77 = v43;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v73 = a4 + v21;
    v77 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v69 = a3;
      v70 = v18;
      do
      {
        v75 = a2;
        sub_10017EF90(a2, v16, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v74 = a4;
        sub_10017EF90(a4, v13, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v25 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
        v26 = MessageIdentifierSet.startIndex.getter(v25);
        v28 = v27;
        v30 = v26 == MessageIdentifierSet.endIndex.getter(v25) && v28 == v29;
        v31 = v30;
        if (v30)
        {
          v32 = 0;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v28, v25, &v76);
          v32 = v76;
        }

        v33 = MessageIdentifierSet.startIndex.getter(v25);
        v35 = v34;
        if (v33 == MessageIdentifierSet.endIndex.getter(v25) && v35 == v36)
        {
          sub_10017EFF8(v13, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_10017EFF8(v16, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          v37 = v70;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v35, v25, &v76);
          if (v31)
          {
            sub_10017EFF8(v13, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
            sub_10017EFF8(v16, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
            v37 = v70;
LABEL_42:
            a4 = v74;
            a2 = v75 + v37;
            v38 = v69;
            if (a1 < v75 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v75)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_47;
          }

          v39 = v76;
          sub_10017EFF8(v13, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          sub_10017EFF8(v16, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
          v37 = v70;
          if (v32 < v39)
          {
            goto LABEL_42;
          }
        }

        a2 = v75;
        a4 = v74 + v37;
        v38 = v69;
        if (a1 < v74 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
          v78 = a4;
          goto LABEL_47;
        }

        v78 = a4;
LABEL_47:
        a1 += v37;
        v79 = a1;
      }

      while (a4 < v73 && a2 < v38);
    }
  }

LABEL_97:
  sub_10017D910(&v79, &v78, &v77);
}

uint64_t sub_10017D820(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10000C9C0(&qword_1005D1118, &qword_1004D65D0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10017D910(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_10017DA34(uint64_t a1)
{
  sub_10017DAA8();
  if (v1 <= 0x3F)
  {
    sub_10017DAF8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10017DAA8()
{
  if (!qword_1005D24C0)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D24C0);
    }
  }
}

void sub_10017DAF8(uint64_t a1)
{
  if (!qword_1005D24C8)
  {
    type metadata accessor for UploadFlagChanges.EncodedFlags(255);
    sub_10000DEFC(&unk_1005D24D0, &qword_1004DA320);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D24C8);
    }
  }
}

void sub_10017DBE4(uint64_t a1)
{
  sub_10017DCF4(319, &qword_1005D2570, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10017DCF4(319, &qword_1005D2578, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_10017DCF4(319, &unk_1005D2580, &type metadata accessor for ArraySlice);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10017DCF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10017DD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_10000C9C0(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10017DE64(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = sub_10000C9C0(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10017DF20(uint64_t a1)
{
  sub_100057614(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10017DFE0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10017E124(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10017E254(uint64_t a1)
{
  sub_100057614(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep, &type metadata accessor for Set);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UploadFlagChanges.FlagsToUpload(319);
    if (v2 <= 0x3F)
    {
      sub_100057614(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10017E3B0()
{
  result = qword_1005D26F8;
  if (!qword_1005D26F8)
  {
    result = swift_getWitnessTable(byte_1004DA3C4, &type metadata for UploadFlagChanges.DependencyStatus, v0, v1);
    atomic_store(result, &qword_1005D26F8);
  }

  return result;
}

unint64_t sub_10017E404()
{
  result = qword_1005D2700;
  if (!qword_1005D2700)
  {
    result = swift_getWitnessTable(byte_1004DA458, &type metadata for UploadFlagChanges.ActionID, v0, v1);
    atomic_store(result, &qword_1005D2700);
  }

  return result;
}

unint64_t sub_10017E458()
{
  result = qword_1005D2708;
  if (!qword_1005D2708)
  {
    result = swift_getWitnessTable(a9_4, &type metadata for UploadFlagChanges.CommandID, v0, v1);
    atomic_store(result, &qword_1005D2708);
  }

  return result;
}

unint64_t sub_10017E4AC(uint64_t a1)
{
  result = sub_10017E4D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10017E4D4()
{
  result = qword_1005D27C0;
  if (!qword_1005D27C0)
  {
    v3 = type metadata accessor for UploadFlagChanges(255);
    result = swift_getWitnessTable(byte_1004DA3EC, v3, v0, v1);
    atomic_store(result, &qword_1005D27C0);
  }

  return result;
}

uint64_t sub_10017E534(uint64_t result, uint64_t a2, void *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; i += 2)
    {
      v8 = i[1];
      v14[0] = *i;
      v14[1] = v8;
      v9 = i[1];
      v12 = *i;
      v13 = v9;
      sub_10017F058(v14, &v10);
      sub_10017BD28(&v12, a2, a3);
      if (v3)
      {
        break;
      }

      v10 = v12;
      v11 = v13;
      result = sub_10017F0B4(&v10);
      if (!--v4)
      {
        return result;
      }
    }

    v10 = v12;
    v11 = v13;
    return sub_10017F0B4(&v10);
  }

  return result;
}

uint64_t sub_10017E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100058284(0, a2, a3, a4) & 1) != 0 || (result = sub_100058284(1, a2, a3, a4), (result))
  {
    sub_10017EF90(a1, v10, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      memcpy(v16, v10, sizeof(v16));
      if (v16[64])
      {
        if (BYTE4(v16[1]) != 1)
        {
          v14 = v16[1];
          type metadata accessor for UploadFlagChanges(0);
          v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
          MessageIdentifierSet.remove(_:)(&v14, v12, &v15);
        }
      }

      return sub_100025D5C(v16);
    }

    else
    {
      return sub_10017EFF8(v10, type metadata accessor for UntaggedResponse);
    }
  }

  return result;
}

void sub_10017E77C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v68 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v68);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  __chkstk_darwin(v15);
  v17 = &v65 - v16;
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v21 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v21);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v27 == 16)
  {
    if (v5[1] == *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
    {
      v43 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v44 = *v5;
      v45 = *(*v5 + 16);
      if (v45 == *(v43 + 16))
      {
        v46 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v47 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        if (!v45 || v44 == v43)
        {
LABEL_12:
          if (sub_10007102C(1, a2, a3, a4))
          {
            if ((v47 & 1) == 0)
            {
              *(v5 + *(type metadata accessor for UploadFlagChanges(0) + 48)) = 1;
            }

            v67 = v5;
            v50 = v69;
            sub_10017EF90(v69, v14, type metadata accessor for MailboxTaskLogger);
            sub_10017EF90(v50, v11, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            swift_bridgeObjectRetain_n();
            v51 = sub_1004A4A54();
            v52 = sub_1004A6034();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              *v53 = 68159491;
              *(v53 + 4) = 2;
              *(v53 + 8) = 256;
              v54 = v68;
              v55 = &v11[*(v68 + 20)];
              *(v53 + 10) = *v55;
              *(v53 + 11) = 2082;
              v56 = &v14[*(v54 + 20)];
              *(v53 + 13) = sub_10015BA6C(*(v56 + 1), *(v56 + 2), &v72);
              *(v53 + 21) = 1040;
              *(v53 + 23) = 2;
              *(v53 + 27) = 512;
              LOWORD(v55) = *(v55 + 12);
              sub_10017EFF8(v11, type metadata accessor for MailboxTaskLogger);
              *(v53 + 29) = v55;
              *(v53 + 31) = 2160;
              *(v53 + 33) = 0x786F626C69616DLL;
              *(v53 + 41) = 2085;
              v57 = *(v56 + 4);
              LODWORD(v56) = *(v56 + 10);

              sub_10017EFF8(v14, type metadata accessor for MailboxTaskLogger);
              v70 = v57;
              v71 = v56;
              v58 = sub_1004A5824();
              v60 = sub_10015BA6C(v58, v59, &v72);

              *(v53 + 43) = v60;
              *(v53 + 51) = 2048;
              v61 = *(v46 + 16);

              *(v53 + 53) = v61;

              _os_log_impl(&_mh_execute_header, v51, v52, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received local flag changes for %ld messages.", v53, 0x3Du);
              swift_arrayDestroy();
            }

            else
            {

              sub_10017EFF8(v11, type metadata accessor for MailboxTaskLogger);

              sub_10017EFF8(v14, type metadata accessor for MailboxTaskLogger);
            }

            sub_1001798F8(v46, v69);
          }

          else
          {
            *(v5 + *(type metadata accessor for UploadFlagChanges(0) + 48)) = 1;
          }
        }

        else
        {
          v48 = (v44 + 32);
          v49 = (v43 + 32);
          while (*v48 == *v49)
          {
            ++v48;
            ++v49;
            if (!--v45)
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  else if (v27 == 17)
  {
    v65 = v25;
    v67 = v5;
    v28 = &v65 - v26;
    v29 = sub_10000C9C0(&qword_1005D22E8, &unk_1004DA480);
    v30 = swift_projectBox();
    sub_10000E268(v30 + *(v29 + 48), v28, &unk_1005D91B0, &unk_1004CF400);
    v31 = v69;
    sub_10017EF90(v69, v20, type metadata accessor for MailboxTaskLogger);
    sub_10017EF90(v31, v17, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v66 = v28;
    sub_10000E268(v28, v23, &unk_1005D91B0, &unk_1004CF400);
    v32 = sub_1004A4A54();
    v33 = sub_1004A6034();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = v69;
      *v34 = 68159491;
      *(v34 + 4) = 2;
      *(v34 + 8) = 256;
      v35 = v68;
      v36 = &v17[*(v68 + 20)];
      *(v34 + 10) = *v36;
      *(v34 + 11) = 2082;
      v37 = &v20[*(v35 + 20)];
      *(v34 + 13) = sub_10015BA6C(*(v37 + 1), *(v37 + 2), &v72);
      *(v34 + 21) = 1040;
      *(v34 + 23) = 2;
      *(v34 + 27) = 512;
      LOWORD(v36) = *(v36 + 12);
      sub_10017EFF8(v17, type metadata accessor for MailboxTaskLogger);
      *(v34 + 29) = v36;
      *(v34 + 31) = 2160;
      *(v34 + 33) = 0x786F626C69616DLL;
      *(v34 + 41) = 2085;
      v38 = *(v37 + 4);
      LODWORD(v36) = *(v37 + 10);

      sub_10017EFF8(v20, type metadata accessor for MailboxTaskLogger);
      v70 = v38;
      v71 = v36;
      v39 = sub_1004A5824();
      v41 = sub_10015BA6C(v39, v40, &v72);

      *(v34 + 43) = v41;
      *(v34 + 51) = 2048;
      v42 = MessageIdentifierSet.count.getter();
      sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
      *(v34 + 53) = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] %ld messages have flag changes after copy", v34, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
      sub_10017EFF8(v17, type metadata accessor for MailboxTaskLogger);

      sub_10017EFF8(v20, type metadata accessor for MailboxTaskLogger);
    }

    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v62 = v66;
    v63 = sub_1004A70C4();
    sub_100025F40(v62, &unk_1005D91B0, &unk_1004CF400);
    if (v63)
    {
      v64 = 2;
    }

    else
    {
      v64 = 3;
    }

    *(v67 + *(type metadata accessor for UploadFlagChanges(0) + 52)) = v64;
  }
}

uint64_t sub_10017EF90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10017EFF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10017F108()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10017F140()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10017F180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for DownloadRequest.QoS(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DownloadRequest.QoS(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10017F358()
{
  result = qword_1005D27F0;
  if (!qword_1005D27F0)
  {
    result = swift_getWitnessTable(byte_1004DA5AC, &type metadata for UploadMessages.ActionID.Kind, v0, v1);
    atomic_store(result, &qword_1005D27F0);
  }

  return result;
}

uint64_t sub_10017F3AC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3] >> 1;
  if (v2 == v3)
  {
    *a1 = xmmword_1004D25F0;
  }

  else if (v2 < v3)
  {
    v4 = *(v1[1] + 16 * v2);
    *a1 = v4;
    v1[2] = v2 + 1;
    return sub_100014CEC(v4, *(&v4 + 1));
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10017F3F4(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[1];
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

  return sub_10003A194(*a1, v3, *a2, v4);
}

BOOL sub_10017F45C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 & 0x3000000000000000;
  v9 = (v5 >> 60) & 3;
  if (!v9)
  {
    if (!v8)
    {
      return sub_10003A194(v4, v5, v6, v7);
    }

    return 0;
  }

  if (v9 == 1)
  {
    if (v8 == 0x1000000000000000)
    {
      v5 &= 0xCFFFFFFFFFFFFFFFLL;
      v7 &= 0xCFFFFFFFFFFFFFFFLL;
      return sub_10003A194(v4, v5, v6, v7);
    }

    return 0;
  }

  return v8 == 0x2000000000000000 && v6 == 0 && v7 == 0x2000000000000000;
}

Swift::Int sub_10017F4C8()
{
  result = sub_100093190(&off_1005992D8);
  qword_1005DDFA0 = result;
  return result;
}

uint64_t sub_10017F4F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  v12 = v4 == 2 && v3 == 1;
  if (v2)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (*(a1 + 8) == 1)
  {
    v13 = v8;
  }

  if (*(a1 + 8))
  {
    return v13;
  }

  else
  {
    return v6;
  }
}

void sub_10017F5B8(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  sub_100016B98(a1, v19 - v6, type metadata accessor for MailboxTaskLogger);
  sub_100016B98(a1, v4, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v8 = sub_1004A4A54();
  v9 = sub_1004A6034();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 68159235;
    *(v10 + 4) = 2;
    *(v10 + 8) = 256;
    v11 = &v4[*(v2 + 20)];
    *(v10 + 10) = *v11;
    *(v10 + 11) = 2082;
    v12 = &v7[*(v2 + 20)];
    *(v10 + 13) = sub_10015BA6C(*(v12 + 1), *(v12 + 2), &v21);
    *(v10 + 21) = 1040;
    *(v10 + 23) = 2;
    *(v10 + 27) = 512;
    v13 = *(v11 + 12);
    sub_100184CB0(v4, type metadata accessor for MailboxTaskLogger);
    *(v10 + 29) = v13;
    *(v10 + 31) = 2160;
    *(v10 + 33) = 0x786F626C69616DLL;
    *(v10 + 41) = 2085;
    v14 = *(v12 + 4);
    v15 = *(v12 + 10);

    sub_100184CB0(v7, type metadata accessor for MailboxTaskLogger);
    v19[1] = v14;
    v20 = v15;
    v16 = sub_1004A5824();
    v18 = sub_10015BA6C(v16, v17, &v21);

    *(v10 + 43) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v10, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100184CB0(v4, type metadata accessor for MailboxTaskLogger);

    sub_100184CB0(v7, type metadata accessor for MailboxTaskLogger);
  }
}

void sub_10017F88C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v94 = a4;
  v95 = a5;
  v96 = a6;
  v10 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v10 - 8);
  v92 = &v85 - v11;
  v91 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v86 = &v85 - v14;
  v93 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v93);
  v88 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v85 - v17;
  __chkstk_darwin(v19);
  v89 = &v85 - v20;
  v21 = sub_10000C9C0(&qword_1005D28E0, &qword_1004DA6E0);
  __chkstk_darwin(v21 - 8);
  v23 = &v85 - v22;
  v24 = type metadata accessor for UploadMessages.PendingUpload(0);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v6;
  if (*(v6 + 120) == 2 && !*(v6 + 112))
  {
    if ((sub_100112234(0, 0xF000000000000000, a2, a3, v26) & 1) == 0)
    {
      v42 = sub_10000C9C0(&qword_1005D2AA0, &qword_1004DAA58);
      v43 = v96;
      v44 = v96 + *(v42 + 48);
      *v96 = xmmword_1004D25F0;
      v45 = *(v29 + 32);
      *v44 = *(v29 + 24);
      *(v44 + 2) = v45;
      *(v44 + 2) = &off_100599530;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v42 - 8) + 56))(v43, 0, 1, v42);

      return;
    }

    if ((sub_10001A004(0, 0xF000000000000000, a1, a2, a3) & 1) == 0)
    {
LABEL_6:
      v30 = sub_10000C9C0(&qword_1005D2AA0, &qword_1004DAA58);
      v31 = *(*(v30 - 8) + 56);
      v32 = v30;
      v33 = v96;

      v31(v33, 1, 1, v32);
      return;
    }
  }

  if (sub_1000716B8(1, a1, a2, a3))
  {
    goto LABEL_6;
  }

  v85 = type metadata accessor for UploadMessages(0);
  v34 = *(v85 + 52);
  sub_10000E268(v29 + v34, v23, &qword_1005D28E0, &qword_1004DA6E0);
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    sub_100184DA4(v23, v28);
    sub_100025F40(v29 + v34, &qword_1005D28E0, &qword_1004DA6E0);
    (*(v25 + 56))(v29 + v34, 1, 1, v24);
    v46 = *(v95 + 88);
    v47 = *(v95 + 120);
    v99[4] = *(v95 + 104);
    v99[5] = v47;
    v100 = *(v95 + 136);
    v48 = *(v95 + 56);
    v99[0] = *(v95 + 40);
    v99[1] = v48;
    v99[2] = *(v95 + 72);
    v99[3] = v46;
    v49 = 256;
    if ((v28[17] & 1) == 0)
    {
      v49 = 0;
    }

    v50 = 0x10000;
    if ((v28[18] & 1) == 0)
    {
      v50 = 0;
    }

    v51 = 0x1000000;
    if ((v28[19] & 1) == 0)
    {
      v51 = 0;
    }

    v52 = &_mh_execute_header;
    if ((v28[20] & 1) == 0)
    {
      v52 = 0;
    }

    v53 = 0x10000000000;
    if ((v28[21] & 1) == 0)
    {
      v53 = 0;
    }

    v54 = v28[16] & 1 | (v28[22] << 48) | v49 | v50 | v51 | v52 | v53 | (v28[23] << 56);
    v97[0] = v28[24] & 1;
    *&v97[1] = 2;
    v98 = 0;
    v55 = FlagEncoder.encode(_:)(v54, *v97, 0);

    v56 = *v28;
    v57 = *(v28 + 1);
    v58 = (v29 + *(v85 + 56));
    v59 = *v58;
    v60 = v58[1];
    sub_100014CEC(*v28, v57);
    sub_1000CBB68(v59, v60);
    *v58 = v56;
    v58[1] = v57;
    v61 = sub_10000C9C0(&qword_1005D2AA0, &qword_1004DAA58);
    v62 = v96;
    v63 = v96 + *(v61 + 48);
    *v96 = *v28;
    v64 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
    v65 = *(v64 + 64);
    v66 = *(v64 + 80);
    v67 = *(v29 + 32);
    *v63 = *(v29 + 24);
    *(v63 + 2) = v67;
    *(v63 + 2) = v55;
    sub_100025FDC(&v28[*(v24 + 24)], &v63[v65], &qword_1005D0F20, &qword_1004E9390);
    *&v63[v66] = *&v28[*(v24 + 28)];
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v61 - 8) + 56))(v62, 0, 1, v61);

    return;
  }

  v35 = v85;
  sub_100025F40(v23, &qword_1005D28E0, &qword_1004DA6E0);
  if (sub_100180340(a1, a2, a3, v94) & 1) == 0 || (sub_100112234(0, 0xB000000000000000, a2, a3, v36))
  {
LABEL_38:
    v76 = sub_10000C9C0(&qword_1005D2AA0, &qword_1004DAA58);
    (*(*(v76 - 8) + 56))(v96, 1, 1, v76);
    return;
  }

  v37 = *(v29 + *(v35 + 68));
  sub_100016D2C();
  sub_1004A7114();
  v38 = *(v37 + 16);
  v39 = v93;
  if (!v38)
  {
LABEL_33:
    v68 = v89;
    sub_100025FDC(v18, v89, &unk_1005D91B0, &unk_1004CF400);
    v69 = v88;
    sub_10000E268(v68, v88, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v69, &unk_1005D91B0, &unk_1004CF400);
      v73 = 1;
      v72 = v92;
    }

    else
    {
      v70 = v87;
      sub_100025FDC(v69, v87, &unk_1005D91B0, &unk_1004CF400);
      v71 = v70;
      v72 = v92;
      sub_100025FDC(v71, v92, &qword_1005CD1D0, &unk_1004CF2C0);
      v73 = 0;
    }

    v74 = v90;
    v75 = v91;
    (*(v90 + 56))(v72, v73, 1, v91);
    if ((*(v74 + 48))(v72, 1, v75) != 1)
    {
      v77 = v86;
      sub_100025FDC(v72, v86, &qword_1005CD1D0, &unk_1004CF2C0);
      v78 = &off_1005987A0;
      v79 = &off_1005988A8;
      if (*(v29 + 105))
      {
        v78 = &off_100598810;
        v79 = &off_100598940;
      }

      if (*(v29 + 104))
      {
        v80 = v78;
      }

      else
      {
        v80 = v79;
      }

      sub_100025F40(v68, &unk_1005D91B0, &unk_1004CF400);
      v81 = sub_10000C9C0(&qword_1005D2AA0, &qword_1004DAA58);
      v82 = v96;
      v83 = v96 + *(v81 + 48);
      *v96 = xmmword_1004DA570;
      v84 = v83 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
      sub_100025FDC(v77, v83, &unk_1005D91B0, &unk_1004CF400);
      *v84 = v80;
      *(v84 + 8) = 0;
      *(v84 + 16) = 1;
      type metadata accessor for ClientCommand(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v81 - 8) + 56))(v82, 0, 1, v81);
      return;
    }

    sub_100025F40(v68, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v72, &qword_1005CD518, &qword_1004CF2F0);
    goto LABEL_38;
  }

  v40 = 0;
  v41 = (v37 + 57);
  while (v40 < *(v37 + 16))
  {
    if ((*v41 & 1) == 0 && (*(v41 - 1) & 1) == 0)
    {
      *v97 = HIDWORD(*(v41 - 9));
      MessageIdentifierSet.insert(_:)(v99, v97, v39);
    }

    ++v40;
    v41 += 32;
    if (v38 == v40)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
}

uint64_t sub_100180340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10009A990(0, 0x2000000000000000, a1, a2, a4);
  if ((result & 1) == 0)
  {
    return 0;
  }

  v8 = *(v4 + 128);
  v9 = (v8 + 40);
  v10 = -*(v8 + 16);
  v11 = -1;
  while (v10 + v11 != -1)
  {
    if (++v11 >= *(v8 + 16))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    v12 = v9 + 2;
    v14 = *(v9 - 1);
    v13 = *v9;
    sub_100014CEC(v14, *v9);
    v15 = sub_10001A004(v14, v13, a1, a2, a3);
    result = sub_100014D40(v14, v13);
    v9 = v12;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  result = type metadata accessor for UploadMessages(0);
  v17 = *(v4 + *(result + 68));
  v18 = (v17 + 40);
  v19 = -*(v17 + 16);
  v20 = -1;
  do
  {
    v16 = v19 + v20 == -1;
    if (v19 + v20 == -1)
    {
      break;
    }

    if (++v20 >= *(v17 + 16))
    {
      goto LABEL_14;
    }

    v21 = v18 + 4;
    v23 = *(v18 - 1);
    v22 = *v18;
    sub_100014CEC(v23, *v18);
    v24 = sub_10009A990(v23, v22, a1, a2, a4);
    result = sub_100014D40(v23, v22);
    v18 = v21;
  }

  while ((v24 & 1) != 0);
  return v16;
}

void sub_1001804B4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  v189 = a8;
  v187 = a6;
  v185 = a4;
  v186 = a5;
  v188 = a3;
  v10 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v174 - v11;
  v13 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v13);
  v15 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v21 = &v174 - v20;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v25 = &v174 - v24;
  __chkstk_darwin(v26);
  v28 = &v174 - v27;
  __chkstk_darwin(v29);
  v31 = &v174 - v30;
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  v35 = &v174 - v34;
  __chkstk_darwin(v36);
  v44 = &v174 - v40;
  if (a2 >> 60 == 11)
  {
    return;
  }

  if (a2 >> 60 == 15)
  {
    if (*(v8 + 120) == 2 && !*(v8 + 112))
    {
      v45 = v37;
      v184 = v8;
      v46 = v189;
      sub_100016B98(v189, &v174 - v40, type metadata accessor for MailboxTaskLogger);
      sub_100016B98(v46, v35, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v47 = sub_1004A4A54();
      v48 = sub_1004A6014();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        *v49 = 68159235;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        v50 = v45;
        v51 = &v35[*(v45 + 20)];
        *(v49 + 10) = *v51;
        *(v49 + 11) = 2082;
        v52 = &v44[*(v50 + 20)];
        *(v49 + 13) = sub_10015BA6C(*(v52 + 1), *(v52 + 2), &v192);
        *(v49 + 21) = 1040;
        *(v49 + 23) = 2;
        *(v49 + 27) = 512;
        LOWORD(v51) = *(v51 + 12);
        sub_100184CB0(v35, type metadata accessor for MailboxTaskLogger);
        *(v49 + 29) = v51;
        *(v49 + 31) = 2160;
        *(v49 + 33) = 0x786F626C69616DLL;
        *(v49 + 41) = 2085;
        v53 = *(v52 + 4);
        v54 = *(v52 + 10);

        sub_100184CB0(v44, type metadata accessor for MailboxTaskLogger);
        v190 = v53;
        v191 = v54;
        v55 = sub_1004A5824();
        v57 = sub_10015BA6C(v55, v56, &v192);

        *(v49 + 43) = v57;
        _os_log_impl(&_mh_execute_header, v47, v48, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server supports mailbox specific APPENDLIMIT, but did not return its value.", v49, 0x33u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100184CB0(v35, type metadata accessor for MailboxTaskLogger);

        sub_100184CB0(v44, type metadata accessor for MailboxTaskLogger);
      }

      v81 = v184;
      *(v184 + 112) = 1;
      *(v81 + 120) = 2;
    }

    return;
  }

  v181 = v38;
  v182 = v37;
  v177 = v31;
  v178 = v41;
  v179 = v39;
  v180 = v42;
  v58 = v43;
  v183 = type metadata accessor for UploadMessages(0);
  v59 = v183[14];
  v60 = *(v8 + v59);
  v61 = *(v8 + v59 + 8);
  if (v61 >> 60 == 15)
  {
    return;
  }

  *(v8 + v59) = xmmword_1004D25F0;
  v174 = v60;
  v62 = v60;
  sub_100014CEC(v60, v61);
  v175 = v62;
  v176 = v61;
  sub_1000CBB68(v62, v61);
  v184 = v8;
  if (!v187)
  {
    if ((~v188 & 0xF000000000000007) != 0 && ((v188 >> 59) & 0x1E | (v188 >> 2) & 1) == 7)
    {
      v82 = type metadata accessor for ResponseCodeAppend(0);
      v83 = swift_projectBox();
      v84 = *v83;
      sub_10000E268(v83 + *(v82 + 20), v12, &qword_1005CD1D0, &unk_1004CF2C0);
      v85 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v86 = MessageIdentifierSet.startIndex.getter(v85);
      v88 = v87;
      if (v86 == MessageIdentifierSet.endIndex.getter(v85) && v88 == v89)
      {
        sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
        __break(1u);
        return;
      }

      MessageIdentifierSet.subscript.getter(v88, v85, &v190);
      v90 = v190;
      sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
      v91 = v189;
      v92 = v178;
      sub_100016B98(v189, v178, type metadata accessor for MailboxTaskLogger);
      v93 = v177;
      sub_100016B98(v91, v177, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v94 = sub_1004A4A54();
      v95 = sub_1004A6034();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        *v96 = 68159491;
        v188 = v90;
        v189 = v84;
        *(v96 + 4) = 2;
        *(v96 + 8) = 256;
        v97 = v182;
        v98 = v93 + *(v182 + 20);
        *(v96 + 10) = *v98;
        *(v96 + 11) = 2082;
        v99 = v92 + *(v97 + 20);
        *(v96 + 13) = sub_10015BA6C(*(v99 + 8), *(v99 + 16), &v192);
        *(v96 + 21) = 1040;
        *(v96 + 23) = 2;
        *(v96 + 27) = 512;
        LOWORD(v98) = *(v98 + 24);
        sub_100184CB0(v93, type metadata accessor for MailboxTaskLogger);
        *(v96 + 29) = v98;
        *(v96 + 31) = 2160;
        *(v96 + 33) = 0x786F626C69616DLL;
        *(v96 + 41) = 2085;
        v100 = *(v99 + 32);
        LODWORD(v99) = *(v99 + 40);

        sub_100184CB0(v92, type metadata accessor for MailboxTaskLogger);
        v190 = v100;
        v191 = v99;
        v101 = sub_1004A5824();
        v103 = sub_10015BA6C(v101, v102, &v192);
        v84 = v189;

        *(v96 + 43) = v103;
        v90 = v188;
        *(v96 + 51) = 1024;
        *(v96 + 53) = v90;
        _os_log_impl(&_mh_execute_header, v94, v95, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND succeeded with UID %u.", v96, 0x39u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100184CB0(v93, type metadata accessor for MailboxTaskLogger);

        sub_100184CB0(v92, type metadata accessor for MailboxTaskLogger);
      }

      v143 = v184;
      v144 = v183[17];
      v145 = *(v184 + v144);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = sub_100087114(0, *(v145 + 2) + 1, 1, v145);
      }

      v168 = *(v145 + 2);
      v167 = *(v145 + 3);
      if (v168 >= v167 >> 1)
      {
        v145 = sub_100087114((v167 > 1), v168 + 1, 1, v145);
      }

      *(v145 + 2) = v168 + 1;
      v169 = &v145[32 * v168];
      v170 = v176;
      *(v169 + 4) = v175;
      *(v169 + 5) = v170;
      *(v169 + 6) = v84 | (v90 << 32);
      *(v169 + 28) = 0;
      goto LABEL_47;
    }

    v120 = v189;
    sub_100016B98(v189, v28, type metadata accessor for MailboxTaskLogger);
    sub_100016B98(v120, v25, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v121 = sub_1004A4A54();
    v122 = sub_1004A6034();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *v123 = 68159235;
      *(v123 + 4) = 2;
      *(v123 + 8) = 256;
      v124 = v182;
      v125 = &v25[*(v182 + 20)];
      *(v123 + 10) = *v125;
      *(v123 + 11) = 2082;
      v126 = &v28[*(v124 + 20)];
      *(v123 + 13) = sub_10015BA6C(*(v126 + 1), *(v126 + 2), &v192);
      *(v123 + 21) = 1040;
      *(v123 + 23) = 2;
      *(v123 + 27) = 512;
      LOWORD(v125) = *(v125 + 12);
      sub_100184CB0(v25, type metadata accessor for MailboxTaskLogger);
      *(v123 + 29) = v125;
      *(v123 + 31) = 2160;
      *(v123 + 33) = 0x786F626C69616DLL;
      *(v123 + 41) = 2085;
      v127 = *(v126 + 4);
      LODWORD(v126) = *(v126 + 10);

      sub_100184CB0(v28, type metadata accessor for MailboxTaskLogger);
      v190 = v127;
      v191 = v126;
      v128 = sub_1004A5824();
      v130 = sub_10015BA6C(v128, v129, &v192);

      *(v123 + 43) = v130;
      _os_log_impl(&_mh_execute_header, v121, v122, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND succeeded without UIDValidity.", v123, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100184CB0(v25, type metadata accessor for MailboxTaskLogger);

      sub_100184CB0(v28, type metadata accessor for MailboxTaskLogger);
    }

    v143 = v184;
    v144 = v183[17];
    v145 = *(v184 + v144);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v145 = sub_100087114(0, *(v145 + 2) + 1, 1, v145);
    }

    v159 = *(v145 + 2);
    v158 = *(v145 + 3);
    if (v159 >= v158 >> 1)
    {
      v145 = sub_100087114((v158 > 1), v159 + 1, 1, v145);
    }

    *(v145 + 2) = v159 + 1;
    v149 = &v145[32 * v159];
    v160 = v176;
    *(v149 + 4) = v175;
    *(v149 + 5) = v160;
    *(v149 + 6) = 0;
    v150 = 1;
LABEL_46:
    *(v149 + 28) = v150;
LABEL_47:
    *(v143 + v144) = v145;
    return;
  }

  if (v187 != 1)
  {
    v104 = v189;
    sub_100016B98(v189, v58, type metadata accessor for MailboxTaskLogger);
    sub_100016B98(v104, v15, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v105 = v188;
    sub_1000110B0(v188);

    v106 = sub_1004A4A54();
    v107 = sub_1004A6034();
    sub_10001114C(v105);

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v192 = v189;
      *v108 = 68159491;
      *(v108 + 4) = 2;
      *(v108 + 8) = 256;
      v109 = v182;
      v110 = &v15[*(v182 + 20)];
      *(v108 + 10) = *v110;
      *(v108 + 11) = 2082;
      v111 = v58 + *(v109 + 20);
      *(v108 + 13) = sub_10015BA6C(*(v111 + 8), *(v111 + 16), &v192);
      *(v108 + 21) = 1040;
      *(v108 + 23) = 2;
      *(v108 + 27) = 512;
      LOWORD(v110) = *(v110 + 12);
      sub_100184CB0(v15, type metadata accessor for MailboxTaskLogger);
      *(v108 + 29) = v110;
      *(v108 + 31) = 2160;
      *(v108 + 33) = 0x786F626C69616DLL;
      *(v108 + 41) = 2085;
      v112 = *(v111 + 32);
      v113 = *(v111 + 40);

      sub_100184CB0(v58, type metadata accessor for MailboxTaskLogger);
      v190 = v112;
      v191 = v113;
      v114 = sub_1004A5824();
      v116 = sub_10015BA6C(v114, v115, &v192);

      *(v108 + 43) = v116;
      *(v108 + 51) = 2082;
      v117 = ResponseText.debugDescription.getter(v105, v185, v186);
      v119 = sub_10015BA6C(v117, v118, &v192);

      *(v108 + 53) = v119;
      _os_log_impl(&_mh_execute_header, v106, v107, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND failed: %{public}s", v108, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100184CB0(v15, type metadata accessor for MailboxTaskLogger);

      sub_100184CB0(v58, type metadata accessor for MailboxTaskLogger);
    }

    v143 = v184;
    v144 = v183[17];
    v145 = *(v184 + v144);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v145 = sub_100087114(0, *(v145 + 2) + 1, 1, v145);
    }

    v146 = v174;
    v148 = *(v145 + 2);
    v147 = *(v145 + 3);
    if (v148 >= v147 >> 1)
    {
      v171 = sub_100087114((v147 > 1), v148 + 1, 1, v145);
      v146 = v174;
      v145 = v171;
    }

    *(v145 + 2) = v148 + 1;
    v149 = &v145[32 * v148];
    *(v149 + 2) = v146;
    *(v149 + 6) = 0;
    v150 = 256;
    goto LABEL_46;
  }

  v63 = v188;
  if ((~v188 & 0xF000000000000007) != 0 && v188 == 0x800000000000002CLL)
  {
    v131 = v189;
    v132 = v179;
    sub_100016B98(v189, v179, type metadata accessor for MailboxTaskLogger);
    sub_100016B98(v131, v21, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v133 = sub_1004A4A54();
    v134 = sub_1004A6034();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *v135 = 68159235;
      *(v135 + 4) = 2;
      *(v135 + 8) = 256;
      v136 = v182;
      v137 = &v21[*(v182 + 20)];
      *(v135 + 10) = *v137;
      *(v135 + 11) = 2082;
      v138 = v132 + *(v136 + 20);
      *(v135 + 13) = sub_10015BA6C(*(v138 + 8), *(v138 + 16), &v192);
      *(v135 + 21) = 1040;
      *(v135 + 23) = 2;
      *(v135 + 27) = 512;
      LOWORD(v137) = *(v137 + 12);
      sub_100184CB0(v21, type metadata accessor for MailboxTaskLogger);
      *(v135 + 29) = v137;
      *(v135 + 31) = 2160;
      *(v135 + 33) = 0x786F626C69616DLL;
      *(v135 + 41) = 2085;
      v139 = *(v138 + 32);
      LODWORD(v137) = *(v138 + 40);

      sub_100184CB0(v132, type metadata accessor for MailboxTaskLogger);
      v190 = v139;
      v191 = v137;
      v140 = sub_1004A5824();
      v142 = sub_10015BA6C(v140, v141, &v192);

      *(v135 + 43) = v142;
      _os_log_impl(&_mh_execute_header, v133, v134, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND failed with “No, try create”.", v135, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100184CB0(v21, type metadata accessor for MailboxTaskLogger);

      sub_100184CB0(v132, type metadata accessor for MailboxTaskLogger);
    }

    v161 = v184;
    v162 = v183[16];
    v163 = *(v184 + v162);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v163 = sub_100086B4C(0, *(v163 + 2) + 1, 1, v163);
    }

    v164 = v174;
    v166 = *(v163 + 2);
    v165 = *(v163 + 3);
    if (v166 >= v165 >> 1)
    {
      v173 = sub_100086B4C((v165 > 1), v166 + 1, 1, v163);
      v164 = v174;
      v163 = v173;
    }

    *(v163 + 2) = v166 + 1;
    *&v163[16 * v166 + 32] = v164;
    *(v161 + v162) = v163;
  }

  else
  {
    v64 = v189;
    v65 = v180;
    sub_100016B98(v189, v180, type metadata accessor for MailboxTaskLogger);
    v66 = v181;
    sub_100016B98(v64, v181, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000110B0(v63);

    v67 = sub_1004A4A54();
    v68 = sub_1004A6034();
    sub_10001114C(v63);

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *v69 = 68159491;
      *(v69 + 4) = 2;
      *(v69 + 8) = 256;
      v70 = v182;
      v71 = v66 + *(v182 + 20);
      *(v69 + 10) = *v71;
      *(v69 + 11) = 2082;
      v72 = v65;
      v73 = v65 + *(v70 + 20);
      *(v69 + 13) = sub_10015BA6C(*(v73 + 8), *(v73 + 16), &v192);
      *(v69 + 21) = 1040;
      *(v69 + 23) = 2;
      *(v69 + 27) = 512;
      LOWORD(v71) = *(v71 + 24);
      sub_100184CB0(v66, type metadata accessor for MailboxTaskLogger);
      *(v69 + 29) = v71;
      *(v69 + 31) = 2160;
      *(v69 + 33) = 0x786F626C69616DLL;
      *(v69 + 41) = 2085;
      v74 = *(v73 + 32);
      LODWORD(v73) = *(v73 + 40);

      sub_100184CB0(v72, type metadata accessor for MailboxTaskLogger);
      v190 = v74;
      v191 = v73;
      v75 = sub_1004A5824();
      v77 = sub_10015BA6C(v75, v76, &v192);

      *(v69 + 43) = v77;
      *(v69 + 51) = 2082;
      v78 = ResponseText.debugDescription.getter(v188, v185, v186);
      v80 = sub_10015BA6C(v78, v79, &v192);

      *(v69 + 53) = v80;
      _os_log_impl(&_mh_execute_header, v67, v68, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] APPEND failed: %{public}s", v69, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100184CB0(v66, type metadata accessor for MailboxTaskLogger);

      sub_100184CB0(v65, type metadata accessor for MailboxTaskLogger);
    }

    v151 = v184;
    v152 = v183[17];
    v153 = *(v184 + v152);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v153 = sub_100087114(0, *(v153 + 2) + 1, 1, v153);
    }

    v154 = v176;
    v156 = *(v153 + 2);
    v155 = *(v153 + 3);
    if (v156 >= v155 >> 1)
    {
      v172 = sub_100087114((v155 > 1), v156 + 1, 1, v153);
      v154 = v176;
      v153 = v172;
    }

    *(v153 + 2) = v156 + 1;
    v157 = &v153[32 * v156];
    *(v157 + 4) = v175;
    *(v157 + 5) = v154;
    *(v157 + 6) = 0;
    *(v157 + 28) = 256;
    *(v151 + v152) = v153;
  }
}

void sub_100181970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v83);
  v87 = &v79[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v86 = &v79[-v8];
  __chkstk_darwin(v9);
  v11 = &v79[-v10];
  __chkstk_darwin(v12);
  v14 = &v79[-v13];
  __chkstk_darwin(v15);
  v17 = &v79[-v16];
  __chkstk_darwin(v18);
  v20 = &v79[-v19];
  v21 = type metadata accessor for UploadMessages(0);

  sub_10009333C(v22);
  v23 = a2;

  v84 = a3;
  v85 = v21;
  if (*(a2 + *(v21 + 72)) == 1)
  {
    sub_100016B98(a3, v20, type metadata accessor for MailboxTaskLogger);
    sub_100016B98(a3, v17, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v24 = sub_1004A4A54();
    v25 = sub_1004A6034();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v26 = 68159235;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v27 = v83;
      v28 = *(v83 + 20);
      v82 = a1;
      v29 = &v17[v28];
      *(v26 + 10) = v17[v28];
      *(v26 + 11) = 2082;
      v30 = &v20[*(v27 + 20)];
      *(v26 + 13) = sub_10015BA6C(*(v30 + 1), *(v30 + 2), &v90);
      *(v26 + 21) = 1040;
      *(v26 + 23) = 2;
      *(v26 + 27) = 512;
      LOWORD(v29) = *(v29 + 12);
      sub_100184CB0(v17, type metadata accessor for MailboxTaskLogger);
      *(v26 + 29) = v29;
      *(v26 + 31) = 2160;
      *(v26 + 33) = 0x786F626C69616DLL;
      *(v26 + 41) = 2085;
      v31 = *(v30 + 4);
      LODWORD(v29) = *(v30 + 10);
      v23 = a2;

      sub_100184CB0(v20, type metadata accessor for MailboxTaskLogger);
      v88 = v31;
      v89 = v29;
      a1 = v82;
      v32 = sub_1004A5824();
      v34 = sub_10015BA6C(v32, v33, &v90);

      *(v26 + 43) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence has more messages to upload. Will mark as needing to re-run.", v26, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100184CB0(v17, type metadata accessor for MailboxTaskLogger);

      sub_100184CB0(v20, type metadata accessor for MailboxTaskLogger);
    }

    sub_10013FC9C(6u);
    sub_100088568(&v88, 6);
    v36 = v85;
  }

  else
  {
    v35 = *(type metadata accessor for MailboxSyncState(0) + 52);
    v36 = v85;
    if (*(a1 + v35) == 1)
    {
      v37 = v84;
      sub_100016B98(v84, v14, type metadata accessor for MailboxTaskLogger);
      sub_100016B98(v37, v11, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v38 = sub_1004A4A54();
      v39 = sub_1004A6034();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v90 = v81;
        *v40 = 68159235;
        v80 = v39;
        *(v40 + 4) = 2;
        *(v40 + 8) = 256;
        v41 = v83;
        v42 = *(v83 + 20);
        v82 = v23;
        v43 = a1;
        v44 = &v11[v42];
        *(v40 + 10) = v11[v42];
        *(v40 + 11) = 2082;
        v45 = &v14[*(v41 + 20)];
        *(v40 + 13) = sub_10015BA6C(*(v45 + 1), *(v45 + 2), &v90);
        *(v40 + 21) = 1040;
        *(v40 + 23) = 2;
        *(v40 + 27) = 512;
        LOWORD(v44) = *(v44 + 12);
        sub_100184CB0(v11, type metadata accessor for MailboxTaskLogger);
        *(v40 + 29) = v44;
        a1 = v43;
        *(v40 + 31) = 2160;
        *(v40 + 33) = 0x786F626C69616DLL;
        *(v40 + 41) = 2085;
        v46 = *(v45 + 4);
        LODWORD(v45) = *(v45 + 10);

        sub_100184CB0(v14, type metadata accessor for MailboxTaskLogger);
        v88 = v46;
        v89 = v45;
        v47 = sub_1004A5824();
        v49 = sub_10015BA6C(v47, v48, &v90);

        *(v40 + 43) = v49;
        v23 = v82;
        _os_log_impl(&_mh_execute_header, v38, v80, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removing all messages pending upload.", v40, 0x33u);
        swift_arrayDestroy();
      }

      else
      {
        sub_100184CB0(v11, type metadata accessor for MailboxTaskLogger);

        sub_100184CB0(v14, type metadata accessor for MailboxTaskLogger);
      }

      *(a1 + v35) = 0;
    }
  }

  v50 = 0;
  v51 = 0;
  v52 = *(v23 + *(v36 + 68));
  v53 = *(v52 + 16);
  v54 = v52 + 57;
LABEL_12:
  v55 = (v54 + 32 * v50);
  while (v53 != v50)
  {
    if (v50 >= v53)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    v56 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_33;
    }

    v57 = *v55;
    v55 += 32;
    ++v50;
    if ((v57 & 1) == 0)
    {
      v50 = v56;
      if (!__OFADD__(v51++, 1))
      {
        goto LABEL_12;
      }

      __break(1u);
      break;
    }
  }

  if (v51 >= 1)
  {
    v59 = v84;
    sub_100016B98(v84, v86, type metadata accessor for MailboxTaskLogger);
    sub_100016B98(v59, v87, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v60 = sub_1004A4A54();
    v61 = sub_1004A6034();
    if (!os_log_type_enabled(v60, v61))
    {
      sub_100184CB0(v87, type metadata accessor for MailboxTaskLogger);

      sub_100184CB0(v86, type metadata accessor for MailboxTaskLogger);
      v75 = *(v23 + 120);
      if (!*(v23 + 120))
      {
        return;
      }

      goto LABEL_26;
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = v86;
    v65 = v87;
    v85 = v63;
    v90 = v63;
    *v62 = 68159491;
    *(v62 + 4) = 2;
    *(v62 + 8) = 256;
    v66 = v83;
    v67 = *(v83 + 20);
    v82 = a1;
    v68 = &v65[v67];
    *(v62 + 10) = v65[v67];
    *(v62 + 11) = 2082;
    v69 = &v64[*(v66 + 20)];
    *(v62 + 13) = sub_10015BA6C(*(v69 + 1), *(v69 + 2), &v90);
    *(v62 + 21) = 1040;
    *(v62 + 23) = 2;
    *(v62 + 27) = 512;
    LOWORD(v68) = *(v68 + 12);
    sub_100184CB0(v65, type metadata accessor for MailboxTaskLogger);
    *(v62 + 29) = v68;
    *(v62 + 31) = 2160;
    *(v62 + 33) = 0x786F626C69616DLL;
    *(v62 + 41) = 2085;
    v70 = v23;
    v71 = *(v69 + 4);
    LODWORD(v68) = *(v69 + 10);

    sub_100184CB0(v64, type metadata accessor for MailboxTaskLogger);
    v88 = v71;
    v89 = v68;
    a1 = v82;
    v72 = sub_1004A5824();
    v74 = sub_10015BA6C(v72, v73, &v90);

    *(v62 + 43) = v74;
    v23 = v70;
    *(v62 + 51) = 2048;
    *(v62 + 53) = v51;
    _os_log_impl(&_mh_execute_header, v60, v61, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did successfully upload %ld message(s).", v62, 0x3Du);
    swift_arrayDestroy();
  }

  v75 = *(v23 + 120);
  if (!*(v23 + 120))
  {
    return;
  }

LABEL_26:
  v76 = *(v23 + 112);
  if (v75 == 1)
  {
    v77 = 0;
  }

  else
  {
    if (!v76)
    {
      return;
    }

    v76 = 0;
    v77 = 1;
  }

  v78 = a1 + *(type metadata accessor for MailboxSyncState(0) + 72);
  *v78 = v76;
  *(v78 + 8) = v77;
  *(v78 + 9) = 0;
}

double sub_1001822B0()
{
  if (qword_1005CCEA8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100182328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a6@<X8>)
{
  result = sub_100183218(a1, a2, a3, a4);
  *a6 = result;
  a6[1] = v8;
  a6[2] = v9;
  return result;
}

uint64_t sub_1001823A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(result + 8);
  if ((v5 & 0x3000000000000000) == 0x1000000000000000)
  {
    v7 = *result;
    v8 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    result = sub_100011E60(*result, v5 & 0xCFFFFFFFFFFFFFFFLL, *(v4 + *(a4 + 60)));
    if (result)
    {
      v9 = *(a4 + 68);
      v10 = *(v4 + v9);
      sub_100014CEC(v7, v8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100087114(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v17 = v11 + 1;
        v15 = v10;
        v16 = *(v10 + 16);
        result = sub_100087114((v12 > 1), v11 + 1, 1, v15);
        v11 = v16;
        v13 = v17;
        v10 = result;
      }

      *(v10 + 16) = v13;
      v14 = v10 + 32 * v11;
      *(v14 + 32) = v7;
      *(v14 + 40) = v8;
      *(v14 + 48) = 0;
      *(v14 + 56) = 256;
      *(v4 + v9) = v10;
    }
  }

  return result;
}

uint64_t sub_1001824B0(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (*(result + 192) == 1)
  {
    v5 = *(result + 176);
    v4 = *(result + 184);
    v9 = *(result + 168);
    v6 = v9;
    v7 = result;

    sub_1000BE940(&v9, v2, v3, 0, sub_100183210);
    result = sub_100020D58(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

unint64_t sub_10018258C()
{
  result = qword_1005D2818;
  if (!qword_1005D2818)
  {
    result = swift_getWitnessTable(aY_22, &type metadata for UploadMessages.CommandID.Kind, v0, v1);
    atomic_store(result, &qword_1005D2818);
  }

  return result;
}

BOOL sub_1001825E0(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) == 0)
  {
    if ((a4 & 0x100) == 0)
    {
      if (a2)
      {
        if (a4)
        {
          return 1;
        }
      }

      else if ((a4 & 1) == 0 && a1 == a3)
      {
        return 1;
      }
    }

    return 0;
  }

  return (a4 & 0x100) != 0;
}

BOOL sub_100182614(_BOOL8 a1, unint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, unint64_t a6, uint64_t a7, __int16 a8)
{
  if (!sub_10003A194(a1, a2, a5, a6))
  {
    return 0;
  }

  if ((a4 & 0x100) == 0)
  {
    if ((a8 & 0x100) == 0)
    {
      if (a4)
      {
        if (a8)
        {
          return 1;
        }
      }

      else if ((a8 & 1) == 0 && a3 == a7)
      {
        return 1;
      }
    }

    return 0;
  }

  return (a8 & 0x100) != 0;
}

uint64_t sub_10018269C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10018276C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100182838(uint64_t a1)
{
  sub_100182DF4(319, &qword_1005D28A8, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1001828E0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100182908(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 16))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100182964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((14 - a2) >> 2) | (4 * (14 - a2))) << 60;
    }
  }

  return result;
}

void *sub_1001829B8(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_100182A1C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&qword_1005D28E0, &qword_1004DA6E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_100182AEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D28E0, &qword_1004DA6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100182BBC(uint64_t a1)
{
  sub_100182E48(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep);
  if (v1 <= 0x3F)
  {
    sub_100182EA8(319, &qword_1005D2950, &type metadata for OpaquePersistedMessageIdentifier, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100182EA8(319, &qword_1005D2958, &type metadata for OpaquePersistedMessageIdentifier, &type metadata accessor for ArraySlice);
      if (v3 <= 0x3F)
      {
        sub_100182DF4(319, &qword_1005D2960, type metadata accessor for UploadMessages.PendingUpload);
        if (v4 <= 0x3F)
        {
          sub_100182EA8(319, &qword_1005D2968, &type metadata for OpaquePersistedMessageIdentifier, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100182E48(319, &qword_1005CF8B0, sub_1000CEA84, &type metadata for OpaquePersistedMessageIdentifier);
            if (v6 <= 0x3F)
            {
              sub_100182EA8(319, &unk_1005D2970, &type metadata for UploadMessages.CompletedUpload, &type metadata accessor for Array);
              if (v7 <= 0x3F)
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

void sub_100182DF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004A6374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100182E48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1004A5DC4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100182EA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 initializeWithCopy for Action.UnreadCountOutsideWindowOfInterest(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100182F0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 26))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100182F60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100182FD4(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t sub_100182FF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_10018303C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_1004DA580;
    }
  }

  return result;
}

void *sub_100183090(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}

unint64_t sub_1001830E0()
{
  result = qword_1005D29D8;
  if (!qword_1005D29D8)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for UploadMessages.ActionID, v0, v1);
    atomic_store(result, &qword_1005D29D8);
  }

  return result;
}

unint64_t sub_100183138()
{
  result = qword_1005D29E0;
  if (!qword_1005D29E0)
  {
    result = swift_getWitnessTable(a9_5, &type metadata for UploadMessages.CommandID, v0, v1);
    atomic_store(result, &qword_1005D29E0);
  }

  return result;
}

unint64_t sub_10018318C(uint64_t a1)
{
  result = sub_1001831B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001831B4()
{
  result = qword_1005D2A98;
  if (!qword_1005D2A98)
  {
    v3 = type metadata accessor for UploadMessages(255);
    result = swift_getWitnessTable(byte_1004DA9AC, v3, v0, v1);
    atomic_store(result, &qword_1005D2A98);
  }

  return result;
}

uint64_t sub_100183218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v45 = a1;
  v7 = sub_10000C9C0(&qword_1005D28E0, &qword_1004DA6E0);
  __chkstk_darwin(v7 - 8);
  v42 = &v42 - v8;
  result = type metadata accessor for UploadMessages(0);
  v43 = result;
  v48 = *(v4 + *(result + 68));
  v10 = *(v48 + 16);
  v46 = v4;
  v47 = v10;
  if (v10)
  {
    v11 = 0;
    v12 = (v48 + 57);
    while (1)
    {
      if (v11 >= *(v48 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v13 = *(v12 - 25);
      v14 = *(v12 - 17);
      v15 = *(v12 - 9);
      v16 = *(v12 - 1);
      v17 = *v12;
      sub_100014CEC(v13, v14);
      sub_100014CEC(v13, v14);
      v18 = a2;
      v19 = a2;
      v20 = a3;
      v21 = sub_10001FF50(v13, v14, v19, a3);
      sub_100014D40(v13, v14);
      if ((v21 & 1) == 0)
      {
        break;
      }

      ++v11;
      result = sub_100014D40(v13, v14);
      v12 += 32;
      a3 = v20;
      a2 = v18;
      if (v47 == v11)
      {
        goto LABEL_6;
      }
    }

    v36 = swift_allocObject();
    v37 = *(v46 + 32);
    *(v36 + 16) = *(v46 + 24);
    *(v36 + 24) = v37;
    *(v36 + 32) = v13;
    *(v36 + 40) = v14;
    if ((v17 & 1) == 0)
    {
      *(v36 + 48) = v15;
      *(v36 + 56) = v16 & 1;
    }

    sub_100014CEC(v13, v14);
    goto LABEL_21;
  }

LABEL_6:
  result = sub_10001FF50(0, 0x2000000000000000, a2, a3);
  if (result)
  {
    v22 = v45;
    if ((sub_10009A990(0, 0x2000000000000000, v45, a2, a3) & 1) != 0 && (sub_1000728DC(2, v22, a2, a3) & 1) == 0)
    {
      v23 = v42;
      v24 = v46;
      sub_10000E268(v46 + *(v43 + 52), v42, &qword_1005D28E0, &qword_1004DA6E0);
      v25 = type metadata accessor for UploadMessages.PendingUpload(0);
      v26 = (*(*(v25 - 8) + 48))(v23, 1, v25);
      sub_100025F40(v23, &qword_1005D28E0, &qword_1004DA6E0);
      if (v26 == 1)
      {
        sub_10017F3AC(&v49);
        v27 = *(&v49 + 1);
        if (*(&v49 + 1) >> 60 != 15)
        {
          v13 = v49;
          sub_100014CEC(v49, *(&v49 + 1));
          sub_100088A40(&v49, v13, v27);
          sub_100014D40(v49, *(&v49 + 1));
          v28 = swift_allocObject();
          v29 = *(v24 + 32);
          *(v28 + 16) = *(v24 + 24);
          *(v28 + 24) = v29;
          *(v28 + 32) = v13;
          *(v28 + 40) = v27;
          sub_1000CBB54(v13, v27);
LABEL_21:

          return v13;
        }
      }
    }

    return 0;
  }

  v30 = *(v44 + 176);
  v31 = *(v30 + 16);
  v32 = v31 + 7;
  if (!__OFADD__(v31, 7))
  {
    if (v32 <= 99)
    {
      if (v31)
      {
        v33 = sub_100135564(*(v30 + 16), 0);
        v34 = sub_1001396A0(&v49, v33 + 2, v31, v30);
        v35 = v49;

        sub_100020D08(v35);
        if (v34 != v31)
        {
          __break(1u);
          return 0;
        }
      }

      else
      {
        v33 = _swiftEmptyArrayStorage;
      }

      v38 = v46;
      v39 = *(v43 + 64);

      *(v38 + v39) = v33;
      v40 = swift_allocObject();
      v41 = *(v38 + 32);
      *(v40 + 16) = *(v38 + 24);
      *(v40 + 24) = v41;
      *(v40 + 32) = v32;

      return 0;
    }

    return 0;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_100183688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v11 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v6 + 120) == 2 && *(v6 + 112) == 0;
  if (v20 && (sub_100058C74(0, 0xF000000000000000, a2, a3, a4) & 1) != 0)
  {
    sub_100016B98(a1, v19, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v21 = *v19;
      v22 = *(v19 + 2);
      v23 = *(v19 + 6);
      v48[4] = *(v19 + 5);
      v48[5] = v23;
      v24 = *(v19 + 8);
      v49 = *(v19 + 7);
      v50 = v24;
      v25 = *(v19 + 2);
      v48[0] = *(v19 + 1);
      v48[1] = v25;
      v26 = *(v19 + 4);
      v27 = *(v6 + 32) | (*(v6 + 32) << 32);
      v48[2] = *(v19 + 3);
      v48[3] = v26;
      if (v27 == (v22 | (v22 << 32)))
      {
        v28 = sub_1000FFC98(*(v6 + 24), v21);

        sub_10009A0FC(v48);
        if ((v28 & 1) != 0 && BYTE8(v49) != 1)
        {
          v43 = v6;
          v29 = v49;
          v30 = v44;
          sub_100016B98(v44, v16, type metadata accessor for MailboxTaskLogger);
          sub_100016B98(v30, v13, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v31 = sub_1004A4A54();
          v32 = sub_1004A6034();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            *v33 = 68159491;
            *(v33 + 4) = 2;
            *(v33 + 8) = 256;
            v34 = &v13[*(v11 + 20)];
            *(v33 + 10) = *v34;
            *(v33 + 11) = 2082;
            v35 = *(v11 + 20);
            v44 = v29;
            v36 = &v16[v35];
            *(v33 + 13) = sub_10015BA6C(*&v16[v35 + 8], *&v16[v35 + 16], &v47);
            *(v33 + 21) = 1040;
            *(v33 + 23) = 2;
            *(v33 + 27) = 512;
            LOWORD(v34) = *(v34 + 12);
            sub_100184CB0(v13, type metadata accessor for MailboxTaskLogger);
            *(v33 + 29) = v34;
            *(v33 + 31) = 2160;
            *(v33 + 33) = 0x786F626C69616DLL;
            *(v33 + 41) = 2085;
            v37 = *(v36 + 4);
            LODWORD(v36) = *(v36 + 10);

            sub_100184CB0(v16, type metadata accessor for MailboxTaskLogger);
            v45 = v37;
            v46 = v36;
            v29 = v44;
            v38 = sub_1004A5824();
            v40 = sub_10015BA6C(v38, v39, &v47);

            *(v33 + 43) = v40;
            *(v33 + 51) = 2048;
            *(v33 + 53) = v29;
            _os_log_impl(&_mh_execute_header, v31, v32, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received a mailbox specific APPENDLIMIT of %ld.", v33, 0x3Du);
            swift_arrayDestroy();
          }

          else
          {
            sub_100184CB0(v13, type metadata accessor for MailboxTaskLogger);

            sub_100184CB0(v16, type metadata accessor for MailboxTaskLogger);
          }

          v41 = v43;
          *(v43 + 112) = v29;
          *(v41 + 120) = 1;
        }
      }

      else
      {
        sub_10009A0FC(v48);
      }
    }

    else
    {
      sub_100184CB0(v19, type metadata accessor for UntaggedResponse);
    }
  }
}

void sub_100183AF8(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v145 = a4;
  v144 = a5;
  v8 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v8 - 8);
  v10 = &v134[-v9];
  v11 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v11);
  v13 = &v134[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v134[-v15];
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v21 = &v134[-v20];
  __chkstk_darwin(v22);
  v24 = &v134[-v23];
  __chkstk_darwin(v25);
  v27 = &v134[-v26];
  __chkstk_darwin(v28);
  v33 = &v134[-v32];
  v34 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v34 == 15)
  {
    v143 = v29;
    v55 = sub_10000C9C0(&qword_1005D22F0, &unk_1004EFDE0);
    v56 = swift_projectBox();
    v57 = *v56;
    v58 = *(v56 + 8);
    v33 = *(v56 + 16);
    v59 = *(v56 + 24);
    v149 = *(v56 + 32);
    v150 = *(v56 + 40);
    if ((*(v146 + 32) | (*(v146 + 32) << 32)) != (v58 | (v58 << 32)))
    {
      return;
    }

    v60 = v56;
    v142 = v59;
    v61 = (v56 + *(v55 + 96));
    v62 = *v61;
    v63 = v61[1];
    if ((sub_1000FFC98(*(v146 + 24), v57) & 1) == 0)
    {
      return;
    }

    sub_10000E268(v60 + *(v55 + 80), v10, &qword_1005D0F20, &qword_1004E9390);
    v64 = v142;
    sub_100014CEC(v33, v142);
    sub_100014CEC(v33, v64);
    sub_100014CEC(v62, v63);
    v65 = sub_100070BAC(v33, v64 | 0x1000000000000000, a2, a3, v145);
    sub_100014D40(v33, v64);
    if ((v65 & 1) == 0)
    {
      sub_100025F40(v10, &qword_1005D0F20, &qword_1004E9390);
      sub_100014D40(v33, v64);
      sub_100014D40(v62, v63);
      return;
    }

    v141 = v62;
    v145 = v63;
    v66 = type metadata accessor for UploadMessages(0);
    v67 = v146;
    sub_100140424(v33, v64, &v148);
    sub_1000CBB68(v148, *(&v148 + 1));
    if (*(v67 + 120) > 1u)
    {
      goto LABEL_55;
    }

    v68 = *(v67 + 112);
    v69 = v145 >> 62;
    if ((v145 >> 62) > 1)
    {
      if (v69 != 2)
      {
        if (v68 < 0)
        {
          goto LABEL_50;
        }

        goto LABEL_55;
      }

      v103 = *(v141 + 16);
      v102 = *(v141 + 24);
      v85 = __OFSUB__(v102, v103);
      v70 = v102 - v103;
      if (v85)
      {
        __break(1u);
        goto LABEL_45;
      }
    }

    else if (v69)
    {
      LODWORD(v70) = HIDWORD(v141) - v141;
      if (__OFSUB__(HIDWORD(v141), v141))
      {
        __break(1u);
        goto LABEL_75;
      }

      v70 = v70;
    }

    else
    {
      v70 = BYTE6(v145);
    }

    if (v68 < v70)
    {
LABEL_50:
      v138 = *(v67 + 112);
      v139 = v145 >> 62;
      v140 = v66;
      v105 = v144;
      sub_100016B98(v144, v16, type metadata accessor for MailboxTaskLogger);
      sub_100016B98(v105, v13, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v106 = v141;
      v107 = v145;
      sub_100014CEC(v141, v145);
      sub_100014CEC(v106, v107);
      v108 = sub_1004A4A54();
      v109 = sub_1004A6014();
      v144 = v108;
      if (!os_log_type_enabled(v108, v109))
      {
        sub_100014D40(v106, v107);
        sub_100184CB0(v13, type metadata accessor for MailboxTaskLogger);
        sub_100014D40(v106, v107);

        sub_100184CB0(v16, type metadata accessor for MailboxTaskLogger);
        v86 = v142;
LABEL_67:
        v84 = *(v140 + 68);
        v88 = *(v67 + v84);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_73:
          v88 = sub_100087114(0, *(v88 + 2) + 1, 1, v88);
        }

        v132 = *(v88 + 2);
        v131 = *(v88 + 3);
        if (v132 >= v131 >> 1)
        {
          v88 = sub_100087114((v131 > 1), v132 + 1, 1, v88);
        }

        sub_100014D40(v141, v145);
        sub_100025F40(v10, &qword_1005D0F20, &qword_1004E9390);
        *(v88 + 2) = v132 + 1;
        v133 = &v88[32 * v132];
        *(v133 + 4) = v33;
        *(v133 + 5) = v86;
        *(v133 + 6) = 0;
        *(v133 + 28) = 256;
        *(v67 + v84) = v88;
        return;
      }

      v137 = v109;
      v110 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *v110 = 68159747;
      *(v110 + 4) = 2;
      *(v110 + 8) = 256;
      v111 = v143;
      v112 = &v13[*(v143 + 20)];
      *(v110 + 10) = *v112;
      *(v110 + 11) = 2082;
      v113 = &v16[*(v111 + 20)];
      *(v110 + 13) = sub_10015BA6C(*(v113 + 1), *(v113 + 2), &v147);
      *(v110 + 21) = 1040;
      *(v110 + 23) = 2;
      *(v110 + 27) = 512;
      v114 = *(v112 + 12);
      sub_100184CB0(v13, type metadata accessor for MailboxTaskLogger);
      *(v110 + 29) = v114;
      *(v110 + 31) = 2160;
      *(v110 + 33) = 0x786F626C69616DLL;
      *(v110 + 41) = 2085;
      v115 = *(v113 + 4);
      LODWORD(v113) = *(v113 + 10);

      sub_100184CB0(v16, type metadata accessor for MailboxTaskLogger);
      *&v148 = v115;
      DWORD2(v148) = v113;
      v116 = sub_1004A5824();
      v118 = sub_10015BA6C(v116, v117, &v147);

      *(v110 + 43) = v118;
      *(v110 + 51) = 2048;
      if (v139 > 1)
      {
        v127 = v145;
        v120 = v141;
        if (v139 != 2)
        {
          sub_100014D40(v141, v145);
          v121 = 0;
          v122 = v127;
          goto LABEL_65;
        }

        v119 = *(v141 + 16);
        v128 = *(v141 + 24);
        sub_100014D40(v141, v145);
        v121 = v128 - v119;
        v67 = v146;
        if (!__OFSUB__(v128, v119))
        {
LABEL_63:
          v122 = v145;
          v129 = v141;
LABEL_66:
          v86 = v142;
          *(v110 + 53) = v121;
          sub_100014D40(v129, v122);
          *(v110 + 61) = 2048;
          *(v110 + 63) = v138;
          v130 = v144;
          _os_log_impl(&_mh_execute_header, v144, v137, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Message byte count (%{iec-bytes}ld) is above server’s APPENDLIMIT (%{iec-bytes}ld).", v110, 0x47u);
          swift_arrayDestroy();

          goto LABEL_67;
        }

        __break(1u);
      }

      else
      {
        v119 = v145;
        v120 = v141;
        if (!v139)
        {
          sub_100014D40(v141, v145);
          v121 = BYTE6(v119);
          v122 = v119;
LABEL_65:
          v129 = v120;
          v67 = v146;
          goto LABEL_66;
        }
      }

      sub_100014D40(v120, v119);
      LODWORD(v121) = HIDWORD(v120) - v120;
      v67 = v146;
      if (!__OFSUB__(HIDWORD(v120), v120))
      {
        v121 = v121;
        goto LABEL_63;
      }

LABEL_75:
      __break(1u);
      return;
    }

LABEL_55:
    v123 = v67 + *(v66 + 52);
    sub_100025F40(v123, &qword_1005D28E0, &qword_1004DA6E0);
    v124 = type metadata accessor for UploadMessages.PendingUpload(0);
    sub_100025FDC(v10, v123 + *(v124 + 24), &qword_1005D0F20, &qword_1004E9390);
    *v123 = v33;
    *(v123 + 8) = v64;
    *(v123 + 16) = v149;
    *(v123 + 24) = v150;
    v125 = (v123 + *(v124 + 28));
    v126 = v145;
    *v125 = v141;
    v125[1] = v126;
    (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
    return;
  }

  if (v34 == 14)
  {
    v35 = a1 & 0xFFFFFFFFFFFFFFBLL;
    if ((*(v146 + 32) | (*(v146 + 32) << 32)) == (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
    {
      v36 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v37 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v142 = v30;
      v143 = v29;
      v38 = *(v146 + 24);
      v141 = v31;
      if (sub_1000FFC98(v38, *(v35 + 16)))
      {
        v39 = *(v36 + 16);
        if (v39)
        {
          LODWORD(v139) = v37;
          v40 = v144;
          sub_100016B98(v144, v33, type metadata accessor for MailboxTaskLogger);
          sub_100016B98(v40, v27, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          swift_bridgeObjectRetain_n();
          v41 = sub_1004A4A54();
          v42 = sub_1004A6034();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v137 = v42;
            v44 = v43;
            v138 = swift_slowAlloc();
            v149 = v138;
            *v44 = 68159491;
            *(v44 + 4) = 2;
            *(v44 + 8) = 256;
            v45 = v143;
            v46 = *(v143 + 20);
            v140 = v36;
            v47 = &v27[v46];
            *(v44 + 10) = v27[v46];
            *(v44 + 11) = 2082;
            v48 = *(v45 + 20);
            v136 = v41;
            v49 = v33 + v48;
            *(v44 + 13) = sub_10015BA6C(*(v33 + v48 + 8), *(v33 + v48 + 16), &v149);
            *(v44 + 21) = 1040;
            *(v44 + 23) = 2;
            *(v44 + 27) = 512;
            v135 = *(v47 + 12);
            sub_100184CB0(v27, type metadata accessor for MailboxTaskLogger);
            *(v44 + 29) = v135;
            *(v44 + 31) = 2160;
            *(v44 + 33) = 0x786F626C69616DLL;
            *(v44 + 41) = 2085;
            v50 = *(v49 + 32);
            LODWORD(v49) = *(v49 + 40);

            sub_100184CB0(v33, type metadata accessor for MailboxTaskLogger);
            *&v148 = v50;
            DWORD2(v148) = v49;
            v51 = sub_1004A5824();
            v53 = sub_10015BA6C(v51, v52, &v149);

            *(v44 + 43) = v53;
            v36 = v140;
            *(v44 + 51) = 2048;
            v54 = *(v36 + 16);

            *(v44 + 53) = v54;

            v33 = v136;
            _os_log_impl(&_mh_execute_header, v136, v137, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received %ld message(s).", v44, 0x3Du);
            swift_arrayDestroy();
          }

          else
          {

            sub_100184CB0(v27, type metadata accessor for MailboxTaskLogger);

            sub_100184CB0(v33, type metadata accessor for MailboxTaskLogger);
          }

          LOBYTE(v37) = v139;
        }

        if ((sub_100070BAC(0, 0x2000000000000000, a2, a3, v145) & 1) == 0)
        {
          *(v146 + *(type metadata accessor for UploadMessages(0) + 72)) = 1;
          return;
        }

        v140 = v36;
        v64 = v146;
        if ((v37 & 1) == 0)
        {
          *(v64 + *(type metadata accessor for UploadMessages(0) + 72)) = 1;
        }

        v10 = *(v64 + 128);
        if (*(v10 + 2))
        {
          v71 = v144;
          sub_100016B98(v144, v24, type metadata accessor for MailboxTaskLogger);
          sub_100016B98(v71, v21, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v72 = sub_1004A4A54();
          v73 = sub_1004A6014();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v149 = v145;
            *v74 = 68159235;
            *(v74 + 4) = 2;
            *(v74 + 8) = 256;
            v75 = v143;
            v76 = &v21[*(v143 + 20)];
            *(v74 + 10) = *v76;
            *(v74 + 11) = 2082;
            v77 = &v24[*(v75 + 20)];
            *(v74 + 13) = sub_10015BA6C(*(v77 + 1), *(v77 + 2), &v149);
            *(v74 + 21) = 1040;
            *(v74 + 23) = 2;
            *(v74 + 27) = 512;
            LOWORD(v76) = *(v76 + 12);
            sub_100184CB0(v21, type metadata accessor for MailboxTaskLogger);
            *(v74 + 29) = v76;
            v64 = v146;
            *(v74 + 31) = 2160;
            *(v74 + 33) = 0x786F626C69616DLL;
            *(v74 + 41) = 2085;
            v78 = *(v77 + 4);
            LODWORD(v77) = *(v77 + 10);

            sub_100184CB0(v24, type metadata accessor for MailboxTaskLogger);
            *&v148 = v78;
            DWORD2(v148) = v77;
            v79 = sub_1004A5824();
            v33 = sub_10015BA6C(v79, v80, &v149);

            *(v74 + 43) = v33;
            _os_log_impl(&_mh_execute_header, v72, v73, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Unexpectedly received multiple .uploadMessages", v74, 0x33u);
            swift_arrayDestroy();
          }

          else
          {
            sub_100184CB0(v21, type metadata accessor for MailboxTaskLogger);

            sub_100184CB0(v24, type metadata accessor for MailboxTaskLogger);
          }
        }

        v82 = sub_1000CE67C(v81);

        v149 = v82;
        type metadata accessor for UploadMessages(0);

        sub_10009333C(v83);

        if (!v39)
        {

LABEL_46:
          v104 = (2 * *(v10 + 2)) | 1;

          swift_unknownObjectRelease();
          *(v64 + 136) = v10;
          *(v64 + 144) = v10 + 32;
          *(v64 + 152) = 0;
          *(v64 + 160) = v104;
          return;
        }

        v84 = 0;
        v67 = v140 + 40;
        do
        {
          v86 = *(v67 - 8);
          v87 = *v67;
          v88 = v149;
          sub_100014CEC(v86, *v67);
          if ((sub_100011E60(v86, v87, v88) & 1) != 0 || (v88 = *(v10 + 2), v88 > 6))
          {
            sub_100014D40(v86, v87);
            v85 = __OFADD__(v84++, 1);
            if (v85)
            {
              __break(1u);
              goto LABEL_73;
            }
          }

          else
          {
            sub_100014CEC(v86, v87);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_100086B4C(0, (v88 + 1), 1, v10);
            }

            v33 = *(v10 + 2);
            v89 = *(v10 + 3);
            if (v33 >= v89 >> 1)
            {
              v10 = sub_100086B4C((v89 > 1), v33 + 1, 1, v10);
            }

            *(v10 + 2) = v33 + 1;
            v90 = &v10[16 * v33];
            *(v90 + 4) = v86;
            *(v90 + 5) = v87;
            *(v64 + 128) = v10;
            sub_100088A40(&v148, v86, v87);
            sub_100014D40(v148, *(&v148 + 1));
          }

          v67 += 16;
          --v39;
        }

        while (v39);

        if (v84 < 1)
        {
          goto LABEL_46;
        }

        v91 = v144;
        v67 = v142;
        sub_100016B98(v144, v142, type metadata accessor for MailboxTaskLogger);
        v16 = v141;
        sub_100016B98(v91, v141, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v66 = sub_1004A4A54();
        v92 = sub_1004A6034();
        if (os_log_type_enabled(v66, v92))
        {
          v93 = swift_slowAlloc();
          LODWORD(v145) = v92;
          v94 = v93;
          v146 = swift_slowAlloc();
          v147 = v146;
          *v94 = 68159491;
          *(v94 + 4) = 2;
          *(v94 + 8) = 256;
          v95 = v143;
          v96 = &v16[*(v143 + 20)];
          *(v94 + 10) = *v96;
          *(v94 + 11) = 2082;
          v97 = v67 + *(v95 + 20);
          *(v94 + 13) = sub_10015BA6C(*(v97 + 8), *(v97 + 16), &v147);
          *(v94 + 21) = 1040;
          *(v94 + 23) = 2;
          *(v94 + 27) = 512;
          LOWORD(v96) = *(v96 + 12);
          sub_100184CB0(v16, type metadata accessor for MailboxTaskLogger);
          *(v94 + 29) = v96;
          *(v94 + 31) = 2160;
          *(v94 + 33) = 0x786F626C69616DLL;
          *(v94 + 41) = 2085;
          v98 = *(v97 + 32);
          LODWORD(v97) = *(v97 + 40);

          sub_100184CB0(v67, type metadata accessor for MailboxTaskLogger);
          *&v148 = v98;
          DWORD2(v148) = v97;
          v99 = sub_1004A5824();
          v101 = sub_10015BA6C(v99, v100, &v147);

          *(v94 + 43) = v101;
          *(v94 + 51) = 2048;
          *(v94 + 53) = v84;
          _os_log_impl(&_mh_execute_header, v66, v145, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Skipping %ld message(s).", v94, 0x3Du);
          swift_arrayDestroy();

          goto LABEL_46;
        }

LABEL_45:
        sub_100184CB0(v16, type metadata accessor for MailboxTaskLogger);

        sub_100184CB0(v67, type metadata accessor for MailboxTaskLogger);
        goto LABEL_46;
      }
    }
  }
}