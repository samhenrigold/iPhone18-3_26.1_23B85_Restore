void sub_1B0B2D818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48[-v11];
  v13 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 96))
  {
    v50 = v4;
    v51 = a2;
    v16 = *(a1 + 16);
    v49 = *(a1 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a1 + 96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
      swift_beginAccess();
      sub_1B03B1BD0(v18 + v19, v15, _s13SelectedStateV7WrappedVMa);
      _s13SelectedStateV8_StorageCMa(0);
      v20 = swift_allocObject();
      sub_1B0B37C3C(v15, v20 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

      *(a1 + 96) = v20;
    }

    swift_beginAccess();
    type metadata accessor for MailboxSyncState(0);
    v21 = sub_1B0B4B854();
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
          sub_1B03B1BD0(v32 + v33, v15, _s13SelectedStateV7WrappedVMa);
          _s13SelectedStateV8_StorageCMa(0);
          v34 = swift_allocObject();
          sub_1B0B37C3C(v15, v34 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

          *(a1 + 96) = v34;
        }

        swift_beginAccess();
        sub_1B03BDE74(0xCu);
        sub_1B03BDD7C(&v52, 12);
        swift_endAccess();
      }

      sub_1B03B1BD0(v51, v12, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = sub_1B0E43988();
      v35 = sub_1B0E45908();

      if (os_log_type_enabled(v22, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v52 = v37;
        *v36 = 68158467;
        *(v36 + 4) = 2;
        *(v36 + 8) = 256;
        v38 = v12[*(v50 + 20)];
        sub_1B03B1DC0(v12, type metadata accessor for State.Logger);
        *(v36 + 10) = v38;
        *(v36 + 11) = 2160;
        *(v36 + 13) = 0x786F626C69616DLL;
        *(v36 + 21) = 2085;
        v53 = v16;
        v54 = v49;
        v39 = sub_1B0E44BA8();
        v41 = sub_1B0399D64(v39, v40, &v52);

        *(v36 + 23) = v41;
        _os_log_impl(&dword_1B0389000, v22, v35, "[%.*hhx] [%{sensitive,mask.mailbox}s] Did mark should temporarily grow window of interest.", v36, 0x1Fu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x1B272C230](v37, -1, -1);
        v42 = v36;
LABEL_18:
        MEMORY[0x1B272C230](v42, -1, -1);
LABEL_24:

        return;
      }

      v47 = v12;
    }

    else if (v21)
    {
      sub_1B03B1BD0(v51, v6, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = sub_1B0E43988();
      v23 = sub_1B0E45908();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v53 = v25;
        *v24 = 68158467;
        *(v24 + 4) = 2;
        *(v24 + 8) = 256;
        v43 = v6[*(v50 + 20)];
        sub_1B03B1DC0(v6, type metadata accessor for State.Logger);
        *(v24 + 10) = v43;
        *(v24 + 11) = 2160;
        *(v24 + 13) = 0x786F626C69616DLL;
        *(v24 + 21) = 2085;
        v55 = v16;
        v56 = v49;
        v44 = sub_1B0E44BA8();
        v46 = sub_1B0399D64(v44, v45, &v53);

        *(v24 + 23) = v46;
        v30 = "[%.*hhx] [%{sensitive,mask.mailbox}s] Did mark should temporarily grow window of interest. Fetching missing messages, first.";
        goto LABEL_17;
      }

      v47 = v6;
    }

    else
    {
      sub_1B03B1BD0(v51, v9, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = sub_1B0E43988();
      v23 = sub_1B0E45908();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v53 = v25;
        *v24 = 68158467;
        *(v24 + 4) = 2;
        *(v24 + 8) = 256;
        v26 = v9[*(v50 + 20)];
        sub_1B03B1DC0(v9, type metadata accessor for State.Logger);
        *(v24 + 10) = v26;
        *(v24 + 11) = 2160;
        *(v24 + 13) = 0x786F626C69616DLL;
        *(v24 + 21) = 2085;
        v55 = v16;
        v56 = v49;
        v27 = sub_1B0E44BA8();
        v29 = sub_1B0399D64(v27, v28, &v53);

        *(v24 + 23) = v29;
        v30 = "[%.*hhx] [%{sensitive,mask.mailbox}s] Did mark should temporarily grow window of interest. Waiting for FindMissingMessages.";
LABEL_17:
        _os_log_impl(&dword_1B0389000, v22, v23, v30, v24, 0x1Fu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        MEMORY[0x1B272C230](v25, -1, -1);
        v42 = v24;
        goto LABEL_18;
      }

      v47 = v9;
    }

    sub_1B03B1DC0(v47, type metadata accessor for State.Logger);

    goto LABEL_24;
  }
}

_BYTE *sub_1B0B2DFB0(_BYTE *result, unint64_t a2)
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

void sub_1B0B2E008(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 24) == 1)
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    v7 = *(*v2 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
          v21 = sub_1B03AB888(v32, v33);
          if (v22)
          {
            break;
          }
        }

        sub_1B03A35B8(v30, v29);
        sub_1B03A3614(__dst);
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
      sub_1B03A35B8(v30, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1B03D0E54(v10);
      }

      sub_1B03A3614(__dst);
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
        sub_1B03BB638(v4, v5, v6, 1);
        *v2 = v10;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 1;
        return;
      }
    }
  }
}

void sub_1B0B2E204(uint64_t a1, uint64_t a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v4);
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
      sub_1B03B1BD0(v11 + v12, v7, _s13SelectedStateV7WrappedVMa);
      _s13SelectedStateV8_StorageCMa(0);
      v13 = swift_allocObject();
      sub_1B0B37C3C(v7, v13 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped, _s13SelectedStateV7WrappedVMa);

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

