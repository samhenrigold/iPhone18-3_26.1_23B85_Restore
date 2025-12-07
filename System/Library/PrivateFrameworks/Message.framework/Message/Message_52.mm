uint64_t sub_1B0B50E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v60 - v7;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v64 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4990, &unk_1B0EC6D30);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = *(v24 + 56);
  v26 = a1;
  v28 = &v60 - v27;
  sub_1B0B5E6D0(v26, &v60 - v27, type metadata accessor for MoveAndCopyMessages.CommandID);
  v63 = v25;
  v29 = v8;
  sub_1B0B5E6D0(a2, &v28[v25], type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B0B5E6D0(v28, v16, type metadata accessor for MoveAndCopyMessages.CommandID);
      v31 = v63;
      if (!swift_getEnumCaseMultiPayload())
      {
        v56 = v60;
        sub_1B03C60A4(v16, v60, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v57 = v61;
        sub_1B03C60A4(&v28[v31], v61, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v58 = v65;
        MessageIdentifierSet.union(_:)(v57, v65);
        sub_1B0398EFC(v57, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_storeEnumTagMultiPayload();
        (*(v64 + 56))(v58, 0, 1, v8);
        return sub_1B0B5E738(v28, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      goto LABEL_21;
    }

    sub_1B0B5E6D0(v28, v22, type metadata accessor for MoveAndCopyMessages.CommandID);
    v45 = *v22;
    v46 = *(v22 + 2);
    v47 = *(v22 + 2);
    v48 = v63;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0B5E6D0(&v28[v48], v19, type metadata accessor for MoveAndCopyMessages.CommandID);
      v49 = *(v19 + 2);
      if (v46 | (v46 << 32)) == (*(v19 + 2) | (*(v19 + 2) << 32)) && (sub_1B04520BC(v45, *v19))
      {
        v50 = v29;
        v51 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B38B4C(v51);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v52 = sub_1B0A94674();

        if (v52)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v47;
          sub_1B0B5E800(v49, sub_1B0B57D74, 0, isUniquelyReferenced_nonNull_native, &v66);

          swift_bridgeObjectRelease_n();
          v54 = v66;

          v55 = v65;
          *v65 = v45;
          *(v55 + 2) = v46;
          v55[2] = v54;
          swift_storeEnumTagMultiPayload();
          (*(v64 + 56))(v55, 0, 1, v50);
          goto LABEL_25;
        }

        (*(v64 + 56))(v65, 1, 1, v50);

LABEL_24:

        goto LABEL_25;
      }
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_21:
    (*(v64 + 56))(v65, 1, 1, v29);
    return sub_1B0398EFC(v28, &qword_1EB6E4990, &unk_1B0EC6D30);
  }

  sub_1B0B5E6D0(v28, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
  v32 = *v13;
  v33 = *(v13 + 2);
  v34 = *(v13 + 2);
  v35 = v63;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_1B0B5E6D0(&v28[v35], v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  v36 = *v10;
  v37 = *(v10 + 2);
  v38 = *(v10 + 2);
  if ((v33 | (v33 << 32)) != (v37 | (v37 << 32)) || (sub_1B04520BC(v32, v36) & 1) == 0)
  {

    goto LABEL_20;
  }

  v39 = v29;
  v40 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B38B4C(v40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = sub_1B0A94674();

  if ((v41 & 1) == 0)
  {
    (*(v64 + 56))(v65, 1, 1, v29);

    goto LABEL_24;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v34;
  sub_1B0B5EAA8(v38, sub_1B0B57D5C, 0, v42, &v66);

  swift_bridgeObjectRelease_n();
  v43 = v66;

  v44 = v65;
  *v65 = v32;
  *(v44 + 2) = v33;
  v44[2] = v43;
  swift_storeEnumTagMultiPayload();
  (*(v64 + 56))(v44, 0, 1, v39);
LABEL_25:
  sub_1B0B5E738(&v28[v63], type metadata accessor for MoveAndCopyMessages.CommandID);
  return sub_1B0B5E738(v28, type metadata accessor for MoveAndCopyMessages.CommandID);
}

uint64_t sub_1B0B515F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B5E6D0(a1, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = *v10;
      v29 = v2;
      v21 = *(v10 + 2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B24198();
      v22 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48)];
      sub_1B03C60A4(v7, v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);

      *v22 = v20;
      *(v22 + 2) = v21;
    }
  }

  else
  {
    v29 = v2;
    if (EnumCaseMultiPayload)
    {
      v23 = *v10;
      v24 = *(v10 + 2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B24198();
      v25 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48)];
      sub_1B03C60A4(v7, v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);

      *v25 = v23;
      *(v25 + 2) = v24;
    }

    else
    {
      sub_1B03C60A4(v10, v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v15 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48)];
      sub_1B03B5C80(v7, v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1B0EC1E70;
      v17 = Flag.deleted.unsafeMutableAddressor();
      v19 = *v17;
      v18 = *(v17 + 1);
      *(v16 + 32) = v19;
      *(v16 + 40) = v18;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *v15 = 256;
      *(v15 + 1) = v16;
    }
  }

  swift_storeEnumTagMultiPayload();
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F0, &qword_1B0EC6FF8) + 48);
  sub_1B0B5E6D0(a1, a2, type metadata accessor for MoveAndCopyMessages.CommandID);
  return sub_1B0B5E798(v13, a2 + v26, type metadata accessor for ClientCommand);
}

