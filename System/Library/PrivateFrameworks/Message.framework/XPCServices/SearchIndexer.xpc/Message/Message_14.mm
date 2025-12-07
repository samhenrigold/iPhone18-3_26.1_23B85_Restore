uint64_t sub_1000F6ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000F9948(a1, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
  v7 = swift_allocObject();
  sub_1000F9A88(v6, v7 + *(*v7 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  if (*(a2 + 16) && (v8 = sub_100063E70(v7), (v9 & 1) != 0))
  {
    v10 = *(*(a2 + 56) + 8 * v8);
  }

  else
  {
    v10 = _swiftEmptySetSingleton;
  }

  __chkstk_darwin(v11);
  *&v16[-16] = v4;
  *&v16[-8] = sub_1000F7764(&qword_1005CF830, "}3\v");
  KeyPath = swift_getKeyPath();

  v13 = sub_1000F342C(v10, KeyPath);

  v14 = sub_1000CE800(v13);

  return v14;
}

void *sub_1000F70B8(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = sub_1000F3B10(_swiftEmptyArrayStorage);
  v11 = v10;
  v13 = v12;
  sub_100163608(_swiftEmptyArrayStorage);
  v21 = v9;
  v14 = *(a1 + 16);
  if (v14)
  {
    v19[0] = v13;
    v19[1] = v11;
    v15 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v3 + 72);
    do
    {
      sub_1000F9948(v15, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9948(v8, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
      v17 = swift_allocObject();
      sub_1000F9A88(v5, v17 + *(*v17 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000893BC(&v20, v17);
      sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);

      v15 += v16;
      --v14;
    }

    while (v14);
    return v21;
  }

  return v9;
}

uint64_t type metadata accessor for MoveAndCopyMessages.CommandID(uint64_t a1)
{
  result = qword_1005D0320;
  if (!qword_1005D0320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1000F7414(uint64_t a1, __int128 *a2)
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

uint64_t sub_1000F7448(uint64_t *a1, int a2)
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

uint64_t sub_1000F7490(uint64_t result, int a2, int a3)
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

void sub_1000F7510(uint64_t a1)
{
  sub_100050DB8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

unint64_t sub_1000F75B8()
{
  result = qword_1005D0360;
  if (!qword_1005D0360)
  {
    result = swift_getWitnessTable(")2\v", &type metadata for MoveAndCopyMessages.ActionID, v0, v1);
    atomic_store(result, &qword_1005D0360);
  }

  return result;
}

unint64_t sub_1000F760C(uint64_t a1)
{
  result = sub_1000F7634();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F7634()
{
  result = qword_1005D0418;
  if (!qword_1005D0418)
  {
    result = swift_getWitnessTable(byte_1004D3AFC, &type metadata for MoveAndCopyMessages, v0, v1);
    atomic_store(result, &qword_1005D0418);
  }

  return result;
}

unint64_t sub_1000F768C()
{
  result = qword_1005D0420;
  if (!qword_1005D0420)
  {
    result = swift_getWitnessTable(byte_1004D3B68, &type metadata for MoveAndCopyMessages.Copy, v0, v1);
    atomic_store(result, &qword_1005D0420);
  }

  return result;
}

unint64_t sub_1000F76E4()
{
  result = qword_1005D0428;
  if (!qword_1005D0428)
  {
    result = swift_getWitnessTable(byte_1004D3BD0, &type metadata for MoveAndCopyMessages.Move, v0, v1);
    atomic_store(result, &qword_1005D0428);
  }

  return result;
}

uint64_t sub_1000F7764(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MoveAndCopyMessages.CommandID(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F77A8(uint64_t a1, uint64_t a2)
{
  if (sub_100020580(0, a1, a2))
  {
    v3 = *(v2 + 176);
    if (*(v3 + 16))
    {
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);

      sub_100164D40(0, 1);

      sub_1000F3830(v6, v4, v5);
      v8 = v7;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v9 = swift_allocObject();
      v10 = *(v2 + 40);
      *(v9 + 16) = *(v2 + 32);
      *(v9 + 24) = v10;
      if (*(v8 + 16))
      {
        sub_10000C9C0(&qword_1005CF7C8, &qword_1004D3CD0);
        v11 = sub_1004A6A74();
      }

      else
      {
        v11 = _swiftEmptyDictionarySingleton;
      }

      v15 = v11;

      sub_1000F1808(v8, 1, &v15);
      *(v9 + 32) = v15;
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v12 = swift_allocObject();
    v13 = *(v2 + 40);
    *(v12 + 16) = *(v2 + 32);
    *(v12 + 24) = v13;
    *(v12 + 32) = 257;

    return 0;
  }
}

uint64_t sub_1000F7974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v6);
  v8 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v70 - v10;
  v12 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v12);
  v14 = (v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F9948(a1, v14, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1000F9A28(v14, type metadata accessor for UntaggedResponse);
  }

  v16 = *v14;
  v17 = v14[2];
  if ((~*v14 & 0xF000000000000007) == 0)
  {
  }

  if (((v16 >> 59) & 0x1E | (v16 >> 2) & 1) != 8)
  {
    sub_10001114C(*v14);
  }

  v78 = v3;
  v77 = *((v16 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v18 = *((v16 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  v19 = *((v16 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
  sub_1000F9948(a3, v11, type metadata accessor for MailboxTaskLogger);
  sub_1000F9948(a3, v8, type metadata accessor for MailboxTaskLogger);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v20 = sub_1004A4A54();
  v21 = sub_1004A6004();

  v22 = os_log_type_enabled(v20, v21);
  v79 = v19;
  v80 = v18;
  if (v22)
  {
    v74 = v21;
    v75 = v20;
    v23 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v84 = v73;
    *v23 = 68160003;
    *(v23 + 4) = 2;
    *(v23 + 8) = 256;
    v24 = &v8[*(v6 + 20)];
    *(v23 + 10) = *v24;
    *(v23 + 11) = 2082;
    v25 = &v11[*(v6 + 20)];
    *(v23 + 13) = sub_10015BA6C(*(v25 + 1), *(v25 + 2), &v84);
    *(v23 + 21) = 1040;
    *(v23 + 23) = 2;
    *(v23 + 27) = 512;
    LOWORD(v24) = *(v24 + 12);
    sub_1000F9A28(v8, type metadata accessor for MailboxTaskLogger);
    *(v23 + 29) = v24;
    *(v23 + 31) = 2160;
    *(v23 + 33) = 0x786F626C69616DLL;
    *(v23 + 41) = 2085;
    v26 = *(v25 + 4);
    LODWORD(v25) = *(v25 + 10);

    sub_1000F9A28(v11, type metadata accessor for MailboxTaskLogger);
    v82 = v26;
    v83 = v25;
    v27 = sub_1004A5824();
    v29 = sub_10015BA6C(v27, v28, &v84);

    *(v23 + 43) = v29;
    v30 = v80;
    *(v23 + 51) = 2082;
    v31 = *(v30 + 16);
    v32 = _swiftEmptyArrayStorage;
    v76 = v23;
    if (v31)
    {
      v71 = v17;
      v72 = v16;
      v82 = _swiftEmptyArrayStorage;

      sub_100134BC4(0, v31, 0);
      v33 = v80;
      v34 = 32;
      v32 = v82;
      do
      {
        v81 = *(v33 + v34);
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v35 = sub_1004A5804();
        v37 = v36;
        v82 = v32;
        v39 = v32[2];
        v38 = v32[3];
        if (v39 >= v38 >> 1)
        {
          sub_100134BC4((v38 > 1), v39 + 1, 1);
          v33 = v80;
          v32 = v82;
        }

        v32[2] = v39 + 1;
        v40 = &v32[2 * v39];
        v40[4] = v35;
        v40[5] = v37;
        v34 += 8;
        --v31;
      }

      while (v31);

      v16 = v72;
      v23 = v76;
    }

    v82 = v32;
    v43 = sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    v44 = sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
    v45 = sub_1004A5614();
    v47 = v46;

    v48 = sub_10015BA6C(v45, v47, &v84);

    *(v23 + 53) = v48;
    *(v23 + 61) = 2082;
    v49 = *(v79 + 16);
    v50 = _swiftEmptyArrayStorage;
    if (v49)
    {
      v70[1] = v44;
      v71 = v43;
      v82 = _swiftEmptyArrayStorage;

      sub_100134BC4(0, v49, 0);
      v51 = v79;
      v52 = 32;
      v50 = v82;
      do
      {
        v81 = *(v51 + v52);
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v53 = sub_1004A5804();
        v82 = v50;
        v56 = v50[2];
        v55 = v50[3];
        if (v56 >= v55 >> 1)
        {
          v72 = v16;
          v58 = v53;
          v59 = v54;
          sub_100134BC4((v55 > 1), v56 + 1, 1);
          v51 = v79;
          v54 = v59;
          v53 = v58;
          v16 = v72;
          v50 = v82;
        }

        v50[2] = v56 + 1;
        v57 = &v50[2 * v56];
        v57[4] = v53;
        v57[5] = v54;
        v52 += 8;
        --v49;
      }

      while (v49);

      v23 = v76;
    }

    v82 = v50;
    v60 = sub_1004A5614();
    v62 = v61;

    v63 = sub_10015BA6C(v60, v62, &v84);

    *(v23 + 63) = v63;
    *(v23 + 71) = 1024;

    v42 = v77;
    *(v23 + 73) = v77;

    v64 = v75;
    _os_log_impl(&_mh_execute_header, v75, v74, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server moved messages %{public}s with destination UIDs %{public}s and UIDValidity 0x%x", v23, 0x4Du);
    swift_arrayDestroy();

    v41 = v78;
  }

  else
  {

    sub_1000F9A28(v8, type metadata accessor for MailboxTaskLogger);

    sub_1000F9A28(v11, type metadata accessor for MailboxTaskLogger);
    v41 = v78;
    v42 = v77;
  }

  v65 = *(v41 + 168);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_100086FF4(0, *(v65 + 2) + 1, 1, v65);
  }

  v67 = *(v65 + 2);
  v66 = *(v65 + 3);
  if (v67 >= v66 >> 1)
  {
    v65 = sub_100086FF4((v66 > 1), v67 + 1, 1, v65);
  }

  sub_10001114C(v16);

  *(v65 + 2) = v67 + 1;
  v68 = &v65[24 * v67];
  *(v68 + 8) = v42;
  v69 = v79;
  *(v68 + 5) = v80;
  *(v68 + 6) = v69;
  *(v41 + 168) = v65;
  return result;
}

void sub_1000F8150(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v11);
  v108 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v107 = (&v99 - v14);
  __chkstk_darwin(v15);
  v106 = (&v99 - v16);
  __chkstk_darwin(v17);
  v111 = &v99 - v18;
  __chkstk_darwin(v19);
  v110 = (&v99 - v20);
  v21 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v21);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v99 - v26;
  if (((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0x12 && (*(v5 + 40) | (*(v5 + 40) << 32)) == (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
  {
    v28 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    LODWORD(v109) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v29 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v30 = v25;
    if (sub_1000FFC98(*(v5 + 32), v29))
    {
      v103 = v5;

      if (sub_100071044(0, a2, a3, a4))
      {
        sub_1000F9948(a5, v27, type metadata accessor for MailboxTaskLogger);
        sub_1000F9948(a5, v23, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_bridgeObjectRetain_n();
        v31 = sub_1004A4A54();
        v32 = sub_1004A6034();
        v33 = os_log_type_enabled(v31, v32);
        v104 = v28;
        if (v33)
        {
          v34 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *v34 = 68159491;
          *(v34 + 4) = 2;
          *(v34 + 8) = 256;
          v35 = &v23[*(v30 + 20)];
          *(v34 + 10) = *v35;
          *(v34 + 11) = 2082;
          v36 = &v27[*(v30 + 20)];
          *(v34 + 13) = sub_10015BA6C(*(v36 + 1), *(v36 + 2), &v114);
          *(v34 + 21) = 1040;
          *(v34 + 23) = 2;
          *(v34 + 27) = 512;
          LOWORD(v35) = *(v35 + 12);
          sub_1000F9A28(v23, type metadata accessor for MailboxTaskLogger);
          *(v34 + 29) = v35;
          *(v34 + 31) = 2160;
          *(v34 + 33) = 0x786F626C69616DLL;
          *(v34 + 41) = 2085;
          v37 = *(v36 + 4);
          LODWORD(v36) = *(v36 + 10);

          sub_1000F9A28(v27, type metadata accessor for MailboxTaskLogger);
          v112 = v37;
          v113 = v36;
          v38 = sub_1004A5824();
          v40 = sub_10015BA6C(v38, v39, &v114);

          *(v34 + 43) = v40;
          *(v34 + 51) = 2048;
          v41 = *(v104 + 16);

          *(v34 + 53) = v41;

          _os_log_impl(&_mh_execute_header, v31, v32, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned %ld moves / copies.", v34, 0x3Du);
          swift_arrayDestroy();

          v42 = v104;
        }

        else
        {
          v42 = v28;

          sub_1000F9A28(v23, type metadata accessor for MailboxTaskLogger);

          sub_1000F9A28(v27, type metadata accessor for MailboxTaskLogger);
        }

        v43 = v103;
        v105 = v11;
        if ((v109 & 1) == 0)
        {
          *(v103 + 120) = 1;
        }

        v102 = *(v42 + 16);
        if (v102)
        {
          v44 = 0;
          v45 = (v42 + 64);
          while (v44 < *(v42 + 16))
          {
            v54 = *(v43 + 112);
            if (v54 >= 257)
            {

              *(v43 + 120) = 1;
              return;
            }

            v55 = *(v45 - 7);
            v56 = *(v45 - 3);
            LODWORD(v109) = *(v45 - 4);
            v57 = *(v45 - 1);
            v58 = *v45;
            v59 = *(v45 - 32);
            *(v43 + 112) = v54 + 1;
            if (v59 == 1)
            {
              v101 = v44;
              v115 = v55;
              v116 = 1;
              v117 = v57;
              v118 = v58;
              sub_10000C9C0(&qword_1005CF7D0, &qword_1004D3CB0);
              v60 = sub_1004A6A74();
              v61 = v115;
              v62 = v116;
              v63 = v117;
              v64 = v118;
              v65 = sub_100067004();
              if (v66)
              {
                goto LABEL_33;
              }

              v60[(v65 >> 6) + 8] |= 1 << v65;
              *(v60[6] + 4 * v65) = v61;
              v67 = v60[7] + 24 * v65;
              *v67 = v62;
              *(v67 + 8) = v63;
              *(v67 + 16) = v64;
              v68 = v60[2];
              v69 = __OFADD__(v68, 1);
              v70 = v68 + 1;
              if (v69)
              {
                goto LABEL_34;
              }

              v60[2] = v70;

              sub_100014CEC(v57, v58);

              sub_100014CEC(v57, v58);
              sub_100014CEC(v63, v64);
              sub_100025F40(&v115, &qword_1005D0448, &qword_1004D3CB8);
              v71 = v110;
              *v110 = v56;
              *(v71 + 8) = v109;
              *(v71 + 16) = v60;
              swift_storeEnumTagMultiPayload();
              v72 = v111;
              sub_1000F9948(v71, v111, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
              v73 = swift_allocObject();
              sub_1000F9A88(v72, v73 + *(*v73 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
              v74 = v103;
              sub_1000893BC(&v112, v73);

              v43 = v74;
              sub_100014D40(v57, v58);

              sub_1000F9A28(v71, type metadata accessor for MoveAndCopyMessages.CommandID);
              v44 = v101;
            }

            else
            {
              if (*(v43 + 105))
              {
                LODWORD(v101) = v55;
                v122 = v55;
                v123 = 0;
                v75 = v57;
                v124 = v57;
                v125 = v58;
                v76 = v58;
                sub_10000C9C0(&qword_1005CF7D0, &qword_1004D3CB0);
                v77 = sub_1004A6A74();
                v78 = v122;
                v79 = v123;
                v80 = v124;
                v81 = v125;
                v82 = sub_100067004();
                if (v83)
                {
                  goto LABEL_36;
                }

                v77[(v82 >> 6) + 8] |= 1 << v82;
                *(v77[6] + 4 * v82) = v78;
                v84 = v77[7] + 24 * v82;
                *v84 = v79;
                *(v84 + 8) = v80;
                *(v84 + 16) = v81;
                v85 = v77[2];
                v69 = __OFADD__(v85, 1);
                v86 = v85 + 1;
                if (v69)
                {
                  goto LABEL_37;
                }

                v77[2] = v86;

                v100 = v75;
                sub_100014CEC(v75, v76);

                sub_100014CEC(v75, v76);
                sub_100014CEC(v80, v81);
                sub_100025F40(&v122, &qword_1005D0448, &qword_1004D3CB8);
                v46 = v107;
                *v107 = v56;
                *(v46 + 8) = v109;
                *(v46 + 16) = v77;
                swift_storeEnumTagMultiPayload();
                v109 = type metadata accessor for MoveAndCopyMessages.CommandID;
                v47 = v111;
                sub_1000F9948(v46, v111, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
                v48 = swift_allocObject();
                v49 = *(*v48 + 96);
                v99 = type metadata accessor for MoveAndCopyMessages.CommandID;
                sub_1000F9A88(v47, v48 + v49, type metadata accessor for MoveAndCopyMessages.CommandID);
                v43 = v103;
                sub_1000893BC(&v112, v48);

                sub_1000F9A28(v46, type metadata accessor for MoveAndCopyMessages.CommandID);
                LODWORD(v112) = v101;
                v50 = sub_100016948();
                MessageIdentifierSet.init(_:)(&v112, &type metadata for UID, v50);
                swift_storeEnumTagMultiPayload();
                v51 = v108;
                sub_1000F9948(v47, v108, v109);
                v52 = swift_allocObject();
                sub_1000F9A88(v51, v52 + *(*v52 + 96), v99);
                sub_1000893BC(&v112, v52);

                sub_100014D40(v100, v76);

                v53 = v47;
              }

              else
              {
                v119 = v55;
                v120 = v57;
                v121 = v58;
                sub_10000C9C0(&qword_1005CF7D8, &qword_1004D3CC0);
                v87 = sub_1004A6A74();
                v88 = v119;
                v89 = v120;
                v90 = v121;
                v91 = sub_100067004();
                if (v92)
                {
                  goto LABEL_35;
                }

                v87[(v91 >> 6) + 8] |= 1 << v91;
                *(v87[6] + 4 * v91) = v88;
                v93 = (v87[7] + 16 * v91);
                *v93 = v89;
                v93[1] = v90;
                v94 = v87[2];
                v69 = __OFADD__(v94, 1);
                v95 = v94 + 1;
                if (v69)
                {
                  goto LABEL_38;
                }

                v87[2] = v95;

                sub_100014CEC(v57, v58);

                sub_100014CEC(v57, v58);
                sub_100014CEC(v89, v90);
                sub_100025F40(&v119, &qword_1005D0450, &qword_1004D3CC8);
                v96 = v106;
                *v106 = v56;
                *(v96 + 8) = v109;
                *(v96 + 16) = v87;
                swift_storeEnumTagMultiPayload();
                v97 = v111;
                sub_1000F9948(v96, v111, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
                v98 = swift_allocObject();
                sub_1000F9A88(v97, v98 + *(*v98 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000893BC(&v112, v98);

                sub_100014D40(v57, v58);

                v53 = v96;
              }

              sub_1000F9A28(v53, type metadata accessor for MoveAndCopyMessages.CommandID);
            }

            v42 = v104;
            ++v44;
            v45 += 5;
            if (v102 == v44)
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

        *(v103 + 120) = 1;
      }
    }
  }
}

uint64_t sub_1000F8DD0(uint64_t result, uint64_t a2)
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

      sub_1000F98F4();
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

void *sub_1000F8EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v10 = sub_1000F8DD0(a2, a3);
  if (v4)
  {
    return v5;
  }

  v12 = v11;
  v13 = sub_1000F1410(v10);
  v14 = sub_1000F1410(v12);
  v15 = v14;
  v49 = *(v13 + 16);
  if (!v49)
  {

    v5 = _swiftEmptyDictionarySingleton;
LABEL_23:

    return v5;
  }

  v16 = 0;
  v47 = a1 << 32;
  v48 = v13 + 32;
  v5 = _swiftEmptyDictionarySingleton;
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
    v22 = sub_100067004();
    if ((v23 & 1) == 0)
    {
      goto LABEL_28;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_29;
    }

    v24 = *(*(a4 + 56) + 24 * v22);
    v25 = sub_100067004();
    if ((v26 & 1) == 0)
    {
      goto LABEL_30;
    }

    v27 = *(a4 + 56) + 24 * v25;
    v28 = *(v27 + 8);
    v50 = *(v27 + 16);
    v51 = v21;
    sub_100014CEC(v28, v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_100067004();
    v32 = _swiftEmptyDictionarySingleton[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_31;
    }

    v35 = v30;
    if (_swiftEmptyDictionarySingleton[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10013BF78();
      }
    }

    else
    {
      sub_1000C7000(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_100067004();
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_33;
      }

      v31 = v36;
    }

    v38 = v47 | v51;
    if (v35)
    {
      v17 = _swiftEmptyDictionarySingleton[7] + 40 * v31;
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      *v17 = v24;
      *(v17 + 8) = v28;
      *(v17 + 16) = v50;
      *(v17 + 24) = v38;
      *(v17 + 32) = 0;
      sub_100014D40(v18, v19);
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v31 >> 6) + 8] |= 1 << v31;
      *(_swiftEmptyDictionarySingleton[6] + 4 * v31) = v20;
      v39 = _swiftEmptyDictionarySingleton[7] + 40 * v31;
      *v39 = v24;
      *(v39 + 8) = v28;
      *(v39 + 16) = v50;
      *(v39 + 24) = v38;
      *(v39 + 32) = 0;
      v40 = _swiftEmptyDictionarySingleton[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_32;
      }

      _swiftEmptyDictionarySingleton[2] = v42;
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
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void *sub_1000F918C(uint64_t a1, char a2, uint64_t a3)
{
  sub_10000C9C0(&qword_1005CF7B8, &qword_1004D2CC8);
  result = sub_1004A6A54();
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
      result = sub_100014CEC(result, v22);
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

uint64_t sub_1000F92FC()
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v55 = *(v2 - 8);
  __chkstk_darwin(v2);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = &v48 - v5;
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  __chkstk_darwin(v12);
  v13 = *(v0 + 128);
  v53 = (v0 + 128);
  v54 = &v48 - v14;
  v60 = v15;
  v16 = sub_1000F7764(&qword_1005CF830, "}3\v");
  v61 = v16;
  KeyPath = swift_getKeyPath();

  v18 = sub_1000F342C(v13, KeyPath);

  v19 = sub_1000CE800(v18);

  sub_1000F1CC8(v19);
  v51 = v16;
  v52 = v20;
  v57 = v2;
  v58 = v2;
  v59 = v16;
  v21 = swift_getKeyPath();

  v22 = sub_1000F342C(v13, v21);
  v56 = v1;

  v23 = sub_1000CE800(v22);

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
    sub_1000F9948(*(v23 + 48) + *(v55 + 72) * (__clz(__rbit64(v28)) | (v25 << 6)), v54, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9A88(v35, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9948(v11, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
LABEL_4:
        v30 = sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
        __chkstk_darwin(v30);
        *(&v48 - 2) = v11;
        v31 = v52;

        v32 = v56;
        sub_1000F2414(sub_1000F98B4, (&v48 - 4), v31);
        v56 = v32;
        sub_1000EA544(v11, v33);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_4;
      }

      sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    }

    v28 &= v28 - 1;
    result = sub_1000F9A28(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
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
  __chkstk_darwin(v37);
  v39 = v51;
  *(&v48 - 2) = v57;
  *(&v48 - 1) = v39;
  v40 = swift_getKeyPath();

  v41 = sub_1000F342C(v38, v40);

  v42 = sub_1000CE800(v41);

  sub_1000F2070(v42);
  if (!*(v43 + 16))
  {
  }

  v44 = v43;
  v45 = v50;
  swift_storeEnumTagMultiPayload();
  v46 = v49;
  sub_1000F9948(v45, v49, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
  v47 = swift_allocObject();
  sub_1000F9A88(v46, v47 + *(*v47 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000893BC(&v62, v47);
  sub_1000F9A28(v45, type metadata accessor for MoveAndCopyMessages.CommandID);

  swift_storeEnumTagMultiPayload();
  sub_1000EA544(v45, v44);

  return sub_1000F9A28(v45, type metadata accessor for MoveAndCopyMessages.CommandID);
}

unint64_t sub_1000F98F4()
{
  result = qword_1005D0440;
  if (!qword_1005D0440)
  {
    result = swift_getWitnessTable("u.\v", &type metadata for MoveAndCopyMessages.UIDPairs.CountMismatch, v0, v1);
    atomic_store(result, &qword_1005D0440);
  }

  return result;
}

uint64_t sub_1000F9948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F99B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F99E8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F9A28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F9A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F9AF0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, int *), uint64_t a3, char a4, void *a5)
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
    sub_100014CEC(v22, v23);
    a2(&v51, &v47);
    sub_100014D40(v49, v50);
    v24 = v52;
    if (v52 == 2)
    {
LABEL_22:
      sub_100020D08(a1);
    }

    v25 = v51;
    v45 = v53;
    v46 = v54;
    v26 = *v55;
    v28 = sub_100067004();
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
        sub_10013C26C();
      }
    }

    else
    {
      sub_1000C7564(v31, a4 & 1);
      v33 = sub_100067004();
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
      sub_100014D40(v13, v14);
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
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1000F9D98(uint64_t a1, void (*a2)(void *__return_ptr, int *), uint64_t a3, char a4, void *a5)
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
    sub_100014CEC(v43, *(&v43 + 1));
    a2(v44, &v42);
    sub_100014D40(v43, *(&v43 + 1));
    v20 = v45;
    if (v45 >> 60 == 15)
    {
LABEL_22:
      sub_100020D08(a1);
    }

    v21 = v44[0];
    v22 = v44[1];
    v23 = *v46;
    v25 = sub_100067004();
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
        sub_10013C104();
      }
    }

    else
    {
      sub_1000C72D0(v28, a4 & 1);
      v30 = sub_100067004();
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
      sub_100014D40(v13, v14);
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
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1000FA030(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1000FA074(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 initializeWithCopy for IdleTimer.State(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000FA0DC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1000FA120(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000FA17C()
{
  result = qword_1005D0490;
  if (!qword_1005D0490)
  {
    result = swift_getWitnessTable(byte_1004D3E4C, &type metadata for MoveAndCopyMessages.CompletedCommand.MessageInfo, v0, v1);
    atomic_store(result, &qword_1005D0490);
  }

  return result;
}

unint64_t sub_1000FA1D4()
{
  result = qword_1005D0498;
  if (!qword_1005D0498)
  {
    result = swift_getWitnessTable(byte_1004D3EB4, &type metadata for MoveAndCopyMessages.Copy.MessageInfo, v0, v1);
    atomic_store(result, &qword_1005D0498);
  }

  return result;
}

uint64_t sub_1000FA270(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000FA2FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NewestMessages(uint64_t a1)
{
  result = qword_1005D04F8;
  if (!qword_1005D04F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FA3C4(uint64_t a1)
{
  sub_100050DB8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000FA440(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  __chkstk_darwin(v4);
  v6 = &v30[-v5];
  v7 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30[-v9];
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() > 520)
  {
    v12 = sub_1000E5314();
    if ((v12 & &_mh_execute_header) != 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    sub_10002A54C(a1, v6);
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
    sub_1000FA734(v6);
  }

  else
  {
    (*(v8 + 16))(v10, a1, v7);
    sub_1004A7104();
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

uint64_t sub_1000FA734(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FA7B0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000FA880(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for NewServerMessages(uint64_t a1)
{
  result = qword_1005D0590;
  if (!qword_1005D0590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FA97C(uint64_t a1)
{
  sub_100051C44(319);
  if (v1 <= 0x3F)
  {
    sub_1000FAA2C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000FAA2C(uint64_t a1)
{
  if (!qword_1005D05A0)
  {
    type metadata accessor for MessageMetadata(255);
    v1 = sub_1004A5CD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D05A0);
    }
  }
}

uint64_t sub_1000FAA84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for NewServerMessages(0);
  if ((*(v1 + v6[7]) & 1) == 0)
  {
    if (*(v1 + v6[8]))
    {
      v7 = &off_100598DC0;
      goto LABEL_9;
    }

    sub_10000C9C0(&qword_1005CE240, &unk_100509A40);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_1004D13E0;
    v7[4] = 7;
    v7[5] = 0;
    v7[6] = 0;
    v7[7] = 0;
    *(v7 + 68) = -64;
    *(v7 + 16) = 0;
    v7[9] = 2;
    v7[10] = 0;
    v7[11] = 0;
    v7[12] = 0;
    *(v7 + 108) = -64;
    *(v7 + 26) = 0;
    v7[14] = 5;
    v7[15] = 0;
    v7[16] = 0;
    v7[17] = 0;
    *(v7 + 148) = -64;
    *(v7 + 36) = 0;
    v7[19] = 1;
    v7[20] = 0;
    v7[21] = 0;
    v7[22] = 0;
    *(v7 + 188) = -64;
    *(v7 + 46) = 0;
    v12 = SectionSpecifier.header.unsafeMutableAddressor();
    v13 = *v12;
    v10 = v12[1];
    v11 = *(v12 + 16);
    v7[24] = 1;
    v7[25] = v13;
    v7[26] = v10;
    v7[27] = v11;
    *(v7 + 228) = 33;
    *(v7 + 56) = 0;
    v7[29] = 11;
    v7[30] = 0;
    v7[31] = 0;
    v7[32] = 0;
    *(v7 + 268) = -64;
    *(v7 + 66) = 0;
LABEL_8:

    sub_100051190(v10, v11);
    goto LABEL_9;
  }

  if ((*(v1 + v6[8]) & 1) == 0)
  {
    sub_10000C9C0(&qword_1005CE240, &unk_100509A40);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_1004D2DE0;
    v7[4] = 7;
    v7[5] = 0;
    v7[6] = 0;
    v7[7] = 0;
    *(v7 + 68) = -64;
    *(v7 + 16) = 0;
    v7[9] = 2;
    v7[10] = 0;
    v7[11] = 0;
    v7[12] = 0;
    *(v7 + 108) = -64;
    *(v7 + 26) = 0;
    v7[14] = 5;
    v7[15] = 0;
    v7[16] = 0;
    v7[17] = 0;
    *(v7 + 148) = -64;
    *(v7 + 36) = 0;
    v7[19] = 1;
    v7[20] = 0;
    v7[21] = 0;
    v7[22] = 0;
    *(v7 + 188) = -64;
    *(v7 + 46) = 0;
    v8 = SectionSpecifier.header.unsafeMutableAddressor();
    v9 = *v8;
    v10 = v8[1];
    v11 = *(v8 + 16);
    v7[24] = 1;
    v7[25] = v9;
    v7[26] = v10;
    v7[27] = v11;
    *(v7 + 228) = 33;
    *(v7 + 56) = 0;
    goto LABEL_8;
  }

  v7 = &off_100598EA8;
LABEL_9:
  sub_10000E268(v1 + v6[5], v5, &qword_1005CD1D0, &unk_1004CF2C0);
  v14 = a1 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
  sub_10000E268(v5, a1, &unk_1005D91B0, &unk_1004CF400);
  *v14 = v7;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  type metadata accessor for ClientCommand(0);
  swift_storeEnumTagMultiPayload();
  return sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
}

void sub_1000FAD60(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v138 = a2;
  v142 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v142);
  v6 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v120 - v8;
  __chkstk_darwin(v10);
  v12 = &v120 - v11;
  __chkstk_darwin(v13);
  v15 = &v120 - v14;
  __chkstk_darwin(v16);
  v134 = &v120 - v17;
  __chkstk_darwin(v18);
  v135 = &v120 - v19;
  v20 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v20 - 8);
  v136 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v137 = &v120 - v23;
  __chkstk_darwin(v24);
  v139 = &v120 - v25;
  v26 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  __chkstk_darwin(v26 - 8);
  v28 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v120 - v30;
  v32 = sub_10000C9C0(&qword_1005D05E8, &unk_1004D4000);
  __chkstk_darwin(v32 - 8);
  v140 = &v120 - v33;
  v34 = type metadata accessor for MessageMetadata(0);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  v38 = &v120 - v37;
  __chkstk_darwin(v39);
  if (*(a1 + 12))
  {
    sub_1000FC184(a3, v9, type metadata accessor for MailboxTaskLogger);
    sub_1000FC184(a3, v6, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v44 = sub_1004A4A54();
    v45 = sub_1004A6004();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v146[0] = swift_slowAlloc();
      *v46 = 68159235;
      *(v46 + 4) = 2;
      *(v46 + 8) = 256;
      v47 = v142;
      v48 = &v6[*(v142 + 20)];
      *(v46 + 10) = *v48;
      *(v46 + 11) = 2082;
      v49 = &v9[*(v47 + 20)];
      *(v46 + 13) = sub_10015BA6C(*(v49 + 1), *(v49 + 2), v146);
      *(v46 + 21) = 1040;
      *(v46 + 23) = 2;
      *(v46 + 27) = 512;
      LOWORD(v48) = *(v48 + 12);
      sub_1000FC254(v6, type metadata accessor for MailboxTaskLogger);
      *(v46 + 29) = v48;
      *(v46 + 31) = 2160;
      *(v46 + 33) = 0x786F626C69616DLL;
      *(v46 + 41) = 2085;
      v50 = *(v49 + 4);
      LODWORD(v49) = *(v49 + 10);

      sub_1000FC254(v9, type metadata accessor for MailboxTaskLogger);
      v144 = v50;
      v145 = v49;
      v51 = sub_1004A5824();
      v53 = sub_10015BA6C(v51, v52, v146);

      *(v46 + 43) = v53;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No Message UID found.", v46, 0x33u);
      swift_arrayDestroy();
LABEL_9:

      return;
    }

    sub_1000FC254(v6, type metadata accessor for MailboxTaskLogger);

    v68 = v9;
LABEL_12:
    v69 = type metadata accessor for MailboxTaskLogger;
LABEL_13:
    sub_1000FC254(v68, v69);
    return;
  }

  v130 = v41;
  v131 = v43;
  v129 = v42;
  v132 = (&v120 - v40);
  v133 = a3;
  v54 = *(a1 + 8);
  v55 = type metadata accessor for NewServerMessages(0);
  if (*(a1 + 536) & 1) != 0 || (v56 = *(a1 + 512)) == 0 || (*(a1 + 544))
  {
    v57 = v133;
    sub_1000FC184(v133, v15, type metadata accessor for MailboxTaskLogger);
    sub_1000FC184(v57, v12, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v44 = sub_1004A4A54();
    v58 = sub_1004A6004();
    if (os_log_type_enabled(v44, v58))
    {
      v59 = swift_slowAlloc();
      v146[0] = swift_slowAlloc();
      *v59 = 68159235;
      *(v59 + 4) = 2;
      *(v59 + 8) = 256;
      v60 = v142;
      v61 = &v12[*(v142 + 20)];
      *(v59 + 10) = *v61;
      *(v59 + 11) = 2082;
      v62 = &v15[*(v60 + 20)];
      *(v59 + 13) = sub_10015BA6C(*(v62 + 1), *(v62 + 2), v146);
      *(v59 + 21) = 1040;
      *(v59 + 23) = 2;
      *(v59 + 27) = 512;
      LOWORD(v61) = *(v61 + 12);
      sub_1000FC254(v12, type metadata accessor for MailboxTaskLogger);
      *(v59 + 29) = v61;
      *(v59 + 31) = 2160;
      *(v59 + 33) = 0x786F626C69616DLL;
      *(v59 + 41) = 2085;
      v63 = *(v62 + 4);
      v64 = *(v62 + 10);

      sub_1000FC254(v15, type metadata accessor for MailboxTaskLogger);
      v144 = v63;
      v145 = v64;
      v65 = sub_1004A5824();
      v67 = sub_10015BA6C(v65, v66, v146);

      *(v59 + 43) = v67;
      _os_log_impl(&_mh_execute_header, v44, v58, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Ignoring message data.", v59, 0x33u);
      swift_arrayDestroy();
      goto LABEL_9;
    }

    sub_1000FC254(v12, type metadata accessor for MailboxTaskLogger);

    v68 = v15;
    goto LABEL_12;
  }

  v128 = v55;
  v70 = (v141 + *(v55 + 24));
  v125 = *v70;
  v124 = v70[1];
  v123 = v70[2];
  v122 = v70[3];
  v121 = v70[4];
  v71 = *(a1 + 540);
  v126 = *(a1 + 528);
  v127 = v71;
  sub_1000FBCE8(v31);
  sub_1000FC0A4(v31, v28);
  v72 = sub_1004A5384();
  v73 = *(v72 - 8);
  v74 = 1;
  if ((*(v73 + 48))(v28, 1, v72) != 1)
  {
    (*(v73 + 32))(v140, v28, v72);
    v74 = 0;
  }

  v138 = v54 < v138;
  v75 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v76 = *(*(v75 - 8) + 56);
  v76(v140, v74, 1, v75);
  v77 = &_mh_execute_header;
  if (!v121)
  {
    v77 = 0;
  }

  v78 = 0x1000000;
  if (!v122)
  {
    v78 = 0;
  }

  v79 = 0x10000;
  if (!v123)
  {
    v79 = 0;
  }

  v80 = 256;
  if (!v124)
  {
    v80 = 0;
  }

  v81 = FlagDecoder.decode(_:)(v56, v80 | v125 | v79 | v78 | v77);
  v83 = v82;
  v146[0] = *(a1 + 520);
  v84 = v34[8];
  v76(&v38[v84], 1, 1, v75);
  *v38 = v54;
  *(v38 + 1) = v126;
  sub_10000E268(v146, &v144, qword_1005CF958, &qword_1004D3040);
  sub_1000FC114(v140, &v38[v84]);
  *(v38 + 2) = v81;
  v38[24] = v83;
  *(v38 + 4) = v146[0];
  *&v38[v34[9]] = v127;
  v38[v34[10]] = v138;
  v85 = v132;
  sub_1000FC1EC(v38, v132, type metadata accessor for MessageMetadata);
  v86 = *(v128 + 20);
  v87 = v139;
  sub_10000E268(v141 + v86, v139, &qword_1005CD1D0, &unk_1004CF2C0);
  LODWORD(v144) = *v85;
  v88 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  LOBYTE(v84) = MessageIdentifierSet.contains(_:)(&v144, v88);
  sub_100025F40(v87, &unk_1005D91B0, &unk_1004CF400);
  if ((v84 & 1) == 0)
  {
    v94 = v137;
    sub_10000E268(v141 + v86, v137, &qword_1005CD1D0, &unk_1004CF2C0);
    v95 = v133;
    v96 = v135;
    sub_1000FC184(v133, v135, type metadata accessor for MailboxTaskLogger);
    v97 = v134;
    sub_1000FC184(v95, v134, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v98 = v130;
    sub_1000FC184(v85, v130, type metadata accessor for MessageMetadata);
    v99 = v136;
    sub_10000E268(v94, v136, &qword_1005CD1D0, &unk_1004CF2C0);
    v100 = sub_1004A4A54();
    v101 = sub_1004A6004();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      LODWORD(v140) = v101;
      v103 = v102;
      v141 = swift_slowAlloc();
      v143 = v141;
      *v103 = 68159747;
      *(v103 + 4) = 2;
      *(v103 + 8) = 256;
      v104 = v142;
      v105 = v97;
      v106 = v97 + *(v142 + 20);
      *(v103 + 10) = *v106;
      *(v103 + 11) = 2082;
      v107 = v96;
      v108 = v96 + *(v104 + 20);
      *(v103 + 13) = sub_10015BA6C(*(v108 + 8), *(v108 + 16), &v143);
      *(v103 + 21) = 1040;
      *(v103 + 23) = 2;
      *(v103 + 27) = 512;
      LOWORD(v106) = *(v106 + 24);
      sub_1000FC254(v105, type metadata accessor for MailboxTaskLogger);
      *(v103 + 29) = v106;
      *(v103 + 31) = 2160;
      *(v103 + 33) = 0x786F626C69616DLL;
      *(v103 + 41) = 2085;
      v109 = *(v108 + 32);
      LODWORD(v108) = *(v108 + 40);

      sub_1000FC254(v107, type metadata accessor for MailboxTaskLogger);
      v144 = v109;
      v145 = v108;
      v110 = sub_1004A5824();
      v112 = sub_10015BA6C(v110, v111, &v143);

      *(v103 + 43) = v112;
      *(v103 + 51) = 1024;
      v113 = *v98;
      sub_1000FC254(v98, type metadata accessor for MessageMetadata);
      *(v103 + 53) = v113;
      *(v103 + 57) = 2082;
      v114 = v136;
      v115 = v139;
      sub_10000E268(v136, v139, &qword_1005CD1D0, &unk_1004CF2C0);
      v116 = MessageIdentifierSet.debugDescription.getter();
      v118 = v117;
      sub_100025F40(v114, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v115, &unk_1005D91B0, &unk_1004CF400);
      v119 = sub_10015BA6C(v116, v118, &v143);

      *(v103 + 59) = v119;
      _os_log_impl(&_mh_execute_header, v100, v140, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Ignoring UID %u outside of range-of-interest %{public}s.", v103, 0x43u);
      swift_arrayDestroy();

      sub_100025F40(v137, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    else
    {
      sub_1000FC254(v98, type metadata accessor for MessageMetadata);
      sub_1000FC254(v97, type metadata accessor for MailboxTaskLogger);

      sub_100025F40(v99, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_1000FC254(v96, type metadata accessor for MailboxTaskLogger);
      sub_100025F40(v94, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    v68 = v85;
    v69 = type metadata accessor for MessageMetadata;
    goto LABEL_13;
  }

  sub_1000FC184(v85, v131, type metadata accessor for MessageMetadata);
  v89 = *(v128 + 36);
  v90 = v141;
  v91 = *(v141 + v89);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v91 = sub_1000862E8(0, v91[2] + 1, 1, v91);
  }

  v93 = v91[2];
  v92 = v91[3];
  if (v93 >= v92 >> 1)
  {
    v91 = sub_1000862E8((v92 > 1), v93 + 1, 1, v91);
  }

  sub_1000FC254(v132, type metadata accessor for MessageMetadata);
  v91[2] = v93 + 1;
  sub_1000FC1EC(v131, v91 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v93, type metadata accessor for MessageMetadata);
  *(v90 + v89) = v91;
}

uint64_t sub_1000FBCE8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v29 = type metadata accessor for MessageData.BodySection(0);
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v28 = &v28 - v6;
  v7 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  __chkstk_darwin(v7 - 8);
  v30 = &v28 - v8;
  v9 = *(v1 + 200);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    while (1)
    {
      sub_1000FC184(v11, v4, type metadata accessor for MessageData.BodySection);
      v13 = *v4;
      v14 = *(v4 + 1);
      v15 = v4[16];
      v16 = SectionSpecifier.header.unsafeMutableAddressor();
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v16 + 16);

      sub_100051190(v17, v19);
      LOBYTE(v13) = static SectionSpecifier.__derived_struct_equals(_:_:)(v13, v14, v15, v18, v17, v19);

      sub_1000511A4(v17, v19);
      if ((v13 & 1) != 0 && v4[24] == 1)
      {
        break;
      }

      sub_1000FC254(v4, type metadata accessor for MessageData.BodySection);
      v11 += v12;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    v20 = v28;
    sub_1000FC1EC(v4, v28, type metadata accessor for MessageData.BodySection);
    v21 = v30;
    sub_10000E268(v20 + *(v29 + 24), v30, &qword_1005CE218, &unk_1004F3FD0);
    sub_1000FC254(v20, type metadata accessor for MessageData.BodySection);
    v22 = type metadata accessor for MessageData.BodyData(0);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) != 1)
    {
      v25 = sub_1004A5384();
      v26 = *(v25 - 8);
      v27 = v31;
      (*(v26 + 16))(v31, v21, v25);
      sub_1000FC254(v21, type metadata accessor for MessageData.BodyData);
      return (*(v26 + 56))(v27, 0, 1, v25);
    }

    sub_100025F40(v21, &qword_1005CE218, &unk_1004F3FD0);
  }

LABEL_8:
  v23 = sub_1004A5384();
  return (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
}

uint64_t sub_1000FC0A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FC114(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D05E8, &unk_1004D4000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FC184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000FC1EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000FC254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000FC2B4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a3;
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  sub_10000E268(a2, v6, &unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
    v20 = 1;
  }

  else
  {
    sub_100025FDC(v6, v16, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v16, v9, &qword_1005CD1D0, &unk_1004CF2C0);
    v20 = 0;
  }

  (*(v11 + 56))(v9, v20, 1, v10);
  v21 = (*(v11 + 48))(v9, 1, v10);
  v22 = v28;
  if (v21 == 1)
  {
    sub_100025F40(a2, &unk_1005D91B0, &unk_1004CF400);
    v23 = v27;
    v31 = *v27;
    sub_1000D69D0(&v31);
    v29 = *(v23 + 3);
    v30 = *(v23 + 8);
    sub_10009DA94(&v29);
    sub_100025F40(v9, &qword_1005CD518, &qword_1004CF2F0);
    v24 = 1;
  }

  else
  {
    sub_100025FDC(v9, v19, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10000E268(v19, v13, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_1000FC674(v27, v13, v22);
    sub_100025F40(a2, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v19, &qword_1005CD1D0, &unk_1004CF2C0);
    v24 = 0;
  }

  v25 = type metadata accessor for NotifyMessagesVanished(0);
  return (*(*(v25 - 8) + 56))(v22, v24, 1, v25);
}

Swift::Int sub_1000FC64C()
{
  result = sub_100093190(&off_1005990A8);
  qword_1005DDF68 = result;
  return result;
}

uint64_t sub_1000FC674@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NotifyMessagesVanished(0);
  v7 = (a3 + v6[7]);
  *v7 = 0xD000000000000016;
  v7[1] = 0x80000001004D3FF0;
  *(a3 + v6[9]) = _swiftEmptySetSingleton;
  *(a3 + v6[10]) = 1;
  v8 = a1[1];
  v17 = *a1;
  v15 = *(a1 + 3);
  v16 = *(a1 + 8);
  LODWORD(v7) = v16;
  *a3 = v17;
  *(a3 + 16) = v8;
  *(a3 + 32) = v7;
  sub_10000E268(a2, a3 + v6[6], &qword_1005CD1D0, &unk_1004CF2C0);
  v13 = *(a1 + 3);
  v14 = *(a1 + 8);
  *(a3 + 40) = v6;

  sub_1000F72C8(&v15, &v11);
  sub_1000F7324(&v17, &v11);
  sub_100026044();
  sub_1004A6674();
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004CEAA0;
  v11 = v15;
  v12 = v16;
  *(v9 + 32) = &type metadata for MoveAndCopyMessages;

  sub_1004A6674();
  sub_1000D69D0(&v17);
  sub_10009DA94(&v15);
  result = sub_100025F40(a2, &qword_1005CD1D0, &unk_1004CF2C0);
  *(a3 + v6[8]) = v9;
  return result;
}

uint64_t sub_1000FC844(uint64_t a1)
{
  v83 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v83);
  v86 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v88 = &v82 - v5;
  __chkstk_darwin(v6);
  v85 = &v82 - v7;
  __chkstk_darwin(v8);
  v87 = &v82 - v9;
  v10 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v10 - 8);
  v82 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v82 - v13;
  v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v15 - 8);
  v90 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v82 - v18;
  __chkstk_darwin(v20);
  v89 = &v82 - v21;
  __chkstk_darwin(v22);
  v24 = &v82 - v23;
  __chkstk_darwin(v25);
  v27 = &v82 - v26;
  v28 = type metadata accessor for NotifyMessagesVanished(0);
  sub_10000E268(v1 + *(v28 + 24), v27, &qword_1005CD1D0, &unk_1004CF2C0);
  v84 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.ranges.getter(v14);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v29 = sub_1004A7044();
  v30 = sub_1004A7074();
  v31 = sub_1004A7044();
  result = sub_1004A7074();
  if (v29 < v31 || result < v29)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = sub_1004A7044();
  v34 = sub_1004A7074();
  result = sub_100025F40(v14, &qword_1005CD7A0, &unk_1004CF590);
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
    v35 = v87;
    sub_1000118A4(a1, v87);
    v36 = v85;
    sub_1000118A4(a1, v85);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_10000E268(v27, v24, &qword_1005CD1D0, &unk_1004CF2C0);
    v37 = v89;
    sub_10000E268(v27, v89, &qword_1005CD1D0, &unk_1004CF2C0);
    v38 = sub_1004A4A54();
    v39 = sub_1004A6034();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v93 = v90;
      *v40 = 68159747;
      *(v40 + 4) = 2;
      *(v40 + 8) = 256;
      v41 = v83;
      v42 = v36 + *(v83 + 20);
      *(v40 + 10) = *v42;
      *(v40 + 11) = 2082;
      v43 = v35 + *(v41 + 20);
      *(v40 + 13) = sub_10015BA6C(*(v43 + 8), *(v43 + 16), &v93);
      *(v40 + 21) = 1040;
      *(v40 + 23) = 2;
      *(v40 + 27) = 512;
      v44 = *(v42 + 24);
      sub_100011908(v36);
      *(v40 + 29) = v44;
      *(v40 + 31) = 2160;
      *(v40 + 33) = 0x786F626C69616DLL;
      *(v40 + 41) = 2085;
      v45 = *(v43 + 32);
      LODWORD(v42) = *(v43 + 40);

      sub_100011908(v35);
      v91 = v45;
      v92 = v42;
      v46 = sub_1004A5824();
      v48 = sub_10015BA6C(v46, v47, &v93);

      *(v40 + 43) = v48;
      *(v40 + 51) = 2048;
      v49 = MessageIdentifierSet.count.getter();
      sub_100025F40(v24, &qword_1005CD1D0, &unk_1004CF2C0);
      *(v40 + 53) = v49;
      *(v40 + 61) = 2082;
      v50 = v89;
      v51 = MessageIdentifierSet.debugDescription.getter();
      v53 = v52;
      sub_100025F40(v50, &qword_1005CD1D0, &unk_1004CF2C0);
      v54 = sub_10015BA6C(v51, v53, &v93);

      *(v40 + 63) = v54;
      _os_log_impl(&_mh_execute_header, v38, v39, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID(s) vanished: %{public}s", v40, 0x47u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100025F40(v24, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100011908(v36);

      sub_100025F40(v37, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100011908(v35);
    }

    v55 = v27;
    return sub_100025F40(v55, &qword_1005CD1D0, &unk_1004CF2C0);
  }

  v56 = v88;
  sub_1000118A4(a1, v88);
  v57 = v86;
  sub_1000118A4(a1, v86);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10000E268(v27, v19, &qword_1005CD1D0, &unk_1004CF2C0);
  v58 = v90;
  sub_10000E268(v27, v90, &qword_1005CD1D0, &unk_1004CF2C0);
  v59 = sub_1004A4A54();
  v60 = sub_1004A6034();
  if (!os_log_type_enabled(v59, v60))
  {
    sub_100025F40(v19, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100011908(v57);

    sub_100025F40(v58, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100011908(v56);
    v55 = v27;
    return sub_100025F40(v55, &qword_1005CD1D0, &unk_1004CF2C0);
  }

  v61 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  v93 = v89;
  *v61 = 68159747;
  *(v61 + 4) = 2;
  *(v61 + 8) = 256;
  v62 = v83;
  v63 = v57 + *(v83 + 20);
  *(v61 + 10) = *v63;
  *(v61 + 11) = 2082;
  v64 = v56;
  v65 = v56 + *(v62 + 20);
  *(v61 + 13) = sub_10015BA6C(*(v65 + 8), *(v65 + 16), &v93);
  *(v61 + 21) = 1040;
  *(v61 + 23) = 2;
  *(v61 + 27) = 512;
  v66 = *(v63 + 24);
  sub_100011908(v57);
  *(v61 + 29) = v66;
  *(v61 + 31) = 2160;
  *(v61 + 33) = 0x786F626C69616DLL;
  *(v61 + 41) = 2085;
  v67 = *(v65 + 32);
  LODWORD(v63) = *(v65 + 40);
  v68 = v90;

  sub_100011908(v64);
  v91 = v67;
  v92 = v63;
  v69 = sub_1004A5824();
  v71 = sub_10015BA6C(v69, v70, &v93);

  *(v61 + 43) = v71;
  *(v61 + 51) = 2048;
  v72 = MessageIdentifierSet.count.getter();
  sub_100025F40(v19, &qword_1005CD1D0, &unk_1004CF2C0);
  *(v61 + 53) = v72;
  *(v61 + 61) = 2082;
  result = sub_1000E5314();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_22;
  }

  v73 = result;
  v74 = v82;
  MessageIdentifierSet.ranges.getter(v82);
  v75 = sub_1000E4C0C();
  v77 = v76;
  result = sub_100025F40(v74, &qword_1005CD7A0, &unk_1004CF590);
  if ((v77 & 1) == 0)
  {
    if (HIDWORD(v75) >= v73)
    {
      v91 = __PAIR64__(HIDWORD(v75), v73);
      sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
      v78 = MessageIdentifierRange.debugDescription.getter();
      v80 = v79;
      sub_100025F40(v68, &qword_1005CD1D0, &unk_1004CF2C0);
      v81 = sub_10015BA6C(v78, v80, &v93);

      *(v61 + 63) = v81;
      _os_log_impl(&_mh_execute_header, v59, v60, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID(s) vanished in range %{public}s.", v61, 0x47u);
      swift_arrayDestroy();

      v55 = v27;
      return sub_100025F40(v55, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000FD200(uint64_t a1, uint64_t a2, char *a3)
{
  v117 = a3;
  v120 = a2;
  v114 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v114);
  v111 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v113 = &v107 - v6;
  __chkstk_darwin(v7);
  v110 = &v107 - v8;
  __chkstk_darwin(v9);
  v112 = &v107 - v10;
  v11 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v11 - 8);
  v108 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v118 = &v107 - v14;
  v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v15);
  v17 = &v107 - v16;
  v18 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v107 - v19;
  v21 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v115 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v121 = &v107 - v25;
  __chkstk_darwin(v26);
  v116 = &v107 - v27;
  __chkstk_darwin(v28);
  v109 = &v107 - v29;
  __chkstk_darwin(v30);
  v32 = &v107 - v31;
  __chkstk_darwin(v33);
  v119 = &v107 - v34;
  __chkstk_darwin(v35);
  v37 = &v107 - v36;
  v38 = type metadata accessor for NotifyMessagesVanished(0);
  sub_10000E268(v120 + *(v38 + 24), v37, &qword_1005CD1D0, &unk_1004CF2C0);
  v39 = a1 + *(type metadata accessor for MailboxSyncState(0) + 48);
  v40 = *(type metadata accessor for PendingServerResponses(0) + 24);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A70F4();
  sub_100025F40(v37, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v39 + v40, v17, &unk_1005D91B0, &unk_1004CF400);
  v120 = v15;
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
    v41 = 1;
  }

  else
  {
    sub_100025FDC(v17, v32, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v32, v20, &qword_1005CD1D0, &unk_1004CF2C0);
    v41 = 0;
  }

  (*(v22 + 56))(v20, v41, 1, v21);
  v42 = (*(v22 + 48))(v20, 1, v21);
  v43 = v121;
  if (v42 == 1)
  {
    v44 = &qword_1005CD518;
    v45 = &qword_1004CF2F0;
    v46 = v20;
    return sub_100025F40(v46, v44, v45);
  }

  v47 = v20;
  v48 = v119;
  sub_100025FDC(v47, v119, &qword_1005CD1D0, &unk_1004CF2C0);
  v49 = v118;
  MessageIdentifierSet.ranges.getter(v118);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v50 = sub_1004A7044();
  v51 = sub_1004A7074();
  v52 = sub_1004A7044();
  result = sub_1004A7074();
  if (v50 < v52 || result < v50)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v54 = sub_1004A7044();
  v55 = sub_1004A7074();
  result = sub_100025F40(v49, &qword_1005CD7A0, &unk_1004CF590);
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
    v56 = v117;
    v57 = v112;
    sub_1000118A4(v117, v112);
    v58 = v110;
    sub_1000118A4(v56, v110);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v59 = v109;
    sub_10000E268(v48, v109, &qword_1005CD1D0, &unk_1004CF2C0);
    v60 = v116;
    sub_10000E268(v48, v116, &qword_1005CD1D0, &unk_1004CF2C0);
    v61 = sub_1004A4A54();
    v62 = sub_1004A6034();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      LODWORD(v118) = v62;
      v64 = v63;
      v121 = swift_slowAlloc();
      v124 = v121;
      *v64 = 68159747;
      *(v64 + 4) = 2;
      *(v64 + 8) = 256;
      v65 = v114;
      v66 = v59;
      v67 = v57;
      v68 = v58 + *(v114 + 20);
      *(v64 + 10) = *v68;
      *(v64 + 11) = 2082;
      v69 = v67 + *(v65 + 20);
      *(v64 + 13) = sub_10015BA6C(*(v69 + 8), *(v69 + 16), &v124);
      *(v64 + 21) = 1040;
      *(v64 + 23) = 2;
      *(v64 + 27) = 512;
      v70 = *(v68 + 24);
      sub_100011908(v58);
      *(v64 + 29) = v70;
      *(v64 + 31) = 2160;
      *(v64 + 33) = 0x786F626C69616DLL;
      *(v64 + 41) = 2085;
      v71 = *(v69 + 32);
      LODWORD(v68) = *(v69 + 40);

      sub_100011908(v67);
      v122 = v71;
      v123 = v68;
      v72 = sub_1004A5824();
      v74 = sub_10015BA6C(v72, v73, &v124);

      *(v64 + 43) = v74;
      *(v64 + 51) = 2048;
      v75 = MessageIdentifierSet.count.getter();
      sub_100025F40(v66, &qword_1005CD1D0, &unk_1004CF2C0);
      *(v64 + 53) = v75;
      *(v64 + 61) = 2082;
      v76 = v116;
      v77 = MessageIdentifierSet.debugDescription.getter();
      v79 = v78;
      sub_100025F40(v76, &qword_1005CD1D0, &unk_1004CF2C0);
      v80 = sub_10015BA6C(v77, v79, &v124);

      *(v64 + 63) = v80;
      _os_log_impl(&_mh_execute_header, v61, v118, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Done. Still %ld vanished UID(s) remaining: %{public}s", v64, 0x47u);
      swift_arrayDestroy();

      v46 = v48;
      v44 = &qword_1005CD1D0;
      v45 = &unk_1004CF2C0;
      return sub_100025F40(v46, v44, v45);
    }

    sub_100025F40(v59, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100011908(v58);

    sub_100025F40(v60, &qword_1005CD1D0, &unk_1004CF2C0);
    v106 = v57;
    goto LABEL_21;
  }

  v81 = v117;
  v82 = v113;
  sub_1000118A4(v117, v113);
  v83 = v111;
  sub_1000118A4(v81, v111);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10000E268(v48, v43, &qword_1005CD1D0, &unk_1004CF2C0);
  v84 = v115;
  sub_10000E268(v48, v115, &qword_1005CD1D0, &unk_1004CF2C0);
  v85 = sub_1004A4A54();
  v86 = sub_1004A6034();
  if (!os_log_type_enabled(v85, v86))
  {
    sub_100025F40(v43, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100011908(v83);

    sub_100025F40(v84, &qword_1005CD1D0, &unk_1004CF2C0);
    v106 = v82;
LABEL_21:
    sub_100011908(v106);
    goto LABEL_22;
  }

  LODWORD(v118) = v86;
  v87 = swift_slowAlloc();
  v117 = swift_slowAlloc();
  v124 = v117;
  *v87 = 68159747;
  *(v87 + 4) = 2;
  *(v87 + 8) = 256;
  v88 = v114;
  v89 = v83 + *(v114 + 20);
  *(v87 + 10) = *v89;
  *(v87 + 11) = 2082;
  v90 = v82 + *(v88 + 20);
  *(v87 + 13) = sub_10015BA6C(*(v90 + 8), *(v90 + 16), &v124);
  *(v87 + 21) = 1040;
  *(v87 + 23) = 2;
  *(v87 + 27) = 512;
  v91 = *(v89 + 24);
  sub_100011908(v83);
  *(v87 + 29) = v91;
  *(v87 + 31) = 2160;
  *(v87 + 33) = 0x786F626C69616DLL;
  *(v87 + 41) = 2085;
  v92 = *(v90 + 32);
  LODWORD(v89) = *(v90 + 40);

  sub_100011908(v82);
  v122 = v92;
  v123 = v89;
  v93 = sub_1004A5824();
  v95 = sub_10015BA6C(v93, v94, &v124);

  *(v87 + 43) = v95;
  *(v87 + 51) = 2048;
  v96 = MessageIdentifierSet.count.getter();
  sub_100025F40(v43, &qword_1005CD1D0, &unk_1004CF2C0);
  *(v87 + 53) = v96;
  *(v87 + 61) = 2082;
  result = sub_1000E5314();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_28;
  }

  v97 = result;
  v98 = v108;
  MessageIdentifierSet.ranges.getter(v108);
  v99 = sub_1000E4C0C();
  v101 = v100;
  result = sub_100025F40(v98, &qword_1005CD7A0, &unk_1004CF590);
  if ((v101 & 1) == 0)
  {
    if (HIDWORD(v99) >= v97)
    {
      v122 = __PAIR64__(HIDWORD(v99), v97);
      sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
      v102 = MessageIdentifierRange.debugDescription.getter();
      v104 = v103;
      sub_100025F40(v115, &qword_1005CD1D0, &unk_1004CF2C0);
      v105 = sub_10015BA6C(v102, v104, &v124);

      *(v87 + 63) = v105;
      _os_log_impl(&_mh_execute_header, v85, v118, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Done. Still %ld vanished UID(s) remaining in range %{public}s.", v87, 0x47u);
      swift_arrayDestroy();

LABEL_22:
      v46 = v48;
      v44 = &qword_1005CD1D0;
      v45 = &unk_1004CF2C0;
      return sub_100025F40(v46, v44, v45);
    }

    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

double sub_1000FDE5C()
{
  if (qword_1005CCE70 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t type metadata accessor for NotifyMessagesVanished(uint64_t a1)
{
  result = qword_1005D0648;
  if (!qword_1005D0648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FDF20(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (sub_10002078C(a1, a2))
  {
    v7 = 0xF000000000000007;
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0);
    v9 = swift_allocBox();
    v10 = *(v8 + 48);
    v11 = v4[1];
    *v12 = *v4;
    v12[1] = v11;
    sub_10000E268(v4 + *(a3 + 24), v12 + v10, &qword_1005CD1D0, &unk_1004CF2C0);
    v7 = v9 | 0x3000000000000000;
  }

  *a4 = v7;
}

uint64_t sub_1000FDFC8(uint64_t result)
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

    sub_1000BE940(&v9, v2, v3, 0, sub_1000FE50C);
    result = sub_100020D58(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

uint64_t sub_1000FE080(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_1000FE0CC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000FE19C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000FE24C(uint64_t a1)
{
  sub_1000FE3D0(319, &qword_1005CE2B8, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v1 <= 0x3F)
  {
    sub_1000FE380();
    if (v2 <= 0x3F)
    {
      sub_1000FE3D0(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep, &type metadata accessor for Set);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000FE380()
{
  if (!qword_1005D0658)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D0658);
    }
  }
}

void sub_1000FE3D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1000FE438()
{
  result = qword_1005D06A0;
  if (!qword_1005D06A0)
  {
    result = swift_getWitnessTable(byte_1004D4074, &type metadata for NotifyMessagesVanished.ActionID, v0, v1);
    atomic_store(result, &qword_1005D06A0);
  }

  return result;
}

unint64_t sub_1000FE48C(uint64_t a1)
{
  result = sub_1000FE4B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000FE4B4()
{
  result = qword_1005D0758;
  if (!qword_1005D0758)
  {
    v3 = type metadata accessor for NotifyMessagesVanished(255);
    result = swift_getWitnessTable("y-\v", v3, v0, v1);
    atomic_store(result, &qword_1005D0758);
  }

  return result;
}

void sub_1000FE52C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 184);
  v4 = *(a1 + 216);
  v37 = *(a1 + 200);
  v38[0] = v4;
  *(v38 + 12) = *(a1 + 228);
  v35 = *(a1 + 168);
  v36 = v3;
  sub_1000B7A20();
  v6 = v5;
  v28 = a1;
  v7 = *(a1 + 64);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;

  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  v30 = v6;
  v31 = v7;
  while (1)
  {
    v16 = v14;
    if (!v11)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = *(*(v7 + 48) + ((v14 << 8) | (4 * v17)));
    if (*(v6 + 16) && (sub_1004A6E94(), sub_1004A6EE4(v18), v19 = sub_1004A6F14(), v20 = -1 << *(v6 + 32), v21 = v19 & ~v20, ((*(v13 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
    {
      v22 = ~v20;
      while (*(*(v6 + 48) + 4 * v21) != v18)
      {
        v21 = (v21 + 1) & v22;
        if (((*(v13 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v34 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000920E8(0, v15[2] + 1, 1);
        v15 = v34;
      }

      v24 = v15[2];
      v23 = v15[3];
      if (v24 >= v23 >> 1)
      {
        sub_1000920E8((v23 > 1), v24 + 1, 1);
        v15 = v34;
      }

      v15[2] = v24 + 1;
      *(v15 + v24 + 8) = v18;
      v6 = v30;
      v7 = v31;
    }
  }

  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v16;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  sub_1000FF070(v28);

  v25 = sub_1000CE718(v15);

  sub_1000FE7B0(v25, v32);
  if (*&v32[0])
  {
    v26 = v32[3];
    *(a2 + 32) = v32[2];
    *(a2 + 48) = v26;
    *(a2 + 64) = v33;
    v27 = v32[1];
    *a2 = v32[0];
    *(a2 + 16) = v27;
  }

  else
  {
    sub_1000FF0C4(v32);
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

double sub_1000FE7B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = &type metadata for NotifySyncRequestCompletion;
  sub_1004A6674();
  v5[6] = 0xD00000000000001BLL;
  v5[7] = 0x80000001004D4100;
  if (*(a1 + 16))
  {
    v5[8] = a1;
    sub_1000FF12C(v5, a2);
    sub_1000FF164(v5);
  }

  else
  {

    sub_100014BEC(v5);
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_1000FE870(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v25[-v8 - 8];
  sub_1000D696C(a1, &v25[-v8 - 8]);
  sub_1000D696C(a1, v6);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000FF12C(v2, v27);
  sub_1000FF12C(v2, v25);
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 68158722;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v13 = *&v6[*(v4 + 20)];
    sub_1000FF274(v6);
    *(v12 + 10) = v13;
    *(v12 + 11) = 2082;
    v14 = &v9[*(v4 + 20)];
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    sub_100018BD0(*v14, v15, v16, v17, v14[4]);
    sub_1000FF274(v9);
    if (v17 < 0)
    {
    }

    v18 = sub_10015BA6C(v15, v16, &v24);

    *(v12 + 13) = v18;
    *(v12 + 21) = 2048;
    v19 = *(v28 + 16);
    sub_1000FF164(v27);
    *(v12 + 23) = v19;
    *(v12 + 31) = 2082;
    v20 = sub_100134BF8(v26);
    v22 = v21;
    sub_1000FF164(v25);
    v23 = sub_10015BA6C(v20, v22, &v24);

    *(v12 + 33) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] Created task to notify that %ld sync requests completed: %{public}s.", v12, 0x29u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000FF164(v27);
    sub_1000FF274(v6);

    sub_1000FF274(v9);
    sub_1000FF164(v25);
  }
}

void sub_1000FEB20(uint64_t a1, uint64_t a2)
{
  v54 = type metadata accessor for Task.Logger(0);
  __chkstk_darwin(v54);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
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
  v64 = *(v2 + 64);

  v18 = 0;
  *&v19 = 68158978;
  v52 = v19;
  v55 = a2;
  v58 = a1;
  v59 = v9;
  v53 = v6;
  while (v16)
  {
LABEL_10:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = *(*(v64 + 48) + ((v18 << 8) | (4 * v21)));
    v23 = sub_100067004();
    if (v24)
    {
      v62 = v22;
      v25 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(a1 + 64);
      v65 = v27;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10013A7B4();
        v27 = v65;
      }

      v28 = v25;
      v29 = (*(v27 + 56) + 32 * v25);
      v30 = *v29;
      v63 = *(v29 + 1);
      v31 = *(v29 + 3);
      sub_10013D3A0(v28, v27);
      *(a1 + 64) = v27;
      v32 = static MonotonicTime.now()();
      v33 = v32 - v31;
      if (v32 >= v31)
      {
        v34 = v59;
        if (__OFSUB__(v32, v31))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v34 = v59;
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

      v61 = v30;
      sub_1000D696C(a2, v34);
      sub_1000D696C(a2, v6);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v36 = sub_1004A4A54();
      v37 = sub_1004A6034();

      v60 = v37;
      if (os_log_type_enabled(v36, v37))
      {
        v57 = v36;
        v38 = v6;
        v39 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v65 = v56;
        *v39 = v52;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        v40 = v54;
        v41 = v34;
        v42 = *(v38 + *(v54 + 20));
        sub_1000FF274(v38);
        *(v39 + 10) = v42;
        *(v39 + 11) = 2082;
        v43 = (v41 + *(v40 + 20));
        v44 = v43[1];
        v46 = v43[2];
        v45 = v43[3];
        sub_100018BD0(*v43, v44, v46, v45, v43[4]);
        sub_1000FF274(v41);
        if (v45 < 0)
        {
        }

        v47 = sub_10015BA6C(v44, v46, &v65);

        *(v39 + 13) = v47;
        *(v39 + 21) = 1024;
        *(v39 + 23) = v62;
        *(v39 + 27) = 2082;

        v48 = v57;
        a1 = v58;
        v49 = sub_1004A6754();
        v51 = sub_10015BA6C(v49, v50, &v65);

        *(v39 + 29) = v51;
        *(v39 + 37) = 2048;
        *(v39 + 39) = v35;
        _os_log_impl(&_mh_execute_header, v48, v60, "[%.*hhx-%{public}s] Sync request #%u (%{public}s) completed after %ld seconds.", v39, 0x2Fu);
        swift_arrayDestroy();

        a2 = v55;
        v6 = v53;
      }

      else
      {
        sub_1000FF274(v6);

        sub_1000FF274(v34);
        a1 = v58;
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

void sub_1000FF008(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  if (sub_10001E3D8(a1, a2))
  {
    v5 = 0xF000000000000007;
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = *(v3 + 64);
    v5 = v6 | 2;
  }

  *a3 = v5;
}

uint64_t sub_1000FF0C4(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D0760, &unk_1004D4110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000FF1A4()
{
  result = qword_1005D0768;
  if (!qword_1005D0768)
  {
    result = swift_getWitnessTable(byte_1004D41B4, &type metadata for NotifySyncRequestCompletion.ActionID, v0, v1);
    atomic_store(result, &qword_1005D0768);
  }

  return result;
}

unint64_t sub_1000FF1F8(uint64_t a1)
{
  result = sub_1000FF220();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000FF220()
{
  result = qword_1005D07E8;
  if (!qword_1005D07E8)
  {
    result = swift_getWitnessTable("9,\v", &type metadata for NotifySyncRequestCompletion, v0, v1);
    atomic_store(result, &qword_1005D07E8);
  }

  return result;
}

uint64_t sub_1000FF274(uint64_t a1)
{
  v2 = type metadata accessor for Task.Logger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FF2D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FF334(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
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
    v10 = type metadata accessor for MessagesPendingDownloadPerPass(0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 28)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 32)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_1000FF478(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for MessagesPendingDownloadPerPass(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 28)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 32)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for PendingPersistenceUpdates(uint64_t a1)
{
  result = qword_1005D0848;
  if (!qword_1005D0848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FF5F0(uint64_t a1)
{
  type metadata accessor for MessagesPendingDownloadPerPass(319);
  if (v1 <= 0x3F)
  {
    sub_100050DB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_1000FF68C()
{
  v5 = _swiftEmptySetSingleton;
  if (*v0 == 1)
  {
    sub_100088568(&v2, 6);
  }

  if (v0[1] == 1)
  {
    sub_100088568(&v3, 7);
  }

  if (v0[2] == 1)
  {
    sub_100088568(&v4, 8);
  }

  return v5;
}

uint64_t sub_1000FF71C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v4 = *(type metadata accessor for PendingPersistenceUpdates(0) + 28);
  v5 = &a1[v4];
  v6 = &a2[v4];
  if ((sub_1001145B4(*&a1[v4], *&a2[v4]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MessagesPendingDownload(0);
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  if ((sub_1001145B4(*&v5[*(v7 + 20)], *&v6[*(v7 + 20)]) & 1) == 0 || (sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  return sub_1004A7034();
}

uint64_t sub_1000FF880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000FF950(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PendingServerResponses(uint64_t a1)
{
  result = qword_1005D08E8;
  if (!qword_1005D08E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FFA4C(uint64_t a1)
{
  sub_1000FFAD8();
  if (v1 <= 0x3F)
  {
    sub_100050DB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000FFAD8()
{
  result = qword_1005D08F8;
  if (!qword_1005D08F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1005D08F8);
  }

  return result;
}

uint64_t sub_1000FFB58(uint64_t result)
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
          v7 = _swiftEmptyArrayStorage;
        }

        else
        {
          v7 = (v4 - result);
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
        result = sub_10002A758(*v1, 0);
        v6 = 0;
        v7 = _swiftEmptyArrayStorage;
LABEL_16:
        *v1 = v7;
        *(v1 + 8) = v6;
        return result;
      }

      v2 = result;
      sub_1004A6DA4();
      swift_unknownObjectRetain_n();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {
        swift_unknownObjectRelease();
        v9 = _swiftEmptyArrayStorage;
      }

      v10 = v9[2];

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

        v7 = _swiftEmptyArrayStorage;
LABEL_14:
        result = swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    swift_unknownObjectRelease();
    sub_1000B13B4(v4, v4 + 32, v2, (2 * v3) | 1);
    v7 = v11;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1000FFC98(uint64_t result, uint64_t a2)
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

uint64_t sub_1000FFCF4(uint64_t a1, uint64_t a2)
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
        sub_1000C9E18(v6, *v3);
        sub_1000C9E18(v9, v10);
        v11 = static SearchRequest.__derived_struct_equals(_:_:)(v7, v6, v5, v8, v9, v10);
        sub_1000C9EF0(v9, v10);
        sub_1000C9EF0(v6, v5);
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

uint64_t sub_1000FFDEC(uint64_t a1, uint64_t a2)
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
        sub_100104FE8(v11, v10);
        sub_100104FE8(v13, v10);
        v8 = static DownloadRequest.__derived_struct_equals(_:_:)(v11, v13);
        sub_100105044(v13);
        sub_100105044(v11);
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

BOOL sub_1000FFEE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[9];
        v18[8] = v3[8];
        v18[9] = v5;
        v18[10] = v3[10];
        v6 = v3[5];
        v18[4] = v3[4];
        v18[5] = v6;
        v7 = v3[7];
        v18[6] = v3[6];
        v18[7] = v7;
        v8 = v3[1];
        v18[0] = *v3;
        v18[1] = v8;
        v9 = v3[3];
        v18[2] = v3[2];
        v18[3] = v9;
        v10 = v4[9];
        v19[8] = v4[8];
        v19[9] = v10;
        v19[10] = v4[10];
        v11 = v4[5];
        v19[4] = v4[4];
        v19[5] = v11;
        v12 = v4[7];
        v19[6] = v4[6];
        v19[7] = v12;
        v13 = v4[1];
        v19[0] = *v4;
        v19[1] = v13;
        v14 = v4[3];
        v19[2] = v4[2];
        v19[3] = v14;
        sub_10000E08C(v18, v17);
        sub_10000E08C(v19, v17);
        v15 = sub_10009D400(v18, v19);
        sub_10000E0E8(v19);
        sub_10000E0E8(v18);
        if (!v15)
        {
          break;
        }

        v3 += 11;
        v4 += 11;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v15;
}

uint64_t sub_100100010(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v89 = a2 + 32;
  v86 = a1 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_161;
    }

    v5 = v4 + 48 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v10 = *(v5 + 24);
    v9 = *(v5 + 32);
    v11 = *(v5 + 40);
    v12 = v89 + 48 * v3;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v17 = *(v12 + 24);
    v16 = *(v12 + 32);
    v18 = *(v12 + 40);
    v19 = v6 >> 62;
    v20 = v13 >> 62;
    v96 = v14;
    v90 = v18;
    v91 = v11;
    v92 = v16;
    v93 = v9;
    v94 = v15;
    v95 = v8;
    if (v6 >> 62 == 3)
    {
      if (v7)
      {
        v21 = 0;
      }

      else
      {
        v21 = v6 == 0xC000000000000000;
      }

      if (v21 && v13 >> 62 == 3 && !v14 && v13 == 0xC000000000000000)
      {
        sub_100014CEC(0, 0xC000000000000000);

        v24 = 0;
        v25 = 0xC000000000000000;
        goto LABEL_50;
      }

LABEL_30:
      v26 = 0;
      if (v20 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_30;
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_164;
      }

      if (v20 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v19)
    {
      LODWORD(v26) = HIDWORD(v7) - v7;
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_165;
      }

      v26 = v26;
      if (v20 <= 1)
      {
LABEL_28:
        if (v20)
        {
          LODWORD(v30) = HIDWORD(v14) - v14;
          if (__OFSUB__(HIDWORD(v14), v14))
          {
            goto LABEL_162;
          }

          v30 = v30;
        }

        else
        {
          v30 = BYTE6(v13);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v26 = BYTE6(v6);
      if (v20 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    if (v20 != 2)
    {
      if (v26)
      {
        return 0;
      }

LABEL_49:
      sub_100014CEC(v7, v6);

      v24 = v14;
      v25 = v13;
LABEL_50:
      sub_100014CEC(v24, v25);

      goto LABEL_142;
    }

    v32 = *(v14 + 16);
    v31 = *(v14 + 24);
    v29 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v29)
    {
      goto LABEL_163;
    }

LABEL_37:
    if (v26 != v30)
    {
      return 0;
    }

    if (v26 < 1)
    {
      goto LABEL_49;
    }

    v87 = v6;
    if (v19 <= 1)
    {
      if (!v19)
      {
        __s1[0] = v7;
        LOWORD(__s1[1]) = v6;
        BYTE2(__s1[1]) = BYTE2(v6);
        BYTE3(__s1[1]) = BYTE3(v6);
        BYTE4(__s1[1]) = BYTE4(v6);
        BYTE5(__s1[1]) = BYTE5(v6);
        if (v20)
        {
          if (v20 == 1)
          {
            v33 = v14;
            v88 = (v14 >> 32) - v14;
            if (v14 >> 32 < v14)
            {
              goto LABEL_169;
            }

            sub_100014CEC(v7, v6);

            sub_100014CEC(v14, v13);

            v34 = sub_1004A40D4();
            if (!v34)
            {
              goto LABEL_196;
            }

            v35 = v34;
            v36 = sub_1004A4104();
            if (__OFSUB__(v33, v36))
            {
              goto LABEL_174;
            }

            v37 = (v33 - v36 + v35);
            result = sub_1004A40F4();
            if (!v37)
            {
              goto LABEL_195;
            }

LABEL_110:
            if (result >= v88)
            {
              v66 = v88;
            }

            else
            {
              v66 = result;
            }

            v61 = memcmp(__s1, v37, v66);
            goto LABEL_114;
          }

          v58 = *(v14 + 16);
          v85 = *(v14 + 24);
          sub_100014CEC(v7, v6);

          sub_100014CEC(v14, v13);

          v46 = sub_1004A40D4();
          if (v46)
          {
            v59 = sub_1004A4104();
            if (__OFSUB__(v58, v59))
            {
              goto LABEL_179;
            }

            v46 += v58 - v59;
          }

          v48 = v85 - v58;
          if (__OFSUB__(v85, v58))
          {
            goto LABEL_172;
          }

          result = sub_1004A40F4();
          if (!v46)
          {
            goto LABEL_194;
          }

          goto LABEL_102;
        }

LABEL_70:
        v97 = v14;
        v98 = v13;
        v99 = BYTE2(v13);
        v100 = BYTE3(v13);
        v101 = BYTE4(v13);
        v102 = BYTE5(v13);
        sub_100014CEC(v7, v6);

        sub_100014CEC(v14, v13);

        v49 = __s1;
        v50 = &v97;
        v51 = BYTE6(v13);
        v4 = v86;
        goto LABEL_141;
      }

      if (v7 > v7 >> 32)
      {
        goto LABEL_166;
      }

      sub_100014CEC(v7, v6);

      sub_100014CEC(v14, v13);

      v42 = sub_1004A40D4();
      if (v42)
      {
        v43 = v42;
        v44 = sub_1004A4104();
        if (__OFSUB__(v7, v44))
        {
          goto LABEL_168;
        }

        v81 = (v7 - v44 + v43);
      }

      else
      {
        v81 = 0;
      }

      sub_1004A40F4();
      if (v20 == 2)
      {
        v72 = *(v96 + 16);
        v73 = *(v96 + 24);
        v52 = sub_1004A40D4();
        if (v52)
        {
          v74 = sub_1004A4104();
          if (__OFSUB__(v72, v74))
          {
            goto LABEL_182;
          }

          v52 += v72 - v74;
        }

        v29 = __OFSUB__(v73, v72);
        v75 = v73 - v72;
        if (v29)
        {
          goto LABEL_178;
        }

        v76 = sub_1004A40F4();
        if (v76 >= v75)
        {
          v55 = v75;
        }

        else
        {
          v55 = v76;
        }

        v49 = v81;
        if (!v81)
        {
          goto LABEL_193;
        }

        v4 = v86;
        v6 = v87;
        if (!v52)
        {
          goto LABEL_192;
        }

        goto LABEL_137;
      }

      if (v20 == 1)
      {
        if (v96 >> 32 < v96)
        {
          goto LABEL_177;
        }

        v52 = sub_1004A40D4();
        if (v52)
        {
          v56 = sub_1004A4104();
          if (__OFSUB__(v96, v56))
          {
            goto LABEL_184;
          }

          v52 += v96 - v56;
        }

        v57 = sub_1004A40F4();
        if (v57 >= (v96 >> 32) - v96)
        {
          v55 = (v96 >> 32) - v96;
        }

        else
        {
          v55 = v57;
        }

        v49 = v81;
        if (!v81)
        {
          goto LABEL_191;
        }

        v4 = v86;
        if (!v52)
        {
          goto LABEL_190;
        }

        goto LABEL_137;
      }

      v4 = v86;
      v49 = v81;
      __s1[0] = v96;
      LOWORD(__s1[1]) = v13;
      BYTE2(__s1[1]) = BYTE2(v13);
      BYTE3(__s1[1]) = BYTE3(v13);
      BYTE4(__s1[1]) = BYTE4(v13);
      BYTE5(__s1[1]) = BYTE5(v13);
      if (!v81)
      {
        goto LABEL_189;
      }

      goto LABEL_140;
    }

    if (v19 != 2)
    {
      memset(__s1, 0, 14);
      if (v20)
      {
        if (v20 != 2)
        {
          v62 = v14;
          v88 = (v14 >> 32) - v14;
          if (v14 >> 32 < v14)
          {
            goto LABEL_170;
          }

          sub_100014CEC(v7, v6);

          sub_100014CEC(v14, v13);

          v63 = sub_1004A40D4();
          if (!v63)
          {
            goto LABEL_197;
          }

          v64 = v63;
          v65 = sub_1004A4104();
          if (__OFSUB__(v62, v65))
          {
            goto LABEL_175;
          }

          v37 = (v62 - v65 + v64);
          result = sub_1004A40F4();
          if (!v37)
          {
            goto LABEL_198;
          }

          goto LABEL_110;
        }

        v45 = *(v14 + 16);
        v84 = *(v14 + 24);
        sub_100014CEC(v7, v6);

        sub_100014CEC(v14, v13);

        v46 = sub_1004A40D4();
        if (v46)
        {
          v47 = sub_1004A4104();
          if (__OFSUB__(v45, v47))
          {
            goto LABEL_180;
          }

          v46 += v45 - v47;
        }

        v48 = v84 - v45;
        if (__OFSUB__(v84, v45))
        {
          goto LABEL_171;
        }

        result = sub_1004A40F4();
        if (!v46)
        {
          goto LABEL_199;
        }

LABEL_102:
        if (result >= v48)
        {
          v60 = v48;
        }

        else
        {
          v60 = result;
        }

        v61 = memcmp(__s1, v46, v60);
        v6 = v87;
LABEL_114:
        v4 = v86;
        if (v61)
        {
          goto LABEL_157;
        }

        goto LABEL_142;
      }

      goto LABEL_70;
    }

    v82 = *(v7 + 16);
    sub_100014CEC(v7, v6);

    sub_100014CEC(v14, v13);

    v39 = sub_1004A40D4();
    if (v39)
    {
      v40 = v39;
      v41 = sub_1004A4104();
      if (__OFSUB__(v82, v41))
      {
        goto LABEL_167;
      }

      v83 = (v82 - v41 + v40);
    }

    else
    {
      v83 = 0;
    }

    sub_1004A40F4();
    if (v20 == 2)
    {
      v67 = *(v96 + 16);
      v68 = *(v96 + 24);
      v52 = sub_1004A40D4();
      if (v52)
      {
        v69 = sub_1004A4104();
        if (__OFSUB__(v67, v69))
        {
          goto LABEL_181;
        }

        v52 += v67 - v69;
      }

      v29 = __OFSUB__(v68, v67);
      v70 = v68 - v67;
      if (v29)
      {
        goto LABEL_176;
      }

      v71 = sub_1004A40F4();
      if (v71 >= v70)
      {
        v55 = v70;
      }

      else
      {
        v55 = v71;
      }

      v49 = v83;
      if (!v83)
      {
        goto LABEL_188;
      }

      v4 = v86;
      v6 = v87;
      if (!v52)
      {
        goto LABEL_187;
      }

      goto LABEL_137;
    }

    if (v20 == 1)
    {
      if (v96 >> 32 < v96)
      {
        goto LABEL_173;
      }

      v52 = sub_1004A40D4();
      if (v52)
      {
        v53 = sub_1004A4104();
        if (__OFSUB__(v96, v53))
        {
          goto LABEL_183;
        }

        v52 += v96 - v53;
      }

      v54 = sub_1004A40F4();
      if (v54 >= (v96 >> 32) - v96)
      {
        v55 = (v96 >> 32) - v96;
      }

      else
      {
        v55 = v54;
      }

      v49 = v83;
      if (!v83)
      {
        goto LABEL_186;
      }

      v4 = v86;
      if (!v52)
      {
        goto LABEL_185;
      }

LABEL_137:
      if (v49 == v52)
      {
        goto LABEL_142;
      }

      v51 = v55;
      v50 = v52;
      goto LABEL_141;
    }

    v49 = v83;
    v4 = v86;
    __s1[0] = v96;
    LOWORD(__s1[1]) = v13;
    BYTE2(__s1[1]) = BYTE2(v13);
    BYTE3(__s1[1]) = BYTE3(v13);
    BYTE4(__s1[1]) = BYTE4(v13);
    BYTE5(__s1[1]) = BYTE5(v13);
    if (!v83)
    {
      break;
    }

LABEL_140:
    v51 = BYTE6(v13);
    v50 = __s1;
LABEL_141:
    if (memcmp(v49, v50, v51))
    {
      goto LABEL_157;
    }

LABEL_142:
    if (v95 != v94)
    {
LABEL_157:
      v77 = v96;
LABEL_158:
      sub_100014D40(v77, v13);

      sub_100014D40(v7, v6);

      return 0;
    }

    v77 = v96;
    if (v93 != v92)
    {
      goto LABEL_158;
    }

    v78 = *(v10 + 16);
    if (v78 != *(v17 + 16))
    {
      goto LABEL_158;
    }

    if (v78)
    {
      v79 = v10 == v17;
    }

    else
    {
      v79 = 1;
    }

    if (!v79)
    {
      v80 = 32;
      while (v78)
      {
        if (*(v10 + v80) != *(v17 + v80))
        {
          goto LABEL_158;
        }

        ++v80;
        if (!--v78)
        {
          goto LABEL_153;
        }
      }

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
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
    }

LABEL_153:
    sub_100014D40(v96, v13);

    sub_100014D40(v7, v6);

    if (v91 != v90)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

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
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  sub_1004A40F4();
  __break(1u);
LABEL_197:
  result = sub_1004A40F4();
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
  return result;
}

uint64_t sub_100100A64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    v4 = a1;
    if (a1 != a2)
    {
      for (i = 0; ; i += 40)
      {
        v6 = v4 + i;
        v7 = v3 + i;
        if (*(v4 + i + 32) != *(v3 + i + 32))
        {
          return 0;
        }

        v9 = *(v6 + 40);
        v8 = *(v6 + 48);
        v11 = *(v7 + 40);
        v10 = *(v7 + 48);
        v77 = *(v6 + 56);
        v78 = *(v7 + 56);
        v12 = *(v7 + 64);
        v13 = v8 >> 62;
        v14 = v10 >> 62;
        v75 = v12;
        v76 = *(v6 + 64);
        if (v8 >> 62 == 3)
        {
          break;
        }

        if (v13 > 1)
        {
          if (v13 == 2)
          {
            v25 = *(v9 + 16);
            v24 = *(v9 + 24);
            v22 = __OFSUB__(v24, v25);
            v16 = v24 - v25;
            if (v22)
            {
              goto LABEL_151;
            }

            goto LABEL_27;
          }

          v16 = 0;
          if (v14 <= 1)
          {
            goto LABEL_28;
          }
        }

        else if (v13)
        {
          LODWORD(v16) = HIDWORD(v9) - v9;
          if (__OFSUB__(HIDWORD(v9), v9))
          {
            goto LABEL_152;
          }

          v16 = v16;
          if (v14 <= 1)
          {
LABEL_28:
            if (v14)
            {
              LODWORD(v23) = HIDWORD(v11) - v11;
              if (__OFSUB__(HIDWORD(v11), v11))
              {
                goto LABEL_150;
              }

              v23 = v23;
            }

            else
            {
              v23 = BYTE6(v10);
            }

            goto LABEL_34;
          }
        }

        else
        {
          v16 = BYTE6(v8);
          if (v14 <= 1)
          {
            goto LABEL_28;
          }
        }

LABEL_21:
        if (v14 != 2)
        {
          if (v16)
          {
            return 0;
          }

LABEL_45:
          sub_100014CEC(v9, v8);

          v18 = v11;
          v19 = v10;
LABEL_46:
          sub_100014CEC(v18, v19);

          goto LABEL_140;
        }

        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        v22 = __OFSUB__(v20, v21);
        v23 = v20 - v21;
        if (v22)
        {
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
        }

LABEL_34:
        if (v16 != v23)
        {
          return 0;
        }

        if (v16 < 1)
        {
          goto LABEL_45;
        }

        if (v13 > 1)
        {
          if (v13 != 2)
          {
            memset(__s1, 0, 14);
            if (v14)
            {
              if (v14 == 2)
              {
                v38 = *(v11 + 16);
                v71 = *(v11 + 24);
                sub_100014CEC(v9, v8);

                sub_100014CEC(v11, v10);

                v39 = sub_1004A40D4();
                if (v39)
                {
                  v40 = sub_1004A4104();
                  if (__OFSUB__(v38, v40))
                  {
                    goto LABEL_167;
                  }

                  v39 += v38 - v40;
                }

                v41 = v71 - v38;
                if (__OFSUB__(v71, v38))
                {
                  goto LABEL_160;
                }

                result = sub_1004A40F4();
                if (!v39)
                {
                  goto LABEL_184;
                }

                goto LABEL_100;
              }

              v68 = ((v11 >> 32) - v11);
              if (v11 >> 32 < v11)
              {
                goto LABEL_156;
              }

              sub_100014CEC(v9, v8);

              sub_100014CEC(v11, v10);

              v54 = sub_1004A40D4();
              if (!v54)
              {
                goto LABEL_182;
              }

              v55 = v54;
              v56 = sub_1004A4104();
              if (__OFSUB__(v11, v56))
              {
                goto LABEL_161;
              }

              v29 = (v11 - v56 + v55);
              result = sub_1004A40F4();
              if (!v29)
              {
                goto LABEL_183;
              }

LABEL_108:
              if (result >= v68)
              {
                v57 = v68;
              }

              else
              {
                v57 = result;
              }

              v53 = memcmp(__s1, v29, v57);
              goto LABEL_112;
            }

            goto LABEL_68;
          }

          v31 = *(v9 + 16);
          sub_100014CEC(v9, v8);

          sub_100014CEC(v11, v10);

          v32 = sub_1004A40D4();
          if (v32)
          {
            v33 = v32;
            v34 = sub_1004A4104();
            if (__OFSUB__(v31, v34))
            {
              goto LABEL_154;
            }

            v69 = (v31 - v34 + v33);
          }

          else
          {
            v69 = 0;
          }

          sub_1004A40F4();
          if (v14 == 2)
          {
            v58 = *(v11 + 16);
            v59 = *(v11 + 24);
            v44 = sub_1004A40D4();
            if (v44)
            {
              v60 = sub_1004A4104();
              if (__OFSUB__(v58, v60))
              {
                goto LABEL_168;
              }

              v44 += v58 - v60;
            }

            v22 = __OFSUB__(v59, v58);
            v61 = v59 - v58;
            if (v22)
            {
              goto LABEL_163;
            }

            v62 = sub_1004A40F4();
            if (v62 >= v61)
            {
              v47 = v61;
            }

            else
            {
              v47 = v62;
            }

            result = v69;
            if (!v69)
            {
              goto LABEL_176;
            }

            v3 = a2;
            v4 = a1;
            if (!v44)
            {
              goto LABEL_175;
            }

            goto LABEL_135;
          }

          if (v14 == 1)
          {
            if (v11 >> 32 < v11)
            {
              goto LABEL_158;
            }

            v44 = sub_1004A40D4();
            if (v44)
            {
              v45 = sub_1004A4104();
              if (__OFSUB__(v11, v45))
              {
                goto LABEL_170;
              }

              v44 += v11 - v45;
            }

            v3 = a2;
            v46 = sub_1004A40F4();
            if (v46 >= (v11 >> 32) - v11)
            {
              v47 = (v11 >> 32) - v11;
            }

            else
            {
              v47 = v46;
            }

            result = v69;
            if (!v69)
            {
              goto LABEL_172;
            }

            v4 = a1;
            if (!v44)
            {
              __break(1u);
LABEL_172:
              __break(1u);
LABEL_173:
              __break(1u);
LABEL_174:
              sub_1004A40F4();
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
LABEL_181:
              __break(1u);
LABEL_182:
              result = sub_1004A40F4();
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
              return result;
            }

            goto LABEL_135;
          }

          v3 = a2;
          v4 = a1;
          result = v69;
          __s1[0] = v11;
          LOWORD(__s1[1]) = v10;
          BYTE2(__s1[1]) = BYTE2(v10);
          BYTE3(__s1[1]) = BYTE3(v10);
          BYTE4(__s1[1]) = BYTE4(v10);
          BYTE5(__s1[1]) = BYTE5(v10);
          if (!v69)
          {
            goto LABEL_185;
          }
        }

        else
        {
          if (!v13)
          {
            __s1[0] = v9;
            LOWORD(__s1[1]) = v8;
            BYTE2(__s1[1]) = BYTE2(v8);
            BYTE3(__s1[1]) = BYTE3(v8);
            BYTE4(__s1[1]) = BYTE4(v8);
            BYTE5(__s1[1]) = BYTE5(v8);
            if (v14)
            {
              if (v14 == 1)
              {
                v68 = ((v11 >> 32) - v11);
                if (v11 >> 32 < v11)
                {
                  goto LABEL_157;
                }

                sub_100014CEC(v9, v8);

                sub_100014CEC(v11, v10);

                v26 = sub_1004A40D4();
                if (!v26)
                {
                  goto LABEL_174;
                }

                v27 = v26;
                v28 = sub_1004A4104();
                if (__OFSUB__(v11, v28))
                {
                  goto LABEL_162;
                }

                v29 = (v11 - v28 + v27);
                result = sub_1004A40F4();
                if (!v29)
                {
                  goto LABEL_173;
                }

                goto LABEL_108;
              }

              v50 = *(v11 + 16);
              v72 = *(v11 + 24);
              sub_100014CEC(v9, v8);

              sub_100014CEC(v11, v10);

              v39 = sub_1004A40D4();
              if (v39)
              {
                v51 = sub_1004A4104();
                if (__OFSUB__(v50, v51))
                {
                  goto LABEL_166;
                }

                v39 += v50 - v51;
              }

              v41 = v72 - v50;
              if (__OFSUB__(v72, v50))
              {
                goto LABEL_159;
              }

              result = sub_1004A40F4();
              if (!v39)
              {
                goto LABEL_186;
              }

LABEL_100:
              if (result >= v41)
              {
                v52 = v41;
              }

              else
              {
                v52 = result;
              }

              v53 = memcmp(__s1, v39, v52);
              v3 = a2;
LABEL_112:
              v4 = a1;
              if (v53)
              {
                goto LABEL_148;
              }

              goto LABEL_140;
            }

LABEL_68:
            v79 = v11;
            v80 = v10;
            v81 = BYTE2(v10);
            v82 = BYTE3(v10);
            v83 = BYTE4(v10);
            v84 = BYTE5(v10);
            sub_100014CEC(v9, v8);

            sub_100014CEC(v11, v10);

            result = __s1;
            v42 = &v79;
            v43 = BYTE6(v10);
            v4 = a1;
            goto LABEL_139;
          }

          if (v9 > v9 >> 32)
          {
            goto LABEL_153;
          }

          sub_100014CEC(v9, v8);

          sub_100014CEC(v11, v10);

          v35 = sub_1004A40D4();
          if (v35)
          {
            v36 = v35;
            v37 = sub_1004A4104();
            if (__OFSUB__(v9, v37))
            {
              goto LABEL_155;
            }

            v70 = (v9 - v37 + v36);
          }

          else
          {
            v70 = 0;
          }

          sub_1004A40F4();
          if (v14 == 2)
          {
            v63 = *(v11 + 16);
            v64 = *(v11 + 24);
            v44 = sub_1004A40D4();
            if (v44)
            {
              v65 = sub_1004A4104();
              if (__OFSUB__(v63, v65))
              {
                goto LABEL_169;
              }

              v44 += v63 - v65;
            }

            v22 = __OFSUB__(v64, v63);
            v66 = v64 - v63;
            if (v22)
            {
              goto LABEL_165;
            }

            v67 = sub_1004A40F4();
            if (v67 >= v66)
            {
              v47 = v66;
            }

            else
            {
              v47 = v67;
            }

            result = v70;
            if (!v70)
            {
              goto LABEL_181;
            }

            v3 = a2;
            v4 = a1;
            if (!v44)
            {
              goto LABEL_180;
            }

            goto LABEL_135;
          }

          if (v14 == 1)
          {
            if (v11 >> 32 < v11)
            {
              goto LABEL_164;
            }

            v44 = sub_1004A40D4();
            if (v44)
            {
              v48 = sub_1004A4104();
              if (__OFSUB__(v11, v48))
              {
                goto LABEL_171;
              }

              v44 += v11 - v48;
            }

            v3 = a2;
            v49 = sub_1004A40F4();
            if (v49 >= (v11 >> 32) - v11)
            {
              v47 = (v11 >> 32) - v11;
            }

            else
            {
              v47 = v49;
            }

            result = v70;
            if (!v70)
            {
              goto LABEL_179;
            }

            v4 = a1;
            if (!v44)
            {
              goto LABEL_178;
            }

LABEL_135:
            if (result == v44)
            {
              goto LABEL_140;
            }

            v43 = v47;
            v42 = v44;
            goto LABEL_139;
          }

          v3 = a2;
          v4 = a1;
          result = v70;
          __s1[0] = v11;
          LOWORD(__s1[1]) = v10;
          BYTE2(__s1[1]) = BYTE2(v10);
          BYTE3(__s1[1]) = BYTE3(v10);
          BYTE4(__s1[1]) = BYTE4(v10);
          BYTE5(__s1[1]) = BYTE5(v10);
          if (!v70)
          {
            goto LABEL_177;
          }
        }

        v43 = BYTE6(v10);
        v42 = __s1;
LABEL_139:
        if (memcmp(result, v42, v43))
        {
          goto LABEL_148;
        }

LABEL_140:
        if (v77)
        {
          if (!v78 || (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v77, v78) & 1) == 0)
          {
LABEL_148:
            sub_100014D40(v11, v10);

            sub_100014D40(v9, v8);

            return 0;
          }
        }

        else if (v78)
        {
          goto LABEL_148;
        }

        sub_100014D40(v11, v10);

        sub_100014D40(v9, v8);

        if (v76 != v75)
        {
          return 0;
        }

        if (!--v2)
        {
          return 1;
        }
      }

      if (v9)
      {
        v15 = 0;
      }

      else
      {
        v15 = v8 == 0xC000000000000000;
      }

      v16 = 0;
      v17 = v15 && v10 >> 62 == 3;
      if (v17 && !v11 && v10 == 0xC000000000000000)
      {
        sub_100014CEC(0, 0xC000000000000000);

        v18 = 0;
        v19 = 0xC000000000000000;
        goto LABEL_46;
      }

LABEL_27:
      if (v14 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }
  }

  return 1;
}

uint64_t sub_1001014BC(uint64_t a1, uint64_t a2)
{
  v61 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v66 = *(v61 - 8);
  __chkstk_darwin(v61);
  v56 = &v50 - v4;
  v5 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v58 = sub_10000C9C0(&qword_1005CE810, &unk_1004D1120);
  __chkstk_darwin(v58);
  v60 = &v50 - v8;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  __chkstk_darwin(MessagesVMa);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s19UserInitiatedSearchV5StateOMa(0);
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v59 = &v50 - v15;
  v64 = sub_10000C9C0(&qword_1005D0948, &unk_1004DAB60);
  __chkstk_darwin(v64);
  v17 = &v50 - v16;
  v63 = _s19UserInitiatedSearchVMa(0);
  __chkstk_darwin(v63);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v23 = (&v50 - v22);
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = a1 + v25;
  v67 = a2 + v25;
  v50 = (v66 + 48);
  v51 = v17;
  v54 = *(v21 + 72);
  v55 = v13;
  v27 = v60;
  v52 = &v50 - v22;
  v53 = v19;
  v57 = v10;
  while (1)
  {
    result = sub_1001054EC(v26, v23, _s19UserInitiatedSearchVMa);
    if (!v24)
    {
      break;
    }

    sub_1001054EC(v67, v19, _s19UserInitiatedSearchVMa);
    if (*v23 != *v19)
    {
      goto LABEL_32;
    }

    v65 = v26;
    v66 = v24;
    v29 = v11;
    v30 = *(v63 + 20);
    v31 = &v17[*(v64 + 48)];
    sub_1001054EC(v23 + v30, v17, _s19UserInitiatedSearchV5StateOMa);
    sub_1001054EC(v19 + v30, v31, _s19UserInitiatedSearchV5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1001054EC(v17, v13, _s19UserInitiatedSearchV5StateOMa);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_100105554(v13, _s19UserInitiatedSearchV13FetchMessagesVMa);
        goto LABEL_26;
      }

      v32 = v57;
      sub_100105098(v31, v57, _s19UserInitiatedSearchV13FetchMessagesVMa);
      sub_100016D2C();
      if ((sub_1004A7034() & 1) == 0 || (sub_1004A7034() & 1) == 0)
      {
        goto LABEL_30;
      }

      v33 = *(MessagesVMa + 24);
      v34 = v13;
      v35 = *(v58 + 48);
      sub_100105100(&v34[v33], v27);
      sub_100105100(v32 + v33, v27 + v35);
      v36 = *v50;
      if ((*v50)(v27, 1, v61) == 1)
      {
        if (v36(v27 + v35, 1, v61) != 1)
        {
          goto LABEL_29;
        }

        sub_100025F40(v27, &qword_1005CD510, &unk_1004CF2E0);
        v32 = v57;
        v13 = v55;
        v11 = v29;
      }

      else
      {
        sub_100105100(v27, v7);
        if (v36(v27 + v35, 1, v61) == 1)
        {
          sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
LABEL_29:
          sub_100025F40(v27, &qword_1005CE810, &unk_1004D1120);
          v32 = v57;
          v13 = v55;
LABEL_30:
          sub_100105554(v32, _s19UserInitiatedSearchV13FetchMessagesVMa);
          sub_100105554(v13, _s19UserInitiatedSearchV13FetchMessagesVMa);
LABEL_31:
          sub_100105554(v17, _s19UserInitiatedSearchV5StateOMa);
LABEL_32:
          sub_100105554(v19, _s19UserInitiatedSearchVMa);
          sub_100105554(v23, _s19UserInitiatedSearchVMa);
          return 0;
        }

        v48 = v56;
        sub_100020950(v27 + v35, v56);
        v49 = sub_1004A7034();
        sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v27, &qword_1005CD510, &unk_1004CF2E0);
        v32 = v57;
        v13 = v55;
        v11 = v29;
        if ((v49 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      sub_100105554(v32, _s19UserInitiatedSearchV13FetchMessagesVMa);
      sub_100105554(v13, _s19UserInitiatedSearchV13FetchMessagesVMa);
    }

    else
    {
      v37 = v59;
      sub_1001054EC(v17, v59, _s19UserInitiatedSearchV5StateOMa);
      v39 = *v37;
      v38 = *(v37 + 8);
      v40 = *(v37 + 16);
      v41 = *(v37 + 24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1000B37D8(v39);

        v23 = v52;
        v19 = v53;
LABEL_26:
        sub_100025F40(v17, &qword_1005D0948, &unk_1004DAB60);
        goto LABEL_32;
      }

      v42 = v7;
      v43 = *v31;
      v44 = *(v31 + 8);
      v45 = *(v31 + 16);
      v46 = *(v31 + 24);
      if ((static SearchKey.__derived_enum_equals(_:_:)(v39, v43) & 1) == 0)
      {
        sub_1000B37D8(v43);

        sub_1000B37D8(v39);

        v17 = v51;
        v23 = v52;
        v19 = v53;
        goto LABEL_31;
      }

      v47 = static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(v38, v40, v41, v44, v45, v46);
      sub_1000B37D8(v43);

      sub_1000B37D8(v39);

      v7 = v42;
      v17 = v51;
      v23 = v52;
      v19 = v53;
      v27 = v60;
      v13 = v55;
      v11 = v29;
      if (!v47)
      {
        goto LABEL_31;
      }
    }

    sub_100105554(v17, _s19UserInitiatedSearchV5StateOMa);
    sub_100105554(v19, _s19UserInitiatedSearchVMa);
    sub_100105554(v23, _s19UserInitiatedSearchVMa);
    v67 += v54;
    v26 = v65 + v54;
    v24 = v66 - 1;
    if (v66 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100101D68(uint64_t a1, uint64_t a2)
{
  v47 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v43 = &v38 - v5;
  v6 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v44 = sub_10000C9C0(&qword_1005CE810, &unk_1004D1120);
  __chkstk_darwin(v44);
  v10 = &v38 - v9;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  __chkstk_darwin(SearchResult);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v16 = (&v38 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v41 = (v4 + 48);
  v21 = *(v14 + 72);
  v39 = v8;
  v40 = v21;
  v42 = (&v38 - v15);
  while (1)
  {
    sub_1001054EC(v19, v16, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    sub_1001054EC(v20, v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    if (*v16 != *v12)
    {
      sub_100105554(v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v36 = v16;
LABEL_20:
      sub_100105554(v36, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      return 0;
    }

    v22 = *(SearchResult + 20);
    v23 = v16 + v22;
    v24 = v12 + v22;
    sub_100016D2C();
    if ((sub_1004A7034() & 1) == 0)
    {
      v37 = v12;
LABEL_19:
      sub_100105554(v37, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v36 = v42;
      goto LABEL_20;
    }

    v46 = v19;
    v25 = v12;
    MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
    if ((sub_1004A7034() & 1) == 0)
    {
      v37 = v25;
      goto LABEL_19;
    }

    v27 = *(MessagesVMa + 24);
    v28 = *(v44 + 48);
    sub_100105100(&v23[v27], v10);
    v29 = &v24[v27];
    v30 = v47;
    sub_100105100(v29, &v10[v28]);
    v31 = *v41;
    if ((*v41)(v10, 1, v30) != 1)
    {
      break;
    }

    sub_100105554(v25, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    v16 = v42;
    sub_100105554(v42, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    if (v31(&v10[v28], 1, v47) != 1)
    {
      goto LABEL_22;
    }

    sub_100025F40(v10, &qword_1005CD510, &unk_1004CF2E0);
    v12 = v25;
LABEL_5:
    v20 += v40;
    v19 = v46 + v40;
    if (!--v17)
    {
      return 1;
    }
  }

  v32 = v39;
  sub_100105100(v10, v39);
  if (v31(&v10[v28], 1, v47) != 1)
  {
    v33 = v43;
    sub_100020950(&v10[v28], v43);
    v34 = sub_1004A7034();
    sub_100025F40(v33, &unk_1005D91B0, &unk_1004CF400);
    v12 = v25;
    sub_100105554(v25, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    v16 = v42;
    sub_100105554(v42, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    sub_100025F40(v32, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v10, &qword_1005CD510, &unk_1004CF2E0);
    if ((v34 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_100105554(v25, type metadata accessor for FetchSearchResultMessages.Requests.Search);
  sub_100105554(v42, type metadata accessor for FetchSearchResultMessages.Requests.Search);
  sub_100025F40(v32, &unk_1005D91B0, &unk_1004CF400);
LABEL_22:
  sub_100025F40(v10, &qword_1005CE810, &unk_1004D1120);
  return 0;
}

uint64_t sub_100102318(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(i - 6) == *(v3 - 6); i += 4)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(i - 2);
      if (*(v3 - 2) == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(*(v3 - 2) & 0xFFFFFFFF01010101, *(v3 - 8), *(i - 2) & 0xFFFFFFFF01010101, *(i - 8)) & 1) == 0)
      {
        return 0;
      }

      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        v8 = sub_100083478(v5, v6);

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10010243C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    for (i = (a1 + 40); *(v3 - 2) == *(i - 2); i += 12)
    {
      result = 0;
      if (*(v3 - 1) != *(i - 1) || ((*i ^ *v3) & 1) != 0)
      {
        return result;
      }

      v3 += 12;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1001024BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 176);
    v103 = *(a1 + 160);
    v104 = v3;
    v105[0] = *(a1 + 192);
    *(v105 + 9) = *(a1 + 201);
    v4 = *(a1 + 96);
    v100 = *(a1 + 112);
    v5 = *(a1 + 144);
    v101 = *(a1 + 128);
    v102 = v5;
    v6 = *(a1 + 48);
    v95 = *(a1 + 32);
    v96 = v6;
    v7 = *(a1 + 80);
    v97 = *(a1 + 64);
    v98 = v7;
    v99 = v4;
    v8 = *(a2 + 176);
    *&v106[128] = *(a2 + 160);
    *&v106[144] = v8;
    *&v106[160] = *(a2 + 192);
    *&v106[169] = *(a2 + 201);
    v9 = *(a2 + 112);
    *&v106[64] = *(a2 + 96);
    *&v106[80] = v9;
    v10 = *(a2 + 144);
    *&v106[96] = *(a2 + 128);
    *&v106[112] = v10;
    v11 = *(a2 + 48);
    *v106 = *(a2 + 32);
    *&v106[16] = v11;
    v12 = *(a2 + 80);
    *&v106[32] = *(a2 + 64);
    *&v106[48] = v12;
    if (*v106 != v95)
    {
      return 0;
    }

    v13 = (a1 + 224);
    v14 = (a2 + 224);
    while (1)
    {
      v15 = *(v13 - 40);
      v91 = *(v13 - 56);
      v92 = v15;
      v93 = *(v13 - 24);
      v94 = *(v13 - 8);
      v16 = *(v13 - 104);
      v87 = *(v13 - 120);
      v88 = v16;
      v17 = *(v13 - 72);
      v89 = *(v13 - 88);
      v90 = v17;
      v18 = *(v13 - 168);
      v83 = *(v13 - 184);
      v84 = v18;
      v19 = *(v13 - 136);
      v85 = *(v13 - 152);
      v86 = v19;
      if (sub_10000FE74(&v83) == 1)
      {
        v55[8] = *&v106[136];
        v55[9] = *&v106[152];
        v55[10] = *&v106[168];
        v56 = v106[184];
        v55[4] = *&v106[72];
        v55[5] = *&v106[88];
        v55[6] = *&v106[104];
        v55[7] = *&v106[120];
        v55[0] = *&v106[8];
        v55[1] = *&v106[24];
        v55[2] = *&v106[40];
        v55[3] = *&v106[56];
        if (sub_10000FE74(v55) != 1)
        {
          return 0;
        }
      }

      else
      {
        v79 = *&v106[136];
        v80 = *&v106[152];
        v81 = *&v106[168];
        v82 = v106[184];
        v75 = *&v106[72];
        v76 = *&v106[88];
        v77 = *&v106[104];
        v78 = *&v106[120];
        v71 = *&v106[8];
        v72 = *&v106[24];
        v73 = *&v106[40];
        v74 = *&v106[56];
        if (sub_10000FE74(&v71) == 1)
        {
          return 0;
        }

        v69[8] = v91;
        v69[9] = v92;
        v69[10] = v93;
        v70 = v94;
        v69[4] = v87;
        v69[5] = v88;
        v69[6] = v89;
        v69[7] = v90;
        v69[0] = v83;
        v69[1] = v84;
        v69[2] = v85;
        v69[3] = v86;
        if (sub_10000FE88(v69) == 1)
        {
          v20 = UInt32.init(_:)(v69);
          v21 = *(v20 + 80);
          v109[4] = *(v20 + 64);
          v109[5] = v21;
          v109[6] = *(v20 + 96);
          v110 = *(v20 + 112);
          v22 = *(v20 + 16);
          v109[0] = *v20;
          v109[1] = v22;
          v23 = *(v20 + 48);
          v109[2] = *(v20 + 32);
          v109[3] = v23;
          v65 = v79;
          v66 = v80;
          v67 = v81;
          v68 = v82;
          v61 = v75;
          v62 = v76;
          v63 = v77;
          v64 = v78;
          v57 = v71;
          v58 = v72;
          v59 = v73;
          v60 = v74;
          if (sub_10000FE88(&v57) != 1)
          {
            goto LABEL_20;
          }

          v24 = UInt32.init(_:)(&v57);
          v25 = *(v24 + 80);
          v111[4] = *(v24 + 64);
          v111[5] = v25;
          v111[6] = *(v24 + 96);
          v112 = *(v24 + 112);
          v26 = *(v24 + 16);
          v111[0] = *v24;
          v111[1] = v26;
          v27 = *(v24 + 48);
          v111[2] = *(v24 + 32);
          v111[3] = v27;
          sub_10001025C(&v95, v55);
          sub_10001025C(v106, v55);
          v28 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(v109, v111);
        }

        else
        {
          v29 = UInt32.init(_:)(v69);
          v30 = v29[9];
          v107[8] = v29[8];
          v107[9] = v30;
          v107[10] = v29[10];
          v31 = v29[5];
          v107[4] = v29[4];
          v107[5] = v31;
          v32 = v29[6];
          v107[7] = v29[7];
          v107[6] = v32;
          v33 = v29[1];
          v107[0] = *v29;
          v107[1] = v33;
          v34 = v29[2];
          v107[3] = v29[3];
          v107[2] = v34;
          v68 = v82;
          v66 = v80;
          v67 = v81;
          v64 = v78;
          v65 = v79;
          v62 = v76;
          v63 = v77;
          v60 = v74;
          v61 = v75;
          v58 = v72;
          v59 = v73;
          v57 = v71;
          if (sub_10000FE88(&v57) == 1)
          {
LABEL_20:
            UInt32.init(_:)(&v57);
            return 0;
          }

          v35 = UInt32.init(_:)(&v57);
          v36 = v35[9];
          v108[8] = v35[8];
          v108[9] = v36;
          v108[10] = v35[10];
          v37 = v35[5];
          v108[4] = v35[4];
          v108[5] = v37;
          v38 = v35[6];
          v108[7] = v35[7];
          v108[6] = v38;
          v39 = v35[1];
          v108[0] = *v35;
          v108[1] = v39;
          v40 = v35[2];
          v108[3] = v35[3];
          v108[2] = v40;
          sub_10001025C(&v95, v55);
          sub_10001025C(v106, v55);
          v28 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(v107, v108);
        }

        v41 = v28;
        sub_100104F94(v106);
        sub_100104F94(&v95);
        if ((v41 & 1) == 0)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }

      v42 = v13[9];
      v103 = v13[8];
      v104 = v42;
      v105[0] = v13[10];
      *(v105 + 9) = *(v13 + 169);
      v43 = v13[4];
      v100 = v13[5];
      v44 = v13[7];
      v101 = v13[6];
      v102 = v44;
      v45 = v13[1];
      v95 = *v13;
      v96 = v45;
      v46 = v13[2];
      v47 = v13[3];
      v13 += 12;
      v97 = v46;
      v98 = v47;
      v99 = v43;
      v48 = v14[9];
      *&v106[128] = v14[8];
      *&v106[144] = v48;
      *&v106[160] = v14[10];
      *&v106[169] = *(v14 + 169);
      v49 = v14[5];
      *&v106[64] = v14[4];
      *&v106[80] = v49;
      v50 = v14[7];
      *&v106[96] = v14[6];
      *&v106[112] = v50;
      v51 = v14[1];
      *v106 = *v14;
      *&v106[16] = v51;
      v52 = v14[2];
      v53 = v14[3];
      v14 += 12;
      *&v106[32] = v52;
      *&v106[48] = v53;
      if (*v106 != v95)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_1001029D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 32)
    {
      v6 = *(a1 + i + 56);
      v7 = *(a2 + i + 56);
      result = static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(*(a1 + i + 32), *(a1 + i + 40), *(a1 + i + 48), *(a2 + i + 32), *(a2 + i + 40), *(a2 + i + 48));
      if ((result & 1) == 0)
      {
        break;
      }

      if ((v7 | v6) < 0)
      {
        __break(1u);
        return result;
      }

      if (v7 != v6)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_100102A80(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v4++;
    v6 = v5;
    v7 = *v3++;
    v8 = vceq_s32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_100102AF4(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vceq_s32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_100102B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0) - 8;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1001054EC(v13, v10, type metadata accessor for TaskHistory.Running);
        sub_1001054EC(v14, v6, type metadata accessor for TaskHistory.Running);
        v16 = sub_10016AFF8(v10, v6);
        sub_100105554(v6, type metadata accessor for TaskHistory.Running);
        sub_100105554(v10, type metadata accessor for TaskHistory.Running);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100102D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v4 - 8);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10000C9C0(&qword_1005D0940, &qword_1004D43A8);
  __chkstk_darwin(v43);
  v7 = &v38 - v6;
  v8 = type metadata accessor for TaskHistory.Previous(0);
  __chkstk_darwin(v8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v45 = &v38 - v12;
  __chkstk_darwin(v13);
  v44 = &v38 - v16;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(v14 + 72);
  v38 = v15;
  v39 = v21;
  v22 = v44;
  v40 = v8;
  while (1)
  {
    sub_1001054EC(v19, v22, type metadata accessor for TaskHistory.Previous);
    v23 = v45;
    sub_1001054EC(v20, v45, type metadata accessor for TaskHistory.Previous);
    v24 = &v7[*(v43 + 48)];
    sub_1001054EC(v22, v7, type metadata accessor for TaskHistory.Previous);
    sub_1001054EC(v23, v24, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v25 = v42;
    sub_1001054EC(v7, v42, type metadata accessor for TaskHistory.Previous);
    v26 = *v25;
    v27 = *(v25 + 8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100020EDC(v26);
      goto LABEL_19;
    }

    v28 = *v24;
    v29 = *(v24 + 8);
    v30 = static Action.__derived_enum_equals(_:_:)(v26, *v24);
    sub_100020EDC(v28);
    sub_100020EDC(v26);
    if ((v30 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_100105554(v7, type metadata accessor for TaskHistory.Previous);
    v22 = v44;
    if (v27 != v29)
    {
      goto LABEL_20;
    }

LABEL_5:
    sub_100105554(v45, type metadata accessor for TaskHistory.Previous);
    sub_100105554(v22, type metadata accessor for TaskHistory.Previous);
    v20 += v39;
    v19 += v39;
    if (!--v17)
    {
      return 1;
    }
  }

  v31 = v38;
  sub_1001054EC(v7, v38, type metadata accessor for TaskHistory.Previous);
  v32 = *(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48);
  v33 = *(v31 + v32);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = *(v24 + v32);
    v35 = v41;
    sub_100105098(v24, v41, type metadata accessor for ClientCommand);
    v36 = static ClientCommand.__derived_enum_equals(_:_:)(v31, v35);
    sub_100105554(v35, type metadata accessor for ClientCommand);
    sub_100105554(v31, type metadata accessor for ClientCommand);
    if ((v36 & 1) == 0)
    {
LABEL_16:
      sub_100105554(v7, type metadata accessor for TaskHistory.Previous);
      v22 = v44;
      goto LABEL_20;
    }

    sub_100105554(v7, type metadata accessor for TaskHistory.Previous);
    v22 = v44;
    if (v33 != v34)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  sub_100105554(v31, type metadata accessor for ClientCommand);
LABEL_19:
  sub_100025F40(v7, &qword_1005D0940, &qword_1004D43A8);
LABEL_20:
  sub_100105554(v45, type metadata accessor for TaskHistory.Previous);
  sub_100105554(v22, type metadata accessor for TaskHistory.Previous);
  return 0;
}

uint64_t sub_10010321C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 40;
    v4 = a2 + 40;
    do
    {
      v5 = sub_1004A5834();
      v7 = v6;
      if (v5 == sub_1004A5834() && v7 == v8)
      {
      }

      else
      {
        v10 = sub_1004A6D34();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10010330C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  sub_10018A6B4(_swiftEmptyArrayStorage);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v16 = &_s18CondStoreResponsesVN;
  v17 = sub_100105170();
  v11 = swift_allocObject();
  *&v15 = v11;
  *(v11 + 16) = _swiftEmptyArrayStorage;
  *(v11 + 24) = v6;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  *(v11 + 48) = _swiftEmptyArrayStorage;
  *(v11 + 56) = 0;
  *(v11 + 64) = 1;
  sub_100016D2C();
  sub_1004A7114();
  sub_1000B364C(&v15, a1);
  *(a1 + 40) = _swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  v12 = type metadata accessor for PendingServerResponses(0);
  return sub_100020950(v4, a1 + *(v12 + 24));
}

uint64_t sub_100103430@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  sub_10018A6B4(_swiftEmptyArrayStorage);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v16 = &_s14BasicResponsesVN;
  v17 = sub_10010521C();
  v11 = swift_allocObject();
  *&v15 = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  *(v11 + 32) = v10;
  *(v11 + 40) = _swiftEmptyArrayStorage;
  *(v11 + 48) = 1;
  *(v11 + 56) = 1;
  sub_100016D2C();
  sub_1004A7114();
  sub_1000B364C(&v15, a1);
  *(a1 + 40) = _swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  v12 = type metadata accessor for PendingServerResponses(0);
  return sub_100020950(v4, a1 + *(v12 + 24));
}

uint64_t sub_100103554(uint64_t result)
{
  v2 = *v1;
  if ((*(v1 + 8) & 1) == 0)
  {
    v3 = *(v2 + 16);
    if (v3 <= 0x294)
    {
      v4 = result;
      sub_10000C9C0(&qword_1005CEFA0, &qword_1004D43B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004CEAA0;
      *(inited + 32) = v4;
      result = sub_1000819F8(inited);
      v6 = 0;
      v7 = v2;
LABEL_7:
      *v1 = v7;
      *(v1 + 8) = v6;
      return result;
    }

    result = sub_10002A758(*v1, 0);
    v2 = v3;
  }

  v7 = v2 + 1;
  if (!__OFADD__(v2, 1))
  {
    v6 = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void *sub_100103614(_BOOL8 a1, uint64_t a2, int a3)
{
  v4 = v3;
  v35 = _swiftEmptySetSingleton;
  v8 = v3[3];
  v9 = v3[4];
  sub_10002587C(v3, v8);
  v10 = *((*(v9 + 24))(v8, v9) + 16);

  if (v10 && (a3 ^ 1) & 1 | (v10 > 0x52))
  {
    v11 = v4[3];
    v12 = v4[4];
    sub_10002587C(v4, v11);
    v13 = (*(v12 + 24))(v11, v12);
    LOBYTE(v11) = sub_100026C90(a1, a2, v13);

    if (v11)
    {
      v14 = &v30;
      v15 = 5;
    }

    else
    {
      v14 = &v31;
      v15 = 4;
    }

    sub_100088568(v14, v15);
  }

  v16 = v4[3];
  v17 = v4[4];
  sub_10002587C(v4, v16);
  (*(v17 + 40))(v16, v17);
  v19 = *(v18 + 16);

  if (v19 || (v25 = v4[3], v26 = v4[4], sub_10002587C(v4, v25), v27 = (*(v26 + 72))(v25, v26), (v28 & 1) == 0) || v27)
  {
    sub_100088568(&v34, 11);
  }

  v20 = v4[5];
  v21 = v20;
  if ((v4[6] & 1) == 0)
  {
    v21 = *(v20 + 16);
  }

  v22 = 82;
  if ((a3 & 1) == 0)
  {
    v22 = 0;
  }

  if (v21 > v22)
  {
    if (sub_100026C18(a1, a2, v20, *(v4 + 48)))
    {
      v23 = &v32;
      v24 = 3;
    }

    else
    {
      v23 = &v33;
      v24 = 2;
    }

    sub_100088568(v23, v24);
  }

  return v35;
}

uint64_t sub_100103850(uint64_t a1)
{
  v2 = sub_10010587C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010388C(uint64_t a1)
{
  v2 = sub_10010587C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001038C8(void *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D0970, &qword_1004D4618);
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v26 = &v24[-v5];
  v6 = sub_10000C9C0(&qword_1005D0978, &qword_1004D4620);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24[-v7];
  v9 = sub_10000C9C0(&qword_1005D0980, &qword_1004D4628);
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin(v9);
  v11 = &v24[-v10];
  sub_10002587C(a1, a1[3]);
  sub_100105780();
  sub_1004A6FA4();
  v13 = *v2;
  v12 = v2[1];
  v15 = v2[2];
  v14 = v2[3];
  v16 = *(v2 + 48);
  if (v16 < 0)
  {
    v20 = v2 + 4;
    v19 = v2[4];
    v29 = v20[1];
    v25 = v16 & 0x7F;
    LOBYTE(v32) = 1;
    sub_1001057D4();
    v21 = v26;
    v22 = v31;
    sub_1004A6BD4();
    v32 = v13;
    v33 = v12;
    v34 = v15;
    v35 = v14;
    v36 = v19;
    v37 = v29;
    v38 = v25;
    sub_100105828();
    v23 = v28;
    sub_1004A6C74();
    (*(v27 + 8))(v21, v23);
    return (*(v30 + 8))(v11, v22);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_10010587C();
    v17 = v31;
    sub_1004A6BD4();
    v32 = v13;
    v33 = v12;
    v34 = v15;
    v35 = v14;
    sub_1001058D0();
    sub_1004A6C74();
    (*(v29 + 8))(v8, v6);
    return (*(v30 + 8))(v11, v17);
  }
}

uint64_t sub_100103C34()
{
  if (*v0)
  {
    return 0x726F7453646E6F63;
  }

  else
  {
    return 0x6369736162;
  }
}

uint64_t sub_100103C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369736162 && a2 == 0xE500000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F7453646E6F63 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_100103D5C(uint64_t a1)
{
  v2 = sub_100105780();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100103D98(uint64_t a1)
{
  v2 = sub_100105780();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100103DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100103E54(uint64_t a1)
{
  v2 = sub_1001057D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100103E90(uint64_t a1)
{
  v2 = sub_1001057D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100103EE4(_OWORD *a1, __int128 *a2)
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
  return sub_100104D64(v8, v9) & 1;
}

Swift::Int sub_100103F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  sub_1004A6E94();
  if (a1 != 2)
  {
    sub_1004A6EC4(1u);
    FlagsUpdate.hash(into:)(v7, a1 & 0xFFFFFFFF01010101, v4);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1004A6EC4(0);
    return sub_1004A6F14();
  }

  sub_1004A6EC4(0);
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1004A6EC4(1u);
  sub_100092AB8(v7, a3);
  return sub_1004A6F14();
}

void sub_100104040(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[2];
  if (*v1 != 2)
  {
    v5 = *(v1 + 8);
    sub_1004A6EC4(1u);
    FlagsUpdate.hash(into:)(a1, v3 & 0xFFFFFFFF01010101, v5);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1004A6EC4(0);
    return;
  }

  sub_1004A6EC4(0);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1004A6EC4(1u);

  sub_100092AB8(a1, v4);
}

Swift::Int sub_100104104(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  sub_1004A6E94();
  if (v2 != 2)
  {
    sub_1004A6EC4(1u);
    FlagsUpdate.hash(into:)(v6, v2 & 0xFFFFFFFF01010101, v3);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1004A6EC4(0);
    return sub_1004A6F14();
  }

  sub_1004A6EC4(0);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1004A6EC4(1u);
  sub_100092AB8(v6, v4);
  return sub_1004A6F14();
}

uint64_t *sub_1001041D4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(result + 8) == 1)
  {
    v5 = v3 == 0;
    if (v3)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (!v5)
    {
      v4 = 0;
    }

    if (v2)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  else if ((v3 | v2) < 0)
  {
    __break(1u);
  }

  else
  {
    return (v3 == v2);
  }

  return result;
}

void sub_100104228(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = *(v3 + 16);
      if (v6 == v8)
      {
        break;
      }

      if (v6 >= v8)
      {
        __break(1u);
        goto LABEL_32;
      }

      v9 = *(a1 + v5 + 40);
      v10 = *(a1 + v5 + 48);
      v11 = *(a1 + v5 + 56);
      v12 = *(v3 + v5 + 32);
      v13 = *(v3 + v5 + 40);
      v14 = *(v3 + v5 + 48);
      v15 = *(v3 + v5 + 56);
      LODWORD(v25) = *(a1 + v5 + 32);
      *(&v25 + 1) = v9;
      LOBYTE(v26) = v10;
      *(&v26 + 1) = v11;
      LODWORD(v27) = v12;
      *(&v27 + 1) = v13;
      LOBYTE(v28) = v14;
      *(&v28 + 1) = v15;
      if (v12 != v25)
      {
        goto LABEL_23;
      }

      if (v9 == 2)
      {
        if (v13 != 2)
        {
          goto LABEL_23;
        }
      }

      else if (v13 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(v9 & 0xFFFFFFFF01010101, v10, v13 & 0xFFFFFFFF01010101, v14) & 1) == 0)
      {
LABEL_23:

LABEL_24:

LABEL_25:
        sub_100025F40(&v25, &qword_1005D0968, &qword_1004D44B0);
        break;
      }

      if (v11)
      {
        if (!v15)
        {
          goto LABEL_24;
        }

        swift_bridgeObjectRetain_n();

        v17 = sub_100083478(v16, v15);

        if ((v17 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v15)
      {
        goto LABEL_24;
      }

      v29 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100091CE8(0, v7[2] + 1, 1);
        v7 = v29;
      }

      v19 = v7[2];
      v18 = v7[3];
      if (v19 >= v18 >> 1)
      {
        sub_100091CE8((v18 > 1), v19 + 1, 1);
        v7 = v29;
      }

      ++v6;
      v7[2] = v19 + 1;
      v20 = &v7[8 * v19];
      v21 = v25;
      v22 = v26;
      v23 = v28;
      v20[4] = v27;
      v20[5] = v23;
      v20[2] = v21;
      v20[3] = v22;
      v5 += 32;
    }

    while (v4 != v6);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v24 = v7[2];

  if (v24)
  {
    if (*(v3 + 16) < v24)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      sub_1001646B8(0, v24);
    }
  }
}

uint64_t sub_100104488(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (a1[1])
  {
    if (v4 == v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    return v7 & 1;
  }

  else if (v6)
  {
    return 0;
  }

  else
  {
    return sub_1001045E0(v4, v5) & 1;
  }
}

uint64_t sub_1001044E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = *(v4 - 2);
      if (*(v3 - 2) == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(*(v3 - 2) & 0xFFFFFFFF01010101, *(v3 - 8), *(v4 - 2) & 0xFFFFFFFF01010101, *(v4 - 8)) & 1) == 0)
      {
        return 0;
      }

      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        v8 = sub_100083478(v5, v6);

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1001045E0(uint64_t result, uint64_t a2)
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
    v6 = *v4++;
    v5 = v6;
    v7 = *v3++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010463C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = v6 >> 14;
      if (v6 >> 14 > 1)
      {
        if (v8 == 2)
        {
          v12 = v7 & 0xC000;
          v13 = (v7 ^ v6);
          if (v12 != 0x8000 || v13 != 0)
          {
            return 0;
          }
        }

        else if (*v3 > 0xC001u)
        {
          if (v6 == 49154)
          {
            if (v7 != 49154)
            {
              return 0;
            }
          }

          else if (v7 != 49155)
          {
            return 0;
          }
        }

        else if (v6 == 49152)
        {
          if (v7 != 49152)
          {
            return 0;
          }
        }

        else if (v7 != 49153)
        {
          return 0;
        }
      }

      else if (v8)
      {
        v9 = v7 & 0xC000;
        v10 = (v7 ^ v6);
        if (v9 != 0x4000 || v10 != 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7 >> 14)
        {
          v5 = 0;
        }

        else
        {
          v5 = v6 == v7;
        }

        if (!v5)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100104744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = 1;
  while (v3 != v2)
  {
    v6 = (v4 + 16 * v3);
    v7 = a2 + 32 + 16 * v3;
    if ((*(v6 + 2) | (*(v6 + 2) << 32)) != (*(v7 + 8) | (*(v7 + 8) << 32)))
    {
      return 0;
    }

    v8 = *v6;
    v9 = *v7;
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      v13 = (v9 + 32);
      while (v10)
      {
        if (*v12 != *v13)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100104818(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (*(result + 48))
  {
    if (v2 != v3)
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 48))
    {
      return 0;
    }

    v5 = *(v2 + 16);
    if (v5 != *(v3 + 16))
    {
      return 0;
    }

    if (v5)
    {
      v6 = v2 == v3;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v12 = (v2 + 32);
      v13 = (v3 + 32);
      while (v5)
      {
        if (*v13 != *v12)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v5)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }
  }

LABEL_13:
  sub_100104D00(result, v31);
  sub_100104D00(a2, v32);
  sub_10000C9C0(&qword_1005D0930, &qword_1004D4398);
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v8 = *(v25 + 16);
      if (v8 != *(v18 + 16))
      {
        goto LABEL_37;
      }

      if (v8 && v25 != v18)
      {
        v9 = (v25 + 32);
        v10 = (v18 + 32);
        while (*v10 == *v9)
        {
          ++v9;
          ++v10;
          if (!--v8)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_37;
      }

LABEL_21:
      if ((sub_1001044E0(v26, v19) & 1) == 0)
      {
LABEL_37:

        goto LABEL_38;
      }

      v16 = sub_100102318(v27, v20);

      if ((v16 & 1) == 0)
      {
LABEL_38:
        v11 = 0;
        goto LABEL_39;
      }

      if (v29)
      {
        if (v28)
        {
          if (v22)
          {
            v11 = v21 != 0;
LABEL_39:

            sub_1000197E0(v32);
            sub_1000197E0(v31);
            return v11;
          }
        }

        else if (v22)
        {
          v11 = v21 == 0;
          goto LABEL_39;
        }

LABEL_63:
        v11 = 0;
        goto LABEL_39;
      }

      if (v22)
      {
        goto LABEL_63;
      }

      if (((v21 | v28) & 0x8000000000000000) == 0)
      {
        if (v21 == v28)
        {
          v11 = 1;
          goto LABEL_39;
        }

        goto LABEL_63;
      }

      goto LABEL_65;
    }
  }

  if (!swift_dynamicCast())
  {
LABEL_41:
    sub_100025F40(v31, &qword_1005D0938, &qword_1004D43A0);
    return 0;
  }

  if (!swift_dynamicCast())
  {

    goto LABEL_41;
  }

  if ((sub_1001029D0(v24, v17) & 1) == 0)
  {

LABEL_49:

    goto LABEL_50;
  }

  if ((sub_1001045E0(v26, v19) & 1) == 0 || (sub_1001044E0(v27, v20) & 1) == 0)
  {

    goto LABEL_49;
  }

  v15 = sub_100102318(v28, v21);

  if ((v15 & 1) == 0)
  {
LABEL_50:
    v14 = 0;
LABEL_51:

    sub_1000197E0(v32);
    sub_1000197E0(v31);
    return v14;
  }

  if (v30)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v23)
  {
LABEL_60:
    v14 = 0;
    goto LABEL_51;
  }

  if (((v22 | v29) & 0x8000000000000000) == 0)
  {
    if (v22 == v29)
    {
LABEL_59:
      v14 = 1;
      goto LABEL_51;
    }

    goto LABEL_60;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_100104D00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100104D64(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v16 = *a2;
  v17 = *(a2 + 2);
  if (v4 == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v16 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(v4 & 0xFFFFFFFF01010101, v5, v16 & 0xFFFFFFFF01010101, BYTE8(v16)) & 1) == 0)
  {
    goto LABEL_32;
  }

  v7 = v17;
  if (v6)
  {
    if (!v17)
    {
      sub_100105484(&v16, v15);
      goto LABEL_32;
    }

    sub_100105484(&v16, v15);
    v8 = sub_100083478(v6, v7);
    result = sub_1001054BC(&v16);
    if ((v8 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_32;
    }

    result = sub_100105484(&v16, v15);
  }

  v10 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*(a2 + 6) != *(a1 + 6))
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_32;
    }
  }

  v11 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*(a2 + 8) != *(a1 + 8))
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_32;
    }
  }

  if (a1[6])
  {
    if ((a2[3] & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_31:
    v14 = static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(*(a1 + 14), a1[8], a1[9], *(a2 + 14), *(a2 + 8), *(a2 + 9));
    return v14 & 1;
  }

  if (a2[3])
  {
LABEL_32:
    v14 = 0;
    return v14 & 1;
  }

  v12 = a1[5];
  v13 = *(a2 + 5);
  if (((v13 | v12) & 0x8000000000000000) == 0)
  {
    if (v13 == v12)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

BOOL sub_100104EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (a4 == 2)
    {
      return 0;
    }

    v7 = a6;
    v8 = static FlagsUpdate.__derived_struct_equals(_:_:)(a1 & 0xFFFFFFFF01010101, a2, a4 & 0xFFFFFFFF01010101, a5);
    a6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    v9 = a6;

    v10 = sub_100083478(a3, v9);

    return (v10 & 1) != 0;
  }

  return !a6;
}

uint64_t sub_100105098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100105100(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100105170()
{
  result = qword_1005D0950;
  if (!qword_1005D0950)
  {
    result = swift_getWitnessTable(byte_1004D4C0C, &_s18CondStoreResponsesVN, v0, v1);
    atomic_store(result, &qword_1005D0950);
  }

  return result;
}

uint64_t sub_1001051C4()
{

  return _swift_deallocObject(v0, 65, 7);
}

unint64_t sub_10010521C()
{
  result = qword_1005D0958;
  if (!qword_1005D0958)
  {
    result = swift_getWitnessTable(byte_1004D49F0, &_s14BasicResponsesVN, v0, v1);
    atomic_store(result, &qword_1005D0958);
  }

  return result;
}

uint64_t sub_100105270()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1001052C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100105308(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_10010536C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1001053C8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100105430()
{
  result = qword_1005D0960;
  if (!qword_1005D0960)
  {
    result = swift_getWitnessTable("I)\v", &type metadata for PendingServerResponses.Change, v0, v1);
    atomic_store(result, &qword_1005D0960);
  }

  return result;
}

uint64_t sub_1001054EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100105554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001055C4(uint64_t a1, unsigned int a2)
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

uint64_t sub_100105620(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100105690(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 49))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 48) & 0x7E | (*(a1 + 48) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001056E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_100105780()
{
  result = qword_1005D0988;
  if (!qword_1005D0988)
  {
    result = swift_getWitnessTable("m.\v", &type metadata for PendingServerResponses.CapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D0988);
  }

  return result;
}

unint64_t sub_1001057D4()
{
  result = qword_1005D0990;
  if (!qword_1005D0990)
  {
    result = swift_getWitnessTable(byte_1004D48DC, &type metadata for PendingServerResponses.CapturedValue.CondStoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1005D0990);
  }

  return result;
}

unint64_t sub_100105828()
{
  result = qword_1005D0998;
  if (!qword_1005D0998)
  {
    result = swift_getWitnessTable("q*\v", &_s18CondStoreResponsesV13CapturedValueVN, v0, v1);
    atomic_store(result, &qword_1005D0998);
  }

  return result;
}

unint64_t sub_10010587C()
{
  result = qword_1005D09A0;
  if (!qword_1005D09A0)
  {
    result = swift_getWitnessTable("\r/\v", &type metadata for PendingServerResponses.CapturedValue.BasicCodingKeys, v0, v1);
    atomic_store(result, &qword_1005D09A0);
  }

  return result;
}

unint64_t sub_1001058D0()
{
  result = qword_1005D09A8;
  if (!qword_1005D09A8)
  {
    result = swift_getWitnessTable("9-\v", &_s14BasicResponsesV13CapturedValueVN, v0, v1);
    atomic_store(result, &qword_1005D09A8);
  }

  return result;
}

unint64_t sub_100105958()
{
  result = qword_1005D09B0;
  if (!qword_1005D09B0)
  {
    result = swift_getWitnessTable("u&\v", &type metadata for PendingServerResponses.CapturedValue.CondStoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1005D09B0);
  }

  return result;
}

unint64_t sub_1001059B0()
{
  result = qword_1005D09B8;
  if (!qword_1005D09B8)
  {
    result = swift_getWitnessTable(byte_1004D47AC, &type metadata for PendingServerResponses.CapturedValue.BasicCodingKeys, v0, v1);
    atomic_store(result, &qword_1005D09B8);
  }

  return result;
}

unint64_t sub_100105A08()
{
  result = qword_1005D09C0;
  if (!qword_1005D09C0)
  {
    result = swift_getWitnessTable(byte_1004D4864, &type metadata for PendingServerResponses.CapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D09C0);
  }

  return result;
}

unint64_t sub_100105A60()
{
  result = qword_1005D09C8;
  if (!qword_1005D09C8)
  {
    result = swift_getWitnessTable(byte_1004D471C, &type metadata for PendingServerResponses.CapturedValue.BasicCodingKeys, v0, v1);
    atomic_store(result, &qword_1005D09C8);
  }

  return result;
}

unint64_t sub_100105AB8()
{
  result = qword_1005D09D0;
  if (!qword_1005D09D0)
  {
    result = swift_getWitnessTable("]+\v", &type metadata for PendingServerResponses.CapturedValue.BasicCodingKeys, v0, v1);
    atomic_store(result, &qword_1005D09D0);
  }

  return result;
}

unint64_t sub_100105B10()
{
  result = qword_1005D09D8;
  if (!qword_1005D09D8)
  {
    result = swift_getWitnessTable("E'\v", &type metadata for PendingServerResponses.CapturedValue.CondStoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1005D09D8);
  }

  return result;
}

unint64_t sub_100105B68()
{
  result = qword_1005D09E0;
  if (!qword_1005D09E0)
  {
    result = swift_getWitnessTable(byte_1004D468C, &type metadata for PendingServerResponses.CapturedValue.CondStoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1005D09E0);
  }

  return result;
}

unint64_t sub_100105BC0()
{
  result = qword_1005D09E8;
  if (!qword_1005D09E8)
  {
    result = swift_getWitnessTable(byte_1004D47D4, &type metadata for PendingServerResponses.CapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D09E8);
  }

  return result;
}

unint64_t sub_100105C18()
{
  result = qword_1005D09F0;
  if (!qword_1005D09F0)
  {
    result = swift_getWitnessTable(byte_1004D47FC, &type metadata for PendingServerResponses.CapturedValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D09F0);
  }

  return result;
}

uint64_t sub_100105C74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_100105CBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100105D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((sub_1001045DC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1001044E0(v2, v6) & 1) == 0)
  {
    return 0;
  }

  result = sub_100102318(v3, v7);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v4)
    {
      if (v9)
      {
        return v8 != 0;
      }
    }

    else if (v9)
    {
      return v8 == 0;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

  if (((v8 | v4) & 0x8000000000000000) == 0)
  {
    return v8 == v4;
  }

  __break(1u);
  return result;
}

uint64_t BodyStructure.Multipart.Extension.parameters.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100105EA4()
{
  sub_10018A6B4(_swiftEmptyArrayStorage);
  v2 = v1;
  v4 = v3;
  v6 = v5;

  *v0 = v2;
  v0[1] = v4;
  v0[2] = v6;
  return result;
}

double sub_100105F18@<D0>(uint64_t a1@<X8>)
{
  sub_100106F44(*(v1 + 8), *(v1 + 24), v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

unint64_t sub_100105F6C(uint64_t a1)
{
  result = sub_100105F94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100105F94()
{
  result = qword_1005D09F8;
  if (!qword_1005D09F8)
  {
    result = swift_getWitnessTable(byte_1004D49C8, &_s14BasicResponsesVN, v0, v1);
    atomic_store(result, &qword_1005D09F8);
  }

  return result;
}

uint64_t sub_100105FE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10000C9C0(&qword_1005D0A00, &qword_1004D4A70);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10002587C(a1, a1[3]);
  sub_100107338();
  sub_1004A6FA4();
  v14 = 0;
  sub_1004A6BE4();
  if (!v5)
  {
    v13 = 1;
    sub_1004A6BE4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10010617C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x577365676E616863;
  }
}

uint64_t sub_1001061C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x577365676E616863 && a2 == 0xEE00444955687469;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004AA3A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

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

uint64_t sub_1001062B4(uint64_t a1)
{
  v2 = sub_100107338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001062F0(uint64_t a1)
{
  v2 = sub_100107338();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10010634C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a3;
  v83 = a1;
  v84 = a2;
  v82 = _s12LocalMailboxV6LoggerVMa(0);
  __chkstk_darwin(v82);
  __chkstk_darwin(v9);
  v11 = &v80 - v10;
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v15 = &v80 - v14;
  __chkstk_darwin(v16);
  v18 = &v80 - v17;
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  __chkstk_darwin(v22);
  v24 = &v80 - v23;
  __chkstk_darwin(v25);
  v27 = &v80 - v26;
  __chkstk_darwin(v28);
  v32 = &v80 - v29;
  v81 = a5;
  if ((a5 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) != 0)
    {
      v59 = v31;
      v60 = v30;
      sub_1001071B0(a6, v30, _s12LocalMailboxV6LoggerVMa);
      sub_1001071B0(a6, v11, _s12LocalMailboxV6LoggerVMa);
      sub_1001071B0(a6, v59, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v61 = sub_1004A4A54();
      v62 = sub_1004A6014();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v89 = v86;
        *v63 = 68158979;
        *(v63 + 4) = 2;
        *(v63 + 8) = 256;
        v64 = v82;
        v65 = v11[*(v82 + 20)];
        sub_100107218(v11, _s12LocalMailboxV6LoggerVMa);
        *(v63 + 10) = v65;
        *(v63 + 11) = 1040;
        *(v63 + 13) = 2;
        *(v63 + 17) = 512;
        v66 = *(v59 + *(v64 + 20) + 2);
        sub_100107218(v59, _s12LocalMailboxV6LoggerVMa);
        *(v63 + 19) = v66;
        *(v63 + 21) = 2160;
        *(v63 + 23) = 0x786F626C69616DLL;
        *(v63 + 31) = 2085;
        v67 = v60 + *(v64 + 20);
        v68 = *(v67 + 8);
        v69 = *(v67 + 16);

        sub_100107218(v60, _s12LocalMailboxV6LoggerVMa);
        v87 = v68;
        v88 = v69;
        v70 = sub_1004A5824();
        v72 = sub_10015BA6C(v70, v71, &v89);

        *(v63 + 33) = v72;
        _os_log_impl(&_mh_execute_header, v61, v62, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Flag/label change without UID and without sequence number.", v63, 0x29u);
        sub_1000197E0(v86);
      }

      else
      {
        sub_100107218(v59, _s12LocalMailboxV6LoggerVMa);
        sub_100107218(v11, _s12LocalMailboxV6LoggerVMa);

        sub_100107218(v60, _s12LocalMailboxV6LoggerVMa);
      }
    }

    else
    {
      v47 = a4;
      sub_1001071B0(a6, v21, _s12LocalMailboxV6LoggerVMa);
      sub_1001071B0(a6, v18, _s12LocalMailboxV6LoggerVMa);
      sub_1001071B0(a6, v15, _s12LocalMailboxV6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v48 = sub_1004A4A54();
      v49 = sub_1004A6004();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v89 = v80;
        *v50 = 68159235;
        *(v50 + 4) = 2;
        *(v50 + 8) = 256;
        v51 = v82;
        v52 = v18[*(v82 + 20)];
        v81 = v47;
        sub_100107218(v18, _s12LocalMailboxV6LoggerVMa);
        *(v50 + 10) = v52;
        *(v50 + 11) = 1040;
        *(v50 + 13) = 2;
        *(v50 + 17) = 512;
        v53 = *&v15[*(v51 + 20) + 2];
        sub_100107218(v15, _s12LocalMailboxV6LoggerVMa);
        *(v50 + 19) = v53;
        *(v50 + 21) = 2160;
        *(v50 + 23) = 0x786F626C69616DLL;
        *(v50 + 31) = 2085;
        v54 = &v21[*(v51 + 20)];
        v55 = *(v54 + 1);
        v56 = *(v54 + 4);

        sub_100107218(v21, _s12LocalMailboxV6LoggerVMa);
        v87 = v55;
        v88 = v56;
        v57 = sub_1004A5824();
        v47 = sub_10015BA6C(v57, v58, &v89);

        *(v50 + 33) = v47;
        LODWORD(v47) = v81;
        *(v50 + 41) = 1024;
        *(v50 + 43) = v47;
        _os_log_impl(&_mh_execute_header, v48, v49, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Inserting flag/label change without UID. Sequence number %u.", v50, 0x2Fu);
        sub_1000197E0(v80);
      }

      else
      {
        sub_100107218(v15, _s12LocalMailboxV6LoggerVMa);
        sub_100107218(v18, _s12LocalMailboxV6LoggerVMa);

        sub_100107218(v21, _s12LocalMailboxV6LoggerVMa);
      }

      v74 = v85;
      v73 = v86;
      v75 = v86[3];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_1000859C4(0, *(v75 + 2) + 1, 1, v75);
      }

      v77 = *(v75 + 2);
      v76 = *(v75 + 3);
      if (v77 >= v76 >> 1)
      {
        v75 = sub_1000859C4((v76 > 1), v77 + 1, 1, v75);
      }

      *(v75 + 2) = v77 + 1;
      v78 = &v75[32 * v77];
      *(v78 + 8) = v47;
      v79 = v84;
      *(v78 + 5) = v83;
      v78[48] = v79;
      *(v78 + 7) = v74;
      v73[3] = v75;
    }
  }

  else
  {
    sub_1001071B0(a6, &v80 - v29, _s12LocalMailboxV6LoggerVMa);
    sub_1001071B0(a6, v27, _s12LocalMailboxV6LoggerVMa);
    sub_1001071B0(a6, v24, _s12LocalMailboxV6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v33 = sub_1004A4A54();
    v34 = sub_1004A6004();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v89 = v80;
      *v35 = 68159235;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      v36 = v82;
      v37 = v27[*(v82 + 20)];
      sub_100107218(v27, _s12LocalMailboxV6LoggerVMa);
      *(v35 + 10) = v37;
      *(v35 + 11) = 1040;
      *(v35 + 13) = 2;
      *(v35 + 17) = 512;
      v38 = *&v24[*(v36 + 20) + 2];
      sub_100107218(v24, _s12LocalMailboxV6LoggerVMa);
      *(v35 + 19) = v38;
      *(v35 + 21) = 2160;
      *(v35 + 23) = 0x786F626C69616DLL;
      *(v35 + 31) = 2085;
      v39 = &v32[*(v36 + 20)];
      v40 = *(v39 + 1);
      v41 = *(v39 + 4);

      sub_100107218(v32, _s12LocalMailboxV6LoggerVMa);
      v87 = v40;
      v88 = v41;
      v42 = sub_1004A5824();
      v44 = sub_10015BA6C(v42, v43, &v89);

      *(v35 + 33) = v44;
      *(v35 + 41) = 1024;
      v45 = v81;
      *(v35 + 43) = v81;
      _os_log_impl(&_mh_execute_header, v33, v34, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Inserting flag/label change for UID %u.", v35, 0x2Fu);
      sub_1000197E0(v80);

      v46 = v85;
    }

    else
    {
      sub_100107218(v24, _s12LocalMailboxV6LoggerVMa);
      sub_100107218(v27, _s12LocalMailboxV6LoggerVMa);

      sub_100107218(v32, _s12LocalMailboxV6LoggerVMa);
      v46 = v85;
      v45 = v81;
    }

    sub_100186664(v83, v84, v46, v45);
  }
}

void sub_100106C70(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  sub_1001071B0(a1, v19 - v6, type metadata accessor for MailboxTaskLogger);
  sub_1001071B0(a1, v4, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v8 = sub_1004A4A54();
  v9 = sub_1004A6014();
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
    sub_100107218(v4, type metadata accessor for MailboxTaskLogger);
    *(v10 + 29) = v13;
    *(v10 + 31) = 2160;
    *(v10 + 33) = 0x786F626C69616DLL;
    *(v10 + 41) = 2085;
    v14 = *(v12 + 4);
    v15 = *(v12 + 10);

    sub_100107218(v7, type metadata accessor for MailboxTaskLogger);
    v19[1] = v14;
    v20 = v15;
    v16 = sub_1004A5824();
    v18 = sub_10015BA6C(v16, v17, &v21);

    *(v10 + 43) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Attempting to store HIGHESTMODSEQ, but PendingServerResponses does not support CONDSTORE.", v10, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100107218(v4, type metadata accessor for MailboxTaskLogger);

    sub_100107218(v7, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_100106F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v5 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  sub_100016D2C();
  sub_1004A7114();
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = (a1 + 32);
    do
    {
      v19 = *v18++;
      v32 = v19;
      MessageIdentifierSet.insert(_:)(v33, &v32, v11);
      --v17;
    }

    while (v17);
  }

  sub_100025FDC(v13, v16, &unk_1005D91B0, &unk_1004CF400);
  v30 = sub_100143D50();
  v21 = v20;
  sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
  sub_1004A7114();
  v22 = *(v31 + 16);
  if (v22)
  {
    v23 = (v31 + 32);
    do
    {
      v24 = *v23;
      v23 += 8;
      v32 = v24;
      MessageIdentifierSet.insert(_:)(v33, &v32, v5);
      --v22;
    }

    while (v22);
  }

  sub_100025FDC(v7, v10, &qword_1005CDA58, &qword_1004CF7C0);
  v25 = sub_10014433C();
  v27 = v26;
  result = sub_100025F40(v10, &qword_1005CDA58, &qword_1004CF7C0);
  *a3 = v30;
  *(a3 + 8) = v21;
  *(a3 + 16) = v25;
  *(a3 + 24) = v27;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return result;
}

uint64_t sub_1001071B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100107218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100107278(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1001072D4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100107338()
{
  result = qword_1005D0A08;
  if (!qword_1005D0A08)
  {
    result = swift_getWitnessTable("],\v", &_s14BasicResponsesV13CapturedValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D0A08);
  }

  return result;
}

unint64_t sub_1001073A0()
{
  result = qword_1005D0A10;
  if (!qword_1005D0A10)
  {
    result = swift_getWitnessTable("U\v", &_s14BasicResponsesV13CapturedValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D0A10);
  }

  return result;
}

unint64_t sub_1001073F8()
{
  result = qword_1005D0A18;
  if (!qword_1005D0A18)
  {
    result = swift_getWitnessTable("%#\v", &_s14BasicResponsesV13CapturedValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D0A18);
  }

  return result;
}

unint64_t sub_100107450()
{
  result = qword_1005D0A20;
  if (!qword_1005D0A20)
  {
    result = swift_getWitnessTable(byte_1004D4AAC, &_s14BasicResponsesV13CapturedValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D0A20);
  }

  return result;
}

uint64_t sub_1001074A4(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  result = static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(*a1, a1[1], a1[2], *a2, a2[1], a2[2]);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (((v3 | v2) & 0x8000000000000000) == 0)
  {
    return v3 == v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100107504@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  __chkstk_darwin(v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v50 = v2;
  v16 = v2[2];
  sub_100016D2C();
  sub_1004A7114();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 32);
    do
    {
      v19 = *v18++;
      v52 = v19;
      MessageIdentifierSet.insert(_:)(&v51, &v52, v10);
      --v17;
    }

    while (v17);
  }

  sub_100025FDC(v12, v15, &unk_1005D91B0, &unk_1004CF400);
  v20 = sub_100143D50();
  v48 = v21;
  v49 = v20;
  sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
  v22 = v50;
  v23 = v50[4];
  sub_1004A7114();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = (v23 + 32);
    do
    {
      v26 = *v25;
      v25 += 8;
      v52 = v26;
      MessageIdentifierSet.insert(_:)(&v51, &v52, v4);
      --v24;
    }

    while (v24);
  }

  sub_100025FDC(v6, v9, &qword_1005CDA58, &qword_1004CF7C0);
  v27 = sub_10014433C();
  v29 = v28;
  result = sub_100025F40(v9, &qword_1005CDA58, &qword_1004CF7C0);
  v31 = *v22;
  v32 = *(*v22 + 16);
  v33 = _swiftEmptyArrayStorage;
  if (v32)
  {
    v46 = v29;
    v47 = v27;
    v51 = _swiftEmptyArrayStorage;
    sub_100092308(0, v32, 0);
    v33 = v51;
    v34 = (v31 + 56);
    do
    {
      v35 = *(v34 - 6);
      v36 = *(v34 - 2);
      v37 = *v34;

      v38 = sub_100108BD8(v36, v35);

      v51 = v33;
      v40 = v33[2];
      v39 = v33[3];
      if (v40 >= v39 >> 1)
      {
        result = sub_100092308((v39 > 1), v40 + 1, 1);
        v33 = v51;
      }

      v34 += 4;
      v33[2] = v40 + 1;
      v41 = &v33[2 * v40];
      v41[4] = v38;
      v41[5] = v37;
      --v32;
    }

    while (v32);
    v22 = v50;
    v29 = v46;
    v27 = v47;
  }

  v42 = v22[5];
  v43 = *(v22 + 48);
  if (v43)
  {
    v42 = 0;
  }

  v44 = v48;
  v45 = v49;
  *a1 = v33;
  *(a1 + 8) = v45;
  *(a1 + 16) = v44;
  *(a1 + 24) = v27;
  *(a1 + 32) = v29;
  *(a1 + 40) = v42;
  *(a1 + 48) = v43 | 0x80;
  return result;
}