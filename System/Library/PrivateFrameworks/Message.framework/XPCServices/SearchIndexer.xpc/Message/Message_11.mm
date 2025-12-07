void sub_1000C0358(unint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  if (a2)
  {
    switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
    {
      case 3uLL:
        v26 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        sub_1000BD254(v26);
        return;
      case 5uLL:
        v27 = v11;
        v28 = v3;
        v29 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v30 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        v31 = sub_1000B4D94(v29, v30);

        sub_1000CBB98(a3, v9, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v32 = sub_1004A4A54();
        v33 = sub_1004A6034();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 68158208;
          *(v34 + 4) = 2;
          *(v34 + 8) = 256;
          v35 = v9[*(v27 + 20)];
          sub_1000CBC00(v9, type metadata accessor for State.Logger);
          *(v34 + 10) = v35;
          *(v34 + 11) = 2048;
          *(v34 + 13) = v31[2];

          _os_log_impl(&_mh_execute_header, v32, v33, "[%.*hhx] Updating mailbox priorities (%ld).", v34, 0x15u);
        }

        else
        {
          sub_1000CBC00(v9, type metadata accessor for State.Logger);
        }

        *(v28 + 40) = v31;
        return;
      case 6uLL:
        v42 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        __chkstk_darwin(v11);
        *(&v44 - 2) = a3;

        sub_1000B7288(v43, v42, sub_1000CB9C4);

        return;
      case 8uLL:
      case 0xCuLL:
      case 0x10uLL:
        v21 = ((a1 & 0xFFFFFFFFFFFFFFBLL) + 16);
        v22 = ((a1 & 0xFFFFFFFFFFFFFFBLL) + 24);
        goto LABEL_7;
      case 9uLL:
      case 0xAuLL:
      case 0x11uLL:
        v21 = swift_projectBox();
        v22 = v21 + 1;
LABEL_7:
        v23 = *v21;
        v24 = *v22;

        __chkstk_darwin(v25);
        *(&v44 - 2) = a1;
        v17 = *v3;
        v19 = (v3 + 8);
        v18 = *(v3 + 8);
        v20 = *(v3 + 16);
        if ((*(v3 + 24) & 1) == 0)
        {
          goto LABEL_10;
        }

        v45 = *v3;
        sub_100020D10(v17, v18, v20, 1);
        sub_1000BD660(&v45, v23, v24, 1, sub_1000CBCCC);
        goto LABEL_9;
      case 0xDuLL:
      case 0xEuLL:
      case 0x12uLL:
        v14 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v15 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        __chkstk_darwin(v16);
        *(&v44 - 2) = a1;
        v17 = *v3;
        v19 = (v3 + 8);
        v18 = *(v3 + 8);
        v20 = *(v3 + 16);
        if (*(v3 + 24))
        {
          v45 = *v3;
          sub_100020D10(v17, v18, v20, 1);
          sub_1000BDFC4(&v45, v14, v15, 1, sub_1000CB9CC);
LABEL_9:

          sub_100020D58(v17, v18, v20, 1);
          *v3 = v45;
          *v19 = 0;
          v19[1] = 0;
          *(v3 + 24) = 1;
        }

        else
        {
LABEL_10:
          sub_100020D10(v17, v18, v20, 0);
        }

        break;
      case 0x14uLL:
        v36 = v11;
        v37 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1000CBB98(a3, &v44 - v12, type metadata accessor for State.Logger);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v38 = sub_1004A4A54();
        v39 = sub_1004A5FF4();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 68158208;
          *(v40 + 4) = 2;
          *(v40 + 8) = 256;
          v41 = v13[*(v36 + 20)];
          sub_1000CBC00(v13, type metadata accessor for State.Logger);
          *(v40 + 10) = v41;
          *(v40 + 11) = 2048;
          *(v40 + 13) = *(v37 + 16);

          _os_log_impl(&_mh_execute_header, v38, v39, "[%.*hhx] Setting %ld download requests.", v40, 0x15u);
        }

        else
        {
          sub_1000CBC00(v13, type metadata accessor for State.Logger);
        }

        sub_1000B9C38(v37, a3);

        return;
      default:
        return;
    }
  }
}

void sub_1000C09E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v4);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v47[-v8];
  __chkstk_darwin(v10);
  v12 = &v47[-v11];
  v13 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v13);
  v15 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 96))
  {
    v49 = v4;
    v50 = a2;
    v16 = *(a1 + 16);
    v48 = *(a1 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a1 + 96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      sub_1000CBB98(v18 + v19, v15, _s13SelectedStateV7WrappedVMa);
      _s13SelectedStateV8_StorageCMa(0);
      v20 = swift_allocObject();
      sub_1000CBC60(v15, v20 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

      *(a1 + 96) = v20;
    }

    swift_beginAccess();
    type metadata accessor for MailboxSyncState(0);
    v21 = sub_1000E6078();
    if (v21 > 1)
    {
      if (v21 != 2)
      {

        return;
      }

      if (*(a1 + 96))
      {
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v32 = *(a1 + 96);
        if ((v31 & 1) == 0)
        {
          v33 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          sub_1000CBB98(v32 + v33, v15, _s13SelectedStateV7WrappedVMa);
          _s13SelectedStateV8_StorageCMa(0);
          v34 = swift_allocObject();
          sub_1000CBC60(v15, v34 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

          *(a1 + 96) = v34;
        }

        swift_beginAccess();
        sub_10013FC9C(0xCu);
        sub_100088568(&v51, 12);
        swift_endAccess();
      }

      sub_1000CBB98(v50, v12, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v22 = sub_1004A4A54();
      v35 = sub_1004A6034();

      if (os_log_type_enabled(v22, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v51 = v37;
        *v36 = 68158467;
        *(v36 + 4) = 2;
        *(v36 + 8) = 256;
        v38 = v12[*(v49 + 20)];
        sub_1000CBC00(v12, type metadata accessor for State.Logger);
        *(v36 + 10) = v38;
        *(v36 + 11) = 2160;
        *(v36 + 13) = 0x786F626C69616DLL;
        *(v36 + 21) = 2085;
        v52 = v16;
        v53 = v48;
        v39 = sub_1004A5824();
        v41 = sub_10015BA6C(v39, v40, &v51);

        *(v36 + 23) = v41;
        _os_log_impl(&_mh_execute_header, v22, v35, "[%.*hhx] [%{sensitive,mask.mailbox}s] Did mark should temporarily grow window of interest.", v36, 0x1Fu);
        sub_1000197E0(v37);

LABEL_18:

LABEL_24:

        return;
      }

      v46 = v12;
    }

    else if (v21)
    {
      sub_1000CBB98(v50, v6, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v22 = sub_1004A4A54();
      v23 = sub_1004A6034();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v52 = v25;
        *v24 = 68158467;
        *(v24 + 4) = 2;
        *(v24 + 8) = 256;
        v42 = v6[*(v49 + 20)];
        sub_1000CBC00(v6, type metadata accessor for State.Logger);
        *(v24 + 10) = v42;
        *(v24 + 11) = 2160;
        *(v24 + 13) = 0x786F626C69616DLL;
        *(v24 + 21) = 2085;
        v54 = v16;
        v55 = v48;
        v43 = sub_1004A5824();
        v45 = sub_10015BA6C(v43, v44, &v52);

        *(v24 + 23) = v45;
        v30 = "[%.*hhx] [%{sensitive,mask.mailbox}s] Did mark should temporarily grow window of interest. Fetching missing messages, first.";
        goto LABEL_17;
      }

      v46 = v6;
    }

    else
    {
      sub_1000CBB98(v50, v9, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v22 = sub_1004A4A54();
      v23 = sub_1004A6034();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v52 = v25;
        *v24 = 68158467;
        *(v24 + 4) = 2;
        *(v24 + 8) = 256;
        v26 = v9[*(v49 + 20)];
        sub_1000CBC00(v9, type metadata accessor for State.Logger);
        *(v24 + 10) = v26;
        *(v24 + 11) = 2160;
        *(v24 + 13) = 0x786F626C69616DLL;
        *(v24 + 21) = 2085;
        v54 = v16;
        v55 = v48;
        v27 = sub_1004A5824();
        v29 = sub_10015BA6C(v27, v28, &v52);

        *(v24 + 23) = v29;
        v30 = "[%.*hhx] [%{sensitive,mask.mailbox}s] Did mark should temporarily grow window of interest. Waiting for FindMissingMessages.";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v22, v23, v30, v24, 0x1Fu);
        sub_1000197E0(v25);

        goto LABEL_18;
      }

      v46 = v9;
    }

    sub_1000CBC00(v46, type metadata accessor for State.Logger);

    goto LABEL_24;
  }
}

_BYTE *sub_1000C1180(_BYTE *result, unint64_t a2)
{
  v2 = (a2 >> 59) & 0x1E | (a2 >> 2) & 1;
  if (v2 >= 0xE)
  {
    if (v2 <= 0x16)
    {
      if (((1 << v2) & 0x7A8000) != 0)
      {
        return result;
      }

      v3 = result + 2;
      if (v2 != 18)
      {
        v3 = result;
      }

      if (v2 == 16)
      {
        ++result;
      }

      else
      {
        result = v3;
      }
    }

    *result = 1;
  }

  return result;
}

void sub_1000C11D8(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 24) == 1)
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    v7 = *(*v2 + 16);

    if (!v7)
    {
      v10 = v4;
      goto LABEL_20;
    }

    v8 = 0;
    v9 = v4 + 32;
    v28 = v6;
    v10 = v4;
    while (1)
    {
      v11 = 176 * v8;
      v12 = v8;
      while (1)
      {
        if (v12 >= *(v4 + 16))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        v13 = *(v9 + v11);
        v14 = *(v9 + v11 + 32);
        v30[1] = *(v9 + v11 + 16);
        v30[2] = v14;
        v30[0] = v13;
        v15 = *(v9 + v11 + 48);
        v16 = *(v9 + v11 + 64);
        v17 = *(v9 + v11 + 96);
        v30[5] = *(v9 + v11 + 80);
        v30[6] = v17;
        v30[3] = v15;
        v30[4] = v16;
        v18 = *(v9 + v11 + 112);
        v19 = *(v9 + v11 + 128);
        v20 = *(v9 + v11 + 160);
        v30[9] = *(v9 + v11 + 144);
        v30[10] = v20;
        v30[7] = v18;
        v30[8] = v19;
        memmove(__dst, (v9 + v11), 0xB0uLL);
        if (*(a1 + 16))
        {
          v21 = sub_100063B5C(v32, v33);
          if (v22)
          {
            break;
          }
        }

        sub_10000E08C(v30, v29);
        sub_10000E0E8(__dst);
        ++v12;
        v11 += 176;
        if (v7 == v12)
        {
          v6 = v28;
          goto LABEL_20;
        }
      }

      v23 = *(a1 + 56) + 48 * v21;
      v26 = *(v23 + 16);
      v27 = v5;
      v24 = *(v23 + 24);
      sub_10000E08C(v30, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100139804(v10);
      }

      sub_10000E0E8(__dst);
      if (v12 >= *(v10 + 2))
      {
        goto LABEL_23;
      }

      if ((v24 & 1) == 0)
      {
        v25 = &v10[v11];
        if (v10[v11 + 200] != 1 || *(v25 + 24) != v26)
        {
          *(v25 + 24) = v26;
          v25[200] = 0;
        }
      }

      v8 = v12 + 1;
      v5 = v27;
      v6 = v28;
      if (v7 - 1 == v12)
      {
LABEL_20:
        sub_100020D58(v4, v5, v6, 1);
        *v2 = v10;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 1;
        return;
      }
    }
  }
}

void sub_1000C13D4(uint64_t a1, uint64_t a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(a2 + 88) & 1) == 0 && *(a1 + 96))
  {
    v8 = v5;
    v9 = *(a2 + 80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      sub_1000CBB98(v11 + v12, v7, _s13SelectedStateV7WrappedVMa);
      _s13SelectedStateV8_StorageCMa(0);
      v13 = swift_allocObject();
      sub_1000CBC60(v7, v13 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

      *(a1 + 96) = v13;
      v11 = v13;
    }

    v14 = v11 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v15 = v14 + *(v8 + 20);
    v16 = *(v15 + 32);
    if (v16 <= 1)
    {
      *(v15 + 24) = v9;
      *(v15 + 32) = v16;
    }
  }

  if ((*(a2 + 56) & 1) == 0)
  {
    v17 = *(a2 + 48);
    if (*(a1 + 168) != 1 || *(a1 + 160) != v17)
    {
      *(a1 + 160) = v17;
      *(a1 + 168) = 0;
    }
  }
}

void sub_1000C1574()
{
  if (v0[24])
  {
    v1 = 0;
    v2 = *(*v0 + 16);
    v3 = *v0 - 144;
    v4 = _swiftEmptyArrayStorage;
LABEL_3:
    v5 = v3 + 176 * v1;
    while (v2 != v1)
    {
      if (v1 >= v2)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      v6 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_15;
      }

      v7 = *(v5 + 344);
      ++v1;
      v5 += 176;
      if (!v7)
      {
        v8 = *v5;
        v9 = *(v5 + 8);
        v10 = *(v5 + 160);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_100086C58(0, *(v4 + 2) + 1, 1, v4);
        }

        v12 = *(v4 + 2);
        v11 = *(v4 + 3);
        if (v12 >= v11 >> 1)
        {
          v4 = sub_100086C58((v11 > 1), v12 + 1, 1, v4);
        }

        *(v4 + 2) = v12 + 1;
        v13 = &v4[24 * v12];
        *(v13 + 4) = v8;
        *(v13 + 5) = v9;
        *(v13 + 6) = v10;
        v1 = v6;
        goto LABEL_3;
      }
    }
  }
}

void sub_1000C169C(uint64_t a1, uint64_t a2)
{
  v43 = sub_1004A4904();
  v4 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1004A4944();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *tracingLog.unsafeMutableAddressor();
  v10 = sub_1004A6354();

  if (v10)
  {
    v42 = v4;
    v12 = sub_1000C19F8(a2, v11);
    v13 = v12;
    v44 = v14;
    v15 = *(v12 + 16);
    v16 = v46;
    if (v15)
    {
      v17 = 0;
      v18 = (v12 + 32);
      while (v17 < *(v13 + 16))
      {
        v19 = *v18;
        v20 = v18[2];
        v48[1] = v18[1];
        v48[2] = v20;
        v48[0] = v19;
        v21 = v18[3];
        v22 = v18[4];
        v23 = v18[6];
        v48[5] = v18[5];
        v48[6] = v23;
        v48[3] = v21;
        v48[4] = v22;
        v24 = v18[7];
        v25 = v18[8];
        v26 = v18[10];
        v48[9] = v18[9];
        v48[10] = v26;
        v48[7] = v24;
        v48[8] = v25;
        ++v17;
        sub_10000E08C(v48, &v47);
        sub_10009CF2C(a1);
        sub_10000E0E8(v48);
        v18 += 11;
        if (v15 == v17)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      v38[1] = v13;
      v27 = *(v44 + 16);
      if (v27)
      {
        v28 = tracingSignposter.unsafeMutableAddressor();
        v40 = a1 << 59;
        v41 = v28;
        v29 = v6 + 16;
        v39 = *(v6 + 16);
        v30 = (v42 + 8);
        v42 = v29;
        v31 = (v29 - 8);
        v32 = 32;
        v39(v8, v28, v45);
        while (1)
        {
          sub_1004A4914();
          v34 = sub_1004A4934();
          v35 = sub_1004A6154();
          if (sub_1004A6354())
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            v37 = sub_1004A48F4();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, v35, v37, "LocalMailboxRemoved", "", v36, 2u);
            v16 = v46;
          }

          (*v30)(v16, v43);
          v33 = v45;
          (*v31)(v8, v45);
          v32 += 4;
          if (!--v27)
          {
            break;
          }

          v39(v8, v41, v33);
        }
      }
    }
  }
}