uint64_t sub_1B0B51974(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, int a5, uint64_t a6, uint64_t a7)
{
  v385 = a7;
  LODWORD(v378) = a5;
  v381 = a4;
  v364 = a3;
  v382 = a2;
  v377 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v377);
  v379 = &v348[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v362 = &v348[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v354 = &v348[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v359 = &v348[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v369 = &v348[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v368 = &v348[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v348[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v348[-v24];
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v375);
  v374 = &v348[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v365 = &v348[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v357 = &v348[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v358 = &v348[-v32];
  MEMORY[0x1EEE9AC00](v33);
  v388 = &v348[-v34];
  MEMORY[0x1EEE9AC00](v35);
  v372 = &v348[-v36];
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v348[-v38];
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v348[-v41];
  v43 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v366 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v383 = &v348[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v45);
  v371 = &v348[-v46];
  MEMORY[0x1EEE9AC00](v47);
  v370 = &v348[-v48];
  MEMORY[0x1EEE9AC00](v49);
  v363 = &v348[-v50];
  MEMORY[0x1EEE9AC00](v51);
  v373 = &v348[-v52];
  MEMORY[0x1EEE9AC00](v53);
  v376 = &v348[-v54];
  MEMORY[0x1EEE9AC00](v55);
  v355 = &v348[-v56];
  MEMORY[0x1EEE9AC00](v57);
  v356 = &v348[-v58];
  MEMORY[0x1EEE9AC00](v59);
  v367 = &v348[-v60];
  MEMORY[0x1EEE9AC00](v61);
  v361 = &v348[-v62];
  MEMORY[0x1EEE9AC00](v63);
  v352 = &v348[-v64];
  MEMORY[0x1EEE9AC00](v65);
  v353 = &v348[-v66];
  MEMORY[0x1EEE9AC00](v67);
  v360 = &v348[-v68];
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v348[-v70];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v390 = *(v7 + 152);
  sub_1B0A9C6C4(1, a1, isUniquelyReferenced_nonNull_native);
  v380 = v7;
  *(v7 + 152) = v390;
  v384 = a1;
  sub_1B0B5E6D0(a1, v71, type metadata accessor for MoveAndCopyMessages.CommandID);
  v387 = v43;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B03C60A4(v71, v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0B5E6D0(v385, v25, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B5C80(v42, v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v74 = sub_1B0E43988();
      v75 = sub_1B0E45908();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v372 = swift_slowAlloc();
        v392 = v372;
        *v76 = 68159491;
        *(v76 + 4) = 2;
        *(v76 + 8) = 256;
        v77 = &v25[*(v377 + 20)];
        *(v76 + 10) = *v77;
        *(v76 + 11) = 2082;
        v79 = *(v77 + 1);
        v78 = *(v77 + 2);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v80 = sub_1B0399D64(v79, v78, &v392);

        *(v76 + 13) = v80;
        *(v76 + 21) = 1040;
        *(v76 + 23) = 2;
        *(v76 + 27) = 512;
        *(v76 + 29) = *(v77 + 12);
        *(v76 + 31) = 2160;
        *(v76 + 33) = 0x786F626C69616DLL;
        *(v76 + 41) = 2085;
        v81 = *(v77 + 10);
        v390 = *(v77 + 4);
        v391 = v81;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v82 = sub_1B0E44BA8();
        v84 = sub_1B0399D64(v82, v83, &v392);

        *(v76 + 43) = v84;
        sub_1B0B5E738(v25, type metadata accessor for MailboxTaskLogger);
        *(v76 + 51) = 2082;
        v85 = MessageIdentifierSet.debugDescription.getter();
        v87 = sub_1B0399D64(v85, v86, &v392);

        *(v76 + 53) = v87;
        sub_1B0398EFC(v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        _os_log_impl(&dword_1B0389000, v74, v75, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did mark source messages %{public}s as deleted.", v76, 0x3Du);
        v88 = v372;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v88, -1, -1);
        MEMORY[0x1B272C230](v76, -1, -1);
      }

      else
      {
        sub_1B0B5E738(v25, type metadata accessor for MailboxTaskLogger);
        sub_1B0398EFC(v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      sub_1B0398EFC(v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      goto LABEL_19;
    }

    v117 = *v71;
    v118 = *(v71 + 2);
    v119 = v368;
    sub_1B0B5E6D0(v385, v368, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v120 = sub_1B0E43988();
    v121 = sub_1B0E45908();
    v122 = os_log_type_enabled(v120, v121);
    v95 = v388;
    if (v122)
    {
      v123 = swift_slowAlloc();
      v349 = v118;
      v97 = v123;
      v369 = swift_slowAlloc();
      v392 = v369;
      *v97 = 68160003;
      *(v97 + 4) = 2;
      *(v97 + 8) = 256;
      v124 = *(v377 + 20);
      v351 = v121;
      v125 = &v119[v124];
      *(v97 + 10) = v119[v124];
      *(v97 + 11) = 2082;
      v350 = v120;
      v127 = *&v119[v124 + 8];
      v126 = *&v119[v124 + 16];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v128 = sub_1B0399D64(v127, v126, &v392);

      *(v97 + 13) = v128;
      *(v97 + 21) = 1040;
      *(v97 + 23) = 2;
      *(v97 + 27) = 512;
      *(v97 + 29) = *(v125 + 12);
      *(v97 + 31) = 2160;
      *(v97 + 33) = 0x786F626C69616DLL;
      *(v97 + 41) = 2085;
      v129 = *(v125 + 10);
      v390 = *(v125 + 4);
      v391 = v129;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v130 = sub_1B0E44BA8();
      v132 = sub_1B0399D64(v130, v131, &v392);

      *(v97 + 43) = v132;
      sub_1B0B5E738(v119, type metadata accessor for MailboxTaskLogger);
      *(v97 + 51) = 2160;
      *(v97 + 53) = 0x786F626C69616DLL;
      *(v97 + 61) = 2085;
      v390 = v117;
      v391 = v349;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v133 = sub_1B0E44BA8();
      v135 = sub_1B0399D64(v133, v134, &v392);

      *(v97 + 63) = v135;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      *(v97 + 71) = 2082;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v136 = v372;
      sub_1B0B24198();
      v137 = MessageIdentifierSet.debugDescription.getter();
      v139 = v138;
      sub_1B0398EFC(v136, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v140 = sub_1B0399D64(v137, v139, &v392);

      *(v97 + 73) = v140;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v115 = v350;
      _os_log_impl(&dword_1B0389000, v350, v351, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] [%{sensitive,mask.mailbox}s] Did copy messages %{public}s.", v97, 0x51u);
      v116 = &v394;
      goto LABEL_10;
    }

    sub_1B0B5E738(v119, type metadata accessor for MailboxTaskLogger);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v89 = *v71;
    v90 = *(v71 + 2);
    v91 = v369;
    sub_1B0B5E6D0(v385, v369, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v92 = sub_1B0E43988();
    v93 = sub_1B0E45908();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v388;
    if (v94)
    {
      v96 = swift_slowAlloc();
      v349 = v90;
      v97 = v96;
      v368 = swift_slowAlloc();
      v392 = v368;
      *v97 = 68160003;
      *(v97 + 4) = 2;
      *(v97 + 8) = 256;
      v98 = *(v377 + 20);
      v351 = v93;
      v99 = &v91[v98];
      *(v97 + 10) = v91[v98];
      *(v97 + 11) = 2082;
      v350 = v92;
      v101 = *&v91[v98 + 8];
      v100 = *&v91[v98 + 16];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v102 = sub_1B0399D64(v101, v100, &v392);

      *(v97 + 13) = v102;
      *(v97 + 21) = 1040;
      *(v97 + 23) = 2;
      *(v97 + 27) = 512;
      *(v97 + 29) = *(v99 + 12);
      *(v97 + 31) = 2160;
      *(v97 + 33) = 0x786F626C69616DLL;
      *(v97 + 41) = 2085;
      v103 = *(v99 + 10);
      v390 = *(v99 + 4);
      v391 = v103;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v104 = sub_1B0E44BA8();
      v106 = sub_1B0399D64(v104, v105, &v392);

      *(v97 + 43) = v106;
      sub_1B0B5E738(v91, type metadata accessor for MailboxTaskLogger);
      *(v97 + 51) = 2160;
      *(v97 + 53) = 0x786F626C69616DLL;
      *(v97 + 61) = 2085;
      v390 = v89;
      v391 = v349;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v107 = sub_1B0E44BA8();
      v109 = sub_1B0399D64(v107, v108, &v392);

      *(v97 + 63) = v109;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      *(v97 + 71) = 2082;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v110 = v372;
      sub_1B0B24198();
      v111 = MessageIdentifierSet.debugDescription.getter();
      v113 = v112;
      sub_1B0398EFC(v110, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v114 = sub_1B0399D64(v111, v113, &v392);

      *(v97 + 73) = v114;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v115 = v350;
      _os_log_impl(&dword_1B0389000, v350, v351, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] [%{sensitive,mask.mailbox}s] Did move messages %{public}s.", v97, 0x51u);
      v116 = &v393;
LABEL_10:
      v141 = *(v116 - 32);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v141, -1, -1);
      MEMORY[0x1B272C230](v97, -1, -1);

      goto LABEL_20;
    }

    sub_1B0B5E738(v91, type metadata accessor for MailboxTaskLogger);
LABEL_17:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_20;
  }

  sub_1B0B5E6D0(v385, v22, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v142 = sub_1B0E43988();
  v143 = sub_1B0E45908();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v392 = v145;
    *v144 = 68159235;
    *(v144 + 4) = 2;
    *(v144 + 8) = 256;
    v146 = &v22[*(v377 + 20)];
    *(v144 + 10) = *v146;
    *(v144 + 11) = 2082;
    v147 = *(v146 + 1);
    v148 = *(v146 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v149 = sub_1B0399D64(v147, v148, &v392);

    *(v144 + 13) = v149;
    *(v144 + 21) = 1040;
    *(v144 + 23) = 2;
    *(v144 + 27) = 512;
    *(v144 + 29) = *(v146 + 12);
    *(v144 + 31) = 2160;
    *(v144 + 33) = 0x786F626C69616DLL;
    *(v144 + 41) = 2085;
    v150 = *(v146 + 10);
    v390 = *(v146 + 4);
    v391 = v150;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v151 = sub_1B0E44BA8();
    v153 = sub_1B0399D64(v151, v152, &v392);

    *(v144 + 43) = v153;
    sub_1B0B5E738(v22, type metadata accessor for MailboxTaskLogger);
    _os_log_impl(&dword_1B0389000, v142, v143, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did expunge deleted messages.", v144, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v145, -1, -1);
    MEMORY[0x1B272C230](v144, -1, -1);
  }

  else
  {

    sub_1B0B5E738(v22, type metadata accessor for MailboxTaskLogger);
  }

LABEL_19:
  v95 = v388;
LABEL_20:
  v154 = v384;
  v155 = v382;
  result = sub_1B0B54500();
  v159 = v379;
  v160 = v378;
  if (!result)
  {
    return result;
  }

  v161 = result;
  v162 = v157;
  v163 = v158;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B24198();
  v372 = v161;
  v369 = v162;
  if (!v160)
  {
    if ((~v155 & 0xF000000000000007) != 0 && ((v155 >> 59) & 0x1E | (v155 >> 2) & 1) == 8)
    {
      LODWORD(v383) = *((v155 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v186 = *((v155 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v187 = *((v155 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1B0B5E6D0(v385, v359, type metadata accessor for MailboxTaskLogger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0B5E6D0(v154, v360, type metadata accessor for MoveAndCopyMessages.CommandID);
      v188 = v358;
      sub_1B03B5C80(v95, v358, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1B0394868();
      sub_1B0394868();
      v189 = sub_1B0E43988();
      v190 = sub_1B0E458D8();
      v191 = os_log_type_enabled(v189, v190);
      v384 = v187;
      if (!v191)
      {

        sub_1B0B5E738(v359, type metadata accessor for MailboxTaskLogger);
        sub_1B0B5E738(v360, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0398EFC(v188, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v313 = v383;
LABEL_125:
        v346 = v386;
        v347 = sub_1B0B5DC34(v313, v186, v187, v163);
        if (v346)
        {
          goto LABEL_126;
        }

        v279 = v347;
        v386 = 0;

LABEL_107:

LABEL_108:
        sub_1B0B4E208(v161, v162, v279);
        return sub_1B0398EFC(v95, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      LODWORD(v379) = v190;
      v381 = v189;
      v382 = v186;
      v192 = swift_slowAlloc();
      v378 = swift_slowAlloc();
      v392 = v378;
      *v192 = 68160259;
      *(v192 + 4) = 2;
      *(v192 + 8) = 256;
      v193 = v359;
      v194 = &v359[*(v377 + 20)];
      *(v192 + 10) = *v194;
      *(v192 + 11) = 2082;
      v196 = *(v194 + 1);
      v195 = *(v194 + 2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v197 = sub_1B0399D64(v196, v195, &v392);

      *(v192 + 13) = v197;
      *(v192 + 21) = 1040;
      *(v192 + 23) = 2;
      *(v192 + 27) = 512;
      *(v192 + 29) = *(v194 + 12);
      *(v192 + 31) = 2160;
      *(v192 + 33) = 0x786F626C69616DLL;
      *(v192 + 41) = 2085;
      v198 = *(v194 + 10);
      v390 = *(v194 + 4);
      v391 = v198;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v199 = sub_1B0E44BA8();
      v201 = sub_1B0399D64(v199, v200, &v392);

      *(v192 + 43) = v201;
      sub_1B0B5E738(v193, type metadata accessor for MailboxTaskLogger);
      *(v192 + 51) = 2082;
      v202 = v353;
      sub_1B0B5E6D0(v360, v353, type metadata accessor for MoveAndCopyMessages.CommandID);
      v203 = v352;
      sub_1B0B5E6D0(v202, v352, type metadata accessor for MoveAndCopyMessages.CommandID);
      v204 = swift_getEnumCaseMultiPayload();
      if (v204 > 1)
      {
        v205 = v358;
        if (v204 != 2)
        {
          v207 = 0x45474E55505845;
          v206 = 0xE700000000000000;
          goto LABEL_117;
        }

        v206 = 0xE400000000000000;
        v207 = 1163284301;
      }

      else
      {
        v205 = v358;
        if (!v204)
        {
          v206 = 0xE600000000000000;
          v207 = 0x4554454C4544;
          v208 = v202;
          v202 = v203;
LABEL_115:
          sub_1B0B5E738(v208, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_117:
          sub_1B0B5E738(v202, type metadata accessor for MoveAndCopyMessages.CommandID);
          v326 = sub_1B0399D64(v207, v206, &v392);

          *(v192 + 53) = v326;
          sub_1B0B5E738(v360, type metadata accessor for MoveAndCopyMessages.CommandID);
          *(v192 + 61) = 2082;
          v327 = MessageIdentifierSet.debugDescription.getter();
          v329 = sub_1B0399D64(v327, v328, &v392);

          *(v192 + 63) = v329;
          sub_1B0398EFC(v205, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v387 = v192;
          *(v192 + 71) = 2082;
          v330 = v384[2];
          v331 = MEMORY[0x1E69E7CC0];
          if (v330)
          {
            v385 = v163;
            v390 = MEMORY[0x1E69E7CC0];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0A18B88(0, v330, 0);
            v332 = v384;
            v333 = 32;
            v331 = v390;
            do
            {
              v389 = *(v332 + v333);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
              v334 = sub_1B0E44B88();
              v336 = v335;
              v390 = v331;
              v338 = v331[2];
              v337 = v331[3];
              if (v338 >= v337 >> 1)
              {
                sub_1B0A18B88(v337 > 1, v338 + 1, 1);
                v332 = v384;
                v331 = v390;
              }

              v331[2] = v338 + 1;
              v339 = &v331[2 * v338];
              v339[4] = v334;
              v339[5] = v336;
              v333 += 8;
              --v330;
            }

            while (v330);

            v95 = v388;
            v163 = v385;
            v187 = v332;
          }

          else
          {
            v187 = v384;
          }

          v390 = v331;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
          sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
          v340 = sub_1B0E448E8();
          v342 = v341;

          v343 = sub_1B0399D64(v340, v342, &v392);

          v162 = v387;
          *(v387 + 73) = v343;
          swift_bridgeObjectRelease_n();
          v186 = v382;
          swift_bridgeObjectRelease_n();
          *(v162 + 81) = 1024;

          v313 = v383;
          *(v162 + 83) = v383;

          v344 = v381;
          _os_log_impl(&dword_1B0389000, v381, v379, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server completed %{public}s of messages %{public}s with destination UIDs %{public}s and UIDValidity 0x%x", v162, 0x57u);
          v345 = v378;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v345, -1, -1);
          MEMORY[0x1B272C230](v162, -1, -1);

          v161 = v372;
          LODWORD(v162) = v369;
          goto LABEL_125;
        }

        v207 = 1498435395;
        v206 = 0xE400000000000000;
      }

      v208 = v203;
      goto LABEL_115;
    }

    v210 = v361;
    sub_1B0B5E6D0(v154, v361, type metadata accessor for MoveAndCopyMessages.CommandID);
    v211 = swift_getEnumCaseMultiPayload();
    v212 = sub_1B0B5E738(v210, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (v211 == 2)
    {
      MEMORY[0x1EEE9AC00](v212);
      *&v348[-16] = v95;
      v213 = v386;
      v215 = sub_1B0BA70C0(sub_1B0B5EF3C, &v348[-32], v214);
      v386 = v213;
      v216 = v362;
      v217 = v367;
      if ((v218 & 1) == 0)
      {
        v387 = v215;
        v219 = v354;
        sub_1B0B5E6D0(v385, v354, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v220 = v357;
        sub_1B03B5C80(v95, v357, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v221 = sub_1B0E43988();
        v222 = sub_1B0E458D8();
        if (os_log_type_enabled(v221, v222))
        {
          v223 = swift_slowAlloc();
          v384 = swift_slowAlloc();
          v385 = v163;
          v392 = v384;
          *v223 = 68159491;
          *(v223 + 4) = 2;
          *(v223 + 8) = 256;
          v224 = &v219[*(v377 + 20)];
          *(v223 + 10) = *v224;
          *(v223 + 11) = 2082;
          v226 = *(v224 + 1);
          v225 = *(v224 + 2);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v227 = v219;
          v228 = sub_1B0399D64(v226, v225, &v392);

          *(v223 + 13) = v228;
          *(v223 + 21) = 1040;
          *(v223 + 23) = 2;
          *(v223 + 27) = 512;
          *(v223 + 29) = *(v224 + 12);
          *(v223 + 31) = 2160;
          *(v223 + 33) = 0x786F626C69616DLL;
          *(v223 + 41) = 2085;
          v229 = *(v224 + 4);
          v230 = *(v224 + 10);
          v95 = v388;
          v390 = v229;
          v391 = v230;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v231 = sub_1B0E44BA8();
          v233 = sub_1B0399D64(v231, v232, &v392);

          *(v223 + 43) = v233;
          sub_1B0B5E738(v227, type metadata accessor for MailboxTaskLogger);
          *(v223 + 51) = 2082;
          v234 = v357;
          v235 = MessageIdentifierSet.debugDescription.getter();
          v237 = sub_1B0399D64(v235, v236, &v392);

          *(v223 + 53) = v237;
          sub_1B0398EFC(v234, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          _os_log_impl(&dword_1B0389000, v221, v222, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server completed move of messages %{public}s with destination UIDs", v223, 0x3Du);
          v238 = v384;
          swift_arrayDestroy();
          v163 = v385;
          MEMORY[0x1B272C230](v238, -1, -1);
          MEMORY[0x1B272C230](v223, -1, -1);
        }

        else
        {

          sub_1B0B5E738(v219, type metadata accessor for MailboxTaskLogger);
          sub_1B0398EFC(v220, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        }

        v314 = sub_1B0BB0080(v387);
        v316 = v315;
        v317 = v386;
        v319 = sub_1B0B5DC34(v314, v318, v315, v163);
        LODWORD(v162) = v369;
        if (!v317)
        {
          v279 = v319;
          v386 = 0;

          v161 = v372;
          goto LABEL_108;
        }

        v384 = v316;
LABEL_126:

        return sub_1B0398EFC(v95, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }
    }

    else
    {
      v216 = v362;
      v217 = v367;
    }

    sub_1B0B5E6D0(v385, v216, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0B5E6D0(v154, v217, type metadata accessor for MoveAndCopyMessages.CommandID);
    v239 = v365;
    sub_1B03B5C80(v95, v365, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v240 = sub_1B0E43988();
    v241 = sub_1B0E458D8();
    if (!os_log_type_enabled(v240, v241))
    {

      sub_1B0B5E738(v216, type metadata accessor for MailboxTaskLogger);
      sub_1B0B5E738(v217, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0398EFC(v239, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_106:
      v279 = sub_1B0B5DF14(1, 1, v163);
      v161 = v372;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LODWORD(v162) = v369;
      sub_1B03AB2E0(&v390, v161, v369);

      goto LABEL_107;
    }

    v385 = v163;
    v242 = swift_slowAlloc();
    v384 = swift_slowAlloc();
    v392 = v384;
    *v242 = 68159747;
    *(v242 + 4) = 2;
    *(v242 + 8) = 256;
    v243 = v216 + *(v377 + 20);
    *(v242 + 10) = *v243;
    *(v242 + 11) = 2082;
    v245 = *(v243 + 8);
    v244 = *(v243 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v246 = v216;
    v247 = sub_1B0399D64(v245, v244, &v392);

    *(v242 + 13) = v247;
    *(v242 + 21) = 1040;
    *(v242 + 23) = 2;
    v248 = v367;
    *(v242 + 27) = 512;
    *(v242 + 29) = *(v243 + 24);
    *(v242 + 31) = 2160;
    *(v242 + 33) = 0x786F626C69616DLL;
    *(v242 + 41) = 2085;
    v249 = *(v243 + 40);
    v390 = *(v243 + 32);
    v391 = v249;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v250 = sub_1B0E44BA8();
    v252 = sub_1B0399D64(v250, v251, &v392);

    *(v242 + 43) = v252;
    sub_1B0B5E738(v246, type metadata accessor for MailboxTaskLogger);
    *(v242 + 51) = 2082;
    v253 = v356;
    sub_1B0B5E6D0(v248, v356, type metadata accessor for MoveAndCopyMessages.CommandID);
    v254 = v355;
    sub_1B0B5E6D0(v253, v355, type metadata accessor for MoveAndCopyMessages.CommandID);
    v255 = swift_getEnumCaseMultiPayload();
    if (v255 > 1)
    {
      if (v255 != 2)
      {
        v257 = 0x45474E55505845;
        v258 = 0xE700000000000000;
        v95 = v388;
        goto LABEL_105;
      }

      v258 = 0xE400000000000000;
      v257 = 1163284301;
    }

    else
    {
      if (v255)
      {
        v256 = v254;
      }

      else
      {
        v256 = v253;
      }

      if (v255)
      {
        v257 = 1498435395;
      }

      else
      {
        v253 = v254;
        v257 = 0x4554454C4544;
      }

      if (v255)
      {
        v258 = 0xE400000000000000;
      }

      else
      {
        v258 = 0xE600000000000000;
      }

      v254 = v256;
    }

    v95 = v388;
    sub_1B0B5E738(v254, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_105:
    sub_1B0B5E738(v253, type metadata accessor for MoveAndCopyMessages.CommandID);
    v320 = sub_1B0399D64(v257, v258, &v392);

    *(v242 + 53) = v320;
    sub_1B0B5E738(v248, type metadata accessor for MoveAndCopyMessages.CommandID);
    *(v242 + 61) = 2082;
    v321 = v365;
    v322 = MessageIdentifierSet.debugDescription.getter();
    v324 = sub_1B0399D64(v322, v323, &v392);

    *(v242 + 63) = v324;
    sub_1B0398EFC(v321, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    _os_log_impl(&dword_1B0389000, v240, v241, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server completed %{public}s of messages %{public}s without destination UIDs", v242, 0x47u);
    v325 = v384;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v325, -1, -1);
    MEMORY[0x1B272C230](v242, -1, -1);

    v163 = v385;
    goto LABEL_106;
  }

  sub_1B0B5E6D0(v385, v159, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B5E6D0(v154, v376, type metadata accessor for MoveAndCopyMessages.CommandID);
  v164 = v95;
  v165 = v374;
  sub_1B03B5C80(v164, v374, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B04420D8(v155);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v166 = 20302;
  if (v160 == 2)
  {
    v166 = 4473154;
  }

  v378 = v166;
  if (v160 == 2)
  {
    v167 = 0xE300000000000000;
  }

  else
  {
    v167 = 0xE200000000000000;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B04420D8(v155);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B04420D8(v155);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B04420D8(v155);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v168 = sub_1B0E43988();
  v169 = sub_1B0E458E8();
  if (os_log_type_enabled(v168, v169))
  {
    LODWORD(v368) = v169;
    v385 = v163;
    v162 = swift_slowAlloc();
    v367 = swift_slowAlloc();
    v392 = v367;
    *v162 = 68160259;
    *(v162 + 1) = 2;
    *(v162 + 4) = 256;
    v170 = v159 + *(v377 + 20);
    v162[10] = *v170;
    *(v162 + 11) = 2082;
    v172 = *(v170 + 8);
    v171 = *(v170 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v173 = sub_1B0399D64(v172, v171, &v392);

    *(v162 + 13) = v173;
    *(v162 + 21) = 1040;
    *(v162 + 23) = 2;
    *(v162 + 27) = 512;
    *(v162 + 29) = *(v170 + 24);
    *(v162 + 31) = 2160;
    *(v162 + 33) = 0x786F626C69616DLL;
    *(v162 + 41) = 2085;
    v174 = *(v170 + 40);
    v390 = *(v170 + 32);
    v391 = v174;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v175 = sub_1B0E44BA8();
    v177 = sub_1B0399D64(v175, v176, &v392);

    *(v162 + 43) = v177;
    sub_1B0B5E738(v159, type metadata accessor for MailboxTaskLogger);
    *(v162 + 51) = 2082;
    v178 = v376;
    v179 = v373;
    sub_1B0B5E6D0(v376, v373, type metadata accessor for MoveAndCopyMessages.CommandID);
    v180 = v363;
    sub_1B0B5E6D0(v179, v363, type metadata accessor for MoveAndCopyMessages.CommandID);
    v181 = swift_getEnumCaseMultiPayload();
    if (v181 > 1)
    {
      v185 = v374;
      if (v181 != 2)
      {
        v183 = 0x45474E55505845;
        v184 = 0xE700000000000000;
        v163 = v385;
        goto LABEL_70;
      }

      v184 = 0xE400000000000000;
      v183 = 1163284301;
      v163 = v385;
    }

    else
    {
      if (v181)
      {
        v182 = v180;
      }

      else
      {
        v182 = v179;
      }

      if (!v181)
      {
        v179 = v180;
      }

      v373 = v179;
      if (v181)
      {
        v183 = 1498435395;
      }

      else
      {
        v183 = 0x4554454C4544;
      }

      if (v181)
      {
        v184 = 0xE400000000000000;
      }

      else
      {
        v184 = 0xE600000000000000;
      }

      v180 = v182;
      v163 = v385;
      v185 = v374;
    }

    sub_1B0B5E738(v180, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_70:
    sub_1B0B5E738(v373, type metadata accessor for MoveAndCopyMessages.CommandID);
    v259 = sub_1B0399D64(v183, v184, &v392);

    *(v162 + 53) = v259;
    sub_1B0B5E738(v178, type metadata accessor for MoveAndCopyMessages.CommandID);
    *(v162 + 61) = 2082;
    v260 = MessageIdentifierSet.debugDescription.getter();
    v262 = sub_1B0399D64(v260, v261, &v392);

    *(v162 + 63) = v262;
    sub_1B0398EFC(v185, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *(v162 + 71) = 2082;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v263 = sub_1B0399D64(v378, v167, &v392);

    *(v162 + 73) = v263;

    v264 = v382;
    sub_1B0447F00(v382);

    v265 = v381;

    sub_1B0447F00(v264);

    *(v162 + 81) = 2082;
    sub_1B04420D8(v264);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v266 = ResponseText.debugDescription.getter(v264, v364, v265);
    v268 = v267;
    sub_1B0447F00(v264);

    v269 = sub_1B0399D64(v266, v268, &v392);

    *(v162 + 83) = v269;

    sub_1B0447F00(v264);

    sub_1B0447F00(v264);

    _os_log_impl(&dword_1B0389000, v168, v368, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server failed to %{public}s messages %{public}s: %{public}s %{public}s", v162, 0x5Bu);
    v270 = v367;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v270, -1, -1);
    MEMORY[0x1B272C230](v162, -1, -1);

    v209 = v380;
    v161 = v372;
    LODWORD(v162) = v369;
    v95 = v388;
    goto LABEL_71;
  }

  sub_1B0B5E738(v159, type metadata accessor for MailboxTaskLogger);
  sub_1B0B5E738(v376, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0398EFC(v165, &unk_1EB6E1AF0, &unk_1B0E9AF40);

  sub_1B0447F00(v155);

  sub_1B0447F00(v155);

  sub_1B0447F00(v155);

  sub_1B0447F00(v155);

  v95 = v388;
  v209 = v380;
  v161 = v372;
LABEL_71:
  v271 = v384;
  v272 = v370;
  sub_1B0B5E6D0(v384, v370, type metadata accessor for MoveAndCopyMessages.CommandID);
  v273 = swift_getEnumCaseMultiPayload();
  v274 = sub_1B0B5E738(v272, type metadata accessor for MoveAndCopyMessages.CommandID);
  if (v273 == 2)
  {
    MEMORY[0x1EEE9AC00](v274);
    *&v348[-16] = v95;
    v275 = v386;
    v277 = sub_1B0BA70C0(sub_1B0B5E65C, &v348[-32], v276);
    v386 = v275;
    if ((v278 & 1) == 0)
    {
      sub_1B0BB0080(v277);
    }
  }

  v279 = sub_1B0B5DF14(0, 1, v163);
  v280 = v371;
  sub_1B0B5E6D0(v271, v371, type metadata accessor for MoveAndCopyMessages.CommandID);
  v281 = swift_getEnumCaseMultiPayload();
  sub_1B0B5E738(v280, type metadata accessor for MoveAndCopyMessages.CommandID);
  if (v281 != 1)
  {
    goto LABEL_107;
  }

  v384 = v279;
  v282 = v163 + 64;
  v283 = 1 << *(v163 + 32);
  v284 = -1;
  if (v283 < 64)
  {
    v284 = ~(-1 << v283);
  }

  v285 = v284 & *(v163 + 64);
  v286 = (v283 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v287 = 0;
  while (v285)
  {
LABEL_85:
    v289 = __clz(__rbit64(v285));
    v285 &= v285 - 1;
    v290 = v289 | (v287 << 6);
    v291 = *(v163 + 56) + 24 * v290;
    if ((*v291 & 1) == 0)
    {
      v292 = *(v291 + 8);
      v293 = *(v291 + 16);
      v294 = v163;
      LODWORD(v390) = *(*(v163 + 48) + 4 * v290);
      v385 = v292;
      sub_1B03B2000(v292, v293);
      v295 = sub_1B041C1E8();
      v296 = v209;
      v297 = v383;
      MessageIdentifierSet.init(_:)(&v390, &type metadata for UID, v295);
      swift_storeEnumTagMultiPayload();
      v298 = swift_isUniquelyReferenced_nonNull_native();
      v299 = *(v296 + 152);
      v390 = v299;
      v300 = sub_1B0AE0058(v297);
      v302 = v299[2];
      v303 = (v301 & 1) == 0;
      v304 = __OFADD__(v302, v303);
      v305 = v302 + v303;
      if (v304)
      {
        goto LABEL_129;
      }

      v306 = v301;
      if (v299[3] >= v305)
      {
        if ((v298 & 1) == 0)
        {
          v312 = v300;
          sub_1B0B8E7A4();
          v300 = v312;
        }
      }

      else
      {
        sub_1B0B31D20(v305, v298);
        v300 = sub_1B0AE0058(v383);
        if ((v306 & 1) != (v307 & 1))
        {
          goto LABEL_131;
        }
      }

      v163 = v294;
      v308 = v390;
      if (v306)
      {
        *(v390[7] + v300) = 1;
      }

      else
      {
        v390[(v300 >> 6) + 8] |= 1 << v300;
        v309 = v300;
        sub_1B0B5E6D0(v383, v308[6] + *(v366 + 72) * v300, type metadata accessor for MoveAndCopyMessages.CommandID);
        *(v308[7] + v309) = 1;
        v310 = v308[2];
        v304 = __OFADD__(v310, 1);
        v311 = v310 + 1;
        if (v304)
        {
          goto LABEL_130;
        }

        v308[2] = v311;
      }

      v209 = v380;
      sub_1B0391D50(v385, v293);
      sub_1B0B5E738(v383, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v209 + 152) = v308;
    }
  }

  while (1)
  {
    v288 = v287 + 1;
    if (__OFADD__(v287, 1))
    {
      break;
    }

    if (v288 >= v286)
    {

      v95 = v388;
      v161 = v372;
      LODWORD(v162) = v369;
      v279 = v384;
      goto LABEL_108;
    }

    v285 = *(v282 + 8 * v288);
    ++v287;
    if (v285)
    {
      v287 = v288;
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

void *sub_1B0B54500()
{
  v1 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0B5E6D0(v0, v3, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0;
    }

    v26 = *v3;
    v5 = v3[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4848, &qword_1B0EC6FB0);
    result = sub_1B0E46688();
    v7 = result;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = result + 8;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v5 + 48) + 4 * v17);
        v19 = v7[6];
        v20 = *(*(v5 + 56) + 16 * v17);
        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(v19 + 4 * v17) = v18;
        v21 = v7[7] + 24 * v17;
        *v21 = 0;
        *(v21 + 8) = v20;
        v22 = v7[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          break;
        }

        v7[2] = v24;
        result = sub_1B03B2000(v20, *(&v20 + 1));
        if (!v11)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v8;
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v12)
        {

          return v26;
        }

        v16 = *(v5 + 64 + 8 * v8);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B0B5E738(v3, type metadata accessor for MoveAndCopyMessages.CommandID);
      return 0;
    }

    return *v3;
  }

  return result;
}

uint64_t sub_1B0B54748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E43908();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E43808();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B0E437D8();
  sub_1B0507508();
  sub_1B0E43888();
  sub_1B0B5E738(v6, MEMORY[0x1E69E93F0]);
  sub_1B0B5E738(v9, MEMORY[0x1E69E93B0]);
}

unint64_t sub_1B0B548AC(uint64_t a1, uint64_t a2)
{
  v13[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v13 - v4;
  v6 = *(a1 + 8);
  v13[1] = sub_1B03D06F8();
  result = sub_1B0E46EE8();
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      v14[0] = *(v6 + 32 + 8 * v9);
      v10 = sub_1B041C1E8();
      result = Range<>.init<A>(_:)(v14, &type metadata for UID, v10);
      v14[5] = result;
      if (HIDWORD(result) != result)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v11 = sub_1B0E46E88();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
        sub_1B0E46E38();
        result = v11(v14, 0);
      }

      if (v8 == ++v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v12 = sub_1B0E46E08();
    sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return v12 & 1;
  }

  return result;
}

BOOL sub_1B0B54A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1B0B5E6D0(a1, &v24 - v14, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v25 = a2;
      sub_1B03C60A4(v15, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03B5C80(v9, v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v17 = sub_1B0B37EEC(v6);
      a2 = v25;
      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = sub_1B0B38B4C(v18);

    goto LABEL_7;
  }

  v17 = MEMORY[0x1E69E7CD0];
LABEL_7:
  sub_1B0B5E6D0(a2, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      v20 = MEMORY[0x1E69E7CD0];
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v19)
  {
LABEL_11:
    v21 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = sub_1B0B38B4C(v21);

    goto LABEL_13;
  }

  sub_1B03C60A4(v12, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v9, v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v20 = sub_1B0B37EEC(v6);
  sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_13:
  v22 = sub_1B0B87438(v20, v17);

  return (v22 & 1) == 0;
}

uint64_t sub_1B0B54D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v76 = a1;
  v77 = a2;
  v72 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v64[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64[-v11];
  sub_1B0B58B98(v2[16], v2[19]);
  if ((v13 & 1) == 0 || *(v2[22] + 16))
  {
    v14 = v77;
    sub_1B0B5E6D0(v77, v12, type metadata accessor for MailboxTaskLogger);
    sub_1B0B5E6D0(v14, v9, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v15 = sub_1B0E43988();
    v16 = sub_1B0E458E8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v78[0] = v18;
      *v17 = 68159235;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      v19 = v72;
      v20 = &v9[*(v72 + 20)];
      *(v17 + 10) = *v20;
      *(v17 + 11) = 2082;
      v21 = &v12[*(v19 + 20)];
      *(v17 + 13) = sub_1B0399D64(*(v21 + 1), *(v21 + 2), v78);
      *(v17 + 21) = 1040;
      *(v17 + 23) = 2;
      *(v17 + 27) = 512;
      LOWORD(v20) = *(v20 + 12);
      sub_1B0B5E738(v9, type metadata accessor for MailboxTaskLogger);
      *(v17 + 29) = v20;
      *(v17 + 31) = 2160;
      *(v17 + 33) = 0x786F626C69616DLL;
      *(v17 + 41) = 2085;
      v22 = *(v21 + 4);
      LODWORD(v21) = *(v21 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B5E738(v12, type metadata accessor for MailboxTaskLogger);
      *&v79[0] = v22;
      DWORD2(v79[0]) = v21;
      v23 = sub_1B0E44BA8();
      v25 = sub_1B0399D64(v23, v24, v78);

      *(v17 + 43) = v25;
      _os_log_impl(&dword_1B0389000, v15, v16, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Task is completing, but not done.", v17, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v18, -1, -1);
      MEMORY[0x1B272C230](v17, -1, -1);
    }

    else
    {
      sub_1B0B5E738(v9, type metadata accessor for MailboxTaskLogger);

      v13 = sub_1B0B5E738(v12, type metadata accessor for MailboxTaskLogger);
    }
  }

  v26 = v3[4];
  v27 = *(v3 + 10);
  MEMORY[0x1EEE9AC00](v13);
  v28 = v3;
  v30 = v76;
  v29 = v77;
  *&v64[-16] = v3;
  *&v64[-8] = v29;
  v33 = *(v30 + 176);
  v31 = v30 + 176;
  v32 = v33;
  v34 = *(v31 - 8);
  v35 = *(v31 + 8);
  v71 = *(v31 + 16);
  v75 = v26;
  if (v71 == 1)
  {
    *&v79[0] = v34;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(v79, v26, v27, 0, sub_1B0B5C4C4);
    sub_1B03BB638(v34, v32, v35, 1);
    v70 = 0;
    v69 = 0;
    v34 = *&v79[0];
    v36 = v76;
    *(v76 + 168) = *&v79[0];
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v36 + 192) = 1;
  }

  else
  {
    v69 = v35;
    v70 = v32;
  }

  v37 = v27;
  if (*(v28 + 120) == 1)
  {
    v68 = v34;
    v38 = v77;
    sub_1B0B5E6D0(v77, v74, type metadata accessor for MailboxTaskLogger);
    sub_1B0B5E6D0(v38, v73, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v39 = sub_1B0E43988();
    v40 = sub_1B0E45908();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = v40;
      v42 = v41;
      v66 = swift_slowAlloc();
      v78[0] = v66;
      *v42 = 68159235;
      v67 = v27;
      v44 = v73;
      v43 = v74;
      *(v42 + 4) = 2;
      *(v42 + 8) = 256;
      v45 = v72;
      v46 = &v44[*(v72 + 20)];
      *(v42 + 10) = *v46;
      *(v42 + 11) = 2082;
      v47 = &v43[*(v45 + 20)];
      *(v42 + 13) = sub_1B0399D64(*(v47 + 1), *(v47 + 2), v78);
      *(v42 + 21) = 1040;
      *(v42 + 23) = 2;
      *(v42 + 27) = 512;
      v48 = *(v46 + 12);
      v49 = v44;
      v37 = v67;
      sub_1B0B5E738(v49, type metadata accessor for MailboxTaskLogger);
      *(v42 + 29) = v48;
      *(v42 + 31) = 2160;
      *(v42 + 33) = 0x786F626C69616DLL;
      *(v42 + 41) = 2085;
      v50 = *(v47 + 4);
      LODWORD(v47) = *(v47 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B5E738(v43, type metadata accessor for MailboxTaskLogger);
      *&v79[0] = v50;
      DWORD2(v79[0]) = v47;
      v51 = sub_1B0E44BA8();
      v53 = sub_1B0399D64(v51, v52, v78);

      *(v42 + 43) = v53;
      _os_log_impl(&dword_1B0389000, v39, v65, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence has more messages to move/copy. Will mark as needing to re-run.", v42, 0x33u);
      v54 = v66;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v54, -1, -1);
      MEMORY[0x1B272C230](v42, -1, -1);
    }

    else
    {
      sub_1B0B5E738(v73, type metadata accessor for MailboxTaskLogger);

      sub_1B0B5E738(v74, type metadata accessor for MailboxTaskLogger);
    }

    v55 = v68;
    if (v71)
    {
      *&v79[0] = v68;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B2B7B4(v79, v75, v37, 0);
      sub_1B03BB638(v55, v70, v69, 1);
      v56 = v76;
      *(v76 + 168) = *&v79[0];
      *v31 = 0;
      *(v31 + 8) = 0;
      *(v56 + 192) = 1;
    }
  }

  v57 = *(v31 + 40);
  v79[2] = *(v31 + 24);
  v80[0] = v57;
  *(v80 + 12) = *(v31 + 52);
  v58 = *(v31 + 8);
  v79[0] = *(v31 - 8);
  v79[1] = v58;
  sub_1B0B294B8(v75, v37);
  MEMORY[0x1EEE9AC00](v59);
  v60 = v76;
  *&v64[-32] = v77;
  *&v64[-24] = v60;
  *&v64[-16] = v61;
  sub_1B0B12B64(sub_1B0B5C4CC, &v64[-48], v62);
}

void sub_1B0B55510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  if ((*(a2 + 120) & 1) == 0)
  {
    sub_1B0B5E6D0(a3, v24 - v10, type metadata accessor for MailboxTaskLogger);
    sub_1B0B5E6D0(a3, v8, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v12 = sub_1B0E43988();
    v13 = sub_1B0E45908();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 68159235;
      *(v14 + 4) = 2;
      *(v14 + 8) = 256;
      v16 = &v8[*(v6 + 20)];
      *(v14 + 10) = *v16;
      *(v14 + 11) = 2082;
      v17 = *(v6 + 20);
      v24[0] = a1;
      v18 = &v11[v17];
      *(v14 + 13) = sub_1B0399D64(*&v11[v17 + 8], *&v11[v17 + 16], &v26);
      *(v14 + 21) = 1040;
      *(v14 + 23) = 2;
      *(v14 + 27) = 512;
      v19 = *(v16 + 12);
      sub_1B0B5E738(v8, type metadata accessor for MailboxTaskLogger);
      *(v14 + 29) = v19;
      *(v14 + 31) = 2160;
      *(v14 + 33) = 0x786F626C69616DLL;
      *(v14 + 41) = 2085;
      v20 = *(v18 + 4);
      LODWORD(v18) = *(v18 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B5E738(v11, type metadata accessor for MailboxTaskLogger);
      v24[1] = v20;
      v25 = v18;
      a1 = v24[0];
      v21 = sub_1B0E44BA8();
      v23 = sub_1B0399D64(v21, v22, &v26);

      *(v14 + 43) = v23;
      _os_log_impl(&dword_1B0389000, v12, v13, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking no more messages needing move or copy.", v14, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v15, -1, -1);
      MEMORY[0x1B272C230](v14, -1, -1);
    }

    else
    {
      sub_1B0B5E738(v8, type metadata accessor for MailboxTaskLogger);

      sub_1B0B5E738(v11, type metadata accessor for MailboxTaskLogger);
    }

    *(a1 + *(type metadata accessor for MailboxSyncState(0) + 52) + 2) = 0;
  }
}

void sub_1B0B55810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33[-v13];
  v15 = *a1;
  v39 = *(a1 + 8);
  sub_1B0B5E6D0(a2, &v33[-v13], type metadata accessor for MailboxTaskLogger);
  sub_1B0B5E6D0(a2, v11, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = sub_1B0E43988();
  v17 = sub_1B0E45908();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = a4;
    v19 = v18;
    v35 = swift_slowAlloc();
    v42 = v35;
    *v19 = 68159747;
    v38 = v4;
    *(v19 + 4) = 2;
    *(v19 + 8) = 256;
    v20 = *(v9 + 20);
    v34 = v17;
    v21 = &v11[v20];
    *(v19 + 10) = v11[v20];
    *(v19 + 11) = 2082;
    v22 = *(v9 + 20);
    v36 = a3;
    v23 = &v14[v22];
    *(v19 + 13) = sub_1B0399D64(*&v14[v22 + 8], *&v14[v22 + 16], &v42);
    *(v19 + 21) = 1040;
    *(v19 + 23) = 2;
    *(v19 + 27) = 512;
    LOWORD(v21) = *(v21 + 12);
    sub_1B0B5E738(v11, type metadata accessor for MailboxTaskLogger);
    *(v19 + 29) = v21;
    *(v19 + 31) = 2160;
    *(v19 + 33) = 0x786F626C69616DLL;
    *(v19 + 41) = 2085;
    v24 = *(v23 + 4);
    LODWORD(v23) = *(v23 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B5E738(v14, type metadata accessor for MailboxTaskLogger);
    v40 = v24;
    v41 = v23;
    v25 = sub_1B0E44BA8();
    v27 = sub_1B0399D64(v25, v26, &v42);

    *(v19 + 43) = v27;
    *(v19 + 51) = 2160;
    *(v19 + 53) = 0x786F626C69616DLL;
    *(v19 + 61) = 2085;
    v40 = v15;
    LODWORD(v21) = v39;
    v41 = v39;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v28 = sub_1B0E44BA8();
    v30 = sub_1B0399D64(v28, v29, &v42);

    *(v19 + 63) = v30;
    _os_log_impl(&dword_1B0389000, v16, v34, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking mailbox '%{sensitive,mask.mailbox}s' as needing to run find-missing-messages.", v19, 0x47u);
    v31 = v35;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v31, -1, -1);
    MEMORY[0x1B272C230](v19, -1, -1);

    v32 = v21;
  }

  else
  {
    sub_1B0B5E738(v11, type metadata accessor for MailboxTaskLogger);

    sub_1B0B5E738(v14, type metadata accessor for MailboxTaskLogger);
    v32 = v39;
  }

  sub_1B0B28CA4(v15, v32, 12);
}

double sub_1B0B55BA4()
{
  if (qword_1EB6DD970 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0B55C08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a5@<X8>, double d0_0@<D0>)
{
  result = sub_1B0B5C530(a1, a2, d0_0);
  *a5 = result;
  a5[1] = v8;
  return result;
}

uint64_t sub_1B0B55CB0()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E42F48();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B55D14(uint64_t a1)
{
  MEMORY[0x1B2728D70](*v1);

  return sub_1B0E42F48();
}

uint64_t sub_1B0B55D68(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  sub_1B0E42F48();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B55E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v5 | (v5 << 32));
  a3(v8, v6);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B55EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(v4 + 16);
  MEMORY[0x1B2728D70](*(v4 + 8) | (*(v4 + 8) << 32), a2, a3);

  return a4(a1, v6);
}

uint64_t sub_1B0B55F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v6 | (v6 << 32));
  a4(v9, v7);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B55FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((*(a1 + 8) | (*(a1 + 8) << 32)) != (*(a2 + 8) | (*(a2 + 8) << 32)))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if ((sub_1B04520BC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return a5(v5, v6);
}

uint64_t sub_1B0B5606C()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = v0[32];
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E42F48();
  if (v3 == 1)
  {
    MEMORY[0x1B2728D70](v2 != 0);
  }

  else
  {
    MEMORY[0x1B2728D70](2);
    sub_1B0E46C88();
    sub_1B0E46C88();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0B5612C(uint64_t a1)
{
  v2 = *(v1 + 3);
  v3 = v1[32];
  MEMORY[0x1B2728D70](*v1);
  sub_1B0E42F48();
  if (v3 == 1)
  {
    return MEMORY[0x1B2728D70](v2 != 0);
  }

  MEMORY[0x1B2728D70](2);
  sub_1B0E46C88();
  return sub_1B0E46C88();
}

uint64_t sub_1B0B561C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 3);
  v4 = v1[32];
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  sub_1B0E42F48();
  if (v4 == 1)
  {
    MEMORY[0x1B2728D70](v3 != 0);
  }

  else
  {
    MEMORY[0x1B2728D70](2);
    sub_1B0E46C88();
    sub_1B0E46C88();
  }

  return sub_1B0E46CB8();
}

BOOL sub_1B0B5627C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1B0B57D94(v5, v7);
}

uint64_t sub_1B0B562C8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = result + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = (v4 + 8 * v2);
    v8 = *v6;
    v7 = v6[1];
    if (v7 < v8)
    {
      goto LABEL_34;
    }

    v9 = v7 - v8;
    v10 = v3;
    if (v7 - v8 != -1)
    {
      break;
    }

LABEL_7:
    v11 = v10[2];
    v12 = *(v5 + 16);
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      goto LABEL_35;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= *(v5 + 24) >> 1)
    {
      if (v10[2])
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v18 = v12 + v11;
      }

      else
      {
        v18 = v12;
      }

      result = sub_1B0AFF0B0(result, v18, 1, v5);
      v5 = result;
      if (v10[2])
      {
LABEL_27:
        v19 = *(v5 + 16);
        if ((*(v5 + 24) >> 1) - v19 < v11)
        {
          goto LABEL_37;
        }

        memcpy((v5 + 4 * v19 + 32), v10 + 4, 4 * v11);

        if (v11)
        {
          v20 = *(v5 + 16);
          v21 = __OFADD__(v20, v11);
          v22 = v20 + v11;
          if (v21)
          {
            goto LABEL_38;
          }

          *(v5 + 16) = v22;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_36;
    }

LABEL_4:
    if (++v2 == v1)
    {
      return v5;
    }
  }

  if (v9 < 0)
  {
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4548, &qword_1B0EC52E0);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v10);
  v14 = result - 32;
  if (result < 32)
  {
    v14 = result - 29;
  }

  v10[2] = v7 - v8 + 1;
  v10[3] = 2 * (v14 >> 2);
  v15 = 32;
  while (2)
  {
    if (v7 == v8)
    {
      v16 = 0;
      goto LABEL_19;
    }

    v16 = v8 + 1;
    if (v8 != -1)
    {
LABEL_19:
      *(v10 + v15) = v8;
      if (!v9)
      {
        goto LABEL_7;
      }

      --v9;
      v15 += 4;
      v17 = v7 == v8;
      LODWORD(v8) = v16;
      if (v17)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B0B564A8(void (*a1)(double))
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  a1(v6);
  sub_1B0B5E6D0(v8, v4, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v12 = 0x45474E55505845;
      goto LABEL_12;
    }

    v12 = 1163284301;
    v11 = v4;
  }

  else
  {
    v10 = EnumCaseMultiPayload == 0;
    if (EnumCaseMultiPayload)
    {
      v11 = v4;
    }

    else
    {
      v11 = v8;
    }

    if (v10)
    {
      v8 = v4;
      v12 = 0x4554454C4544;
    }

    else
    {
      v12 = 1498435395;
    }
  }

  sub_1B0B5E738(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_12:
  sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
  return v12;
}

unint64_t sub_1B0B56634()
{
  result = qword_1EB6E4988;
  if (!qword_1EB6E4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4988);
  }

  return result;
}

void sub_1B0B56688(uint64_t a1, char a2, void *a3)
{
  v32 = *(a1 + 16);
  if (!v32)
  {
LABEL_17:

    return;
  }

  v3 = 0;
  v38 = 32;
  while (1)
  {
    if (v3 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1B0E46BA8();
      __break(1u);
      goto LABEL_23;
    }

    v4 = *(a1 + v38 + 16);
    v40 = *(a1 + v38);
    v41 = v4;
    v42 = *(a1 + v38 + 32);
    v34 = *(a1 + v38 + 48);
    v43 = v34;
    v5 = v40;
    v6 = BYTE7(v40);
    v7 = *(&v40 + 5);
    v8 = *(&v40 + 1);
    v9 = *(&v40 + 1);
    v10 = v4;
    v11 = v42;
    sub_1B03B5C80(&v40, v39, &qword_1EB6E49D8, &unk_1B0EC6FD8);
    if (!v9)
    {
      goto LABEL_17;
    }

    v12 = (v8 | ((v7 | (v6 << 16)) << 32)) >> 24;
    v13 = v5 & 1;
    LOBYTE(v40) = v5 & 1;
    DWORD1(v40) = v12;
    *(&v40 + 1) = v9;
    LODWORD(v41) = v10;
    *(&v41 + 1) = *(&v10 + 1);
    *&v42 = v11;
    v14 = *a3;
    v47 = v11;
    v46[0] = v40;
    v46[1] = v41;
    v15 = sub_1B0AE0250(v46);
    v17 = v14[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_20;
    }

    v21 = v16;
    if (v14[3] >= v20)
    {
      break;
    }

    sub_1B0B330F0(v20, a2 & 1);
    v44[0] = v40;
    v44[1] = v41;
    v45 = v42;
    v15 = sub_1B0AE0250(v44);
    if ((v21 & 1) != (v22 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if (v21)
    {
      goto LABEL_15;
    }

LABEL_11:
    v23 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    v24 = v23[6] + 40 * v15;
    *v24 = v13;
    *(v24 + 4) = v12;
    *(v24 + 8) = v9;
    *(v24 + 16) = v10;
    *(v24 + 24) = *(&v10 + 1);
    *(v24 + 32) = v11;
    v25 = v23[7] + 12 * v15;
    *v25 = *(&v11 + 1);
    *(v25 + 8) = v34 & 1;
    v26 = v23[2];
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    ++v3;
    v23[2] = v27;
    v38 += 56;
    a2 = 1;
    if (v32 == v3)
    {
      goto LABEL_17;
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v36 = v15;
  sub_1B0B8EC9C();
  v15 = v36;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v28 = swift_allocError();
  swift_willThrow();

  v48 = v28;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = *(&v41 + 1);
    v31 = v42;

    sub_1B0391D50(v30, v31);

    return;
  }

LABEL_23:
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0xD00000000000001BLL, 0x80000001B0F2B570);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](39, 0xE100000000000000);
  sub_1B0E465B8();
  __break(1u);
}

void *sub_1B0B56A30(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_1B0B56AB8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1B0B57AE0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1B0B56B48(uint64_t a1)
{
  v2 = v1;
  v32 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = *(a1 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_23;
  }

  while (2)
  {
    v26 = v12;
    v27 = v2;
    v25 = &v25;
    MEMORY[0x1EEE9AC00](v8);
    v28 = &v25 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v13);
    v29 = 0;
    v14 = 0;
    v2 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v12 = v19 | (v14 << 6);
      sub_1B0B5E6D0(*(a1 + 48) + *(v30 + 72) * v12, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E6D0(v10, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          goto LABEL_6;
        }

        sub_1B0B5E738(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0B5E738(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
        *&v28[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_21:
          sub_1B0BAAB2C(v28, v26, v29, a1);
          return;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
LABEL_6:
          sub_1B0B5E738(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
        }

        sub_1B0B5E738(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      }
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {
        goto LABEL_21;
      }

      v21 = *(v2 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_23:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v24 = swift_slowAlloc();
  sub_1B0B56A30(v24, v12, a1, sub_1B0B57854);

  MEMORY[0x1B272C230](v24, -1, -1);
}

void sub_1B0B56EF0(uint64_t a1)
{
  v2 = v1;
  v32 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = *(a1 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (2)
  {
    v26 = v12;
    v27 = v2;
    v25 = &v25;
    MEMORY[0x1EEE9AC00](v8);
    v28 = &v25 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v13);
    v29 = 0;
    v14 = 0;
    v2 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v12 = v19 | (v14 << 6);
      sub_1B0B5E6D0(*(a1 + 48) + *(v30 + 72) * v12, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E6D0(v10, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 2)
      {
        sub_1B0B5E738(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
        goto LABEL_6;
      }

      if (EnumCaseMultiPayload == 3)
      {
LABEL_6:
        sub_1B0B5E738(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      else
      {
        sub_1B0B5E738(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0B5E738(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
        *&v28[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_19:
          sub_1B0BAAB2C(v28, v26, v29, a1);
          return;
        }
      }
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v2 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v24 = swift_slowAlloc();
  sub_1B0B56A30(v24, v12, a1, sub_1B0B575CC);

  MEMORY[0x1B272C230](v24, -1, -1);
}

void sub_1B0B57294(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v31 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a3 + 32);
  v9 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v24 = v9;
    v26 = &v24;
    MEMORY[0x1EEE9AC00](v6);
    v25 = &v24 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v10);
    v27 = 0;
    v9 = 0;
    v30 = a3;
    v12 = *(a3 + 56);
    a3 += 56;
    v11 = v12;
    v13 = 1 << *(a3 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v20 = v17 | (v9 << 6);
      sub_1B0B5E6D0(*(v30 + 48) + *(v28 + 72) * v20, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      v21 = v29(v8);
      sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v3)
      {

        swift_willThrow();
        return;
      }

      if (v21)
      {
        *&v25[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_17:
          sub_1B0BAAB2C(v25, v24, v27, v30);
          return;
        }
      }
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        goto LABEL_17;
      }

      v19 = *(a3 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  sub_1B0B56AB8(v23, v9, a3, v29);

  MEMORY[0x1B272C230](v23, -1, -1);
}

void sub_1B0B575CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v25 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v24 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v23 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_13:
    v17 = v14 | (v9 << 6);
    sub_1B0B5E6D0(*(a3 + 48) + *(v24 + 72) * v17, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E6D0(v8, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_1B0B5E738(v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_5:
      sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    }

    else
    {
      sub_1B0B5E738(v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_18:

        sub_1B0BAAB2C(v22, v21, v23, a3);
        return;
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_18;
    }

    v16 = *(a3 + 56 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1B0B57854(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v25 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v24 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v23 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = v14 | (v9 << 6);
    sub_1B0B5E6D0(*(a3 + 48) + *(v24 + 72) * v17, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E6D0(v8, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_5;
      }

      sub_1B0B5E738(v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_20:

        sub_1B0BAAB2C(v22, v21, v23, a3);
        return;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
LABEL_5:
        sub_1B0B5E738(v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_20;
    }

    v16 = *(a3 + 56 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B0B57AE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v29 = a4;
  v25 = a2;
  v26 = a1;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    sub_1B0B5E6D0(*(v30 + 48) + *(v28 + 72) * v20, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    v21 = v29(v8);
    sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (v4)
    {
      return;
    }

    if (v21)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        v23 = v30;

        sub_1B0BAAB2C(v26, v25, v27, v23);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_1B0B57CF8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1B0B8C9A0(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B57D5C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *a2 = v2;
  return sub_1B03B2000(v4, v3);
}

uint64_t sub_1B0B57D74@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *a2 = v2;
  return sub_1B03B2000(v4, v3);
}

BOOL sub_1B0B57D94(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_1B0AB8858(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)))
  {
    v5 = *(a1 + 3);
    v7 = *(a2 + 6);
    v6 = *(a2 + 7);
    if (a1[32])
    {
      if (v5)
      {
        if (a2[32])
        {
          return (v7 | v6) != 0;
        }
      }

      else if (a2[32])
      {
        return (v7 | v6) == 0;
      }
    }

    else if ((a2[32] & 1) == 0 && __PAIR64__(v6, v7) == v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B0B57E4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4990, &unk_1B0EC6D30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v36 - v17;
  v20 = &v36 + *(v19 + 56) - v17;
  sub_1B0B5E6D0(a1, &v36 - v17, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B5E6D0(a2, v20, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_17;
      }

LABEL_19:
      sub_1B0398EFC(v18, &qword_1EB6E4990, &unk_1B0EC6D30);
LABEL_22:
      v34 = 0;
      return v34 & 1;
    }

    sub_1B0B5E6D0(v18, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    v22 = *v9;
    v23 = *(v9 + 2);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v24 = *v20;
      v25 = *(v20 + 2);
      v26 = *(v20 + 2);
      if (*(v9 + 2) | (*(v9 + 2) << 32)) == (v25 | (v25 << 32)) && (sub_1B04520BC(v22, v24))
      {
        v27 = sub_1B0B74018(v23, v26);
        goto LABEL_14;
      }

LABEL_20:

LABEL_21:
      sub_1B0B5E738(v18, type metadata accessor for MoveAndCopyMessages.CommandID);
      goto LABEL_22;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B0B5E6D0(v18, v15, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B03C60A4(v20, v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      v34 = sub_1B0E46E08();
      sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0B5E738(v18, type metadata accessor for MoveAndCopyMessages.CommandID);
      return v34 & 1;
    }

    sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_19;
  }

  sub_1B0B5E6D0(v18, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
  v28 = *v12;
  v29 = *(v12 + 2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_18;
  }

  v30 = *v20;
  v31 = *(v20 + 2);
  v32 = *(v20 + 2);
  if ((*(v12 + 2) | (*(v12 + 2) << 32)) != (v31 | (v31 << 32)) || (sub_1B04520BC(v28, v30) & 1) == 0)
  {
    goto LABEL_20;
  }

  v27 = sub_1B0B73688(v29, v32);
LABEL_14:
  v33 = v27;

  if ((v33 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  sub_1B0B5E738(v18, type metadata accessor for MoveAndCopyMessages.CommandID);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_1B0B582AC(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1B0E46138();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A484(0, v7 & ~(v7 >> 63), 0);
    v42 = v47;
    if (v41)
    {
      result = sub_1B0E460E8();
    }

    else
    {
      result = sub_1B0E460B8();
      v9 = *(a1 + 36);
    }

    v44 = result;
    v45 = v9;
    v46 = v41 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v36 = a1 + 56;
      v37 = v11;
      v34 = v2;
      v35 = a1 + 64;
      v38 = v7;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v44;
        v15 = v45;
        v16 = v46;
        v17 = a1;
        sub_1B0B94778(v44, v45, v46, a1);
        v43[0] = v18;
        swift_getAtKeyPath();

        v19 = v42;
        v47 = v42;
        v20 = v6;
        v22 = *(v42 + 16);
        v21 = *(v42 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1B0B0A484((v21 > 1), v22 + 1, 1);
          v19 = v47;
        }

        *(v19 + 16) = v22 + 1;
        v23 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = v19;
        result = sub_1B0B5E798(v20, v19 + v23 + *(v39 + 72) * v22, type metadata accessor for MoveAndCopyMessages.CommandID);
        v6 = v20;
        if (v41)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_1B0E46108())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49A8, &qword_1B0EC6F98);
          v12 = sub_1B0E45498();
          sub_1B0E46188();
          result = v12(v43, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_1B0425168(v44, v45, v46);
            return v42;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v24 = 1 << *(v17 + 32);
          if (v14 >= v24)
          {
            goto LABEL_38;
          }

          v25 = v14 >> 6;
          v26 = *(v36 + 8 * (v14 >> 6));
          if (((v26 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v27 = v26 & (-2 << (v14 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v35 + 8 * v25);
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                result = sub_1B0425168(v14, v15, 0);
                v24 = __clz(__rbit64(v31)) + v28;
                goto LABEL_33;
              }
            }

            result = sub_1B0425168(v14, v15, 0);
          }

LABEL_33:
          v33 = *(v17 + 36);
          v44 = v24;
          v45 = v33;
          v46 = 0;
          v7 = v38;
          if (v10 == v38)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void sub_1B0B586B0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = a1;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A544(0, v3, 0);
    v34 = v5 + 64;
    v6 = sub_1B0E460B8();
    if (v6 < 0 || (v7 = v6, v6 >= 1 << *(v5 + 32)))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v25 = v5 + 72;
      v26 = v3;
      v35 = *(v5 + 36);
      v8 = 1;
      v27 = v5;
      while (1)
      {
        v9 = v7 >> 6;
        if ((*(v34 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          break;
        }

        if (v35 != *(v5 + 36))
        {
          goto LABEL_26;
        }

        v29 = v8;
        v32 = *(*(v5 + 48) + 4 * v7);
        v10 = *(v5 + 56) + 40 * v7;
        v30 = *v10;
        v11 = *(v10 + 8);
        v12 = *(v10 + 16);
        v31 = *(v10 + 24);
        v13 = *(v10 + 32);
        sub_1B03B2000(v11, v12);
        v15 = *(v38 + 16);
        v14 = *(v38 + 24);
        v33 = v15 + 1;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v15 >= v14 >> 1)
        {
          sub_1B0B0A544((v14 > 1), v33, 1);
        }

        *(v38 + 16) = v33;
        v16 = v38 + 56 * v15;
        *(v16 + 32) = v30;
        *(v16 + 35) = v37;
        *(v16 + 33) = v36;
        *(v16 + 36) = v32;
        *(v16 + 40) = a2;
        *(v16 + 48) = a3;
        *(v16 + 56) = v11;
        *(v16 + 64) = v12;
        *(v16 + 72) = v31;
        *(v16 + 80) = v13;
        v5 = v27;
        v17 = 1 << *(v27 + 32);
        if (v7 >= v17)
        {
          goto LABEL_27;
        }

        v18 = *(v34 + 8 * v9);
        if ((v18 & (1 << v7)) == 0)
        {
          goto LABEL_28;
        }

        if (v35 != *(v27 + 36))
        {
          goto LABEL_29;
        }

        v19 = v18 & (-2 << (v7 & 0x3F));
        if (v19)
        {
          v7 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v9 << 6;
          v21 = v9 + 1;
          v22 = (v25 + 8 * v9);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_1B0425168(v7, v35, 0);
              v7 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_1B0425168(v7, v35, 0);
          v7 = v17;
        }

LABEL_19:
        if (v29 == v26)
        {
          return;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          v8 = v29 + 1;
          if (v7 < 1 << *(v27 + 32))
          {
            continue;
          }
        }

        goto LABEL_24;
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
  }
}

uint64_t sub_1B0B58990(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1B0BAC1BC(MEMORY[0x1E69E7CC0]);
  sub_1B0BAC1BC(v9);
  result = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CD0];
  v12 = *(a1 + 16);
  if (v12)
  {
    v16[1] = v10;
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1B0B5E6D0(v13, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E6D0(v8, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      v15 = swift_allocObject();
      sub_1B0B5E798(v5, v15 + *(*v15 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B028E4(&v17, v15);
      sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);

      v13 += v14;
      --v12;
    }

    while (v12);
    return v18;
  }

  return result;
}

void sub_1B0B58B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v8;
  v21[1] = sub_1B0B5C4EC(&qword_1EB6DD960, &unk_1B0EC6DBC);
  KeyPath = swift_getKeyPath();

  v10 = sub_1B0B582AC(a1, KeyPath);

  v11 = sub_1B0B3876C(v10);

  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 56);
  v15 = (v12 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = 0;
  while (v14)
  {
LABEL_9:
    sub_1B0B5E6D0(*(v11 + 48) + *(v5 + 72) * (__clz(__rbit64(v14)) | (v16 << 6)), v7, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (!*(a2 + 16) || (v18 = sub_1B0AE0058(v7), (v19 & 1) == 0))
    {
      sub_1B0B5E738(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_15:

      return;
    }

    v14 &= v14 - 1;
    v20 = *(*(a2 + 56) + v18);
    sub_1B0B5E738(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
    if ((v20 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return;
    }

    v14 = *(v11 + 56 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B0B58DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4990, &unk_1B0EC6D30);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v367 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v391 = &v367 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v367 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v390 = &v367 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v373 = &v367 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v377 = &v367 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v371 = &v367 - v21;
  v421 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v421);
  v368 = &v367 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v369 = &v367 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v405 = &v367 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v404 = &v367 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v403 = &v367 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v367 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v367 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v385 = &v367 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v384 = &v367 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v383 = &v367 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v395 = &v367 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v412 = &v367 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v372 = &v367 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v375 = &v367 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v382 = (&v367 - v52);
  MEMORY[0x1EEE9AC00](v53);
  v389 = &v367 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v394 = &v367 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v393 = &v367 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v392 = &v367 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v414 = &v367 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v413 = &v367 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v381 = (&v367 - v66);
  MEMORY[0x1EEE9AC00](v67);
  v388 = &v367 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v399 = &v367 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v398 = &v367 - v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1B0EC6C30;
  *(v73 + 32) = a1;
  v433 = v73;
  v397 = *(*a2 + 96);

  v74 = sub_1B0B4FCB8();
  if (v74)
  {
    v75 = v74;
    v396 = a2;
    v417 = v6;
    v418 = v36;
    v419 = MEMORY[0x1E69E7CD0];
    v378 = MEMORY[0x1E69E7CD0];
    v406 = v13;
    v374 = a3;
    v410 = v33;
    v411 = v8;
    while (1)
    {
      if (*(a3 + 16))
      {

        v77 = sub_1B0AE00C4(v76);
        v78 = MEMORY[0x1E69E7CD0];
        if (v79)
        {
          v78 = *(*(a3 + 56) + 8 * v77);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        }

        v80 = v78;
        if ((v78 & 0xC000000000000001) == 0)
        {
LABEL_9:
          v83 = 0;
          v85 = -1 << *(v80 + 32);
          v81 = v80 + 56;
          v82 = ~v85;
          v86 = -v85;
          if (v86 < 64)
          {
            v87 = ~(-1 << v86);
          }

          else
          {
            v87 = -1;
          }

          v84 = v87 & *(v80 + 56);
          goto LABEL_13;
        }
      }

      else
      {
        v80 = MEMORY[0x1E69E7CD0];
        if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) == 0)
        {
          goto LABEL_9;
        }
      }

      sub_1B0E460F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      sub_1B039E3F8(&qword_1EB6E49B8, &qword_1EB6E43B8, &unk_1B0EC5100, &unk_1B0EC2E60);
      sub_1B0E45518();
      v80 = v434;
      v81 = v435;
      v82 = v436;
      v83 = v437;
      v84 = v438;
LABEL_13:
      v379 = v82;
      v380 = v75;
      v88 = (v82 + 64) >> 6;
      v401 = v81;
      v402 = v80;
      v89 = v419;
      v400 = v88;
      while (1)
      {
        v409 = v89 & 0xC000000000000001;
        v90 = v89 < 0 ? v89 : v89 & 0xFFFFFFFFFFFFFF8;
        v419 = v89;
        v416 = v89 + 56;
        v91 = v84;
LABEL_18:
        if ((v80 & 0x8000000000000000) == 0)
        {
          break;
        }

        v96 = sub_1B0E46168();
        if (!v96 || (*&v422 = v96, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100), swift_dynamicCast(), v95 = v427, v94 = v83, v408 = v91, !v427))
        {
LABEL_296:
          v80 = v402;
          goto LABEL_297;
        }

LABEL_27:
        v407 = v94;
        v97 = *(*v95 + 96);
        swift_beginAccess();
        v415 = v95;
        v420 = v97;
        v98 = v398;
        sub_1B0B5E6D0(v95 + v97, v398, type metadata accessor for MoveAndCopyMessages.CommandID);
        v100 = v396;
        v99 = v397;
        swift_beginAccess();
        v101 = v100 + v99;
        v102 = v399;
        sub_1B0B5E6D0(v101, v399, type metadata accessor for MoveAndCopyMessages.CommandID);
        v103 = sub_1B0B57E4C(v98, v102);
        sub_1B0B5E738(v102, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0B5E738(v98, type metadata accessor for MoveAndCopyMessages.CommandID);
        if (v103)
        {

          sub_1B03D91F8(v402);
          v365 = 1;
          goto LABEL_302;
        }

        if (!v409)
        {
          v106 = v419;
          v83 = v406;
          v104 = v415;
          if (!*(v419 + 16))
          {
            goto LABEL_100;
          }

          sub_1B0E46C28();
          v107 = v388;
          sub_1B0B5E6D0(v104 + v420, v388, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1B0B5E6D0(v107, v381, type metadata accessor for MoveAndCopyMessages.CommandID);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              v387 = v90;
              v376 = *v381;
              v110 = *(v381 + 2);
              v111 = v381[2];
              MEMORY[0x1B2728D70](3);
              MEMORY[0x1B2728D70](v110 | (v110 << 32));
              v112 = v111 + 64;
              v113 = 1 << *(v111 + 32);
              if (v113 < 64)
              {
                v114 = ~(-1 << v113);
              }

              else
              {
                v114 = -1;
              }

              v115 = v114 & *(v111 + 64);
              v116 = (v113 + 63) >> 6;
              v386 = v111;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v117 = 0;
              v118 = 0;
              if (v115)
              {
                while (1)
                {
                  v119 = v118;
LABEL_44:
                  v120 = (*(v386 + 56) + 16 * (__clz(__rbit64(v115)) | (v119 << 6)));
                  v121 = *v120;
                  v83 = v120[1];
                  sub_1B03B2000(*v120, v83);
                  if (v83 >> 60 == 15)
                  {
                    break;
                  }

                  v115 &= v115 - 1;
                  v424 = v429;
                  v425 = v430;
                  v426 = v431;
                  v422 = v427;
                  v423 = v428;
                  sub_1B0E46C88();
                  sub_1B0E42F48();
                  sub_1B0391D50(v121, v83);
                  v117 ^= sub_1B0E46CB8();
                  v118 = v119;
                  if (!v115)
                  {
                    goto LABEL_41;
                  }
                }
              }

              else
              {
                while (1)
                {
LABEL_41:
                  v119 = v118 + 1;
                  if (__OFADD__(v118, 1))
                  {
                    goto LABEL_307;
                  }

                  if (v119 >= v116)
                  {
                    break;
                  }

                  v115 = *(v112 + 8 * v119);
                  ++v118;
                  if (v115)
                  {
                    goto LABEL_44;
                  }
                }
              }

              MEMORY[0x1B2728D70](v117);

              v83 = v406;
              goto LABEL_61;
            }

            MEMORY[0x1B2728D70](1);
          }

          else
          {
            if (!EnumCaseMultiPayload)
            {
              v109 = v371;
              sub_1B03C60A4(v381, v371, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              MEMORY[0x1B2728D70](0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
              sub_1B0B0D328();
              sub_1B0E447C8();
              sub_1B0398EFC(v109, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v104 = v415;
              goto LABEL_62;
            }

            v387 = v90;
            v370 = *v381;
            v122 = *(v381 + 2);
            v123 = v381[2];
            MEMORY[0x1B2728D70](2);
            MEMORY[0x1B2728D70](v122 | (v122 << 32));
            v124 = v123 + 64;
            v125 = 1 << *(v123 + 32);
            if (v125 < 64)
            {
              v126 = ~(-1 << v125);
            }

            else
            {
              v126 = -1;
            }

            v127 = v126 & *(v123 + 64);
            v128 = (v125 + 63) >> 6;
            v376 = v123;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v129 = 0;
            v130 = 0;
            if (v127)
            {
              while (1)
              {
                v386 = v129;
                v131 = v130;
LABEL_56:
                v132 = __clz(__rbit64(v127));
                v127 &= v127 - 1;
                v133 = (*(v376 + 56) + 24 * (v132 | (v131 << 6)));
                v134 = *v133;
                v136 = *(v133 + 1);
                v135 = *(v133 + 2);
                sub_1B03B2000(v136, v135);
                v424 = v429;
                v425 = v430;
                v426 = v431;
                v422 = v427;
                v423 = v428;
                sub_1B0E46C88();
                MEMORY[0x1B2728D70](v134);
                sub_1B03B2000(v136, v135);
                sub_1B0E42F48();
                sub_1B0391D50(v136, v135);
                sub_1B0391D50(v136, v135);
                v129 = sub_1B0E46CB8() ^ v386;
                v83 = v406;
                if (!v127)
                {
                  goto LABEL_52;
                }
              }
            }

            while (1)
            {
LABEL_52:
              v131 = v130 + 1;
              if (__OFADD__(v130, 1))
              {
                goto LABEL_305;
              }

              if (v131 >= v128)
              {
                break;
              }

              v127 = *(v124 + 8 * v131);
              ++v130;
              if (v127)
              {
                v386 = v129;
                v130 = v131;
                goto LABEL_56;
              }
            }

            MEMORY[0x1B2728D70](v129);

LABEL_61:
            v104 = v415;
            v106 = v419;
            v90 = v387;
          }

LABEL_62:
          sub_1B0B5E738(v388, type metadata accessor for MoveAndCopyMessages.CommandID);
          v137 = sub_1B0E46CB8();
          v138 = -1 << *(v106 + 32);
          v139 = v137 & ~v138;
          if (((*(v416 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139) & 1) == 0)
          {
            goto LABEL_100;
          }

          v140 = ~v138;
          while (2)
          {
            v141 = *(*(v106 + 48) + 8 * v139);
            v142 = *(*v141 + 96);
            swift_beginAccess();
            v143 = v413;
            sub_1B0B5E6D0(v141 + v142, v413, type metadata accessor for MoveAndCopyMessages.CommandID);
            v144 = v104 + v420;
            v145 = v414;
            sub_1B0B5E6D0(v144, v414, type metadata accessor for MoveAndCopyMessages.CommandID);
            v146 = v83 + *(v417 + 48);
            sub_1B0B5E6D0(v143, v83, type metadata accessor for MoveAndCopyMessages.CommandID);
            sub_1B0B5E6D0(v145, v146, type metadata accessor for MoveAndCopyMessages.CommandID);
            v147 = swift_getEnumCaseMultiPayload();
            if (v147 > 1)
            {
              if (v147 != 2)
              {
                sub_1B0B5E738(v414, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v413, type metadata accessor for MoveAndCopyMessages.CommandID);
                v169 = swift_getEnumCaseMultiPayload();
                v104 = v415;
                if (v169 == 3)
                {
LABEL_175:
                  sub_1B0B5E738(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_30:

                  v83 = v407;
                  v91 = v408;
                  v81 = v401;
                  v80 = v402;
                  v88 = v400;
                  goto LABEL_18;
                }

                goto LABEL_92;
              }

              v150 = v394;
              sub_1B0B5E6D0(v83, v394, type metadata accessor for MoveAndCopyMessages.CommandID);
              v151 = *v150;
              v152 = *(v150 + 16);
              if (swift_getEnumCaseMultiPayload() != 2)
              {
                goto LABEL_91;
              }

              v153 = *v146;
              v154 = *(v146 + 8);
              v155 = *(v146 + 16);
              if ((*(v150 + 8) | (*(v150 + 8) << 32)) != (v154 | (v154 << 32)))
              {
                goto LABEL_93;
              }

              v156 = *(v151 + 16);
              v104 = v415;
              if (v156 != *(v153 + 16))
              {
                goto LABEL_96;
              }

              if (!v156 || v151 == v153)
              {
LABEL_77:

                v159 = sub_1B0B74018(v152, v155);
                goto LABEL_87;
              }

              v157 = (v151 + 32);
              v158 = (v153 + 32);
              while (*v157 == *v158)
              {
                ++v157;
                ++v158;
                if (!--v156)
                {
                  goto LABEL_77;
                }
              }

LABEL_96:
              sub_1B0B5E738(v414, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E738(v413, type metadata accessor for MoveAndCopyMessages.CommandID);

              v83 = v406;
LABEL_97:
              sub_1B0B5E738(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
            }

            else
            {
              if (!v147)
              {
                v148 = v392;
                sub_1B0B5E6D0(v83, v392, type metadata accessor for MoveAndCopyMessages.CommandID);
                v149 = swift_getEnumCaseMultiPayload();
                v104 = v415;
                if (v149)
                {
                  sub_1B0B5E738(v414, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v413, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0398EFC(v148, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  goto LABEL_92;
                }

                v170 = v146;
                v171 = v148;
                v172 = v377;
                sub_1B03C60A4(v170, v377, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                sub_1B03D06F8();
                v173 = sub_1B0E46E08();
                sub_1B0398EFC(v172, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                sub_1B0B5E738(v414, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v413, type metadata accessor for MoveAndCopyMessages.CommandID);
                v104 = v415;
                sub_1B0398EFC(v171, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                sub_1B0B5E738(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
                v106 = v419;
                if (v173)
                {
                  goto LABEL_30;
                }

LABEL_99:
                v139 = (v139 + 1) & v140;
                if (((*(v416 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139) & 1) == 0)
                {
                  goto LABEL_100;
                }

                continue;
              }

              v160 = v393;
              sub_1B0B5E6D0(v83, v393, type metadata accessor for MoveAndCopyMessages.CommandID);
              v161 = *v160;
              v162 = *(v160 + 16);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v163 = *v146;
                v164 = *(v146 + 8);
                v165 = *(v146 + 16);
                if ((*(v160 + 8) | (*(v160 + 8) << 32)) == (v164 | (v164 << 32)))
                {
                  v166 = *(v161 + 16);
                  v104 = v415;
                  if (v166 != *(v163 + 16))
                  {
                    goto LABEL_96;
                  }

                  if (v166 && v161 != v163)
                  {
                    v167 = (v161 + 32);
                    v168 = (v163 + 32);
                    while (*v167 == *v168)
                    {
                      ++v167;
                      ++v168;
                      if (!--v166)
                      {
                        goto LABEL_86;
                      }
                    }

                    goto LABEL_96;
                  }

LABEL_86:

                  v159 = sub_1B0B73688(v162, v165);
LABEL_87:
                  LODWORD(v386) = v159;

                  sub_1B0B5E738(v414, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v413, type metadata accessor for MoveAndCopyMessages.CommandID);

                  v83 = v406;
                  if (v386)
                  {
                    goto LABEL_175;
                  }

                  goto LABEL_97;
                }

LABEL_93:
                sub_1B0B5E738(v414, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v413, type metadata accessor for MoveAndCopyMessages.CommandID);

                v83 = v406;
                v104 = v415;
                goto LABEL_97;
              }

LABEL_91:

              sub_1B0B5E738(v414, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E738(v413, type metadata accessor for MoveAndCopyMessages.CommandID);
              v104 = v415;
LABEL_92:
              sub_1B0398EFC(v83, &qword_1EB6E4990, &unk_1B0EC6D30);
            }

            break;
          }

          v106 = v419;
          goto LABEL_99;
        }

        v104 = v415;

        v105 = sub_1B0E46178();

        if (v105)
        {
          goto LABEL_30;
        }

LABEL_100:

        MEMORY[0x1B27272B0](v174);
        if (*((v433 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v433 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B0E45218();
        }

        sub_1B0E45298();
        if (v409)
        {

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v175 = sub_1B0E46148();

          v88 = v400;
          if (v175)
          {

            *&v422 = v175;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
            swift_dynamicCast();

            v83 = v407;
            v91 = v408;
            v81 = v401;
            v80 = v402;
            goto LABEL_18;
          }

          v323 = sub_1B0E46138();
          if (__OFADD__(v323, 1))
          {
            goto LABEL_314;
          }

          sub_1B0B02EE4(v90, v323 + 1);
          v83 = v324;
          v432 = v324;
          v325 = *(v324 + 16);
          if (*(v324 + 24) <= v325)
          {
            sub_1B0B044D0(v325 + 1);
            v83 = v432;
          }

          sub_1B0E46C28();
          v326 = v369;
          sub_1B0B5E6D0(v104 + v420, v369, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1B0B5E6D0(v326, v368, type metadata accessor for MoveAndCopyMessages.CommandID);
          v327 = swift_getEnumCaseMultiPayload();
          v378 = v83;
          if (v327 > 1)
          {
            if (v327 == 2)
            {
              v416 = *v368;
              v329 = *(v368 + 8);
              v330 = *(v368 + 16);
              MEMORY[0x1B2728D70](3);
              MEMORY[0x1B2728D70](v329 | (v329 << 32));
              v331 = v330 + 64;
              v332 = 1 << *(v330 + 32);
              if (v332 < 64)
              {
                v333 = ~(-1 << v332);
              }

              else
              {
                v333 = -1;
              }

              v334 = v333 & *(v330 + 64);
              v335 = (v332 + 63) >> 6;

              v420 = v330;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v336 = 0;
              v337 = 0;
              if (v334)
              {
                while (1)
                {
                  v338 = v337;
LABEL_267:
                  v339 = (*(v420 + 56) + 16 * (__clz(__rbit64(v334)) | (v338 << 6)));
                  v340 = *v339;
                  v83 = v339[1];
                  sub_1B03B2000(*v339, v83);
                  if (v83 >> 60 == 15)
                  {
                    break;
                  }

                  v334 &= v334 - 1;
                  v424 = v429;
                  v425 = v430;
                  v426 = v431;
                  v422 = v427;
                  v423 = v428;
                  sub_1B0E46C88();
                  sub_1B0E42F48();
                  sub_1B0391D50(v340, v83);
                  v336 ^= sub_1B0E46CB8();
                  v337 = v338;
                  if (!v334)
                  {
                    goto LABEL_264;
                  }
                }
              }

              else
              {
                while (1)
                {
LABEL_264:
                  v338 = v337 + 1;
                  if (__OFADD__(v337, 1))
                  {
                    goto LABEL_312;
                  }

                  if (v338 >= v335)
                  {
                    break;
                  }

                  v334 = *(v331 + 8 * v338);
                  ++v337;
                  if (v334)
                  {
                    goto LABEL_267;
                  }
                }
              }

              MEMORY[0x1B2728D70](v336);

              v88 = v400;
              v104 = v415;
              v83 = v378;
            }

            else
            {
              MEMORY[0x1B2728D70](1);
            }
          }

          else
          {
            if (v327)
            {
              v409 = *v368;
              v341 = *(v368 + 8);
              v342 = *(v368 + 16);
              MEMORY[0x1B2728D70](2);
              MEMORY[0x1B2728D70](v341 | (v341 << 32));
              v343 = 1 << *(v342 + 32);
              if (v343 < 64)
              {
                v344 = ~(-1 << v343);
              }

              else
              {
                v344 = -1;
              }

              v345 = v344 & *(v342 + 64);
              v346 = (v343 + 63) >> 6;

              v416 = v342;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v347 = 0;
              for (i = 0; v345; v83 = v378)
              {
                v349 = i;
LABEL_279:
                v350 = __clz(__rbit64(v345));
                v345 &= v345 - 1;
                v351 = (*(v416 + 56) + 24 * (v350 | (v349 << 6)));
                v420 = *v351;
                v353 = *(v351 + 1);
                v352 = *(v351 + 2);
                sub_1B03B2000(v353, v352);
                v424 = v429;
                v425 = v430;
                v426 = v431;
                v422 = v427;
                v423 = v428;
                sub_1B0E46C88();
                MEMORY[0x1B2728D70](v420);
                sub_1B03B2000(v353, v352);
                sub_1B0E42F48();
                sub_1B0391D50(v353, v352);
                sub_1B0391D50(v353, v352);
                v347 ^= sub_1B0E46CB8();
              }

              while (1)
              {
                v349 = i + 1;
                if (__OFADD__(i, 1))
                {
                  goto LABEL_311;
                }

                if (v349 >= v346)
                {

                  MEMORY[0x1B2728D70](v347);

                  v88 = v400;
                  v104 = v415;
                  goto LABEL_284;
                }

                v345 = *(v342 + 64 + 8 * v349);
                ++i;
                if (v345)
                {
                  i = v349;
                  goto LABEL_279;
                }
              }
            }

            v328 = v371;
            sub_1B03C60A4(v368, v371, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            MEMORY[0x1B2728D70](0);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
            sub_1B0B0D328();
            sub_1B0E447C8();
            v104 = v415;
            sub_1B0398EFC(v328, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v88 = v400;
          }

LABEL_284:
          sub_1B0B5E738(v369, type metadata accessor for MoveAndCopyMessages.CommandID);
          v354 = sub_1B0E46CB8();
          v355 = v83 + 56;
          v356 = -1 << *(v83 + 32);
          v357 = v354 & ~v356;
          v358 = v357 >> 6;
          if (((-1 << v357) & ~*(v83 + 56 + 8 * (v357 >> 6))) == 0)
          {
            v360 = 0;
            v361 = (63 - v356) >> 6;
            v83 = v407;
            while (++v358 != v361 || (v360 & 1) == 0)
            {
              v362 = v358 == v361;
              if (v358 == v361)
              {
                v358 = 0;
              }

              v360 |= v362;
              v363 = *(v355 + 8 * v358);
              if (v363 != -1)
              {
                v359 = __clz(__rbit64(~v363)) + (v358 << 6);
                goto LABEL_294;
              }
            }

            goto LABEL_313;
          }

          v359 = __clz(__rbit64((-1 << v357) & ~*(v83 + 56 + 8 * (v357 >> 6)))) | v357 & 0x7FFFFFFFFFFFFFC0;
          v83 = v407;
LABEL_294:
          *(v355 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v359;
          v364 = v378;
          *(*(v378 + 48) + 8 * v359) = v104;
          ++*(v364 + 16);

          v89 = v364;
          v81 = v401;
          v80 = v402;
          v84 = v408;
        }

        else
        {
          sub_1B0E46C28();
          v176 = v389;
          sub_1B0B5E6D0(v104 + v420, v389, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1B0B5E6D0(v176, v382, type metadata accessor for MoveAndCopyMessages.CommandID);
          v177 = swift_getEnumCaseMultiPayload();
          v387 = v90;
          if (v177 <= 1)
          {
            if (v177)
            {
              v370 = *v382;
              v191 = *(v382 + 2);
              v192 = v382[2];
              MEMORY[0x1B2728D70](2);
              MEMORY[0x1B2728D70](v191 | (v191 << 32));
              v193 = v192 + 64;
              v194 = 1 << *(v192 + 32);
              if (v194 < 64)
              {
                v195 = ~(-1 << v194);
              }

              else
              {
                v195 = -1;
              }

              v196 = v195 & *(v192 + 64);
              v197 = (v194 + 63) >> 6;
              v376 = v192;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v198 = 0;
              v199 = 0;
              if (v196)
              {
                while (1)
                {
                  v386 = v198;
                  v200 = v199;
LABEL_129:
                  v201 = __clz(__rbit64(v196));
                  v196 &= v196 - 1;
                  v202 = (*(v376 + 56) + 24 * (v201 | (v200 << 6)));
                  v203 = *v202;
                  v83 = *(v202 + 1);
                  v204 = *(v202 + 2);
                  sub_1B03B2000(v83, v204);
                  v424 = v429;
                  v425 = v430;
                  v426 = v431;
                  v422 = v427;
                  v423 = v428;
                  sub_1B0E46C88();
                  MEMORY[0x1B2728D70](v203);
                  sub_1B03B2000(v83, v204);
                  sub_1B0E42F48();
                  sub_1B0391D50(v83, v204);
                  sub_1B0391D50(v83, v204);
                  v198 = sub_1B0E46CB8() ^ v386;
                  if (!v196)
                  {
                    goto LABEL_125;
                  }
                }
              }

              while (1)
              {
LABEL_125:
                v200 = v199 + 1;
                if (__OFADD__(v199, 1))
                {
                  goto LABEL_304;
                }

                if (v200 >= v197)
                {
                  break;
                }

                v196 = *(v193 + 8 * v200);
                ++v199;
                if (v196)
                {
                  v386 = v198;
                  v199 = v200;
                  goto LABEL_129;
                }
              }

              MEMORY[0x1B2728D70](v198);

              goto LABEL_134;
            }

            v178 = v371;
            sub_1B03C60A4(v382, v371, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            MEMORY[0x1B2728D70](0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
            sub_1B0B0D328();
            sub_1B0E447C8();
            sub_1B0398EFC(v178, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_135:
            v205 = v410;
            v83 = v411;
            v104 = v415;
            goto LABEL_136;
          }

          if (v177 == 2)
          {
            v376 = *v382;
            v179 = *(v382 + 2);
            v180 = v382[2];
            MEMORY[0x1B2728D70](3);
            MEMORY[0x1B2728D70](v179 | (v179 << 32));
            v181 = v180 + 64;
            v182 = 1 << *(v180 + 32);
            if (v182 < 64)
            {
              v183 = ~(-1 << v182);
            }

            else
            {
              v183 = -1;
            }

            v184 = v183 & *(v180 + 64);
            v185 = (v182 + 63) >> 6;
            v386 = v180;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v186 = 0;
            v187 = 0;
            if (v184)
            {
              while (1)
              {
                v188 = v187;
LABEL_117:
                v189 = (*(v386 + 56) + 16 * (__clz(__rbit64(v184)) | (v188 << 6)));
                v190 = *v189;
                v83 = v189[1];
                sub_1B03B2000(*v189, v83);
                if (v83 >> 60 == 15)
                {
                  break;
                }

                v184 &= v184 - 1;
                v424 = v429;
                v425 = v430;
                v426 = v431;
                v422 = v427;
                v423 = v428;
                sub_1B0E46C88();
                sub_1B0E42F48();
                sub_1B0391D50(v190, v83);
                v186 ^= sub_1B0E46CB8();
                v187 = v188;
                if (!v184)
                {
                  goto LABEL_114;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_114:
                v188 = v187 + 1;
                if (__OFADD__(v187, 1))
                {
                  goto LABEL_306;
                }

                if (v188 >= v185)
                {
                  break;
                }

                v184 = *(v181 + 8 * v188);
                ++v187;
                if (v184)
                {
                  goto LABEL_117;
                }
              }
            }

            MEMORY[0x1B2728D70](v186);

LABEL_134:

            goto LABEL_135;
          }

          MEMORY[0x1B2728D70](1);
          v205 = v410;
          v83 = v411;
LABEL_136:
          sub_1B0B5E738(v389, type metadata accessor for MoveAndCopyMessages.CommandID);
          v206 = sub_1B0E46CB8();
          v207 = ~(-1 << *(v419 + 32));
          v208 = v206 & v207;
          while (2)
          {
            if ((*(v416 + ((v208 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v208))
            {
              v209 = *(*(v419 + 48) + 8 * v208);
              v210 = *(*v209 + 96);
              swift_beginAccess();
              v211 = v418;
              sub_1B0B5E6D0(v209 + v210, v418, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E6D0(v104 + v420, v205, type metadata accessor for MoveAndCopyMessages.CommandID);
              v212 = v83 + *(v417 + 48);
              sub_1B0B5E6D0(v211, v83, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E6D0(v205, v212, type metadata accessor for MoveAndCopyMessages.CommandID);
              v213 = swift_getEnumCaseMultiPayload();
              if (v213 > 1)
              {
                if (v213 != 2)
                {
                  sub_1B0B5E738(v205, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v418, type metadata accessor for MoveAndCopyMessages.CommandID);
                  if (swift_getEnumCaseMultiPayload() == 3)
                  {
                    goto LABEL_173;
                  }

                  goto LABEL_138;
                }

                v215 = v83;
                v216 = v405;
                sub_1B0B5E6D0(v215, v405, type metadata accessor for MoveAndCopyMessages.CommandID);
                v217 = *v216;
                v218 = *(v216 + 16);
                if (swift_getEnumCaseMultiPayload() != 2)
                {

                  v205 = v410;
                  sub_1B0B5E738(v410, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v418, type metadata accessor for MoveAndCopyMessages.CommandID);
                  v83 = v411;
                  goto LABEL_138;
                }

                v219 = *(v216 + 8);
                v220 = *v212;
                v221 = *(v212 + 8);
                v222 = *(v212 + 16);
                if ((v219 | (v219 << 32)) == (v221 | (v221 << 32)))
                {
                  v223 = *(v217 + 16);
                  if (v223 == *(v220 + 16))
                  {
                    if (!v223 || v217 == v220)
                    {
LABEL_154:

                      LODWORD(v386) = sub_1B0B74018(v218, v222);

                      v226 = v410;
                      sub_1B0B5E738(v410, type metadata accessor for MoveAndCopyMessages.CommandID);
                      sub_1B0B5E738(v418, type metadata accessor for MoveAndCopyMessages.CommandID);

                      v205 = v226;

                      v83 = v411;
                      if (v386)
                      {
                        goto LABEL_173;
                      }

                      goto LABEL_170;
                    }

                    v224 = (v217 + 32);
                    v225 = (v220 + 32);
                    while (*v224 == *v225)
                    {
                      ++v224;
                      ++v225;
                      if (!--v223)
                      {
                        goto LABEL_154;
                      }
                    }
                  }
                }

                v239 = v410;
                sub_1B0B5E738(v410, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v418, type metadata accessor for MoveAndCopyMessages.CommandID);

                v205 = v239;

                v83 = v411;
LABEL_170:
                sub_1B0B5E738(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
                goto LABEL_139;
              }

              if (!v213)
              {
                v214 = v403;
                sub_1B0B5E6D0(v83, v403, type metadata accessor for MoveAndCopyMessages.CommandID);
                if (swift_getEnumCaseMultiPayload())
                {
                  sub_1B0B5E738(v205, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v418, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0398EFC(v214, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_138:
                  sub_1B0398EFC(v83, &qword_1EB6E4990, &unk_1B0EC6D30);
                  goto LABEL_139;
                }

                v240 = v212;
                v241 = v214;
                v242 = v390;
                sub_1B03C60A4(v240, v390, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                sub_1B03D06F8();
                v243 = sub_1B0E46E08();
                sub_1B0398EFC(v242, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                sub_1B0B5E738(v205, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v418, type metadata accessor for MoveAndCopyMessages.CommandID);
                v104 = v415;
                sub_1B0398EFC(v241, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                sub_1B0B5E738(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
                if (v243)
                {
                  goto LABEL_174;
                }

LABEL_139:
                v208 = (v208 + 1) & v207;
                continue;
              }

              v227 = v83;
              v228 = v404;
              sub_1B0B5E6D0(v227, v404, type metadata accessor for MoveAndCopyMessages.CommandID);
              v229 = *v228;
              v230 = *(v228 + 16);
              if (swift_getEnumCaseMultiPayload() != 1)
              {

                v205 = v410;
                sub_1B0B5E738(v410, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v418, type metadata accessor for MoveAndCopyMessages.CommandID);
                v83 = v411;
                v104 = v415;
                goto LABEL_138;
              }

              v231 = *(v228 + 8);
              v232 = *v212;
              v233 = *(v212 + 8);
              v234 = *(v212 + 16);
              if ((v231 | (v231 << 32)) != (v233 | (v233 << 32)) || (v235 = *(v229 + 16), v235 != *(v232 + 16)))
              {
LABEL_169:
                v205 = v410;
                sub_1B0B5E738(v410, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v418, type metadata accessor for MoveAndCopyMessages.CommandID);

                v83 = v411;
                v104 = v415;
                goto LABEL_170;
              }

              if (v235 && v229 != v232)
              {
                v236 = (v229 + 32);
                v237 = (v232 + 32);
                while (*v236 == *v237)
                {
                  ++v236;
                  ++v237;
                  if (!--v235)
                  {
                    goto LABEL_164;
                  }
                }

                goto LABEL_169;
              }

LABEL_164:

              v238 = sub_1B0B73688(v230, v234);

              v205 = v410;
              sub_1B0B5E738(v410, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E738(v418, type metadata accessor for MoveAndCopyMessages.CommandID);

              v83 = v411;
              v104 = v415;
              if ((v238 & 1) == 0)
              {
                goto LABEL_170;
              }

LABEL_173:
              sub_1B0B5E738(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_174:

              v83 = v407;
              v91 = v408;
              v81 = v401;
              v80 = v402;
              v88 = v400;
              v90 = v387;
              goto LABEL_18;
            }

            break;
          }

          v244 = v378;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v432 = v244;
          v246 = *(v244 + 16);
          v247 = *(v244 + 24);

          if (v247 <= v246)
          {
            v83 = v391;
            v248 = v395;
            v249 = v246 + 1;
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_1B0B044D0(v249);
            }

            else
            {
              sub_1B0B08B60(v249);
            }

            v250 = v432;
            sub_1B0E46C28();
            v251 = v375;
            sub_1B0B5E6D0(v104 + v420, v375, type metadata accessor for MoveAndCopyMessages.CommandID);
            sub_1B0B5E6D0(v251, v372, type metadata accessor for MoveAndCopyMessages.CommandID);
            v252 = swift_getEnumCaseMultiPayload();
            if (v252 > 1)
            {
              if (v252 == 2)
              {
                v409 = v250;
                v416 = *v372;
                v254 = *(v372 + 8);
                v255 = *(v372 + 16);
                MEMORY[0x1B2728D70](3);
                MEMORY[0x1B2728D70](v254 | (v254 << 32));
                v256 = v255 + 64;
                v257 = 1 << *(v255 + 32);
                if (v257 < 64)
                {
                  v258 = ~(-1 << v257);
                }

                else
                {
                  v258 = -1;
                }

                v259 = v258 & *(v255 + 64);
                v260 = (v257 + 63) >> 6;
                v419 = v255;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v261 = 0;
                v262 = 0;
                if (v259)
                {
                  while (1)
                  {
                    v263 = v262;
LABEL_194:
                    v264 = __clz(__rbit64(v259)) | (v263 << 6);
                    v83 = *(*(v419 + 48) + 4 * v264);
                    v265 = (*(v419 + 56) + 16 * v264);
                    v266 = *v265;
                    v267 = v265[1];
                    sub_1B03B2000(*v265, v267);
                    if (v267 >> 60 == 15)
                    {
                      break;
                    }

                    v259 &= v259 - 1;
                    v424 = v429;
                    v425 = v430;
                    v426 = v431;
                    v422 = v427;
                    v423 = v428;
                    sub_1B0E46C88();
                    sub_1B0E42F48();
                    sub_1B0391D50(v266, v267);
                    v261 ^= sub_1B0E46CB8();
                    v262 = v263;
                    if (!v259)
                    {
                      goto LABEL_191;
                    }
                  }
                }

                else
                {
                  while (1)
                  {
LABEL_191:
                    v263 = v262 + 1;
                    if (__OFADD__(v262, 1))
                    {
                      goto LABEL_309;
                    }

                    if (v263 >= v260)
                    {
                      break;
                    }

                    v259 = *(v256 + 8 * v263);
                    ++v262;
                    if (v259)
                    {
                      goto LABEL_194;
                    }
                  }
                }

                MEMORY[0x1B2728D70](v261);

                v83 = v391;
                goto LABEL_211;
              }

              MEMORY[0x1B2728D70](1);
            }

            else
            {
              if (!v252)
              {
                v253 = v371;
                sub_1B03C60A4(v372, v371, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                MEMORY[0x1B2728D70](0);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
                sub_1B0B0D328();
                sub_1B0E447C8();
                sub_1B0398EFC(v253, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                v104 = v415;
                goto LABEL_212;
              }

              v409 = v250;
              v387 = *v372;
              v268 = *(v372 + 8);
              v269 = *(v372 + 16);
              MEMORY[0x1B2728D70](2);
              MEMORY[0x1B2728D70](v268 | (v268 << 32));
              v270 = v269 + 64;
              v271 = 1 << *(v269 + 32);
              if (v271 < 64)
              {
                v272 = ~(-1 << v271);
              }

              else
              {
                v272 = -1;
              }

              v273 = v272 & *(v269 + 64);
              v274 = (v271 + 63) >> 6;
              v416 = v269;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v275 = 0;
              v276 = 0;
              if (v273)
              {
                while (1)
                {
                  v419 = v275;
                  v277 = v276;
LABEL_206:
                  v278 = __clz(__rbit64(v273));
                  v273 &= v273 - 1;
                  v279 = (*(v416 + 56) + 24 * (v278 | (v277 << 6)));
                  v280 = *v279;
                  v282 = *(v279 + 1);
                  v281 = *(v279 + 2);
                  sub_1B03B2000(v282, v281);
                  v424 = v429;
                  v425 = v430;
                  v426 = v431;
                  v422 = v427;
                  v423 = v428;
                  sub_1B0E46C88();
                  MEMORY[0x1B2728D70](v280);
                  sub_1B03B2000(v282, v281);
                  sub_1B0E42F48();
                  sub_1B0391D50(v282, v281);
                  sub_1B0391D50(v282, v281);
                  v275 = sub_1B0E46CB8() ^ v419;
                  v83 = v391;
                  if (!v273)
                  {
                    goto LABEL_202;
                  }
                }
              }

              while (1)
              {
LABEL_202:
                v277 = v276 + 1;
                if (__OFADD__(v276, 1))
                {
                  goto LABEL_308;
                }

                if (v277 >= v274)
                {
                  break;
                }

                v273 = *(v270 + 8 * v277);
                ++v276;
                if (v273)
                {
                  v419 = v275;
                  v276 = v277;
                  goto LABEL_206;
                }
              }

              MEMORY[0x1B2728D70](v275);

LABEL_211:
              v248 = v395;
              v104 = v415;
              v250 = v409;
            }

LABEL_212:
            sub_1B0B5E738(v375, type metadata accessor for MoveAndCopyMessages.CommandID);
            v283 = sub_1B0E46CB8();
            v284 = -1 << *(v250 + 32);
            v208 = v283 & ~v284;
            v419 = v250 + 56;
            if (((*(v250 + 56 + ((v208 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v208) & 1) == 0)
            {
              goto LABEL_250;
            }

            v416 = ~v284;
            v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
            while (2)
            {
              v285 = *(*(v250 + 48) + 8 * v208);
              v286 = *(*v285 + 96);
              swift_beginAccess();
              v287 = v285 + v286;
              v288 = v412;
              sub_1B0B5E6D0(v287, v412, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E6D0(v104 + v420, v248, type metadata accessor for MoveAndCopyMessages.CommandID);
              v289 = v83 + *(v417 + 48);
              sub_1B0B5E6D0(v288, v83, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E6D0(v248, v289, type metadata accessor for MoveAndCopyMessages.CommandID);
              v290 = swift_getEnumCaseMultiPayload();
              if (v290 <= 1)
              {
                if (!v290)
                {
                  v291 = v383;
                  sub_1B0B5E6D0(v83, v383, type metadata accessor for MoveAndCopyMessages.CommandID);
                  if (swift_getEnumCaseMultiPayload())
                  {
                    sub_1B0B5E738(v248, type metadata accessor for MoveAndCopyMessages.CommandID);
                    sub_1B0B5E738(v412, type metadata accessor for MoveAndCopyMessages.CommandID);
                    sub_1B0398EFC(v291, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                    goto LABEL_215;
                  }

                  v314 = v291;
                  v315 = v373;
                  sub_1B03C60A4(v289, v373, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  sub_1B03D06F8();
                  v316 = sub_1B0E46E08();
                  sub_1B0398EFC(v315, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  sub_1B0B5E738(v248, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v412, type metadata accessor for MoveAndCopyMessages.CommandID);
                  v317 = v314;
                  v104 = v415;
                  sub_1B0398EFC(v317, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  if (v316)
                  {
                    goto LABEL_315;
                  }

LABEL_249:
                  sub_1B0B5E738(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_216:
                  v208 = (v208 + 1) & v416;
                  if (((*(v419 + ((v208 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v208) & 1) == 0)
                  {
                    goto LABEL_250;
                  }

                  continue;
                }

                v302 = v384;
                sub_1B0B5E6D0(v83, v384, type metadata accessor for MoveAndCopyMessages.CommandID);
                v303 = *v302;
                v304 = *(v302 + 16);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  v305 = *v289;
                  v306 = *(v289 + 8);
                  v307 = *(v289 + 16);
                  if ((*(v302 + 8) | (*(v302 + 8) << 32)) == (v306 | (v306 << 32)))
                  {
                    v308 = *(v303 + 16);
                    if (v308 != *(v305 + 16))
                    {
                      goto LABEL_242;
                    }

                    if (v308 && v303 != v305)
                    {
                      v309 = (v303 + 32);
                      v310 = (v305 + 32);
                      while (*v309 == *v310)
                      {
                        ++v309;
                        ++v310;
                        if (!--v308)
                        {
                          goto LABEL_239;
                        }
                      }

                      goto LABEL_242;
                    }

LABEL_239:

                    v301 = sub_1B0B73688(v304, v307);
LABEL_240:
                    v311 = v301;

                    v312 = v395;
                    sub_1B0B5E738(v395, type metadata accessor for MoveAndCopyMessages.CommandID);
                    sub_1B0B5E738(v412, type metadata accessor for MoveAndCopyMessages.CommandID);

                    v248 = v312;
                    v104 = v415;

                    v83 = v391;
                    if (v311)
                    {
                      goto LABEL_315;
                    }

                    goto LABEL_249;
                  }

                  v318 = v395;
                  sub_1B0B5E738(v395, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v412, type metadata accessor for MoveAndCopyMessages.CommandID);

                  v248 = v318;
                  goto LABEL_248;
                }

                goto LABEL_243;
              }

              break;
            }

            if (v290 == 2)
            {
              v292 = v385;
              sub_1B0B5E6D0(v83, v385, type metadata accessor for MoveAndCopyMessages.CommandID);
              v293 = *v292;
              v294 = *(v292 + 16);
              if (swift_getEnumCaseMultiPayload() == 2)
              {
                v295 = *v289;
                v296 = *(v289 + 8);
                v297 = *(v289 + 16);
                if ((*(v292 + 8) | (*(v292 + 8) << 32)) != (v296 | (v296 << 32)))
                {
                  goto LABEL_242;
                }

                v298 = *(v293 + 16);
                if (v298 != *(v295 + 16))
                {
                  goto LABEL_242;
                }

                if (!v298 || v293 == v295)
                {
LABEL_230:

                  v301 = sub_1B0B74018(v294, v297);
                  goto LABEL_240;
                }

                v299 = (v293 + 32);
                v300 = (v295 + 32);
                while (*v299 == *v300)
                {
                  ++v299;
                  ++v300;
                  if (!--v298)
                  {
                    goto LABEL_230;
                  }
                }

LABEL_242:
                v313 = v395;
                sub_1B0B5E738(v395, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v412, type metadata accessor for MoveAndCopyMessages.CommandID);

                v248 = v313;
                v104 = v415;
LABEL_248:

                v83 = v391;
                goto LABEL_249;
              }

LABEL_243:

              v248 = v395;
              sub_1B0B5E738(v395, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E738(v412, type metadata accessor for MoveAndCopyMessages.CommandID);
            }

            else
            {
              sub_1B0B5E738(v248, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E738(v412, type metadata accessor for MoveAndCopyMessages.CommandID);
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                goto LABEL_315;
              }
            }

LABEL_215:
            sub_1B0398EFC(v83, &qword_1EB6E4990, &unk_1B0EC6D30);
            goto LABEL_216;
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0B077AC();
          }

LABEL_250:
          v319 = v432;
          *(v432 + ((v208 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v208;
          *(*(v319 + 48) + 8 * v208) = v104;
          v320 = *(v319 + 16);
          v321 = __OFADD__(v320, 1);
          v322 = v320 + 1;
          if (v321)
          {
            goto LABEL_310;
          }

          *(v319 + 16) = v322;

          v378 = v319;
          v89 = v319;
          v81 = v401;
          v80 = v402;
          v88 = v400;
          v83 = v407;
          v84 = v408;
        }
      }

      v92 = v83;
      v93 = v91;
      v94 = v83;
      if (v91)
      {
LABEL_23:
        v408 = (v93 - 1) & v93;
        v95 = *(*(v80 + 48) + ((v94 << 9) | (8 * __clz(__rbit64(v93)))));

        if (!v95)
        {
          goto LABEL_296;
        }

        goto LABEL_27;
      }

      while (1)
      {
        v94 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_308:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_309:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          sub_1B0B5E738(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
          result = sub_1B0E46B98();
          __break(1u);
          return result;
        }

        if (v94 >= v88)
        {
          break;
        }

        v93 = *(v81 + 8 * v94);
        ++v92;
        if (v93)
        {
          goto LABEL_23;
        }
      }

LABEL_297:
      sub_1B03D91F8(v80);

      v75 = sub_1B0B4FCB8();
      a3 = v374;
      if (!v75)
      {
        goto LABEL_301;
      }
    }
  }

  v419 = MEMORY[0x1E69E7CD0];
LABEL_301:

  v365 = 0;
LABEL_302:

  return v365;
}

uint64_t sub_1B0B5BD58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0B5E6D0(a1, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
  v7 = swift_allocObject();
  sub_1B0B5E798(v6, v7 + *(*v7 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  if (*(a2 + 16) && (v8 = sub_1B0AE00C4(v7), (v9 & 1) != 0))
  {
    v10 = *(*(a2 + 56) + 8 * v8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  MEMORY[0x1EEE9AC00](v11);
  *&v16[-16] = v4;
  *&v16[-8] = sub_1B0B5C4EC(&qword_1EB6DD960, &unk_1B0EC6DBC);
  KeyPath = swift_getKeyPath();

  v13 = sub_1B0B582AC(v10, KeyPath);

  v14 = sub_1B0B3876C(v13);

  return v14;
}

uint64_t sub_1B0B5BF38(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1B0B58990(MEMORY[0x1E69E7CC0]);
  v12 = v11;
  v14 = v13;
  sub_1B0BABFD8(v9);
  v22 = v10;
  v15 = *(a1 + 16);
  if (v15)
  {
    v20[0] = v14;
    v20[1] = v12;
    v16 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v17 = *(v3 + 72);
    do
    {
      sub_1B0B5E6D0(v16, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E6D0(v8, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      v18 = swift_allocObject();
      sub_1B0B5E798(v5, v18 + *(*v18 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B028E4(&v21, v18);
      sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);

      v16 += v17;
      --v15;
    }

    while (v15);
    return v22;
  }

  return v10;
}

uint64_t type metadata accessor for MoveAndCopyMessages.CommandID(uint64_t a1)
{
  result = qword_1EB6DD948;
  if (!qword_1EB6DD948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1B0B5C208(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1B0B5C250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0B5C2D0(uint64_t a1)
{
  result = sub_1B043B29C(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B0B5C344()
{
  result = qword_1EB6DD968;
  if (!qword_1EB6DD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD968);
  }

  return result;
}

unint64_t sub_1B0B5C398(uint64_t a1)
{
  result = sub_1B0B5C3C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B5C3C0()
{
  result = qword_1EB6DD940;
  if (!qword_1EB6DD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD940);
  }

  return result;
}

unint64_t sub_1B0B5C418()
{
  result = qword_1EB6E4998;
  if (!qword_1EB6E4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4998);
  }

  return result;
}

unint64_t sub_1B0B5C470()
{
  result = qword_1EB6E49A0;
  if (!qword_1EB6E49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E49A0);
  }

  return result;
}

uint64_t sub_1B0B5C4EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MoveAndCopyMessages.CommandID(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B0B5C530(uint64_t a1, uint64_t a2, double a3)
{
  if (sub_1B0A9F914(0, a1, a2, a3))
  {
    v4 = *(v3 + 176);
    if (*(v4 + 16))
    {
      v5 = *(v4 + 32);
      v6 = *(v4 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BAD508(0, 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v7 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B586B0(v7, v5, v6);
      v9 = v8;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v10 = swift_allocObject();
      v11 = *(v3 + 40);
      *(v10 + 16) = *(v3 + 32);
      *(v10 + 24) = v11;
      if (*(v9 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4840, &qword_1B0EC6FD0);
        v12 = sub_1B0E466A8();
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC8];
      }

      v16 = v12;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B56688(v9, 1, &v16);
      *(v10 + 32) = v16;
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v13 = swift_allocObject();
    v14 = *(v3 + 40);
    *(v13 + 16) = *(v3 + 32);
    *(v13 + 24) = v14;
    *(v13 + 32) = 257;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 0;
  }
}

uint64_t sub_1B0B5C6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v71 - v10;
  v12 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0B5E6D0(a1, v14, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1B0B5E738(v14, type metadata accessor for UntaggedResponse);
  }

  v16 = *v14;
  v17 = v14[2];
  if ((~*v14 & 0xF000000000000007) == 0)
  {
  }

  if (((v16 >> 59) & 0x1E | (v16 >> 2) & 1) != 8)
  {
    sub_1B0447F00(*v14);
  }

  v79 = v3;
  v78 = *((v16 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v18 = *((v16 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  v19 = *((v16 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
  sub_1B0B5E6D0(a3, v11, type metadata accessor for MailboxTaskLogger);
  sub_1B0B5E6D0(a3, v8, type metadata accessor for MailboxTaskLogger);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1B0394868();
  sub_1B0394868();
  v20 = sub_1B0E43988();
  v21 = sub_1B0E458D8();

  v22 = os_log_type_enabled(v20, v21);
  v80 = v19;
  v81 = v18;
  if (v22)
  {
    v75 = v21;
    v76 = v20;
    v23 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v85 = v74;
    *v23 = 68160003;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v24 = &v8[*(v6 + 20)];
    *(v23 + 10) = *v24;
    *(v23 + 11) = 2082;
    v25 = &v11[*(v6 + 20)];
    *(v23 + 13) = sub_1B0399D64(*(v25 + 1), *(v25 + 2), &v85);
    *(v23 + 21) = 1040;
    *(v23 + 23) = 2;
    *(v23 + 27) = 512;
    LOWORD(v24) = *(v24 + 12);
    sub_1B0B5E738(v8, type metadata accessor for MailboxTaskLogger);
    *(v23 + 29) = v24;
    *(v23 + 31) = 2160;
    *(v23 + 33) = 0x786F626C69616DLL;
    *(v23 + 41) = 2085;
    v26 = *(v25 + 4);
    LODWORD(v25) = *(v25 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B5E738(v11, type metadata accessor for MailboxTaskLogger);
    v83 = v26;
    v84 = v25;
    v27 = sub_1B0E44BA8();
    v29 = sub_1B0399D64(v27, v28, &v85);

    *(v23 + 43) = v29;
    v30 = v81;
    *(v23 + 51) = 2082;
    v31 = *(v30 + 16);
    v32 = MEMORY[0x1E69E7CC0];
    v77 = v23;
    if (v31)
    {
      v72 = v17;
      v73 = v16;
      v83 = MEMORY[0x1E69E7CC0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A18B88(0, v31, 0);
      v33 = v81;
      v34 = 32;
      v32 = v83;
      do
      {
        v82 = *(v33 + v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v35 = sub_1B0E44B88();
        v37 = v36;
        v83 = v32;
        v39 = *(v32 + 16);
        v38 = *(v32 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1B0A18B88(v38 > 1, v39 + 1, 1);
          v33 = v81;
          v32 = v83;
        }

        *(v32 + 16) = v39 + 1;
        v40 = v32 + 16 * v39;
        *(v40 + 32) = v35;
        *(v40 + 40) = v37;
        v34 += 8;
        --v31;
      }

      while (v31);

      v16 = v73;
      v23 = v77;
    }

    v83 = v32;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    v44 = sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
    v45 = sub_1B0E448E8();
    v47 = v46;

    v48 = sub_1B0399D64(v45, v47, &v85);

    *(v23 + 53) = v48;
    *(v23 + 61) = 2082;
    v49 = *(v80 + 16);
    v50 = MEMORY[0x1E69E7CC0];
    if (v49)
    {
      v71[1] = v44;
      v72 = v43;
      v83 = MEMORY[0x1E69E7CC0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A18B88(0, v49, 0);
      v51 = v80;
      v52 = 32;
      v50 = v83;
      do
      {
        v82 = *(v51 + v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v53 = sub_1B0E44B88();
        v83 = v50;
        v56 = *(v50 + 16);
        v55 = *(v50 + 24);
        if (v56 >= v55 >> 1)
        {
          v73 = v16;
          v58 = v53;
          v59 = v54;
          sub_1B0A18B88(v55 > 1, v56 + 1, 1);
          v51 = v80;
          v54 = v59;
          v53 = v58;
          v16 = v73;
          v50 = v83;
        }

        *(v50 + 16) = v56 + 1;
        v57 = v50 + 16 * v56;
        *(v57 + 32) = v53;
        *(v57 + 40) = v54;
        v52 += 8;
        --v49;
      }

      while (v49);

      v23 = v77;
    }

    v83 = v50;
    v60 = sub_1B0E448E8();
    v62 = v61;

    v63 = sub_1B0399D64(v60, v62, &v85);

    *(v23 + 63) = v63;
    *(v23 + 71) = 1024;

    v42 = v78;
    *(v23 + 73) = v78;

    v64 = v76;
    _os_log_impl(&dword_1B0389000, v76, v75, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server moved messages %{public}s with destination UIDs %{public}s and UIDValidity 0x%x", v23, 0x4Du);
    v65 = v74;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v65, -1, -1);
    MEMORY[0x1B272C230](v23, -1, -1);

    v41 = v79;
  }

  else
  {

    sub_1B0B5E738(v8, type metadata accessor for MailboxTaskLogger);

    sub_1B0B5E738(v11, type metadata accessor for MailboxTaskLogger);
    v41 = v79;
    v42 = v78;
  }

  v66 = *(v41 + 168);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v66 = sub_1B0B00B9C(0, *(v66 + 2) + 1, 1, v66);
  }

  v68 = *(v66 + 2);
  v67 = *(v66 + 3);
  if (v68 >= v67 >> 1)
  {
    v66 = sub_1B0B00B9C((v67 > 1), v68 + 1, 1, v66);
  }

  sub_1B0447F00(v16);

  *(v66 + 2) = v68 + 1;
  v69 = &v66[24 * v68];
  *(v69 + 8) = v42;
  v70 = v80;
  *(v69 + 5) = v81;
  *(v69 + 6) = v70;
  *(v41 + 168) = v66;
  return result;
}

void sub_1B0B5CED8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v108 = (&v100 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v107 = (&v100 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v100 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v111 = (&v100 - v20);
  v21 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v100 - v26;
  if (((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0x12 && (*(v5 + 40) | (*(v5 + 40) << 32)) == (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
  {
    v28 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    LODWORD(v110) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v29 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v30 = v25;
    if (sub_1B04520BC(*(v5 + 32), v29))
    {
      v104 = v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (sub_1B0AEC7DC(0, a2, a3, a4))
      {
        sub_1B0B5E6D0(a5, v27, type metadata accessor for MailboxTaskLogger);
        sub_1B0B5E6D0(a5, v23, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_bridgeObjectRetain_n();
        v31 = sub_1B0E43988();
        v32 = sub_1B0E45908();
        v33 = os_log_type_enabled(v31, v32);
        v105 = v28;
        if (v33)
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v115 = v35;
          *v34 = 68159491;
          *(v34 + 4) = 2;
          *(v34 + 8) = 256;
          v36 = &v23[*(v30 + 20)];
          *(v34 + 10) = *v36;
          *(v34 + 11) = 2082;
          v37 = &v27[*(v30 + 20)];
          *(v34 + 13) = sub_1B0399D64(*(v37 + 1), *(v37 + 2), &v115);
          *(v34 + 21) = 1040;
          *(v34 + 23) = 2;
          *(v34 + 27) = 512;
          LOWORD(v36) = *(v36 + 12);
          sub_1B0B5E738(v23, type metadata accessor for MailboxTaskLogger);
          *(v34 + 29) = v36;
          *(v34 + 31) = 2160;
          *(v34 + 33) = 0x786F626C69616DLL;
          *(v34 + 41) = 2085;
          v38 = *(v37 + 4);
          LODWORD(v37) = *(v37 + 10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0B5E738(v27, type metadata accessor for MailboxTaskLogger);
          v113 = v38;
          v114 = v37;
          v39 = sub_1B0E44BA8();
          v41 = sub_1B0399D64(v39, v40, &v115);

          *(v34 + 43) = v41;
          *(v34 + 51) = 2048;
          v42 = *(v105 + 16);

          *(v34 + 53) = v42;

          _os_log_impl(&dword_1B0389000, v31, v32, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned %ld moves / copies.", v34, 0x3Du);
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v35, -1, -1);
          v43 = v105;
          MEMORY[0x1B272C230](v34, -1, -1);
        }

        else
        {
          v43 = v28;

          sub_1B0B5E738(v23, type metadata accessor for MailboxTaskLogger);

          sub_1B0B5E738(v27, type metadata accessor for MailboxTaskLogger);
        }

        v44 = v104;
        v106 = v11;
        if ((v110 & 1) == 0)
        {
          *(v104 + 120) = 1;
        }

        v103 = *(v43 + 16);
        if (v103)
        {
          v45 = 0;
          v46 = (v43 + 64);
          while (v45 < *(v43 + 16))
          {
            v55 = *(v44 + 112);
            if (v55 >= 257)
            {

              *(v44 + 120) = 1;
              return;
            }

            v56 = *(v46 - 7);
            v57 = *(v46 - 3);
            LODWORD(v110) = *(v46 - 4);
            v58 = *(v46 - 1);
            v59 = *v46;
            v60 = *(v46 - 32);
            *(v44 + 112) = v55 + 1;
            if (v60 == 1)
            {
              v102 = v45;
              v116 = v56;
              v117 = 1;
              v118 = v58;
              v119 = v59;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4848, &qword_1B0EC6FB0);
              v61 = sub_1B0E466A8();
              v62 = v116;
              v63 = v117;
              v64 = v118;
              v65 = v119;
              v66 = sub_1B03FE284(v116);
              if (v67)
              {
                goto LABEL_33;
              }

              v61[(v66 >> 6) + 8] |= 1 << v66;
              *(v61[6] + 4 * v66) = v62;
              v68 = v61[7] + 24 * v66;
              *v68 = v63;
              *(v68 + 8) = v64;
              *(v68 + 16) = v65;
              v69 = v61[2];
              v70 = __OFADD__(v69, 1);
              v71 = v69 + 1;
              if (v70)
              {
                goto LABEL_34;
              }

              v61[2] = v71;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B03B2000(v58, v59);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B03B2000(v58, v59);
              sub_1B03B2000(v64, v65);
              sub_1B0398EFC(&v116, &qword_1EB6E49C8, &qword_1B0EC6FB8);
              v72 = v111;
              *v111 = v57;
              *(v72 + 8) = v110;
              *(v72 + 16) = v61;
              swift_storeEnumTagMultiPayload();
              v73 = v112;
              sub_1B0B5E6D0(v72, v112, type metadata accessor for MoveAndCopyMessages.CommandID);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
              v74 = swift_allocObject();
              sub_1B0B5E798(v73, v74 + *(*v74 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
              v75 = v104;
              sub_1B0B028E4(&v113, v74);

              v44 = v75;
              sub_1B0391D50(v58, v59);

              sub_1B0B5E738(v72, type metadata accessor for MoveAndCopyMessages.CommandID);
              v45 = v102;
            }

            else
            {
              if (*(v44 + 105))
              {
                LODWORD(v102) = v56;
                v123 = v56;
                v124 = 0;
                v76 = v58;
                v125 = v58;
                v126 = v59;
                v77 = v59;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4848, &qword_1B0EC6FB0);
                v78 = sub_1B0E466A8();
                v79 = v123;
                v80 = v124;
                v81 = v125;
                v82 = v126;
                v83 = sub_1B03FE284(v123);
                if (v84)
                {
                  goto LABEL_36;
                }

                v78[(v83 >> 6) + 8] |= 1 << v83;
                *(v78[6] + 4 * v83) = v79;
                v85 = v78[7] + 24 * v83;
                *v85 = v80;
                *(v85 + 8) = v81;
                *(v85 + 16) = v82;
                v86 = v78[2];
                v70 = __OFADD__(v86, 1);
                v87 = v86 + 1;
                if (v70)
                {
                  goto LABEL_37;
                }

                v78[2] = v87;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v101 = v76;
                sub_1B03B2000(v76, v77);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B03B2000(v76, v77);
                sub_1B03B2000(v81, v82);
                sub_1B0398EFC(&v123, &qword_1EB6E49C8, &qword_1B0EC6FB8);
                v47 = v108;
                *v108 = v57;
                *(v47 + 8) = v110;
                *(v47 + 16) = v78;
                swift_storeEnumTagMultiPayload();
                v110 = type metadata accessor for MoveAndCopyMessages.CommandID;
                v48 = v112;
                sub_1B0B5E6D0(v47, v112, type metadata accessor for MoveAndCopyMessages.CommandID);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
                v49 = swift_allocObject();
                v50 = *(*v49 + 96);
                v100 = type metadata accessor for MoveAndCopyMessages.CommandID;
                sub_1B0B5E798(v48, v49 + v50, type metadata accessor for MoveAndCopyMessages.CommandID);
                v44 = v104;
                sub_1B0B028E4(&v113, v49);

                sub_1B0B5E738(v47, type metadata accessor for MoveAndCopyMessages.CommandID);
                LODWORD(v113) = v102;
                v51 = sub_1B041C1E8();
                MessageIdentifierSet.init(_:)(&v113, &type metadata for UID, v51);
                swift_storeEnumTagMultiPayload();
                v52 = v109;
                sub_1B0B5E6D0(v48, v109, v110);
                v53 = swift_allocObject();
                sub_1B0B5E798(v52, v53 + *(*v53 + 96), v100);
                sub_1B0B028E4(&v113, v53);

                sub_1B0391D50(v101, v77);

                v54 = v48;
              }

              else
              {
                v120 = v56;
                v121 = v58;
                v122 = v59;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4850, &qword_1B0EC6FC0);
                v88 = sub_1B0E466A8();
                v89 = v120;
                v90 = v121;
                v91 = v122;
                v92 = sub_1B03FE284(v120);
                if (v93)
                {
                  goto LABEL_35;
                }

                v88[(v92 >> 6) + 8] |= 1 << v92;
                *(v88[6] + 4 * v92) = v89;
                v94 = (v88[7] + 16 * v92);
                *v94 = v90;
                v94[1] = v91;
                v95 = v88[2];
                v70 = __OFADD__(v95, 1);
                v96 = v95 + 1;
                if (v70)
                {
                  goto LABEL_38;
                }

                v88[2] = v96;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B03B2000(v58, v59);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B03B2000(v58, v59);
                sub_1B03B2000(v90, v91);
                sub_1B0398EFC(&v120, &qword_1EB6E49D0, &qword_1B0EC6FC8);
                v97 = v107;
                *v107 = v57;
                *(v97 + 8) = v110;
                *(v97 + 16) = v88;
                swift_storeEnumTagMultiPayload();
                v98 = v112;
                sub_1B0B5E6D0(v97, v112, type metadata accessor for MoveAndCopyMessages.CommandID);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
                v99 = swift_allocObject();
                sub_1B0B5E798(v98, v99 + *(*v99 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B028E4(&v113, v99);

                sub_1B0391D50(v58, v59);

                v54 = v97;
              }

              sub_1B0B5E738(v54, type metadata accessor for MoveAndCopyMessages.CommandID);
            }

            v43 = v105;
            ++v45;
            v46 += 5;
            if (v103 == v45)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
        }

        else
        {
LABEL_29:
        }
      }

      else
      {

        *(v104 + 120) = 1;
      }
    }
  }
}

uint64_t sub_1B0B5DB58(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (result + 36);
    do
    {
      v5 = *v4 - *(v4 - 1) + 1;
      v6 = __OFADD__(v3, v5);
      v3 += v5;
      if (v6)
      {
        __break(1u);
        goto LABEL_17;
      }

      v4 += 2;
      --v2;
    }

    while (v2);
    v7 = *(a2 + 16);
    if (v7)
    {
      goto LABEL_10;
    }

    if (v3)
    {
LABEL_14:

      sub_1B0B5E67C();
      swift_allocError();
      return swift_willThrow();
    }
  }

  else
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v3 = 0;
LABEL_10:
      v8 = 0;
      v9 = (a2 + 36);
      while (1)
      {
        v10 = *v9 - *(v9 - 1) + 1;
        v6 = __OFADD__(v8, v10);
        v8 += v10;
        if (v6)
        {
          break;
        }

        v9 += 2;
        if (!--v7)
        {
          if (v3 == v8)
          {
            return result;
          }

          goto LABEL_14;
        }
      }

LABEL_17:
      __break(1u);
    }
  }

  return result;
}

void *sub_1B0B5DC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = sub_1B0B5DB58(a2, a3);
  if (v4)
  {
    return v5;
  }

  v12 = v11;
  v13 = sub_1B0B562C8(v10);
  v14 = sub_1B0B562C8(v12);
  v15 = v14;
  v49 = *(v13 + 16);
  if (!v49)
  {

    v5 = MEMORY[0x1E69E7CC8];
LABEL_23:

    return v5;
  }

  v16 = 0;
  v47 = a1 << 32;
  v48 = v13 + 32;
  v5 = MEMORY[0x1E69E7CC8];
  v45 = v13;
  v46 = a4;
  v44 = v14;
  while (v16 < *(v13 + 16))
  {
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_26;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_27;
    }

    v20 = *(v48 + 4 * v16);
    v21 = *(v15 + 4 * v16 + 32);
    v22 = sub_1B03FE284(v20);
    if ((v23 & 1) == 0)
    {
      goto LABEL_28;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_29;
    }

    v24 = *(*(a4 + 56) + 24 * v22);
    v25 = sub_1B03FE284(v20);
    if ((v26 & 1) == 0)
    {
      goto LABEL_30;
    }

    v27 = *(a4 + 56) + 24 * v25;
    v28 = *(v27 + 8);
    v50 = *(v27 + 16);
    v51 = v21;
    sub_1B03B2000(v28, v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_1B03FE284(v20);
    v32 = v5[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_31;
    }

    v35 = v30;
    if (v5[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B0B8EE54();
      }
    }

    else
    {
      sub_1B0B3342C(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_1B03FE284(v20);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_33;
      }

      v31 = v36;
    }

    v38 = v47 | v51;
    if (v35)
    {
      v17 = v5[7] + 40 * v31;
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      *v17 = v24;
      *(v17 + 8) = v28;
      *(v17 + 16) = v50;
      *(v17 + 24) = v38;
      *(v17 + 32) = 0;
      sub_1B0391D50(v18, v19);
    }

    else
    {
      v5[(v31 >> 6) + 8] |= 1 << v31;
      *(v5[6] + 4 * v31) = v20;
      v39 = v5[7] + 40 * v31;
      *v39 = v24;
      *(v39 + 8) = v28;
      *(v39 + 16) = v50;
      *(v39 + 24) = v38;
      *(v39 + 32) = 0;
      v40 = v5[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_32;
      }

      v5[2] = v42;
    }

    ++v16;
    v13 = v45;
    a4 = v46;
    v15 = v44;
    if (v49 == v16)
    {

      goto LABEL_23;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

void *sub_1B0B5DF14(uint64_t a1, char a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4830, &qword_1B0EC5FC8);
  result = sub_1B0E46688();
  v7 = result;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = result + 8;
  v14 = a2 & 1;
  if (v11)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v18 = v15 | (v8 << 6);
      v19 = *(*(a3 + 48) + 4 * v18);
      v20 = *(a3 + 56) + 24 * v18;
      v21 = *v20;
      result = *(v20 + 8);
      v22 = *(v20 + 16);
      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v7[6] + 4 * v18) = v19;
      v23 = v7[7] + 40 * v18;
      *v23 = v21;
      *(v23 + 8) = result;
      *(v23 + 16) = v22;
      *(v23 + 24) = a1;
      *(v23 + 32) = v14;
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v7[2] = v26;
      result = sub_1B03B2000(result, v22);
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return v7;
      }

      v17 = *(a3 + 64 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B5E084()
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v55 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v48 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(v0 + 128);
  v53 = (v0 + 128);
  v54 = &v48 - v14;
  v60 = v15;
  v16 = sub_1B0B5C4EC(&qword_1EB6DD960, &unk_1B0EC6DBC);
  v61 = v16;
  KeyPath = swift_getKeyPath();

  v18 = sub_1B0B582AC(v13, KeyPath);

  v19 = sub_1B0B3876C(v18);

  sub_1B0B56B48(v19);
  v51 = v16;
  v52 = v20;
  v57 = v2;
  v58 = v2;
  v59 = v16;
  v21 = swift_getKeyPath();

  v22 = sub_1B0B582AC(v13, v21);
  v56 = v1;

  v23 = sub_1B0B3876C(v22);

  v25 = 0;
  v26 = 1 << *(v23 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v23 + 56);
  v29 = (v26 + 63) >> 6;
  while (v28)
  {
LABEL_11:
    v35 = v54;
    sub_1B0B5E6D0(*(v23 + 48) + *(v55 + 72) * (__clz(__rbit64(v28)) | (v25 << 6)), v54, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E798(v35, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E6D0(v11, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
LABEL_4:
        v30 = sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
        MEMORY[0x1EEE9AC00](v30);
        *(&v48 - 2) = v11;
        v31 = v52;

        v32 = v56;
        sub_1B0B57294(sub_1B0B5E63C, (&v48 - 4), v31);
        v56 = v32;
        sub_1B0B4F414(v11, v33);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_4;
      }

      sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    }

    v28 &= v28 - 1;
    result = sub_1B0B5E738(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
  }

  while (1)
  {
    v34 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return result;
    }

    if (v34 >= v29)
    {
      break;
    }

    v28 = *(v23 + 56 + 8 * v34);
    ++v25;
    if (v28)
    {
      v25 = v34;
      goto LABEL_11;
    }
  }

  v38 = *v53;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v51;
  *(&v48 - 2) = v57;
  *(&v48 - 1) = v39;
  v40 = swift_getKeyPath();

  v41 = sub_1B0B582AC(v38, v40);

  v42 = sub_1B0B3876C(v41);

  sub_1B0B56EF0(v42);
  if (!*(v43 + 16))
  {
  }

  v44 = v43;
  v45 = v50;
  swift_storeEnumTagMultiPayload();
  v46 = v49;
  sub_1B0B5E6D0(v45, v49, type metadata accessor for MoveAndCopyMessages.CommandID);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
  v47 = swift_allocObject();
  sub_1B0B5E798(v46, v47 + *(*v47 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B028E4(&v62, v47);
  sub_1B0B5E738(v45, type metadata accessor for MoveAndCopyMessages.CommandID);

  swift_storeEnumTagMultiPayload();
  sub_1B0B4F414(v45, v44);

  return sub_1B0B5E738(v45, type metadata accessor for MoveAndCopyMessages.CommandID);
}

unint64_t sub_1B0B5E67C()
{
  result = qword_1EB6E49C0;
  if (!qword_1EB6E49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E49C0);
  }

  return result;
}

uint64_t sub_1B0B5E6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B5E738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0B5E798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B5E800(uint64_t a1, void (*a2)(uint64_t *__return_ptr, int *), uint64_t a3, char a4, void *a5)
{
  v55 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v11 = 0;
  v42 = v6;
  while (1)
  {
    v15 = v9;
    v16 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = *(*(a1 + 48) + 4 * v18);
    v20 = *(a1 + 56) + 24 * v18;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v47 = v19;
    v48 = v21;
    v49 = v22;
    v50 = v23;
    sub_1B03B2000(v22, v23);
    a2(&v51, &v47);
    sub_1B0391D50(v49, v50);
    v24 = v52;
    if (v52 == 2)
    {
LABEL_22:
      sub_1B03D91F8(a1);
    }

    v25 = v51;
    v45 = v53;
    v46 = v54;
    v26 = *v55;
    v28 = sub_1B03FE284(v51);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_24;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_1B0B8F148();
      }
    }

    else
    {
      sub_1B0B33990(v31, a4 & 1);
      v33 = sub_1B03FE284(v25);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_26;
      }

      v28 = v33;
    }

    v35 = (v15 - 1) & v15;
    v36 = *v55;
    if (v32)
    {
      v12 = v36[7] + 24 * v28;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      *v12 = v24 & 1;
      *(v12 + 8) = v45;
      *(v12 + 16) = v46;
      sub_1B0391D50(v13, v14);
    }

    else
    {
      v36[(v28 >> 6) + 8] |= 1 << v28;
      *(v36[6] + 4 * v28) = v25;
      v37 = v36[7] + 24 * v28;
      *v37 = v24 & 1;
      *(v37 + 8) = v45;
      *(v37 + 16) = v46;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_25;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v16;
    v6 = v42;
    v9 = v35;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      goto LABEL_22;
    }

    v15 = *(v6 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0B5EAA8(uint64_t a1, void (*a2)(void *__return_ptr, int *), uint64_t a3, char a4, void *a5)
{
  v46 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v11 = 0;
  v38 = v10;
  v39 = v6;
  while (1)
  {
    v15 = v9;
    v16 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = *(a1 + 56);
    v42 = *(*(a1 + 48) + 4 * v18);
    v43 = *(v19 + 16 * v18);
    sub_1B03B2000(v43, *(&v43 + 1));
    a2(v44, &v42);
    sub_1B0391D50(v43, *(&v43 + 1));
    v20 = v45;
    if (v45 >> 60 == 15)
    {
LABEL_22:
      sub_1B03D91F8(a1);
    }

    v21 = LODWORD(v44[0]);
    v22 = v44[1];
    v23 = *v46;
    v25 = sub_1B03FE284(LODWORD(v44[0]));
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_1B0B8EFE0();
      }
    }

    else
    {
      sub_1B0B336FC(v28, a4 & 1);
      v30 = sub_1B03FE284(v21);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_26;
      }

      v25 = v30;
    }

    v32 = *v46;
    if (v29)
    {
      v12 = (v32[7] + 16 * v25);
      v13 = *v12;
      v14 = v12[1];
      *v12 = v22;
      v12[1] = v20;
      sub_1B0391D50(v13, v14);
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + 4 * v25) = v21;
      v33 = (v32[7] + 16 * v25);
      *v33 = v22;
      v33[1] = v20;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v16;
    v10 = v38;
    v6 = v39;
    v9 = (v15 - 1) & v15;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      goto LABEL_22;
    }

    v15 = *(v6 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0B5ED40(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
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

uint64_t sub_1B0B5ED84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0B5EDEC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
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

uint64_t sub_1B0B5EE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B0B5EE8C()
{
  result = qword_1EB6E4A08;
  if (!qword_1EB6E4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A08);
  }

  return result;
}

unint64_t sub_1B0B5EEE4()
{
  result = qword_1EB6E4A10;
  if (!qword_1EB6E4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A10);
  }

  return result;
}

unint64_t sub_1B0B5EF68(uint64_t a1)
{
  result = sub_1B043B29C(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0B5EFE4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1BF8, &qword_1B0E9AFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() > 520)
  {
    v12 = sub_1B0B4AAF0();
    if ((v12 & 0x100000000) != 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    sub_1B03D08AC(a1, v6);
    v14 = MessageIdentifierSet.startIndex.getter(v11);
    v16 = v15;
    if (v14 != MessageIdentifierSet.endIndex.getter(v11) || v16 != v17)
    {
      do
      {
        MessageIdentifierSet.subscript.getter(v16, v11, &v33);
        v19 = v33;
        MessageIdentifierSet.index(_:offsetBy:)(v14, v16, 1);
        v14 = v20;
        v16 = v21;
        if (v13 < v19)
        {
          v31 = v19;
          MessageIdentifierSet.insert(_:)(v32, &v31, v11);
        }
      }

      while (v14 != MessageIdentifierSet.endIndex.getter(v11) || v16 != v22);
    }

    v23 = &v6[*(v4 + 36)];
    *v23 = v14;
    v23[1] = v16;
    sub_1B03D09B8(v6);
  }

  else
  {
    (*(v8 + 16))(v10, a1, v7);
    sub_1B0E46ED8();
  }

  v24 = MessageIdentifierSet.count.getter();
  result = type metadata accessor for NewestMessages(0);
  v26 = *(result + 20);
  v27 = *(v2 + v26);
  v28 = __OFADD__(v27, v24);
  v29 = v27 + v24;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v26) = v29;
  }

  return result;
}

uint64_t type metadata accessor for NewServerMessages(uint64_t a1)
{
  result = qword_1EB6DDAD0;
  if (!qword_1EB6DDAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B0B5F34C(uint64_t a1)
{
  sub_1B09AFEB4(319);
  if (v1 <= 0x3F)
  {
    sub_1B0B5F3FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B5F3FC(uint64_t a1)
{
  if (!qword_1EB6DB3B8)
  {
    type metadata accessor for MessageMetadata(255);
    v1 = sub_1B0E45358();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DB3B8);
    }
  }
}

uint64_t sub_1B0B5F454@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for NewServerMessages(0);
  if ((*(v1 + v6[7]) & 1) == 0)
  {
    if (*(v1 + v6[8]))
    {
      v7 = &unk_1F2710C88;
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41A0, &unk_1B0EF9FA0);
    v7 = swift_allocObject();
    v7[1] = xmmword_1B0EC4700;
    *(v7 + 4) = 7;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *(v7 + 7) = 0;
    *(v7 + 68) = -64;
    *(v7 + 16) = 0;
    *(v7 + 9) = 2;
    *(v7 + 10) = 0;
    *(v7 + 11) = 0;
    *(v7 + 12) = 0;
    *(v7 + 108) = -64;
    *(v7 + 26) = 0;
    *(v7 + 14) = 5;
    *(v7 + 15) = 0;
    *(v7 + 16) = 0;
    *(v7 + 17) = 0;
    *(v7 + 148) = -64;
    *(v7 + 36) = 0;
    *(v7 + 19) = 1;
    *(v7 + 20) = 0;
    *(v7 + 21) = 0;
    *(v7 + 22) = 0;
    *(v7 + 188) = -64;
    *(v7 + 46) = 0;
    v12 = SectionSpecifier.header.unsafeMutableAddressor();
    v13 = *v12;
    v10 = v12[1];
    v11 = *(v12 + 16);
    *(v7 + 24) = 1;
    *(v7 + 25) = v13;
    *(v7 + 26) = v10;
    *(v7 + 27) = v11;
    *(v7 + 228) = 33;
    *(v7 + 56) = 0;
    *(v7 + 29) = 11;
    *(v7 + 30) = 0;
    *(v7 + 31) = 0;
    *(v7 + 32) = 0;
    *(v7 + 268) = -64;
    *(v7 + 66) = 0;
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0ACE964(v10, v11);
    goto LABEL_9;
  }

  if ((*(v1 + v6[8]) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41A0, &unk_1B0EF9FA0);
    v7 = swift_allocObject();
    v7[1] = xmmword_1B0EC60E0;
    *(v7 + 4) = 7;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *(v7 + 7) = 0;
    *(v7 + 68) = -64;
    *(v7 + 16) = 0;
    *(v7 + 9) = 2;
    *(v7 + 10) = 0;
    *(v7 + 11) = 0;
    *(v7 + 12) = 0;
    *(v7 + 108) = -64;
    *(v7 + 26) = 0;
    *(v7 + 14) = 5;
    *(v7 + 15) = 0;
    *(v7 + 16) = 0;
    *(v7 + 17) = 0;
    *(v7 + 148) = -64;
    *(v7 + 36) = 0;
    *(v7 + 19) = 1;
    *(v7 + 20) = 0;
    *(v7 + 21) = 0;
    *(v7 + 22) = 0;
    *(v7 + 188) = -64;
    *(v7 + 46) = 0;
    v8 = SectionSpecifier.header.unsafeMutableAddressor();
    v9 = *v8;
    v10 = v8[1];
    v11 = *(v8 + 16);
    *(v7 + 24) = 1;
    *(v7 + 25) = v9;
    *(v7 + 26) = v10;
    *(v7 + 27) = v11;
    *(v7 + 228) = 33;
    *(v7 + 56) = 0;
    goto LABEL_8;
  }

  v7 = &unk_1F2710D70;
LABEL_9:
  sub_1B03B5C80(v1 + v6[5], v5, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
  sub_1B03B5C80(v5, a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  *v14 = v7;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  type metadata accessor for ClientCommand(0);
  swift_storeEnumTagMultiPayload();
  return sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

void sub_1B0B5F730(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v141 = a2;
  v145 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v145);
  v6 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v123 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v123 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v123 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v138 = &v123 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v139 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v140 = &v123 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v142 = &v123 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v123 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v143 = &v123 - v33;
  v34 = type metadata accessor for MessageMetadata(0);
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v123 - v37;
  MEMORY[0x1EEE9AC00](v39);
  if (*(a1 + 12))
  {
    sub_1B0B60AE4(a3, v9, type metadata accessor for MailboxTaskLogger);
    sub_1B0B60AE4(a3, v6, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v44 = sub_1B0E43988();
    v45 = sub_1B0E458D8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v149[0] = v47;
      *v46 = 68159235;
      *(v46 + 4) = 2;
      *(v46 + 8) = 256;
      v48 = v145;
      v49 = &v6[*(v145 + 20)];
      *(v46 + 10) = *v49;
      *(v46 + 11) = 2082;
      v50 = &v9[*(v48 + 20)];
      *(v46 + 13) = sub_1B0399D64(*(v50 + 1), *(v50 + 2), v149);
      *(v46 + 21) = 1040;
      *(v46 + 23) = 2;
      *(v46 + 27) = 512;
      LOWORD(v49) = *(v49 + 12);
      sub_1B0B60BB4(v6, type metadata accessor for MailboxTaskLogger);
      *(v46 + 29) = v49;
      *(v46 + 31) = 2160;
      *(v46 + 33) = 0x786F626C69616DLL;
      *(v46 + 41) = 2085;
      v51 = *(v50 + 4);
      LODWORD(v50) = *(v50 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B60BB4(v9, type metadata accessor for MailboxTaskLogger);
      v147 = v51;
      v148 = v50;
      v52 = sub_1B0E44BA8();
      v54 = sub_1B0399D64(v52, v53, v149);

      *(v46 + 43) = v54;
      _os_log_impl(&dword_1B0389000, v44, v45, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No Message UID found.", v46, 0x33u);
      swift_arrayDestroy();
      v55 = v47;
LABEL_9:
      MEMORY[0x1B272C230](v55, -1, -1);
      MEMORY[0x1B272C230](v46, -1, -1);

      return;
    }

    sub_1B0B60BB4(v6, type metadata accessor for MailboxTaskLogger);

    v70 = v9;
LABEL_12:
    v71 = type metadata accessor for MailboxTaskLogger;
LABEL_13:
    sub_1B0B60BB4(v70, v71);
    return;
  }

  v133 = v41;
  v134 = v43;
  v132 = v42;
  v135 = (&v123 - v40);
  v136 = a3;
  v56 = *(a1 + 8);
  v57 = type metadata accessor for NewServerMessages(0);
  if (*(a1 + 536) & 1) != 0 || (v58 = *(a1 + 512)) == 0 || (*(a1 + 544))
  {
    v59 = v136;
    sub_1B0B60AE4(v136, v15, type metadata accessor for MailboxTaskLogger);
    sub_1B0B60AE4(v59, v12, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v44 = sub_1B0E43988();
    v60 = sub_1B0E458D8();
    if (os_log_type_enabled(v44, v60))
    {
      v46 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v149[0] = v61;
      *v46 = 68159235;
      *(v46 + 4) = 2;
      *(v46 + 8) = 256;
      v62 = v145;
      v63 = &v12[*(v145 + 20)];
      *(v46 + 10) = *v63;
      *(v46 + 11) = 2082;
      v64 = &v15[*(v62 + 20)];
      *(v46 + 13) = sub_1B0399D64(*(v64 + 1), *(v64 + 2), v149);
      *(v46 + 21) = 1040;
      *(v46 + 23) = 2;
      *(v46 + 27) = 512;
      LOWORD(v63) = *(v63 + 12);
      sub_1B0B60BB4(v12, type metadata accessor for MailboxTaskLogger);
      *(v46 + 29) = v63;
      *(v46 + 31) = 2160;
      *(v46 + 33) = 0x786F626C69616DLL;
      *(v46 + 41) = 2085;
      v65 = *(v64 + 4);
      v66 = *(v64 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B60BB4(v15, type metadata accessor for MailboxTaskLogger);
      v147 = v65;
      v148 = v66;
      v67 = sub_1B0E44BA8();
      v69 = sub_1B0399D64(v67, v68, v149);

      *(v46 + 43) = v69;
      _os_log_impl(&dword_1B0389000, v44, v60, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Ignoring message data.", v46, 0x33u);
      swift_arrayDestroy();
      v55 = v61;
      goto LABEL_9;
    }

    sub_1B0B60BB4(v12, type metadata accessor for MailboxTaskLogger);

    v70 = v15;
    goto LABEL_12;
  }

  v131 = v57;
  v72 = (v144 + *(v57 + 24));
  v128 = *v72;
  v127 = v72[1];
  v126 = v72[2];
  v125 = v72[3];
  v124 = v72[4];
  v73 = *(a1 + 540);
  v129 = *(a1 + 528);
  v130 = v73;
  sub_1B0B606B8(v31);
  sub_1B07B4B30(v31, v28);
  v74 = sub_1B0E443C8();
  v75 = *(v74 - 8);
  v76 = 1;
  if ((*(v75 + 48))(v28, 1, v74) != 1)
  {
    (*(v75 + 32))(v143, v28, v74);
    v76 = 0;
  }

  v141 = v56 < v141;
  v77 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v78 = *(*(v77 - 8) + 56);
  v78(v143, v76, 1, v77);
  v79 = 0x100000000;
  if (!v124)
  {
    v79 = 0;
  }

  v80 = 0x1000000;
  if (!v125)
  {
    v80 = 0;
  }

  v81 = 0x10000;
  if (!v126)
  {
    v81 = 0;
  }

  v82 = 256;
  if (!v127)
  {
    v82 = 0;
  }

  v83 = FlagDecoder.decode(_:)(v58, v82 | v128 | v81 | v80 | v79);
  v85 = v84;
  v149[0] = *(a1 + 520);
  v86 = v34[8];
  v78(&v38[v86], 1, 1, v77);
  *v38 = v56;
  *(v38 + 1) = v129;
  sub_1B03B5C80(v149, &v147, &qword_1EB6E4898, &qword_1B0EC6340);
  sub_1B0B60A74(v143, &v38[v86]);
  *(v38 + 2) = v83;
  v38[24] = v85;
  *(v38 + 4) = v149[0];
  *&v38[v34[9]] = v130;
  v38[v34[10]] = v141;
  v87 = v135;
  sub_1B0B60B4C(v38, v135, type metadata accessor for MessageMetadata);
  v88 = *(v131 + 20);
  v89 = v142;
  sub_1B03B5C80(v144 + v88, v142, &unk_1EB6E26C0, &unk_1B0E9DE10);
  LODWORD(v147) = *v87;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  LOBYTE(v86) = MessageIdentifierSet.contains(_:)(&v147, v90);
  sub_1B0398EFC(v89, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if ((v86 & 1) == 0)
  {
    v96 = v140;
    sub_1B03B5C80(v144 + v88, v140, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v97 = v136;
    v98 = v138;
    sub_1B0B60AE4(v136, v138, type metadata accessor for MailboxTaskLogger);
    v99 = v137;
    sub_1B0B60AE4(v97, v137, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v100 = v133;
    sub_1B0B60AE4(v87, v133, type metadata accessor for MessageMetadata);
    v101 = v139;
    sub_1B03B5C80(v96, v139, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v102 = sub_1B0E43988();
    v103 = sub_1B0E458D8();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      LODWORD(v143) = v103;
      v105 = v104;
      v144 = swift_slowAlloc();
      v146 = v144;
      *v105 = 68159747;
      *(v105 + 4) = 2;
      *(v105 + 8) = 256;
      v106 = v145;
      v107 = v99;
      v108 = v99 + *(v145 + 20);
      *(v105 + 10) = *v108;
      *(v105 + 11) = 2082;
      v109 = v98;
      v110 = v98 + *(v106 + 20);
      *(v105 + 13) = sub_1B0399D64(*(v110 + 8), *(v110 + 16), &v146);
      *(v105 + 21) = 1040;
      *(v105 + 23) = 2;
      *(v105 + 27) = 512;
      LOWORD(v108) = *(v108 + 24);
      sub_1B0B60BB4(v107, type metadata accessor for MailboxTaskLogger);
      *(v105 + 29) = v108;
      *(v105 + 31) = 2160;
      *(v105 + 33) = 0x786F626C69616DLL;
      *(v105 + 41) = 2085;
      v111 = *(v110 + 32);
      LODWORD(v110) = *(v110 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B60BB4(v109, type metadata accessor for MailboxTaskLogger);
      v147 = v111;
      v148 = v110;
      v112 = sub_1B0E44BA8();
      v114 = sub_1B0399D64(v112, v113, &v146);

      *(v105 + 43) = v114;
      *(v105 + 51) = 1024;
      v115 = *v100;
      sub_1B0B60BB4(v100, type metadata accessor for MessageMetadata);
      *(v105 + 53) = v115;
      *(v105 + 57) = 2082;
      v116 = v139;
      v117 = v142;
      sub_1B03B5C80(v139, v142, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v118 = MessageIdentifierSet.debugDescription.getter();
      v120 = v119;
      sub_1B0398EFC(v116, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v117, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v121 = sub_1B0399D64(v118, v120, &v146);

      *(v105 + 59) = v121;
      _os_log_impl(&dword_1B0389000, v102, v143, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Ignoring UID %u outside of range-of-interest %{public}s.", v105, 0x43u);
      v122 = v144;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v122, -1, -1);
      MEMORY[0x1B272C230](v105, -1, -1);

      sub_1B0398EFC(v140, &unk_1EB6E26C0, &unk_1B0E9DE10);
    }

    else
    {
      sub_1B0B60BB4(v100, type metadata accessor for MessageMetadata);
      sub_1B0B60BB4(v99, type metadata accessor for MailboxTaskLogger);

      sub_1B0398EFC(v101, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0B60BB4(v98, type metadata accessor for MailboxTaskLogger);
      sub_1B0398EFC(v96, &unk_1EB6E26C0, &unk_1B0E9DE10);
    }

    v70 = v87;
    v71 = type metadata accessor for MessageMetadata;
    goto LABEL_13;
  }

  sub_1B0B60AE4(v87, v134, type metadata accessor for MessageMetadata);
  v91 = *(v131 + 36);
  v92 = v144;
  v93 = *(v144 + v91);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v93 = sub_1B0AFFFAC(0, v93[2] + 1, 1, v93);
  }

  v95 = v93[2];
  v94 = v93[3];
  if (v95 >= v94 >> 1)
  {
    v93 = sub_1B0AFFFAC((v94 > 1), v95 + 1, 1, v93);
  }

  sub_1B0B60BB4(v135, type metadata accessor for MessageMetadata);
  v93[2] = v95 + 1;
  sub_1B0B60B4C(v134, v93 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v95, type metadata accessor for MessageMetadata);
  *(v92 + v91) = v93;
}

uint64_t sub_1B0B606B8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v29 = type metadata accessor for MessageData.BodySection(0);
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v30 = &v28 - v8;
  v9 = *(v1 + 200);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    while (1)
    {
      sub_1B0B60AE4(v11, v4, type metadata accessor for MessageData.BodySection);
      v13 = *v4;
      v14 = *(v4 + 1);
      v15 = v4[16];
      v16 = SectionSpecifier.header.unsafeMutableAddressor();
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v16 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0ACE964(v17, v19);
      LOBYTE(v13) = static SectionSpecifier.__derived_struct_equals(_:_:)(v13, v14, v15, v18, v17, v19);

      sub_1B0ACE978(v17, v19);
      if ((v13 & 1) != 0 && v4[24] == 1)
      {
        break;
      }

      sub_1B0B60BB4(v4, type metadata accessor for MessageData.BodySection);
      v11 += v12;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    v20 = v28;
    sub_1B0B60B4C(v4, v28, type metadata accessor for MessageData.BodySection);
    v21 = v30;
    sub_1B03B5C80(v20 + *(v29 + 24), v30, &qword_1EB6E4178, &unk_1B0EE7570);
    sub_1B0B60BB4(v20, type metadata accessor for MessageData.BodySection);
    v22 = type metadata accessor for MessageData.BodyData(0);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) != 1)
    {
      v25 = sub_1B0E443C8();
      v26 = *(v25 - 8);
      v27 = v31;
      (*(v26 + 16))(v31, v21, v25);
      sub_1B0B60BB4(v21, type metadata accessor for MessageData.BodyData);
      return (*(v26 + 56))(v27, 0, 1, v25);
    }

    sub_1B0398EFC(v21, &qword_1EB6E4178, &unk_1B0EE7570);
  }

LABEL_8:
  v23 = sub_1B0E443C8();
  return (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
}

uint64_t sub_1B0B60A74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B60AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B60B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B60BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0B60C14@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  sub_1B03B5C80(a2, v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v20 = 1;
  }

  else
  {
    sub_1B03C60A4(v6, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v16, v9, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v20 = 0;
  }

  (*(v11 + 56))(v9, v20, 1, v10);
  v21 = (*(v11 + 48))(v9, 1, v10);
  v22 = v28;
  if (v21 == 1)
  {
    sub_1B0398EFC(a2, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v23 = v27;
    v31 = *v27;
    sub_1B039E440(&v31);
    v29 = *(v23 + 3);
    v30 = *(v23 + 8);
    sub_1B039E440(&v29);
    sub_1B0398EFC(v9, &unk_1EB6E3670, &unk_1B0E9B260);
    v24 = 1;
  }

  else
  {
    sub_1B03C60A4(v9, v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B03B5C80(v19, v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0B60FD4(v27, v13, v22);
    sub_1B0398EFC(a2, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v24 = 0;
  }

  v25 = type metadata accessor for NotifyMessagesVanished(0);
  return (*(*(v25 - 8) + 56))(v22, v24, 1, v25);
}

uint64_t sub_1B0B60FAC()
{
  result = sub_1B03D0770(&unk_1F2710F70);
  qword_1EB737D58 = result;
  return result;
}

uint64_t sub_1B0B60FD4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NotifyMessagesVanished(0);
  v7 = (a3 + v6[7]);
  *v7 = 0xD000000000000016;
  v7[1] = 0x80000001B0EC72E0;
  *(a3 + v6[9]) = MEMORY[0x1E69E7CD0];
  *(a3 + v6[10]) = 1;
  v8 = a1[1];
  v17 = *a1;
  v15 = *(a1 + 3);
  v16 = *(a1 + 8);
  LODWORD(v7) = v16;
  *a3 = v17;
  *(a3 + 16) = v8;
  *(a3 + 32) = v7;
  sub_1B03B5C80(a2, a3 + v6[6], &unk_1EB6E26C0, &unk_1B0E9DE10);
  v13 = *(a1 + 3);
  v14 = *(a1 + 8);
  *(a3 + 40) = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08A6A60(&v15, &v11);
  sub_1B03D091C(&v17, &v11);
  sub_1B0451F2C();
  sub_1B0E461E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B0EC1E70;
  v11 = v15;
  v12 = v16;
  *(v9 + 32) = &type metadata for MoveAndCopyMessages;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  sub_1B039E440(&v17);
  sub_1B039E440(&v15);
  result = sub_1B0398EFC(a2, &unk_1EB6E26C0, &unk_1B0E9DE10);
  *(a3 + v6[8]) = v9;
  return result;
}

uint64_t sub_1B0B611A4(uint64_t a1)
{
  v85 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v84 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v84 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v84 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v84 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v92 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v84 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v84 - v26;
  v28 = type metadata accessor for NotifyMessagesVanished(0);
  sub_1B03B5C80(v1 + *(v28 + 24), v27, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v29 = sub_1B0E46E18();
  v30 = sub_1B0E46E28();
  v31 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v29 < v31 || result < v29)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = sub_1B0E46E18();
  v34 = sub_1B0E46E28();
  result = sub_1B0398EFC(v14, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v30 < v33 || v34 < v30)
  {
    goto LABEL_19;
  }

  if (__OFSUB__(v30, v29))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v30 - v29 <= 9)
  {
    v35 = v89;
    sub_1B0A92638(a1, v89);
    v36 = v87;
    sub_1B0A92638(a1, v87);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B03B5C80(v27, v24, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v37 = v91;
    sub_1B03B5C80(v27, v91, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v38 = sub_1B0E43988();
    v39 = sub_1B0E45908();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v95 = v92;
      *v40 = 68159747;
      *(v40 + 4) = 2;
      *(v40 + 8) = 256;
      v41 = v85;
      v42 = v36 + *(v85 + 20);
      *(v40 + 10) = *v42;
      *(v40 + 11) = 2082;
      v43 = v35 + *(v41 + 20);
      *(v40 + 13) = sub_1B0399D64(*(v43 + 8), *(v43 + 16), &v95);
      *(v40 + 21) = 1040;
      *(v40 + 23) = 2;
      *(v40 + 27) = 512;
      v44 = *(v42 + 24);
      sub_1B0A9269C(v36);
      *(v40 + 29) = v44;
      *(v40 + 31) = 2160;
      *(v40 + 33) = 0x786F626C69616DLL;
      *(v40 + 41) = 2085;
      v45 = *(v43 + 32);
      LODWORD(v42) = *(v43 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v35);
      v93 = v45;
      v94 = v42;
      v46 = sub_1B0E44BA8();
      v48 = sub_1B0399D64(v46, v47, &v95);

      *(v40 + 43) = v48;
      *(v40 + 51) = 2048;
      v49 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v24, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *(v40 + 53) = v49;
      *(v40 + 61) = 2082;
      v50 = v91;
      v51 = MessageIdentifierSet.debugDescription.getter();
      v53 = v52;
      sub_1B0398EFC(v50, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v54 = sub_1B0399D64(v51, v53, &v95);

      *(v40 + 63) = v54;
      _os_log_impl(&dword_1B0389000, v38, v39, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID(s) vanished: %{public}s", v40, 0x47u);
      v55 = v92;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v55, -1, -1);
      MEMORY[0x1B272C230](v40, -1, -1);
    }

    else
    {
      sub_1B0398EFC(v24, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0A9269C(v36);

      sub_1B0398EFC(v37, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0A9269C(v35);
    }

    v56 = v27;
    return sub_1B0398EFC(v56, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }

  v57 = v90;
  sub_1B0A92638(a1, v90);
  v58 = v88;
  sub_1B0A92638(a1, v88);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03B5C80(v27, v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v59 = v92;
  sub_1B03B5C80(v27, v92, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v60 = sub_1B0E43988();
  v61 = sub_1B0E45908();
  if (!os_log_type_enabled(v60, v61))
  {
    sub_1B0398EFC(v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0A9269C(v58);

    sub_1B0398EFC(v59, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0A9269C(v57);
    v56 = v27;
    return sub_1B0398EFC(v56, &unk_1EB6E26C0, &unk_1B0E9DE10);
  }

  v62 = swift_slowAlloc();
  v91 = swift_slowAlloc();
  v95 = v91;
  *v62 = 68159747;
  *(v62 + 4) = 2;
  *(v62 + 8) = 256;
  v63 = v85;
  v64 = v58 + *(v85 + 20);
  *(v62 + 10) = *v64;
  *(v62 + 11) = 2082;
  v65 = v57;
  v66 = v57 + *(v63 + 20);
  *(v62 + 13) = sub_1B0399D64(*(v66 + 8), *(v66 + 16), &v95);
  *(v62 + 21) = 1040;
  *(v62 + 23) = 2;
  *(v62 + 27) = 512;
  v67 = *(v64 + 24);
  sub_1B0A9269C(v58);
  *(v62 + 29) = v67;
  *(v62 + 31) = 2160;
  *(v62 + 33) = 0x786F626C69616DLL;
  *(v62 + 41) = 2085;
  v68 = *(v66 + 32);
  LODWORD(v64) = *(v66 + 40);
  v69 = v92;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A9269C(v65);
  v93 = v68;
  v94 = v64;
  v70 = sub_1B0E44BA8();
  v72 = sub_1B0399D64(v70, v71, &v95);

  *(v62 + 43) = v72;
  *(v62 + 51) = 2048;
  v73 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
  *(v62 + 53) = v73;
  *(v62 + 61) = 2082;
  result = sub_1B0B4AAF0();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_22;
  }

  v74 = result;
  v75 = v84;
  MessageIdentifierSet.ranges.getter(v84);
  v76 = sub_1B0B4A3E8();
  v78 = v77;
  result = sub_1B0398EFC(v75, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if ((v78 & 1) == 0)
  {
    if (HIDWORD(v76) >= v74)
    {
      v93 = __PAIR64__(HIDWORD(v76), v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v79 = MessageIdentifierRange.debugDescription.getter();
      v81 = v80;
      sub_1B0398EFC(v69, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v82 = sub_1B0399D64(v79, v81, &v95);

      *(v62 + 63) = v82;
      _os_log_impl(&dword_1B0389000, v60, v61, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID(s) vanished in range %{public}s.", v62, 0x47u);
      v83 = v91;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v83, -1, -1);
      MEMORY[0x1B272C230](v62, -1, -1);

      v56 = v27;
      return sub_1B0398EFC(v56, &unk_1EB6E26C0, &unk_1B0E9DE10);
    }

    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B0B61B60(uint64_t a1, uint64_t a2, char *a3)
{
  v119 = a3;
  v122 = a2;
  v116 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v116);
  v113 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v115 = &v109 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v109 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v114 = &v109 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v110 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v109 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v109 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v109 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v117 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v109 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v109 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v111 = &v109 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v109 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v121 = &v109 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v109 - v36;
  v38 = type metadata accessor for NotifyMessagesVanished(0);
  sub_1B03B5C80(v122 + *(v38 + 24), v37, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v39 = a1 + *(type metadata accessor for MailboxSyncState(0) + 48);
  v40 = *(type metadata accessor for PendingServerResponses(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0E46EC8();
  sub_1B0398EFC(v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v39 + v40, v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v122 = v15;
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v41 = 1;
  }

  else
  {
    sub_1B03C60A4(v17, v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v32, v20, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v41 = 0;
  }

  (*(v22 + 56))(v20, v41, 1, v21);
  v42 = (*(v22 + 48))(v20, 1, v21);
  v43 = v123;
  if (v42 == 1)
  {
    v44 = &unk_1EB6E3670;
    v45 = &unk_1B0E9B260;
    v46 = v20;
    return sub_1B0398EFC(v46, v44, v45);
  }

  v47 = v20;
  v48 = v121;
  sub_1B03C60A4(v47, v121, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v49 = v120;
  MessageIdentifierSet.ranges.getter(v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v50 = sub_1B0E46E18();
  v51 = sub_1B0E46E28();
  v52 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v50 < v52 || result < v50)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v54 = sub_1B0E46E18();
  v55 = sub_1B0E46E28();
  result = sub_1B0398EFC(v49, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v51 < v54 || v55 < v51)
  {
    goto LABEL_25;
  }

  if (__OFSUB__(v51, v50))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v51 - v50 <= 9)
  {
    v56 = v119;
    v57 = v114;
    sub_1B0A92638(v119, v114);
    v58 = v112;
    sub_1B0A92638(v56, v112);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v59 = v111;
    sub_1B03B5C80(v48, v111, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v60 = v118;
    sub_1B03B5C80(v48, v118, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v61 = sub_1B0E43988();
    v62 = sub_1B0E45908();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      LODWORD(v120) = v62;
      v64 = v63;
      v123 = swift_slowAlloc();
      v126 = v123;
      *v64 = 68159747;
      *(v64 + 4) = 2;
      *(v64 + 8) = 256;
      v65 = v116;
      v66 = v59;
      v67 = v57;
      v68 = v58 + *(v116 + 20);
      *(v64 + 10) = *v68;
      *(v64 + 11) = 2082;
      v69 = v67 + *(v65 + 20);
      *(v64 + 13) = sub_1B0399D64(*(v69 + 8), *(v69 + 16), &v126);
      *(v64 + 21) = 1040;
      *(v64 + 23) = 2;
      *(v64 + 27) = 512;
      v70 = *(v68 + 24);
      sub_1B0A9269C(v58);
      *(v64 + 29) = v70;
      *(v64 + 31) = 2160;
      *(v64 + 33) = 0x786F626C69616DLL;
      *(v64 + 41) = 2085;
      v71 = *(v69 + 32);
      LODWORD(v68) = *(v69 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v67);
      v124 = v71;
      v125 = v68;
      v72 = sub_1B0E44BA8();
      v74 = sub_1B0399D64(v72, v73, &v126);

      *(v64 + 43) = v74;
      *(v64 + 51) = 2048;
      v75 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v66, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *(v64 + 53) = v75;
      *(v64 + 61) = 2082;
      v76 = v118;
      v77 = MessageIdentifierSet.debugDescription.getter();
      v79 = v78;
      sub_1B0398EFC(v76, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v80 = sub_1B0399D64(v77, v79, &v126);

      *(v64 + 63) = v80;
      _os_log_impl(&dword_1B0389000, v61, v120, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Done. Still %ld vanished UID(s) remaining: %{public}s", v64, 0x47u);
      v81 = v123;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v81, -1, -1);
      MEMORY[0x1B272C230](v64, -1, -1);

      v46 = v48;
      v44 = &unk_1EB6E26C0;
      v45 = &unk_1B0E9DE10;
      return sub_1B0398EFC(v46, v44, v45);
    }

    sub_1B0398EFC(v59, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0A9269C(v58);

    sub_1B0398EFC(v60, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v108 = v57;
    goto LABEL_21;
  }

  v82 = v119;
  v83 = v115;
  sub_1B0A92638(v119, v115);
  v84 = v113;
  sub_1B0A92638(v82, v113);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03B5C80(v48, v43, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v85 = v117;
  sub_1B03B5C80(v48, v117, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v86 = sub_1B0E43988();
  v87 = sub_1B0E45908();
  if (!os_log_type_enabled(v86, v87))
  {
    sub_1B0398EFC(v43, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0A9269C(v84);

    sub_1B0398EFC(v85, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v108 = v83;
LABEL_21:
    sub_1B0A9269C(v108);
    goto LABEL_22;
  }

  LODWORD(v120) = v87;
  v88 = swift_slowAlloc();
  v119 = swift_slowAlloc();
  v126 = v119;
  *v88 = 68159747;
  *(v88 + 4) = 2;
  *(v88 + 8) = 256;
  v89 = v116;
  v90 = v84 + *(v116 + 20);
  *(v88 + 10) = *v90;
  *(v88 + 11) = 2082;
  v91 = v83 + *(v89 + 20);
  *(v88 + 13) = sub_1B0399D64(*(v91 + 8), *(v91 + 16), &v126);
  *(v88 + 21) = 1040;
  *(v88 + 23) = 2;
  *(v88 + 27) = 512;
  v92 = *(v90 + 24);
  sub_1B0A9269C(v84);
  *(v88 + 29) = v92;
  *(v88 + 31) = 2160;
  *(v88 + 33) = 0x786F626C69616DLL;
  *(v88 + 41) = 2085;
  v93 = *(v91 + 32);
  LODWORD(v90) = *(v91 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A9269C(v83);
  v124 = v93;
  v125 = v90;
  v94 = sub_1B0E44BA8();
  v96 = sub_1B0399D64(v94, v95, &v126);

  *(v88 + 43) = v96;
  *(v88 + 51) = 2048;
  v97 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v43, &unk_1EB6E26C0, &unk_1B0E9DE10);
  *(v88 + 53) = v97;
  *(v88 + 61) = 2082;
  result = sub_1B0B4AAF0();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_28;
  }

  v98 = result;
  v99 = v110;
  MessageIdentifierSet.ranges.getter(v110);
  v100 = sub_1B0B4A3E8();
  v102 = v101;
  result = sub_1B0398EFC(v99, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if ((v102 & 1) == 0)
  {
    if (HIDWORD(v100) >= v98)
    {
      v124 = __PAIR64__(HIDWORD(v100), v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v103 = MessageIdentifierRange.debugDescription.getter();
      v105 = v104;
      sub_1B0398EFC(v117, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v106 = sub_1B0399D64(v103, v105, &v126);

      *(v88 + 63) = v106;
      _os_log_impl(&dword_1B0389000, v86, v120, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Done. Still %ld vanished UID(s) remaining in range %{public}s.", v88, 0x47u);
      v107 = v119;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v107, -1, -1);
      MEMORY[0x1B272C230](v88, -1, -1);

LABEL_22:
      v46 = v48;
      v44 = &unk_1EB6E26C0;
      v45 = &unk_1B0E9DE10;
      return sub_1B0398EFC(v46, v44, v45);
    }

    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

double sub_1B0B627BC()
{
  if (qword_1EB6DD888 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t type metadata accessor for NotifyMessagesVanished(uint64_t a1)
{
  result = qword_1EB6DD868;
  if (!qword_1EB6DD868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B0B62880(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t *a4@<X8>, double a5@<D0>)
{
  if (sub_1B0A9FB20(a1, a2, a5))
  {
    v8 = 0xF000000000000007;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390);
    v10 = swift_allocBox();
    v11 = *(v9 + 48);
    v12 = v5[1];
    *v13 = *v5;
    v13[1] = v12;
    sub_1B03B5C80(v5 + *(a3 + 24), v13 + v11, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v8 = v10 | 0x3000000000000000;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a4 = v8;
}

uint64_t sub_1B0B62928(uint64_t result)
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v9, v2, v3, 0, sub_1B0B62D00);
    result = sub_1B03BB638(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

uint64_t sub_1B0B629E0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

void sub_1B0B62A40(uint64_t a1)
{
  sub_1B0B62BC4(319, qword_1EB6DE250, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v1 <= 0x3F)
  {
    sub_1B0B62B74();
    if (v2 <= 0x3F)
    {
      sub_1B0B62BC4(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep, MEMORY[0x1E69E64E8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0B62B74()
{
  if (!qword_1EB6DB460)
  {
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB460);
    }
  }
}

void sub_1B0B62BC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1B0B62C2C()
{
  result = qword_1EB6DD880;
  if (!qword_1EB6DD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD880);
  }

  return result;
}

unint64_t sub_1B0B62C80(uint64_t a1)
{
  result = sub_1B0B62CA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B62CA8()
{
  result = qword_1EB6DD878;
  if (!qword_1EB6DD878)
  {
    type metadata accessor for NotifyMessagesVanished(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD878);
  }

  return result;
}

void sub_1B0B62D1C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-v8 - 8];
  sub_1B0B3DA68(a1, &v26[-v8 - 8]);
  sub_1B0B3DA68(a1, v6);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B6351C(v2, v28);
  sub_1B0B6351C(v2, v26);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 68158722;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v14 = *&v6[*(v4 + 20)];
    sub_1B0B63664(v6);
    *(v12 + 10) = v14;
    *(v12 + 11) = 2082;
    v15 = &v9[*(v4 + 20)];
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    sub_1B0A982D8(*v15, v16, v17, v18);
    sub_1B0B63664(v9);
    if (v18 < 0)
    {
    }

    v19 = sub_1B0399D64(v16, v17, &v25);

    *(v12 + 13) = v19;
    *(v12 + 21) = 2048;
    v20 = *(v29 + 16);
    sub_1B0B63554(v28);
    *(v12 + 23) = v20;
    *(v12 + 31) = 2082;
    v21 = sub_1B0B88A40(v27);
    v23 = v22;
    sub_1B0B63554(v26);
    v24 = sub_1B0399D64(v21, v23, &v25);

    *(v12 + 33) = v24;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] Created task to notify that %ld sync requests completed: %{public}s.", v12, 0x29u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {
    sub_1B0B63554(v28);
    sub_1B0B63664(v6);

    sub_1B0B63664(v9);
    sub_1B0B63554(v26);
  }
}

void sub_1B0B62FCC(uint64_t a1, uint64_t a2)
{
  v55 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v55);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  v10 = *(v2 + 64);
  v13 = *(v10 + 56);
  v12 = v10 + 56;
  v11 = v13;
  v14 = 1 << *(*(v2 + 64) + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v65 = *(v2 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = 0;
  *&v19 = 68158978;
  v53 = v19;
  v56 = a2;
  v59 = a1;
  v60 = v9;
  v54 = v6;
  while (v16)
  {
LABEL_10:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = *(*(v65 + 48) + ((v18 << 8) | (4 * v21)));
    v23 = sub_1B03FE284(v22);
    if (v24)
    {
      v63 = v22;
      v25 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(a1 + 64);
      v66 = v27;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1B03FE454();
        v27 = v66;
      }

      v28 = v25;
      v29 = (*(v27 + 56) + 32 * v25);
      v30 = *v29;
      v64 = *(v29 + 1);
      v31 = *(v29 + 3);
      sub_1B0B9027C(v28, v27);
      *(a1 + 64) = v27;
      v32 = static MonotonicTime.now()();
      v33 = v32 - v31;
      if (v32 >= v31)
      {
        v34 = v60;
        if (__OFSUB__(v32, v31))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v34 = v60;
        if (__OFSUB__(v31, v32))
        {
          goto LABEL_31;
        }

        v33 = v32 - v31;
        if (__OFSUB__(0, v31 - v32))
        {
          goto LABEL_33;
        }
      }

      v35 = v33 / 1000000000.0;
      if (COERCE__INT64(fabs(v35)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      if (v35 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v35 >= 9.22337204e18)
      {
        goto LABEL_30;
      }

      v62 = v30;
      sub_1B0B3DA68(a2, v34);
      sub_1B0B3DA68(a2, v6);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v36 = sub_1B0E43988();
      v37 = sub_1B0E45908();

      v61 = v37;
      if (os_log_type_enabled(v36, v37))
      {
        v58 = v36;
        v38 = v6;
        v39 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v66 = v57;
        *v39 = v53;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        v40 = v55;
        v41 = v34;
        v42 = *(v38 + *(v55 + 20));
        sub_1B0B63664(v38);
        *(v39 + 10) = v42;
        *(v39 + 11) = 2082;
        v43 = (v41 + *(v40 + 20));
        v44 = v43[1];
        v46 = v43[2];
        v45 = v43[3];
        sub_1B0A982D8(*v43, v44, v46, v45);
        sub_1B0B63664(v41);
        if (v45 < 0)
        {
        }

        v47 = sub_1B0399D64(v44, v46, &v66);

        *(v39 + 13) = v47;
        *(v39 + 21) = 1024;
        *(v39 + 23) = v63;
        *(v39 + 27) = 2082;

        v48 = v58;
        a1 = v59;
        v49 = sub_1B0E462C8();
        v51 = sub_1B0399D64(v49, v50, &v66);

        *(v39 + 29) = v51;
        *(v39 + 37) = 2048;
        *(v39 + 39) = v35;
        _os_log_impl(&dword_1B0389000, v48, v61, "[%.*hhx-%{public}s] Sync request #%u (%{public}s) completed after %ld seconds.", v39, 0x2Fu);
        v52 = v57;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v52, -1, -1);
        MEMORY[0x1B272C230](v39, -1, -1);

        a2 = v56;
        v6 = v54;
      }

      else
      {
        sub_1B0B63664(v6);

        sub_1B0B63664(v34);
        a1 = v59;
      }
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      return;
    }

    v16 = *(v12 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      goto LABEL_10;
    }
  }

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
}

void sub_1B0B634B4(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>, double a4@<D0>)
{
  if (sub_1B0A9D76C(a1, a2, a4))
  {
    v6 = 0xF000000000000007;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = *(v4 + 64);
    v6 = v7 | 2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a3 = v6;
}

unint64_t sub_1B0B63594()
{
  result = qword_1EB6DD498;
  if (!qword_1EB6DD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD498);
  }

  return result;
}

unint64_t sub_1B0B635E8(uint64_t a1)
{
  result = sub_1B0B63610();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B63610()
{
  result = qword_1EB6DD490;
  if (!qword_1EB6DD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD490);
  }

  return result;
}

uint64_t sub_1B0B63664(uint64_t a1)
{
  v2 = type metadata accessor for Task.Logger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B636FC(uint64_t a1)
{
  result = type metadata accessor for MessagesPendingDownloadPerPass(319);
  if (v2 <= 0x3F)
  {
    result = sub_1B043B29C(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B0B637C4(uint64_t a1)
{
  result = sub_1B0B63850();
  if (v2 <= 0x3F)
  {
    result = sub_1B043B29C(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B0B63850()
{
  result = qword_1EB6DE040;
  if (!qword_1EB6DE040)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB6DE040);
  }

  return result;
}

uint64_t sub_1B0B638C4(uint64_t result)
{
  if (result >= 1)
  {
    v4 = *v1;
    if (*(v1 + 8))
    {
      v5 = v4 - result;
      if (!__OFSUB__(v4, result))
      {
        v6 = v5 > 0;
        if (v5 <= 0)
        {
          v7 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v7 = v4 - result;
        }

        goto LABEL_16;
      }

      __break(1u);
    }

    else
    {
      v3 = *(v4 + 16);
      v8 = v3 - result;
      if (v3 < result)
      {
        result = sub_1B0AA93E0(*v1, 0);
        v6 = 0;
        v7 = MEMORY[0x1E69E7CC0];
LABEL_16:
        *v1 = v7;
        *(v1 + 8) = v6;
        return result;
      }

      v2 = result;
      sub_1B0E46AD8();
      swift_unknownObjectRetain_n();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {
        swift_unknownObjectRelease();
        v9 = MEMORY[0x1E69E7CC0];
      }

      v10 = *(v9 + 16);

      if (v10 == v8)
      {
        v7 = swift_dynamicCastClass();
        result = swift_unknownObjectRelease();
        if (v7)
        {
LABEL_15:
          v6 = 0;
          goto LABEL_16;
        }

        v7 = MEMORY[0x1E69E7CC0];
LABEL_14:
        result = swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    swift_unknownObjectRelease();
    sub_1B0B21B54(v4, v4 + 32, v2, (2 * v3) | 1);
    v7 = v11;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B0B63A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v3 = (a1 + 48);
      v4 = (a2 + 48);
      do
      {
        v6 = *(v3 - 1);
        v5 = *v3;
        v7 = *(v3 - 4);
        v8 = *(v4 - 4);
        v9 = *(v4 - 1);
        v10 = *v4;
        sub_1B09AFB1C(v6, *v3);
        sub_1B09AFB1C(v9, v10);
        v11 = static SearchRequest.__derived_struct_equals(_:_:)(v7, v6, v5, v8, v9, v10);
        sub_1B09AFBA0(v9, v10);
        sub_1B09AFBA0(v6, v5);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v3 += 3;
        v4 += 3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1B0B63AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 16);
        v11[0] = *v3;
        v11[1] = v5;
        v11[2] = *(v3 + 32);
        v12 = *(v3 + 48);
        v6 = *(v4 + 16);
        v13[0] = *v4;
        v7 = *(v4 + 32);
        v13[1] = v6;
        v13[2] = v7;
        v14 = *(v4 + 48);
        sub_1B0B66688(v11, v10);
        sub_1B0B66688(v13, v10);
        v8 = static DownloadRequest.__derived_struct_equals(_:_:)(v11, v13);
        sub_1B0B666E4(v13);
        sub_1B0B666E4(v11);
        if ((v8 & 1) == 0)
        {
          break;
        }

        v4 += 56;
        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}