__n128 sub_1B0B2E3A4(__n128 *a1, char **a2)
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
  sub_1B03A35B8(&v22, &v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1B03D9FC4(0, *(v8 + 2) + 1, 1, v8);
    *a2 = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1B03D9FC4((v10 > 1), v11 + 1, 1, v8);
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

char *sub_1B0B2E4C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 172);
  v4 = *(a2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v4;
  if ((result & 1) == 0)
  {
    result = sub_1B0B00920(0, *(v4 + 2) + 1, 1, v4);
    v4 = result;
    *(a2 + 8) = result;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    result = sub_1B0B00920((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
    *(a2 + 8) = result;
  }

  *(v4 + 2) = v7 + 1;
  *&v4[4 * v7 + 32] = v3;
  return result;
}

void sub_1B0B2E56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v6);
  v119 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v126 = &v113 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v113 - v11;
  sub_1B03B1BD0(a3, &v113 - v11, type metadata accessor for State.Logger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v123 = a3;
  v13 = sub_1B0E43988();
  v14 = sub_1B0E458E8();
  v15 = os_log_type_enabled(v13, v14);
  v118 = v6;
  if (v15)
  {
    v16 = swift_slowAlloc();
    *v16 = 68158208;
    *(v16 + 4) = 2;
    *(v16 + 8) = 256;
    v17 = v12[*(v6 + 20)];
    sub_1B03B1DC0(v12, type metadata accessor for State.Logger);
    *(v16 + 10) = v17;
    *(v16 + 11) = 2048;
    *(v16 + 13) = *(a1 + 16);

    _os_log_impl(&dword_1B0389000, v13, v14, "[%.*hhx] Persistence passed list of %ld mailboxes with duplicate names/IDs.", v16, 0x15u);
    MEMORY[0x1B272C230](v16, -1, -1);
  }

  else
  {
    sub_1B03B1DC0(v12, type metadata accessor for State.Logger);
  }

  v124 = *(a2 + 16);
  if (!v124)
  {
    return;
  }

  v19 = 0;
  v20 = *(a1 + 16);
  v125 = a2 + 32;
  v21 = a1 + 32;
  *&v18 = 68159491;
  v114 = v18;
  *&v18 = 68159235;
  v113 = v18;
  while (1)
  {
    v127 = v19;
    v22 = (v125 + 96 * v19);
    v23 = v22[3];
    v138 = v22[2];
    v139 = v23;
    v140[0] = v22[4];
    *(v140 + 9) = *(v22 + 73);
    v24 = v22[1];
    v136 = *v22;
    v137 = v24;
    v25 = v136;
    sub_1B0B11A84(&v136, &v130);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v20)
    {
      break;
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v45 = v28[2];
    if (v45 <= 1)
    {
    }

    else
    {
      v46 = v28[6];
      LODWORD(v121) = *(v28 + 14);
      v47 = &v28[12 * v45];
      v48 = *(v47 - 6);
      LODWORD(v122) = *(v47 - 10);
      sub_1B03B1BD0(v123, v126, type metadata accessor for State.Logger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v49 = sub_1B0E43988();
      v50 = sub_1B0E458E8();

      v128 = v46;

      LODWORD(v120) = v50;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v115 = v48;
        v52 = v51;
        v53 = swift_slowAlloc();
        v116 = v49;
        v117 = v53;
        v129[0] = v53;
        *v52 = v114;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v54 = *(v126 + *(v118 + 20));
        sub_1B03B1DC0(v126, type metadata accessor for State.Logger);
        *(v52 + 10) = v54;
        *(v52 + 11) = 2048;
        v55 = v28[2];

        *(v52 + 13) = v55;

        *(v52 + 21) = 2080;
        v56 = OpaqueMailboxID.description.getter(v25);
        v58 = v57;

        v59 = sub_1B0399D64(v56, v58, v129);

        *(v52 + 23) = v59;
        *(v52 + 31) = 2160;
        *(v52 + 33) = 0x786F626C69616DLL;
        *(v52 + 41) = 2085;
        *&v130 = v128;
        DWORD2(v130) = v121;
        v60 = sub_1B0E44BA8();
        v62 = sub_1B0399D64(v60, v61, v129);

        *(v52 + 43) = v62;
        *(v52 + 51) = 2160;
        *(v52 + 53) = 0x786F626C69616DLL;
        *(v52 + 61) = 2085;
        *&v130 = v115;
        DWORD2(v130) = v122;
        v63 = sub_1B0E44BA8();
        v65 = sub_1B0399D64(v63, v64, v129);

        *(v52 + 63) = v65;
        v66 = v116;
        _os_log_impl(&dword_1B0389000, v116, v120, "[%.*hhx] Persistence passed %ld copies of mailbox with ID %s %{sensitive,mask.mailbox}s - %{sensitive,mask.mailbox}s.", v52, 0x47u);
        v67 = v117;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v67, -1, -1);
        MEMORY[0x1B272C230](v52, -1, -1);
      }

      else
      {

        sub_1B03B1DC0(v126, type metadata accessor for State.Logger);
      }

      v68 = v137;
      v122 = DWORD2(v137);
      if (v20)
      {
        v69 = 0;
        v70 = v137 + 32;
        v71 = MEMORY[0x1E69E7CC0];
        v72 = DWORD2(v137) | (DWORD2(v137) << 32);
        v128 = v137 + 32;
        while (v69 < v20)
        {
          v73 = (v21 + 96 * v69);
          v74 = v73[3];
          v132 = v73[2];
          v133 = v74;
          v134[0] = v73[4];
          *(v134 + 9) = *(v73 + 73);
          v75 = v73[1];
          v130 = *v73;
          v131 = v75;
          v32 = __OFADD__(v69++, 1);
          if (v32)
          {
            goto LABEL_68;
          }

          if ((DWORD2(v131) | (DWORD2(v131) << 32)) == v72 && (v76 = *(v131 + 16), v76 == *(v68 + 16)))
          {
            if (v76)
            {
              v77 = v131 == v68;
            }

            else
            {
              v77 = 1;
            }

            if (!v77)
            {
              v78 = (v131 + 32);
              v79 = v70;
              while (v76)
              {
                if (*v78 != *v79)
                {
                  goto LABEL_37;
                }

                ++v78;
                ++v79;
                if (!--v76)
                {
                  goto LABEL_50;
                }
              }

              goto LABEL_64;
            }

LABEL_50:
            sub_1B0B11A84(&v130, v129);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v135 = v71;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1B0B0A324(0, v71[2] + 1, 1);
              v71 = v135;
            }

            v82 = v71[2];
            v81 = v71[3];
            if (v82 >= v81 >> 1)
            {
              sub_1B0B0A324((v81 > 1), v82 + 1, 1);
              v71 = v135;
            }

            v71[2] = v82 + 1;
            v83 = &v71[12 * v82];
            v84 = v131;
            v83[2] = v130;
            v83[3] = v84;
            v85 = v132;
            v86 = v133;
            v87 = v134[0];
            *(v83 + 105) = *(v134 + 9);
            v83[5] = v86;
            v83[6] = v87;
            v83[4] = v85;
            v70 = v128;
            if (v69 == v20)
            {
              goto LABEL_57;
            }
          }

          else
          {
LABEL_37:
            if (v69 == v20)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_67;
      }

      v71 = MEMORY[0x1E69E7CC0];
LABEL_57:
      v88 = v71[2];
      if (v88 > 1)
      {
        v89 = v71[4];
        v90 = &v71[12 * v88 + 4];
        v92 = *(v90 - 96);
        v91 = *(v90 - 88);
        v120 = v71[5];
        v121 = v91;
        sub_1B03B1BD0(v123, v119, type metadata accessor for State.Logger);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0B11A84(&v136, &v130);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        v93 = sub_1B0E43988();
        v94 = sub_1B0E458E8();
        sub_1B0B11AE0(&v136);

        v128 = v89;

        LODWORD(v117) = v94;
        v95 = v94;
        v96 = v93;
        if (os_log_type_enabled(v93, v95))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v115 = v92;
          v116 = v98;
          v129[0] = v98;
          *v97 = v113;
          *(v97 + 4) = 2;
          *(v97 + 8) = 256;
          v99 = *(v119 + *(v118 + 20));
          sub_1B03B1DC0(v119, type metadata accessor for State.Logger);
          *(v97 + 10) = v99;
          *(v97 + 11) = 2048;
          v100 = v71[2];

          *(v97 + 13) = v100;

          *(v97 + 21) = 2160;
          *(v97 + 23) = 0x786F626C69616DLL;
          *(v97 + 31) = 2085;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0B11AE0(&v136);
          *&v130 = v68;
          DWORD2(v130) = v122;
          v101 = sub_1B0E44BA8();
          v103 = sub_1B0399D64(v101, v102, v129);

          *(v97 + 33) = v103;
          *(v97 + 41) = 2080;
          v104 = OpaqueMailboxID.description.getter(v128);
          v106 = v105;

          v107 = sub_1B0399D64(v104, v106, v129);

          *(v97 + 43) = v107;
          *(v97 + 51) = 2080;
          v108 = OpaqueMailboxID.description.getter(v115);
          v110 = v109;

          v111 = sub_1B0399D64(v108, v110, v129);

          *(v97 + 53) = v111;
          _os_log_impl(&dword_1B0389000, v96, v117, "[%.*hhx] Persistence passed %ld copies of mailbox with name %{sensitive,mask.mailbox}s %s - %s.", v97, 0x3Du);
          v112 = v116;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v112, -1, -1);
          MEMORY[0x1B272C230](v97, -1, -1);
        }

        else
        {

          sub_1B03B1DC0(v119, type metadata accessor for State.Logger);

          sub_1B0B11AE0(&v136);
        }

        goto LABEL_8;
      }
    }

    sub_1B0B11AE0(&v136);
LABEL_8:
    v19 = v127 + 1;
    if (v127 + 1 == v124)
    {
      return;
    }
  }

  v26 = 0;
  v27 = v25 + 32;
  v28 = MEMORY[0x1E69E7CC0];
  v128 = v25 + 32;
  while (v26 < v20)
  {
    v29 = (v21 + 96 * v26);
    v30 = v29[3];
    v132 = v29[2];
    v133 = v30;
    v134[0] = v29[4];
    *(v134 + 9) = *(v29 + 73);
    v31 = v29[1];
    v130 = *v29;
    v131 = v31;
    v32 = __OFADD__(v26++, 1);
    if (v32)
    {
      goto LABEL_66;
    }

    if (*(&v130 + 1) == *(&v25 + 1) && (v33 = *(v130 + 16), v33 == *(v25 + 16)))
    {
      if (v33)
      {
        v34 = v130 == v25;
      }

      else
      {
        v34 = 1;
      }

      if (!v34)
      {
        v35 = (v130 + 32);
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
      sub_1B0B11A84(&v130, v129);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v135 = v28;
      if ((v37 & 1) == 0)
      {
        sub_1B0B0A324(0, v28[2] + 1, 1);
        v28 = v135;
      }

      v39 = v28[2];
      v38 = v28[3];
      if (v39 >= v38 >> 1)
      {
        sub_1B0B0A324((v38 > 1), v39 + 1, 1);
        v28 = v135;
      }

      v28[2] = v39 + 1;
      v40 = &v28[12 * v39];
      v41 = v131;
      v40[2] = v130;
      v40[3] = v41;
      v42 = v132;
      v43 = v133;
      v44 = v134[0];
      *(v40 + 105) = *(v134 + 9);
      v40[5] = v43;
      v40[6] = v44;
      v40[4] = v42;
      v27 = v128;
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

uint64_t sub_1B0B2F13C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4770, &qword_1B0EC5E50);
  v37 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v25);
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B2F400(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47F8, &qword_1B0EC5F90);
  v34 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v23);
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B2F69C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4730, qword_1B0EC5B90);
  v37 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BB0B4(&v38, &v43);
        v45 = v40;
        v46 = v41;
        v47 = v42;
        v43 = v38;
        v44 = v39;
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v24 | (v24 << 32));
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B2F9F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4760, &qword_1B0EC5E40);
  v36 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v24);
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B2FCE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47F0, &qword_1B0EC5F88);
  v34 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v23);
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B2FF84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47C0, &qword_1B0EC5EA0);
  v34 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B30248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45C0, &unk_1B0EC5930);
  result = sub_1B0E46698();
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
        sub_1B075DC38(&v41, &v53);
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

      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B30620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4818, &qword_1B0EC5FB0);
  result = sub_1B0E46698();
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
      result = sub_1B0E46C18();
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

uint64_t sub_1B0B308A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4118, &qword_1B0EC3318);
  result = sub_1B0E46698();
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
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B30B44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4638, &qword_1B0EC59D0);
  result = sub_1B0E46698();
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
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B30DF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4820, &qword_1B0EC5FB8);
  v34 = v4;
  result = sub_1B0E46698();
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
        sub_1B03B2000(v22, *(&v22 + 1));
      }

      sub_1B0E46C28();
      sub_1B0E42F48();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B310D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v34 = v6;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v25 | (v25 << 32));
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B31374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4768, &qword_1B0EC5E48);
  v37 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v40);
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B31658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4790, &qword_1B0EC5E70);
  v44 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B11A84(v57, v56);
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v23 | (v23 << 32));
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B31A64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4710, &unk_1B0EC5A90);
  v34 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
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

void sub_1B0B31D20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = v67 - v6;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v76 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v83 = (v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = v67 - v10;
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4838, &unk_1B0EC5FD0);
  v13 = sub_1B0E46698();
  v14 = v13;
  if (!*(v12 + 16))
  {
    goto LABEL_63;
  }

  v67[0] = v2;
  v15 = 0;
  v16 = *(v12 + 64);
  v69 = (v12 + 64);
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
  v75 = v13 + 64;
  v73 = v4;
  v72 = v12;
  v71 = v13;
  v70 = v7;
  v79 = v11;
  v74 = v20;
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

    v24 = v69[v15];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v19 = (v24 - 1) & v24;