uint64_t sub_1000C19F8(uint64_t a1, __n128 a2)
{
  v3 = _swiftEmptyArrayStorage;
  v15[0] = _swiftEmptyArrayStorage;
  v15[1] = _swiftEmptyArrayStorage;
  if (*(a1 + 24) == 1)
  {
    v3 = *a1;
  }

  if (*(v2 + 24) == 1)
  {
    v4 = *v2;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v14[2] = v15;
  __chkstk_darwin(v6);
  v13[2] = v7;
  __chkstk_darwin(v8);
  v12[2] = v9;
  v10 = sub_10009DE28();
  Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(v3, KeyPath, sub_1000CA150, v14, sub_1000CA158, v13, sub_1000CA160, v12, v4, v10);

  return v15[0];
}

__n128 sub_1000C1B80(__n128 *a1, char **a2)
{
  v3 = a1[9];
  v30 = a1[8];
  v31 = v3;
  v32 = a1[10];
  v4 = a1[5];
  v26 = a1[4];
  v27 = v4;
  v5 = a1[7];
  v28 = a1[6];
  v29 = v5;
  v6 = a1[1];
  v22 = *a1;
  v23 = v6;
  v7 = a1[3];
  v24 = a1[2];
  v25 = v7;
  v8 = *a2;
  sub_10000E08C(&v22, &v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1000853A8(0, *(v8 + 2) + 1, 1, v8);
    *a2 = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1000853A8((v10 > 1), v11 + 1, 1, v8);
    *a2 = v8;
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[176 * v11];
  v13 = v22;
  v14 = v24;
  *(v12 + 3) = v23;
  *(v12 + 4) = v14;
  *(v12 + 2) = v13;
  v15 = v25;
  v16 = v26;
  v17 = v28;
  *(v12 + 7) = v27;
  *(v12 + 8) = v17;
  *(v12 + 5) = v15;
  *(v12 + 6) = v16;
  result = v29;
  v19 = v30;
  v20 = v32;
  *(v12 + 11) = v31;
  *(v12 + 12) = v20;
  *(v12 + 9) = result;
  *(v12 + 10) = v19;
  return result;
}

uint64_t sub_1000C1C9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 172);
  v4 = *(a2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v4;
  if ((result & 1) == 0)
  {
    result = sub_100086D78(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *(a2 + 8) = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_100086D78((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
    *(a2 + 8) = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 4 * v7 + 32) = v3;
  return result;
}

__n128 sub_1000C1D48(_OWORD *a1, __n128 *a2, char **a3)
{
  v4 = a1[9];
  v28[8] = a1[8];
  v28[9] = v4;
  v28[10] = a1[10];
  v5 = a1[5];
  v28[4] = a1[4];
  v28[5] = v5;
  v6 = a1[7];
  v28[6] = a1[6];
  v28[7] = v6;
  v7 = a1[1];
  v28[0] = *a1;
  v28[1] = v7;
  v8 = a1[3];
  v28[2] = a1[2];
  v28[3] = v8;
  v9 = a2[9];
  v37 = a2[8];
  v38 = v9;
  v39 = a2[10];
  v10 = a2[5];
  v33 = a2[4];
  v34 = v10;
  v11 = a2[7];
  v35 = a2[6];
  v36 = v11;
  v12 = a2[1];
  v29 = *a2;
  v30 = v12;
  v13 = a2[3];
  v31 = a2[2];
  v32 = v13;
  if (!sub_10009D400(v28, &v29))
  {
    v15 = *a3;
    sub_10000E08C(&v29, &v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1000853A8(0, *(v15 + 2) + 1, 1, v15);
      *a3 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1000853A8((v17 > 1), v18 + 1, 1, v15);
      *a3 = v15;
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[176 * v18];
    v20 = v29;
    v21 = v31;
    *(v19 + 3) = v30;
    *(v19 + 4) = v21;
    *(v19 + 2) = v20;
    v22 = v32;
    v23 = v33;
    v24 = v35;
    *(v19 + 7) = v34;
    *(v19 + 8) = v24;
    *(v19 + 5) = v22;
    *(v19 + 6) = v23;
    result = v36;
    v25 = v37;
    v26 = v39;
    *(v19 + 11) = v38;
    *(v19 + 12) = v26;
    *(v19 + 9) = result;
    *(v19 + 10) = v25;
  }

  return result;
}

void sub_1000C1EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v6);
  v117 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v124 = &v111 - v9;
  __chkstk_darwin(v10);
  v12 = &v111 - v11;
  sub_1000CBB98(a3, &v111 - v11, type metadata accessor for State.Logger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v121 = a3;
  v13 = sub_1004A4A54();
  v14 = sub_1004A6014();
  v15 = os_log_type_enabled(v13, v14);
  v116 = v6;
  if (v15)
  {
    v16 = swift_slowAlloc();
    *v16 = 68158208;
    *(v16 + 4) = 2;
    *(v16 + 8) = 256;
    v17 = v12[*(v6 + 20)];
    sub_1000CBC00(v12, type metadata accessor for State.Logger);
    *(v16 + 10) = v17;
    *(v16 + 11) = 2048;
    *(v16 + 13) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v13, v14, "[%.*hhx] Persistence passed list of %ld mailboxes with duplicate names/IDs.", v16, 0x15u);
  }

  else
  {
    sub_1000CBC00(v12, type metadata accessor for State.Logger);
  }

  v122 = *(a2 + 16);
  if (!v122)
  {
    return;
  }

  v19 = 0;
  v20 = *(a1 + 16);
  v123 = a2 + 32;
  v21 = a1 + 32;
  *&v18 = 68159491;
  v112 = v18;
  *&v18 = 68159235;
  v111 = v18;
  while (1)
  {
    v125 = v19;
    v22 = (v123 + 96 * v19);
    v23 = v22[3];
    v136 = v22[2];
    v137 = v23;
    v138[0] = v22[4];
    *(v138 + 9) = *(v22 + 73);
    v24 = v22[1];
    v134 = *v22;
    v135 = v24;
    v25 = v134;
    sub_100099FE4(&v134, &v128);

    if (v20)
    {
      break;
    }

    v28 = _swiftEmptyArrayStorage;
LABEL_31:
    v45 = v28[2];
    if (v45 <= 1)
    {
    }

    else
    {
      v46 = v28[6];
      LODWORD(v119) = *(v28 + 14);
      v47 = &v28[12 * v45];
      v48 = *(v47 - 6);
      LODWORD(v120) = *(v47 - 10);
      sub_1000CBB98(v121, v124, type metadata accessor for State.Logger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v49 = sub_1004A4A54();
      v50 = sub_1004A6014();

      v126 = v46;

      LODWORD(v118) = v50;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v113 = v48;
        v52 = v51;
        v53 = swift_slowAlloc();
        v114 = v49;
        v115 = v53;
        v127[0] = v53;
        *v52 = v112;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v54 = *(v124 + *(v116 + 20));
        sub_1000CBC00(v124, type metadata accessor for State.Logger);
        *(v52 + 10) = v54;
        *(v52 + 11) = 2048;
        v55 = v28[2];

        *(v52 + 13) = v55;

        *(v52 + 21) = 2080;
        v56 = OpaqueMailboxID.description.getter(v25);
        v58 = v57;

        v59 = sub_10015BA6C(v56, v58, v127);

        *(v52 + 23) = v59;
        *(v52 + 31) = 2160;
        *(v52 + 33) = 0x786F626C69616DLL;
        *(v52 + 41) = 2085;
        *&v128 = v126;
        DWORD2(v128) = v119;
        v60 = sub_1004A5824();
        v62 = sub_10015BA6C(v60, v61, v127);

        *(v52 + 43) = v62;
        *(v52 + 51) = 2160;
        *(v52 + 53) = 0x786F626C69616DLL;
        *(v52 + 61) = 2085;
        *&v128 = v113;
        DWORD2(v128) = v120;
        v63 = sub_1004A5824();
        v65 = sub_10015BA6C(v63, v64, v127);

        *(v52 + 63) = v65;
        v66 = v114;
        _os_log_impl(&_mh_execute_header, v114, v118, "[%.*hhx] Persistence passed %ld copies of mailbox with ID %s %{sensitive,mask.mailbox}s - %{sensitive,mask.mailbox}s.", v52, 0x47u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000CBC00(v124, type metadata accessor for State.Logger);
      }

      v67 = v135;
      v120 = DWORD2(v135);
      if (v20)
      {
        v68 = 0;
        v69 = v135 + 32;
        v70 = _swiftEmptyArrayStorage;
        v71 = DWORD2(v135) | (DWORD2(v135) << 32);
        v126 = v135 + 32;
        while (v68 < v20)
        {
          v72 = (v21 + 96 * v68);
          v73 = v72[3];
          v130 = v72[2];
          v131 = v73;
          v132[0] = v72[4];
          *(v132 + 9) = *(v72 + 73);
          v74 = v72[1];
          v128 = *v72;
          v129 = v74;
          v32 = __OFADD__(v68++, 1);
          if (v32)
          {
            goto LABEL_68;
          }

          if ((DWORD2(v129) | (DWORD2(v129) << 32)) == v71 && (v75 = *(v129 + 16), v75 == *(v67 + 16)))
          {
            if (v75)
            {
              v76 = v129 == v67;
            }

            else
            {
              v76 = 1;
            }

            if (!v76)
            {
              v77 = (v129 + 32);
              v78 = v69;
              while (v75)
              {
                if (*v77 != *v78)
                {
                  goto LABEL_37;
                }

                ++v77;
                ++v78;
                if (!--v75)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_64;
            }

LABEL_50:
            sub_100099FE4(&v128, v127);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v133 = v70;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100092088(0, v70[2] + 1, 1);
              v70 = v133;
            }

            v81 = v70[2];
            v80 = v70[3];
            if (v81 >= v80 >> 1)
            {
              sub_100092088((v80 > 1), v81 + 1, 1);
              v70 = v133;
            }

            v70[2] = v81 + 1;
            v82 = &v70[12 * v81];
            v83 = v129;
            v82[2] = v128;
            v82[3] = v83;
            v84 = v130;
            v85 = v131;
            v86 = v132[0];
            *(v82 + 105) = *(v132 + 9);
            v82[5] = v85;
            v82[6] = v86;
            v82[4] = v84;
            v69 = v126;
            if (v68 == v20)
            {
              goto LABEL_57;
            }
          }

          else
          {
LABEL_37:
            if (v68 == v20)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_67;
      }

      v70 = _swiftEmptyArrayStorage;
LABEL_57:
      v87 = v70[2];
      if (v87 > 1)
      {
        v88 = v70[4];
        v89 = &v70[12 * v87 + 4];
        v91 = *(v89 - 96);
        v90 = *(v89 - 88);
        v118 = v70[5];
        v119 = v90;
        sub_1000CBB98(v121, v117, type metadata accessor for State.Logger);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        sub_100099FE4(&v134, &v128);

        v92 = sub_1004A4A54();
        v93 = sub_1004A6014();
        sub_10009A040(&v134);

        v126 = v88;

        LODWORD(v115) = v93;
        v94 = v93;
        v95 = v92;
        if (os_log_type_enabled(v92, v94))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v113 = v91;
          v114 = v97;
          v127[0] = v97;
          *v96 = v111;
          *(v96 + 4) = 2;
          *(v96 + 8) = 256;
          v98 = *(v117 + *(v116 + 20));
          sub_1000CBC00(v117, type metadata accessor for State.Logger);
          *(v96 + 10) = v98;
          *(v96 + 11) = 2048;
          v99 = v70[2];

          *(v96 + 13) = v99;

          *(v96 + 21) = 2160;
          *(v96 + 23) = 0x786F626C69616DLL;
          *(v96 + 31) = 2085;

          sub_10009A040(&v134);
          *&v128 = v67;
          DWORD2(v128) = v120;
          v100 = sub_1004A5824();
          v102 = sub_10015BA6C(v100, v101, v127);

          *(v96 + 33) = v102;
          *(v96 + 41) = 2080;
          v103 = OpaqueMailboxID.description.getter(v126);
          v105 = v104;

          v106 = sub_10015BA6C(v103, v105, v127);

          *(v96 + 43) = v106;
          *(v96 + 51) = 2080;
          v107 = OpaqueMailboxID.description.getter(v113);
          v109 = v108;

          v110 = sub_10015BA6C(v107, v109, v127);

          *(v96 + 53) = v110;
          _os_log_impl(&_mh_execute_header, v95, v115, "[%.*hhx] Persistence passed %ld copies of mailbox with name %{sensitive,mask.mailbox}s %s - %s.", v96, 0x3Du);
          swift_arrayDestroy();
        }

        else
        {

          sub_1000CBC00(v117, type metadata accessor for State.Logger);

          sub_10009A040(&v134);
        }

        goto LABEL_8;
      }
    }

    sub_10009A040(&v134);
LABEL_8:
    v19 = v125 + 1;
    if (v125 + 1 == v122)
    {
      return;
    }
  }

  v26 = 0;
  v27 = v25 + 32;
  v28 = _swiftEmptyArrayStorage;
  v126 = v25 + 32;
  while (v26 < v20)
  {
    v29 = (v21 + 96 * v26);
    v30 = v29[3];
    v130 = v29[2];
    v131 = v30;
    v132[0] = v29[4];
    *(v132 + 9) = *(v29 + 73);
    v31 = v29[1];
    v128 = *v29;
    v129 = v31;
    v32 = __OFADD__(v26++, 1);
    if (v32)
    {
      goto LABEL_66;
    }

    if (*(&v128 + 1) == *(&v25 + 1) && (v33 = *(v128 + 16), v33 == *(v25 + 16)))
    {
      if (v33)
      {
        v34 = v128 == v25;
      }

      else
      {
        v34 = 1;
      }

      if (!v34)
      {
        v35 = (v128 + 32);
        v36 = v27;
        while (v33)
        {
          if (*v35 != *v36)
          {
            goto LABEL_11;
          }

          ++v35;
          ++v36;
          if (!--v33)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_64:
        __break(1u);
        break;
      }

LABEL_24:
      sub_100099FE4(&v128, v127);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v28;
      if ((v37 & 1) == 0)
      {
        sub_100092088(0, v28[2] + 1, 1);
        v28 = v133;
      }

      v39 = v28[2];
      v38 = v28[3];
      if (v39 >= v38 >> 1)
      {
        sub_100092088((v38 > 1), v39 + 1, 1);
        v28 = v133;
      }

      v28[2] = v39 + 1;
      v40 = &v28[12 * v39];
      v41 = v129;
      v40[2] = v128;
      v40[3] = v41;
      v42 = v130;
      v43 = v131;
      v44 = v132[0];
      *(v40 + 105) = *(v132 + 9);
      v40[5] = v43;
      v40[6] = v44;
      v40[4] = v42;
      v27 = v126;
      if (v26 == v20)
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_11:
      if (v26 == v20)
      {
        goto LABEL_31;
      }
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_1000C2A74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF6D8, &qword_1004D2B50);
  v37 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v38 = *(v26 + 8);
      if ((v37 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EB4(v25);
      result = sub_1004A6F14();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C2D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF770, &qword_1004D2C90);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EB4(v23);
      result = sub_1004A6F14();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C2FD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF698, qword_1004D2890);
  v37 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v5 + 56) + 72 * v21;
      if (v37)
      {
        v44 = *(v25 + 16);
        v45 = *(v25 + 32);
        v46 = *(v25 + 48);
        v47 = *(v25 + 64);
        v43 = *v25;
      }

      else
      {
        v38 = *v25;
        v27 = *(v25 + 32);
        v26 = *(v25 + 48);
        v28 = *(v25 + 16);
        v42 = *(v25 + 64);
        v40 = v27;
        v41 = v26;
        v39 = v28;

        sub_100063BD4(&v38, &v43);
        v45 = v40;
        v46 = v41;
        v47 = v42;
        v43 = v38;
        v44 = v39;
      }

      sub_1004A6E94();
      sub_1004A6EB4(v24 | (v24 << 32));
      result = sub_1004A6F14();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      v17 = *(v7 + 56) + 72 * v15;
      *(v17 + 16) = v44;
      *(v17 + 32) = v45;
      *(v17 + 48) = v46;
      *(v17 + 64) = v47;
      *v17 = v43;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C3328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF6C8, &qword_1004D2B40);
  v36 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *v25;
      v39 = *(v25 + 4);
      v38 = *(v25 + 8);
      v37 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EB4(v24);
      result = sub_1004A6F14();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v26;
      *(v17 + 4) = v39;
      *(v17 + 8) = v38;
      *(v17 + 16) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C3618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF768, &qword_1004D2C88);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EB4(v23);
      result = sub_1004A6F14();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C38BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF738, &qword_1004D2BA0);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v36 = *(v22 + 16);
      v35 = *(v22 + 24);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EE4(v21);
      result = sub_1004A6F14();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v36;
      *(v16 + 24) = v35;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C3B80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v8 << 6);
      if (v4)
      {
LABEL_10:
        v19 = *(*(v5 + 48) + 4 * v18);
        v20 = *(v5 + 56) + 184 * v18;
        v61 = *(v20 + 128);
        v62 = *(v20 + 144);
        v63 = *(v20 + 160);
        v64 = *(v20 + 176);
        v57 = *(v20 + 64);
        v58 = *(v20 + 80);
        v59 = *(v20 + 96);
        v60 = *(v20 + 112);
        v53 = *v20;
        v54 = *(v20 + 16);
        v55 = *(v20 + 32);
        v56 = *(v20 + 48);
      }

      else
      {
LABEL_16:
        v19 = *(*(v5 + 48) + 4 * v18);
        v23 = *(v5 + 56) + 184 * v18;
        v25 = *(v23 + 32);
        v24 = *(v23 + 48);
        v26 = *v23;
        v42 = *(v23 + 16);
        v43 = v25;
        v41 = v26;
        v27 = *(v23 + 112);
        v29 = *(v23 + 64);
        v28 = *(v23 + 80);
        v47 = *(v23 + 96);
        v48 = v27;
        v45 = v29;
        v46 = v28;
        v31 = *(v23 + 144);
        v30 = *(v23 + 160);
        v32 = *(v23 + 128);
        v52 = *(v23 + 176);
        v50 = v31;
        v51 = v30;
        v49 = v32;
        v44 = v24;
        sub_10003E6D4(&v41, &v53);
        v61 = v49;
        v62 = v50;
        v63 = v51;
        v64 = v52;
        v57 = v45;
        v58 = v46;
        v59 = v47;
        v60 = v48;
        v53 = v41;
        v54 = v42;
        v55 = v43;
        v56 = v44;
      }

      sub_1004A6E94();
      sub_1004A6EE4(v19);
      result = sub_1004A6F14();
      v33 = -1 << *(v7 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v19;
      v16 = *(v7 + 56) + 184 * v15;
      *(v16 + 128) = v61;
      *(v16 + 144) = v62;
      *(v16 + 160) = v63;
      *(v16 + 176) = v64;
      *(v16 + 64) = v57;
      *(v16 + 80) = v58;
      *(v16 + 96) = v59;
      *(v16 + 112) = v60;
      *v16 = v53;
      *(v16 + 16) = v54;
      *(v16 + 32) = v55;
      *(v16 + 48) = v56;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v12 = (v22 - 1) & v22;
        v18 = __clz(__rbit64(v22)) | (v8 << 6);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C3F58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF790, &qword_1004D2CB0);
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + 12 * v20;
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8);
      v24 = *v21;
      result = sub_1004A6E84();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = *(v7 + 56) + 12 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v33)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000C41D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CDFA0, &qword_1004CFFE0);
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + 16 * v20;
      v22 = *(*(v5 + 48) + 4 * v20);
      v35 = *(v21 + 9);
      v23 = *(v21 + 8);
      v24 = *v21;
      sub_1004A6E94();
      sub_1004A6EE4(v22);
      result = sub_1004A6F14();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v22;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      *(v16 + 9) = v35;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C447C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF3F8, &qword_1004D26D0);
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v35 = *(v22 + 16);
      v36 = *(v22 + 17);
      v23 = *(v22 + 8);
      v24 = *v22;
      sub_1004A6E94();
      sub_1004A6EE4(v21);
      result = sub_1004A6F14();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      *(v16 + 16) = v35;
      *(v16 + 17) = v36;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C4730(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF798, &unk_1004F76A0);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 16 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v35 = *(v23 + 17);
      v36 = *(v23 + 16);
      v37 = v22;
      if ((v34 & 1) == 0)
      {
        sub_100014CEC(v22, *(&v22 + 1));
      }

      sub_1004A6E94();
      sub_1004A4424();
      result = sub_1004A6F14();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v16 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v16 = v37;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v36;
      *(v17 + 17) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000C4A0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF748, &qword_1004D2BB0);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 2 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EB4(v23);
      result = sub_1004A6F14();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 2 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C4CA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000C9C0(a3, a4);
  v34 = v6;
  result = sub_1004A6A64();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 48) + 16 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v35 = *(*(v7 + 56) + v22);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EB4(v25 | (v25 << 32));
      result = sub_1004A6F14();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 16 * v17;
      *v18 = v24;
      *(v18 + 8) = v25;
      *(*(v9 + 56) + v17) = v35;
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v4;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1000C4F48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF6D0, &qword_1004D2B48);
  v37 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v40 = v22[1];
      v24 = *(v5 + 56) + 32 * v21;
      v25 = *v24;
      v26 = *(v24 + 16);
      v38 = *(v24 + 24);
      v39 = *(v24 + 8);
      if ((v37 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EB4(v40);
      result = sub_1004A6F14();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v40;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v25;
      *(v17 + 8) = v39;
      *(v17 + 16) = v26;
      *(v17 + 24) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C522C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF6F8, &qword_1004D2B70);
  v44 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v42 = v2;
    v43 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      if (v44)
      {
        v55 = *v22;
        v23 = *(v22 + 8);
        v24 = *(v5 + 56) + 96 * v21;
        v46 = *(v24 + 8);
        v47 = *(v24 + 24);
        v48 = *(v24 + 32);
        v54 = *(v24 + 36);
        v51 = *(v24 + 16);
        v52 = *(v24 + 40);
        v25 = *(v24 + 48);
        v49 = *v24;
        v50 = *(v24 + 56);
        v26 = *(v24 + 64);
        v53 = *(v24 + 72);
        v27 = *(v24 + 80);
        v45 = *(v24 + 88);
      }

      else
      {
        v28 = *v22;
        v23 = *(v22 + 8);
        v29 = (*(v5 + 56) + 96 * v21);
        v31 = v29[2];
        v30 = v29[3];
        v32 = v29[4];
        *&v60[9] = *(v29 + 73);
        v59 = v30;
        *v60 = v32;
        v58 = v31;
        v33 = v29[1];
        v57[0] = *v29;
        v57[1] = v33;
        v45 = v60[24];
        v27 = *&v60[16];
        v54 = BYTE4(v58);
        v52 = *(&v58 + 1);
        v53 = *(&v32 + 1);
        v25 = v30;
        v26 = v32;
        v50 = *(&v30 + 1);
        v51 = v33;
        v47 = DWORD2(v33);
        v48 = v58;
        v46 = *(&v57[0] + 1);
        v49 = *&v57[0];
        v55 = v28;

        sub_100099FE4(v57, v56);
      }

      sub_1004A6E94();
      sub_1004A6EB4(v23 | (v23 << 32));
      result = sub_1004A6F14();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v57[0]) = v54;
      v56[0] = v25;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v55;
      *(v16 + 8) = v23;
      v17 = *(v7 + 56) + 96 * v15;
      *v17 = v49;
      *(v17 + 8) = v46;
      *(v17 + 16) = v51;
      *(v17 + 24) = v47;
      *(v17 + 32) = v48;
      *(v17 + 36) = v54;
      *(v17 + 40) = v52;
      *(v17 + 48) = v25;
      *(v17 + 56) = v50;
      *(v17 + 64) = v26;
      *(v17 + 72) = v53;
      *(v17 + 80) = v27;
      *(v17 + 88) = v45;
      ++*(v7 + 16);
      v5 = v43;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C5638(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF520, &unk_1004D2790);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v35 = *(v22 + 16);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EE4(v21);
      result = sub_1004A6F14();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v35;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1000C58F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v5 - 8);
  v72 = v71 - v6;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v80 = *(v7 - 8);
  __chkstk_darwin(v7);
  v87 = (v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = v71 - v10;
  v12 = *v2;
  sub_10000C9C0(&qword_1005CF7C0, &unk_1004D2CD0);
  v13 = sub_1004A6A64();
  v14 = v13;
  if (!*(v12 + 16))
  {
    goto LABEL_63;
  }

  v71[0] = v2;
  v15 = 0;
  v16 = *(v12 + 64);
  v73 = (v12 + 64);
  v17 = 1 << *(v12 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v79 = v13 + 64;
  v77 = v4;
  v76 = v12;
  v75 = v13;
  v74 = v7;
  v83 = v11;
  v78 = v20;
LABEL_8:
  if (v19)
  {
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    goto LABEL_15;
  }

  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_66;
    }

    if (v15 >= v20)
    {
      break;
    }

    v24 = v73[v15];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v19 = (v24 - 1) & v24;
LABEL_15:
      v25 = v22 | (v15 << 6);
      v26 = *(v80 + 72);
      v27 = *(v12 + 48) + v26 * v25;
      if (v4)
      {
        sub_1000CBC60(v27, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      else
      {
        sub_1000CBB98(v27, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      v85 = *(*(v12 + 56) + v25);
      sub_1004A6E94();
      sub_1000CBB98(v11, v87, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        v81 = v26;
        v82 = v19;
        if (!EnumCaseMultiPayload)
        {
          v29 = v72;
          sub_100025FDC(v87, v72, &unk_1005D91B0, &unk_1004CF400);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          sub_1004A5564();
          LOBYTE(v4) = v77;
          sub_100025F40(v29, &unk_1005D91B0, &unk_1004CF400);
          goto LABEL_47;
        }

        v71[1] = *v87;
        v45 = *(v87 + 2);
        v46 = v87[2];
        sub_1004A6EB4(2uLL);
        sub_1004A6EB4(v45 | (v45 << 32));
        v47 = v46 + 64;
        v48 = 1 << *(v46 + 32);
        if (v48 < 64)
        {
          v49 = ~(-1 << v48);
        }

        else
        {
          v49 = -1;
        }

        v50 = v49 & *(v46 + 64);
        v51 = (v48 + 63) >> 6;
        v84 = v46;

        v52 = 0;
        for (i = 0; v50; v11 = v83)
        {
          v86 = v52;
          v54 = i;
LABEL_42:
          v55 = __clz(__rbit64(v50));
          v50 &= v50 - 1;
          v56 = v55 | (v54 << 6);
          v57 = *(*(v84 + 48) + 4 * v56);
          v58 = (*(v84 + 56) + 24 * v56);
          v59 = *v58;
          v61 = *(v58 + 1);
          v60 = *(v58 + 2);
          sub_100014CEC(v61, v60);
          v90 = v95;
          v91 = v96;
          v92 = v97;
          v88 = v93;
          v89 = v94;
          sub_1004A6EE4(v57);
          sub_1004A6EB4(v59);
          sub_100014CEC(v61, v60);
          sub_1004A4424();
          sub_100014D40(v61, v60);
          sub_100014D40(v61, v60);
          v52 = sub_1004A6F14() ^ v86;
        }

        while (1)
        {
          v54 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v54 >= v51)
          {

            sub_1004A6EB4(v52);

            LOBYTE(v4) = v77;
            v12 = v76;
            v14 = v75;
            goto LABEL_47;
          }

          v50 = *(v47 + 8 * v54);
          ++i;
          if (v50)
          {
            v86 = v52;
            i = v54;
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        return;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v81 = v26;
        v82 = v19;
        v84 = *v87;
        v30 = *(v87 + 2);
        v31 = v87[2];
        sub_1004A6EB4(3uLL);
        sub_1004A6EB4(v30 | (v30 << 32));
        v32 = v31 + 64;
        v33 = 1 << *(v31 + 32);
        if (v33 < 64)
        {
          v34 = ~(-1 << v33);
        }

        else
        {
          v34 = -1;
        }

        v35 = v34 & *(v31 + 64);
        v36 = (v33 + 63) >> 6;
        v86 = v31;

        v37 = 0;
        v38 = 0;
        if (v35)
        {
          while (1)
          {
            v39 = v38;
LABEL_30:
            v40 = __clz(__rbit64(v35)) | (v39 << 6);
            v41 = *(*(v86 + 48) + 4 * v40);
            v42 = (*(v86 + 56) + 16 * v40);
            v44 = *v42;
            v43 = v42[1];
            sub_100014CEC(*v42, v43);
            if (v43 >> 60 == 15)
            {
              break;
            }

            v35 &= v35 - 1;
            v90 = v95;
            v91 = v96;
            v92 = v97;
            v88 = v93;
            v89 = v94;
            sub_1004A6EE4(v41);
            sub_1004A4424();
            sub_100014D40(v44, v43);
            v37 ^= sub_1004A6F14();
            v38 = v39;
            if (!v35)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          while (1)
          {
LABEL_27:
            v39 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_67;
            }

            if (v39 >= v36)
            {
              break;
            }

            v35 = *(v32 + 8 * v39);
            ++v38;
            if (v35)
            {
              goto LABEL_30;
            }
          }
        }

        sub_1004A6EB4(v37);

        LOBYTE(v4) = v77;
        v12 = v76;
        v14 = v75;
        v11 = v83;
LABEL_47:
        v19 = v82;
        v26 = v81;
      }

      else
      {
        sub_1004A6EB4(1uLL);
      }

      v62 = sub_1004A6F14();
      v63 = -1 << *(v14 + 32);
      v64 = v62 & ~v63;
      v65 = v64 >> 6;
      if (((-1 << v64) & ~*(v79 + 8 * (v64 >> 6))) == 0)
      {
        v66 = 0;
        v67 = (63 - v63) >> 6;
        while (++v65 != v67 || (v66 & 1) == 0)
        {
          v68 = v65 == v67;
          if (v65 == v67)
          {
            v65 = 0;
          }

          v66 |= v68;
          v69 = *(v79 + 8 * v65);
          if (v69 != -1)
          {
            v21 = __clz(__rbit64(~v69)) + (v65 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_68;
      }

      v21 = __clz(__rbit64((-1 << v64) & ~*(v79 + 8 * (v64 >> 6)))) | v64 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v79 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1000CBC60(v11, *(v14 + 48) + v26 * v21, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(*(v14 + 56) + v21) = v85;
      ++*(v14 + 16);
      v20 = v78;
      goto LABEL_8;
    }
  }

  if (v4)
  {
    v70 = 1 << *(v12 + 32);
    v3 = v71[0];
    if (v70 >= 64)
    {
      bzero(v73, ((v70 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v73 = -1 << v70;
    }

    *(v12 + 16) = 0;
LABEL_63:
  }

  else
  {

    v3 = v71[0];
  }

  *v3 = v14;
}

void sub_1000C6184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v5 - 8);
  v80 = &v77 - v6;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v7);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v77 - v11;
  v13 = *v2;
  sub_10000C9C0(&qword_1005CF7B0, &qword_1004D2CC0);
  v14 = sub_1004A6A64();
  v15 = v14;
  if (!*(v13 + 16))
  {
    goto LABEL_61;
  }

  v78 = v2;
  v16 = 0;
  v17 = *(v13 + 64);
  v81 = (v13 + 64);
  v18 = 1 << *(v13 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v88 = v4;
  v86 = v13;
  v85 = v14;
  v84 = v7;
  v83 = v9;
  v82 = v12;
  v87 = v21;
  v22 = v7;
  v23 = v4;
  v89 = v14 + 64;
LABEL_8:
  if (v20)
  {
    v26 = v22;
    v27 = __clz(__rbit64(v20));
    v91 = (v20 - 1) & v20;
    goto LABEL_15;
  }

  v28 = v16;
  while (1)
  {
    v16 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_64;
    }

    if (v16 >= v21)
    {
      break;
    }

    v29 = v81[v16];
    ++v28;
    if (v29)
    {
      v26 = v22;
      v27 = __clz(__rbit64(v29));
      v91 = (v29 - 1) & v29;
LABEL_15:
      v30 = v27 | (v16 << 6);
      v31 = *(*(v13 + 48) + 8 * v30);
      v32 = *(*(v13 + 56) + 8 * v30);
      if ((v23 & 1) == 0)
      {
      }

      v92 = v32;
      sub_1004A6E94();
      v33 = *(*v31 + 96);
      swift_beginAccess();
      sub_1000CBB98(v31 + v33, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000CBB98(v12, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v22 = v26;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v94 = v31;
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v35 = v80;
          sub_100025FDC(v9, v80, &unk_1005D91B0, &unk_1004CF400);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          v22 = v26;
          sub_1004A5564();
          v31 = v94;
          sub_100025F40(v35, &unk_1005D91B0, &unk_1004CF400);
          goto LABEL_46;
        }

        v79 = *v9;
        v51 = *(v9 + 2);
        v52 = *(v9 + 2);
        sub_1004A6EB4(2uLL);
        sub_1004A6EB4(v51 | (v51 << 32));
        v53 = v52 + 64;
        v54 = 1 << *(v52 + 32);
        if (v54 < 64)
        {
          v55 = ~(-1 << v54);
        }

        else
        {
          v55 = -1;
        }

        v56 = v55 & *(v52 + 64);
        v57 = (v54 + 63) >> 6;
        v90 = v52;

        v58 = 0;
        for (i = 0; v56; v31 = v94)
        {
          v93 = v58;
          v60 = i;
LABEL_41:
          v61 = __clz(__rbit64(v56));
          v56 &= v56 - 1;
          v62 = v61 | (v60 << 6);
          v63 = *(*(v90 + 48) + 4 * v62);
          v64 = (*(v90 + 56) + 24 * v62);
          v65 = *v64;
          v67 = *(v64 + 1);
          v66 = *(v64 + 2);
          sub_100014CEC(v67, v66);
          v97 = v102;
          v98 = v103;
          v99 = v104;
          v96 = v101;
          v95 = v100;
          sub_1004A6EE4(v63);
          sub_1004A6EB4(v65);
          sub_100014CEC(v67, v66);
          sub_1004A4424();
          sub_100014D40(v67, v66);
          sub_100014D40(v67, v66);
          v58 = sub_1004A6F14() ^ v93;
        }

        while (1)
        {
          v60 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v60 >= v57)
          {

            sub_1004A6EB4(v58);

            v13 = v86;
            v15 = v85;
            v22 = v84;
            v9 = v83;
            v12 = v82;
            goto LABEL_46;
          }

          v56 = *(v53 + 8 * v60);
          ++i;
          if (v56)
          {
            v93 = v58;
            i = v60;
            goto LABEL_41;
          }
        }

        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        return;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v90 = *v9;
        v36 = *(v9 + 2);
        v37 = *(v9 + 2);
        sub_1004A6EB4(3uLL);
        sub_1004A6EB4(v36 | (v36 << 32));
        v38 = v37 + 64;
        v39 = 1 << *(v37 + 32);
        if (v39 < 64)
        {
          v40 = ~(-1 << v39);
        }

        else
        {
          v40 = -1;
        }

        v41 = v40 & *(v37 + 64);
        v42 = (v39 + 63) >> 6;
        v93 = v37;

        v43 = 0;
        v44 = 0;
        if (v41)
        {
          while (1)
          {
            v45 = v44;
LABEL_29:
            v46 = __clz(__rbit64(v41)) | (v45 << 6);
            v47 = *(*(v93 + 48) + 4 * v46);
            v48 = (*(v93 + 56) + 16 * v46);
            v49 = *v48;
            v50 = v48[1];
            sub_100014CEC(*v48, v50);
            if (v50 >> 60 == 15)
            {
              break;
            }

            v41 &= v41 - 1;
            v97 = v102;
            v98 = v103;
            v99 = v104;
            v96 = v101;
            v95 = v100;
            sub_1004A6EE4(v47);
            sub_1004A4424();
            sub_100014D40(v49, v50);
            v43 ^= sub_1004A6F14();
            v44 = v45;
            if (!v41)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          while (1)
          {
LABEL_26:
            v45 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_65;
            }

            if (v45 >= v42)
            {
              break;
            }

            v41 = *(v38 + 8 * v45);
            ++v44;
            if (v41)
            {
              goto LABEL_29;
            }
          }
        }

        sub_1004A6EB4(v43);

        v13 = v86;
        v15 = v85;
        v22 = v84;
        v9 = v83;
        v12 = v82;
        v31 = v94;
      }

      else
      {
        sub_1004A6EB4(1uLL);
      }

LABEL_46:
      sub_1000CBC00(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
      v68 = sub_1004A6F14();
      v69 = -1 << *(v15 + 32);
      v70 = v68 & ~v69;
      v71 = v70 >> 6;
      if (((-1 << v70) & ~*(v89 + 8 * (v70 >> 6))) == 0)
      {
        v72 = 0;
        v73 = (63 - v69) >> 6;
        v25 = v92;
        while (++v71 != v73 || (v72 & 1) == 0)
        {
          v74 = v71 == v73;
          if (v71 == v73)
          {
            v71 = 0;
          }

          v72 |= v74;
          v75 = *(v89 + 8 * v71);
          if (v75 != -1)
          {
            v24 = __clz(__rbit64(~v75)) + (v71 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_66;
      }

      v24 = __clz(__rbit64((-1 << v70) & ~*(v89 + 8 * (v70 >> 6)))) | v70 & 0x7FFFFFFFFFFFFFC0;
      v25 = v92;
LABEL_7:
      *(v89 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v15 + 48) + 8 * v24) = v31;
      *(*(v15 + 56) + 8 * v24) = v25;
      ++*(v15 + 16);
      v21 = v87;
      v20 = v91;
      v23 = v88;
      goto LABEL_8;
    }
  }

  if (v23)
  {
    v76 = 1 << *(v13 + 32);
    v3 = v78;
    if (v76 >= 64)
    {
      bzero(v81, ((v76 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v81 = -1 << v76;
    }

    *(v13 + 16) = 0;
LABEL_61:
  }

  else
  {

    v3 = v78;
  }

  *v3 = v15;
}

uint64_t sub_1000C6A34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF778, &qword_1004D2C98);
  v30 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EE4(v20);
      result = sub_1004A6F14();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C6CC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF7C8, &qword_1004D3CD0);
  v37 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 40 * v21);
      v42 = *v23;
      v40 = *(v23 + 1);
      v24 = *(v23 + 1);
      v41 = *(v23 + 4);
      v26 = *(v23 + 3);
      v25 = *(v23 + 4);
      v27 = (v22 + 12 * v21);
      v39 = *v27;
      v38 = *(v27 + 8);
      if ((v37 & 1) == 0)
      {

        sub_100014CEC(v26, v25);
      }

      sub_1004A6E94();
      sub_1004A6EB4(v42);
      sub_1004A6EE4(v40);
      sub_1004A6EB4(v41 | (v41 << 32));
      sub_1004A4424();
      result = sub_1004A6F14();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v42;
      *(v16 + 4) = v40;
      *(v16 + 8) = v24;
      *(v16 + 16) = v41;
      *(v16 + 24) = v26;
      *(v16 + 32) = v25;
      v17 = *(v7 + 56) + 12 * v15;
      *v17 = v39;
      *(v17 + 8) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C7000(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF7B8, &qword_1004D2CC8);
  v32 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 40 * v20;
      v23 = *(v22 + 8);
      v35 = *(v22 + 16);
      v33 = *(v22 + 32);
      v34 = *v22;
      if ((v32 & 1) == 0)
      {
        sub_100014CEC(v23, v35);
      }

      sub_1004A6E94();
      sub_1004A6EE4(v21);
      result = sub_1004A6F14();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v34;
      *(v16 + 8) = v23;
      *(v16 + 16) = v35;
      *(v16 + 32) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C72D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF7D8, &qword_1004D3CC0);
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_100014CEC(v29, *(&v29 + 1));
      }

      sub_1004A6E94();
      sub_1004A6EE4(v20);
      result = sub_1004A6F14();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C7564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF7D0, &qword_1004D3CB0);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v35 = *v22;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      if ((v34 & 1) == 0)
      {
        sub_100014CEC(v23, v24);
      }

      sub_1004A6E94();
      sub_1004A6EE4(v21);
      result = sub_1004A6F14();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v35;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C781C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF6E8, &qword_1004D2B60);
  v35 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EB4(v24 | (v24 << 32));
      result = sub_1004A6F14();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C7AC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - v6;
  v7 = *v2;
  sub_10000C9C0(&qword_1005CF6E0, &qword_1004D2B58);
  v40 = v4;
  result = sub_1004A6A64();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 16 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_100025FDC(v28, v41, &unk_1005D91B0, &unk_1004CF400);
      }

      else
      {
        sub_10000E268(v28, v41, &unk_1005D91B0, &unk_1004CF400);
      }

      sub_1004A6E94();
      sub_1004A6EB4(v26 | (v26 << 32));
      result = sub_1004A6F14();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 16 * v17;
      *v18 = v25;
      *(v18 + 8) = v26;
      result = sub_100025FDC(v41, *(v9 + 56) + v27 * v17, &unk_1005D91B0, &unk_1004CF400);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1000C7E44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF6F0, &qword_1004D2B68);
  v35 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v5 + 56) + 48 * v21;
      v26 = *(v25 + 8);
      v39 = *(v25 + 16);
      v40 = *v25;
      v38 = *(v25 + 24);
      v37 = *(v25 + 32);
      v36 = *(v25 + 40);
      if ((v35 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EB4(v24 | (v24 << 32));
      result = sub_1004A6F14();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v40;
      *(v17 + 8) = v26;
      *(v17 + 16) = v39;
      *(v17 + 24) = v38;
      *(v17 + 32) = v37;
      *(v17 + 40) = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C8144(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF740, &qword_1004D2BA8);
  v32 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v33 = *(*(v5 + 56) + 8 * v20);
      if ((v32 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EB4(v23 | (v23 << 32));
      result = sub_1004A6F14();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(*(v7 + 56) + 8 * v15) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C83EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF760, &qword_1004D2BC8);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C86B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000C9C0(a3, a4);
  v36 = v6;
  result = sub_1004A6A64();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1004A6F14();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1000C8954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000C9C0(&qword_1005CF788, &qword_1004D2CA8);
  v34 = v4;
  result = sub_1004A6A64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v35 = *(v22 + 8);
      v24 = *(v22 + 16);
      if ((v34 & 1) == 0)
      {
      }

      sub_1004A6E94();
      sub_1004A6EE4(v21);
      result = sub_1004A6F14();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v35;
      *(v16 + 16) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000C8C10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = *v2;
  sub_10000C9C0(&qword_1005CF780, &qword_1004D2CA0);
  v38 = v4;
  result = sub_1004A6A64();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v23;
      v39 = *(*(v8 + 48) + 16 * v23);
      v26 = *(&v39 + 1);
      if (v38)
      {
        sub_100025FDC(v25, v7, &unk_1005D91B0, &unk_1004CF400);
      }

      else
      {
        sub_10000E268(v25, v7, &unk_1005D91B0, &unk_1004CF400);
      }

      sub_1004A6E94();
      sub_100092C14(v40, v39);
      sub_100092C14(v40, v26);
      result = sub_1004A6F14();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v19 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v19 = v39;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v19;
      result = sub_100025FDC(v7, *(v10 + 56) + v24 * v18, &unk_1005D91B0, &unk_1004CF400);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

unint64_t *sub_1000C8F9C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100099FE4(a4, &v10);
    sub_1000CA830(v7, a2, a3, a4);
    v9 = v8;

    sub_10009A040(a4);
    sub_10009A040(a4);
    return v9;
  }

  return result;
}

Swift::Int sub_1000C9048(uint64_t a1, uint64_t a2, _OWORD *a3, __n128 a4)
{
  v6 = v4[1];
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  if (*v4)
  {
    v9 = sub_10015C0B4(a1, a2, v8, v7, (*v4 + 16), *v4 + 32);
    if (v10)
    {
      return v9;
    }
  }

  else
  {
    v9 = sub_10015C014(a1, a2, v8, v7);
    if (v11)
    {
      return v9;
    }
  }

  v12 = a3[9];
  v18[8] = a3[8];
  v18[9] = v12;
  v18[10] = a3[10];
  v13 = a3[5];
  v18[4] = a3[4];
  v18[5] = v13;
  v14 = a3[7];
  v18[6] = a3[6];
  v18[7] = v14;
  v15 = a3[1];
  v18[0] = *a3;
  v18[1] = v15;
  v16 = a3[3];
  v18[2] = a3[2];
  v18[3] = v16;
  sub_100025F40(v18, &qword_1005CF700, &qword_1004D2B78);
  sub_1000C9130(v9, *(v4[2] + 16) - 1);
  sub_1000C9348(a3);
  UInt32.init(_:)(a3);
  return v9;
}

unint64_t sub_1000C9130(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        v7 = (v4 + 32 + 176 * result);
        v8 = *v7;
        v9 = v7[2];
        v62 = v7[1];
        v63 = v9;
        v61 = v8;
        v10 = v7[3];
        v11 = v7[4];
        v12 = v7[6];
        v66 = v7[5];
        v67 = v12;
        v64 = v10;
        v65 = v11;
        v13 = v7[7];
        v14 = v7[8];
        v15 = v7[10];
        v70 = v7[9];
        v71 = v15;
        v68 = v13;
        v69 = v14;
        if (v5 > a2)
        {
          v16 = (v4 + 32 + 176 * a2);
          v17 = *v16;
          v18 = v16[2];
          v73 = v16[1];
          v74 = v18;
          v72 = v17;
          v19 = v16[3];
          v20 = v16[4];
          v21 = v16[6];
          v77 = v16[5];
          v78 = v21;
          v75 = v19;
          v76 = v20;
          v22 = v16[7];
          v23 = v16[8];
          v24 = v16[10];
          v81 = v16[9];
          v82 = v24;
          v79 = v22;
          v80 = v23;
          sub_10000E08C(&v61, v60);
          sub_10000E08C(&v72, v60);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100141AFC(v4);
            v4 = result;
          }

          if (*(v4 + 16) > v3)
          {
            v25 = (v4 + 32 + 176 * v3);
            v26 = *v25;
            v27 = v25[2];
            v59[1] = v25[1];
            v59[2] = v27;
            v59[0] = v26;
            v28 = v25[3];
            v29 = v25[4];
            v30 = v25[6];
            v59[5] = v25[5];
            v59[6] = v30;
            v59[3] = v28;
            v59[4] = v29;
            v31 = v25[7];
            v32 = v25[8];
            v33 = v25[10];
            v59[9] = v25[9];
            v59[10] = v33;
            v59[7] = v31;
            v59[8] = v32;
            v34 = v72;
            v35 = v74;
            v25[1] = v73;
            v25[2] = v35;
            *v25 = v34;
            v36 = v75;
            v37 = v76;
            v38 = v78;
            v25[5] = v77;
            v25[6] = v38;
            v25[3] = v36;
            v25[4] = v37;
            v39 = v79;
            v40 = v80;
            v41 = v82;
            v25[9] = v81;
            v25[10] = v41;
            v25[7] = v39;
            v25[8] = v40;
            result = sub_10000E0E8(v59);
            if (*(v4 + 16) > a2)
            {
              v42 = (v4 + 32 + 176 * a2);
              v43 = *v42;
              v44 = v42[2];
              v60[1] = v42[1];
              v60[2] = v44;
              v60[0] = v43;
              v45 = v42[3];
              v46 = v42[4];
              v47 = v42[6];
              v60[5] = v42[5];
              v60[6] = v47;
              v60[3] = v45;
              v60[4] = v46;
              v48 = v42[7];
              v49 = v42[8];
              v50 = v42[10];
              v60[9] = v42[9];
              v60[10] = v50;
              v60[7] = v48;
              v60[8] = v49;
              v51 = v61;
              v52 = v63;
              v42[1] = v62;
              v42[2] = v52;
              *v42 = v51;
              v53 = v64;
              v54 = v65;
              v55 = v67;
              v42[5] = v66;
              v42[6] = v55;
              v42[3] = v53;
              v42[4] = v54;
              v56 = v68;
              v57 = v69;
              v58 = v71;
              v42[9] = v70;
              v42[10] = v58;
              v42[7] = v56;
              v42[8] = v57;
              result = sub_10000E0E8(v60);
              *v2 = v4;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

void sub_1000C9348(_OWORD *a1@<X8>)
{
  if (*(*v1 + 16))
  {
    sub_1000C9A14(&v9);
    v20[8] = v17;
    v20[9] = v18;
    v20[10] = v19;
    v20[4] = v13;
    v20[5] = v14;
    v20[6] = v15;
    v20[7] = v16;
    v20[0] = v9;
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;
    if (sub_100021348(v20) == 1)
    {
      v8[8] = v17;
      v8[9] = v18;
      v8[10] = v19;
      v8[4] = v13;
      v8[5] = v14;
      v8[6] = v15;
      v8[7] = v16;
      v8[0] = v9;
      v8[1] = v10;
      v8[2] = v11;
      v8[3] = v12;
      sub_100025F40(v8, &qword_1005CF700, &qword_1004D2B78);
      sub_10018964C(*(*v1 + 16) - 1, a1);
    }

    else
    {
      v3 = v18;
      a1[8] = v17;
      a1[9] = v3;
      a1[10] = v19;
      v4 = v14;
      a1[4] = v13;
      a1[5] = v4;
      v5 = v16;
      a1[6] = v15;
      a1[7] = v5;
      v6 = v10;
      *a1 = v9;
      a1[1] = v6;
      v7 = v12;
      a1[2] = v11;
      a1[3] = v7;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000C9458(uint64_t a1, uint64_t *a2)
{
  v40 = _s19UserInitiatedSearchVMa(0);
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = (&v38 - v7);
  v9 = sub_10000C9C0(&qword_1005CEF88, &qword_1004D1E68);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v38 - v13);
  v15 = sub_10000C9C0(&qword_1005CF708, &qword_1004D2B80);
  __chkstk_darwin(v15 - 8);
  v17 = (&v38 - v16);
  v50 = sub_10000C9C0(&qword_1005CF710, &qword_1004D2B88);
  v51 = sub_1000CBB00(&qword_1005CF718, &qword_1005CF710, &qword_1004D2B88);
  v49[0] = a1;
  v45 = v49;

  sub_10015C338(sub_1000CB6F4, v44);
  v19 = *(*a2 + 16);
  if (v19 < v18)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v38 = 0;
    v43 = v9;
    sub_1001649C0(v18, v19);
    v20 = sub_10002587C(v49, v50);
    v42 = &v38;
    v21 = __chkstk_darwin(v20);
    (*(v23 + 16))(&v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1000B3774(v46);
    sub_1004A5AC4();
    v42 = (v10 + 48);
LABEL_3:
    while (1)
    {
      sub_100025928(v46, AssociatedTypeWitness);
      sub_1004A6414();
      v24 = v43;
      if ((*v42)(v17, 1, v43) == 1)
      {
        break;
      }

      v25 = *v17;
      v26 = *(v24 + 48);
      *v14 = *v17;
      sub_1000CBC60(v17 + v26, v14 + v26, _s19UserInitiatedSearchV5StateOMa);
      v27 = 0;
      v28 = a2;
      v29 = *a2;
      v30 = *(*a2 + 16);
      while (v30 != v27)
      {
        if (v27 >= v29[2])
        {
          __break(1u);
          goto LABEL_16;
        }

        sub_1000CBB98(v29 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27++, v8, _s19UserInitiatedSearchVMa);
        v31 = *v8;
        sub_1000CBC00(v8, _s19UserInitiatedSearchVMa);
        if (v31 == v25)
        {
          sub_100025F40(v14, &qword_1005CEF88, &qword_1004D1E68);
          a2 = v28;
          goto LABEL_3;
        }
      }

      v32 = v39;
      sub_10000E268(v14, v39, &qword_1005CEF88, &qword_1004D1E68);
      v33 = *(v43 + 48);
      v34 = v40;
      v35 = v41;
      *v41 = v25;
      sub_1000CBC60(v32 + v33, v35 + *(v34 + 20), _s19UserInitiatedSearchV5StateOMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_100086310(0, v29[2] + 1, 1, v29);
      }

      v37 = v29[2];
      v36 = v29[3];
      if (v37 >= v36 >> 1)
      {
        v29 = sub_100086310((v36 > 1), v37 + 1, 1, v29);
      }

      sub_100025F40(v14, &qword_1005CEF88, &qword_1004D1E68);
      v29[2] = v37 + 1;
      sub_1000CBC60(v41, v29 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v37, _s19UserInitiatedSearchVMa);
      a2 = v28;
      *v28 = v29;
    }

    sub_1000197E0(v46);
    sub_1000197E0(v49);
  }
}

uint64_t sub_1000C9A14@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141AFC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v5 - 1;
    memmove(a1, (v3 + 176 * v5 - 144), 0xB0uLL);
    *(v3 + 16) = v6;
    *v1 = v3;

    return UInt32.init(_:)(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C9A9C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[7];
  v34 = a1[8];
  v2 = v34;
  v35 = v3;
  v5 = a1[9];
  v6 = a1[11];
  v36 = a1[10];
  v7 = v36;
  v37 = v6;
  v8 = a1[5];
  v10 = a1[3];
  v30 = a1[4];
  v9 = v30;
  v31 = v8;
  v11 = a1[5];
  v12 = a1[7];
  v32 = a1[6];
  v13 = v32;
  v33 = v12;
  v14 = a1[1];
  v26 = *a1;
  v27 = v14;
  v15 = a1[1];
  v16 = a1[3];
  v28 = a1[2];
  v17 = v28;
  v29 = v16;
  v18 = a1[8];
  v19 = a1[10];
  *(a2 + 144) = a1[9];
  *(a2 + 160) = v19;
  *(a2 + 176) = a1[11];
  v20 = a1[4];
  v21 = a1[6];
  *(a2 + 80) = a1[5];
  *(a2 + 96) = v21;
  *(a2 + 112) = a1[7];
  *(a2 + 128) = v18;
  v22 = a1[2];
  *(a2 + 16) = a1[1];
  *(a2 + 32) = v22;
  *(a2 + 48) = a1[3];
  *(a2 + 64) = v20;
  v38[8] = v5;
  v38[9] = v7;
  v38[10] = a1[11];
  v38[4] = v11;
  v38[5] = v13;
  v38[6] = v4;
  v38[7] = v2;
  v38[0] = v15;
  v38[1] = v17;
  v23 = DWORD2(v26);
  *a2 = v26;
  *(a2 + 8) = v23;
  v38[2] = v10;
  v38[3] = v9;
  sub_10000E08C(&v27, v25);
  sub_10000E268(&v26, v25, &qword_1005CF728, &qword_1004D2B90);
  return sub_10000E0E8(v38);
}

uint64_t sub_1000C9B9C(uint64_t a1, uint64_t *a2)
{
  result = *a1;
  v5 = *a2;
  if (*(a1 + 24))
  {
    if ((a2[3] & 1) == 0)
    {
      return 0;
    }

    v6 = *(result + 16);
    if (v6 != *(v5 + 16))
    {
      return 0;
    }

    v48 = a2;
    if (v6)
    {
      v7 = result == v5;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = (result + 32);
      v9 = (v5 + 32);
      while (1)
      {
        v10 = *v8;
        v11 = v8[2];
        v50[1] = v8[1];
        v50[2] = v11;
        v50[0] = v10;
        v12 = v8[3];
        v13 = v8[4];
        v14 = v8[6];
        v50[5] = v8[5];
        v50[6] = v14;
        v50[3] = v12;
        v50[4] = v13;
        v15 = v8[7];
        v16 = v8[8];
        v17 = v8[10];
        v50[9] = v8[9];
        v50[10] = v17;
        v50[7] = v15;
        v50[8] = v16;
        if (!v6)
        {
          break;
        }

        v18 = *v9;
        v19 = v9[2];
        v51[1] = v9[1];
        v51[2] = v19;
        v51[0] = v18;
        v20 = v9[3];
        v21 = v9[4];
        v22 = v9[6];
        v51[5] = v9[5];
        v51[6] = v22;
        v51[3] = v20;
        v51[4] = v21;
        v23 = v9[7];
        v24 = v9[8];
        v25 = v9[10];
        v51[9] = v9[9];
        v51[10] = v25;
        v51[7] = v23;
        v51[8] = v24;
        sub_10000E08C(v50, v49);
        sub_10000E08C(v51, v49);
        v26 = sub_10009D400(v50, v51);
        sub_10000E0E8(v51);
        result = sub_10000E0E8(v50);
        if (!v26)
        {
          return 0;
        }

        v8 += 11;
        v9 += 11;
        if (!--v6)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }
  }

  else
  {
    if (a2[3])
    {
      return 0;
    }

    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    v30 = a2[1];
    v29 = a2[2];
    result = sub_10011442C(result, v5);
    if ((result & 1) == 0)
    {
      return 0;
    }

    v47 = v29;
    v31 = *(v27 + 16);
    if (v31 != *(v30 + 16))
    {
      return 0;
    }

    v46 = v28;
    v48 = a2;
    if (v31)
    {
      v32 = v27 == v30;
    }

    else
    {
      v32 = 1;
    }

    if (!v32)
    {
      v33 = (v27 + 48);
      v34 = (v30 + 48);
      while (v31)
      {
        v36 = *(v33 - 1);
        v35 = *v33;
        v37 = *(v33 - 4);
        v38 = *(v34 - 4);
        v39 = *(v34 - 1);
        v40 = *v34;
        sub_1000C9E18(v36, *v33);
        sub_1000C9E18(v39, v40);
        LOBYTE(v37) = static SearchRequest.__derived_struct_equals(_:_:)(v37, v36, v35, v38, v39, v40);
        sub_1000C9EF0(v39, v40);
        result = sub_1000C9EF0(v36, v35);
        if ((v37 & 1) == 0)
        {
          return 0;
        }

        v33 += 3;
        v34 += 3;
        if (!--v31)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_34;
    }

LABEL_24:
    if ((sub_1000FFDEC(v46, v47) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  if ((sub_1001141E0(*(a1 + 32), v48[4]) & 1) == 0 || (sub_100114320(*(a1 + 40), v48[5]) & 1) == 0)
  {
    return 0;
  }

  v41 = *(a1 + 56);
  v42 = *(a1 + 64);
  v43 = v48[7];
  v44 = v48[8];
  v45 = sub_100100010(*(a1 + 48), v48[6]);
  result = 0;
  if ((v45 & 1) != 0 && v41 == v43 && v42 == v44)
  {
    return *(a1 + 72) == *(v48 + 18);
  }

  return result;
}

void sub_1000C9E18(uint64_t a1, unint64_t a2)
{

  if ((a2 & 4) == 0)
  {

    sub_1000C9E60(a2);
  }
}

unint64_t sub_1000C9E60(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 5)
  {
    if (v1 > 8)
    {
      if (v1 == 9 || v1 == 10 || v1 == 11)
      {
      }
    }

    else if (v1 == 6 || v1 == 7 || v1 == 8)
    {
    }
  }

  else
  {
    if (v1 <= 2)
    {
      if (v1 > 2)
      {
        return result;
      }
    }

    if (v1 == 3 || v1 == 4 || v1 == 5)
    {
    }
  }

  return result;
}

unint64_t sub_1000C9EF0(uint64_t a1, unint64_t a2)
{

  if ((a2 & 4) == 0)
  {

    return sub_1000C9F38(a2);
  }

  return result;
}

unint64_t sub_1000C9F38(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 5)
  {
    if (v1 > 8)
    {
      if (v1 == 9 || v1 == 10 || v1 == 11)
      {
      }
    }

    else if (v1 == 6 || v1 == 7 || v1 == 8)
    {
    }
  }

  else
  {
    if (v1 <= 2)
    {
      if (v1 > 2)
      {
        return result;
      }
    }

    if (v1 == 3 || v1 == 4 || v1 == 5)
    {
    }
  }

  return result;
}

uint64_t sub_1000C9FC8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000C9FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = a2 + 56;
  v6 = 0;
  v7 = *(_s19UserInitiatedSearchVMa(0) - 8);
  v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    if (*(a2 + 16))
    {
      v10 = *(v8 + v9 * v6);
      sub_1004A6E94();
      sub_1004A6EE4(v10);
      v11 = sub_1004A6F14();
      v12 = -1 << *(a2 + 32);
      v13 = v11 & ~v12;
      if ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        break;
      }
    }

LABEL_3:
    if (++v6 == v2)
    {
      return 0;
    }
  }

  v14 = ~v12;
  while (*(*(a2 + 48) + 4 * v13) != v10)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v6;
}

uint64_t sub_1000CA168()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000CA1A0(unint64_t a1)
{
  if (a1 >= 3)
  {
  }

  return result;
}

uint64_t sub_1000CA1B0(uint64_t *a1, uint64_t a2)
{
  v6 = _s19UserInitiatedSearchVMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  __chkstk_darwin(v13);
  v15 = (&v36 - v14);
  v16 = *a1;
  result = sub_1000C9FDC(*a1, a2);
  if (v2)
  {
    return v3;
  }

  v43 = v15;
  v41 = a2;
  if (v18)
  {
    return v16[2];
  }

  v3 = result;
  v38 = v9;
  v39 = v12;
  v37 = a1;
  v19 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v36 = 0;
    v20 = v41;
    v21 = v41 + 56;
    v22 = v43;
    v40 = v7;
    while (1)
    {
      v24 = v16[2];
      if (v19 == v24)
      {
        return v3;
      }

      if (v19 >= v24)
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        break;
      }

      v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v25 = v16 + v42;
      v26 = *(v7 + 72);
      v27 = v26 * v19;
      sub_1000CBB98(v16 + v42 + v26 * v19, v22, _s19UserInitiatedSearchVMa);
      if (*(v20 + 16) && (v28 = *v43, sub_1004A6E94(), sub_1004A6EE4(v28), v29 = sub_1004A6F14(), v20 = v41, v30 = -1 << *(v41 + 32), v31 = v29 & ~v30, ((*(v21 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
      {
        v32 = ~v30;
        while (*(*(v41 + 48) + 4 * v31) != v28)
        {
          v31 = (v31 + 1) & v32;
          if (((*(v21 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v22 = v43;
        result = sub_1000CBC00(v43, _s19UserInitiatedSearchVMa);
        v7 = v40;
        v23 = __OFADD__(v19++, 1);
        if (v23)
        {
          goto LABEL_28;
        }
      }

      else
      {
LABEL_15:
        v22 = v43;
        result = sub_1000CBC00(v43, _s19UserInitiatedSearchVMa);
        if (v3 != v19)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }

          v33 = v16[2];
          if (v3 >= v33)
          {
            goto LABEL_31;
          }

          v34 = v26 * v3;
          result = sub_1000CBB98(&v25[v34], v39, _s19UserInitiatedSearchVMa);
          if (v19 >= v33)
          {
            goto LABEL_32;
          }

          sub_1000CBB98(&v25[v27], v38, _s19UserInitiatedSearchVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_1001398CC(v16);
          }

          v35 = v16 + v42;
          result = sub_1000CBA94(v38, v16 + v42 + v34);
          if (v19 >= v16[2])
          {
            goto LABEL_33;
          }

          result = sub_1000CBA94(v39, &v35[v27]);
          *v37 = v16;
          v20 = v41;
        }

        v23 = __OFADD__(v3++, 1);
        v7 = v40;
        if (v23)
        {
          goto LABEL_29;
        }

        v23 = __OFADD__(v19++, 1);
        if (v23)
        {
          goto LABEL_28;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CA524(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  if (*(a3 + 24) != 1)
  {
    return 1;
  }

  v6 = *a3;
  v7 = *(*a3 + 16);
  if (!v7)
  {
    return 1;
  }

  v8 = 0;
  v10 = a3 + 1;
  v9 = a3[1];
  v11 = a3[2];
  while (1)
  {
    v12 = v6 + 32 + 176 * v8;
    if ((*(v12 + 24) | (*(v12 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v13 = *(v12 + 16);
      v14 = *(v13 + 16);
      if (v14 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v8 == v7)
    {
      return 1;
    }
  }

  if (v14)
  {
    v15 = v13 == a1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_15:
    v4 = a4;
    v5 = a3;
    sub_100020D10(*a3, a3[1], a3[2], 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v19 = v6;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = (v13 + 32);
    v17 = (a1 + 32);
    while (v14)
    {
      if (*v16 != *v17)
      {
        goto LABEL_4;
      }

      ++v16;
      ++v17;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_100139804(v6);
  v19 = result;
LABEL_16:
  if (v8 >= *(v19 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1000C13D4(v19 + 176 * v8 + 32, v4);
    sub_100020D58(v6, v9, v11, 1);
    result = 0;
    *v5 = v19;
    *v10 = 0;
    v10[1] = 0;
    *(v5 + 24) = 1;
  }

  return result;
}

uint64_t sub_1000CA698(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, char a5)
{
  if (*(a3 + 24) != 1)
  {
    return 1;
  }

  v8 = *a3;
  v9 = *(*a3 + 16);
  if (!v9)
  {
    return 1;
  }

  v10 = 0;
  v12 = a3 + 1;
  v11 = a3[1];
  v13 = a3[2];
  while (1)
  {
    v14 = v8 + 32 + 176 * v10;
    if ((*(v14 + 24) | (*(v14 + 24) << 32)) == (a2 | (a2 << 32)))
    {
      v15 = *(v14 + 16);
      v16 = *(v15 + 16);
      if (v16 == *(a1 + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v10 == v9)
    {
      return 1;
    }
  }

  if (v16)
  {
    v17 = v15 == a1;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
LABEL_15:
    v7 = a5;
    v6 = a4;
    v5 = a3;
    sub_100020D10(*a3, a3[1], a3[2], 1);
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v8;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = (v15 + 32);
    v19 = (a1 + 32);
    while (v16)
    {
      if (*v18 != *v19)
      {
        goto LABEL_4;
      }

      ++v18;
      ++v19;
      if (!--v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  result = sub_100139804(v8);
  v21 = result;
LABEL_16:
  if (v10 >= *(v21 + 16))
  {
    __break(1u);
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      v22 = v21 + 176 * v10;
      if (*(v22 + 200) != 1 || *(v22 + 192) != v6)
      {
        *(v22 + 192) = v6;
        *(v22 + 200) = 0;
      }
    }

    sub_100020D58(v8, v11, v13, 1);
    result = 0;
    *v5 = v21;
    *v12 = 0;
    v12[1] = 0;
    *(v5 + 24) = 1;
  }

  return result;
}

void sub_1000CA830(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *a4;
    v15 = *(a4 + 8);

    v16.rawValue._rawValue = v14;
    v16.hashValue = v15;
    v17 = SyncRequest.includes(_:)(v16);

    if (v17)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1000B1ED0(a1, a2, v21, a3);
        return;
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

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1000CA9A0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    sub_100099FE4(a2, v14);
    sub_100099FE4(a2, v14);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v11 = swift_slowAlloc();
      sub_100099FE4(a2, v14);
      v10 = sub_1000C8F9C(v11, v6, a1, a2);

      goto LABEL_8;
    }
  }

  else
  {
    sub_100099FE4(a2, v14);
    v8 = sub_100099FE4(a2, v14);
  }

  __chkstk_darwin(v8);
  bzero(&v14[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v7);
  sub_100099FE4(a2, v14);
  sub_1000CA830(&v14[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v6, a1, a2);
  v10 = v9;
  sub_10009A040(a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_8:
  sub_10009A040(a2);
  sub_10009A040(a2);
  return v10;
}

void *sub_1000CAB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a2;
  v5 = *(a1 + 16);
  v69 = _swiftEmptyArrayStorage;
  sub_1000919E8(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  v36 = v5;
  if (v5)
  {
    v7 = 0;
    v35 = a1 + 32;
    do
    {
      v8 = (v35 + 96 * v7);
      v9 = v8[3];
      v72 = v8[2];
      v73 = v9;
      v74[0] = v8[4];
      *(v74 + 9) = *(v8 + 73);
      v10 = v8[1];
      v70 = *v8;
      v71 = v10;
      sub_100099FE4(&v70, v49);
      sub_100099FE4(&v70, v49);
      v11 = sub_1000CA9A0(v75, &v70);
      sub_10009A040(&v70);
      v12 = sub_1000B537C(v11);

      v13 = *(v12 + 16);
      sub_1000CB72C();
      v14 = sub_1004A5D64();
      *&v49[0] = v14;
      if (v13)
      {
        v15 = 32;
        do
        {
          sub_100088204(&v38, *(v12 + v15));
          v15 += 4;
          --v13;
        }

        while (v13);

        v16 = *&v49[0];
      }

      else
      {
        v16 = v14;
      }

      sub_100099FE4(&v70, v49);
      Set<>.makeNonEmpty()(v16);
      v18 = v17;

      v19 = *(a3 + 72);
      *(a3 + 72) = (v19 + 1) & 0xFFFFFF;
      v66 = v72;
      v67 = v73;
      *v68 = v74[0];
      *&v68[9] = *(v74 + 9);
      v64 = v70;
      v65 = v71;
      if (BYTE4(v72) & 1) != 0 || (v74[0])
      {
        v20 = 0;
        v21 = 0;
        v22 = 1;
      }

      else
      {
        v22 = 0;
        v20 = v72;
        v21 = *(&v73 + 1);
      }

      v40 = v66;
      v41 = v67;
      v42 = *v68;
      v43 = *&v68[16];
      v38 = v64;
      v39 = v65;
      v49[2] = v66;
      v49[3] = v67;
      v49[4] = *v68;
      v49[5] = *&v68[16];
      v63 = 1;
      v62 = v22;
      *&v44 = 0;
      DWORD2(v44) = 0;
      BYTE12(v44) = 1;
      *&v45 = v20;
      *(&v45 + 1) = v21;
      LOBYTE(v46) = v22;
      *(&v46 + 1) = v18;
      *&v47 = _swiftEmptyArrayStorage;
      *(&v47 + 1) = _swiftEmptyArrayStorage;
      *&v48 = 0;
      BYTE8(v48) = 2;
      HIDWORD(v48) = v19;
      v49[0] = v64;
      v49[1] = v65;
      v50 = 0;
      v51 = 0;
      v52 = 1;
      v53 = v20;
      v54 = v21;
      v55 = v22;
      v56 = v18;
      v57 = _swiftEmptyArrayStorage;
      v58 = _swiftEmptyArrayStorage;
      v59 = 0;
      v60 = 2;
      v61 = v19;
      sub_10000E08C(&v38, v37);
      sub_10000E0E8(v49);
      sub_10009A040(&v70);
      v69 = v6;
      v24 = v6[2];
      v23 = v6[3];
      if (v24 >= v23 >> 1)
      {
        sub_1000919E8((v23 > 1), v24 + 1, 1);
        v6 = v69;
      }

      ++v7;
      v6[2] = v24 + 1;
      v25 = &v6[22 * v24];
      v26 = v38;
      v27 = v40;
      v25[3] = v39;
      v25[4] = v27;
      v25[2] = v26;
      v28 = v41;
      v29 = v42;
      v30 = v44;
      v25[7] = v43;
      v25[8] = v30;
      v25[5] = v28;
      v25[6] = v29;
      v31 = v45;
      v32 = v46;
      v33 = v48;
      v25[11] = v47;
      v25[12] = v33;
      v25[9] = v31;
      v25[10] = v32;
    }

    while (v7 != v36);
  }

  return v6;
}

unint64_t sub_1000CAEA8(unint64_t result, char a2, void *a3)
{
  v49 = a3;
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    while (1)
    {
      *&v48[25] = *(v5 + 89);
      v13 = v5[5];
      *v48 = v5[4];
      *&v48[16] = v13;
      v14 = v5[3];
      v46 = v5[2];
      v47 = v14;
      v15 = v5[1];
      v44 = *v5;
      v45 = v15;
      v16 = v48[40];
      v42 = *&v48[32];
      v41 = *&v48[16];
      v40 = *v48;
      v38 = *(&v46 + 1);
      v39 = v47;
      v17 = *(&v15 + 1);
      v18 = v46;
      v19 = v15;
      v20 = DWORD2(v44);
      v21 = v44;
      result = sub_10000E268(&v44, v43, &qword_1005CF730, &qword_1004D2B98);
      if (!v21)
      {
        return result;
      }

      v37 = v16;
      v36 = v3;
      v22 = *v49;
      result = sub_100063B5C(v21, v20);
      v24 = v22[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }

      v28 = v23;
      if (v22[3] < v27)
      {
        break;
      }

      if (a2)
      {
        goto LABEL_11;
      }

      v35 = result;
      sub_10013B574();
      result = v35;
      if (v28)
      {
LABEL_3:
        v6 = *v49;
        v7 = result;

        v8 = v6[7] + 96 * v7;
        v9 = *(v8 + 16);
        v44 = *v8;
        v45 = v9;
        v11 = *(v8 + 48);
        v10 = *(v8 + 64);
        v12 = *(v8 + 32);
        *&v48[9] = *(v8 + 73);
        v47 = v11;
        *v48 = v10;
        v46 = v12;
        *v8 = v19;
        *(v8 + 8) = v17;
        *(v8 + 16) = v18;
        *(v8 + 24) = v38;
        *(v8 + 32) = v39;
        *(v8 + 48) = v40;
        *(v8 + 64) = v41;
        *(v8 + 80) = v42;
        *(v8 + 88) = v37;
        result = sub_10009A040(&v44);
        goto LABEL_4;
      }

LABEL_12:
      v30 = *v49;
      v30[(result >> 6) + 8] |= 1 << result;
      v31 = v30[6] + 16 * result;
      *v31 = v21;
      *(v31 + 8) = v20;
      v32 = v30[7] + 96 * result;
      *v32 = v19;
      *(v32 + 8) = v17;
      *(v32 + 16) = v18;
      *(v32 + 24) = v38;
      *(v32 + 32) = v39;
      *(v32 + 48) = v40;
      *(v32 + 64) = v41;
      *(v32 + 80) = v42;
      *(v32 + 88) = v37;
      v33 = v30[2];
      v26 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v30[2] = v34;
LABEL_4:
      v5 += 7;
      a2 = 1;
      v3 = v36 - 1;
      if (v36 == 1)
      {
        return result;
      }
    }

    sub_1000C522C(v27, a2 & 1);
    result = sub_100063B5C(v21, v20);
    if ((v28 & 1) != (v29 & 1))
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v28)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  return result;
}

unint64_t sub_1000CB144(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, void *a4)
{
  v4 = a4;
  v6 = a4[2];
  v99 = a4 + 2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100141AFC(v6);
    v6 = result;
  }

  v8 = 0;
  v9 = *(a1 + 16);
  v69 = a1 + 32;
  v70 = v9;
  v67 = v4;
  while (1)
  {
    while (1)
    {
      *v99 = v6;
      if (v8 == v9)
      {
        v8 = v9;
        sub_1000CB780(v97);
        v10 = *v97;
        v11 = *&v97[8];
        *&v98[128] = *&v97[140];
        *&v98[144] = *&v97[156];
        *&v98[160] = *&v97[172];
        *&v98[176] = *&v97[188];
        *&v98[64] = *&v97[76];
        *&v98[80] = *&v97[92];
        *&v98[96] = *&v97[108];
        *&v98[112] = *&v97[124];
        *v98 = *&v97[12];
        *&v98[16] = *&v97[28];
        v12 = *&v97[44];
        v13 = *&v97[60];
      }

      else
      {
        if (v8 >= v9)
        {
          goto LABEL_37;
        }

        v14 = (v69 + 192 * v8);
        v15 = v14[9];
        v83[8] = v14[8];
        v83[9] = v15;
        v16 = v14[11];
        v83[10] = v14[10];
        v83[11] = v16;
        v17 = v14[5];
        v83[4] = v14[4];
        v83[5] = v17;
        v18 = v14[7];
        v83[6] = v14[6];
        v83[7] = v18;
        v19 = v14[1];
        v83[0] = *v14;
        v83[1] = v19;
        v20 = v14[3];
        v83[2] = v14[2];
        v83[3] = v20;
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_38;
        }

        v22 = v14[9];
        v79 = v14[8];
        v80 = v22;
        v23 = v14[11];
        v81 = v14[10];
        v82 = v23;
        v24 = v14[5];
        v75 = v14[4];
        v76 = v24;
        v25 = v14[7];
        v77 = v14[6];
        v78 = v25;
        v26 = v14[1];
        v71 = *v14;
        v72 = v26;
        v27 = v14[3];
        v73 = v14[2];
        v74 = v27;
        sub_10000E268(v83, v97, &qword_1005CF728, &qword_1004D2B90);
        a2(&v84, &v71);
        *&v96[128] = v92;
        *&v96[144] = v93;
        *&v96[160] = v94;
        *&v96[176] = v95;
        *&v96[64] = v88;
        *&v96[80] = v89;
        *&v96[96] = v90;
        *&v96[112] = v91;
        *v96 = v84;
        *&v96[16] = v85;
        *&v96[32] = v86;
        *&v96[48] = v87;
        UInt32.init(_:)(v96);
        *&v97[128] = v79;
        *&v97[144] = v80;
        *&v97[160] = v81;
        *&v97[176] = v82;
        *&v97[64] = v75;
        *&v97[80] = v76;
        *&v97[96] = v77;
        *&v97[112] = v78;
        *v97 = v71;
        *&v97[16] = v72;
        *&v97[32] = v73;
        *&v97[48] = v74;
        sub_100025F40(v97, &qword_1005CF728, &qword_1004D2B90);
        v10 = *v96;
        v11 = *&v96[8];
        *&v98[128] = *&v96[140];
        *&v98[144] = *&v96[156];
        *&v98[160] = *&v96[172];
        *&v98[176] = *&v96[188];
        *&v98[64] = *&v96[76];
        *&v98[80] = *&v96[92];
        *&v98[96] = *&v96[108];
        *&v98[112] = *&v96[124];
        *v98 = *&v96[12];
        *&v98[16] = *&v96[28];
        v12 = *&v96[44];
        v13 = *&v96[60];
      }

      *&v98[32] = v12;
      *&v98[48] = v13;
      *&v97[140] = *&v98[128];
      *&v97[156] = *&v98[144];
      *&v97[172] = *&v98[160];
      *&v97[76] = *&v98[64];
      *&v97[92] = *&v98[80];
      *&v97[108] = *&v98[96];
      *&v97[124] = *&v98[112];
      *&v97[12] = *v98;
      *&v97[28] = *&v98[16];
      *&v97[44] = v12;
      *&v97[188] = *&v98[176];
      *&v97[60] = v13;
      *v97 = v10;
      *&v97[8] = v11;
      result = sub_100021348(v97);
      if (result == 1)
      {
        return result;
      }

      *&v96[64] = *&v98[68];
      *&v96[80] = *&v98[84];
      *&v96[32] = *&v98[36];
      *&v96[48] = *&v98[52];
      *&v96[144] = *&v98[148];
      *&v96[160] = *&v98[164];
      *&v96[96] = *&v98[100];
      *&v96[112] = *&v98[116];
      *&v96[128] = *&v98[132];
      *v96 = *&v98[4];
      *&v96[16] = *&v98[20];
      v28 = v4[1];
      v29 = v28 + 32;
      v30 = *(v28 + 16);
      if (!*v4)
      {
        break;
      }

      result = sub_10015C0B4(v10, v11, v29, v30, (*v4 + 16), *v4 + 32);
      if (v32)
      {
        goto LABEL_30;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

LABEL_27:
      if (result >= *(v6 + 16))
      {
        goto LABEL_36;
      }

      v39 = (v6 + 32 + 176 * result);
      sub_10000E08C(v96, v83);

      v40 = *v39;
      v41 = v39[2];
      v85 = v39[1];
      v86 = v41;
      v84 = v40;
      v42 = v39[3];
      v43 = v39[4];
      v44 = v39[6];
      v89 = v39[5];
      v90 = v44;
      v87 = v42;
      v88 = v43;
      v45 = v39[7];
      v46 = v39[8];
      v47 = v39[10];
      v93 = v39[9];
      v94 = v47;
      v91 = v45;
      v92 = v46;
      sub_10000E0E8(&v84);
      result = sub_10000E0E8(v96);
      v49 = *&v96[16];
      v48 = *&v96[32];
      *v39 = *v96;
      v39[1] = v49;
      v39[2] = v48;
      v50 = *&v96[96];
      v52 = *&v96[48];
      v51 = *&v96[64];
      v39[5] = *&v96[80];
      v39[6] = v50;
      v39[3] = v52;
      v39[4] = v51;
      v53 = *&v96[160];
      v55 = *&v96[112];
      v54 = *&v96[128];
      v39[9] = *&v96[144];
      v39[10] = v53;
      v39[7] = v55;
      v39[8] = v54;
      v9 = v70;
    }

    if (v30)
    {
      break;
    }

LABEL_29:
    v31 = 0;
LABEL_30:
    sub_100187EA0(v10, v11, v31);
    v4[2] = v6;
    v57 = *(v6 + 16);
    v56 = *(v6 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_1000919E8((v56 > 1), v57 + 1, 1);
    }

    v6 = *v99;
    *(v6 + 16) = v57 + 1;
    v58 = (v6 + 176 * v57);
    v59 = *v96;
    v60 = *&v96[32];
    v58[3] = *&v96[16];
    v58[4] = v60;
    v58[2] = v59;
    v61 = *&v96[48];
    v62 = *&v96[64];
    v63 = *&v96[96];
    v58[7] = *&v96[80];
    v58[8] = v63;
    v58[5] = v61;
    v58[6] = v62;
    v64 = *&v96[112];
    v65 = *&v96[128];
    v66 = *&v96[160];
    v58[11] = *&v96[144];
    v58[12] = v66;
    v58[9] = v64;
    v58[10] = v65;
    v4 = v67;
    v9 = v70;
  }

  result = 0;
  while (1)
  {
    v33 = (v29 + 16 * result);
    if ((v33[2] | (v33[2] << 32)) == (v11 | (v11 << 32)))
    {
      v34 = *v33;
      v35 = *(*v33 + 16);
      if (v35 == *(v10 + 16))
      {
        break;
      }
    }

LABEL_16:
    if (++result == v30)
    {
      goto LABEL_29;
    }
  }

  if (v35)
  {
    v36 = v34 == v10;
  }

  else
  {
    v36 = 1;
  }

  if (v36)
  {
    goto LABEL_27;
  }

  v37 = (v34 + 32);
  v38 = (v10 + 32);
  while (v35)
  {
    if (*v37 != *v38)
    {
      goto LABEL_16;
    }

    ++v37;
    ++v38;
    if (!--v35)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

double sub_1000CB6B4(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1000CB72C()
{
  result = qword_1005CF720;
  if (!qword_1005CF720)
  {
    result = swift_getWitnessTable("=D\t", &type metadata for SyncRequest.ID, v0, v1);
    atomic_store(result, &qword_1005CF720);
  }

  return result;
}

double sub_1000CB780(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1000CB7A0(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1000CB7B4(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t sub_1000CB7C8(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6 || v1 == 7)
      {
      }
    }

    else if (v1 == 4 || v1 == 5)
    {
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  return result;
}

unint64_t sub_1000CB838(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_1000CB848(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6 || v1 == 7)
      {
      }
    }

    else if (v1 == 4 || v1 == 5)
    {
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  return result;
}

uint64_t sub_1000CB9E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000CBA30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000CBA94(uint64_t a1, uint64_t a2)
{
  v4 = _s19UserInitiatedSearchVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CBB00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10000DEFC(a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000CBB54(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100014CEC(result, a2);
  }

  return result;
}

uint64_t sub_1000CBB68(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100014D40(result, a2);
  }

  return result;
}

uint64_t sub_1000CBB98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CBC00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CBC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1000CBCD0()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 176);
    v3 = *(v0 + 184);
    v4 = *(v0 + 208);
    v5 = *(v0 + 120);
    v32 = v5;
    if (v5)
    {
      v6 = *(v0 + 24);
      v7 = *(v0 + 25);
      v8 = *(v0 + 32);
      v24 = *(v0 + 40);
      v9 = *(v0 + 56);

      sub_100020D10(v1, v2, v3, 1);

      sub_10000E268(&v32, v25, &qword_1005CF820, &qword_1004D2D00);

      sub_100166D28();
      v11 = v10;
      if (v8 == 2 || v8 == 3)
      {

        sub_100166D28();

        v12 = 0;
        LOBYTE(v6) = 1;
LABEL_6:
        v13 = *(v0 + 17);
        v14 = swift_allocObject();
        memcpy((v14 + 16), v0, 0x108uLL);
        sub_1000CECCC(v0, v25);
        sub_10012DCC8();
        *&v27 = v1;
        *(&v27 + 1) = v5;
        LOBYTE(v28) = v13;
        *(&v28 + 1) = v4;
        LOBYTE(v29) = v6 & 1;
        BYTE1(v29) = v12;
        *(&v29 + 1) = sub_1000CECC4;
        *&v30 = v14;
        *(&v30 + 1) = 7;
        v31 = v15;
        v26 = v15;
        v25[2] = v29;
        v25[3] = v30;
        v25[0] = v27;
        v25[1] = v28;
        v16 = sub_1000CC9D4();
        sub_1000CED28(&v27);
        return v16;
      }

      v18 = sub_100166E18(v10);
      if (v7)
      {
        goto LABEL_16;
      }

      if (v8 == 1)
      {
        if (!v6)
        {
LABEL_16:
          LOBYTE(v6) = v18 ^ 1;
LABEL_17:
          sub_100013AD0(&off_100598658, v9);
          sub_100166E18(v11);
          v19 = sub_100013CF4(v9);

          if (v19 & 1) == 0 && (v7)
          {
            sub_100166E18(v11);
          }

          sub_100166D28();
          v21 = v20;
          sub_100166E18(v20);
          sub_100013AD0(&off_100598658, v9);
          sub_100166E18(v21);
          v22 = sub_100013CF4(v9);

          if (v22)
          {

            v12 = 0;
          }

          else if (v7)
          {
            v23 = sub_100166E18(v21);

            v12 = v23 & 1;
          }

          else
          {

            v12 = 1;
          }

          if (v24 >= 2)
          {
            if (v24 == 2)
            {
              v12 *= 2;
            }
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_6;
        }

        if (v6 == 1)
        {
          goto LABEL_17;
        }
      }

      else if (v8 || (v6 - 1) >= 2)
      {
        goto LABEL_16;
      }

      LOBYTE(v6) = 0;
      goto LABEL_17;
    }
  }

  return _swiftEmptySetSingleton;
}

void sub_1000CBFA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__OFSUB__(a4, a3))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3;
  sub_1000CEBD4();
  v9 = sub_1004A5D64();
  if (v5 == a4)
  {

    return;
  }

  if (a4 < 0)
  {
    goto LABEL_15;
  }

  if (v5 >= a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    while (*(a2 + 16) >= a4)
    {
      if (a4 == v5)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 4 * v5++ + 32);
      sub_10008854C(&v8, v7);
      if (a4 == v5)
      {

        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1000CC0A4(uint64_t a1, uint64_t a2)
{
  sub_1000CEBD4();
  result = sub_1004A5D64();
  v9 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    while (v5 < *(a2 + 16))
    {
      v6 = *(a2 + 4 * v5++ + 32);
      result = sub_10008854C(&v8, v6);
      if (v4 == v5)
      {

        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = result;

    return v7;
  }

  return result;
}

uint64_t sub_1000CC1D4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(char *, void))
{
  a2();
  result = sub_1004A5D64();
  v7 = 0;
  v15 = result;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  for (i = (v8 + 63) >> 6; v10; result = a4(v14, *(*(a1 + 48) + ((v12 << 8) | (4 * v13)))))
  {
    v12 = v7;
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= i)
    {

      return v15;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CC2E4(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.count.getter();
  sub_100050D64();
  v6 = sub_1004A5D64();
  v19 = v6;
  sub_10000E268(a1, v4, &unk_1005D91B0, &unk_1004CF400);
  v7 = MessageIdentifierSet.startIndex.getter(v5);
  v9 = v8;
  sub_100025F40(a1, &unk_1005D91B0, &unk_1004CF400);
  if (v7 != MessageIdentifierSet.endIndex.getter(v5) || v9 != v10)
  {
    do
    {
      do
      {
        MessageIdentifierSet.subscript.getter(v9, v5, &v18 + 4);
        v12 = HIDWORD(v18);
        MessageIdentifierSet.index(_:offsetBy:)(v7, v9, 1);
        v7 = v13;
        v9 = v14;
        sub_1000899A0(&v18 + 1, v12);
      }

      while (v7 != MessageIdentifierSet.endIndex.getter(v5));
    }

    while (v9 != v15);
    v6 = v19;
  }

  v16 = &v4[*(v2 + 36)];
  *v16 = v7;
  v16[1] = v9;
  sub_100025F40(v4, &qword_1005CDA38, &unk_1004D14C0);
  return v6;
}

void sub_1000CC4A4(uint64_t (*a1)(int *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v12 << 8) | (4 * __clz(__rbit64(v9)))));
      v13 = a1(&v14);
      if (v3 || (v13 & 1) != 0)
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

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000CC5CC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_1000CC670(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12 = *(v7 - 1);
      v13 = v8;

      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v7 += 4;
      v10 = v6-- == 0;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_1000CC724()
{
  if ((*(v0 + 192) & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  for (i = (v1 + 32); ; i += 11)
  {
    v4 = *i;
    v5 = i[2];
    v43 = i[1];
    v44 = v5;
    v42 = v4;
    v6 = i[3];
    v7 = i[4];
    v8 = i[6];
    v47 = i[5];
    v48 = v8;
    v45 = v6;
    v46 = v7;
    v9 = i[7];
    v10 = i[8];
    v11 = i[10];
    v51 = i[9];
    v52 = v11;
    v49 = v9;
    v50 = v10;
    v12 = *(&v46 + 1);
    v13 = v46;
    v14 = *(&v45 + 1);
    v15 = DWORD2(v43);
    v16 = v43;
    v17 = v47;
    v18 = WORD6(v11);
    sub_10000E08C(&v42, v41);

    v20 = MailboxName.isInbox.getter(v19, v15);

    if (v20)
    {
      break;
    }

    sub_10000E0E8(&v42);
    if (!--v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  v22 = v18;
  v23 = *(v39 + 120);
  if (v23 && (v24 = MailboxName.inbox.unsafeMutableAddressor(), *(v23 + 16)) && (v25 = sub_100063B5C(*v24, *(v24 + 2)), (v26 & 1) != 0))
  {
    v27 = *(v23 + 56) + 72 * v25;
    v28 = *(v27 + 24);
    v38 = *(v27 + 32);
    v40 = *(v27 + 56);
    v29 = *(v27 + 64);
    v30 = *(v27 + 65);
    sub_10000C9C0(&qword_1005CF828, &unk_1004D2D68);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1004CEAA0;
    if (v30)
    {
      v32 = 0;
      v33 = 0;
      v28 = 0;
      v29 = 1;
      v34 = v12;
    }

    else
    {
      v34 = v12;
      v33 = v38;
      v32 = v40;
    }

    v41[0] = v13;
    *(v31 + 32) = v16;
    *(v31 + 40) = v15;
    *(v31 + 44) = v22;
    *(v31 + 48) = v14;
    *(v31 + 56) = v13;
    *(v31 + 64) = v34;
    *(v31 + 72) = v17;
    *(v31 + 80) = v28;
    *(v31 + 88) = v30;
    *(v31 + 92) = v33;
    *(v31 + 96) = v30;
    *(v31 + 104) = v32;
    *(v31 + 112) = v29 & 1;
    v36 = v31;
    v37 = v34;

    sub_1000CA1A0(v37);
    sub_10000E0E8(&v42);
    return v36;
  }

  else
  {
    sub_10000C9C0(&qword_1005CF828, &unk_1004D2D68);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1004CEAA0;
    v41[0] = v13;
    *(v35 + 32) = v16;
    *(v35 + 40) = v15;
    *(v35 + 44) = v22;
    *(v35 + 48) = v14;
    *(v35 + 56) = v13;
    *(v35 + 64) = v12;
    *(v35 + 72) = v17;
    *(v35 + 80) = 0;
    *(v35 + 88) = 1;
    *(v35 + 92) = 0;
    *(v35 + 96) = 1;
    *(v35 + 104) = 0;
    *(v35 + 112) = 1;

    sub_1000CA1A0(v12);
    sub_10000E0E8(&v42);
    return v35;
  }
}

uint64_t sub_1000CC9D4()
{
  if ((v0[4] & 1) == 0)
  {
    v32 = *v0;
    v33 = v0[1];
    v73 = *(v0 + 16);
    v70 = v0;
    v34 = v0[3];
    v95 = _swiftEmptySetSingleton;
    v96 = v34;
    v97 = v33;
    v98[0] = v32;
    v72 = v34;
    sub_10000E268(v98, v77, &qword_1005CF7E0, &qword_1004D2CE0);
    sub_10000E268(&v97, v77, &qword_1005CF7E8, &qword_1004D2CE8);
    result = sub_10000E268(&v96, v77, &qword_1005CF7F0, &unk_1004D2CF0);
    v35 = *(v32 + 16);
    if (!v35)
    {
      goto LABEL_81;
    }

    v36 = 0;
    v75 = v32 + 32;
LABEL_35:
    if (v36 >= v35)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    while (1)
    {
      v37 = (v75 + 176 * v36);
      v38 = *v37;
      v39 = v37[2];
      v85 = v37[1];
      v86 = v39;
      v40 = v37[3];
      v41 = v37[4];
      v42 = v37[6];
      v89 = v37[5];
      v90 = v42;
      v87 = v40;
      v88 = v41;
      v43 = v37[7];
      v44 = v37[8];
      v45 = v37[10];
      v93 = v37[9];
      v94 = v45;
      v91 = v43;
      v92 = v44;
      v84 = v38;
      if (!*(v33 + 16))
      {
        goto LABEL_45;
      }

      v47 = *(&v84 + 1);
      v46 = v84;
      v48 = v85;
      v49 = DWORD2(v85);
      v50 = DWORD1(v89);
      v51 = BYTE8(v89);
      result = sub_100063B5C(v85, DWORD2(v85));
      if ((v52 & 1) == 0)
      {
        goto LABEL_45;
      }

      v53 = *(v33 + 56) + 72 * result;
      v79 = *v53;
      v55 = *(v53 + 32);
      v54 = *(v53 + 48);
      v56 = *(v53 + 64);
      v80 = *(v53 + 16);
      v81 = v55;
      v83 = v56;
      v82 = v54;
      sub_10000E08C(&v84, v77);
      sub_100063BD4(&v79, v77);
      v57 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      v58 = *result;
      if (!v57)
      {
        break;
      }

      if ((v58 & ~v57) != 0)
      {
        goto LABEL_42;
      }

LABEL_43:
      if ((HIWORD(v79) & v57) != 0)
      {
        sub_100063C30(&v79);
        result = sub_10000E0E8(&v84);
LABEL_45:
        v59 = __OFADD__(v36++, 1);
        if (v59)
        {
          goto LABEL_87;
        }

        goto LABEL_46;
      }

LABEL_49:
      v77[8] = v92;
      v77[9] = v93;
      v77[10] = v94;
      v77[4] = v88;
      v77[5] = v89;
      v77[6] = v90;
      v77[7] = v91;
      v77[0] = v84;
      v77[1] = v85;
      v77[2] = v86;
      v77[3] = v87;
      v77[13] = v81;
      v77[14] = v82;
      v78 = v83;
      v77[11] = v79;
      v77[12] = v80;
      if ((v73 & 1) == 0)
      {
        v59 = __OFADD__(v36++, 1);
        if (v59)
        {
          goto LABEL_94;
        }

        goto LABEL_72;
      }

      sub_10000E08C(&v84, v76);
      sub_100063BD4(&v79, v76);
      v60 = MailboxName.isInbox.getter(v48, v49);
      sub_100063C30(&v79);
      if ((v60 & 1) != 0 || v80 > 7u || ((1 << v80) & 0xDB) == 0 || (v51 & 1) == 0 && ((BYTE12(v90) & 1) != 0 || DWORD2(v90) < v50))
      {
        result = sub_10000E0E8(&v84);
        v59 = __OFADD__(v36++, 1);
        if (v59)
        {
          goto LABEL_93;
        }

        goto LABEL_72;
      }

      sub_10000E0E8(&v84);
      if (*(v72 + 16))
      {
        v61 = sub_100063C84(v46, v47);
        v63 = v62;

        if ((v63 & 1) != 0 && (~*(*(v72 + 56) + 2 * v61) & 0x3FFF) != 0)
        {
          v59 = __OFADD__(v36++, 1);
          if (v59)
          {
            goto LABEL_95;
          }

LABEL_72:
          v64 = *(&v92 + 1);
          if (sub_10012DDBC(*(&v92 + 1), v70[8]) & 1) == 0 || (*(v64 + 16) || (BYTE8(v89) & 1) == 0 && ((BYTE12(v90) & 1) != 0 || DWORD2(v90) < DWORD1(v89))) && (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*(&v88 + 1), v89, 0, 0))
          {
            v65 = v85;
            v66 = DWORD2(v85);

            sub_100088220(v76, v65, v66);
            sub_100063CF8(v77);

            if (v36 == v35)
            {
LABEL_81:
              sub_100025F40(v98, &qword_1005CF7E0, &qword_1004D2CE0);
              sub_100025F40(&v97, &qword_1005CF7E8, &qword_1004D2CE8);
              sub_100025F40(&v96, &qword_1005CF7F0, &unk_1004D2CF0);
              return v95;
            }
          }

          else
          {
            result = sub_100063CF8(v77);
            if (v36 == v35)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_35;
        }

        result = sub_100063CF8(v77);
        v59 = __OFADD__(v36++, 1);
        if (v59)
        {
          goto LABEL_91;
        }
      }

      else
      {
        sub_100063CF8(v77);

        v59 = __OFADD__(v36++, 1);
        if (v59)
        {
          goto LABEL_91;
        }
      }

LABEL_46:
      if (v36 == v35)
      {
        goto LABEL_81;
      }

      if (v36 >= v35)
      {
        goto LABEL_86;
      }
    }

    if (!*result)
    {
      goto LABEL_49;
    }

LABEL_42:
    LOWORD(v57) = v58 | v57;
    goto LABEL_43;
  }

  v1 = sub_1000CD288();
  if (!v1)
  {
    v1 = sub_1000CDFD8();
  }

  v2 = v1;
  v3 = v0[7];
  if (*(v1 + 16) < v3)
  {
    return v2;
  }

  result = (v0[5])();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v7 = v5;
    v8 = v6;
    *&v84 = _swiftEmptyArrayStorage;

    v74 = v7;
    sub_1000919C8(0, 0, 0);
    v9 = _swiftEmptyArrayStorage;

    if (!v3)
    {
LABEL_84:

      v67 = sub_1000CE46C(v9);

      return v67;
    }

    v10 = 0;
    v68 = v7 + 32;
    result = v8 + 32;
    v11 = v2 + 56;
    v12 = 0;
LABEL_8:
    v69 = v3;
    v71 = v9;
    v13 = *(v8 + 16);
    if (v10 >= v13)
    {
LABEL_83:
      v9 = v71;
      goto LABEL_84;
    }

    while ((v10 & 0x8000000000000000) == 0)
    {
      v14 = v12;
      if (v12 >= *(v7 + 16))
      {
        goto LABEL_89;
      }

      if (v12 >= *(v8 + 16))
      {
        goto LABEL_90;
      }

      v15 = *(result + 4 * v12++);
      if ((~v15 & 0x6FFFC000) != 0)
      {
        if (*(v2 + 16))
        {
          v16 = (v68 + 16 * v14);
          v17 = *v16;
          v18 = *(v16 + 2);
          sub_1004A6E94();
          sub_1004A6EB4(v18 | (v18 << 32));
          v19 = sub_1004A6F14();
          v20 = -1 << *(v2 + 32);
          v21 = v19 & ~v20;
          result = v8 + 32;
          v7 = v74;
          if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
          {
            v22 = ~v20;
            while (1)
            {
              v23 = (*(v2 + 48) + 16 * v21);
              if ((v23[2] | (v23[2] << 32)) == (v18 | (v18 << 32)))
              {
                v24 = *v23;
                v25 = *(*v23 + 16);
                if (v25 == *(v17 + 16))
                {
                  break;
                }
              }

LABEL_18:
              v21 = (v21 + 1) & v22;
              if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
              {
                goto LABEL_10;
              }
            }

            if (v25)
            {
              v26 = v24 == v17;
            }

            else
            {
              v26 = 1;
            }

            if (!v26)
            {
              v27 = (v24 + 32);
              v28 = (v17 + 32);
              while (v25)
              {
                if (*v27 != *v28)
                {
                  goto LABEL_18;
                }

                ++v27;
                ++v28;
                if (!--v25)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
              goto LABEL_86;
            }

LABEL_29:
            v9 = v71;
            *&v84 = v71;
            v30 = v71[2];
            v29 = v71[3];

            if (v30 >= v29 >> 1)
            {
              sub_1000919C8((v29 > 1), v30 + 1, 1);
              v9 = v84;
            }

            v9[2] = v30 + 1;
            v31 = &v9[2 * v30];
            v31[4] = v17;
            *(v31 + 10) = v18;
            v10 = v12;
            v3 = v69 - 1;
            result = v8 + 32;
            v7 = v74;
            if (v69 != 1)
            {
              goto LABEL_8;
            }

            goto LABEL_84;
          }
        }
      }

LABEL_10:
      if (v12 == v13)
      {
        goto LABEL_83;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

char *sub_1000CD138(uint64_t a1)
{
  v2 = sub_10012E208();
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);

  sub_100166D28();
  v8 = v7;
  if (v5 == 3 || v5 == 2)
  {

    v9 = 1;
    goto LABEL_4;
  }

  v12 = sub_100166E18(v7);
  if (v4)
  {
    goto LABEL_13;
  }

  if (v5 != 1)
  {
    if (!v5 && (v3 - 1) < 2)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (!v3)
  {
LABEL_13:
    v9 = v12 ^ 1;
    goto LABEL_14;
  }

  if (v3 != 1)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = 1;
LABEL_14:
  sub_100013AD0(&off_100598658, v6);
  sub_100166E18(v8);
  v13 = sub_100013CF4(v6);

  if (v13 & 1) == 0 && (v4)
  {
    sub_100166E18(v8);
  }

LABEL_4:

  v10 = sub_1000CF79C(*(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192) & 1, *(a1 + 120), v2, v9 & 1, *(a1 + 208));

  return v10;
}

uint64_t sub_1000CD288()
{
  v1 = type metadata accessor for MessagesPendingDownload(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4 - 8);
  v113 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v115 = &v102 - v7;
  v8 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  __chkstk_darwin(v8 - 8);
  v116 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v121 = &v102 - v11;
  v12 = type metadata accessor for NewestMessages(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v114 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v119 = &v102 - v16;
  v118 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v118);
  v117 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v120 = &v102 - v19;
  v21 = *v0;
  v20 = v0[1];
  v124 = *(v0 + 16);
  v22 = v0[3];
  v147 = _swiftEmptySetSingleton;
  v148 = v22;
  v149 = v20;
  v150[0] = v21;
  v125 = v20;
  v123 = v22;
  sub_10000E268(v150, v129, &qword_1005CF7E0, &qword_1004D2CE0);
  sub_10000E268(&v149, v129, &qword_1005CF7E8, &qword_1004D2CE8);
  result = sub_10000E268(&v148, v129, &qword_1005CF7F0, &unk_1004D2CF0);
  v127 = *(v21 + 16);
  if (!v127)
  {
    v122 = 0;
    goto LABEL_88;
  }

  v109 = 0;
  v110 = v3;
  v112 = v0;
  v24 = 0;
  v122 = 0;
  v126 = v21 + 32;
  v25 = v125;
  v111 = (v13 + 48);
  while (2)
  {
    if (v24 >= v127)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return result;
    }

    while (1)
    {
      v26 = v12;
      v27 = (v126 + 176 * v24);
      v28 = *v27;
      v29 = v27[2];
      v137 = v27[1];
      v138 = v29;
      v30 = v27[3];
      v31 = v27[4];
      v32 = v27[6];
      v141 = v27[5];
      v142 = v32;
      v139 = v30;
      v140 = v31;
      v33 = v27[7];
      v34 = v27[8];
      v35 = v27[10];
      v145 = v27[9];
      v146 = v35;
      v143 = v33;
      v144 = v34;
      v136 = v28;
      if (!*(v25 + 16))
      {
        goto LABEL_13;
      }

      v37 = *(&v136 + 1);
      v36 = v136;
      v38 = v137;
      v39 = DWORD2(v137);
      v40 = DWORD1(v141);
      v41 = BYTE8(v141);
      result = sub_100063B5C(v137, DWORD2(v137));
      v25 = v125;
      if ((v42 & 1) == 0)
      {
        goto LABEL_13;
      }

      v43 = *(v125 + 56) + 72 * result;
      v131 = *v43;
      v45 = *(v43 + 32);
      v44 = *(v43 + 48);
      v46 = *(v43 + 64);
      v132 = *(v43 + 16);
      v133 = v45;
      v135 = v46;
      v134 = v44;
      sub_10000E08C(&v136, v129);
      sub_100063BD4(&v131, v129);
      v47 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      v48 = *result;
      if (!v47)
      {
        if (!*result)
        {
          break;
        }

LABEL_10:
        LOWORD(v47) = v48 | v47;
        goto LABEL_11;
      }

      if ((v48 & ~v47) != 0)
      {
        goto LABEL_10;
      }

LABEL_11:
      if ((HIWORD(v131) & v47) == 0)
      {
        break;
      }

      sub_100063C30(&v131);
      result = sub_10000E0E8(&v136);
      v25 = v125;
LABEL_13:
      v49 = __OFADD__(v24++, 1);
      if (v49)
      {
        goto LABEL_92;
      }

      v12 = v26;
LABEL_15:
      if (v24 == v127)
      {
        goto LABEL_88;
      }

      if (v24 >= v127)
      {
        goto LABEL_91;
      }
    }

    v129[8] = v144;
    v129[9] = v145;
    v129[10] = v146;
    v129[4] = v140;
    v129[5] = v141;
    v129[6] = v142;
    v129[7] = v143;
    v129[0] = v136;
    v129[1] = v137;
    v129[2] = v138;
    v129[3] = v139;
    v129[13] = v133;
    v129[14] = v134;
    v130 = v135;
    v129[11] = v131;
    v129[12] = v132;
    if ((v124 & 1) == 0)
    {
      v49 = __OFADD__(v24++, 1);
      if (v49)
      {
        goto LABEL_95;
      }

      goto LABEL_39;
    }

    sub_10000E08C(&v136, v128);
    sub_100063BD4(&v131, v128);
    v50 = MailboxName.isInbox.getter(v38, v39);
    sub_100063C30(&v131);
    if ((v50 & 1) != 0 || v132 > 7u || ((1 << v132) & 0xDB) == 0 || (v41 & 1) == 0 && ((BYTE12(v142) & 1) != 0 || DWORD2(v142) < v40))
    {
      result = sub_10000E0E8(&v136);
      v49 = __OFADD__(v24++, 1);
      if (v49)
      {
        goto LABEL_94;
      }

LABEL_39:
      v12 = v26;
      goto LABEL_40;
    }

    sub_10000E0E8(&v136);
    v51 = v123;
    if (!*(v123 + 16))
    {
      sub_100063CF8(v129);

LABEL_31:
      v12 = v26;
LABEL_32:
      v49 = __OFADD__(v24++, 1);
      v25 = v125;
      if (v49)
      {
        goto LABEL_93;
      }

      goto LABEL_15;
    }

    v52 = sub_100063C84(v36, v37);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      result = sub_100063CF8(v129);
      goto LABEL_31;
    }

    v12 = v26;
    if ((~*(*(v51 + 56) + 2 * v52) & 0x3FFF) == 0)
    {
      result = sub_100063CF8(v129);
      goto LABEL_32;
    }

    v49 = __OFADD__(v24++, 1);
    if (v49)
    {
      goto LABEL_96;
    }

LABEL_40:
    v55 = *(&v144 + 1);
    if (*(*(&v144 + 1) + 16) && (v135 & 0x100) == 0 && (v135 & 1) == 0)
    {
      v56 = *(&v134 + 1);
      v57 = DWORD1(v133);
      if (sub_10012DDBC(*(&v144 + 1), v112[8]))
      {
        if ((v140 & 1) == 0)
        {
          v58 = DWORD1(v141);
          v59 = BYTE8(v141);
          v60 = v121;
          if (*(v55 + 16) || (BYTE8(v141) & 1) == 0 && ((BYTE12(v142) & 1) != 0 || DWORD2(v142) < DWORD1(v141)))
          {
            v122 = *(v112 + 33);
            if (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*(&v140 + 1), v141, 0, 0))
            {
              v108 = v59;
              if (v142)
              {
                v105 = v58;
                v61 = v142 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                swift_beginAccess();
                v62 = v61 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
                v63 = v117;
                sub_1000CEE7C(v62, v117, type metadata accessor for MailboxSyncState);
                v64 = v63;
                v65 = v120;
                sub_1000CE508(v64, v120, type metadata accessor for MailboxSyncState);
                v107 = *(v118 + 52);
                v66 = *(v118 + 64);
                v106 = *(type metadata accessor for PendingPersistenceUpdates(0) + 28);
                v104 = v66;
                sub_10000E268(v65 + v66, v60, &qword_1005CDC18, &qword_1004CF9E0);
                v67 = *v111;
                if ((*v111)(v60, 1, v12) == 1)
                {
                  sub_100016D2C();
                  v68 = v115;
                  sub_1004A7114();
                  v102 = *(v12 + 20);
                  v103 = v67;
                  v69 = *(v12 + 24);
                  v70 = v68;
                  v71 = v121;
                  v72 = v119;
                  sub_100020950(v70, v119);
                  *(v72 + v102) = 0;
                  *(v72 + v69) = 0;
                  v67 = v103;
                  v73 = v72;
                  v65 = v120;
                  sub_1000CEEE4(v73, type metadata accessor for NewestMessages);
                  if (v67(v71, 1, v12) != 1)
                  {
                    sub_100025F40(v71, &qword_1005CDC18, &qword_1004CF9E0);
                  }
                }

                else
                {
                  v74 = v60;
                  v75 = v119;
                  sub_1000CE508(v74, v119, type metadata accessor for NewestMessages);
                  sub_1000CEEE4(v75, type metadata accessor for NewestMessages);
                }

                v76 = v65 + v107 + v106;
                v77 = v110;
                sub_1000CEE7C(v76, v110, type metadata accessor for MessagesPendingDownload);
                v78 = *(*v77 + 16);
                sub_1000CEEE4(v77, type metadata accessor for MessagesPendingDownload);
                if (v78)
                {
                  sub_1000CEEE4(v65, type metadata accessor for MailboxSyncState);
                  v12 = v26;
                  goto LABEL_64;
                }

                v107 = v76;
                v81 = v116;
                sub_10000E268(v65 + v104, v116, &qword_1005CDC18, &qword_1004CF9E0);
                v12 = v26;
                if (v67(v81, 1, v26) == 1)
                {
                  sub_100016D2C();
                  v103 = v67;
                  v82 = v113;
                  sub_1004A7114();
                  v106 = *(v26 + 20);
                  v83 = *(v26 + 24);
                  v84 = v82;
                  v85 = v116;
                  v86 = v114;
                  sub_100020950(v84, v114);
                  *(v86 + v106) = 0;
                  *(v86 + v83) = 0;
                  v12 = v26;
                  v87 = v103(v85, 1, v26);
                  v88 = v86;
                  v58 = v105;
                  if (v87 != 1)
                  {
                    sub_100025F40(v85, &qword_1005CDC18, &qword_1004CF9E0);
                  }
                }

                else
                {
                  v88 = v114;
                  sub_1000CE508(v81, v114, type metadata accessor for NewestMessages);
                  v58 = v105;
                }

                if (v122)
                {
                  if (v122 == 1)
                  {
                    v89 = type metadata accessor for MessagesPendingDownloadPerPass(0);
                    v90 = v110;
                    sub_1000CEE7C(v107 + *(v89 + 20), v110, type metadata accessor for MessagesPendingDownload);
                    sub_1000CEEE4(v65, type metadata accessor for MailboxSyncState);
                    v91 = *(*v90 + 16);
                    sub_1000CEEE4(v90, type metadata accessor for MessagesPendingDownload);
                    sub_1000CEEE4(v88, type metadata accessor for NewestMessages);
                    if (v91)
                    {
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
                    v92 = sub_1004A70C4();
                    v93 = type metadata accessor for MessagesPendingDownloadPerPass(0);
                    v94 = *(v93 + 20);
                    if (v92)
                    {
                      v95 = v110;
                      sub_1000CEE7C(v107 + v94, v110, type metadata accessor for MessagesPendingDownload);
                      sub_1000CEEE4(v120, type metadata accessor for MailboxSyncState);
                      v96 = *v95;

                      sub_1000CEEE4(v95, type metadata accessor for MessagesPendingDownload);
                      v97 = *(v96 + 16);

                      sub_1000CEEE4(v88, type metadata accessor for NewestMessages);
                      if (v97)
                      {
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                      v98 = *(v107 + v94);
                      __chkstk_darwin(v93);
                      *(&v102 - 2) = v88;

                      v99 = v109;
                      sub_1000CC4A4(sub_1000B38D4, (&v102 - 4), v98);
                      v101 = v100;
                      v109 = v99;

                      v58 = v105;
                      sub_1000CEEE4(v120, type metadata accessor for MailboxSyncState);
                      sub_1000CEEE4(v88, type metadata accessor for NewestMessages);
                      if (v101)
                      {
                        goto LABEL_64;
                      }
                    }
                  }
                }

                else
                {
                  sub_1000CEEE4(v65, type metadata accessor for MailboxSyncState);
                  sub_1000CEEE4(v88, type metadata accessor for NewestMessages);
                }
              }

              if ((v108 & 1) == 0 && ((BYTE12(v142) & 1) != 0 || DWORD2(v142) < v58) || (v144 & 1) != 0 || v143 != v57 || *(&v143 + 1) < v56)
              {
                goto LABEL_64;
              }
            }
          }
        }

        result = sub_100063CF8(v129);
        goto LABEL_81;
      }

LABEL_64:
      v79 = v137;
      v80 = DWORD2(v137);

      sub_100088220(v128, v79, v80);
      sub_100063CF8(v129);

LABEL_81:
      v122 = 1;
      goto LABEL_44;
    }

    result = sub_100063CF8(v129);
LABEL_44:
    v25 = v125;
    if (v24 != v127)
    {
      continue;
    }

    break;
  }

LABEL_88:
  sub_100025F40(v150, &qword_1005CF7E0, &qword_1004D2CE0);
  sub_100025F40(&v149, &qword_1005CF7E8, &qword_1004D2CE8);
  sub_100025F40(&v148, &qword_1005CF7F0, &unk_1004D2CF0);
  result = v147;
  if ((v122 & 1) == 0)
  {

    return 0;
  }

  return result;
}