LABEL_15:
      v25 = v22 | (v15 << 6);
      v26 = *(v76 + 72);
      v27 = *(v12 + 48) + v26 * v25;
      if (v4)
      {
        sub_1B0B37C3C(v27, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      else
      {
        sub_1B03B1BD0(v27, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      v81 = *(*(v12 + 56) + v25);
      sub_1B0E46C28();
      sub_1B03B1BD0(v11, v83, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        v77 = v26;
        v78 = v19;
        if (!EnumCaseMultiPayload)
        {
          v29 = v68;
          sub_1B03C60A4(v83, v68, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          MEMORY[0x1B2728D70](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();
          LOBYTE(v4) = v73;
          sub_1B0398EFC(v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          goto LABEL_47;
        }

        v67[1] = *v83;
        v43 = *(v83 + 2);
        v44 = v83[2];
        MEMORY[0x1B2728D70](2);
        MEMORY[0x1B2728D70](v43 | (v43 << 32));
        v45 = v44 + 64;
        v46 = 1 << *(v44 + 32);
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        else
        {
          v47 = -1;
        }

        v48 = v47 & *(v44 + 64);
        v49 = (v46 + 63) >> 6;
        v80 = v44;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v50 = 0;
        for (i = 0; v48; v11 = v79)
        {
          v82 = v50;
          v52 = i;
LABEL_42:
          v53 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
          v54 = (*(v80 + 56) + 24 * (v53 | (v52 << 6)));
          v55 = *v54;
          v57 = *(v54 + 1);
          v56 = *(v54 + 2);
          sub_1B03B2000(v57, v56);
          v86 = v91;
          v87 = v92;
          v88 = v93;
          v84 = v89;
          v85 = v90;
          sub_1B0E46C88();
          MEMORY[0x1B2728D70](v55);
          sub_1B03B2000(v57, v56);
          sub_1B0E42F48();
          sub_1B0391D50(v57, v56);
          sub_1B0391D50(v57, v56);
          v50 = sub_1B0E46CB8() ^ v82;
        }

        while (1)
        {
          v52 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v52 >= v49)
          {

            MEMORY[0x1B2728D70](v50);

            LOBYTE(v4) = v73;
            v12 = v72;
            v14 = v71;
            goto LABEL_47;
          }

          v48 = *(v45 + 8 * v52);
          ++i;
          if (v48)
          {
            v82 = v50;
            i = v52;
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
        v77 = v26;
        v78 = v19;
        v80 = *v83;
        v30 = *(v83 + 2);
        v31 = v83[2];
        MEMORY[0x1B2728D70](3);
        MEMORY[0x1B2728D70](v30 | (v30 << 32));
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
        v82 = v31;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v37 = 0;
        v38 = 0;
        if (v35)
        {
          while (1)
          {
            v39 = v38;
LABEL_30:
            v40 = (*(v82 + 56) + 16 * (__clz(__rbit64(v35)) | (v39 << 6)));
            v42 = *v40;
            v41 = v40[1];
            sub_1B03B2000(*v40, v41);
            if (v41 >> 60 == 15)
            {
              break;
            }

            v35 &= v35 - 1;
            v86 = v91;
            v87 = v92;
            v88 = v93;
            v84 = v89;
            v85 = v90;
            sub_1B0E46C88();
            sub_1B0E42F48();
            sub_1B0391D50(v42, v41);
            v37 ^= sub_1B0E46CB8();
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

        MEMORY[0x1B2728D70](v37);

        LOBYTE(v4) = v73;
        v12 = v72;
        v14 = v71;
        v11 = v79;
LABEL_47:
        v19 = v78;
        v26 = v77;
      }

      else
      {
        MEMORY[0x1B2728D70](1);
      }

      v58 = sub_1B0E46CB8();
      v59 = -1 << *(v14 + 32);
      v60 = v58 & ~v59;
      v61 = v60 >> 6;
      if (((-1 << v60) & ~*(v75 + 8 * (v60 >> 6))) == 0)
      {
        v62 = 0;
        v63 = (63 - v59) >> 6;
        while (++v61 != v63 || (v62 & 1) == 0)
        {
          v64 = v61 == v63;
          if (v61 == v63)
          {
            v61 = 0;
          }

          v62 |= v64;
          v65 = *(v75 + 8 * v61);
          if (v65 != -1)
          {
            v21 = __clz(__rbit64(~v65)) + (v61 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_68;
      }

      v21 = __clz(__rbit64((-1 << v60) & ~*(v75 + 8 * (v60 >> 6)))) | v60 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v75 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1B0B37C3C(v11, *(v14 + 48) + v26 * v21, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(*(v14 + 56) + v21) = v81;
      ++*(v14 + 16);
      v20 = v74;
      goto LABEL_8;
    }
  }

  if (v4)
  {
    v66 = 1 << *(v12 + 32);
    v3 = v67[0];
    if (v66 >= 64)
    {
      bzero(v69, ((v66 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v69 = -1 << v66;
    }

    *(v12 + 16) = 0;
LABEL_63:
  }

  else
  {

    v3 = v67[0];
  }

  *v3 = v14;
}

void sub_1B0B325B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v75 = &v72 - v6;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4828, &qword_1B0EC5FC0);
  v14 = sub_1B0E46698();
  v15 = v14;
  if (!*(v13 + 16))
  {
    goto LABEL_61;
  }

  v73 = v2;
  v16 = 0;
  v17 = *(v13 + 64);
  v76 = (v13 + 64);
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
  v83 = v4;
  v81 = v13;
  v80 = v14;
  v79 = v7;
  v78 = v9;
  v77 = v12;
  v82 = v21;
  v22 = v7;
  v23 = v4;
  v84 = v14 + 64;
LABEL_8:
  if (v20)
  {
    v26 = v22;
    v27 = __clz(__rbit64(v20));
    v86 = (v20 - 1) & v20;
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

    v29 = v76[v16];
    ++v28;
    if (v29)
    {
      v26 = v22;
      v27 = __clz(__rbit64(v29));
      v86 = (v29 - 1) & v29;
LABEL_15:
      v30 = v27 | (v16 << 6);
      v31 = *(*(v13 + 48) + 8 * v30);
      v32 = *(*(v13 + 56) + 8 * v30);
      if ((v23 & 1) == 0)
      {

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      v87 = v32;
      sub_1B0E46C28();
      v33 = *(*v31 + 96);
      swift_beginAccess();
      sub_1B03B1BD0(v31 + v33, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B03B1BD0(v12, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v22 = v26;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v89 = v31;
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v35 = v75;
          sub_1B03C60A4(v9, v75, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          MEMORY[0x1B2728D70](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          v22 = v26;
          sub_1B0E447C8();
          v31 = v89;
          sub_1B0398EFC(v35, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          goto LABEL_46;
        }

        v74 = *v9;
        v48 = *(v9 + 2);
        v49 = *(v9 + 2);
        MEMORY[0x1B2728D70](2);
        MEMORY[0x1B2728D70](v48 | (v48 << 32));
        v50 = v49 + 64;
        v51 = 1 << *(v49 + 32);
        if (v51 < 64)
        {
          v52 = ~(-1 << v51);
        }

        else
        {
          v52 = -1;
        }

        v53 = v52 & *(v49 + 64);
        v54 = (v51 + 63) >> 6;
        v85 = v49;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v55 = 0;
        for (i = 0; v53; v31 = v89)
        {
          v88 = v55;
          v57 = i;
LABEL_41:
          v58 = __clz(__rbit64(v53));
          v53 &= v53 - 1;
          v59 = (*(v85 + 56) + 24 * (v58 | (v57 << 6)));
          v60 = *v59;
          v62 = *(v59 + 1);
          v61 = *(v59 + 2);
          sub_1B03B2000(v62, v61);
          v92 = v97;
          v93 = v98;
          v94 = v99;
          v91 = v96;
          v90 = v95;
          sub_1B0E46C88();
          MEMORY[0x1B2728D70](v60);
          sub_1B03B2000(v62, v61);
          sub_1B0E42F48();
          sub_1B0391D50(v62, v61);
          sub_1B0391D50(v62, v61);
          v55 = sub_1B0E46CB8() ^ v88;
        }

        while (1)
        {
          v57 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v57 >= v54)
          {

            MEMORY[0x1B2728D70](v55);

            v13 = v81;
            v15 = v80;
            v22 = v79;
            v9 = v78;
            v12 = v77;
            goto LABEL_46;
          }

          v53 = *(v50 + 8 * v57);
          ++i;
          if (v53)
          {
            v88 = v55;
            i = v57;
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
        v85 = *v9;
        v36 = *(v9 + 2);
        v37 = *(v9 + 2);
        MEMORY[0x1B2728D70](3);
        MEMORY[0x1B2728D70](v36 | (v36 << 32));
        v38 = 1 << *(v37 + 32);
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        else
        {
          v39 = -1;
        }

        v40 = v39 & *(v37 + 64);
        v41 = (v38 + 63) >> 6;
        v88 = v37;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v42 = 0;
        v43 = 0;
        if (v40)
        {
          while (1)
          {
            v44 = v43;
LABEL_29:
            v45 = (*(v88 + 56) + 16 * (__clz(__rbit64(v40)) | (v44 << 6)));
            v46 = *v45;
            v47 = v45[1];
            sub_1B03B2000(*v45, v47);
            if (v47 >> 60 == 15)
            {
              break;
            }

            v40 &= v40 - 1;
            v92 = v97;
            v93 = v98;
            v94 = v99;
            v91 = v96;
            v90 = v95;
            sub_1B0E46C88();
            sub_1B0E42F48();
            sub_1B0391D50(v46, v47);
            v42 ^= sub_1B0E46CB8();
            v43 = v44;
            if (!v40)
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
            v44 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_65;
            }

            if (v44 >= v41)
            {
              break;
            }

            v40 = *(v37 + 64 + 8 * v44);
            ++v43;
            if (v40)
            {
              goto LABEL_29;
            }
          }
        }

        MEMORY[0x1B2728D70](v42);

        v13 = v81;
        v15 = v80;
        v22 = v79;
        v9 = v78;
        v12 = v77;
        v31 = v89;
      }

      else
      {
        MEMORY[0x1B2728D70](1);
      }

LABEL_46:
      sub_1B03B1DC0(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
      v63 = sub_1B0E46CB8();
      v64 = -1 << *(v15 + 32);
      v65 = v63 & ~v64;
      v66 = v65 >> 6;
      if (((-1 << v65) & ~*(v84 + 8 * (v65 >> 6))) == 0)
      {
        v67 = 0;
        v68 = (63 - v64) >> 6;
        v25 = v87;
        while (++v66 != v68 || (v67 & 1) == 0)
        {
          v69 = v66 == v68;
          if (v66 == v68)
          {
            v66 = 0;
          }

          v67 |= v69;
          v70 = *(v84 + 8 * v66);
          if (v70 != -1)
          {
            v24 = __clz(__rbit64(~v70)) + (v66 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_66;
      }

      v24 = __clz(__rbit64((-1 << v65) & ~*(v84 + 8 * (v65 >> 6)))) | v65 & 0x7FFFFFFFFFFFFFC0;
      v25 = v87;
LABEL_7:
      *(v84 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v15 + 48) + 8 * v24) = v31;
      *(*(v15 + 56) + 8 * v24) = v25;
      ++*(v15 + 16);
      v21 = v82;
      v20 = v86;
      v23 = v83;
      goto LABEL_8;
    }
  }

  if (v23)
  {
    v71 = 1 << *(v13 + 32);
    v3 = v73;
    if (v71 >= 64)
    {
      bzero(v76, ((v71 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v76 = -1 << v71;
    }

    *(v13 + 16) = 0;
LABEL_61:
  }

  else
  {

    v3 = v73;
  }

  *v3 = v15;
}

uint64_t sub_1B0B32E60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4800, &qword_1B0EC5F98);
  v30 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B330F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4840, &qword_1B0EC6FD0);
  v37 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B2000(v26, v25);
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v42);
      sub_1B0E46C88();
      MEMORY[0x1B2728D70](v41 | (v41 << 32));
      sub_1B0E42F48();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B3342C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4830, &qword_1B0EC5FC8);
  v32 = v4;
  result = sub_1B0E46698();
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
        sub_1B03B2000(v23, v35);
      }

      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B336FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4850, &qword_1B0EC6FC0);
  result = sub_1B0E46698();
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
        sub_1B03B2000(v29, *(&v29 + 1));
      }

      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B33990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4848, &qword_1B0EC6FB0);
  v34 = v4;
  result = sub_1B0E46698();
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
        sub_1B03B2000(v23, v24);
      }

      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B33C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4780, &qword_1B0EC5E60);
  v35 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v24 | (v24 << 32));
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B33EF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4778, &qword_1B0EC5E58);
  v40 = v4;
  result = sub_1B0E46698();
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
        sub_1B03C60A4(v28, v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      else
      {
        sub_1B03B5C80(v28, v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v26 | (v26 << 32));
      result = sub_1B0E46CB8();
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
      result = sub_1B03C60A4(v41, *(v9 + 56) + v27 * v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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

uint64_t sub_1B0B34270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4788, &qword_1B0EC5E68);
  v35 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v24 | (v24 << 32));
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B34570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47C8, &qword_1B0EC5EA8);
  v32 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v23 | (v23 << 32));
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B34818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47E8, &qword_1B0EC5EC8);
  v34 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B34AE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B34D80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4810, &qword_1B0EC5FA8);
  v34 = v4;
  result = sub_1B0E46698();
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B3503C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4808, &qword_1B0EC5FA0);
  v38 = v4;
  result = sub_1B0E46698();
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
        sub_1B03C60A4(v25, v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      else
      {
        sub_1B03B5C80(v25, v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      sub_1B0B0ADF0(v40, v39);
      sub_1B0B0ADF0(v40, v26);
      result = sub_1B0E46CB8();
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
      result = sub_1B03C60A4(v7, *(v10 + 56) + v24 * v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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

unint64_t *sub_1B0B353C8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

    sub_1B0B11A84(a4, &v10);
    sub_1B0B36A5C(v7, a2, a3, a4);
    v9 = v8;

    sub_1B0B11AE0(a4);
    sub_1B0B11AE0(a4);
    return v9;
  }

  return result;
}

unint64_t sub_1B0B35474(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = v3[1];
  v6 = *(v5 + 16);
  v7 = v5 + 32;
  if (*v3)
  {
    v8 = sub_1B0BA7CA4(a1, a2, v7, v6, (*v3 + 16), *v3 + 32);
    if (v9)
    {
      return v8;
    }
  }

  else
  {
    v8 = sub_1B03A912C(a1, a2, v7, v6);
    if (v10)
    {
      return v8;
    }
  }

  v11 = a3[9];
  v17[8] = a3[8];
  v17[9] = v11;
  v17[10] = a3[10];
  v12 = a3[5];
  v17[4] = a3[4];
  v17[5] = v12;
  v13 = a3[7];
  v17[6] = a3[6];
  v17[7] = v13;
  v14 = a3[1];
  v17[0] = *a3;
  v17[1] = v14;
  v15 = a3[3];
  v17[2] = a3[2];
  v17[3] = v15;
  sub_1B0398EFC(v17, &qword_1EB6E4798, &qword_1B0EC5E78);
  sub_1B0B3555C(v8, *(v3[2] + 16) - 1);
  sub_1B0B35774(a3);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  return v8;
}

unint64_t sub_1B0B3555C(unint64_t result, unint64_t a2)
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
          sub_1B03A35B8(&v61, v60);
          sub_1B03A35B8(&v72, v60);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0B946F0(v4);
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
            result = sub_1B03A3614(v59);
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
              result = sub_1B03A3614(v60);
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

void sub_1B0B35774(_OWORD *a1@<X8>)
{
  if (*(*v1 + 16))
  {
    sub_1B0B35E40(&v9);
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
    if (sub_1B03BCF14(v20) == 1)
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
      sub_1B0398EFC(v8, &qword_1EB6E4798, &qword_1B0EC5E78);
      sub_1B0BCB2E8(*(*v1 + 16) - 1, a1);
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

uint64_t sub_1B0B35884(uint64_t a1, uint64_t *a2)
{
  v40 = _s19UserInitiatedSearchVMa(0);
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v38 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4400, &qword_1B0EC5168);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v38 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47A0, &qword_1B0EC5E80);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v38 - v16);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47A8, &qword_1B0EC5E88);
  v51 = sub_1B03CFB8C(&qword_1EB6DB3C8, &qword_1EB6E47A8, &qword_1B0EC5E88);
  v49[0] = a1;
  v45 = v49;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0BA7F24(sub_1B0B37920, v44);
  v19 = *(*a2 + 16);
  if (v19 < result)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v38 = 0;
    v43 = v9;
    sub_1B0BAD260(result, v19);
    v20 = __swift_project_boxed_opaque_existential_0(v49, v50);
    v42 = &v38;
    v21 = MEMORY[0x1EEE9AC00](v20);
    (*(v23 + 16))(&v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v46);
    sub_1B0E44F08();
    v42 = (v10 + 48);
LABEL_3:
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v46, AssociatedTypeWitness);
      sub_1B0E45E38();
      v24 = v43;
      if ((*v42)(v17, 1, v43) == 1)
      {
        break;
      }

      v25 = *v17;
      v26 = *(v24 + 48);
      *v14 = *v17;
      result = sub_1B0B37C3C(v17 + v26, v14 + v26, _s19UserInitiatedSearchV5StateOMa);
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

        sub_1B03B1BD0(v29 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27++, v8, _s19UserInitiatedSearchVMa);
        v31 = *v8;
        result = sub_1B03B1DC0(v8, _s19UserInitiatedSearchVMa);
        if (v31 == v25)
        {
          sub_1B0398EFC(v14, &qword_1EB6E4400, &qword_1B0EC5168);
          a2 = v28;
          goto LABEL_3;
        }
      }

      v32 = v39;
      sub_1B03B5C80(v14, v39, &qword_1EB6E4400, &qword_1B0EC5168);
      v33 = *(v43 + 48);
      v34 = v40;
      v35 = v41;
      *v41 = v25;
      sub_1B0B37C3C(v32 + v33, v35 + *(v34 + 20), _s19UserInitiatedSearchV5StateOMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1B0AFFFD4(0, v29[2] + 1, 1, v29);
      }

      v37 = v29[2];
      v36 = v29[3];
      if (v37 >= v36 >> 1)
      {
        v29 = sub_1B0AFFFD4((v36 > 1), v37 + 1, 1, v29);
      }

      sub_1B0398EFC(v14, &qword_1EB6E4400, &qword_1B0EC5168);
      v29[2] = v37 + 1;
      sub_1B0B37C3C(v41, v29 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v37, _s19UserInitiatedSearchVMa);
      a2 = v28;
      *v28 = v29;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    return __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  return result;
}

void sub_1B0B35E40(void *a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B0B946F0(v3);
  }

  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = v4 - 1;
    memmove(a1, &v3[176 * v4 - 144], 0xB0uLL);
    *(v3 + 2) = v5;
    *v1 = v3;

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B0B35EC8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
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
  sub_1B03A35B8(&v27, v25);
  sub_1B03B5C80(&v26, v25, &qword_1EB6E47B0, &qword_1B0EC5E90);
  return sub_1B03A3614(v38);
}

uint64_t sub_1B0B35FC8(uint64_t a1, uint64_t *a2)
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
        sub_1B03A35B8(v50, v49);
        sub_1B03A35B8(v51, v49);
        v26 = sub_1B03B5F54(v50, v51);
        sub_1B03A3614(v51);
        result = sub_1B03A3614(v50);
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
    result = sub_1B0B733CC(result, v5);
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
        sub_1B09AFB1C(v36, *v33);
        sub_1B09AFB1C(v39, v40);
        LOBYTE(v37) = static SearchRequest.__derived_struct_equals(_:_:)(v37, v36, v35, v38, v39, v40);
        sub_1B09AFBA0(v39, v40);
        result = sub_1B09AFBA0(v36, v35);
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
    if ((sub_1B0B63AFC(v46, v47) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  if ((sub_1B0B73180(*(a1 + 32), v48[4]) & 1) == 0 || (sub_1B0B732C0(*(a1 + 40), v48[5]) & 1) == 0)
  {
    return 0;
  }

  v41 = *(a1 + 56);
  v42 = *(a1 + 64);
  v43 = v48[7];
  v44 = v48[8];
  v45 = sub_1B0B63D20(*(a1 + 48), v48[6]);
  result = 0;
  if ((v45 & 1) != 0 && v41 == v43 && v42 == v44)
  {
    return *(a1 + 72) == *(v48 + 18);
  }

  return result;
}

uint64_t sub_1B0B36244(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1B0B36258(uint64_t a1, uint64_t a2)
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
      sub_1B0E46C28();
      sub_1B0E46C88();
      v11 = sub_1B0E46CB8();
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

uint64_t sub_1B0B363DC(uint64_t *a1, uint64_t a2)
{
  v6 = _s19UserInitiatedSearchVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = *a1;
  result = sub_1B0B36258(*a1, a2);
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
      sub_1B03B1BD0(v16 + v42 + v26 * v19, v22, _s19UserInitiatedSearchVMa);
      if (*(v20 + 16) && (v28 = *v43, sub_1B0E46C28(), sub_1B0E46C88(), v29 = sub_1B0E46CB8(), v20 = v41, v30 = -1 << *(v41 + 32), v31 = v29 & ~v30, ((*(v21 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
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
        result = sub_1B03B1DC0(v43, _s19UserInitiatedSearchVMa);
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
        result = sub_1B03B1DC0(v43, _s19UserInitiatedSearchVMa);
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
          result = sub_1B03B1BD0(&v25[v34], v39, _s19UserInitiatedSearchVMa);
          if (v19 >= v33)
          {
            goto LABEL_32;
          }

          sub_1B03B1BD0(&v25[v27], v38, _s19UserInitiatedSearchVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_1B0B8C93C(v16);
          }

          v35 = v16 + v42;
          result = sub_1B0B37BA0(v38, v16 + v42 + v34);
          if (v19 >= v16[2])
          {
            goto LABEL_33;
          }

          result = sub_1B0B37BA0(v39, &v35[v27]);
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

uint64_t sub_1B0B36750(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4)
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
    sub_1B03B9A2C(*a3, a3[1], a3[2], 1);
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

  result = sub_1B03D0E54(v6);
  v19 = result;
LABEL_16:
  if (v8 >= *(v19 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1B0B2E204(v19 + 176 * v8 + 32, v4);
    sub_1B03BB638(v6, v9, v11, 1);
    result = 0;
    *v5 = v19;
    *v10 = 0;
    v10[1] = 0;
    *(v5 + 24) = 1;
  }

  return result;
}

uint64_t sub_1B0B368C4(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, char a5)
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
    sub_1B03B9A2C(*a3, a3[1], a3[2], 1);
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

  result = sub_1B03D0E54(v8);
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

    sub_1B03BB638(v8, v11, v13, 1);
    result = 0;
    *v5 = v21;
    *v12 = 0;
    v12[1] = 0;
    *(v5 + 24) = 1;
  }

  return result;
}

void sub_1B0B36A5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = 0;
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
    v14 = (*(a3 + 56) + 24 * v13);
    v15 = *(v14 + 1);
    v16 = *a4;
    v17 = a4[1];
    v18 = *v14;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v18) = SyncRequest.includes(_:)(v16, v17, v18, v15);

    if (v18)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1B0B22418(a1, a2, v22, a3);
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

unint64_t *sub_1B0B36BCC(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    sub_1B0B11A84(a2, v14);
    sub_1B0B11A84(a2, v14);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v11 = swift_slowAlloc();
      sub_1B0B11A84(a2, v14);
      v10 = sub_1B0B353C8(v11, v6, a1, a2);
      MEMORY[0x1B272C230](v11, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    sub_1B0B11A84(a2, v14);
    v8 = sub_1B0B11A84(a2, v14);
  }

  MEMORY[0x1EEE9AC00](v8);
  bzero(&v14[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v7);
  sub_1B0B11A84(a2, v14);
  sub_1B0B36A5C(&v14[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v6, a1, a2);
  v10 = v9;
  sub_1B0B11AE0(a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_8:
  sub_1B0B11AE0(a2);
  sub_1B0B11AE0(a2);
  return v10;
}

uint64_t sub_1B0B36DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a2;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v71 = MEMORY[0x1E69E7CC0];
  sub_1B0B09D24(0, v5, 0);
  v7 = v71;
  v38 = v5;
  if (v5)
  {
    v8 = 0;
    v37 = a1 + 32;
    do
    {
      v9 = (v37 + 96 * v8);
      v10 = v9[3];
      v74 = v9[2];
      v75 = v10;
      v76[0] = v9[4];
      *(v76 + 9) = *(v9 + 73);
      v11 = v9[1];
      v72 = *v9;
      v73 = v11;
      sub_1B0B11A84(&v72, v51);
      sub_1B0B11A84(&v72, v51);
      v12 = sub_1B0B36BCC(v77, &v72);
      sub_1B0B11AE0(&v72);
      v13 = sub_1B0B24714(v12);

      v14 = *(v13 + 16);
      v15 = sub_1B03ABAA0();
      v16 = MEMORY[0x1B2727570](v14, &type metadata for SyncRequest.ID, v15);
      *&v51[0] = v16;
      if (v14)
      {
        v17 = 32;
        do
        {
          sub_1B03FF318(&v40, *(v13 + v17));
          v17 += 4;
          --v14;
        }

        while (v14);

        v18 = *&v51[0];
      }

      else
      {
        v18 = v16;
      }

      sub_1B0B11A84(&v72, v51);
      Set<>.makeNonEmpty()(v18);
      v20 = v19;

      v21 = *(a3 + 72);
      *(a3 + 72) = (v21 + 1) & 0xFFFFFF;
      v68 = v74;
      v69 = v75;
      *v70 = v76[0];
      *&v70[9] = *(v76 + 9);
      v66 = v72;
      v67 = v73;
      if (BYTE4(v74) & 1) != 0 || (v76[0])
      {
        v22 = 0;
        v23 = 0;
        v24 = 1;
      }

      else
      {
        v24 = 0;
        v22 = v74;
        v23 = *(&v75 + 1);
      }

      v42 = v68;
      v43 = v69;
      v44 = *v70;
      v45 = *&v70[16];
      v40 = v66;
      v41 = v67;
      v51[2] = v68;
      v51[3] = v69;
      v51[4] = *v70;
      v51[5] = *&v70[16];
      v65 = 1;
      v64 = v24;
      *&v46 = 0;
      DWORD2(v46) = 0;
      BYTE12(v46) = 1;
      *&v47 = v22;
      *(&v47 + 1) = v23;
      LOBYTE(v48) = v24;
      *(&v48 + 1) = v20;
      *&v49 = v6;
      *(&v49 + 1) = v6;
      *&v50 = 0;
      BYTE8(v50) = 2;
      HIDWORD(v50) = v21;
      v51[0] = v66;
      v51[1] = v67;
      v52 = 0;
      v53 = 0;
      v54 = 1;
      v55 = v22;
      v56 = v23;
      v57 = v24;
      v58 = v20;
      v59 = v6;
      v60 = v6;
      v61 = 0;
      v62 = 2;
      v63 = v21;
      sub_1B03A35B8(&v40, v39);
      sub_1B03A3614(v51);
      sub_1B0B11AE0(&v72);
      v71 = v7;
      v26 = *(v7 + 16);
      v25 = *(v7 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1B0B09D24((v25 > 1), v26 + 1, 1);
        v7 = v71;
      }

      ++v8;
      *(v7 + 16) = v26 + 1;
      v27 = (v7 + 176 * v26);
      v28 = v40;
      v29 = v42;
      v27[3] = v41;
      v27[4] = v29;
      v27[2] = v28;
      v30 = v43;
      v31 = v44;
      v32 = v46;
      v27[7] = v45;
      v27[8] = v32;
      v27[5] = v30;
      v27[6] = v31;
      v33 = v47;
      v34 = v48;
      v35 = v50;
      v27[11] = v49;
      v27[12] = v35;
      v27[9] = v33;
      v27[10] = v34;
    }

    while (v8 != v38);
  }

  return v7;
}

unint64_t sub_1B0B370D4(unint64_t result, char a2, void *a3)
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
      result = sub_1B03B5C80(&v44, v43, &qword_1EB6E47B8, &qword_1B0EC5E98);
      if (!v21)
      {
        return result;
      }

      v37 = v16;
      v36 = v3;
      v22 = *v49;
      result = sub_1B03AB888(v21, v20);
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
        result = sub_1B0E46BA8();
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
      sub_1B0B8E450();
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
        result = sub_1B0B11AE0(&v44);
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

    sub_1B0B31658(v27, a2 & 1);
    result = sub_1B03AB888(v21, v20);
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

unint64_t sub_1B0B37370(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, void *a4)
{
  v4 = a4;
  v6 = a4[2];
  v99 = a4 + 2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B946F0(v6);
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
        sub_1B0B379A4(v97);
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
        sub_1B03B5C80(v83, v97, &qword_1EB6E47B0, &qword_1B0EC5E90);
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
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
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
        sub_1B0398EFC(v97, &qword_1EB6E47B0, &qword_1B0EC5E90);
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
      result = sub_1B03BCF14(v97);
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

      result = sub_1B0BA7CA4(v10, v11, v29, v30, (*v4 + 16), *v4 + 32);
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
      sub_1B03A35B8(v96, v83);

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
      sub_1B03A3614(&v84);
      result = sub_1B03A3614(v96);
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
    sub_1B03A5284(v10, v11, v31);
    v4[2] = v6;
    v57 = *(v6 + 16);
    v56 = *(v6 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_1B0B09D24((v56 > 1), v57 + 1, 1);
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

double sub_1B0B378E0(_OWORD *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

double sub_1B0B379A4(_OWORD *a1)
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

uint64_t sub_1B0B37AF4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B0B37B3C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B0B37BA0(uint64_t a1, uint64_t a2)
{
  v4 = _s19UserInitiatedSearchVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B37C0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B03B2000(result, a2);
  }

  return result;
}

uint64_t sub_1B0B37C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B0B37CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = a3;
  v8 = sub_1B03CD5D8();
  v11 = MEMORY[0x1B2727570](v4, &type metadata for ConnectionID, v8);
  if (v6 == a4)
  {

    return;
  }

  if (a4 < 0)
  {
    goto LABEL_15;
  }

  if (v6 >= a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    while (*(a2 + 16) >= a4)
    {
      if (a4 == v6)
      {
        goto LABEL_13;
      }

      v9 = *(a2 + 4 * v6++ + 32);
      sub_1B0B01B6C(&v10, v9);
      if (a4 == v6)
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

uint64_t sub_1B0B37DDC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1B2727570](v7, a3, v8);
  v10 = 0;
  v18 = result;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  for (i = (v11 + 63) >> 6; v13; result = a4(v17, *(*(a1 + 48) + ((v15 << 8) | (4 * v16)))))
  {
    v15 = v10;
LABEL_9:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= i)
    {

      return v18;
    }

    v13 = *(a1 + 64 + 8 * v15);
    ++v10;
    if (v13)
    {
      v10 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B37EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v6 = MessageIdentifierSet.count.getter();
  v7 = sub_1B043CF70();
  v8 = MEMORY[0x1B2727570](v6, &type metadata for UID, v7);
  v21 = v8;
  sub_1B03B5C80(a1, v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = MessageIdentifierSet.startIndex.getter(v5);
  v11 = v10;
  sub_1B0398EFC(a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v9 != MessageIdentifierSet.endIndex.getter(v5) || v11 != v12)
  {
    do
    {
      do
      {
        MessageIdentifierSet.subscript.getter(v11, v5, &v20 + 4);
        v14 = HIDWORD(v20);
        MessageIdentifierSet.index(_:offsetBy:)(v9, v11, 1);
        v9 = v15;
        v11 = v16;
        sub_1B0B02EC8(&v20 + 1, v14);
      }

      while (v9 != MessageIdentifierSet.endIndex.getter(v5));
    }

    while (v11 != v17);
    v8 = v21;
  }

  v18 = &v4[*(v2 + 36)];
  *v18 = v9;
  v18[1] = v11;
  sub_1B0398EFC(v4, &qword_1EB6E1BF8, &qword_1B0E9AFF0);
  return v8;
}

uint64_t sub_1B0B380AC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

uint64_t sub_1B0B38150(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
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
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

uint64_t sub_1B0B38204()
{
  if ((*(v0 + 192) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
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
    sub_1B03A35B8(&v42, v41);
    v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = MailboxName.isInbox.getter(v19, v15);

    if (v20)
    {
      break;
    }

    sub_1B03A3614(&v42);
    if (!--v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v22 = v18;
  v23 = *(v39 + 120);
  if (v23 && (v24 = MailboxName.inbox.unsafeMutableAddressor(), *(v23 + 16)) && (v25 = sub_1B03AB888(*v24, *(v24 + 2)), (v26 & 1) != 0))
  {
    v27 = *(v23 + 56) + 72 * v25;
    v28 = *(v27 + 24);
    v38 = *(v27 + 32);
    v40 = *(v27 + 56);
    v29 = *(v27 + 64);
    v30 = *(v27 + 65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4878, &unk_1B0EC6068);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1B0EC1E70;
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07C9330(v37);
    sub_1B03A3614(&v42);
    return v36;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4878, &unk_1B0EC6068);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1B0EC1E70;
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07C9330(v12);
    sub_1B03A3614(&v42);
    return v35;
  }
}

uint64_t sub_1B0B384B4(uint64_t a1)
{
  v2 = sub_1B03A7A88();
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0397D14();
  v8 = v7;
  if (v5 == 3 || v5 == 2)
  {

    v9 = 1;
    goto LABEL_4;
  }

  v12 = sub_1B0BAE1A4(v7);
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
  sub_1B0397E04(&unk_1F2710548, v6);
  sub_1B0BAE1A4(v8);
  v13 = sub_1B039109C(v6);

  if (v13 & 1) == 0 && (v4)
  {
    sub_1B0BAE1A4(v8);
  }

LABEL_4:

  v10 = sub_1B03A8380(*(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192) & 1, *(a1 + 120), v2, v9 & 1, *(a1 + 208));

  return v10;
}

uint64_t sub_1B0B38604(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B0451F2C();
  result = MEMORY[0x1B2727570](v2, &type metadata for MailboxName, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *v5;
      v7 = *(v5 - 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03AB2E0(&v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1B0B386A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B0B38964();
  result = MEMORY[0x1B2727570](v2, &type metadata for PermanentFlag, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B01D70(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1B0B3876C(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B0B38A20();
  result = MEMORY[0x1B2727570](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1B041C914(v12, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B02C9C(v8, v5);
      sub_1B03BD59C(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1B0B388CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B03B8BD8();
  result = MEMORY[0x1B2727570](v2, &type metadata for OpaqueMailboxID, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B019E4(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_1B0B38964()
{
  result = qword_1EB6DE8C8;
  if (!qword_1EB6DE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE8C8);
  }

  return result;
}

uint64_t sub_1B0B389C0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1B0B38A20()
{
  result = qword_1EB6DD960;
  if (!qword_1EB6DD960)
  {
    type metadata accessor for MoveAndCopyMessages.CommandID(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD960);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B0B38A9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1B0B38AE4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B0B38BA0(int a1)
{
  v2 = sub_1B0E46CE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4740, &qword_1B0EC5C58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v15 - v7;
  v15[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4748, &qword_1B0EC5C60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B0EC60E0;
  *(v9 + 32) = 0x786F626E497369;
  *(v9 + 40) = 0xE700000000000000;
  v10 = MEMORY[0x1E69E6370];
  *(v9 + 48) = a1 >= 0;
  *(v9 + 72) = v10;
  *(v9 + 80) = 0x696C696269736976;
  *(v9 + 88) = 0xEA00000000007974;
  *(v9 + 96) = (a1 & 0x40000000) != 0;
  *(v9 + 120) = &_s11UserVisibleON;
  *(v9 + 128) = 0xD000000000000010;
  *(v9 + 136) = 0x80000001B0F2B3D0;
  *(v9 + 144) = (a1 & 0x20000000) == 0;
  *(v9 + 168) = v10;
  strcpy((v9 + 176), "userPriority");
  *(v9 + 189) = 0;
  *(v9 + 190) = -5120;
  *(v9 + 192) = (a1 >> 14) & 0x3FFF;
  *(v9 + 216) = &_s12PriorityInfoV5OrderVN;
  *(v9 + 224) = 0xD000000000000012;
  *(v9 + 232) = 0x80000001B0F2B3F0;
  *(v9 + 264) = &_s12PriorityInfoV5OrderVN;
  *(v9 + 240) = a1 & 0x3FFF;
  v11 = *MEMORY[0x1E69E75B8];
  v12 = sub_1B0E46CD8();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v8, v11, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return sub_1B0E46CF8();
}

unint64_t sub_1B0B38E94()
{
  result = qword_1EB6E4880;
  if (!qword_1EB6E4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4880);
  }

  return result;
}

uint64_t sub_1B0B38EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4478, &qword_1B0EC51F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B0B38F8C(uint64_t a1)
{
  sub_1B0AD434C(319, &qword_1EB6DE198, &type metadata for UID);
  if (v1 <= 0x3F)
  {
    sub_1B0AD434C(319, &qword_1EB6DE908, &type metadata for UIDValidity);
    if (v2 <= 0x3F)
    {
      sub_1B0B39190(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PendingServerResponses(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PendingPersistenceUpdates(319);
          if (v5 <= 0x3F)
          {
            sub_1B0B391EC(319);
            if (v6 <= 0x3F)
            {
              sub_1B0B39250(319, &qword_1EB6DDEB8, type metadata accessor for MessageBatches);
              if (v7 <= 0x3F)
              {
                sub_1B0B39250(319, &qword_1EB6DDEA0, type metadata accessor for NewestMessages);
                if (v8 <= 0x3F)
                {
                  _s15MissingMessagesOMa(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1B0AD434C(319, &qword_1EB6DD4A0, &type metadata for MailboxSpecificAppendLimit);
                    if (v10 <= 0x3F)
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

void sub_1B0B39190(uint64_t a1)
{
  if (!qword_1EB6DAD30)
  {
    sub_1B03D00F4();
    v1 = sub_1B0E45588();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DAD30);
    }
  }
}

void sub_1B0B391EC(uint64_t a1)
{
  if (!qword_1EB6DB760)
  {
    sub_1B03D00F4();
    v1 = sub_1B0E44708();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DB760);
    }
  }
}

void sub_1B0B39250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B0E45D88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MailboxSyncState.HighestModificationSequence(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MailboxSyncState.HighestModificationSequence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1B0B39340(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B0B39358(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1B0B39380(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 2;
  }

  v4 = a1;
  result = sub_1B0B3B52C(&v4, a2, &v5);
  if (!v2)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void sub_1B0B393C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A2A4(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_1B0E460B8();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v10 >= v11 >> 1)
      {
        sub_1B0B0A2A4((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1B0425168(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1B0425168(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
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
  }
}

double sub_1B0B395EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MailboxSyncState(0);
  v7 = v6[15];
  v8 = type metadata accessor for MessageBatches(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = v6[16];
  v10 = type metadata accessor for NewestMessages(0);
  (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
  v11 = a3 + v6[18];
  *v11 = 0;
  *(v11 + 8) = 256;
  v12 = (a3 + v6[19]);
  *v12 = *MonotonicTime.bootTime.unsafeMutableAddressor();
  v12[1] = 0;
  *a3 = *(a1 + 24);
  *(a3 + 12) = *(a1 + 52);
  *(a3 + 8) = *(a1 + 48);
  *(a3 + 20) = *(a1 + 60);
  *(a3 + 16) = *(a1 + 56);
  if (*(a1 + 73) & 1) != 0 || (*(a1 + 72))
  {
    goto LABEL_6;
  }

  v13 = *(a1 + 64);
  if (*(a2 + 2))
  {
    if (*(a2 + 2) == 1)
    {
      *(a3 + 24) = v13;
      v14 = 1;
LABEL_7:
      *(a3 + 32) = v14;
      sub_1B0B6557C(a3 + v6[12]);
      goto LABEL_8;
    }

LABEL_6:
    *(a3 + 24) = 0;
    v14 = 2;
    goto LABEL_7;
  }

  *(a3 + 24) = v13;
  *(a3 + 32) = 0;
  sub_1B0B65458(a3 + v6[12]);
LABEL_8:
  v15 = MEMORY[0x1E69E7CD0];
  *(a3 + 152) = MEMORY[0x1E69E7CD0];
  *(a3 + 160) = v15;
  *(a3 + 168) = v15;
  v16 = *(a1 + 40);
  if (v16)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    sub_1B0B393C4(*(a1 + 16));
    v16 = sub_1B0B386A0(v17);
  }

  sub_1B0B37A7C(a1);
  v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B0B26C(v18, v30);
  v19 = v30[2];
  *(a3 + 88) = v30[3];
  v20 = v30[5];
  *(a3 + 104) = v30[4];
  *(a3 + 120) = v20;
  *(a3 + 136) = v31;
  v21 = v30[1];
  *(a3 + 40) = v30[0];
  *(a3 + 56) = v21;
  *(a3 + 72) = v19;
  v22 = sub_1B0B0CE64(v16);

  v23 = vdupq_n_s64(v22);
  *(a3 + 144) = v22 & 1;
  *v23.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v23, xmmword_1B0EC6200), vshlq_u64(v23, xmmword_1B0EC61F0))), 0x1000100010001);
  *(a3 + 145) = vuzp1_s8(*v23.i8, *v23.i8).u32[0];
  *(a3 + 176) = v15;
  v24 = a3 + v6[13];
  *v24 = 0;
  *(v24 + 2) = 0;
  v25 = (v24 + *(type metadata accessor for PendingPersistenceUpdates(0) + 28));
  v26 = MEMORY[0x1E69E7CC0];
  *v25 = sub_1B03D985C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MessagesPendingDownload(0);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v27 = (v25 + *(type metadata accessor for MessagesPendingDownloadPerPass(0) + 20));
  *v27 = sub_1B03D985C(v26);
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  *(a3 + v6[14]) = sub_1B03D016C(v26);
  *(a3 + v6[17]) = 0;
  _s15MissingMessagesOMa(0);
  swift_storeEnumTagMultiPayload();
  v28 = a3 + v6[20];
  *v28 = v26;
  result = -1.90237734e-283;
  *(v28 + 8) = xmmword_1B0EC6210;
  return result;
}

void sub_1B0B39958(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, void *a8)
{
  v217 = a8;
  v203 = a5;
  v204 = a7;
  v215 = a6;
  v199 = a3;
  v200 = a4;
  v198 = a2;
  v219 = a1;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v212 = *(v214 - 1);
  MEMORY[0x1EEE9AC00](v214);
  v213 = &v192 - v8;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v211);
  v209 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v206 = &v192 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v207 = &v192 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v208 = &v192 - v15;
  v216 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v216);
  v197 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = _s12LocalMailboxV6LoggerVMa(0);
  MEMORY[0x1EEE9AC00](v210);
  v202 = &v192 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v201 = &v192 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v205 = &v192 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v195 = &v192 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v194 = &v192 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v196 = &v192 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v193 = &v192 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v192 = &v192 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v192 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v192 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v192 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v192 - v42);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v192 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v192 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v192 - v51;
  v53 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = (&v192 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B03BD4C8(v219, v55, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 17)
  {
    if (EnumCaseMultiPayload != 18)
    {
      if (EnumCaseMultiPayload != 19)
      {
        if (EnumCaseMultiPayload == 20)
        {
          memcpy(v221, v55, 0x268uLL);
          sub_1B0B3B7B8(v221, v198, v199, v200, v217);
          sub_1B0AA4C0C(v221);
          return;
        }

        goto LABEL_25;
      }

      v108 = v206;
      sub_1B074BA2C(v55, v206);
      type metadata accessor for PendingServerResponses(0);
      (*(v212 + 16))(v213, v108, v214);
      sub_1B0E46ED8();
      v109 = v217;
      v110 = v205;
      sub_1B03BD4C8(v217, v205, _s12LocalMailboxV6LoggerVMa);
      v111 = v201;
      sub_1B03BD4C8(v109, v201, _s12LocalMailboxV6LoggerVMa);
      v112 = v202;
      sub_1B03BD4C8(v109, v202, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v113 = v209;
      sub_1B03B5C80(v108, v209, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v114 = sub_1B0E43988();
      v115 = sub_1B0E45908();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        v220 = v219;
        *v116 = 68159235;
        v117 = v110;
        *(v116 + 4) = 2;
        *(v116 + 8) = 256;
        v118 = v111;
        v119 = v210;
        v120 = *(v118 + *(v210 + 20));
        LODWORD(v218) = v115;
        sub_1B03BD5FC(v118, _s12LocalMailboxV6LoggerVMa);
        *(v116 + 10) = v120;
        *(v116 + 11) = 1040;
        *(v116 + 13) = 2;
        *(v116 + 17) = 512;
        v121 = *(v112 + *(v119 + 20) + 2);
        sub_1B03BD5FC(v112, _s12LocalMailboxV6LoggerVMa);
        *(v116 + 19) = v121;
        *(v116 + 21) = 2160;
        *(v116 + 23) = 0x786F626C69616DLL;
        *(v116 + 31) = 2085;
        v122 = v117 + *(v119 + 20);
        v123 = *(v122 + 8);
        v124 = *(v122 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BD5FC(v117, _s12LocalMailboxV6LoggerVMa);
        v221[0] = v123;
        LODWORD(v221[1]) = v124;
        v125 = sub_1B0E44BA8();
        v127 = sub_1B0399D64(v125, v126, &v220);

        *(v116 + 33) = v127;
        *(v116 + 41) = 2048;
        v128 = v209;
        v129 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v128, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        *(v116 + 43) = v129;
        _os_log_impl(&dword_1B0389000, v114, v218, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received vanished (earlier) for %ld UID(s).", v116, 0x33u);
        v130 = v219;
        __swift_destroy_boxed_opaque_existential_0(v219);
        MEMORY[0x1B272C230](v130, -1, -1);
        MEMORY[0x1B272C230](v116, -1, -1);
      }

      else
      {
        sub_1B0398EFC(v113, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03BD5FC(v112, _s12LocalMailboxV6LoggerVMa);
        sub_1B03BD5FC(v111, _s12LocalMailboxV6LoggerVMa);

        sub_1B03BD5FC(v110, _s12LocalMailboxV6LoggerVMa);
      }

      v131 = v108;
LABEL_29:
      sub_1B0398EFC(v131, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return;
    }

    v96 = v55;
    v97 = v208;
    sub_1B074BA2C(v96, v208);
    v98 = v218;
    type metadata accessor for PendingServerResponses(0);
    (*(v212 + 16))(v213, v97, v214);
    sub_1B0E46ED8();
    v99 = *v98;
    v100 = MessageIdentifierSet.count.getter();
    if (!__OFSUB__(v99, v100))
    {
      v101 = ((v99 - v100) & ~((v99 - v100) >> 63));
      *v98 = v101;
      v102 = sub_1B0B4AAF0();
      v103 = sub_1B0B39380(v102 | ((HIDWORD(v102) & 1) << 32), v98);
      v105 = v195;
      v104 = v196;
      v106 = v194;
      v219 = v101;
      if (v103 == 2 || (v103 & 1) == 0)
      {
        v107 = 0;
      }

      else
      {
        sub_1B03BDE74(0xEu);
        sub_1B03BDD7C(v221, 14);
        v107 = 1;
      }

      v154 = v217;
      sub_1B03BD4C8(v217, v104, _s12LocalMailboxV6LoggerVMa);
      sub_1B03BD4C8(v154, v106, _s12LocalMailboxV6LoggerVMa);
      sub_1B03BD4C8(v154, v105, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v155 = v207;
      sub_1B03B5C80(v97, v207, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v156 = sub_1B0E43988();
      v157 = sub_1B0E45908();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        LODWORD(v217) = v107;
        v159 = v158;
        v218 = swift_slowAlloc();
        v220 = v218;
        *v159 = 68159747;
        *(v159 + 4) = 2;
        *(v159 + 8) = 256;
        v160 = v106;
        v161 = v210;
        v162 = *(v160 + *(v210 + 20));
        sub_1B03BD5FC(v160, _s12LocalMailboxV6LoggerVMa);
        *(v159 + 10) = v162;
        *(v159 + 11) = 1040;
        *(v159 + 13) = 2;
        *(v159 + 17) = 512;
        v163 = *(v105 + *(v161 + 20) + 2);
        sub_1B03BD5FC(v105, _s12LocalMailboxV6LoggerVMa);
        *(v159 + 19) = v163;
        *(v159 + 21) = 2160;
        *(v159 + 23) = 0x786F626C69616DLL;
        *(v159 + 31) = 2085;
        v164 = v104 + *(v161 + 20);
        v165 = *(v164 + 8);
        v166 = *(v164 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BD5FC(v104, _s12LocalMailboxV6LoggerVMa);
        v221[0] = v165;
        LODWORD(v221[1]) = v166;
        v167 = sub_1B0E44BA8();
        v169 = sub_1B0399D64(v167, v168, &v220);

        *(v159 + 33) = v169;
        *(v159 + 41) = 2048;
        v170 = v207;
        v171 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v170, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        *(v159 + 43) = v171;
        *(v159 + 51) = 2048;
        *(v159 + 53) = v219;
        *(v159 + 61) = 1024;
        *(v159 + 63) = v217;
        _os_log_impl(&dword_1B0389000, v156, v157, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received vanished for %ld UID(s). Message count is now %ld. Re-running CountUnreadMessages: %{BOOL}d.", v159, 0x43u);
        v172 = v218;
        __swift_destroy_boxed_opaque_existential_0(v218);
        MEMORY[0x1B272C230](v172, -1, -1);
        MEMORY[0x1B272C230](v159, -1, -1);

        v131 = v208;
      }

      else
      {
        sub_1B0398EFC(v155, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03BD5FC(v105, _s12LocalMailboxV6LoggerVMa);
        sub_1B03BD5FC(v106, _s12LocalMailboxV6LoggerVMa);

        sub_1B03BD5FC(v104, _s12LocalMailboxV6LoggerVMa);
        v131 = v97;
      }

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_41;
  }

  v213 = v40;
  v214 = v37;
  v219 = v43;
  v57 = v215;
  if (EnumCaseMultiPayload != 15)
  {
    if (EnumCaseMultiPayload != 17)
    {
LABEL_25:
      v152 = type metadata accessor for UntaggedResponse;
      v153 = v55;
LABEL_39:
      sub_1B03BD5FC(v153, v152);
      return;
    }

    v58 = *v55;
    v59 = v216;
    v60 = v218;
    sub_1B0B656A0(v58);
    v61 = v60 + *(v59 + 16);
    v62 = type metadata accessor for NewestMessages(0);
    v63 = (*(*(v62 - 8) + 48))(v61, 1, v62);
    v64 = v57;
    v66 = v203;
    v65 = v204;
    v67 = v197;
    if (!v63)
    {
      v68 = *(v62 + 24);
      v69 = *&v61[v68];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
LABEL_41:
        __break(1u);
        return;
      }

      *&v61[v68] = v71;
    }

    sub_1B03BD4C8(v60, v67, type metadata accessor for MailboxSyncState);
    sub_1B0B3B314(v58, v66 & 1, v64, v65 & 1);
    v73 = v72;
    sub_1B03BD5FC(v67, type metadata accessor for MailboxSyncState);
    if (v73)
    {
      sub_1B03BDE74(0xEu);
      sub_1B03BDD7C(v221, 14);
    }

    v74 = *v60 - 1;
    if (*v60 < 1)
    {
      v173 = v217;
      v76 = v34;
      sub_1B03BD4C8(v217, v34, _s12LocalMailboxV6LoggerVMa);
      v174 = v192;
      sub_1B03BD4C8(v173, v192, _s12LocalMailboxV6LoggerVMa);
      v175 = v193;
      sub_1B03BD4C8(v173, v193, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v79 = sub_1B0E43988();
      v176 = sub_1B0E458E8();
      if (os_log_type_enabled(v79, v176))
      {
        v177 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        LODWORD(v218) = v73;
        v219 = v178;
        v220 = v178;
        *v177 = 68159491;
        v179 = v174;
        *(v177 + 4) = 2;
        *(v177 + 8) = 256;
        LODWORD(v217) = v58;
        v180 = v175;
        v181 = v210;
        v182 = *(v174 + *(v210 + 20));
        sub_1B03BD5FC(v179, _s12LocalMailboxV6LoggerVMa);
        *(v177 + 10) = v182;
        *(v177 + 11) = 1040;
        *(v177 + 13) = 2;
        *(v177 + 17) = 512;
        v183 = *(v180 + *(v181 + 20) + 2);
        sub_1B03BD5FC(v180, _s12LocalMailboxV6LoggerVMa);
        *(v177 + 19) = v183;
        *(v177 + 21) = 2160;
        *(v177 + 23) = 0x786F626C69616DLL;
        *(v177 + 31) = 2085;
        v184 = v76 + *(v181 + 20);
        v185 = *(v184 + 1);
        v186 = *(v184 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BD5FC(v76, _s12LocalMailboxV6LoggerVMa);
        v221[0] = v185;
        LODWORD(v221[1]) = v186;
        v187 = sub_1B0E44BA8();
        v189 = sub_1B0399D64(v187, v188, &v220);

        *(v177 + 33) = v189;
        *(v177 + 41) = 1024;
        *(v177 + 43) = v217;
        *(v177 + 47) = 1024;
        *(v177 + 49) = v218 & 1;
        _os_log_impl(&dword_1B0389000, v79, v176, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received expunge %u, but message count is already zero. Re-running CountUnreadMessages: %{BOOL}d.", v177, 0x35u);
        v190 = v219;
        __swift_destroy_boxed_opaque_existential_0(v219);
        MEMORY[0x1B272C230](v190, -1, -1);
        v95 = v177;
        goto LABEL_35;
      }

      sub_1B03BD5FC(v175, _s12LocalMailboxV6LoggerVMa);
      v191 = v174;
    }

    else
    {
      *v60 = v74;
      v75 = v217;
      v76 = v219;
      sub_1B03BD4C8(v217, v219, _s12LocalMailboxV6LoggerVMa);
      v77 = v213;
      sub_1B03BD4C8(v75, v213, _s12LocalMailboxV6LoggerVMa);
      v78 = v214;
      sub_1B03BD4C8(v75, v214, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v79 = sub_1B0E43988();
      v80 = sub_1B0E45908();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v215 = v74;
        v82 = v81;
        v83 = swift_slowAlloc();
        LODWORD(v218) = v73;
        v216 = v83;
        v220 = v83;
        *v82 = 68159747;
        *(v82 + 4) = 2;
        *(v82 + 8) = 256;
        LODWORD(v217) = v58;
        v84 = v77;
        v85 = v210;
        v86 = *(v84 + *(v210 + 20));
        sub_1B03BD5FC(v84, _s12LocalMailboxV6LoggerVMa);
        *(v82 + 10) = v86;
        *(v82 + 11) = 1040;
        *(v82 + 13) = 2;
        *(v82 + 17) = 512;
        v87 = *(v78 + *(v85 + 20) + 2);
        sub_1B03BD5FC(v78, _s12LocalMailboxV6LoggerVMa);
        *(v82 + 19) = v87;
        *(v82 + 21) = 2160;
        *(v82 + 23) = 0x786F626C69616DLL;
        *(v82 + 31) = 2085;
        v88 = v76 + *(v85 + 20);
        v89 = *(v88 + 1);
        v90 = *(v88 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BD5FC(v76, _s12LocalMailboxV6LoggerVMa);
        v221[0] = v89;
        LODWORD(v221[1]) = v90;
        v91 = sub_1B0E44BA8();
        v93 = sub_1B0399D64(v91, v92, &v220);

        *(v82 + 33) = v93;
        *(v82 + 41) = 1024;
        *(v82 + 43) = v217;
        *(v82 + 47) = 2048;
        *(v82 + 49) = v215;
        *(v82 + 57) = 1024;
        *(v82 + 59) = v218 & 1;
        _os_log_impl(&dword_1B0389000, v79, v80, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Received expunge %u. Message count is now %ld. Re-running CountUnreadMessages: %{BOOL}d.", v82, 0x3Fu);
        v94 = v216;
        __swift_destroy_boxed_opaque_existential_0(v216);
        MEMORY[0x1B272C230](v94, -1, -1);
        v95 = v82;
LABEL_35:
        MEMORY[0x1B272C230](v95, -1, -1);

        return;
      }

      sub_1B03BD5FC(v78, _s12LocalMailboxV6LoggerVMa);
      v191 = v77;
    }

    sub_1B03BD5FC(v191, _s12LocalMailboxV6LoggerVMa);

    v153 = v76;
    v152 = _s12LocalMailboxV6LoggerVMa;
    goto LABEL_39;
  }

  v132 = *v55;
  v133 = v218;
  sub_1B03BDE74(0xCu);
  sub_1B03BDD7C(v221, 12);
  v134 = v217;
  v135 = v52;
  sub_1B03BD4C8(v217, v52, _s12LocalMailboxV6LoggerVMa);
  sub_1B03BD4C8(v134, v49, _s12LocalMailboxV6LoggerVMa);
  v136 = v46;
  sub_1B03BD4C8(v134, v46, _s12LocalMailboxV6LoggerVMa);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v137 = sub_1B0E43988();
  v138 = sub_1B0E45908();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    v217 = swift_slowAlloc();
    v220 = v217;
    *v139 = 68159235;
    *(v139 + 4) = 2;
    *(v139 + 8) = 256;
    v219 = v132;
    v140 = v210;
    v141 = v49[*(v210 + 20)];
    sub_1B03BD5FC(v49, _s12LocalMailboxV6LoggerVMa);
    *(v139 + 10) = v141;
    *(v139 + 11) = 1040;
    *(v139 + 13) = 2;
    *(v139 + 17) = 512;
    v142 = v136;
    v143 = *&v136[*(v140 + 20) + 2];
    sub_1B03BD5FC(v142, _s12LocalMailboxV6LoggerVMa);
    *(v139 + 19) = v143;
    *(v139 + 21) = 2160;
    *(v139 + 23) = 0x786F626C69616DLL;
    *(v139 + 31) = 2085;
    v144 = v135 + *(v140 + 20);
    v145 = *(v144 + 8);
    v146 = *(v144 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03BD5FC(v135, _s12LocalMailboxV6LoggerVMa);
    v221[0] = v145;
    LODWORD(v221[1]) = v146;
    v147 = sub_1B0E44BA8();
    v149 = sub_1B0399D64(v147, v148, &v220);

    *(v139 + 33) = v149;
    *(v139 + 41) = 1024;
    v150 = v219;
    *(v139 + 43) = v219;
    _os_log_impl(&dword_1B0389000, v137, v138, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Updating message count to %u", v139, 0x2Fu);
    v151 = v217;
    __swift_destroy_boxed_opaque_existential_0(v217);
    MEMORY[0x1B272C230](v151, -1, -1);
    MEMORY[0x1B272C230](v139, -1, -1);

    *v218 = v150;
  }

  else
  {
    sub_1B03BD5FC(v46, _s12LocalMailboxV6LoggerVMa);
    sub_1B03BD5FC(v49, _s12LocalMailboxV6LoggerVMa);

    sub_1B03BD5FC(v135, _s12LocalMailboxV6LoggerVMa);
    *v133 = v132;
  }
}

void sub_1B0B3AE00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a2 ^ a1;
  if (((a2 ^ a1) & 0xFF00) != 0)
  {
    v10 = *(type metadata accessor for MailboxSyncState(0) + 68);
    sub_1B03BD5FC(v3 + v10, _s15MissingMessagesOMa);
    *(v3 + v10) = 0;
    _s15MissingMessagesOMa(0);
    swift_storeEnumTagMultiPayload();
    v11 = byte_1F27113F0;
    sub_1B03BDE74(byte_1F27113F0);
    sub_1B03BDD7C(&v21, v11);
    v12 = byte_1F27113F1;
    sub_1B03BDE74(byte_1F27113F1);
    sub_1B03BDD7C(&v21, v12);
    v13 = byte_1F27113F2;
    sub_1B03BDE74(byte_1F27113F2);
    sub_1B03BDD7C(&v21, v13);
  }

  if (v9)
  {
    v14 = MEMORY[0x1E69E7CC0];
    *v8 = sub_1B03D985C(MEMORY[0x1E69E7CC0]);
    type metadata accessor for MessagesPendingDownload(0);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v15 = (v8 + *(v6 + 20));
    *v15 = sub_1B03D985C(v14);
    sub_1B0E46EE8();
    v16 = v3 + *(type metadata accessor for MailboxSyncState(0) + 52);
    v17 = type metadata accessor for PendingPersistenceUpdates(0);
    sub_1B0B3BFD0(v8, v16 + *(v17 + 28));
    sub_1B03BDE74(9u);
    sub_1B03BDD7C(&v20, 9);
    sub_1B03BDE74(0xAu);
    sub_1B03BDD7C(&v19, 10);
  }
}

uint64_t sub_1B0B3B038()
{
  if (*(v0 + 20))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 16);
  }

  *&v29[0] = 0;
  *(&v29[0] + 1) = 0xE000000000000000;
  sub_1B0E46298();
  v27 = 0;
  v28 = 0xE000000000000000;
  MEMORY[0x1B2726E80](0xD00000000000001FLL, 0x80000001B0F2B410);
  *&v29[0] = *v0;
  v2 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v2);

  MEMORY[0x1B2726E80](0x49557478656E202CLL, 0xEB00000000203A44);
  v3 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v3);

  MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F2B430);
  LODWORD(v29[0]) = v1;
  sub_1B07467B8();
  v4 = sub_1B0E44E98();
  MEMORY[0x1B2726E80](v4);

  MEMORY[0x1B2726E80](0x6E4567616C66202CLL, 0xEF203A7265646F63);
  v5 = *(v0 + 88);
  v6 = *(v0 + 120);
  v29[4] = *(v0 + 104);
  v29[5] = v6;
  v30 = *(v0 + 136);
  v7 = *(v0 + 56);
  v29[0] = *(v0 + 40);
  v29[1] = v7;
  v29[2] = *(v0 + 72);
  v29[3] = v5;
  v8 = *(v0 + 88);
  v9 = *(v0 + 120);
  v24 = *(v0 + 104);
  v25 = v9;
  v26 = *(v0 + 136);
  v10 = *(v0 + 56);
  v20 = *(v0 + 40);
  v21 = v10;
  v22 = *(v0 + 72);
  v23 = v8;
  sub_1B0B0D4C8(v29, v19);
  v11 = sub_1B0E44BA8();
  MEMORY[0x1B2726E80](v11);

  MEMORY[0x1B2726E80](0x654467616C66202CLL, 0xEF203A7265646F63);
  v12 = *(v0 + 145);
  v13 = *(v0 + 146);
  v14 = *(v0 + 147);
  v15 = *(v0 + 148);
  LOBYTE(v20) = *(v0 + 144);
  BYTE1(v20) = v12;
  BYTE2(v20) = v13;
  BYTE3(v20) = v14;
  BYTE4(v20) = v15;
  v16 = sub_1B0E44BA8();
  MEMORY[0x1B2726E80](v16);

  MEMORY[0x1B2726E80](0xD00000000000004ELL, 0x80000001B0F2B450);
  sub_1B03D00F4();
  v17 = sub_1B0E45408();
  MEMORY[0x1B2726E80](v17);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return v27;
}

void sub_1B0B3B314(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4010, &unk_1B0EC6220);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for MessageBatches(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      if (__OFADD__(*v4, 500))
      {
        __break(1u);
      }

      else if (!__OFSUB__(*v4 + 500, a3))
      {
        return;
      }

      __break(1u);
      return;
    }

    v16 = v13;
    v17 = type metadata accessor for MailboxSyncState(0);
    sub_1B03B5C80(v4 + *(v17 + 60), v10, &qword_1EB6E4010, &unk_1B0EC6220);
    if ((*(v12 + 48))(v10, 1, v16) == 1)
    {
      sub_1B0398EFC(v10, &qword_1EB6E4010, &unk_1B0EC6220);
    }

    else
    {
      sub_1B03D008C(v10, v15, type metadata accessor for MessageBatches);
      sub_1B03BD5FC(v15, type metadata accessor for MessageBatches);
    }
  }
}

uint64_t sub_1B0B3B52C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4010, &unk_1B0EC6220);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for MessageBatches(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MailboxSyncState(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_1B03BD4C8(a2, v15, type metadata accessor for MailboxSyncState);
  sub_1B03B5C80(&v15[*(v13 + 68)], v7, &qword_1EB6E4010, &unk_1B0EC6220);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B03BD5FC(v15, type metadata accessor for MailboxSyncState);
    result = sub_1B0398EFC(v7, &qword_1EB6E4010, &unk_1B0EC6220);
    v18 = 0;
  }

  else
  {
    sub_1B03D008C(v7, v11, type metadata accessor for MessageBatches);
    v19 = *(v11 + 1);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = *(v19 + 8 * v20 + 24);
    }

    else
    {
      v21 = 1;
    }

    sub_1B03BD5FC(v15, type metadata accessor for MailboxSyncState);
    v18 = v16 < v21;
    result = sub_1B03BD5FC(v11, type metadata accessor for MessageBatches);
  }

  *v23 = v18;
  return result;
}

void sub_1B0B3B7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  _s12LocalMailboxV6LoggerVMa(0);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37[-v19];
  if ((*(v17 + 560) & 1) != 0 || *(v5 + 32))
  {
LABEL_12:
    sub_1B0B3BB5C(v17, v9, a3, a4, a5);
    return;
  }

  v21 = *(v17 + 552);
  v22 = *(v5 + 24);
  if (v22 <= v21)
  {
    v23 = *(v17 + 552);
  }

  else
  {
    v23 = *(v5 + 24);
  }

  if (((v23 | v22) & 0x8000000000000000) == 0)
  {
    if (v22 < v21)
    {
      v43 = v18;
      v44 = v5;
      v45 = v17;
      *(v5 + 24) = v23;
      *(v5 + 32) = 0;
      sub_1B03BD4C8(a5, &v37[-v19], _s12LocalMailboxV6LoggerVMa);
      sub_1B03BD4C8(a5, v15, _s12LocalMailboxV6LoggerVMa);
      sub_1B03BD4C8(a5, v12, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v24 = sub_1B0E43988();
      v25 = sub_1B0E45908();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v42 = v24;
        v27 = v26;
        v41 = swift_slowAlloc();
        v48 = v41;
        *v27 = 68159235;
        *(v27 + 4) = 2;
        *(v27 + 8) = 256;
        v39 = v23;
        v28 = v43;
        v38 = v15[*(v43 + 20)];
        v40 = v25;
        sub_1B03BD5FC(v15, _s12LocalMailboxV6LoggerVMa);
        *(v27 + 10) = v38;
        *(v27 + 11) = 1040;
        *(v27 + 13) = 2;
        *(v27 + 17) = 512;
        v29 = *&v12[*(v28 + 20) + 2];
        sub_1B03BD5FC(v12, _s12LocalMailboxV6LoggerVMa);
        *(v27 + 19) = v29;
        *(v27 + 21) = 2160;
        *(v27 + 23) = 0x786F626C69616DLL;
        *(v27 + 31) = 2085;
        v30 = &v20[*(v28 + 20)];
        v31 = *(v30 + 1);
        LODWORD(v28) = *(v30 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BD5FC(v20, _s12LocalMailboxV6LoggerVMa);
        v46 = v31;
        v47 = v28;
        v32 = sub_1B0E44BA8();
        v34 = sub_1B0399D64(v32, v33, &v48);

        *(v27 + 33) = v34;
        *(v27 + 41) = 2048;
        *(v27 + 43) = v39;
        v35 = v42;
        _os_log_impl(&dword_1B0389000, v42, v40, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Updating highest mod-seq to %llu", v27, 0x33u);
        v36 = v41;
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x1B272C230](v36, -1, -1);
        MEMORY[0x1B272C230](v27, -1, -1);
      }

      else
      {
        sub_1B03BD5FC(v12, _s12LocalMailboxV6LoggerVMa);
        sub_1B03BD5FC(v15, _s12LocalMailboxV6LoggerVMa);

        sub_1B03BD5FC(v20, _s12LocalMailboxV6LoggerVMa);
      }

      v17 = v45;
    }

    goto LABEL_12;
  }

  __break(1u);
}