uint64_t sub_10009F2AC(uint64_t a1)
{
  sub_100016D2C();
  result = sub_1004A7114();
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = MessageIdentifierSet.insert(_:)(v12, &v11, v10))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(a1 + 48) + ((v8 << 8) | (4 * v9)));
    v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009F3CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = sub_10002587C(a1, v9);
  v12 = sub_10012154C(v11, a2, a3, v9, v10);
  if ((v12 & 1) != 0 && (a5 & 1) == 0)
  {
    v13 = a1[3];
    v14 = a1[4];
    sub_10002587C(a1, v13);
    v12 = (*(v14 + 56))(v13, v14) ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_10009F468(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 172);
  v6 = *(a5 + 8);
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  v10[0] = *a5;
  v10[1] = v6;
  v11 = v5;
  v12 = v7;
  v13 = v8;
  return sub_10012182C(v10, a1 & 1, a2) & 1;
}

uint64_t sub_10009F4BC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v65 = a7;
  v67 = a8;
  v68 = a5;
  v13 = type metadata accessor for MailboxSyncState(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3[12];
  if (v16)
  {
    HIDWORD(v63) = a1;
    v17 = v16 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v18 = _s13SelectedStateV7WrappedVMa(0);
    sub_1000B4820(v17 + *(v18 + 20), v15, type metadata accessor for MailboxSyncState);
    v64 = v16;

    v19 = sub_1000D2C78(a2 & 0x101010101FFFF01);
    v21 = v20;
    v23 = v22;
    sub_1000B35D0(v15, type metadata accessor for MailboxSyncState);
    if ((sub_100014D94() & 1) != 0 && (sub_100014D94() & 1) == 0 && ((sub_100167D14(v19, v21) & 1) == 0 || (sub_100014D94() & 1) == 0))
    {
      v62 = v67;
      *v67 = v64;
      v62[1] = v19;
      v62[2] = v21;
      v62[3] = v23;
      *(v62 + 40) = 0;
      goto LABEL_22;
    }

    v66 = a6;

    v24 = *(a3 + 43);
    v25 = *a3;
    v26 = a3[1];
    v27 = a3[2];
    v28 = a4;
    v29 = *(a3 + 6);
    swift_bridgeObjectRetain_n();

    *(&v75 + 1) = sub_1000CE570(&off_100599030);
    LOBYTE(v76) = 1;
    v80 = 0u;
    v81 = 0u;
    v82 = 256;
    *&v73 = v25;
    *(&v73 + 1) = v26;
    LOWORD(v74) = v24;
    *(&v74 + 1) = v27;
    LODWORD(v75) = v29;
    v69 = v27;
    v70 = v29;
    *(&v76 + 1) = &type metadata for ReSyncMailbox;
    sub_100026044();
    sub_1004A6674();
    DWORD2(v79) = *(a3 + 8);
    BYTE12(v79) = *(a3 + 36);
    *(&v79 + 13) = WORD2(v63);
    LOWORD(v92) = v82;
    v85 = v75;
    v86 = v76;
    v87 = v77;
    v88 = v78;
    v83 = v73;
    v84 = v74;
    v90 = v80;
    v91 = v81;
    v89 = v79;
    *(&v92 + 1) = _swiftEmptyArrayStorage;
    v93 = _swiftEmptyArrayStorage;
    sub_10000E268(&v83, &v73, &qword_1005CF510, &qword_1004D2788);
    if ((sub_100012728(&v76 + 1, v28) & 1) == 0)
    {
      if (!*(v68 + 16) || (v36 = sub_100063B5C(*(&v74 + 1), v75), (v37 & 1) == 0) || (v38 = *(*(v68 + 56) + 8 * v36), , v39 = , v40 = sub_10012DF2C(v39, v38), , , (v40 & 1) != 0))
      {
        if ((v65 & 1) != 0 || (v76 & 1) == 0)
        {
          sub_100025F40(&v73, &qword_1005CF510, &qword_1004D2788);
          v41 = sub_10000C9C0(&qword_1005CF510, &qword_1004D2788);
          v42 = v67;
          v67[3] = v41;
          v42[4] = sub_1000B458C(&qword_1005CF518, &qword_1005CF510, &qword_1004D2788);
          v43 = swift_allocObject();
          *v42 = v43;
          v44 = v92;
          *(v43 + 144) = v91;
          *(v43 + 160) = v44;
          *(v43 + 176) = v93;
          v45 = v88;
          *(v43 + 80) = v87;
          *(v43 + 96) = v45;
          v46 = v90;
          *(v43 + 112) = v89;
          *(v43 + 128) = v46;
          v47 = v84;
          *(v43 + 16) = v83;
          *(v43 + 32) = v47;
          v48 = v86;
          *(v43 + 48) = v85;
          *(v43 + 64) = v48;

LABEL_21:
          *(v42 + 40) = 1;
          goto LABEL_22;
        }
      }
    }

    sub_100025F40(&v73, &qword_1005CF510, &qword_1004D2788);
    sub_100025F40(&v83, &qword_1005CF510, &qword_1004D2788);

    v30 = v67;
    v67[4] = 0;
    *v30 = 0u;
    *(v30 + 1) = 0u;
  }

  else
  {
    v66 = a6;
    v31 = *(a3 + 43);
    v32 = *a3;
    v33 = a3[1];
    v34 = a3[2];
    v35 = *(a3 + 6);
    swift_bridgeObjectRetain_n();

    *(&v75 + 1) = sub_1000CE570(&off_100599058);
    LOBYTE(v76) = 1;
    v80 = 0u;
    v81 = 0u;
    v82 = 256;
    *&v73 = v32;
    *(&v73 + 1) = v33;
    LOWORD(v74) = v31;
    *(&v74 + 1) = v34;
    LODWORD(v75) = v35;
    v71 = v34;
    v72 = v35;
    *(&v76 + 1) = &type metadata for ReSyncMailbox;
    sub_100026044();
    sub_1004A6674();
    DWORD2(v79) = *(a3 + 8);
    BYTE12(v79) = *(a3 + 36);
    *(&v79 + 13) = a1;
    LOWORD(v92) = v82;
    v85 = v75;
    v86 = v76;
    v87 = v77;
    v88 = v78;
    v83 = v73;
    v84 = v74;
    v90 = v80;
    v91 = v81;
    v89 = v79;
    *(&v92 + 1) = _swiftEmptyArrayStorage;
    v93 = _swiftEmptyArrayStorage;
    sub_10000E268(&v83, &v73, &qword_1005CF510, &qword_1004D2788);
    if ((sub_100012728(&v76 + 1, a4) & 1) == 0)
    {
      if (!*(v68 + 16) || (v49 = sub_100063B5C(*(&v74 + 1), v75), (v50 & 1) == 0) || (v51 = *(*(v68 + 56) + 8 * v49), , v52 = , v53 = sub_10012DF2C(v52, v51), , , (v53 & 1) != 0))
      {
        if ((v65 & 1) != 0 || (v76 & 1) == 0)
        {
          sub_100025F40(&v73, &qword_1005CF510, &qword_1004D2788);
          v54 = sub_10000C9C0(&qword_1005CF510, &qword_1004D2788);
          v42 = v67;
          v67[3] = v54;
          v42[4] = sub_1000B458C(&qword_1005CF518, &qword_1005CF510, &qword_1004D2788);
          v55 = swift_allocObject();
          *v42 = v55;
          v56 = v92;
          *(v55 + 144) = v91;
          *(v55 + 160) = v56;
          *(v55 + 176) = v93;
          v57 = v88;
          *(v55 + 80) = v87;
          *(v55 + 96) = v57;
          v58 = v90;
          *(v55 + 112) = v89;
          *(v55 + 128) = v58;
          v59 = v84;
          *(v55 + 16) = v83;
          *(v55 + 32) = v59;
          v60 = v86;
          *(v55 + 48) = v85;
          *(v55 + 64) = v60;
          goto LABEL_21;
        }
      }
    }

    sub_100025F40(&v73, &qword_1005CF510, &qword_1004D2788);
    sub_100025F40(&v83, &qword_1005CF510, &qword_1004D2788);
    v30 = v67;
    *v67 = 0u;
    *(v30 + 1) = 0u;
    v30[4] = 0;
  }

  *(v30 + 40) = -1;
LABEL_22:
}

double sub_10009FBE0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t (*a5)(uint64_t *)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t (*a10)(void), uint64_t a11, char *a12, unint64_t a13, uint64_t a14, char a15)
{
  v717 = a8;
  v718 = a7;
  v749 = a6;
  v723 = a4;
  v728 = a3;
  v730 = a2;
  v825 = a13;
  v824 = BYTE3(a13);
  v822 = BYTE5(a13);
  v823 = BYTE4(a13);
  v820 = HIBYTE(a13);
  v821 = BYTE6(a13);
  v19 = sub_10000C9C0(&qword_1005CF3C0, &qword_1004D26A8);
  __chkstk_darwin(v19 - 8);
  v685 = v670 - v20;
  v686 = sub_10000C9C0(&qword_1005CF3C8, &qword_1004D26B0);
  __chkstk_darwin(v686);
  v682 = v670 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v683 = v670 - v23;
  v706 = _s29DetermineMessageBatchesResultOMa(0);
  __chkstk_darwin(v706);
  v707 = (v670 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v25 - 8);
  v710 = v670 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  __chkstk_darwin(v27 - 8);
  v697 = v670 - v28;
  v720 = type metadata accessor for PendingPersistenceUpdates(0);
  __chkstk_darwin(v720);
  v696 = v670 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v737 = type metadata accessor for SearchMailbox(0);
  __chkstk_darwin(v737);
  v736 = (v670 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v738 = sub_10000C9C0(&qword_1005CF308, &qword_1004D2600);
  __chkstk_darwin(v738);
  v735 = v670 - v31;
  v751 = _s19UserInitiatedSearchV5StateOMa(0);
  __chkstk_darwin(v751);
  v739 = v670 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v750 = _s19UserInitiatedSearchVMa(0);
  v745 = *(v750 - 8);
  __chkstk_darwin(v750);
  v742 = (v670 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v712 = type metadata accessor for DownloadTask(0);
  __chkstk_darwin(v712);
  v689 = (v670 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v691 = (v670 - v36);
  __chkstk_darwin(v37);
  v700 = (v670 - v38);
  __chkstk_darwin(v39);
  v708 = (v670 - v40);
  v713 = sub_10000C9C0(&qword_1005CF310, &unk_1004D2608);
  __chkstk_darwin(v713);
  v688 = v670 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v690 = v670 - v43;
  __chkstk_darwin(v44);
  v701 = v670 - v45;
  __chkstk_darwin(v46);
  v709 = v670 - v47;
  v48 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v48 - 8);
  v679 = v670 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v684 = v670 - v51;
  __chkstk_darwin(v52);
  v731 = v670 - v53;
  __chkstk_darwin(v54);
  v716 = v670 - v55;
  __chkstk_darwin(v56);
  v722 = v670 - v57;
  __chkstk_darwin(v58);
  v746 = v670 - v59;
  v702 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  __chkstk_darwin(v702);
  v680 = v670 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v705 = v670 - v62;
  __chkstk_darwin(v63);
  v714 = v670 - v64;
  v699 = type metadata accessor for MessagesPendingDownload(0);
  __chkstk_darwin(v699);
  v678 = (v670 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v66);
  v681 = (v670 - v67);
  __chkstk_darwin(v68);
  v687 = v670 - v69;
  __chkstk_darwin(v70);
  v698 = (v670 - v71);
  __chkstk_darwin(v72);
  v744 = (v670 - v73);
  __chkstk_darwin(v74);
  v715 = (v670 - v75);
  __chkstk_darwin(v76);
  v719 = v670 - v77;
  __chkstk_darwin(v78);
  v747 = v670 - v79;
  v80 = _s29DetermineNewestMessagesResultOMa(0);
  __chkstk_darwin(v80);
  v82 = (v670 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = type metadata accessor for NewestMessages(0);
  v694 = *(v83 - 8);
  v695 = v83;
  __chkstk_darwin(v83);
  v85 = v670 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v726 = 0;
  v727 = a1;
  v721 = a13;
  v692 = a13 & 0xFFFF00;
  v743 = a5;
  sub_1000A7A7C(a1, a5, v749, v82);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = *v82;
    v87 = *(v82 + 1);
    *a9 = *v82;
    *(a9 + 1) = v87;
    a9[4] = v82[4];
    return *&v86;
  }

  v703 = v85;
  v704 = a9;
  sub_1000B4888(v82, v85, type metadata accessor for NewestMessages);
  v734 = *(v15 + 172);
  v88 = *v15;
  v733 = *(v15 + 8);
  v89 = *(v15 + 16);
  v732 = *(v15 + 24);
  v90 = *(v15 + 144);
  v91 = *(v90 + 16);
  v724 = v15;
  v725 = v90;
  v741 = v88;
  v740 = v89;
  v676 = v91;
  if (v91)
  {
    *&v777 = _swiftEmptyArrayStorage;
    v92 = v90;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    sub_100092068(0, v91, 0);
    v93 = v777;
    v94 = (v92 + 48);
    do
    {
      v95 = *(v94 - 1);
      v96 = *v94;
      sub_100014CEC(v95, *v94);
      *&v777 = v93;
      v98 = v93[2];
      v97 = v93[3];
      if (v98 >= v97 >> 1)
      {
        sub_100092068((v97 > 1), v98 + 1, 1);
        v93 = v777;
      }

      v94 += 5;
      v93[2] = v98 + 1;
      v99 = &v93[2 * v98];
      v99[4] = v95;
      v99[5] = v96;
      --v91;
    }

    while (v91);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v93 = _swiftEmptyArrayStorage;
  }

  v100 = sub_1000CE67C(v93);

  v101 = v727 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v711 = _s13SelectedStateV7WrappedVMa(0);
  v102 = *(v711 + 20);
  v677 = v101;
  v103 = v101 + v102;
  v693 = type metadata accessor for MailboxSyncState(0);
  v104 = *(v103 + v693[14]);
  *&v783 = _swiftEmptySetSingleton;
  BYTE8(v783) = 0;

  v784 = sub_10016324C(_swiftEmptyArrayStorage);
  v105 = sub_10015D510(v104, v100);

  if (v105[2])
  {
    *&v777 = v741;
    *(&v777 + 1) = v733;
    LOWORD(v778) = v734;
    *(&v778 + 1) = v740;
    LODWORD(v779) = v732;
    *&v811 = v740;
    DWORD2(v811) = v732;
    *(&v779 + 1) = v105;
    *&v780 = &type metadata for GetUIDsForDownloadRequests;
    sub_100026044();
    sub_1004A6674();
    v756 = v781;
    v757 = v782;
    v758 = v783;
    v759 = v784;
    v752 = v777;
    v753 = v778;
    v754 = v779;
    v755 = v780;
    sub_1000965C0(&v752, v760);
    *&v760[120] = _swiftEmptyArrayStorage;
    *&v760[128] = _swiftEmptyArrayStorage;
    sub_1000965F8(&v752);
    *&v761[96] = *&v760[96];
    *&v761[112] = *&v760[112];
    *&v761[128] = *&v760[128];
    *&v761[32] = *&v760[32];
    *&v761[48] = *&v760[48];
    *&v761[64] = *&v760[64];
    *&v761[80] = *&v760[80];
    *v761 = *v760;
    *&v761[16] = *&v760[16];
    v106 = sub_10000C9C0(&qword_1005CF318, &qword_1004D2618);
    *&v760[24] = v106;
    v104 = sub_1000B458C(&qword_1005CF320, &qword_1005CF318, &qword_1004D2618);
    *&v760[32] = v104;
    *v760 = swift_allocObject();
    sub_10000E268(v761, *v760 + 16, &qword_1005CF318, &qword_1004D2618);
    v107 = v743(v760);
    sub_1000197E0(v760);
    if (v107)
    {
      swift_bridgeObjectRelease_n();
      v108 = v704;
      v704[3] = v106;
      v108[4] = v104;
      v109 = swift_allocObject();
      *v108 = v109;
      v110 = *&v761[112];
      *(v109 + 112) = *&v761[96];
      *(v109 + 128) = v110;
      *(v109 + 144) = *&v761[128];
      v111 = *&v761[48];
      *(v109 + 48) = *&v761[32];
      *(v109 + 64) = v111;
      v112 = *&v761[80];
      *(v109 + 80) = *&v761[64];
      *(v109 + 96) = v112;
      v113 = *&v761[16];
      *(v109 + 16) = *v761;
      *(v109 + 32) = v113;
      v114 = type metadata accessor for NewestMessages;
      v115 = v703;
      goto LABEL_165;
    }

    sub_100025F40(v761, &qword_1005CF318, &qword_1004D2618);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v116 = v728;
  v117 = v747;
  v118 = v724;
  if (qword_1005CCE28 != -1)
  {
    swift_once();
  }

  v675 = qword_1005DDEF0;
  if ((sub_1000B33E4(qword_1005DDEF0, v730, v116) & 1) == 0)
  {

    v136 = v730;
    v120 = v677;
    v119 = v711;
LABEL_48:
    v813 = 0;
    v811 = 0u;
    v812 = 0u;
    goto LABEL_49;
  }

  v119 = v711;
  v104 = v693;
  v120 = v677;
  v121 = v714;
  sub_1000B4820(v677 + *(v711 + 20) + v693[13] + *(v720 + 28), v714, type metadata accessor for MessagesPendingDownloadPerPass);
  sub_1000B4820(v121, v117, type metadata accessor for MessagesPendingDownload);
  v122 = sub_1000B35D0(v121, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!*(*v117 + 16) && !*(*(v120 + *(v119 + 5) + *(v104 + 14)) + 16))
  {

    sub_1000B35D0(v117, type metadata accessor for MessagesPendingDownload);
    v136 = v730;
    goto LABEL_48;
  }

  v123 = v746;
  v718(v122);
  v124 = v120;
  v125 = v719;
  sub_1000B4820(v117, v719, type metadata accessor for MessagesPendingDownload);
  v126 = v123;
  v127 = v722;
  sub_10000E268(v126, v722, &unk_1005D91B0, &unk_1004CF400);
  v128 = *(v119 + 5);
  v129 = v124;
  v130 = *(v124 + v128 + *(v104 + 14));
  v131 = v715;
  sub_1000B4820(v125, v715, type metadata accessor for MessagesPendingDownload);
  v132 = v716;
  sub_10000E268(v127, v716, &unk_1005D91B0, &unk_1004CF400);
  v133 = swift_allocObject();
  *(v133 + 16) = v130;
  *&v777 = v725;
  *(&v777 + 1) = sub_1000B4908;
  *&v778 = v133;
  *(&v778 + 1) = sub_1000B2F18;
  *&v779 = 0;
  *(&v779 + 1) = sub_1000B2F2C;
  *&v780 = 0;

  v134 = sub_1000B0484(v131, v132, &v777);
  v674 = v135;
  sub_100025F40(v127, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v125, type metadata accessor for MessagesPendingDownload);
  v136 = v730;
  v673 = v134;
  v672 = 0;
  v104 = v674;
  v137 = *(v674 + 16);
  if (v137 > 7)
  {

    v139 = sub_1000B0290(v138, v104 + 32, v137 - 7, (2 * v137) | 1);
    v120 = v129;
LABEL_24:
    v119 = v711;
    goto LABEL_25;
  }

  v203 = v137 - 1;
  v120 = v129;
  v139 = v104;
  if (v137 <= 1)
  {
    goto LABEL_24;
  }

  v204 = *(v104 + 2);
  if (!v204)
  {
    goto LABEL_287;
  }

  if (v203 >= v204)
  {
    goto LABEL_288;
  }

  v205 = *(v104 + 8);
  v748 = *(v104 + 5);
  v206 = *(v104 + 48);
  LODWORD(v729) = *(v104 + 49);
  v207 = 24 * v203;
  v208 = v104 + 24 * v203 + 32;
  v209 = *v208;
  v210 = *(v208 + 8);
  v211 = *(v208 + 16);
  v212 = *(v208 + 17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v139 = v104;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v139 = sub_10013991C(v674);
  }

  *(v139 + 8) = v209;
  *(v139 + 5) = v210;
  v139[48] = v211;
  v139[49] = v212;
  v214 = &v139[v207 + 32];
  *v214 = v205;
  *(v214 + 1) = v748;
  v214[16] = v206;
  v214[17] = v729;
  v116 = v728;
  v136 = v730;
  v120 = v677;
  v119 = v711;
  v104 = v674;
  if (v137 >> 1 != 1)
  {
    v215 = v137 - 2;
    if (v137 != 3)
    {
      v216 = *(v139 + 2);
      if (v216 < 2)
      {
        goto LABEL_287;
      }

      if (v215 >= v216)
      {
        goto LABEL_288;
      }

      v217 = *(v139 + 14);
      v748 = *(v139 + 8);
      LODWORD(v729) = v139[72];
      LODWORD(v671) = v139[73];
      v218 = 24 * v215;
      v219 = &v139[24 * v215];
      v220 = *(v219 + 8);
      v221 = *(v219 + 5);
      v222 = v219[48];
      v223 = v219[49];
      v224 = v139;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v224 = sub_10013991C(v224);
      }

      v139 = v224;
      v225 = &v224[v218];
      *(v224 + 14) = v220;
      *(v224 + 8) = v221;
      v224[72] = v222;
      v224[73] = v223;
      *(v225 + 8) = v217;
      *(v225 + 5) = v748;
      v225[48] = v729;
      v225[49] = v671;
      v116 = v728;
      v136 = v730;
      v120 = v677;
      v119 = v711;
      v104 = v674;
    }

    if (v137 >> 1 == 2)
    {
      goto LABEL_25;
    }

    v226 = v137 - 3;
    if (v137 == 5)
    {
      goto LABEL_25;
    }

    v227 = *(v139 + 2);
    if (v227 >= 3)
    {
      if (v226 < v227)
      {
        v228 = *(v139 + 20);
        v748 = *(v139 + 11);
        v229 = v139[96];
        v230 = v139[97];
        v231 = 24 * v226;
        v232 = &v139[24 * v226];
        v233 = *(v232 + 8);
        v234 = *(v232 + 5);
        v235 = v232[48];
        v236 = v232[49];
        v237 = v139;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v237 = sub_10013991C(v237);
        }

        v139 = v237;
        v238 = &v237[v231];
        *(v237 + 20) = v233;
        *(v237 + 11) = v234;
        v237[96] = v235;
        v237[97] = v236;
        *(v238 + 8) = v228;
        *(v238 + 5) = v748;
        v238[48] = v229;
        v238[49] = v230;
        v116 = v728;
        v136 = v730;
        v120 = v677;
        v119 = v711;
        v104 = v674;
        goto LABEL_25;
      }

LABEL_288:
      __break(1u);
      goto LABEL_289;
    }

LABEL_287:
    __break(1u);
    goto LABEL_288;
  }

LABEL_25:
  v140 = *(v139 + 2);
  if (!v140)
  {

    v118 = v724;
LABEL_47:
    sub_100025F40(v746, &unk_1005D91B0, &unk_1004CF400);

    sub_1000B35D0(v747, type metadata accessor for MessagesPendingDownload);
    goto LABEL_48;
  }

  v141 = *(v120 + *(v119 + 5) + v693[20]);
  v142 = v139 + 32;
  v143 = *(v141 + 16);
  v748 = (v141 + 32);
  v670[1] = v141;
  v729 = v140;
  v144 = v139;

  v671 = v144;
  v145 = v729;

  v146 = 0;
  v147 = _swiftEmptyArrayStorage;
  v148 = v142;
  do
  {
    if (v143)
    {
      v159 = *&v142[24 * v146];
      v160 = v748;
      v161 = v143;
      while (1)
      {
        v162 = *v160;
        v163 = v160[1];
        v164 = v160[3];
        *&v761[32] = v160[2];
        *&v761[48] = v164;
        *v761 = v162;
        *&v761[16] = v163;
        v165 = v160[4];
        v166 = v160[5];
        v167 = v160[7];
        *&v761[96] = v160[6];
        *&v761[112] = v167;
        *&v761[64] = v165;
        *&v761[80] = v166;
        v168 = v160[8];
        v169 = v160[9];
        v170 = v160[10];
        *&v761[169] = *(v160 + 169);
        *&v761[144] = v169;
        *&v761[160] = v170;
        *&v761[128] = v168;
        if (v159 == *v761)
        {
          break;
        }

        v160 += 12;
        if (!--v161)
        {
          goto LABEL_28;
        }
      }

      sub_10001025C(v761, v760);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v147 = sub_1000866F0(0, v147[2] + 1, 1, v147);
      }

      v172 = v147[2];
      v171 = v147[3];
      if (v172 >= v171 >> 1)
      {
        v147 = sub_1000866F0((v171 > 1), v172 + 1, 1, v147);
      }

      *&v760[132] = *&v761[136];
      *&v760[148] = *&v761[152];
      *&v760[164] = *&v761[168];
      v760[180] = v761[184];
      *&v760[68] = *&v761[72];
      *&v760[84] = *&v761[88];
      *&v760[100] = *&v761[104];
      *&v760[116] = *&v761[120];
      *&v760[4] = *&v761[8];
      *&v760[20] = *&v761[24];
      *&v760[36] = *&v761[40];
      *&v760[52] = *&v761[56];
      v147[2] = v172 + 1;
      v149 = &v147[24 * v172];
      *(v149 + 8) = v159;
      v150 = *v760;
      v151 = *&v760[16];
      v152 = *&v760[32];
      *(v149 + 84) = *&v760[48];
      *(v149 + 68) = v152;
      *(v149 + 52) = v151;
      *(v149 + 36) = v150;
      v153 = *&v760[64];
      v154 = *&v760[80];
      v155 = *&v760[96];
      *(v149 + 148) = *&v760[112];
      *(v149 + 132) = v155;
      *(v149 + 116) = v154;
      *(v149 + 100) = v153;
      v156 = *&v760[128];
      v157 = *&v760[144];
      v158 = *&v760[160];
      *(v149 + 209) = *&v760[173];
      *(v149 + 196) = v158;
      *(v149 + 180) = v157;
      *(v149 + 164) = v156;
      v145 = v729;
      v142 = v148;
    }

LABEL_28:
    ++v146;
  }

  while (v146 != v145);
  if (v147[2])
  {
    sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
    v173 = sub_1004A6A74();
  }

  else
  {
    v173 = _swiftEmptyDictionarySingleton;
  }

  v174 = v741;
  v175 = v740;
  *v761 = v173;
  v176 = v726;
  sub_1000B2F70(v147, 1, v761);
  if (v176)
  {
    goto LABEL_368;
  }

  v726 = 0;
  v177 = v671;

  v748 = *v761;
  v816[0] = v174;
  v816[1] = v733;
  v817 = v734;
  v818 = v175;
  v178 = v732;
  v819 = v732;
  swift_bridgeObjectRetain_n();

  v179 = sub_1000CE570(_swiftEmptyArrayStorage);
  v180 = v708;
  *v708 = v179;
  *(v180 + 8) = 0;
  v181 = v672;
  sub_10003F6A4(v816, v177, v672, v785);
  v182 = *(&v786 + 1);
  v183 = v785[1];
  *(v180 + 64) = v785[0];
  *(v180 + 80) = v183;
  *(v180 + 96) = v786;
  *(v180 + 112) = v787;
  *(v180 + 9) = 0;
  *v761 = v175;
  *&v761[8] = v178;
  v761[12] = 0;
  v761[13] = v181;
  v184 = v712;
  *(v180 + 16) = v712;
  sub_1000B38F4();

  sub_1004A6674();
  v185 = *(v184 + 36);
  v729 = *(v184 + 40);
  v186 = v180 + v185;
  v187 = v175;
  v188 = _s18InProgressMessagesVMa(0);
  sub_100016D2C();
  sub_1004A7114();
  sub_1004A7114();
  sub_1004A7114();
  v104 = _swiftEmptyArrayStorage;
  v189 = sub_100162D4C(_swiftEmptyArrayStorage);
  *v186 = v187;
  *(v186 + 8) = v178;
  *(v186 + 16) = v748;
  *(v186 + v188[7]) = _swiftEmptyArrayStorage;
  *(v186 + v188[8]) = _swiftEmptyArrayStorage;
  *(v186 + v188[11]) = v189;
  sub_100045288(&v729[v180]);
  sub_1000458FC(v182);

  v190 = v709;
  sub_1000B4888(v180, v709, type metadata accessor for DownloadTask);
  v191 = v713;
  v192 = (v190 + *(v713 + 36));
  *v192 = _swiftEmptyArrayStorage;
  v192[1] = _swiftEmptyArrayStorage;
  *&v761[24] = v191;
  v193 = sub_1000B458C(&qword_1005CF350, &qword_1005CF310, &unk_1004D2608);
  *&v761[32] = v193;
  v194 = sub_1000B3774(v761);
  sub_10000E268(v190, v194, &qword_1005CF310, &unk_1004D2608);
  LOBYTE(v186) = v743(v761);
  sub_1000197E0(v761);
  if ((v186 & 1) == 0)
  {
    sub_100025F40(v190, &qword_1005CF310, &unk_1004D2608);
    v118 = v724;
    v116 = v728;
    v136 = v730;
    v120 = v677;
    v119 = v711;
    v104 = v674;
    goto LABEL_47;
  }

  *(&v812 + 1) = v191;
  v813 = v193;
  v195 = sub_1000B3774(&v811);
  sub_100025FDC(v190, v195, &qword_1005CF310, &unk_1004D2608);
  sub_100025F40(v746, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v747, type metadata accessor for MessagesPendingDownload);
  v196 = v704;
  v118 = v724;
  v116 = v728;
  v136 = v730;
  v120 = v677;
  v119 = v711;
  if (*(&v812 + 1))
  {
    swift_bridgeObjectRelease_n();
    sub_1000B35D0(v703, type metadata accessor for NewestMessages);
    v197 = &v811;
LABEL_106:
    sub_1000B364C(v197, &v752);
    sub_1000B364C(&v752, v196);
    return *&v86;
  }

LABEL_49:
  v198 = a10;
  v196 = a11;
  v709 = v721 >> 16;
  sub_100025F40(&v811, &qword_1005CF328, &unk_1004D2620);
  v674 = a11;
  v708 = a10;
  if (a10(0))
  {

    goto LABEL_111;
  }

  if (sub_1000B33E4(v675, v136, v116))
  {
    v104 = v705;
    sub_1000B4820(v120 + *(v119 + 5) + v693[13] + *(v720 + 28), v705, type metadata accessor for MessagesPendingDownloadPerPass);
    if (v709)
    {
      v198 = v726;
      if (v709 == 1)
      {
        v199 = v744;
        sub_1000B4820(v104 + *(v702 + 20), v744, type metadata accessor for MessagesPendingDownload);
        v200 = sub_1000B35D0(v104, type metadata accessor for MessagesPendingDownloadPerPass);
      }

      else
      {
        v202 = v698;
        sub_1000B4820(v104 + *(v702 + 20), v698, type metadata accessor for MessagesPendingDownload);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v196 = v703;
        if (sub_1004A70C4())
        {
          sub_1000B35D0(v104, type metadata accessor for MessagesPendingDownloadPerPass);
          sub_1000B4820(v202, v744, type metadata accessor for MessagesPendingDownload);
        }

        else
        {
          v239 = v744;
          sub_1000B4820(v202, v744, type metadata accessor for MessagesPendingDownload);
          __chkstk_darwin(*v202);
          v668 = v196;
          v196 = sub_1000B3DD8(v240, sub_1000B4904);
          v116 = v728;
          sub_1000B35D0(v104, type metadata accessor for MessagesPendingDownloadPerPass);

          *v239 = v196;
        }

        v200 = sub_1000B35D0(v202, type metadata accessor for MessagesPendingDownload);
        v199 = v744;
      }
    }

    else
    {
      v201 = sub_100163144(_swiftEmptyArrayStorage);
      v199 = v744;
      *v744 = v201;
      v196 = *(v699 + 20);
      sub_100016D2C();
      sub_1004A7114();
      v200 = sub_1000B35D0(v104, type metadata accessor for MessagesPendingDownloadPerPass);
      v198 = v726;
    }

    v241 = *(*v199 + 16);
    v726 = v198;
    if (!v241 && !*(*(v120 + *(v119 + 5) + v693[14]) + 16))
    {

      sub_1000B35D0(v199, type metadata accessor for MessagesPendingDownload);
      v118 = v724;
      goto LABEL_109;
    }

    v242 = v731;
    v718(v200);
    v243 = v120;
    v244 = v719;
    sub_1000B4820(v199, v719, type metadata accessor for MessagesPendingDownload);
    v245 = v722;
    sub_10000E268(v242, v722, &unk_1005D91B0, &unk_1004CF400);
    v246 = v243;
    v247 = *(v243 + *(v119 + 5) + v693[14]);
    v248 = v715;
    sub_1000B4820(v244, v715, type metadata accessor for MessagesPendingDownload);
    v249 = v716;
    sub_10000E268(v245, v716, &unk_1005D91B0, &unk_1004CF400);
    v250 = swift_allocObject();
    *(v250 + 16) = v247;
    *&v811 = v725;
    *(&v811 + 1) = sub_1000B4908;
    *&v812 = v250;
    *(&v812 + 1) = sub_1000B2F18;
    v813 = 0;
    v814 = sub_1000B2F2C;
    v815 = 0;

    v251 = sub_1000B0484(v248, v249, &v811);
    v746 = v252;
    sub_100025F40(v245, &unk_1005D91B0, &unk_1004CF400);
    sub_1000B35D0(v244, type metadata accessor for MessagesPendingDownload);
    v729 = v251;
    LODWORD(v705) = 0;
    v104 = v746;
    v253 = *(v746 + 16);
    if (v253 > 7)
    {

      v255 = sub_1000B0290(v254, v104 + 32, v253 - 7, (2 * v253) | 1);
      v118 = v724;
      v116 = v728;
      v256 = v246;
      v198 = v255;
LABEL_85:
      v257 = *(v198 + 2);
      if (!v257)
      {

        v136 = v730;
        v196 = v744;
LABEL_108:
        sub_100025F40(v731, &unk_1005D91B0, &unk_1004CF400);

        sub_1000B35D0(v196, type metadata accessor for MessagesPendingDownload);
        goto LABEL_109;
      }

      v258 = *(v256 + *(v119 + 5) + v693[20]);
      v259 = v198 + 32;
      v260 = *(v258 + 16);
      v748 = (v258 + 32);
      v673 = v258;

      v698 = v198;

      v261 = 0;
      v262 = _swiftEmptyArrayStorage;
      v263 = v257;
      v747 = v259;
      do
      {
        if (v260)
        {
          v274 = *(v259 + 24 * v261);
          v275 = v748;
          v276 = v260;
          while (1)
          {
            v277 = *v275;
            v278 = v275[1];
            v279 = v275[3];
            *&v761[32] = v275[2];
            *&v761[48] = v279;
            *v761 = v277;
            *&v761[16] = v278;
            v280 = v275[4];
            v281 = v275[5];
            v282 = v275[7];
            *&v761[96] = v275[6];
            *&v761[112] = v282;
            *&v761[64] = v280;
            *&v761[80] = v281;
            v283 = v275[8];
            v284 = v275[9];
            v285 = v275[10];
            *&v761[169] = *(v275 + 169);
            *&v761[144] = v284;
            *&v761[160] = v285;
            *&v761[128] = v283;
            if (v274 == *v761)
            {
              break;
            }

            v275 += 12;
            if (!--v276)
            {
              goto LABEL_88;
            }
          }

          sub_10001025C(v761, v760);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v262 = sub_1000866F0(0, v262[2] + 1, 1, v262);
          }

          v287 = v262[2];
          v286 = v262[3];
          if (v287 >= v286 >> 1)
          {
            v262 = sub_1000866F0((v286 > 1), v287 + 1, 1, v262);
          }

          *&v760[132] = *&v761[136];
          *&v760[148] = *&v761[152];
          *&v760[164] = *&v761[168];
          v760[180] = v761[184];
          *&v760[68] = *&v761[72];
          *&v760[84] = *&v761[88];
          *&v760[100] = *&v761[104];
          *&v760[116] = *&v761[120];
          *&v760[4] = *&v761[8];
          *&v760[20] = *&v761[24];
          *&v760[36] = *&v761[40];
          *&v760[52] = *&v761[56];
          v262[2] = v287 + 1;
          v264 = &v262[24 * v287];
          *(v264 + 8) = v274;
          v265 = *v760;
          v266 = *&v760[16];
          v267 = *&v760[32];
          *(v264 + 84) = *&v760[48];
          *(v264 + 68) = v267;
          *(v264 + 52) = v266;
          *(v264 + 36) = v265;
          v268 = *&v760[64];
          v269 = *&v760[80];
          v270 = *&v760[96];
          *(v264 + 148) = *&v760[112];
          *(v264 + 132) = v270;
          *(v264 + 116) = v269;
          *(v264 + 100) = v268;
          v271 = *&v760[128];
          v272 = *&v760[144];
          v273 = *&v760[160];
          *(v264 + 209) = *&v760[173];
          *(v264 + 196) = v273;
          *(v264 + 180) = v272;
          *(v264 + 164) = v271;
          v257 = v263;
          v259 = v747;
        }

LABEL_88:
        ++v261;
      }

      while (v261 != v257);
      if (v262[2])
      {
        sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
        v288 = sub_1004A6A74();
      }

      else
      {
        v288 = _swiftEmptyDictionarySingleton;
      }

      v289 = v740;
      v290 = v726;
      *v761 = v288;
      sub_1000B2F70(v262, 1, v761);
      if (!v290)
      {
        v726 = 0;
        v291 = v698;

        v748 = *v761;
        v807[0] = v741;
        v807[1] = v733;
        v808 = v734;
        v809 = v289;
        v292 = v732;
        v810 = v732;
        swift_bridgeObjectRetain_n();

        v293 = sub_1000CE570(_swiftEmptyArrayStorage);
        v119 = v700;
        *v700 = v293;
        *(v119 + 8) = 0;
        v294 = v291;
        LOBYTE(v291) = v705;
        sub_10003F6A4(v807, v294, v705, v788);
        v295 = *(&v789 + 1);
        v296 = v788[1];
        *(v119 + 4) = v788[0];
        *(v119 + 5) = v296;
        *(v119 + 6) = v789;
        *(v119 + 112) = v790;
        *(v119 + 9) = 1;
        *v761 = v289;
        *&v761[8] = v292;
        v761[12] = 1;
        v761[13] = v291;
        v297 = v712;
        v119[2] = v712;
        sub_1000B38F4();

        sub_1004A6674();
        v298 = *(v297 + 36);
        v747 = *(v297 + 40);
        v299 = v119 + v298;
        v300 = _s18InProgressMessagesVMa(0);
        sub_100016D2C();
        sub_1004A7114();
        sub_1004A7114();
        sub_1004A7114();
        v301 = sub_100162D4C(_swiftEmptyArrayStorage);
        *v299 = v289;
        *(v299 + 2) = v292;
        *(v299 + 2) = v748;
        *&v299[v300[7]] = _swiftEmptyArrayStorage;
        *&v299[v300[8]] = _swiftEmptyArrayStorage;
        v104 = _swiftEmptyArrayStorage;
        *&v299[v300[11]] = v301;
        sub_100045288(v119 + v747);
        sub_1000458FC(v295);

        v302 = v701;
        sub_1000B4888(v119, v701, type metadata accessor for DownloadTask);
        v303 = v713;
        v304 = (v302 + *(v713 + 36));
        *v304 = _swiftEmptyArrayStorage;
        v304[1] = _swiftEmptyArrayStorage;
        *&v761[24] = v303;
        v198 = sub_1000B458C(&qword_1005CF350, &qword_1005CF310, &unk_1004D2608);
        *&v761[32] = v198;
        v305 = sub_1000B3774(v761);
        sub_10000E268(v302, v305, &qword_1005CF310, &unk_1004D2608);
        LOBYTE(v299) = v743(v761);
        sub_1000197E0(v761);
        if (v299)
        {

          *(&v796 + 1) = v303;
          *&v797 = v198;
          v306 = sub_1000B3774(&v795);
          sub_100025FDC(v302, v306, &qword_1005CF310, &unk_1004D2608);
          sub_100025F40(v731, &unk_1005D91B0, &unk_1004CF400);
          sub_1000B35D0(v744, type metadata accessor for MessagesPendingDownload);
          v196 = v704;
          v118 = v724;
          v116 = v728;
          v136 = v730;
          if (*(&v796 + 1))
          {
            swift_bridgeObjectRelease_n();
            sub_1000B35D0(v703, type metadata accessor for NewestMessages);
            v197 = &v795;
            goto LABEL_106;
          }

          goto LABEL_110;
        }

        sub_100025F40(v302, &qword_1005CF310, &unk_1004D2608);
        v118 = v724;
        v116 = v728;
        v136 = v730;
        v196 = v744;
        v104 = v746;
        goto LABEL_108;
      }

      while (1)
      {
LABEL_368:

        __break(1u);
      }
    }

    v359 = v253 - 1;
    v118 = v724;
    v116 = v728;
    v256 = v246;
    v198 = v104;
    if (v253 <= 1)
    {
      goto LABEL_85;
    }

    v360 = *(v104 + 2);
    if (!v360)
    {
      goto LABEL_314;
    }

    if (v359 >= v360)
    {
      goto LABEL_315;
    }

    v361 = v104 + 32;
    v362 = *(v104 + 8);
    v748 = *(v104 + 5);
    LODWORD(v747) = *(v104 + 48);
    v198 = v104;
    v363 = *(v104 + 49);
    v364 = 24 * v359;
    v365 = &v361[24 * v359];
    v366 = *v365;
    v367 = *(v365 + 1);
    v368 = v365[16];
    v369 = v365[17];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v198 = sub_10013991C(v746);
    }

    *(v198 + 8) = v366;
    *(v198 + 5) = v367;
    *(v198 + 48) = v368;
    *(v198 + 49) = v369;
    v370 = v198 + v364 + 32;
    *v370 = v362;
    *(v370 + 1) = v748;
    v370[16] = v747;
    v370[17] = v363;
    v118 = v724;
    v116 = v728;
    v256 = v677;
    v119 = v711;
    v104 = v746;
    if (v253 >> 1 == 1)
    {
      goto LABEL_85;
    }

    v371 = v253 - 2;
    if (v253 != 3)
    {
      v372 = *(v198 + 2);
      if (v372 < 2)
      {
        goto LABEL_314;
      }

      if (v371 >= v372)
      {
        goto LABEL_315;
      }

      LODWORD(v748) = *(v198 + 14);
      v747 = *(v198 + 8);
      LODWORD(v698) = *(v198 + 72);
      v373 = *(v198 + 73);
      v374 = 24 * v371;
      v375 = v198 + 24 * v371;
      v376 = *(v375 + 8);
      v377 = *(v375 + 5);
      v378 = v375[48];
      v379 = v375[49];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v198 = sub_10013991C(v198);
      }

      v380 = v198 + v374;
      *(v198 + 14) = v376;
      *(v198 + 8) = v377;
      *(v198 + 72) = v378;
      *(v198 + 73) = v379;
      *(v380 + 8) = v748;
      *(v380 + 5) = v747;
      v380[48] = v698;
      v380[49] = v373;
      v118 = v724;
      v116 = v728;
      v256 = v677;
      v119 = v711;
      v104 = v746;
    }

    if (v253 >> 1 == 2)
    {
      goto LABEL_85;
    }

    v381 = v253 - 3;
    if (v253 == 5)
    {
      goto LABEL_85;
    }

    v382 = *(v198 + 2);
    if (v382 >= 3)
    {
      if (v381 < v382)
      {
        LODWORD(v748) = *(v198 + 20);
        v383 = v198;
        v384 = *(v198 + 11);
        v385 = v383[96];
        v386 = v383[97];
        v387 = 24 * v381;
        v388 = &v383[24 * v381];
        v389 = *(v388 + 8);
        v390 = *(v388 + 5);
        v391 = v388[48];
        v392 = v388[49];
        v393 = v383;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v393 = sub_10013991C(v393);
        }

        v394 = &v393[v387];
        *(v393 + 20) = v389;
        *(v393 + 11) = v390;
        v393[96] = v391;
        v393[97] = v392;
        *(v394 + 8) = v748;
        *(v394 + 5) = v384;
        v198 = v393;
        v394[48] = v385;
        v394[49] = v386;
        v118 = v724;
        v116 = v728;
        v256 = v677;
        v119 = v711;
        v104 = v746;
        goto LABEL_85;
      }

LABEL_315:
      __break(1u);
      goto LABEL_316;
    }

LABEL_314:
    __break(1u);
    goto LABEL_315;
  }

LABEL_109:
  *&v797 = 0;
  v795 = 0u;
  v796 = 0u;
LABEL_110:
  sub_100025F40(&v795, &qword_1005CF328, &unk_1004D2620);
LABEL_111:
  if (qword_1005CCE90 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF88, v136, v116) & 1) == 0)
  {
    __break(1u);
    goto LABEL_220;
  }

  v307 = a12;
  v308 = v118[19];
  v309 = *(v308 + 16);
  v705 = v309;
  if (v309)
  {
    v310 = v308 + ((v745[80] + 32) & ~v745[80]);
    v311 = *(v745 + 9);
    v312 = v742;
    v313 = v739;
    v731 = a12;
    v729 = v311;
    do
    {
      sub_1000B4820(v310, v312, _s19UserInitiatedSearchVMa);
      sub_1000B4820(v312 + *(v750 + 20), v313, _s19UserInitiatedSearchV5StateOMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1000B35D0(v312, _s19UserInitiatedSearchVMa);
        sub_1000B35D0(v313, _s19UserInitiatedSearchV5StateOMa);
      }

      else
      {
        v314 = *(v313 + 8);
        v744 = *v313;
        v747 = *(v313 + 16);
        LODWORD(v746) = *(v313 + 24);
        v315 = *v312;
        LODWORD(v745) = *(v307 + 2);
        v316 = v736;
        *v736 = 223;
        *(v316 + 104) = _swiftEmptySetSingleton;
        *(v316 + 112) = 0;
        v317 = v737;
        v318 = *(v737 + 52);
        v319 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
        (*(*(v319 - 8) + 56))(v316 + v318, 1, 1, v319);
        *(v316 + 8) = v315;
        v320 = v733;
        *(v316 + 16) = v741;
        *(v316 + 24) = v320;
        *(v316 + 32) = v734;
        v321 = v740;
        *(v316 + 40) = v740;
        LODWORD(v320) = v732;
        *(v316 + 48) = v732;
        LODWORD(v752) = v315;
        *(&v752 + 1) = v321;
        LODWORD(v753) = v320;
        *(v316 + 56) = v317;
        v322 = v735;
        swift_bridgeObjectRetain_n();

        v323 = v744;
        sub_1000B3664(v744);
        sub_1000B3720();

        sub_1004A6674();
        *(v316 + 120) = v323;
        *(v316 + 128) = v314;
        v748 = v314;
        *(v316 + 136) = v747;
        *(v316 + 144) = v746;
        *(v316 + 145) = v745;
        sub_1000B4888(v316, v322, type metadata accessor for SearchMailbox);
        v324 = v738;
        v325 = (v322 + *(v738 + 36));
        *v325 = _swiftEmptyArrayStorage;
        v325[1] = _swiftEmptyArrayStorage;
        *(&v753 + 1) = v324;
        v326 = sub_1000B458C(&qword_1005CF338, &qword_1005CF308, &qword_1004D2600);
        *&v754 = v326;
        v327 = sub_1000B3774(&v752);
        sub_10000E268(v322, v327, &qword_1005CF308, &qword_1004D2600);
        LOBYTE(v315) = v743(&v752);
        sub_1000197E0(&v752);
        if (v315)
        {
          swift_bridgeObjectRelease_n();
          *&v760[24] = v738;
          *&v760[32] = v326;
          v339 = sub_1000B3774(v760);
          sub_100025FDC(v322, v339, &qword_1005CF308, &qword_1004D2600);
          sub_1000B37D8(v323);

          sub_1000B35D0(v742, _s19UserInitiatedSearchVMa);
          sub_1000B35D0(v703, type metadata accessor for NewestMessages);
          sub_1000B364C(v760, v761);
          sub_1000B364C(v761, v704);
          return *&v86;
        }

        sub_1000B37D8(v323);

        sub_100025F40(v322, &qword_1005CF308, &qword_1004D2600);
        v312 = v742;
        sub_1000B35D0(v742, _s19UserInitiatedSearchVMa);
        v307 = v731;
        v313 = v739;
        v311 = v729;
      }

      v310 += v311;
      --v309;
    }

    while (v309);
  }

  v328 = v730;
  if (v730[2] == 15 && !v728[2] && !v723[2])
  {
    v329 = v696;
    sub_1000B4820(v677 + *(v711 + 20) + v693[13], v696, type metadata accessor for PendingPersistenceUpdates);
    v330 = v697;
    sub_1000B4820(v703, v697, type metadata accessor for NewestMessages);
    (*(v694 + 56))(v330, 0, 1, v695);
    v331 = sub_1000DC530(v709, v330);
    sub_100025F40(v330, &qword_1005CDC18, &qword_1004CF9E0);
    sub_1000B35D0(v329, type metadata accessor for PendingPersistenceUpdates);
    if (!v331 && !(*(*(v677 + *(v711 + 20) + v693[14]) + 16) | v705))
    {
      swift_bridgeObjectRelease_n();
      sub_1000B35D0(v703, type metadata accessor for NewestMessages);
      *&v86 = 0;
      v409 = v704;
      *v704 = 0u;
      *(v409 + 16) = 0u;
      *(v409 + 32) = 0;
      return *&v86;
    }
  }

  v332 = v724;
  sub_10000E08C(v724, v761);
  v333 = v727;

  v334 = v743;
  v335 = v749;
  sub_1000AA7E4(v328, v728, v723, v743, v749, v332, v333, &v752);
  v336 = v704;
  if (*(&v753 + 1))
  {
    swift_bridgeObjectRelease_n();
    sub_1000B35D0(v703, type metadata accessor for NewestMessages);
    sub_1000B364C(&v752, v760);
    sub_1000B364C(v760, v336);
    return *&v86;
  }

  sub_100025F40(&v752, &qword_1005CF328, &unk_1004D2620);
  v337 = v707;
  sub_1000AB17C(v333, v334, v335, v307, a14, a15 & 1, v707);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    swift_bridgeObjectRelease_n();
    sub_1000B35D0(v703, type metadata accessor for NewestMessages);
    v86 = *v337;
    v338 = *(v337 + 1);
    *v336 = *v337;
    *(v336 + 16) = v338;
    *(v336 + 32) = v337[4];
    return *&v86;
  }

  v731 = v307;
  v340 = v721 >> 8;
  v341 = v710;
  v342 = sub_1000B4888(v337, v710, type metadata accessor for MessageBatches);
  v748 = v670;
  v343 = v825;
  v344 = v824;
  v345 = v823;
  v346 = v822;
  v347 = v820;
  __chkstk_darwin(v342);
  v670[-4] = v348;
  v670[-3] = v341;
  LOBYTE(v668) = v343;
  v751 = v340;
  BYTE1(v668) = v340;
  BYTE2(v668) = v709;
  BYTE3(v668) = v344;
  BYTE4(v668) = v345;
  BYTE5(v668) = v346;
  LODWORD(v750) = v349;
  BYTE6(v668) = v349;
  HIBYTE(v668) = v347;
  v350 = v730;
  v351 = v728;
  sub_1000A8478(v730, v728, v743, sub_1000B4930, &v795, v723);
  v747 = v343;
  LODWORD(v744) = v344;
  LODWORD(v746) = v345;
  LODWORD(v745) = v346;
  LODWORD(v742) = v347;
  if (*(&v796 + 1))
  {
    sub_1000B364C(&v795, &v752);
    sub_1000B364C(&v752, v760);
    v352 = v703;
    v353 = v731;
    v354 = v750;
    v355 = v751;
    if (!*&v760[24])
    {
      goto LABEL_158;
    }

LABEL_136:
    swift_bridgeObjectRelease_n();
    v358 = v352;
LABEL_161:
    sub_1000B35D0(v358, type metadata accessor for NewestMessages);
    sub_1000B364C(v760, v761);
    v407 = v761;
    goto LABEL_162;
  }

  v356 = sub_100025F40(&v795, &qword_1005CF328, &unk_1004D2620);
  v748 = v670;
  __chkstk_darwin(v356);
  v670[-6] = v724;
  v670[-5] = v341;
  v353 = v731;
  v670[-4] = v727;
  v670[-3] = v353;
  LOBYTE(v668) = v343;
  v357 = v751;
  BYTE1(v668) = v751;
  BYTE2(v668) = v709;
  BYTE3(v668) = v344;
  BYTE4(v668) = v345;
  BYTE5(v668) = v346;
  v354 = v750;
  BYTE6(v668) = v750;
  HIBYTE(v668) = v347;
  sub_1000A814C(v350, v351, v743, v335, sub_1000B4934, &v795, v723);
  v355 = v357;
  if (*(&v796 + 1))
  {
    sub_1000B364C(&v795, &v752);
    sub_1000B364C(&v752, v760);
    v351 = v728;
    v350 = v730;
    v352 = v703;
    if (*&v760[24])
    {
      goto LABEL_136;
    }
  }

  else
  {
    sub_100025F40(&v795, &qword_1005CF328, &unk_1004D2620);
    memset(v760, 0, 40);
    v351 = v728;
    v350 = v730;
  }

LABEL_158:
  v395 = sub_100025F40(v760, &qword_1005CF328, &unk_1004D2620);
  __chkstk_darwin(v395);
  v396 = v710;
  v670[-6] = v724;
  v670[-5] = v396;
  v670[-4] = v727;
  LOBYTE(v670[-3]) = v747;
  BYTE1(v670[-3]) = v355;
  v397 = v709;
  BYTE2(v670[-3]) = v709;
  BYTE3(v670[-3]) = v744;
  BYTE4(v670[-3]) = v746;
  BYTE5(v670[-3]) = v745;
  BYTE6(v670[-3]) = v354;
  v398 = v742;
  HIBYTE(v670[-3]) = v742;
  v668 = v353;
  v399 = v351;
  v400 = v354;
  v401 = v723;
  v402 = v743;
  v403 = v749;
  sub_1000AA4B8(v350, v399, v723, v743, v749, sub_1000B3B3C, v760);
  if (*&v760[24] || (v404 = sub_100025F40(v760, &qword_1005CF328, &unk_1004D2620), __chkstk_darwin(v404), v405 = v710, v670[-6] = v724, v670[-5] = v405, v670[-4] = v727, v670[-3] = v353, LOBYTE(v668) = v747, BYTE1(v668) = v751, BYTE2(v668) = v397, v406 = v744, BYTE3(v668) = v744, BYTE4(v668) = v746, BYTE5(v668) = v745, BYTE6(v668) = v400, HIBYTE(v668) = v398, sub_1000AA18C(v350, v728, v401, v402, v403, sub_1000B3BC4, v760), *&v760[24]))
  {
    swift_bridgeObjectRelease_n();
    v358 = v703;
    goto LABEL_161;
  }

  v410 = v406;
  sub_100025F40(v760, &qword_1005CF328, &unk_1004D2620);
  sub_10000E08C(v724, v761);
  v411 = qword_1005CCE98;

  if (v411 != -1)
  {
    swift_once();
  }

  v119 = v730;
  v116 = v728;
  v412 = sub_1000B33E4(qword_1005DDF90, v730, v728);
  v413 = v710;
  v414 = v676;
  v415 = v731;
  if ((v412 & 1) == 0)
  {
    goto LABEL_178;
  }

  sub_1000ACFA8(v724, v727, &v752);
  if (!v752)
  {
    sub_100025F40(&v752, &qword_1005CF3D8, &qword_1004D26B8);
LABEL_178:
    *&v793 = 0;
    v791 = 0u;
    v792 = 0u;
    sub_10000E0E8(v724);

    goto LABEL_179;
  }

  sub_1000B3F58(&v752, v760);
  *&v760[136] = _swiftEmptyArrayStorage;
  *&v760[144] = _swiftEmptyArrayStorage;
  sub_1000B3FB4(&v752);
  *&v761[96] = *&v760[96];
  *&v761[112] = *&v760[112];
  *&v761[128] = *&v760[128];
  *&v761[144] = *&v760[144];
  *&v761[32] = *&v760[32];
  *&v761[48] = *&v760[48];
  *&v761[64] = *&v760[64];
  *&v761[80] = *&v760[80];
  *v761 = *v760;
  *&v761[16] = *&v760[16];
  if (!*(*v760 + 16) || (sub_1000AEB8C(*v760, v119, v116, v723)) && (v416 = sub_10000C9C0(&qword_1005CF3E0, &unk_1004D26C0), *&v760[24] = v416, v417 = sub_1000B458C(&qword_1005CF3E8, &qword_1005CF3E0, &unk_1004D26C0), *&v760[32] = v417, *v760 = swift_allocObject(), sub_10000E268(v761, *v760 + 16, &qword_1005CF3E0, &unk_1004D26C0), v418 = v743(v760), sub_1000197E0(v760), (v418))
  {
    *(&v792 + 1) = v416;
    *&v793 = v417;
    v419 = swift_allocObject();
    *&v791 = v419;
    v420 = *&v761[112];
    *(v419 + 112) = *&v761[96];
    *(v419 + 128) = v420;
    *(v419 + 144) = *&v761[128];
    *(v419 + 160) = *&v761[144];
    v421 = *&v761[48];
    *(v419 + 48) = *&v761[32];
    *(v419 + 64) = v421;
    v422 = *&v761[80];
    *(v419 + 80) = *&v761[64];
    *(v419 + 96) = v422;
    v423 = *&v761[16];
    *(v419 + 16) = *v761;
    *(v419 + 32) = v423;
  }

  else
  {
    sub_100025F40(v761, &qword_1005CF3E0, &unk_1004D26C0);
    v791 = 0u;
    v792 = 0u;
    *&v793 = 0;
  }

  sub_10000E0E8(v724);

  v413 = v710;
LABEL_179:
  if (*(&v792 + 1))
  {
    swift_bridgeObjectRelease_n();
    sub_1000B35D0(v703, type metadata accessor for NewestMessages);
    sub_1000B364C(&v791, &v795);
    v424 = &v795;
    v425 = v704;
    goto LABEL_196;
  }

  sub_100025F40(&v791, &qword_1005CF328, &unk_1004D2620);
  if (v414 || v705)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_184;
  }

  sub_10000E08C(v724, v761);
  v432 = qword_1005CCE48;

  if (v432 != -1)
  {
    swift_once();
  }

  if (sub_1000B33E4(qword_1005DDF10, v119, v116))
  {
    v433 = 0x100000000000000;
    if (!v742)
    {
      v433 = 0;
    }

    v434 = 0x1000000000000;
    if (!v750)
    {
      v434 = 0;
    }

    v435 = 0x10000000000;
    if (!v745)
    {
      v435 = 0;
    }

    v436 = &_mh_execute_header;
    if (!v746)
    {
      v436 = 0;
    }

    v437 = 0x1000000;
    if (!v410)
    {
      v437 = 0;
    }

    v438 = v685;
    sub_1000AAC34(v724, 0, v727, v437 | v747 | v436 | v435 | v434 | v433 | v692, v685);
    PendingDownload = type metadata accessor for FindPendingDownload(0);
    if ((*(*(PendingDownload - 8) + 48))(v438, 1, PendingDownload) != 1)
    {
      v566 = v682;
      sub_1000B4820(v438, v682, type metadata accessor for FindPendingDownload);
      v567 = (v566 + *(v686 + 36));
      *v567 = _swiftEmptyArrayStorage;
      v567[1] = _swiftEmptyArrayStorage;
      sub_1000B35D0(v438, type metadata accessor for FindPendingDownload);
      v568 = v683;
      sub_100025FDC(v566, v683, &qword_1005CF3C8, &qword_1004D26B0);
      v569 = *(v568 + 48);
      if (!*(v569 + 16) || (sub_1000AEB8C(v569, v730, v728, v723)) && (*&v761[24] = v686, v570 = sub_1000B458C(&qword_1005CF3D0, &qword_1005CF3C8, &qword_1004D26B0), *&v761[32] = v570, v571 = sub_1000B3774(v761), sub_10000E268(v568, v571, &qword_1005CF3C8, &qword_1004D26B0), v572 = v743(v761), sub_1000197E0(v761), (v572))
      {
        *(&v753 + 1) = v686;
        *&v754 = v570;
        v573 = sub_1000B3774(&v752);
        sub_100025FDC(v568, v573, &qword_1005CF3C8, &qword_1004D26B0);
      }

      else
      {
        sub_100025F40(v568, &qword_1005CF3C8, &qword_1004D26B0);
        v752 = 0u;
        v753 = 0u;
        *&v754 = 0;
      }

      goto LABEL_215;
    }

    sub_100025F40(v438, &qword_1005CF3C0, &qword_1004D26A8);
  }

  *&v754 = 0;
  v752 = 0u;
  v753 = 0u;
LABEL_215:
  sub_10000E0E8(v724);

  if (*(&v753 + 1))
  {

    sub_1000B364C(&v752, v760);
    v440 = v760;
    goto LABEL_217;
  }

  sub_100025F40(&v752, &qword_1005CF328, &unk_1004D2620);
  if ((sub_1000B33E4(v675, v730, v728) & 1) == 0)
  {

LABEL_290:
    v770 = 0;
    v768 = 0u;
    v769 = 0u;
    goto LABEL_291;
  }

  v446 = v714;
  sub_1000B4820(v677 + *(v711 + 20) + v693[13] + *(v720 + 28), v714, type metadata accessor for MessagesPendingDownloadPerPass);
  v447 = v687;
  sub_1000B4820(v446, v687, type metadata accessor for MessagesPendingDownload);
  v448 = sub_1000B35D0(v446, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!*(*v447 + 16) && !*(*(v677 + *(v711 + 20) + v693[14]) + 16))
  {
LABEL_289:

    sub_1000B35D0(v687, type metadata accessor for MessagesPendingDownload);
    goto LABEL_290;
  }

  v449 = v684;
  v718(v448);
  v450 = v719;
  sub_1000B4820(v687, v719, type metadata accessor for MessagesPendingDownload);
  v451 = v722;
  sub_10000E268(v449, v722, &unk_1005D91B0, &unk_1004CF400);
  v452 = v711;
  v453 = v677;
  v454 = v693;
  v455 = *(v677 + *(v711 + 20) + v693[14]);
  v456 = v450;
  v457 = v715;
  sub_1000B4820(v456, v715, type metadata accessor for MessagesPendingDownload);
  v458 = v716;
  sub_10000E268(v451, v716, &unk_1005D91B0, &unk_1004CF400);
  v459 = swift_allocObject();
  *(v459 + 16) = v455;
  *&v752 = v725;
  *(&v752 + 1) = sub_1000B4908;
  *&v753 = v459;
  *(&v753 + 1) = sub_1000B2F18;
  *&v754 = 0;
  *(&v754 + 1) = sub_1000B2F2C;
  *&v755 = 0;

  v745 = sub_1000B0484(v457, v458, &v752);
  v461 = v460;
  v462 = v451;
  v464 = v463;
  sub_100025F40(v462, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v719, type metadata accessor for MessagesPendingDownload);
  v465 = 0;
  v466 = 0;
  v742 = (v464 + 32);
  v744 = (v461 | ((HIDWORD(v461) & 1) << 32));
  v746 = v464;
  while (1)
  {
    v467 = v465;
    v468 = *(&off_1005993C8 + v466 + 32);
    LODWORD(v751) = v467;
    LODWORD(v750) = v468;
    if (v468)
    {
      v469 = v468 == 1 ? 11 : 13;
      v470 = v722;
      v471 = v745;
      v472 = sub_1000DB9D8(v469, v745, v744, v722);
      __chkstk_darwin(v472);
      v668 = v470;

      v473 = v471;
      v474 = v726;
      v475 = sub_10009EBDC(sub_1000B490C, &v670[-4], v473);
      v726 = v474;
      v476 = sub_1000B0110(v475);
      sub_100025F40(v470, &unk_1005D91B0, &unk_1004CF400);
    }

    else
    {
      v509 = *(v464 + 16);
      if (v509 > 7)
      {

        v476 = sub_1000B0290(v510, v742, v509 - 7, (2 * v509) | 1);
        goto LABEL_235;
      }

      v532 = v509 - 1;
      if (v509 <= 1)
      {
        v476 = v464;
LABEL_258:
        v453 = v677;
        v452 = v711;
        v454 = v693;
        goto LABEL_235;
      }

      v533 = *(v746 + 16);
      if (!v533)
      {
        goto LABEL_364;
      }

      if (v532 >= v533)
      {
        goto LABEL_365;
      }

      v534 = v746;
      LODWORD(v748) = *(v746 + 32);
      v747 = *(v746 + 40);
      v535 = *(v746 + 48);
      v536 = *(v746 + 49);
      v537 = 24 * v532;
      v538 = &v742[6 * v532];
      v539 = *v538;
      v540 = *(v538 + 1);
      v541 = *(v538 + 16);
      v542 = *(v538 + 17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v534 = sub_10013991C(v746);
      }

      *(v534 + 8) = v539;
      *(v534 + 5) = v540;
      v534[48] = v541;
      v534[49] = v542;
      v543 = &v534[v537 + 32];
      *v543 = v748;
      *(v543 + 1) = v747;
      v543[16] = v535;
      v543[17] = v536;
      if (v509 >> 1 != 1)
      {
        v544 = v509 - 2;
        if (v509 != 3)
        {
          v545 = *(v534 + 2);
          if (v545 < 2)
          {
            goto LABEL_364;
          }

          if (v544 >= v545)
          {
            goto LABEL_365;
          }

          LODWORD(v748) = *(v534 + 14);
          v747 = *(v534 + 8);
          LODWORD(v739) = v534[72];
          v546 = v534[73];
          v547 = 24 * v544;
          v548 = &v534[24 * v544];
          v549 = *(v548 + 8);
          v550 = *(v548 + 5);
          v551 = v548[48];
          v552 = v548[49];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v534 = sub_10013991C(v534);
          }

          v553 = &v534[v547];
          *(v534 + 14) = v549;
          *(v534 + 8) = v550;
          v534[72] = v551;
          v534[73] = v552;
          *(v553 + 8) = v748;
          *(v553 + 5) = v747;
          v553[48] = v739;
          v553[49] = v546;
        }

        if (v509 >> 1 != 2)
        {
          v554 = v509 - 3;
          if (v509 != 5)
          {
            v555 = *(v534 + 2);
            if (v555 < 3)
            {
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
              goto LABEL_368;
            }

            if (v554 >= v555)
            {
              goto LABEL_365;
            }

            LODWORD(v748) = *(v534 + 20);
            v556 = *(v534 + 11);
            v557 = v534[96];
            v558 = v534[97];
            v559 = 24 * v554;
            v560 = &v534[24 * v554];
            v561 = *(v560 + 8);
            v562 = *(v560 + 5);
            v563 = v560[48];
            v564 = v560[49];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v534 = sub_10013991C(v534);
            }

            v565 = &v534[v559];
            *(v534 + 20) = v561;
            *(v534 + 11) = v562;
            v534[96] = v563;
            v534[97] = v564;
            *(v565 + 8) = v748;
            *(v565 + 5) = v556;
            v476 = v534;
            v565[48] = v557;
            v565[49] = v558;
            goto LABEL_258;
          }
        }
      }

      v453 = v677;
      v452 = v711;
      v454 = v693;
      v476 = v534;
    }

LABEL_235:
    v477 = *(v476 + 16);
    if (v477)
    {
      break;
    }

LABEL_229:
    v465 = 1;
    v466 = &_mh_execute_header.magic + 1;
    v464 = v746;
    if (v751)
    {
      sub_100025F40(v684, &unk_1005D91B0, &unk_1004CF400);

      goto LABEL_289;
    }
  }

  v478 = *(v453 + *(v452 + 20) + v454[20]);
  v479 = v476 + 32;
  v480 = *(v478 + 16);
  v481 = (v478 + 32);
  v747 = v478;

  v748 = v476;

  v482 = _swiftEmptyArrayStorage;
  for (i = 0; i != v477; ++i)
  {
    if (v480)
    {
      v494 = *(v479 + 24 * i);
      v495 = v481;
      v496 = v480;
      while (1)
      {
        v497 = *v495;
        v498 = v495[1];
        v499 = v495[3];
        *&v761[32] = v495[2];
        *&v761[48] = v499;
        *v761 = v497;
        *&v761[16] = v498;
        v500 = v495[4];
        v501 = v495[5];
        v502 = v495[7];
        *&v761[96] = v495[6];
        *&v761[112] = v502;
        *&v761[64] = v500;
        *&v761[80] = v501;
        v503 = v495[8];
        v504 = v495[9];
        v505 = v495[10];
        *&v761[169] = *(v495 + 169);
        *&v761[144] = v504;
        *&v761[160] = v505;
        *&v761[128] = v503;
        if (v494 == *v761)
        {
          break;
        }

        v495 += 12;
        if (!--v496)
        {
          goto LABEL_238;
        }
      }

      sub_10001025C(v761, v760);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v482 = sub_1000866F0(0, v482[2] + 1, 1, v482);
      }

      v507 = v482[2];
      v506 = v482[3];
      if (v507 >= v506 >> 1)
      {
        v482 = sub_1000866F0((v506 > 1), v507 + 1, 1, v482);
      }

      *&v760[132] = *&v761[136];
      *&v760[148] = *&v761[152];
      *&v760[164] = *&v761[168];
      v760[180] = v761[184];
      *&v760[68] = *&v761[72];
      *&v760[84] = *&v761[88];
      *&v760[100] = *&v761[104];
      *&v760[116] = *&v761[120];
      *&v760[4] = *&v761[8];
      *&v760[20] = *&v761[24];
      *&v760[36] = *&v761[40];
      *&v760[52] = *&v761[56];
      v482[2] = v507 + 1;
      v484 = &v482[24 * v507];
      *(v484 + 8) = v494;
      v485 = *v760;
      v486 = *&v760[16];
      v487 = *&v760[32];
      *(v484 + 84) = *&v760[48];
      *(v484 + 68) = v487;
      *(v484 + 52) = v486;
      *(v484 + 36) = v485;
      v488 = *&v760[64];
      v489 = *&v760[80];
      v490 = *&v760[96];
      *(v484 + 148) = *&v760[112];
      *(v484 + 132) = v490;
      *(v484 + 116) = v489;
      *(v484 + 100) = v488;
      v491 = *&v760[128];
      v492 = *&v760[144];
      v493 = *&v760[160];
      *(v484 + 209) = *&v760[173];
      *(v484 + 196) = v493;
      *(v484 + 180) = v492;
      *(v484 + 164) = v491;
      v479 = v476 + 32;
    }

LABEL_238:
    ;
  }

  if (v482[2])
  {
    sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
    v508 = sub_1004A6A74();
  }

  else
  {
    v508 = _swiftEmptyDictionarySingleton;
  }

  v511 = v726;
  *v761 = v508;
  sub_1000B2F70(v482, 1, v761);
  v726 = v511;
  v512 = v741;
  if (v511)
  {
    goto LABEL_368;
  }

  v513 = v748;

  v747 = *v761;
  v803[0] = v512;
  v803[1] = v733;
  v804 = v734;
  v514 = v740;
  v805 = v740;
  v515 = v732;
  v806 = v732;
  swift_bridgeObjectRetain_n();

  v516 = sub_1000CE570(_swiftEmptyArrayStorage);
  v517 = v691;
  *v691 = v516;
  *(v517 + 8) = 0;
  v518 = v750;
  sub_10003F6A4(v803, v513, v750, &v791);
  v519 = *(&v793 + 1);
  v520 = v792;
  *(v517 + 64) = v791;
  *(v517 + 80) = v520;
  *(v517 + 96) = v793;
  *(v517 + 112) = v794;
  *(v517 + 9) = 0;
  *v761 = v514;
  *&v761[8] = v515;
  v761[12] = 0;
  v761[13] = v518;
  v521 = v712;
  *(v517 + 16) = v712;
  sub_1000B38F4();

  sub_1004A6674();
  v522 = *(v521 + 36);
  v523 = *(v521 + 40);
  v524 = v517 + v522;
  v525 = _s18InProgressMessagesVMa(0);
  sub_100016D2C();
  sub_1004A7114();
  sub_1004A7114();
  sub_1004A7114();
  v526 = sub_100162D4C(_swiftEmptyArrayStorage);
  *v524 = v514;
  *(v524 + 8) = v515;
  *(v524 + 16) = v747;
  *(v524 + v525[7]) = _swiftEmptyArrayStorage;
  *(v524 + v525[8]) = _swiftEmptyArrayStorage;
  *(v524 + v525[11]) = v526;
  sub_100045288(v517 + v523);
  sub_1000458FC(v519);

  v527 = v690;
  sub_1000B4888(v517, v690, type metadata accessor for DownloadTask);
  v528 = v713;
  v529 = (v527 + *(v713 + 36));
  *v529 = _swiftEmptyArrayStorage;
  v529[1] = _swiftEmptyArrayStorage;
  *&v761[24] = v528;
  v530 = sub_1000B458C(&qword_1005CF350, &qword_1005CF310, &unk_1004D2608);
  *&v761[32] = v530;
  v531 = sub_1000B3774(v761);
  sub_10000E268(v527, v531, &qword_1005CF310, &unk_1004D2608);
  LOBYTE(v524) = v743(v761);
  sub_1000197E0(v761);
  if ((v524 & 1) == 0)
  {
    sub_100025F40(v527, &qword_1005CF310, &unk_1004D2608);
    v453 = v677;
    v452 = v711;
    v454 = v693;
    goto LABEL_229;
  }

  *(&v769 + 1) = v528;
  v770 = v530;
  v574 = sub_1000B3774(&v768);
  sub_100025FDC(v527, v574, &qword_1005CF310, &unk_1004D2608);
  sub_100025F40(v684, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v687, type metadata accessor for MessagesPendingDownload);
  if (!*(&v769 + 1))
  {
LABEL_291:
    sub_100025F40(&v768, &qword_1005CF328, &unk_1004D2620);
    v774 = 0u;
    v775 = 0u;
    v776 = 0;
    goto LABEL_292;
  }

  sub_1000B364C(&v768, &v771);
  v440 = &v771;
LABEL_217:
  sub_1000B364C(v440, &v774);
  if (*(&v775 + 1))
  {

    sub_1000B35D0(v703, type metadata accessor for NewestMessages);
    sub_1000B364C(&v774, &v795);
    v407 = &v795;
    goto LABEL_162;
  }

LABEL_292:
  sub_100025F40(&v774, &qword_1005CF328, &unk_1004D2620);
  if (v708(0))
  {

    goto LABEL_363;
  }

  v575 = v724;
  sub_10000E08C(v724, v761);
  v576 = 0x100000000000000;
  if (!v820)
  {
    v576 = 0;
  }

  v577 = 0x1000000000000;
  if (!v821)
  {
    v577 = 0;
  }

  v578 = 0x10000000000;
  if (!v822)
  {
    v578 = 0;
  }

  v579 = &_mh_execute_header;
  if (!v823)
  {
    v579 = 0;
  }

  v580 = 0x1000000;
  if (!v824)
  {
    v580 = 0;
  }

  v581 = v580 | v825 | v579 | v578 | v577 | v576 | v692;
  v582 = v727;

  sub_1000A86C4(v730, v728, v723, v743, v749, v575, 1, v582, &v795, v581);
  if (*(&v796 + 1))
  {

    sub_1000B364C(&v795, v760);
    v583 = v760;
    goto LABEL_306;
  }

  sub_100025F40(&v795, &qword_1005CF328, &unk_1004D2620);
  if ((sub_1000B33E4(v675, v730, v728) & 1) == 0)
  {

LABEL_360:
    v770 = 0;
    v768 = 0u;
    v769 = 0u;
    goto LABEL_361;
  }

  sub_1000B4820(v677 + *(v711 + 20) + v693[13] + *(v720 + 28), v680, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!v709)
  {
LABEL_316:
    v587 = sub_100163144(_swiftEmptyArrayStorage);
    *v681 = v587;
    sub_100016D2C();
    sub_1004A7114();
    v585 = type metadata accessor for MessagesPendingDownloadPerPass;
    v586 = v680;
    goto LABEL_321;
  }

  if (v709 == 1)
  {
    v584 = v680;
    sub_1000B4820(v680 + *(v702 + 20), v681, type metadata accessor for MessagesPendingDownload);
    v585 = type metadata accessor for MessagesPendingDownloadPerPass;
    v586 = v584;
  }

  else
  {
    sub_1000B4820(v680 + *(v702 + 20), v678, type metadata accessor for MessagesPendingDownload);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    if (sub_1004A70C4())
    {
      sub_1000B35D0(v680, type metadata accessor for MessagesPendingDownloadPerPass);
      sub_1000B4820(v678, v681, type metadata accessor for MessagesPendingDownload);
    }

    else
    {
      v588 = v678;
      v589 = v681;
      sub_1000B4820(v678, v681, type metadata accessor for MessagesPendingDownload);
      __chkstk_darwin(*v588);
      v668 = v703;
      v590 = v726;
      v592 = sub_1000B3DD8(v591, sub_1000B3C74);
      v726 = v590;
      sub_1000B35D0(v680, type metadata accessor for MessagesPendingDownloadPerPass);

      *v589 = v592;
    }

    v585 = type metadata accessor for MessagesPendingDownload;
    v586 = v678;
  }

LABEL_321:
  v593 = sub_1000B35D0(v586, v585);
  if (!*(*v681 + 16) && !*(*(v677 + *(v711 + 20) + v693[14]) + 16))
  {
LABEL_359:

    sub_1000B35D0(v681, type metadata accessor for MessagesPendingDownload);
    goto LABEL_360;
  }

  v594 = v679;
  v718(v593);
  v595 = v719;
  sub_1000B4820(v681, v719, type metadata accessor for MessagesPendingDownload);
  v596 = v722;
  sub_10000E268(v594, v722, &unk_1005D91B0, &unk_1004CF400);
  v597 = *(v677 + *(v711 + 20) + v693[14]);
  v598 = v715;
  sub_1000B4820(v595, v715, type metadata accessor for MessagesPendingDownload);
  v599 = v716;
  sub_10000E268(v596, v716, &unk_1005D91B0, &unk_1004CF400);
  v600 = swift_allocObject();
  *(v600 + 16) = v597;
  *v760 = v725;
  *&v760[8] = sub_1000B4908;
  *&v760[16] = v600;
  *&v760[24] = sub_1000B2F18;
  *&v760[32] = 0;
  *&v760[40] = sub_1000B2F2C;
  *&v760[48] = 0;

  v747 = sub_1000B0484(v598, v599, v760);
  v602 = v601;
  v604 = v603;
  sub_100025F40(v596, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v595, type metadata accessor for MessagesPendingDownload);
  v605 = 0;
  v606 = 0;
  v750 = v604;
  v745 = (v604 + 32);
  v746 = v602 | ((HIDWORD(v602) & 1) << 32);
  while (1)
  {
    LODWORD(v751) = v605;
    if (*(&off_1005993F0 + v606 + 32))
    {
      v607 = *(&off_1005993F0 + v606 + 32);
      v608 = v607 == 1 ? 11 : 13;
      v609 = v722;
      v610 = v747;
      v611 = sub_1000DB9D8(v608, v747, v746, v722);
      __chkstk_darwin(v611);
      v668 = v609;

      v612 = v610;
      v613 = v726;
      v614 = sub_10009EBDC(sub_1000B490C, &v670[-4], v612);
      v726 = v613;
      v615 = sub_1000B0110(v614);
      sub_100025F40(v609, &unk_1005D91B0, &unk_1004CF400);
    }

    else
    {
      v607 = *(&off_1005993F0 + v606 + 32);
      v634 = *(v750 + 16);
      if (v634 <= 7)
      {

        v636 = v634 - 1;
        if (v634 > 1)
        {
          v637 = *(v750 + 16);
          if (!v637)
          {
            goto LABEL_366;
          }

          if (v636 >= v637)
          {
            goto LABEL_367;
          }

          v615 = v750;
          v638 = *(v750 + 32);
          v639 = *(v750 + 40);
          v640 = *(v750 + 48);
          LODWORD(v748) = *(v750 + 49);
          v641 = 24 * v636;
          v642 = &v745[24 * v636];
          v643 = *v642;
          v644 = *(v642 + 1);
          LODWORD(v744) = v642[16];
          LODWORD(v742) = v642[17];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v615 = sub_10013991C(v750);
          }

          *(v615 + 32) = v643;
          *(v615 + 40) = v644;
          *(v615 + 48) = v744;
          *(v615 + 49) = v742;
          v645 = v615 + 32 + v641;
          *v645 = v638;
          *(v645 + 8) = v639;
          *(v645 + 16) = v640;
          *(v645 + 17) = v748;
          if (v634 >> 1 != 1)
          {
            v646 = v634 - 2;
            if (v634 != 3)
            {
              v647 = *(v615 + 16);
              if (v647 < 2)
              {
                goto LABEL_366;
              }

              if (v646 >= v647)
              {
                goto LABEL_367;
              }

              v648 = *(v615 + 56);
              v649 = *(v615 + 64);
              v650 = *(v615 + 72);
              LODWORD(v748) = *(v615 + 73);
              v651 = 24 * v646;
              v652 = v615 + 24 * v646;
              v653 = *(v652 + 32);
              v744 = *(v652 + 40);
              LODWORD(v742) = *(v652 + 48);
              LODWORD(v739) = *(v652 + 49);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v615 = sub_10013991C(v615);
              }

              v654 = v615 + v651;
              *(v615 + 56) = v653;
              *(v615 + 64) = v744;
              *(v615 + 72) = v742;
              *(v615 + 73) = v739;
              *(v654 + 32) = v648;
              *(v654 + 40) = v649;
              *(v654 + 48) = v650;
              *(v654 + 49) = v748;
            }

            if (v634 >> 1 != 2)
            {
              v655 = v634 - 3;
              if (v634 != 5)
              {
                v656 = *(v615 + 16);
                if (v656 < 3)
                {
                  goto LABEL_366;
                }

                if (v655 >= v656)
                {
                  goto LABEL_367;
                }

                v657 = *(v615 + 80);
                v658 = *(v615 + 88);
                v659 = *(v615 + 96);
                LODWORD(v748) = *(v615 + 97);
                v660 = 24 * v655;
                v661 = v615 + 24 * v655;
                v662 = *(v661 + 32);
                v663 = *(v661 + 40);
                v664 = *(v661 + 48);
                LODWORD(v744) = *(v661 + 49);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v615 = sub_10013991C(v615);
                }

                v665 = v615 + v660;
                *(v615 + 80) = v662;
                *(v615 + 88) = v663;
                *(v615 + 96) = v664;
                *(v615 + 97) = v744;
                *(v665 + 32) = v657;
                *(v665 + 40) = v658;
                *(v665 + 48) = v659;
                *(v665 + 49) = v748;
              }
            }
          }
        }

        else
        {
          v615 = v750;
        }
      }

      else
      {

        v615 = sub_1000B0290(v635, v745, v634 - 7, (2 * v634) | 1);
      }
    }

    if (*(v615 + 16))
    {
      break;
    }

LABEL_325:
    v605 = 1;
    v606 = &_mh_execute_header.magic + 1;
    if (v751)
    {
      sub_100025F40(v679, &unk_1005D91B0, &unk_1004CF400);

      goto LABEL_359;
    }
  }

  v616 = *(v677 + *(v711 + 20) + v693[20]);

  v748 = sub_10009EFD8(v617, sub_1000AFBE0, 0, v616);

  v799[0] = v741;
  v799[1] = v733;
  v800 = v734;
  v618 = v740;
  v801 = v740;
  v619 = v732;
  v802 = v732;
  swift_bridgeObjectRetain_n();

  v620 = sub_1000CE570(_swiftEmptyArrayStorage);
  v621 = v689;
  *v689 = v620;
  *(v621 + 8) = 0;
  sub_10003F6A4(v799, v615, v607, &v795);
  v622 = *(&v797 + 1);
  v623 = v796;
  *(v621 + 64) = v795;
  *(v621 + 80) = v623;
  *(v621 + 96) = v797;
  *(v621 + 112) = v798;
  *(v621 + 9) = 1;
  v762 = v618;
  v763 = v619;
  v764 = 1;
  v765 = v607;
  v624 = v712;
  *(v621 + 16) = v712;
  sub_1000B38F4();

  sub_1004A6674();
  v625 = *(v624 + 40);
  v626 = v621 + *(v624 + 36);
  v627 = _s18InProgressMessagesVMa(0);
  sub_100016D2C();
  sub_1004A7114();
  sub_1004A7114();
  sub_1004A7114();
  v628 = sub_100162D4C(_swiftEmptyArrayStorage);
  *v626 = v618;
  *(v626 + 8) = v619;
  *(v626 + 16) = v748;
  *(v626 + v627[7]) = _swiftEmptyArrayStorage;
  *(v626 + v627[8]) = _swiftEmptyArrayStorage;
  *(v626 + v627[11]) = v628;
  sub_100045288(v621 + v625);
  sub_1000458FC(v622);

  v629 = v688;
  sub_1000B4888(v621, v688, type metadata accessor for DownloadTask);
  v630 = v713;
  v631 = (v629 + *(v713 + 36));
  *v631 = _swiftEmptyArrayStorage;
  v631[1] = _swiftEmptyArrayStorage;
  v766 = v630;
  v632 = sub_1000B458C(&qword_1005CF350, &qword_1005CF310, &unk_1004D2608);
  v767 = v632;
  v633 = sub_1000B3774(&v762);
  sub_10000E268(v629, v633, &qword_1005CF310, &unk_1004D2608);
  LOBYTE(v626) = v743(&v762);
  sub_1000197E0(&v762);
  if ((v626 & 1) == 0)
  {
    sub_100025F40(v629, &qword_1005CF310, &unk_1004D2608);
    goto LABEL_325;
  }

  *(&v769 + 1) = v713;
  v770 = v632;
  v666 = sub_1000B3774(&v768);
  sub_100025FDC(v629, v666, &qword_1005CF310, &unk_1004D2608);
  sub_100025F40(v679, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v681, type metadata accessor for MessagesPendingDownload);
  if (!*(&v769 + 1))
  {
LABEL_361:
    sub_100025F40(&v768, &qword_1005CF328, &unk_1004D2620);
    v771 = 0u;
    v772 = 0u;
    v773 = 0;
    goto LABEL_362;
  }

  sub_1000B364C(&v768, v761);
  v583 = v761;
LABEL_306:
  sub_1000B364C(v583, &v771);
  if (*(&v772 + 1))
  {
LABEL_307:
    sub_1000B35D0(v703, type metadata accessor for NewestMessages);
    goto LABEL_308;
  }

LABEL_362:
  sub_100025F40(&v771, &qword_1005CF328, &unk_1004D2620);
LABEL_363:
  v413 = v710;
  v116 = v728;
  v119 = v730;
  v415 = v731;
LABEL_184:
  v426 = 0x100000000000000;
  if (!v820)
  {
    v426 = 0;
  }

  v427 = 0x1000000000000;
  if (!v821)
  {
    v427 = 0;
  }

  v428 = 0x10000000000;
  if (!v822)
  {
    v428 = 0;
  }

  v429 = &_mh_execute_header;
  if (!v823)
  {
    v429 = 0;
  }

  v430 = 0x1000000;
  if (!v824)
  {
    v430 = 0;
  }

  v668 = v430 | v825 | v429 | v428 | v427 | v426 | v692;
  v118 = v723;
  v196 = v724;
  v104 = v743;
  v431 = v749;
  sub_1000AD0C8(v727, v119, v116, v723, v413, v743, v749, v415, &v774);
  v198 = v704;
  if (!*(&v775 + 1))
  {
    sub_100025F40(&v774, &qword_1005CF328, &unk_1004D2620);
    sub_10000E08C(v196, v761);
    sub_1000A9E50(v119, v116, v118, v104, v431, v196, v415, &v771);
    if (*(&v772 + 1))
    {
      sub_1000B35D0(v703, type metadata accessor for NewestMessages);
      sub_1000B364C(&v771, &v774);
      v407 = &v774;
      v408 = v198;
      goto LABEL_163;
    }

LABEL_220:
    v441 = sub_100025F40(&v771, &qword_1005CF328, &unk_1004D2620);
    __chkstk_darwin(v441);
    v413 = v710;
    v670[-4] = v196;
    v670[-3] = v413;
    v442 = v727;
    v668 = v443;
    v669 = v727;
    sub_1000A9C04(v119, v116, v118, v104, sub_1000B3C68, &v774);
    if (*(&v775 + 1))
    {
      goto LABEL_195;
    }

    sub_100025F40(&v774, &qword_1005CF328, &unk_1004D2620);
    sub_10000E08C(v196, v761);

    sub_1000A98BC(v119, v116, v118, v104, v749, v196, v731, v442, &v771);
    if (*(&v772 + 1))
    {
      goto LABEL_307;
    }

    sub_100025F40(&v771, &qword_1005CF328, &unk_1004D2620);
    v444 = v724;
    sub_10000E08C(v724, v761);
    sub_1000A9608(v730, v728, v723, v743, v444, v731, &v771);
    sub_1000B35D0(v703, type metadata accessor for NewestMessages);
    if (!*(&v772 + 1))
    {
      sub_100025F40(&v771, &qword_1005CF328, &unk_1004D2620);
      v445 = v704;
      v704[4] = 0;
      *v445 = 0u;
      *(v445 + 1) = 0u;
      goto LABEL_164;
    }

LABEL_308:
    sub_1000B364C(&v771, &v774);
    v407 = &v774;
LABEL_162:
    v408 = v704;
LABEL_163:
    sub_1000B364C(v407, v408);
LABEL_164:
    v114 = type metadata accessor for MessageBatches;
    v115 = v710;
    goto LABEL_165;
  }

LABEL_195:
  sub_1000B35D0(v703, type metadata accessor for NewestMessages);
  sub_1000B364C(&v774, v761);
  v424 = v761;
  v425 = v198;
LABEL_196:
  sub_1000B364C(v424, v425);
  v114 = type metadata accessor for MessageBatches;
  v115 = v413;
LABEL_165:
  sub_1000B35D0(v115, v114);
  return *&v86;
}

uint64_t sub_1000A51C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t *)@<X4>, _DWORD *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, char a15)
{
  v226 = a8;
  v227 = a7;
  v256 = a5;
  v245 = a2;
  v239 = a1;
  v234 = a9;
  v242 = type metadata accessor for SearchMailbox(0);
  __chkstk_darwin(v242);
  v241 = (&v213 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v243 = sub_10000C9C0(&qword_1005CF308, &qword_1004D2600);
  __chkstk_darwin(v243);
  v240 = &v213 - v21;
  v258 = _s19UserInitiatedSearchV5StateOMa(0);
  __chkstk_darwin(v258);
  v249 = &v213 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = _s19UserInitiatedSearchVMa(0);
  v229 = *(v257 - 8);
  __chkstk_darwin(v257);
  v244 = (&v213 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = _s29DetermineMessageBatchesResultOMa(0);
  __chkstk_darwin(v221);
  v222 = (&v213 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v25 - 8);
  v220 = &v213 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for DownloadTask(0);
  __chkstk_darwin(v216);
  v217 = (&v213 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v218 = sub_10000C9C0(&qword_1005CF310, &unk_1004D2608);
  __chkstk_darwin(v218);
  v219 = &v213 - v28;
  v29 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v29 - 8);
  v225 = &v213 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v230 = &v213 - v32;
  __chkstk_darwin(v33);
  v232 = &v213 - v34;
  v35 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  __chkstk_darwin(v35 - 8);
  v228 = &v213 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for MessagesPendingDownload(0);
  __chkstk_darwin(v37 - 8);
  v223 = &v213 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v224 = &v213 - v40;
  __chkstk_darwin(v41);
  v253 = &v213 - v42;
  v231 = 0;
  v254 = _s29DetermineNewestMessagesResultOMa(0);
  __chkstk_darwin(v254);
  v44 = (&v213 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v248 = *(v15 + 172);
  v45 = *v15;
  v247 = *(v15 + 8);
  v46 = *(v15 + 16);
  v246 = *(v15 + 24);
  v235 = v15;
  v47 = *(v15 + 144);
  v48 = *(v47 + 16);
  v233 = a3;
  v250 = v46;
  v251 = v45;
  v215 = a4;
  v255 = v47;
  if (v48)
  {
    *&v266 = _swiftEmptyArrayStorage;
    swift_bridgeObjectRetain_n();

    sub_100092068(0, v48, 0);
    v49 = v266;
    v50 = (v47 + 48);
    do
    {
      v52 = *(v50 - 1);
      v51 = *v50;
      sub_100014CEC(v52, *v50);
      *&v266 = v49;
      v54 = v49[2];
      v53 = v49[3];
      v16 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        sub_100092068((v53 > 1), v54 + 1, 1);
        v49 = v266;
      }

      v50 += 5;
      v49[2] = v16;
      v55 = &v49[2 * v54];
      v55[4] = v52;
      v55[5] = v51;
      --v48;
    }

    while (v48);
    a3 = v233;
  }

  else
  {
    swift_bridgeObjectRetain_n();

    v49 = _swiftEmptyArrayStorage;
  }

  v56 = sub_1000CE67C(v49);

  v57 = v239 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v236 = _s13SelectedStateV7WrappedVMa(0);
  v58 = *(v236 + 20);
  v252 = v57;
  v59 = v57 + v58;
  v237 = type metadata accessor for MailboxSyncState(0);
  v60 = *(v59 + *(v237 + 56));
  *&v272 = _swiftEmptySetSingleton;
  BYTE8(v272) = 0;

  v61 = sub_10016324C(_swiftEmptyArrayStorage);
  v273 = v61;
  v62 = sub_10015D510(v60, v56);

  if (v62[2])
  {
    *&v266 = v251;
    *(&v266 + 1) = v247;
    LOWORD(v267) = v248;
    *(&v267 + 1) = v250;
    LODWORD(v268) = v246;
    *&v263 = v250;
    DWORD2(v263) = v246;
    *(&v268 + 1) = v62;
    *&v269 = &type metadata for GetUIDsForDownloadRequests;
    sub_100026044();
    sub_1004A6674();
    v278 = v270;
    v279 = v271;
    v280 = v272;
    v281 = v273;
    v274 = v266;
    v275 = v267;
    v276 = v268;
    v277 = v269;
    sub_1000965C0(&v274, v259);
    *&v259[120] = _swiftEmptyArrayStorage;
    *&v259[128] = _swiftEmptyArrayStorage;
    sub_1000965F8(&v274);
    *&v260[96] = *&v259[96];
    *&v260[112] = *&v259[112];
    *&v260[128] = *&v259[128];
    *&v260[32] = *&v259[32];
    *&v260[48] = *&v259[48];
    *&v260[64] = *&v259[64];
    *&v260[80] = *&v259[80];
    *v260 = *v259;
    *&v260[16] = *&v259[16];
    v61 = &qword_1004D2618;
    v63 = sub_10000C9C0(&qword_1005CF318, &qword_1004D2618);
    *&v259[24] = v63;
    v64 = sub_1000B458C(&qword_1005CF320, &qword_1005CF318, &qword_1004D2618);
    *&v259[32] = v64;
    *v259 = swift_allocObject();
    sub_10000E268(v260, *v259 + 16, &qword_1005CF318, &qword_1004D2618);
    v65 = v256(v259);
    sub_1000197E0(v259);
    if (v65)
    {

      v66 = v234;
      v234[3] = v63;
      v66[4] = v64;
      result = swift_allocObject();
      *v66 = result;
      v68 = *&v260[112];
      *(result + 112) = *&v260[96];
      *(result + 128) = v68;
      *(result + 144) = *&v260[128];
      v69 = *&v260[48];
      *(result + 48) = *&v260[32];
      *(result + 64) = v69;
      v70 = *&v260[80];
      *(result + 80) = *&v260[64];
      *(result + 96) = v70;
      v71 = *&v260[16];
      *(result + 16) = *v260;
      *(result + 32) = v71;
      return result;
    }

    sub_100025F40(v260, &qword_1005CF318, &qword_1004D2618);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v214 = a13;
  LOBYTE(v72) = v235;
  sub_1000A7A7C(v239, v256, a6, v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v74 = v249;
  v75 = v253;
  if (EnumCaseMultiPayload == 1)
  {

    v76 = *(v44 + 1);
    v77 = v234;
    *v234 = *v44;
    *(v77 + 1) = v76;
    v77[4] = v44[4];
    return result;
  }

  sub_1000B35D0(v44, _s29DetermineNewestMessagesResultOMa);
  if (qword_1005CCE28 != -1)
  {
    swift_once();
  }

  v78 = v245;
  v79 = sub_1000B33E4(qword_1005DDEF0, v245, a3);
  v238 = a6;
  if ((v79 & 1) == 0)
  {

    goto LABEL_62;
  }

  v16 = v236;
  v80 = v237;
  v81 = v252;
  v82 = v252 + *(v236 + 20) + *(v237 + 52);
  v83 = v82 + *(type metadata accessor for PendingPersistenceUpdates(0) + 28);
  v72 = v228;
  sub_1000B4820(v83, v228, type metadata accessor for MessagesPendingDownloadPerPass);
  sub_1000B4820(v72, v75, type metadata accessor for MessagesPendingDownload);
  v84 = sub_1000B35D0(v72, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!*(*v75 + 16) && !*(*(v81 + *(v16 + 20) + *(v80 + 56)) + 16))
  {

    sub_1000B35D0(v75, type metadata accessor for MessagesPendingDownload);
    a3 = v233;
    v78 = v245;
    goto LABEL_62;
  }

  v85 = v232;
  v227(v84);
  v86 = v224;
  sub_1000B4820(v75, v224, type metadata accessor for MessagesPendingDownload);
  a6 = &unk_1004CF400;
  v75 = v230;
  sub_10000E268(v85, v230, &unk_1005D91B0, &unk_1004CF400);
  v87 = *(v81 + *(v16 + 20) + *(v80 + 56));
  v16 = v223;
  sub_1000B4820(v86, v223, type metadata accessor for MessagesPendingDownload);
  v88 = v225;
  sub_10000E268(v75, v225, &unk_1005D91B0, &unk_1004CF400);
  v89 = swift_allocObject();
  *(v89 + 16) = v87;
  *&v274 = v255;
  *(&v274 + 1) = sub_1000B38CC;
  *&v275 = v89;
  *(&v275 + 1) = sub_1000B2F18;
  *&v276 = 0;
  *(&v276 + 1) = sub_1000B2F2C;
  *&v277 = 0;

  v90 = sub_1000B0484(v16, v88, &v274);
  v228 = v91;
  sub_100025F40(v75, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v86, type metadata accessor for MessagesPendingDownload);
  v227 = v90;
  LODWORD(v226) = 0;
  v92 = v228;
  v61 = *(v228 + 16);
  LOBYTE(v72) = v61 - 7;
  a3 = v233;
  v78 = v245;
  if (v61 > 7)
  {

    v94 = sub_1000B0290(v93, v92 + 32, v61 - 7, (2 * v61) | 1);
    v74 = v249;
LABEL_25:
    v96 = v252;
    v97 = v236;
    v98 = v237;
    v61 = *(v94 + 2);
    if (!v61)
    {
      goto LABEL_60;
    }

LABEL_26:
    v99 = *(v96 + *(v97 + 20) + *(v98 + 80));
    v100 = *(v99 + 16);
    v254 = v99 + 32;
    v255 = (v94 + 8);
    v236 = v99;
    v101 = v94;

    v237 = v101;

    v102 = 0;
    v103 = _swiftEmptyArrayStorage;
    v252 = v61;
    do
    {
      if (v100)
      {
        v114 = *(v255 + 24 * v102);
        v115 = v254;
        v116 = v100;
        while (1)
        {
          v117 = *v115;
          v118 = v115[1];
          v119 = v115[3];
          *&v260[32] = v115[2];
          *&v260[48] = v119;
          *v260 = v117;
          *&v260[16] = v118;
          v120 = v115[4];
          v121 = v115[5];
          v122 = v115[7];
          *&v260[96] = v115[6];
          *&v260[112] = v122;
          *&v260[64] = v120;
          *&v260[80] = v121;
          v123 = v115[8];
          v124 = v115[9];
          v125 = v115[10];
          *&v260[169] = *(v115 + 169);
          *&v260[144] = v124;
          *&v260[160] = v125;
          *&v260[128] = v123;
          if (v114 == *v260)
          {
            break;
          }

          v115 += 12;
          if (!--v116)
          {
            goto LABEL_28;
          }
        }

        sub_10001025C(v260, v259);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1000866F0(0, v103[2] + 1, 1, v103);
        }

        v127 = v103[2];
        v126 = v103[3];
        if (v127 >= v126 >> 1)
        {
          v103 = sub_1000866F0((v126 > 1), v127 + 1, 1, v103);
        }

        *&v259[132] = *&v260[136];
        *&v259[148] = *&v260[152];
        *&v259[164] = *&v260[168];
        v259[180] = v260[184];
        *&v259[68] = *&v260[72];
        *&v259[84] = *&v260[88];
        *&v259[100] = *&v260[104];
        *&v259[116] = *&v260[120];
        *&v259[4] = *&v260[8];
        *&v259[20] = *&v260[24];
        *&v259[36] = *&v260[40];
        *&v259[52] = *&v260[56];
        v103[2] = v127 + 1;
        v104 = &v103[24 * v127];
        *(v104 + 8) = v114;
        v105 = *v259;
        v106 = *&v259[16];
        v107 = *&v259[32];
        *(v104 + 84) = *&v259[48];
        *(v104 + 68) = v107;
        *(v104 + 52) = v106;
        *(v104 + 36) = v105;
        v108 = *&v259[64];
        v109 = *&v259[80];
        v110 = *&v259[96];
        *(v104 + 148) = *&v259[112];
        *(v104 + 132) = v110;
        *(v104 + 116) = v109;
        *(v104 + 100) = v108;
        v111 = *&v259[128];
        v112 = *&v259[144];
        v113 = *&v259[160];
        *(v104 + 209) = *&v259[173];
        *(v104 + 196) = v113;
        *(v104 + 180) = v112;
        *(v104 + 164) = v111;
        v61 = v252;
      }

LABEL_28:
      ++v102;
    }

    while (v102 != v61);
    if (v103[2])
    {
      sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
      v128 = sub_1004A6A74();
    }

    else
    {
      v128 = _swiftEmptyDictionarySingleton;
    }

    v129 = v251;
    *v260 = v128;
    v130 = v231;
    sub_1000B2F70(v103, 1, v260);
    if (v130)
    {

      __break(1u);
      return result;
    }

    v131 = v237;

    v255 = *v260;
    v282[0] = v129;
    v282[1] = v247;
    v283 = v248;
    v132 = v250;
    v284 = v250;
    v285 = v246;
    v133 = v246;
    swift_bridgeObjectRetain_n();

    v134 = sub_1000CE570(_swiftEmptyArrayStorage);
    v135 = v217;
    *v217 = v134;
    *(v135 + 8) = 0;
    v136 = v226;
    sub_10003F6A4(v282, v131, v226, v260);
    v137 = *&v260[40];
    v138 = *&v260[16];
    *(v135 + 64) = *v260;
    *(v135 + 80) = v138;
    *(v135 + 96) = *&v260[32];
    *(v135 + 112) = v260[48];
    *(v135 + 9) = 0;
    *v259 = v132;
    *&v259[8] = v133;
    LODWORD(a6) = v133;
    v259[12] = 0;
    v259[13] = v136;
    v139 = v216;
    *(v135 + 16) = v216;
    sub_1000B38F4();

    sub_1004A6674();
    v140 = *(v139 + 36);
    v254 = *(v139 + 40);
    v72 = v135 + v140;
    v141 = _s18InProgressMessagesVMa(0);
    sub_100016D2C();
    sub_1004A7114();
    sub_1004A7114();
    sub_1004A7114();
    v142 = sub_100162D4C(_swiftEmptyArrayStorage);
    *v72 = v132;
    *(v72 + 8) = a6;
    *(v72 + 16) = v255;
    *(v72 + v141[7]) = _swiftEmptyArrayStorage;
    *(v72 + v141[8]) = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
    *(v72 + v141[11]) = v142;
    sub_100045288(v135 + v254);
    sub_1000458FC(v137);

    v143 = v219;
    sub_1000B4888(v135, v219, type metadata accessor for DownloadTask);
    v75 = v218;
    v144 = (v143 + *(v218 + 36));
    *v144 = _swiftEmptyArrayStorage;
    v144[1] = _swiftEmptyArrayStorage;
    *&v259[24] = v75;
    v61 = sub_1000B458C(&qword_1005CF350, &qword_1005CF310, &unk_1004D2608);
    *&v259[32] = v61;
    v145 = sub_1000B3774(v259);
    sub_10000E268(v143, v145, &qword_1005CF310, &unk_1004D2608);
    LOBYTE(v72) = v256(v259);
    sub_1000197E0(v259);
    if ((v72 & 1) == 0)
    {
      sub_100025F40(v143, &qword_1005CF310, &unk_1004D2608);
      a3 = v233;
      v78 = v245;
      v74 = v249;
      LOBYTE(v72) = v227;
      goto LABEL_61;
    }

    *(&v264 + 1) = v75;
    v265 = v61;
    v146 = sub_1000B3774(&v263);
    sub_100025FDC(v143, v146, &qword_1005CF310, &unk_1004D2608);
    sub_100025F40(v232, &unk_1005D91B0, &unk_1004CF400);
    sub_1000B35D0(v253, type metadata accessor for MessagesPendingDownload);
    a3 = v233;
    v78 = v245;
    v74 = v249;
    if (*(&v264 + 1))
    {
      sub_1000B364C(&v263, &v266);
      v147 = &v266;
      return sub_1000B364C(v147, v234);
    }

    goto LABEL_63;
  }

  v95 = v61 - 1;
  v74 = v249;
  v94 = v92;
  if (v61 <= 1)
  {
    goto LABEL_25;
  }

  v148 = *(v92 + 16);
  if (!v148)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v95 < v148)
  {
    LODWORD(v16) = *(v92 + 32);
    v255 = *(v92 + 40);
    LOBYTE(a6) = *(v92 + 48);
    LODWORD(v254) = *(v92 + 49);
    v75 = 24 * v95;
    v149 = v92 + 32 + 24 * v95;
    LODWORD(a3) = *v149;
    v78 = *(v149 + 8);
    LOBYTE(v72) = *(v149 + 16);
    LOBYTE(v74) = *(v149 + 17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v92;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_50;
  }

LABEL_95:
  while (1)
  {
    __break(1u);
LABEL_96:
    v94 = sub_10013991C(v228);
LABEL_50:
    v94[8] = a3;
    *(v94 + 5) = v78;
    *(v94 + 48) = v72;
    *(v94 + 49) = v74;
    v151 = v94 + v75 + 32;
    *v151 = v16;
    *(v151 + 1) = v255;
    v151[16] = a6;
    v151[17] = v254;
    a3 = v233;
    v78 = v245;
    v74 = v249;
    v96 = v252;
    v98 = v237;
    v72 = v61 >> 1;
    if (v61 >> 1 == 1)
    {
      break;
    }

    v152 = v61 - 2;
    if (v61 == 3)
    {
      goto LABEL_57;
    }

    v153 = *(v94 + 2);
    if (v153 < 2)
    {
      goto LABEL_94;
    }

    if (v152 < v153)
    {
      LODWORD(v255) = v94[14];
      v254 = *(v94 + 8);
      LODWORD(v230) = *(v94 + 72);
      v75 = *(v94 + 73);
      v154 = 6 * v152;
      v155 = &v94[6 * v152];
      v156 = v155[8];
      v157 = *(v155 + 5);
      v158 = *(v155 + 48);
      LODWORD(v16) = *(v155 + 49);
      a6 = v94;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a6 = sub_10013991C(a6);
      }

      v96 = v252;
      v98 = v237;
      v94 = a6;
      v159 = &a6[v154];
      a6[14] = v156;
      *(a6 + 8) = v157;
      *(a6 + 72) = v158;
      *(a6 + 73) = v16;
      v159[8] = v255;
      *(v159 + 5) = v254;
      *(v159 + 48) = v230;
      *(v159 + 49) = v75;
      a3 = v233;
      v78 = v245;
      v74 = v249;
LABEL_57:
      if (v72 == 2)
      {
        break;
      }

      v160 = v61 - 3;
      if (v61 == 5)
      {
        break;
      }

      v204 = *(v94 + 2);
      if (v204 < 3)
      {
        goto LABEL_94;
      }

      if (v160 < v204)
      {
        LODWORD(v255) = v94[20];
        v205 = *(v94 + 11);
        v206 = *(v94 + 96);
        v207 = *(v94 + 97);
        v16 = 24 * v160;
        v208 = &v94[6 * v160];
        v75 = v208[8];
        v209 = *(v208 + 5);
        v210 = *(v208 + 48);
        v211 = *(v208 + 49);
        a6 = v94;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a6 = sub_10013991C(a6);
        }

        v94 = a6;
        v212 = a6 + v16;
        a6[20] = v75;
        *(a6 + 11) = v209;
        *(a6 + 96) = v210;
        *(a6 + 97) = v211;
        *(v212 + 8) = v255;
        *(v212 + 5) = v205;
        v212[48] = v206;
        v212[49] = v207;
        a3 = v233;
        v78 = v245;
        v74 = v249;
        goto LABEL_25;
      }
    }
  }

  v97 = v236;
  v61 = *(v94 + 2);
  if (v61)
  {
    goto LABEL_26;
  }

LABEL_60:

  LOBYTE(v72) = v227;
LABEL_61:
  sub_100025F40(v232, &unk_1005D91B0, &unk_1004CF400);

  sub_1000B35D0(v253, type metadata accessor for MessagesPendingDownload);
LABEL_62:
  v265 = 0;
  v263 = 0u;
  v264 = 0u;
LABEL_63:
  sub_100025F40(&v263, &qword_1005CF328, &unk_1004D2620);
  if (qword_1005CCE90 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF88, v78, a3) & 1) == 0)
  {
    __break(1u);
    goto LABEL_94;
  }

  v237 = a12;
  v232 = *(v235 + 152);
  v161 = *(v232 + 16);
  v162 = v244;
  if (!v161)
  {
LABEL_73:
    result = sub_100061FF0(v232);
    if (result)
    {
      v179 = v222;
      v180 = v235;
      sub_1000AB17C(v239, v256, v238, v237, a14, a15 & 1, v222);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        v181 = *(v179 + 1);
        v182 = v234;
        *v234 = *v179;
        *(v182 + 1) = v181;
        v182[4] = v179[4];
      }

      else
      {
        v185 = HIDWORD(v214) & 1;
        v186 = v214 & 1;
        v257 = HIWORD(v214) & 1;
        v258 = (v214 >> 40) & 1;
        v255 = HIBYTE(v214) & 1;
        v187 = BYTE3(v214) & 1;
        v188 = v214 >> 16;
        v189 = v179;
        v190 = v214 >> 8;
        v191 = v220;
        sub_1000B4888(v189, v220, type metadata accessor for MessageBatches);
        __chkstk_darwin(v78);
        *(&v213 - 4) = v180;
        *(&v213 - 3) = v191;
        LODWORD(v253) = v186;
        *(&v213 - 16) = v186;
        v250 = v190;
        v251 = v188;
        *(&v213 - 15) = v190;
        *(&v213 - 14) = v188;
        LODWORD(v252) = v187;
        *(&v213 - 13) = v187;
        v254 = v185;
        *(&v213 - 12) = v185;
        v193 = v257;
        v192 = v258;
        v195 = v255;
        v194 = v256;
        *(&v213 - 11) = v258;
        *(&v213 - 10) = v193;
        *(&v213 - 9) = v195;
        v196 = v233;
        v197 = v215;
        sub_1000A8478(v198, v233, v194, sub_1000B3630, &v261, v215);
        if (v262)
        {
          sub_1000B364C(&v261, &v263);
          sub_1000B364C(&v263, &v266);
          v199 = v234;
          v200 = v220;
        }

        else
        {
          v201 = sub_100025F40(&v261, &qword_1005CF328, &unk_1004D2620);
          __chkstk_darwin(v201);
          v202 = v220;
          *(&v213 - 6) = v235;
          *(&v213 - 5) = v202;
          v203 = v237;
          *(&v213 - 4) = v239;
          *(&v213 - 3) = v203;
          *(&v213 - 16) = v253;
          LOBYTE(v203) = v251;
          *(&v213 - 15) = v250;
          *(&v213 - 14) = v203;
          *(&v213 - 13) = v252;
          *(&v213 - 12) = v254;
          *(&v213 - 11) = v192;
          *(&v213 - 10) = v193;
          *(&v213 - 9) = v195;
          sub_1000A814C(v245, v196, v256, v238, sub_1000B3634, &v261, v197);
          v200 = v202;
          if (v262)
          {
            sub_1000B364C(&v261, &v263);
            sub_1000B364C(&v263, &v266);
          }

          else
          {
            sub_100025F40(&v261, &qword_1005CF328, &unk_1004D2620);
            v266 = 0u;
            v267 = 0u;
            *&v268 = 0;
          }

          v199 = v234;
        }

        sub_1000B35D0(v200, type metadata accessor for MessageBatches);
        if (*(&v267 + 1))
        {
          sub_1000B364C(&v266, v259);
          return sub_1000B364C(v259, v199);
        }

        else
        {
          result = sub_100025F40(&v266, &qword_1005CF328, &unk_1004D2620);
          v199[4] = 0;
          *v199 = 0u;
          *(v199 + 1) = 0u;
        }
      }
    }

    else
    {
      v183 = v234;
      v234[4] = 0;
      *v183 = 0u;
      *(v183 + 1) = 0u;
    }

    return result;
  }

  v163 = v232 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
  v164 = *(v229 + 72);
  v236 = v164;
  while (2)
  {
    sub_1000B4820(v163, v162, _s19UserInitiatedSearchVMa);
    sub_1000B4820(v162 + *(v257 + 20), v74, _s19UserInitiatedSearchV5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000B35D0(v162, _s19UserInitiatedSearchVMa);
      sub_1000B35D0(v74, _s19UserInitiatedSearchV5StateOMa);
      goto LABEL_69;
    }

    v166 = *v74;
    v165 = *(v74 + 8);
    v254 = *(v74 + 16);
    LODWORD(v253) = *(v74 + 24);
    v167 = *v162;
    LODWORD(v252) = *(v237 + 4);
    v169 = v241;
    v168 = v242;
    *v241 = 223;
    *(v169 + 104) = _swiftEmptySetSingleton;
    *(v169 + 112) = 0;
    v170 = *(v168 + 52);
    v171 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    (*(*(v171 - 8) + 56))(v169 + v170, 1, 1, v171);
    *(v169 + 8) = v167;
    v172 = v250;
    v173 = v247;
    *(v169 + 16) = v251;
    *(v169 + 24) = v173;
    *(v169 + 32) = v248;
    *(v169 + 40) = v172;
    LODWORD(v173) = v246;
    *(v169 + 48) = v246;
    LODWORD(v263) = v167;
    *(&v263 + 1) = v172;
    LODWORD(v264) = v173;
    *(v169 + 56) = v168;
    swift_bridgeObjectRetain_n();

    sub_1000B3664(v166);
    sub_1000B3720();

    sub_1004A6674();
    *(v169 + 120) = v166;
    *(v169 + 128) = v165;
    v255 = v165;
    *(v169 + 136) = v254;
    *(v169 + 144) = v253;
    *(v169 + 145) = v252;
    v174 = v240;
    sub_1000B4888(v169, v240, type metadata accessor for SearchMailbox);
    v175 = v243;
    v176 = (v174 + *(v243 + 36));
    *v176 = _swiftEmptyArrayStorage;
    v176[1] = _swiftEmptyArrayStorage;
    *(&v264 + 1) = v175;
    v177 = sub_1000B458C(&qword_1005CF338, &qword_1005CF308, &qword_1004D2600);
    v265 = v177;
    v178 = sub_1000B3774(&v263);
    sub_10000E268(v174, v178, &qword_1005CF308, &qword_1004D2600);
    LOBYTE(v167) = v256(&v263);
    sub_1000197E0(&v263);
    if ((v167 & 1) == 0)
    {
      sub_1000B37D8(v166);

      sub_100025F40(v174, &qword_1005CF308, &qword_1004D2600);
      v162 = v244;
      sub_1000B35D0(v244, _s19UserInitiatedSearchVMa);
      v78 = v245;
      v74 = v249;
      v164 = v236;
LABEL_69:
      v163 += v164;
      if (!--v161)
      {
        goto LABEL_73;
      }

      continue;
    }

    break;
  }

  *(&v267 + 1) = v243;
  *&v268 = v177;
  v184 = sub_1000B3774(&v266);
  sub_100025FDC(v174, v184, &qword_1005CF308, &qword_1004D2600);
  sub_1000B37D8(v166);

  sub_1000B35D0(v244, _s19UserInitiatedSearchVMa);
  sub_1000B364C(&v266, v259);
  v147 = v259;
  return sub_1000B364C(v147, v234);
}

uint64_t sub_1000A6DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, char a13, uint64_t *a14)
{
  v73 = a4;
  v77 = a1;
  v85 = type metadata accessor for SearchMailbox(0);
  __chkstk_darwin(v85);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10000C9C0(&qword_1005CF308, &qword_1004D2600);
  __chkstk_darwin(v86);
  v84 = &v71 - v21;
  v95 = _s19UserInitiatedSearchV5StateOMa(0);
  __chkstk_darwin(v95);
  v88 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = _s19UserInitiatedSearchVMa(0);
  v23 = *(v94 - 8);
  __chkstk_darwin(v94);
  v25 = (&v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = _s29DetermineMessageBatchesResultOMa(0);
  __chkstk_darwin(v76);
  v27 = (&v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v28 - 8);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005CCE90 != -1)
  {
    swift_once();
  }

  result = sub_1000B33E4(qword_1005DDF88, a2, a3);
  if (result)
  {
    v74 = v27;
    v75 = v30;
    v71 = a2;
    v72 = a3;
    v78 = a7;
    v32 = a14;
    v87 = a10;
    v79 = a14[19];
    v33 = *(v79 + 16);
    v34 = v88;
    if (v33)
    {
      v35 = v79 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v36 = *(v23 + 72);
      v83 = a5;
      v82 = a14;
      v80 = v36;
      v81 = v25;
      do
      {
        sub_1000B4820(v35, v25, _s19UserInitiatedSearchVMa);
        sub_1000B4820(v25 + *(v94 + 20), v34, _s19UserInitiatedSearchV5StateOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1000B35D0(v25, _s19UserInitiatedSearchVMa);
          sub_1000B35D0(v34, _s19UserInitiatedSearchV5StateOMa);
        }

        else
        {
          v37 = *(v34 + 8);
          v96 = *v34;
          v97 = v37;
          v93 = *(v34 + 16);
          v92 = *(v34 + 24);
          v38 = *v25;
          v90 = *(v32 + 43);
          v39 = *v32;
          v89 = v32[1];
          v40 = v32;
          v41 = v32[2];
          v42 = *(v40 + 6);
          v91 = *(v87 + 4);
          *v20 = 223;
          *(v20 + 13) = _swiftEmptySetSingleton;
          v20[112] = 0;
          v43 = a6;
          v44 = v85;
          v45 = *(v85 + 52);
          v46 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
          (*(*(v46 - 8) + 56))(&v20[v45], 1, 1, v46);
          *(v20 + 2) = v38;
          v47 = v89;
          *(v20 + 2) = v39;
          *(v20 + 3) = v47;
          *(v20 + 16) = v90;
          *(v20 + 5) = v41;
          *(v20 + 12) = v42;
          LODWORD(v100) = v38;
          *(&v100 + 1) = v41;
          v101 = v42;
          *(v20 + 7) = v44;
          swift_bridgeObjectRetain_n();

          v48 = v96;
          sub_1000B3664(v96);
          sub_1000B3720();
          v49 = v97;

          sub_1004A6674();
          *(v20 + 15) = v48;
          *(v20 + 16) = v49;
          *(v20 + 17) = v93;
          v20[144] = v92;
          *(v20 + 145) = v91;
          v50 = v84;
          sub_1000B4888(v20, v84, type metadata accessor for SearchMailbox);
          v51 = v86;
          v52 = (v50 + *(v86 + 36));
          *v52 = _swiftEmptyArrayStorage;
          v52[1] = _swiftEmptyArrayStorage;
          v102 = v51;
          v53 = sub_1000B458C(&qword_1005CF338, &qword_1005CF308, &qword_1004D2600);
          v103 = v53;
          v54 = sub_1000B3774(&v100);
          sub_10000E268(v50, v54, &qword_1005CF308, &qword_1004D2600);
          a6 = v43;
          a5 = v83;
          LOBYTE(v39) = v83(&v100);
          sub_1000197E0(&v100);
          if (v39)
          {
            *(&v105 + 1) = v86;
            v106 = v53;
            v59 = sub_1000B3774(&v104);
            sub_100025FDC(v50, v59, &qword_1005CF308, &qword_1004D2600);
            sub_1000B37D8(v96);

            sub_1000B35D0(v81, _s19UserInitiatedSearchVMa);
            sub_1000B364C(&v104, &v107);
            return sub_1000B364C(&v107, v78);
          }

          sub_1000B37D8(v96);

          sub_100025F40(v50, &qword_1005CF308, &qword_1004D2600);
          v25 = v81;
          sub_1000B35D0(v81, _s19UserInitiatedSearchVMa);
          v32 = v82;
          v34 = v88;
          v36 = v80;
        }

        v35 += v36;
        --v33;
      }

      while (v33);
    }

    result = sub_100061FF0(v79);
    if (result)
    {
      v55 = v74;
      sub_1000AB17C(v77, a5, a6, v87, a12, a13 & 1, v74);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        v56 = *(v55 + 1);
        v57 = v78;
        *v78 = *v55;
        *(v57 + 16) = v56;
        *(v57 + 32) = v55[4];
      }

      else
      {
        v60 = v75;
        v61 = sub_1000B4888(v55, v75, type metadata accessor for MessageBatches);
        __chkstk_darwin(v61);
        *(&v71 - 4) = v62;
        *(&v71 - 3) = v60;
        LODWORD(v94) = a11 & 1;
        *(&v71 - 16) = a11 & 1;
        v96 = a11 >> 8;
        *(&v71 - 15) = BYTE1(a11);
        v97 = a11 >> 16;
        *(&v71 - 14) = BYTE2(a11);
        v82 = v62;
        *(&v71 - 13) = BYTE3(a11) & 1;
        *(&v71 - 12) = BYTE4(a11) & 1;
        v63 = (a11 >> 40) & 1;
        *(&v71 - 11) = v63;
        *(&v71 - 10) = BYTE6(a11) & 1;
        v64 = HIBYTE(a11) & 1;
        *(&v71 - 9) = v64;
        v65 = v71;
        v66 = v72;
        v67 = v73;
        v83 = a5;
        v95 = a6;
        sub_1000A8478(v71, v72, a5, sub_1000B4930, v98, v73);
        if (v99 || (v68 = sub_100025F40(v98, &qword_1005CF328, &unk_1004D2620), __chkstk_darwin(v68), *(&v71 - 6) = v82, *(&v71 - 5) = v60, v69 = v87, *(&v71 - 4) = v77, *(&v71 - 3) = v69, *(&v71 - 16) = v94, *(&v71 - 15) = v96, *(&v71 - 14) = v97, *(&v71 - 13) = BYTE3(a11) & 1, *(&v71 - 12) = BYTE4(a11) & 1, *(&v71 - 11) = v63, *(&v71 - 10) = BYTE6(a11) & 1, *(&v71 - 9) = v64, sub_1000A814C(v65, v66, v83, v95, sub_1000B4934, v98, v67), v99))
        {
          sub_1000B364C(v98, &v100);
          sub_1000B364C(&v100, &v104);
        }

        else
        {
          sub_100025F40(v98, &qword_1005CF328, &unk_1004D2620);
          v104 = 0u;
          v105 = 0u;
          v106 = 0;
        }

        v70 = v78;
        sub_1000B35D0(v75, type metadata accessor for MessageBatches);
        if (*(&v105 + 1))
        {
          sub_1000B364C(&v104, &v107);
          return sub_1000B364C(&v107, v70);
        }

        else
        {
          result = sub_100025F40(&v104, &qword_1005CF328, &unk_1004D2620);
          *(v70 + 32) = 0;
          *v70 = 0u;
          *(v70 + 16) = 0u;
        }
      }
    }

    else
    {
      v58 = v78;
      *(v78 + 32) = 0;
      *v58 = 0u;
      v58[1] = 0u;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A784C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (*(a1 + 16) && (v9 = sub_100063B5C(*(a2 + 16), *(a2 + 24)), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(a1 + 56);
    v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v14 = *(v13 - 8);
    sub_10000E268(v12 + *(v14 + 72) * v11, v8, &unk_1005D91B0, &unk_1004CF400);
    (*(v14 + 56))(v8, 0, 1, v13);
    return sub_100025FDC(v8, a3, &unk_1005D91B0, &unk_1004CF400);
  }

  else
  {
    v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v17 = *(v16 - 8);
    (*(v17 + 56))(v8, 1, 1, v16);
    sub_100016D2C();
    sub_1004A7114();
    result = (*(v17 + 48))(v8, 1, v16);
    if (result != 1)
    {
      return sub_100025F40(v8, &qword_1005CD510, &unk_1004CF2E0);
    }
  }

  return result;
}

uint64_t sub_1000A7A7C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v59 = a3;
  v60 = a4;
  v57 = a2;
  v6 = type metadata accessor for DetermineNewestMessages(0);
  __chkstk_darwin(v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v55 - v10;
  v58 = sub_10000C9C0(&qword_1005CF3B0, &qword_1004D26A0);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v55 = &v55 - v14;
  v15 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = type metadata accessor for NewestMessages(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v23 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v24 = type metadata accessor for MailboxSyncState(0);
  sub_10000E268(v22 + v23 + *(v24 + 64), v17, &qword_1005CDC18, &qword_1004CF9E0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100025F40(v17, &qword_1005CDC18, &qword_1004CF9E0);
    v25 = *(v4 + 43);
    v26 = *v4;
    v27 = v4[1];
    v28 = v4[2];
    v29 = *(v4 + 6);
    *v8 = _swiftEmptySetSingleton;
    v8[8] = 0;
    v30 = *(v6 + 32);
    v31 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    (*(*(v31 - 8) + 56))(&v8[v30], 1, 1, v31);
    v61 = v28;
    v62 = v29;
    *(v8 + 2) = v6;
    sub_100026044();
    swift_bridgeObjectRetain_n();

    sub_1004A6674();
    *(v8 + 8) = v26;
    *(v8 + 9) = v27;
    *(v8 + 40) = v25;
    *(v8 + 11) = v28;
    *(v8 + 24) = v29;
    v32 = v56;
    sub_1000B4888(v8, v56, type metadata accessor for DetermineNewestMessages);
    v33 = v58;
    v34 = (v32 + *(v58 + 36));
    *v34 = _swiftEmptyArrayStorage;
    v34[1] = _swiftEmptyArrayStorage;
    v63 = v33;
    v35 = sub_1000B458C(&qword_1005CF3B8, &qword_1005CF3B0, &qword_1004D26A0);
    v64 = v35;
    v36 = sub_1000B3774(&v61);
    sub_10000E268(v32, v36, &qword_1005CF3B0, &qword_1004D26A0);
    LOBYTE(v30) = v57(&v61);
    sub_1000197E0(&v61);
    if ((v30 & 1) == 0)
    {
      sub_100025F40(v32, &qword_1005CF3B0, &qword_1004D26A0);
      _s29DetermineNewestMessagesResultOMa(0);
      v53 = v60;
      *v60 = 0u;
      *(v53 + 16) = 0u;
      *(v53 + 32) = 0;
      return swift_storeEnumTagMultiPayload();
    }

    v37 = v60;
    v60[3] = v33;
    v37[4] = v35;
    v38 = sub_1000B3774(v37);
    sub_100025FDC(v32, v38, &qword_1005CF3B0, &qword_1004D26A0);
    goto LABEL_8;
  }

  v39 = v58;
  sub_1000B4888(v17, v21, type metadata accessor for NewestMessages);
  if (*&v21[*(v18 + 24)] <= 130 && *&v21[*(v18 + 20)] < 131)
  {
LABEL_12:
    sub_1000B4888(v21, v60, type metadata accessor for NewestMessages);
    _s29DetermineNewestMessagesResultOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  v56 = v21;
  v40 = *(v4 + 43);
  v41 = *v4;
  v42 = v4[1];
  v43 = v4[2];
  v44 = *(v4 + 6);
  *v11 = _swiftEmptySetSingleton;
  v11[8] = 0;
  v45 = *(v6 + 32);
  v46 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  (*(*(v46 - 8) + 56))(&v11[v45], 1, 1, v46);
  v61 = v43;
  v62 = v44;
  *(v11 + 2) = v6;
  sub_100026044();
  swift_bridgeObjectRetain_n();

  sub_1004A6674();
  *(v11 + 8) = v41;
  *(v11 + 9) = v42;
  *(v11 + 40) = v40;
  *(v11 + 11) = v43;
  *(v11 + 24) = v44;
  v47 = v55;
  sub_1000B4888(v11, v55, type metadata accessor for DetermineNewestMessages);
  v48 = (v47 + *(v39 + 36));
  *v48 = _swiftEmptyArrayStorage;
  v48[1] = _swiftEmptyArrayStorage;
  v63 = v39;
  v49 = sub_1000B458C(&qword_1005CF3B8, &qword_1005CF3B0, &qword_1004D26A0);
  v64 = v49;
  v50 = sub_1000B3774(&v61);
  sub_10000E268(v47, v50, &qword_1005CF3B0, &qword_1004D26A0);
  LOBYTE(v45) = v57(&v61);
  sub_1000197E0(&v61);
  if ((v45 & 1) == 0)
  {
    sub_100025F40(v47, &qword_1005CF3B0, &qword_1004D26A0);
    v21 = v56;
    goto LABEL_12;
  }

  v51 = v60;
  v60[3] = v39;
  v51[4] = v49;
  v52 = sub_1000B3774(v51);
  sub_100025FDC(v47, v52, &qword_1005CF3B0, &qword_1004D26A0);
  sub_1000B35D0(v56, type metadata accessor for NewestMessages);
LABEL_8:
  _s29DetermineNewestMessagesResultOMa(0);
  return swift_storeEnumTagMultiPayload();
}

double sub_1000A814C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *)@<X3>, uint64_t a4@<X4>, void (*a5)(void)@<X5>, uint64_t a6@<X8>, uint64_t a7@<X2>)
{
  v28[1] = a4;
  v29 = a3;
  v12 = sub_10000C9C0(&qword_1005CF368, &qword_1004D2650);
  __chkstk_darwin(v12 - 8);
  v14 = v28 - v13;
  v15 = sub_10000C9C0(&qword_1005CF370, &qword_1004D2658);
  __chkstk_darwin(v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = (v28 - v19);
  if (qword_1005CCE38 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF00, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  a5();
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  if ((*(*(SearchResultMessages - 8) + 48))(v14, 1, SearchResultMessages) == 1)
  {
    sub_100025F40(v14, &qword_1005CF368, &qword_1004D2650);
LABEL_6:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1000B4820(v14, v17, type metadata accessor for FetchSearchResultMessages);
  v23 = &v17[*(v15 + 36)];
  *v23 = _swiftEmptyArrayStorage;
  *(v23 + 1) = _swiftEmptyArrayStorage;
  sub_1000B35D0(v14, type metadata accessor for FetchSearchResultMessages);
  sub_100025FDC(v17, v20, &qword_1005CF370, &qword_1004D2658);
  if (!*(*v20 + 16) || (sub_1000AEB8C(*v20, a1, a2, a7)) && (v30[3] = v15, v24 = sub_1000B458C(&qword_1005CF378, &qword_1005CF370, &qword_1004D2658), v30[4] = v24, v25 = sub_1000B3774(v30), sub_10000E268(v20, v25, &qword_1005CF370, &qword_1004D2658), v26 = v29(v30), sub_1000197E0(v30), (v26))
  {
    *(a6 + 24) = v15;
    *(a6 + 32) = v24;
    v27 = sub_1000B3774(a6);
    sub_100025FDC(v20, v27, &qword_1005CF370, &qword_1004D2658);
  }

  else
  {
    sub_100025F40(v20, &qword_1005CF370, &qword_1004D2658);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

double sub_1000A8478@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *)@<X3>, void (*a4)(void *__return_ptr)@<X5>, uint64_t a5@<X8>, uint64_t a6@<X2>)
{
  if (qword_1005CCE78 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF70, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a4(v21);
  if (!v21[0])
  {
    sub_100025F40(v21, &qword_1005CF388, &qword_1004D2670);
LABEL_11:
    *(a5 + 32) = 0;
    *&v19 = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return *&v19;
  }

  sub_1000B39AC(v21, &v22);
  *&v30 = _swiftEmptyArrayStorage;
  *(&v30 + 1) = _swiftEmptyArrayStorage;
  sub_1000B3A08(v21);
  v37 = v28;
  v38 = v29;
  v39 = v30;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v31 = v22;
  v32 = v23;
  if (!*(v22 + 16) || (sub_1000AEB8C(v22, a1, a2, a6)) && (v12 = sub_10000C9C0(&qword_1005CF390, &qword_1004D2678), *(&v23 + 1) = v12, v13 = sub_1000B458C(&qword_1005CF398, &qword_1005CF390, &qword_1004D2678), *&v24 = v13, *&v22 = swift_allocObject(), sub_10000E268(&v31, v22 + 16, &qword_1005CF390, &qword_1004D2678), v14 = a3(&v22), sub_1000197E0(&v22), (v14))
  {
    *(a5 + 24) = v12;
    *(a5 + 32) = v13;
    v15 = swift_allocObject();
    *a5 = v15;
    v16 = v38;
    v15[7] = v37;
    v15[8] = v16;
    v15[9] = v39;
    v17 = v34;
    v15[3] = v33;
    v15[4] = v17;
    v18 = v36;
    v15[5] = v35;
    v15[6] = v18;
    v19 = v32;
    v15[1] = v31;
    v15[2] = v19;
  }

  else
  {
    sub_100025F40(&v31, &qword_1005CF390, &qword_1004D2678);
    *&v19 = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0;
  }

  return *&v19;
}

uint64_t sub_1000A86C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v33[1] = a5;
  v34 = a4;
  v33[0] = a3;
  v16 = sub_10000C9C0(&qword_1005CF3C0, &qword_1004D26A8);
  __chkstk_darwin(v16 - 8);
  v18 = v33 - v17;
  v19 = sub_10000C9C0(&qword_1005CF3C8, &qword_1004D26B0);
  __chkstk_darwin(v19);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v33 - v23;
  if (qword_1005CCE48 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF10, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1000AAC34(a6, a7 & 1, a8, a10 & 0x101010101FFFF01, v18);
  PendingDownload = type metadata accessor for FindPendingDownload(0);
  if ((*(*(PendingDownload - 8) + 48))(v18, 1, PendingDownload) == 1)
  {
    sub_100025F40(v18, &qword_1005CF3C0, &qword_1004D26A8);
LABEL_6:
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
    goto LABEL_7;
  }

  sub_1000B4820(v18, v21, type metadata accessor for FindPendingDownload);
  v27 = &v21[*(v19 + 36)];
  *v27 = _swiftEmptyArrayStorage;
  *(v27 + 1) = _swiftEmptyArrayStorage;
  sub_1000B35D0(v18, type metadata accessor for FindPendingDownload);
  sub_100025FDC(v21, v24, &qword_1005CF3C8, &qword_1004D26B0);
  v28 = *(v24 + 6);
  if (!*(v28 + 16) || (sub_1000AEB8C(v28, a1, a2, v33[0])) && (v35[3] = v19, v29 = sub_1000B458C(&qword_1005CF3D0, &qword_1005CF3C8, &qword_1004D26B0), v35[4] = v29, v30 = sub_1000B3774(v35), sub_10000E268(v24, v30, &qword_1005CF3C8, &qword_1004D26B0), v31 = v34(v35), sub_1000197E0(v35), (v31))
  {
    *(a9 + 24) = v19;
    *(a9 + 32) = v29;
    v32 = sub_1000B3774(a9);
    sub_100025FDC(v24, v32, &qword_1005CF3C8, &qword_1004D26B0);
  }

  else
  {
    sub_100025F40(v24, &qword_1005CF3C8, &qword_1004D26B0);
    *a9 = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0;
  }

LABEL_7:
  sub_10000E0E8(a6);
}

double sub_1000A8A1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCE08 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDED0, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v24);
  if (!v24[0])
  {
    sub_100025F40(v24, &qword_1005CF478, &qword_1004D2728);
LABEL_11:
    *(a6 + 32) = 0;
    *&v22 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return *&v22;
  }

  sub_100027D64(v24, &v25);
  *(&v32 + 1) = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  sub_100027D9C(v24);
  v40 = v31;
  v41 = v32;
  v36 = v27;
  v37 = v28;
  v42 = v33;
  v38 = v29;
  v39 = v30;
  v34 = v25;
  v35 = v26;
  v12 = *(sub_100093190(&off_100599170) + 16);

  if (!v12 || (v13 = sub_100093190(&off_100599198), v14 = sub_1000AEB8C(v13, a1, a2, a3), , (v14)) && (v15 = sub_10000C9C0(&qword_1005CF480, &qword_1004D2730), *(&v26 + 1) = v15, v16 = sub_1000B458C(&qword_1005CF488, &qword_1005CF480, &qword_1004D2730), *&v27 = v16, *&v25 = swift_allocObject(), sub_10000E268(&v34, v25 + 16, &qword_1005CF480, &qword_1004D2730), v17 = a4(&v25), sub_1000197E0(&v25), (v17))
  {
    *(a6 + 24) = v15;
    *(a6 + 32) = v16;
    v18 = swift_allocObject();
    *a6 = v18;
    v19 = v41;
    *(v18 + 112) = v40;
    *(v18 + 128) = v19;
    *(v18 + 144) = v42;
    v20 = v37;
    *(v18 + 48) = v36;
    *(v18 + 64) = v20;
    v21 = v39;
    *(v18 + 80) = v38;
    *(v18 + 96) = v21;
    v22 = v35;
    *(v18 + 16) = v34;
    *(v18 + 32) = v22;
  }

  else
  {
    sub_100025F40(&v34, &qword_1005CF480, &qword_1004D2730);
    *&v22 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return *&v22;
}

double sub_1000A8C98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCE10 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDED8, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v24);
  if (!v24[0])
  {
    sub_100025F40(v24, &qword_1005CF460, &qword_1004D2718);
LABEL_11:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_10002A764(v24, &v25);
  *&v32 = _swiftEmptyArrayStorage;
  *(&v32 + 1) = _swiftEmptyArrayStorage;
  sub_10002A79C(v24);
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v12 = *(sub_100093190(&off_1005991C0) + 16);

  if (!v12 || (v13 = sub_100093190(&off_1005991E8), v14 = sub_1000AEB8C(v13, a1, a2, a3), , (v14)) && (v15 = sub_10000C9C0(&qword_1005CF468, &qword_1004D2720), *(&v26 + 1) = v15, v16 = sub_1000B458C(&qword_1005CF470, &qword_1005CF468, &qword_1004D2720), *&v27 = v16, *&v25 = swift_allocObject(), sub_10000E268(&v33, v25 + 16, &qword_1005CF468, &qword_1004D2720), v17 = a4(&v25), sub_1000197E0(&v25), (v17))
  {
    *(a6 + 24) = v15;
    *(a6 + 32) = v16;
    v18 = swift_allocObject();
    *a6 = v18;
    v19 = v38;
    v18[5] = v37;
    v18[6] = v19;
    v20 = v40;
    v18[7] = v39;
    v18[8] = v20;
    v21 = v34;
    v18[1] = v33;
    v18[2] = v21;
    result = *&v35;
    v23 = v36;
    v18[3] = v35;
    v18[4] = v23;
  }

  else
  {
    sub_100025F40(&v33, &qword_1005CF468, &qword_1004D2720);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

double sub_1000A8EFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCDF8 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDEC0, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v22);
  if (!v22[0])
  {
    sub_100025F40(v22, &qword_1005CF4B0, &qword_1004D2748);
LABEL_11:
    *(a6 + 32) = 0;
    *&v20 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return *&v20;
  }

  sub_1000258C0(v22, &v23);
  *(&v32 + 1) = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  sub_1000258F8(v22);
  v42 = v31;
  v43 = v32;
  v44 = v33;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  if (!*(*(&v25 + 1) + 16) || (sub_1000AEB8C(*(&v25 + 1), a1, a2, a3)) && (v12 = sub_10000C9C0(&qword_1005CF4B8, &qword_1004D2750), *(&v24 + 1) = v12, v13 = sub_1000B458C(&qword_1005CF4C0, &qword_1005CF4B8, &qword_1004D2750), *&v25 = v13, *&v23 = swift_allocObject(), sub_10000E268(&v34, v23 + 16, &qword_1005CF4B8, &qword_1004D2750), v14 = a4(&v23), sub_1000197E0(&v23), (v14))
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v43;
    *(v15 + 144) = v42;
    *(v15 + 160) = v16;
    *(v15 + 176) = v44;
    v17 = v39;
    *(v15 + 80) = v38;
    *(v15 + 96) = v17;
    v18 = v41;
    *(v15 + 112) = v40;
    *(v15 + 128) = v18;
    v19 = v35;
    *(v15 + 16) = v34;
    *(v15 + 32) = v19;
    v20 = v37;
    *(v15 + 48) = v36;
    *(v15 + 64) = v20;
  }

  else
  {
    sub_100025F40(&v34, &qword_1005CF4B8, &qword_1004D2750);
    *&v20 = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return *&v20;
}

double sub_1000A915C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCE00 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDEC8, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v22);
  if (!v22[0])
  {
    sub_100025F40(v22, &qword_1005CF450, &qword_1004D2708);
LABEL_11:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_100026E5C(v22, &v23);
  *&v32 = _swiftEmptyArrayStorage;
  *(&v32 + 1) = _swiftEmptyArrayStorage;
  sub_100026E94(v22);
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v33 = v23;
  v34 = v24;
  if (!*(*(&v25 + 1) + 16) || (sub_1000AEB8C(*(&v25 + 1), a1, a2, a3)) && (v12 = sub_10000C9C0(&qword_1005CF4A0, &qword_1004D2740), *(&v24 + 1) = v12, v13 = sub_1000B458C(&qword_1005CF4A8, &qword_1005CF4A0, &qword_1004D2740), *&v25 = v13, *&v23 = swift_allocObject(), sub_10000E268(&v33, v23 + 16, &qword_1005CF4A0, &qword_1004D2740), v14 = a4(&v23), sub_1000197E0(&v23), (v14))
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v40;
    v15[7] = v39;
    v15[8] = v16;
    v17 = v42;
    v15[9] = v41;
    v15[10] = v17;
    v18 = v36;
    v15[3] = v35;
    v15[4] = v18;
    v19 = v38;
    v15[5] = v37;
    v15[6] = v19;
    result = *&v33;
    v21 = v34;
    v15[1] = v33;
    v15[2] = v21;
  }

  else
  {
    sub_100025F40(&v33, &qword_1005CF4A0, &qword_1004D2740);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

double sub_1000A93A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCE80 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF78, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v21);
  if (!v21[0])
  {
    sub_100025F40(v21, &qword_1005CF458, &qword_1004D2710);
LABEL_11:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1000B43E8(v21, &v22);
  *(&v30 + 1) = _swiftEmptyArrayStorage;
  v31 = _swiftEmptyArrayStorage;
  sub_1000B42C8(v21);
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v32 = v22;
  v33 = v23;
  if (!*(*(&v24 + 1) + 16) || (sub_1000AEB8C(*(&v24 + 1), a1, a2, a3)) && (v12 = sub_10000C9C0(&qword_1005CF490, &qword_1004D2738), *(&v23 + 1) = v12, v13 = sub_1000B458C(&qword_1005CF498, &qword_1005CF490, &qword_1004D2738), *&v24 = v13, *&v22 = swift_allocObject(), sub_10000E268(&v32, v22 + 16, &qword_1005CF490, &qword_1004D2738), v14 = a4(&v22), sub_1000197E0(&v22), (v14))
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v39;
    *(v15 + 112) = v38;
    *(v15 + 128) = v16;
    *(v15 + 144) = v40;
    *(v15 + 160) = v41;
    v17 = v35;
    *(v15 + 48) = v34;
    *(v15 + 64) = v17;
    v18 = v37;
    *(v15 + 80) = v36;
    *(v15 + 96) = v18;
    result = *&v32;
    v20 = v33;
    *(v15 + 16) = v32;
    *(v15 + 32) = v20;
  }

  else
  {
    sub_100025F40(&v32, &qword_1005CF490, &qword_1004D2738);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

uint64_t sub_1000A9608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, uint64_t a5@<X5>, char *a6@<X6>, uint64_t a7@<X8>)
{
  if (qword_1005CCE68 != -1)
  {
    swift_once();
  }

  if (sub_1000B33E4(qword_1005DDF60, a1, a2))
  {
    v14 = *(a5 + 172);
    v15 = *(a5 + 8);
    v16 = *(a5 + 16);
    v17 = *(a5 + 24);
    *&v57 = *a5;
    *(&v57 + 1) = v15;
    v58 = v14;
    v59 = v16;
    v60 = v17;
    v18 = *a6;

    sub_1000EB1F8(&v57, v18, v30);
    sub_1000B40DC(v30, &v31);
    *&v43 = _swiftEmptyArrayStorage;
    *(&v43 + 1) = _swiftEmptyArrayStorage;
    sub_1000B4138(v30);
    v54 = v41;
    v55 = v42;
    v56 = v43;
    v50 = v37;
    v51 = v38;
    v52 = v39;
    v53 = v40;
    v46 = v33;
    v47 = v34;
    v48 = v35;
    v49 = v36;
    v44 = v31;
    v45 = v32;
    if (!*(v37 + 16) || (sub_1000AEB8C(v37, a1, a2, a3)) && (v19 = sub_10000C9C0(&qword_1005CF400, &qword_1004D26D8), *(&v32 + 1) = v19, v20 = sub_1000B458C(&qword_1005CF408, &qword_1005CF400, &qword_1004D26D8), *&v33 = v20, *&v31 = swift_allocObject(), sub_10000E268(&v44, v31 + 16, &qword_1005CF400, &qword_1004D26D8), v21 = a4(&v31), sub_1000197E0(&v31), (v21))
    {
      *(a7 + 24) = v19;
      *(a7 + 32) = v20;
      v22 = swift_allocObject();
      *a7 = v22;
      v23 = v55;
      v22[11] = v54;
      v22[12] = v23;
      v22[13] = v56;
      v24 = v51;
      v22[7] = v50;
      v22[8] = v24;
      v25 = v53;
      v22[9] = v52;
      v22[10] = v25;
      v26 = v47;
      v22[3] = v46;
      v22[4] = v26;
      v27 = v49;
      v22[5] = v48;
      v22[6] = v27;
      v28 = v45;
      v22[1] = v44;
      v22[2] = v28;
    }

    else
    {
      sub_100025F40(&v44, &qword_1005CF400, &qword_1004D26D8);
      *a7 = 0u;
      *(a7 + 16) = 0u;
      *(a7 + 32) = 0;
    }

    return sub_10000E0E8(a5);
  }

  else
  {
    *(a7 + 32) = 0;
    *a7 = 0u;
    *(a7 + 16) = 0u;

    return sub_10000E0E8(a5);
  }
}

uint64_t sub_1000A98BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32[1] = a5;
  v33 = a4;
  v32[0] = a3;
  v15 = sub_10000C9C0(&qword_1005CF410, &qword_1004D26E0);
  __chkstk_darwin(v15 - 8);
  v17 = v32 - v16;
  v18 = sub_10000C9C0(&qword_1005CF418, &qword_1004D26E8);
  __chkstk_darwin(v18);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v32 - v22;
  if (qword_1005CCEA8 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDFA0, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1000AE8A8(a6, a7, a8, v17);
  v24 = type metadata accessor for UploadMessages(0);
  if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
  {
    sub_100025F40(v17, &qword_1005CF410, &qword_1004D26E0);
LABEL_6:
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
    goto LABEL_7;
  }

  sub_1000B4820(v17, v20, type metadata accessor for UploadMessages);
  v26 = &v20[*(v18 + 36)];
  *v26 = _swiftEmptyArrayStorage;
  *(v26 + 1) = _swiftEmptyArrayStorage;
  sub_1000B35D0(v17, type metadata accessor for UploadMessages);
  sub_100025FDC(v20, v23, &qword_1005CF418, &qword_1004D26E8);
  v27 = *(v23 + 5);
  if (!*(v27 + 16) || (sub_1000AEB8C(v27, a1, a2, v32[0])) && (v34[3] = v18, v28 = sub_1000B458C(&qword_1005CF420, &qword_1005CF418, &qword_1004D26E8), v34[4] = v28, v29 = sub_1000B3774(v34), sub_10000E268(v23, v29, &qword_1005CF418, &qword_1004D26E8), v30 = v33(v34), sub_1000197E0(v34), (v30))
  {
    *(a9 + 24) = v18;
    *(a9 + 32) = v28;
    v31 = sub_1000B3774(a9);
    sub_100025FDC(v23, v31, &qword_1005CF418, &qword_1004D26E8);
  }

  else
  {
    sub_100025F40(v23, &qword_1005CF418, &qword_1004D26E8);
    *a9 = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0;
  }

LABEL_7:
  sub_10000E0E8(a6);
}

double sub_1000A9C04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(__int128 *)@<X3>, void (*a5)(void *__return_ptr)@<X5>, uint64_t a6@<X8>)
{
  if (qword_1005CCDF0 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDEB8, a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  a5(v22);
  if (!v22[0])
  {
    sub_100025F40(v22, &qword_1005CF428, &qword_1004D26F0);
LABEL_11:
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_1000168E0(v22, &v23);
  *&v32 = _swiftEmptyArrayStorage;
  *(&v32 + 1) = _swiftEmptyArrayStorage;
  sub_100016918(v22);
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v33 = v23;
  v34 = v24;
  if (!*(v23 + 16) || (sub_1000AEB8C(v23, a1, a2, a3)) && (v12 = sub_10000C9C0(&qword_1005CF430, &qword_1004D26F8), *(&v24 + 1) = v12, v13 = sub_1000B458C(&qword_1005CF438, &qword_1005CF430, &qword_1004D26F8), *&v25 = v13, *&v23 = swift_allocObject(), sub_10000E268(&v33, v23 + 16, &qword_1005CF430, &qword_1004D26F8), v14 = a4(&v23), sub_1000197E0(&v23), (v14))
  {
    *(a6 + 24) = v12;
    *(a6 + 32) = v13;
    v15 = swift_allocObject();
    *a6 = v15;
    v16 = v40;
    v15[7] = v39;
    v15[8] = v16;
    v17 = v42;
    v15[9] = v41;
    v15[10] = v17;
    v18 = v36;
    v15[3] = v35;
    v15[4] = v18;
    v19 = v38;
    v15[5] = v37;
    v15[6] = v19;
    result = *&v33;
    v21 = v34;
    v15[1] = v33;
    v15[2] = v21;
  }

  else
  {
    sub_100025F40(&v33, &qword_1005CF430, &qword_1004D26F8);
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0;
  }

  return result;
}

uint64_t sub_1000A9E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a3;
  v38 = a5;
  v14 = type metadata accessor for UploadFlagChanges(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C9C0(&qword_1005CF440, &qword_1004D2700);
  __chkstk_darwin(v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  if (qword_1005CCEA0 != -1)
  {
    swift_once();
  }

  if (sub_1000B33E4(qword_1005DDF98, a1, a2))
  {
    v36 = a4;
    v23 = *(a6 + 172);
    v24 = *(a6 + 8);
    v25 = *(a6 + 16);
    v26 = *(a6 + 24);
    v40[0] = *a6;
    v40[1] = v24;
    v41 = v23;
    v42 = v25;
    v43 = v26;
    v27 = *(a7 + 2);

    sub_10017671C(v40, v27, v16);
    sub_1000B4820(v16, v19, type metadata accessor for UploadFlagChanges);
    v28 = &v19[*(v17 + 36)];
    *v28 = _swiftEmptyArrayStorage;
    *(v28 + 1) = _swiftEmptyArrayStorage;
    sub_1000B35D0(v16, type metadata accessor for UploadFlagChanges);
    sub_100025FDC(v19, v22, &qword_1005CF440, &qword_1004D2700);
    v29 = *(v22 + 5);
    if (!*(v29 + 16) || (sub_1000AEB8C(v29, a1, a2, v37)) && (v39[3] = v17, v30 = sub_1000B458C(&qword_1005CF448, &qword_1005CF440, &qword_1004D2700), v39[4] = v30, v31 = sub_1000B3774(v39), sub_10000E268(v22, v31, &qword_1005CF440, &qword_1004D2700), v32 = v36(v39), sub_1000197E0(v39), (v32))
    {
      *(a8 + 24) = v17;
      *(a8 + 32) = v30;
      v33 = sub_1000B3774(a8);
      sub_100025FDC(v22, v33, &qword_1005CF440, &qword_1004D2700);
    }

    else
    {
      sub_100025F40(v22, &qword_1005CF440, &qword_1004D2700);
      *a8 = 0u;
      *(a8 + 16) = 0u;
      *(a8 + 32) = 0;
    }
  }

  else
  {
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return sub_10000E0E8(a6);
}

double sub_1000AA18C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v28[1] = a5;
  v29 = a4;
  v12 = sub_10000C9C0(&qword_1005CF4C8, &qword_1004D2758);
  __chkstk_darwin(v12 - 8);
  v14 = v28 - v13;
  v15 = sub_10000C9C0(&qword_1005CF4D0, &qword_1004D2760);
  __chkstk_darwin(v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = (v28 - v19);
  if (qword_1005CCE30 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDEF8, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  a6();
  Messages = type metadata accessor for FetchMessages(0);
  if ((*(*(Messages - 8) + 48))(v14, 1, Messages) == 1)
  {
    sub_100025F40(v14, &qword_1005CF4C8, &qword_1004D2758);
LABEL_6:
    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  sub_1000B4820(v14, v17, type metadata accessor for FetchMessages);
  v23 = &v17[*(v15 + 36)];
  *v23 = _swiftEmptyArrayStorage;
  *(v23 + 1) = _swiftEmptyArrayStorage;
  sub_1000B35D0(v14, type metadata accessor for FetchMessages);
  sub_100025FDC(v17, v20, &qword_1005CF4D0, &qword_1004D2760);
  if (!*(*v20 + 16) || (sub_1000AEB8C(*v20, a1, a2, a3)) && (v30[3] = v15, v24 = sub_1000B458C(&qword_1005CF4D8, &qword_1005CF4D0, &qword_1004D2760), v30[4] = v24, v25 = sub_1000B3774(v30), sub_10000E268(v20, v25, &qword_1005CF4D0, &qword_1004D2760), v26 = v29(v30), sub_1000197E0(v30), (v26))
  {
    *(a7 + 24) = v15;
    *(a7 + 32) = v24;
    v27 = sub_1000B3774(a7);
    sub_100025FDC(v20, v27, &qword_1005CF4D0, &qword_1004D2760);
  }

  else
  {
    sub_100025F40(v20, &qword_1005CF4D0, &qword_1004D2760);
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0;
  }

  return result;
}

double sub_1000AA4B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v29[1] = a5;
  v30 = a4;
  v12 = sub_10000C9C0(&qword_1005CF4E0, &qword_1004D2768);
  __chkstk_darwin(v12 - 8);
  v14 = v29 - v13;
  v15 = sub_10000C9C0(&qword_1005CF4E8, &qword_1004D2770);
  __chkstk_darwin(v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v29 - v19;
  if (qword_1005CCE40 != -1)
  {
    swift_once();
  }

  if ((sub_1000B33E4(qword_1005DDF08, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  a6();
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  if ((*(*(MissingMessages - 8) + 48))(v14, 1, MissingMessages) == 1)
  {
    sub_100025F40(v14, &qword_1005CF4E0, &qword_1004D2768);
LABEL_6:
    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  sub_1000B4820(v14, v17, type metadata accessor for FindMissingMessages);
  v23 = &v17[*(v15 + 36)];
  *v23 = _swiftEmptyArrayStorage;
  *(v23 + 1) = _swiftEmptyArrayStorage;
  sub_1000B35D0(v14, type metadata accessor for FindMissingMessages);
  sub_100025FDC(v17, v20, &qword_1005CF4E8, &qword_1004D2770);
  v24 = *(v20 + 13);
  if (!*(v24 + 16) || (sub_1000AEB8C(v24, a1, a2, a3)) && (v31[3] = v15, v25 = sub_1000B458C(&qword_1005CF4F0, &qword_1005CF4E8, &qword_1004D2770), v31[4] = v25, v26 = sub_1000B3774(v31), sub_10000E268(v20, v26, &qword_1005CF4E8, &qword_1004D2770), v27 = v30(v31), sub_1000197E0(v31), (v27))
  {
    *(a7 + 24) = v15;
    *(a7 + 32) = v25;
    v28 = sub_1000B3774(a7);
    sub_100025FDC(v20, v28, &qword_1005CF4E8, &qword_1004D2770);
  }

  else
  {
    sub_100025F40(v20, &qword_1005CF4E8, &qword_1004D2770);
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0;
  }

  return result;
}

uint64_t sub_1000AA7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = a5;
  v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v15 - 8);
  v17 = &v43 - v16;
  v18 = sub_10000C9C0(&qword_1005CF4F8, &qword_1004D2778);
  __chkstk_darwin(v18 - 8);
  v20 = &v43 - v19;
  v50 = sub_10000C9C0(&qword_1005CF500, &qword_1004D2780);
  __chkstk_darwin(v50);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v49 = &v43 - v24;
  if (qword_1005CCE70 != -1)
  {
    swift_once();
  }

  v46 = a1;
  v47 = a2;
  if ((sub_1000B33E4(qword_1005DDF68, a1, a2) & 1) == 0)
  {
    goto LABEL_6;
  }

  v43 = a3;
  v44 = a4;
  v25 = *(a6 + 172);
  v26 = *(a6 + 8);
  v27 = *(a6 + 16);
  v28 = *(a6 + 24);
  *&v52 = *a6;
  *(&v52 + 1) = v26;
  v53 = v25;
  v54 = v27;
  v55 = v28;
  v45 = a7;
  v29 = a7 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v30 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v31 = v29 + v30 + *(type metadata accessor for MailboxSyncState(0) + 48);
  v32 = type metadata accessor for PendingServerResponses(0);
  sub_10000E268(v31 + *(v32 + 24), v17, &unk_1005D91B0, &unk_1004CF400);

  sub_1000FC2B4(&v52, v17, v20);
  v33 = type metadata accessor for NotifyMessagesVanished(0);
  if ((*(*(v33 - 8) + 48))(v20, 1, v33) == 1)
  {
    sub_100025F40(v20, &qword_1005CF4F8, &qword_1004D2778);
LABEL_6:
    *(a8 + 32) = 0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    goto LABEL_12;
  }

  sub_1000B4820(v20, v22, type metadata accessor for NotifyMessagesVanished);
  v34 = v50;
  v35 = &v22[*(v50 + 36)];
  *v35 = _swiftEmptyArrayStorage;
  *(v35 + 1) = _swiftEmptyArrayStorage;
  sub_1000B35D0(v20, type metadata accessor for NotifyMessagesVanished);
  v36 = v49;
  sub_100025FDC(v22, v49, &qword_1005CF500, &qword_1004D2780);
  v37 = *(v36 + *(v33 + 36));
  if (!*(v37 + 16) || (sub_1000AEB8C(v37, v46, v47, v43)) && (v51[3] = v34, v38 = sub_1000B458C(&qword_1005CF508, &qword_1005CF500, &qword_1004D2780), v51[4] = v38, v39 = sub_1000B3774(v51), sub_10000E268(v36, v39, &qword_1005CF500, &qword_1004D2780), v40 = v44(v51), sub_1000197E0(v51), (v40))
  {
    *(a8 + 24) = v34;
    *(a8 + 32) = v38;
    v41 = sub_1000B3774(a8);
    sub_100025FDC(v36, v41, &qword_1005CF500, &qword_1004D2780);
  }

  else
  {
    sub_100025F40(v36, &qword_1005CF500, &qword_1004D2780);
    *a8 = 0u;
    *(a8 + 16) = 0u;
    *(a8 + 32) = 0;
  }

LABEL_12:
  sub_10000E0E8(a6);
}

uint64_t sub_1000AAC34@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v50 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v50);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  __chkstk_darwin(v16);
  v58 = &v48 - v17;
  v18 = type metadata accessor for MessagesPendingDownload(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PendingPersistenceUpdates(0);
  __chkstk_darwin(v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a1 + 43);
  v24 = *a1;
  v48 = a1[1];
  v56 = a1[2];
  v51 = *(a1 + 6);
  v25 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v26 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v27 = type metadata accessor for MailboxSyncState(0);
  sub_1000B4820(v25 + v26 + *(v27 + 52), v23, type metadata accessor for PendingPersistenceUpdates);
  v28 = &v23[*(v21 + 28)];
  v54 = a2;
  if (a2)
  {
    v28 += *(type metadata accessor for MessagesPendingDownloadPerPass(0) + 20);
  }

  sub_1000B4820(v28, v20, type metadata accessor for MessagesPendingDownload);
  sub_10000E268(&v23[*(v21 + 32)], v58, &unk_1005D91B0, &unk_1004CF400);
  v29 = *(*v20 + 16);
  swift_bridgeObjectRetain_n();

  v55 = v20;
  v52 = v23;
  if (v29 < 0x11A || (v30 = sub_1000DB374(), (v30 & 0x100000000) != 0))
  {

    sub_10009F2AC(v32);
  }

  else
  {
    LODWORD(v60) = 1;
    LODWORD(v59) = v30;
    v31 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v60, &v59, &type metadata for UID, &v61);
    v60 = v61;
    v59 = Range<>.init<A>(_:)(&v60, &type metadata for UID, v31);
    sub_100016D2C();
    sub_1004A7124();
  }

  MessageIdentifierSet.union(_:)(v58, v15);
  sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
  v33 = v53;
  sub_10000E268(v15, v53, &unk_1005D91B0, &unk_1004CF400);
  v34 = v56;
  v35 = (v57 & 1) == 0;
  *(a5 + 56) = 0;
  v36 = 47;
  if (v35)
  {
    v36 = 0;
  }

  v50 = v36;
  *a5 = 0;
  *(a5 + 8) = v24;
  *(a5 + 16) = v48;
  *(a5 + 24) = v49;
  *(a5 + 32) = v34;
  v37 = v51;
  *(a5 + 40) = v51;
  sub_10000C9C0(&qword_1005CEF58, &qword_1004D1E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  v39 = v15;
  v40 = v33;
  v41 = v54 & 1;
  if (v54)
  {
    v42 = 10;
  }

  else
  {
    v42 = 9;
  }

  *(inited + 32) = v42;
  v43 = sub_100093190(inited);
  swift_setDeallocating();
  *(a5 + 48) = v43;
  *(a5 + 57) = v41;
  PendingDownload = type metadata accessor for FindPendingDownload(0);
  sub_10000E268(v40, a5 + PendingDownload[9], &unk_1005D91B0, &unk_1004CF400);
  v45 = PendingDownload[11];
  v61 = v34;
  v62 = v37;
  v63 = v41;
  *(a5 + v45) = PendingDownload;
  sub_1000B4088();
  sub_1004A6674();
  sub_100025F40(v40, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v39, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v58, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v52, type metadata accessor for PendingPersistenceUpdates);
  v46 = a5 + PendingDownload[10];
  *v46 = v50;
  *(v46 + 8) = (v57 & 1) == 0;
  sub_1000B35D0(v55, type metadata accessor for MessagesPendingDownload);
  return (*(*(PendingDownload - 1) + 56))(a5, 0, 1, PendingDownload);
}

uint64_t sub_1000AB17C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v110 = a4;
  v111 = a6;
  v106 = a5;
  v107 = a3;
  v108 = a2;
  v112 = a7;
  v99 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v89 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v90 = &v85 - v10;
  v11 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v11 - 8);
  v93 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v95 = &v85 - v14;
  v97 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v97);
  v91 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v96 = &v85 - v17;
  __chkstk_darwin(v18);
  v94 = &v85 - v19;
  __chkstk_darwin(v20);
  v100 = &v85 - v21;
  v101 = type metadata accessor for DetermineMessageBatches.TaskState(0);
  __chkstk_darwin(v101);
  v92 = (&v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v103 = (&v85 - v24);
  v102 = type metadata accessor for DetermineMessageBatches(0);
  __chkstk_darwin(v102);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10000C9C0(&qword_1005CF3A0, &unk_1004D2680);
  __chkstk_darwin(v104);
  v105 = &v85 - v27;
  v28 = sub_10000C9C0(&qword_1005CDA20, &unk_1004D2F20);
  __chkstk_darwin(v28 - 8);
  v30 = &v85 - v29;
  v31 = type metadata accessor for MessageBatches(0);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v36 = _s13SelectedStateV7WrappedVMa(0);
  v37 = *(v36 + 20);
  v38 = type metadata accessor for MailboxSyncState(0);
  sub_10000E268(v35 + v37 + *(v38 + 60), v30, &qword_1005CDA20, &unk_1004D2F20);
  if ((*(v32 + 48))(v30, 1, v31) != 1)
  {
    sub_1000B4888(v30, v34, type metadata accessor for MessageBatches);
    sub_1000B4888(v34, v112, type metadata accessor for MessageBatches);
    _s29DetermineMessageBatchesResultOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_100025F40(v30, &qword_1005CDA20, &unk_1004D2F20);
  v39 = *(v109 + 43);
  v40 = *v109;
  v85 = v109[1];
  v41 = v109[2];
  v87 = *(v109 + 6);
  v42 = *(v109 + 48);
  result = *(v110 + 16);
  v44 = *(v110 + 24);
  v45 = v35 + *(v36 + 20);
  v46 = *v45;
  v47 = *(v45 + 8);
  LODWORD(v109) = *(v45 + 12);
  v48 = *(v110 + 4);
  v49 = *(v110 + 5);
  v118 = *(v110 + 42);
  if (v44)
  {
    v50 = 4507;
  }

  else
  {
    result = sub_1000D8460(result);
    v50 = result;
  }

  v88 = v39;
  v86 = v47;
  if (!v46)
  {
    sub_100016D2C();
    swift_bridgeObjectRetain_n();

    v62 = v100;
    sub_1004A7114();
    v63 = v62;
    v64 = v94;
    sub_10000E268(v63, v94, &unk_1005D91B0, &unk_1004CF400);
    v56 = v40;
    if (MessageIdentifierSet.count.getter() <= 0)
    {
      sub_100025F40(v64, &unk_1005D91B0, &unk_1004CF400);
      v67 = 1;
      v68 = v103;
      v66 = v95;
    }

    else
    {
      v65 = v90;
      sub_100025FDC(v64, v90, &unk_1005D91B0, &unk_1004CF400);
      v66 = v95;
      sub_100025FDC(v65, v95, &qword_1005CD1D0, &unk_1004CF2C0);
      v67 = 0;
      v68 = v103;
    }

    (*(v98 + 56))(v66, v67, 1, v99);
    sub_1000D80D8(v50, _swiftEmptyArrayStorage, v66, v68);
    sub_100025F40(v100, &unk_1005D91B0, &unk_1004CF400);
    swift_storeEnumTagMultiPayload();
LABEL_25:
    if (v49)
    {
      v70 = 256;
    }

    else
    {
      v70 = 0;
    }

    v71 = v70 | v48;
    if (v118)
    {
      v72 = v71;
    }

    else
    {
      v72 = 2;
    }

    v73 = v102;
    sub_1000B4820(v68, &v26[*(v102 + 56)], type metadata accessor for DetermineMessageBatches.TaskState);
    *v26 = _swiftEmptySetSingleton;
    v26[8] = 0;
    *(v26 + 76) = 0;
    v26[84] = 1;
    v74 = &v26[*(v73 + 60)];
    *v74 = sub_100162C58(_swiftEmptyArrayStorage);
    v74[8] = 0;
    v114 = v41;
    LODWORD(v74) = v87;
    v115 = v87;
    *(v26 + 2) = v73;
    sub_100026044();
    sub_1004A6674();
    sub_1000B35D0(v68, type metadata accessor for DetermineMessageBatches.TaskState);
    v75 = v85;
    *(v26 + 12) = v56;
    *(v26 + 13) = v75;
    *(v26 + 56) = v88;
    *(v26 + 15) = v41;
    v76 = v105;
    *(v26 + 8) = v106;
    v26[72] = v111 & 1;
    *(v26 + 11) = v46;
    *(v26 + 18) = v50;
    LODWORD(v75) = v86;
    *(v26 + 32) = v74;
    *(v26 + 33) = v75;
    v26[136] = v109;
    *(v26 + 137) = v72;
    sub_1000B4888(v26, v76, type metadata accessor for DetermineMessageBatches);
    v77 = v104;
    v78 = (v76 + *(v104 + 36));
    *v78 = _swiftEmptyArrayStorage;
    v78[1] = _swiftEmptyArrayStorage;
    v116 = v77;
    v79 = sub_1000B458C(&qword_1005CF3A8, &qword_1005CF3A0, &unk_1004D2680);
    v117 = v79;
    v80 = sub_1000B3774(&v114);
    sub_10000E268(v76, v80, &qword_1005CF3A0, &unk_1004D2680);
    v81 = v108(&v114);
    sub_1000197E0(&v114);
    if (v81)
    {
      v82 = v112;
      v112[3] = v77;
      v82[4] = v79;
      v83 = sub_1000B3774(v82);
      sub_100025FDC(v76, v83, &qword_1005CF3A0, &unk_1004D2680);
      _s29DetermineMessageBatchesResultOMa(0);
    }

    else
    {
      sub_100025F40(v76, &qword_1005CF3A0, &unk_1004D2680);
      _s29DetermineMessageBatchesResultOMa(0);
      v84 = v112;
      *v112 = 0u;
      *(v84 + 16) = 0u;
      *(v84 + 32) = 0;
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v50 + 0x4000000000000000 >= 0)
  {
    if (v46 >= 2 * v50 / 3)
    {
      if ((v42 & 1) != 0 || ((v109 ^ 1 | v111) & 1) == 0)
      {
        v68 = v103;
      }

      else
      {
        v68 = v103;
        *v103 = v46;
      }

      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      v56 = v40;
    }

    else
    {
      sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1004CEAA0;
      if (v109)
      {
        v52 = -1;
      }

      else
      {
        v52 = v47;
      }

      v113 = v52;
      LODWORD(v114) = 1;
      sub_100016948();
      swift_bridgeObjectRetain_n();

      static MessageIdentifier.... infix(_:_:)(&v114, &v113, &type metadata for UID, v51 + 32);
      sub_100016D2C();
      v53 = v96;
      sub_1004A7114();
      v54 = v53;
      v55 = v91;
      sub_10000E268(v54, v91, &unk_1005D91B0, &unk_1004CF400);
      v56 = v40;
      if (MessageIdentifierSet.count.getter() <= 0)
      {
        sub_100025F40(v55, &unk_1005D91B0, &unk_1004CF400);
        v61 = 1;
        v60 = v93;
      }

      else
      {
        v57 = v55;
        v58 = v89;
        sub_100025FDC(v57, v89, &unk_1005D91B0, &unk_1004CF400);
        v59 = v58;
        v60 = v93;
        sub_100025FDC(v59, v93, &qword_1005CD1D0, &unk_1004CF2C0);
        v61 = 0;
      }

      (*(v98 + 56))(v60, v61, 1, v99);
      v69 = v92;
      sub_1000D80D8(v50, v51, v60, v92);
      sub_100025F40(v96, &unk_1005D91B0, &unk_1004CF400);
      swift_storeEnumTagMultiPayload();
      v68 = v103;
      sub_1000B4888(v69, v103, type metadata accessor for DetermineMessageBatches.TaskState);
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ABD5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v104 = a5;
  v90 = a4;
  v101 = a6;
  v106 = a4 >> 8;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v10 = *(MissingMessages - 8);
  v99 = MissingMessages;
  v100 = v10;
  __chkstk_darwin(MissingMessages);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v13 - 8);
  v105 = &v86 - v14;
  v92 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v92);
  v91 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = &v86 - v17;
  __chkstk_darwin(v18);
  v88 = &v86 - v19;
  __chkstk_darwin(v20);
  v22 = &v86 - v21;
  __chkstk_darwin(v23);
  v25 = &v86 - v24;
  v26 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v26 - 8);
  v108 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v86 - v29;
  __chkstk_darwin(v31);
  v33 = &v86 - v32;
  v96 = *(a1 + 43);
  v34 = a1[1];
  v102 = *a1;
  v93 = v34;
  v35 = a1[2];
  v94 = *(a1 + 6);
  v87 = a1[5];
  v107 = *(a1 + 48);
  sub_1000B4820(a2, &v86 - v32, type metadata accessor for MessageBatches);
  v36 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v37 = _s13SelectedStateV7WrappedVMa(0);
  v38 = *(v37 + 20);
  v39 = type metadata accessor for MailboxSyncState(0);
  sub_1000B4820(v36 + v38 + *(v39 + 68), v25, _s15MissingMessagesOMa);
  v40 = v36 + *(v37 + 20);
  v41 = *(v40 + 8);
  LOBYTE(v36) = *(v40 + 12);
  v98 = v104[4];
  v97 = v104[5];
  v103 = v33;
  v42 = v33;
  v43 = v87;
  v89 = v30;
  sub_1000B4820(v42, v30, type metadata accessor for MessageBatches);
  v104 = v25;
  sub_1000B4820(v25, v22, _s15MissingMessagesOMa);
  v44 = v88;
  sub_1000B4820(v22, v88, _s15MissingMessagesOMa);
  v95 = v35;
  swift_bridgeObjectRetain_n();

  LOBYTE(v109) = v36;
  v109 = sub_10007C308(v44, v43, v107 & 1, v41 | (v36 << 32), v106);
  v110 = v45;
  v111 = v46;
  v112 = v47;
  if (BYTE1(v90))
  {
    if (BYTE1(v90) == 1)
    {
      v48 = 2;
    }

    else
    {
      v48 = 1;
    }

    v55 = v89;
    sub_10007B35C(v48, v89);
    v57 = v104;
    v58 = v99;
    v59 = v91;
  }

  else
  {
    v49 = v86;
    sub_1000B4820(v22, v86, _s15MissingMessagesOMa);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1000B35D0(v49, _s15MissingMessagesOMa);
      v50 = v89;
      v51 = *v89;
      v52 = sub_1000D8054();
      v53 = v52 | ((HIDWORD(v52) & 1) << 32);
      v54 = v51;
      v55 = v50;
      if (sub_1000E5918(v54, v53))
      {
        v56 = 3;
      }

      else
      {
        v56 = 1;
      }

      v57 = v104;
      v58 = v99;
      v59 = v91;
    }

    else
    {
      v56 = 1;
      v57 = v104;
      v58 = v99;
      v59 = v91;
      v55 = v89;
    }

    sub_10007B0CC(v56, v55);
  }

  sub_1000B35D0(v22, _s15MissingMessagesOMa);
  sub_1000B35D0(v55, type metadata accessor for MessageBatches);
  v99 = v109;
  v92 = v110 | (BYTE4(v110) << 32);
  LODWORD(v91) = BYTE5(v110);
  LODWORD(v90) = v111;
  LODWORD(v89) = v112;
  v60 = sub_1000E5454();
  v61 = v60;
  if (v43 >= v60)
  {
    v62 = v60;
  }

  else
  {
    v62 = v43;
  }

  if (BYTE4(v60) & 1 | v107 & 1)
  {
    v63 = v60;
  }

  else
  {
    v63 = v62;
  }

  sub_1000B4820(v103, v108, type metadata accessor for MessageBatches);
  sub_1000B4820(v57, v59, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_1000B35D0(v59, _s15MissingMessagesOMa);
  }

  sub_1000E5698(v105);
  v88 = v63;
  if (v106)
  {
    v65 = 0;
    if (v106 == 1)
    {
      v66 = 1499;
    }

    else
    {
      v66 = 191;
    }
  }

  else
  {
    v66 = 0;
    v65 = 1;
  }

  *v12 = 0xD000000000000013;
  *(v12 + 1) = 0x80000001004AA190;
  *(v12 + 13) = sub_100093190(&off_100599440);
  v12[112] = 0;
  sub_100016D2C();
  sub_1004A7114();
  sub_1004A7114();
  v67 = v93;
  *(v12 + 8) = v102;
  *(v12 + 9) = v67;
  *(v12 + 40) = v96;
  v68 = v95;
  *(v12 + 11) = v95;
  v69 = v94;
  *(v12 + 24) = v94;
  v109 = v68;
  LODWORD(v110) = v69;
  *(v12 + 2) = v58;
  sub_100026044();
  sub_1004A6674();
  sub_1000B4820(v108, &v12[v58[9]], type metadata accessor for MessageBatches);
  v70 = &v12[v58[10]];
  *v70 = v43;
  v70[8] = v107 & 1;
  v71 = &v12[v58[11]];
  *v71 = v99;
  v72 = v92;
  v71[12] = BYTE4(v92);
  *(v71 + 2) = v72;
  v71[13] = v91;
  *(v71 + 4) = v90;
  v71[20] = v89;
  v73 = &v12[v58[13]];
  *v73 = v66;
  v73[8] = v65;
  v12[v58[14]] = EnumCaseMultiPayload == 0;
  v74 = v105;
  sub_10000E268(v105, &v12[v58[15]], &unk_1005D91B0, &unk_1004CF400);
  v75 = &v12[v58[12]];
  v76 = v98;
  *v75 = v98;
  v77 = v97;
  v75[1] = v97;
  if ((v61 & 0x100000000) != 0)
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
  }

  else
  {
    v82 = 256;
    if (!v77)
    {
      v82 = 0;
    }

    v79 = v82 | v76 | (v88 << 32);
    v81 = _swiftEmptyArrayStorage;
    v80 = &_mh_execute_header;
    v78 = 94;
  }

  v83 = &v12[v58[18]];
  sub_100025F40(v74, &unk_1005D91B0, &unk_1004CF400);
  sub_1000B35D0(v108, type metadata accessor for MessageBatches);
  sub_1000B35D0(v104, _s15MissingMessagesOMa);
  sub_1000B35D0(v103, type metadata accessor for MessageBatches);
  *v83 = v78;
  v83[1] = v79;
  v83[2] = v80;
  v83[3] = v81;
  v84 = v101;
  sub_1000B4888(v12, v101, type metadata accessor for FindMissingMessages);
  return (*(v100 + 56))(v84, 0, 1, v58);
}

uint64_t sub_1000AC694@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a5;
  v86 = a4;
  v90 = a6;
  v83 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v83);
  v81 = &v65[-v9];
  v10 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v10 - 8);
  v85 = &v65[-v11];
  v12 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v87 = *(v12 - 8);
  v88 = v12;
  __chkstk_darwin(v12);
  v73 = &v65[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v71 = &v65[-v15];
  Messages = type metadata accessor for FetchMessages(0);
  v89 = *(Messages - 8);
  __chkstk_darwin(Messages);
  v17 = &v65[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for FetchMessages.MissingUIDs(0);
  __chkstk_darwin(v18 - 8);
  v77 = &v65[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = _s15MissingMessagesOMa(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v65[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v65[-v24];
  v26 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v26 - 8);
  v74 = &v65[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v30 = &v65[-v29];
  LODWORD(v82) = *(a1 + 43);
  v31 = a1[1];
  v75 = *a1;
  v76 = v31;
  v32 = a1[2];
  v91 = *(a1 + 6);
  sub_1000B4820(a2, &v65[-v29], type metadata accessor for MessageBatches);
  v33 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v34 = _s13SelectedStateV7WrappedVMa(0);
  v35 = *(v34 + 20);
  v36 = type metadata accessor for MailboxSyncState(0);
  sub_1000B4820(v33 + v35 + *(v36 + 68), v25, _s15MissingMessagesOMa);
  v95 = a1[5];
  v96 = *(a1 + 48);
  v37 = (v33 + *(v34 + 20));
  v70 = v37[144];
  v69 = v37[145];
  v68 = v37[146];
  v67 = v37[147];
  v66 = v37[148];
  v94 = v86[1];
  v84 = v30;
  v38 = v74;
  sub_1000B4820(v30, v74, type metadata accessor for MessageBatches);
  v86 = v25;
  v39 = v25;
  v40 = Messages;
  sub_1000B4820(v39, v22, _s15MissingMessagesOMa);
  swift_bridgeObjectRetain_n();
  v41 = v75;

  v42 = v77;
  sub_100053C38(v22, v77);
  *v17 = sub_1000CE570(&off_100599468);
  v17[8] = 0;
  v43 = &v17[v40[9]];
  v44 = type metadata accessor for NewServerMessages(0);
  v45 = *(v44 - 1);
  v46 = *(v45 + 56);
  v79 = v45 + 56;
  v80 = v46;
  v46(v43, 1, 1, v44);
  v47 = v76;
  *(v17 + 2) = v41;
  *(v17 + 3) = v47;
  *(v17 + 16) = v82;
  *(v17 + 5) = v32;
  v48 = v91;
  *(v17 + 12) = v91;
  v49 = v40[8];
  v92 = v32;
  v93 = v48;
  *&v17[v49] = v40;
  sub_100026044();
  v82 = v32;

  v50 = v81;
  sub_1004A6674();
  sub_1000B4820(v38, &v17[v40[7]], type metadata accessor for MessageBatches);
  sub_1000B4820(v42, &v17[v40[10]], type metadata accessor for FetchMessages.MissingUIDs);
  MessageIdentifierSet.suffix(_:)(47, v83, v50);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v50, &unk_1005D91B0, &unk_1004CF400);
    v54 = 1;
    v53 = v85;
  }

  else
  {
    v51 = v50;
    v52 = v73;
    sub_100025FDC(v51, v73, &unk_1005D91B0, &unk_1004CF400);
    v53 = v85;
    sub_100025FDC(v52, v85, &qword_1005CD1D0, &unk_1004CF2C0);
    v54 = 0;
  }

  v56 = v87;
  v55 = v88;
  (*(v87 + 56))(v53, v54, 1, v88);
  if ((*(v56 + 48))(v53, 1, v55) == 1)
  {

    sub_1000B35D0(v42, type metadata accessor for FetchMessages.MissingUIDs);
    sub_1000B35D0(v38, type metadata accessor for MessageBatches);
    sub_1000B35D0(v86, _s15MissingMessagesOMa);
    sub_1000B35D0(v84, type metadata accessor for MessageBatches);
    sub_100025F40(v53, &qword_1005CD518, &qword_1004CF2F0);
    sub_100025F40(v43, &qword_1005CE3B0, &unk_1004D1010);
    v57 = 1;
  }

  else
  {
    v58 = v53;
    v59 = v71;
    sub_100025FDC(v58, v71, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025F40(v43, &qword_1005CE3B0, &unk_1004D1010);
    sub_100025FDC(v59, v43 + v44[5], &qword_1005CD1D0, &unk_1004CF2C0);
    v60 = v44[9];
    sub_1000B35D0(v42, type metadata accessor for FetchMessages.MissingUIDs);
    sub_1000B35D0(v38, type metadata accessor for MessageBatches);
    sub_1000B35D0(v86, _s15MissingMessagesOMa);
    sub_1000B35D0(v84, type metadata accessor for MessageBatches);
    v57 = 0;
    *(v43 + v60) = _swiftEmptyArrayStorage;
    *v43 = v82;
    *(v43 + 8) = v91;
    v61 = (v43 + v44[6]);
    *v61 = v70;
    v61[1] = v69;
    v61[2] = v68;
    v61[3] = v67;
    v61[4] = v66;
    *(v43 + v44[7]) = v94;
    *(v43 + v44[8]) = BYTE6(v72) & 1;
  }

  v80(v43, v57, 1, v44);
  v62 = &v17[v40[11]];
  *v62 = v95;
  v62[8] = v96;
  v63 = v90;
  sub_1000B4888(v17, v90, type metadata accessor for FetchMessages);
  return (*(v89 + 56))(v63, 0, 1, v40);
}

uint64_t sub_1000ACFA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 43);
  v6 = a2 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v7 = v6 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v8 = *(v7 + 24);
  LODWORD(v7) = *(v7 + 32);
  v9 = v7 != 1;
  if (v7 == 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = *(a1 + 6);
  *a3 = sub_100093190(&off_100599120);
  *(a3 + 8) = 0;
  *(a3 + 113) = 0;
  *(a3 + 120) = sub_1001634D0(_swiftEmptyArrayStorage);
  *(a3 + 128) = 0;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v5;
  *(a3 + 40) = v13;
  *(a3 + 48) = v14;
  *(a3 + 56) = &type metadata for UpdateLocalFlags;
  sub_100026044();
  swift_bridgeObjectRetain_n();

  result = sub_1004A6674();
  *(a3 + 104) = v10;
  *(a3 + 112) = v9;
  return result;
}

uint64_t sub_1000AD0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(__int128 *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v183 = a1;
  v184 = a8;
  v180 = a6;
  v181 = a7;
  v182 = a5;
  v179 = a9;
  v14 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v175 = &v160 - v18;
  __chkstk_darwin(v19);
  v177 = &v160 - v20;
  __chkstk_darwin(v21);
  v174 = (&v160 - v22);
  v23 = type metadata accessor for PendingServerResponses(0);
  __chkstk_darwin(v23 - 8);
  v176 = (&v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v27 = (&v160 - v26);
  v28 = 0;
  v29 = a2 + 56;
  v187 = a3;
  v30 = a3 + 7;
  v185 = a4;
  v186 = a4 + 7;
  do
  {
    if (!*(a2 + 16))
    {
      goto LABEL_33;
    }

    v31 = *(&off_100599210 + v28 + 32);
    sub_1004A6E94();
    sub_1004A6EB4(v31);
    v32 = sub_1004A6F14();
    v33 = -1 << *(a2 + 32);
    v34 = v32 & ~v33;
    if (((*(v29 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      goto LABEL_33;
    }

    ++v28;
    v35 = ~v33;
    while (*(*(a2 + 48) + v34) != v31)
    {
      v34 = (v34 + 1) & v35;
      if (((*(v29 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (v187[2])
    {
      v178 = v27;
      v36 = v16;
      v37 = a2;
      v38 = v10;
      v39 = v187;
      sub_1004A6E94();
      sub_1004A6EB4(v31);
      v40 = sub_1004A6F14();
      v41 = *(v39 + 32);
      v10 = v38;
      a2 = v37;
      v16 = v36;
      v27 = v178;
      v42 = -1 << v41;
      v43 = v40 & ~(-1 << v41);
      if ((*(v30 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
      {
        v44 = ~v42;
        while (*(v187[6] + v43) != v31)
        {
          v43 = (v43 + 1) & v44;
          if (((*(v30 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

LABEL_33:
        v72 = v184;
        if (!*(v184 + 2))
        {
          v178 = a2;
          v168 = *(v10 + 43);
          v73 = *v10;
          v169 = v10[1];
          v74 = v10[2];
          v75 = *(v10 + 6);
          v161 = v10[5];
          v162 = *(v10 + 48);
          v167 = v10[7];
          v186 = v10;
          v76 = *(v10 + 64);
          v170 = v75;
          LODWORD(v171) = v76;
          v77 = v183 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v164 = _s13SelectedStateV7WrappedVMa(0);
          v165 = v77;
          v78 = v77 + *(v164 + 20);
          v166 = *(v78 + 24);
          v79 = *(v78 + 32);
          v163 = type metadata accessor for MailboxSyncState(0);
          sub_1000B4820(v78 + *(v163 + 48), v27, type metadata accessor for PendingServerResponses);
          v80 = v27[3];
          v81 = v27[4];
          sub_10002587C(v27, v80);
          v82 = v27;
          v83 = *(v81 + 24);
          v172 = v74;
          swift_bridgeObjectRetain_n();
          v173 = v73;
          swift_bridgeObjectRetain_n();
          v84 = v81;
          v72 = v184;
          v85 = v83(v80, v84);
          sub_1000B35D0(v82, type metadata accessor for PendingServerResponses);
          v86 = *(v72 + 1);
          *(&v207 + 1) = sub_100093190(&off_100599238);
          LOBYTE(v208) = 0;
          if (v171 || v79)
          {

            swift_bridgeObjectRelease_n();

            v213 = 0u;
            v214 = 0u;
            v215 = 0u;
            v216 = 0u;
            v217 = 0u;
            v218 = 0u;
            v219 = 0u;
            memset(v220, 0, 17);
            a2 = v178;
          }

          else
          {
            *&v205 = v173;
            *(&v205 + 1) = v169;
            v87 = v168;
            LOWORD(v206) = v168;
            *(&v206 + 1) = v172;
            LODWORD(v207) = v170;
            *&v190 = v172;
            DWORD2(v190) = v170;
            *(&v208 + 1) = &type metadata for QuickFlagChangesResync;
            sub_100026044();
            v88 = sub_1004A6674();
            *(&v211 + 1) = v167;
            *&v212[0] = v166;
            *(&v212[0] + 1) = v85;
            LOBYTE(v212[1]) = v86;
            LOBYTE(v220[1]) = v86;
            v215 = v207;
            v216 = v208;
            v217 = v209;
            v218 = v210;
            v213 = v205;
            v214 = v206;
            v219 = v211;
            v220[0] = v212[0];
            a2 = v178;
            if (v205)
            {
              v228[16] = v220[1];
              v227 = v219;
              *v228 = v220[0];
              v223 = v215;
              v224 = v216;
              v225 = v217;
              v226 = v218;
              v221 = v213;
              v222 = v214;
              __chkstk_darwin(v88);
              *(&v160 - 2) = &v221;
              v89 = a2;
              v90 = v185;
              v91 = a2;
              v92 = v180;
              sub_1000A93A8(v89, v187, v185, v180, sub_1000B42B0, &v205);
              if (*(&v206 + 1))
              {

                sub_1000B364C(&v205, &v213);
                v93 = &v213;
                v94 = v179;
LABEL_39:
                sub_1000B364C(v93, v94);
                return sub_1000B42C8(&v221);
              }

              sub_100025F40(&v205, &qword_1005CF328, &unk_1004D2620);
              v123 = v91;
              if (sub_100014D94())
              {
                v124 = sub_100014D94();
                v125 = v186;
                if ((v124 & 1) == 0 && ((sub_100167D14(v123, v187) & 1) == 0 || (sub_100014D94() & 1) == 0))
                {
                  v127 = (v165 + *(v164 + 20));
                  v128 = *v127;
                  v129 = v127 + *(v163 + 48);
                  v183 = *(v129 + 5);
                  v130 = v129[48];
                  v131 = v174;
                  result = sub_1000B4820(v182, v174, type metadata accessor for MessageBatches);
                  v132 = *(v72 + 4);
                  BYTE4(v192) = 1;
                  v133 = *v131 / 2;
                  if (v133 >= v128)
                  {
                    v138 = v183;
                    sub_1000B4298(v183, v130);

                    sub_10002A758(v138, v130);
                    sub_1000B35D0(v131, type metadata accessor for MessageBatches);
                    v123 = v178;
                    v125 = v186;
LABEL_80:
                    v205 = 0u;
                    v206 = 0u;
                    v207 = 0u;
                    v208 = 0u;
                    v209 = 0u;
                    v210 = 0u;
                    v211 = 0u;
                    v72 = v184;
LABEL_81:
                    v126 = sub_100025F40(&v205, &qword_1005CF460, &qword_1004D2718);
                    goto LABEL_82;
                  }

                  v134 = v183;
                  v68 = __OFSUB__(v128, v133);
                  v135 = v128 - v133;
                  if (!v68)
                  {
                    v123 = v178;
                    v125 = v186;
                    if (v135 <= 0 || HIDWORD(v135))
                    {
LABEL_73:
                      sub_1000B4298(v183, v130);

                      v136 = v134;
                      v137 = v130;
LABEL_74:
                      sub_10002A758(v136, v137);
                      sub_1000B35D0(v174, type metadata accessor for MessageBatches);
                      goto LABEL_80;
                    }

                    if (v130)
                    {
                      if (v183 > 139)
                      {
                        goto LABEL_73;
                      }

                      if (v183 > 0)
                      {
                        goto LABEL_93;
                      }
                    }

                    else
                    {
                      v147 = *(v183 + 16);
                      if (v147 >= 0x8C)
                      {
                        goto LABEL_73;
                      }

                      v148 = (v183 + 32);
                      while (v147)
                      {
                        v149 = *v148++;
                        --v147;
                        if (v149 < v135)
                        {
                          sub_1000B4298(v183, 0);

                          v136 = v134;
                          v137 = 0;
                          goto LABEL_74;
                        }
                      }
                    }

                    if ((v162 & 1) == 0)
                    {
                      *&v190 = v173;
                      *(&v190 + 1) = v169;
                      LOWORD(v191) = v87;
                      *(&v191 + 1) = v172;
                      LODWORD(v192) = v170;
                      v188 = v172;
                      v189 = v170;
                      *(&v192 + 1) = &type metadata for DetectRemovedMessagesInRecent;
                      v153 = v132;

                      sub_1000B4298(v134, v130);
                      sub_1004A6674();
                      v154 = v174;
                      v155 = sub_1000E25D0(v174, v161, 0);
                      v157 = v156;
                      v158 = sub_1000B35D0(v154, type metadata accessor for MessageBatches);
                      *(&v195 + 1) = v155;
                      LODWORD(v196) = v157;
                      BYTE4(v196) = BYTE4(v157) & 1;
                      *(&v196 + 5) = v153;
                      if ((v130 & 1) == 0)
                      {
                        v159 = *(v134 + 16);
                        v158 = sub_10002A758(v134, 0);
                        v134 = v159;
                      }

                      v123 = v178;
                      v125 = v186;
                      *(&v196 + 1) = v134;
                      v209 = v194;
                      v210 = v195;
                      v205 = v190;
                      v206 = v191;
                      v207 = v192;
                      v208 = v193;
                      v211 = v196;
                      v72 = v184;
                      if (v190)
                      {
                        v217 = v209;
                        v218 = v210;
                        v219 = v211;
                        v213 = v205;
                        v214 = v206;
                        v215 = v207;
                        v216 = v208;
                        __chkstk_darwin(v158);
                        *(&v160 - 2) = &v213;
                        sub_1000A8C98(v123, v187, v90, v92, sub_1000B431C, &v190);
                        if (*(&v191 + 1))
                        {
                          sub_1000B364C(&v190, &v205);
                          sub_1000B364C(&v205, &v197);
                          sub_10002A79C(&v213);
LABEL_84:
                          v71 = v179;
                          if (*(&v198 + 1))
                          {
                            sub_1000B364C(&v197, &v200);
                            v93 = &v200;
                            v94 = v71;
                            goto LABEL_39;
                          }

LABEL_88:
                          sub_100025F40(&v197, &qword_1005CF328, &unk_1004D2620);
                          result = sub_1000B42C8(&v221);
                          goto LABEL_61;
                        }

                        sub_100025F40(&v190, &qword_1005CF328, &unk_1004D2620);
                        sub_10002A79C(&v213);
LABEL_87:
                        v71 = v179;
                        v199 = 0;
                        v197 = 0u;
                        v198 = 0u;
                        goto LABEL_88;
                      }

                      goto LABEL_81;
                    }

LABEL_93:

                    sub_1000B35D0(v174, type metadata accessor for MessageBatches);
                    swift_bridgeObjectRelease_n();

                    goto LABEL_80;
                  }

                  __break(1u);
LABEL_120:
                  __break(1u);
                  return result;
                }
              }

              else
              {

                v125 = v186;
              }

LABEL_82:
              __chkstk_darwin(v126);
              v139 = v182;
              *(&v160 - 4) = v125;
              *(&v160 - 3) = v139;
              *(&v160 - 2) = v72;
              sub_1000A8A1C(v123, v187, v90, v92, sub_1000B42BC, &v205);
              if (*(&v206 + 1))
              {
                sub_1000B364C(&v205, &v213);
                sub_1000B364C(&v213, &v197);
                goto LABEL_84;
              }

              sub_100025F40(&v205, &qword_1005CF328, &unk_1004D2620);
              goto LABEL_87;
            }
          }

          sub_100025F40(&v213, &qword_1005CF458, &qword_1004D2710);
          v10 = v186;
        }

        v95 = sub_100014D94();
        v96 = v185;
        if (v95)
        {
          v95 = sub_100014D94();
          if ((v95 & 1) == 0)
          {
            if ((sub_100167D14(a2, v187) & 1) == 0 || (v95 = sub_100014D94(), (v95 & 1) == 0))
            {
              v178 = a2;
              v168 = *(v10 + 43);
              v97 = *v10;
              v166 = v10[1];
              v173 = v10[2];
              v174 = v97;
              LODWORD(v167) = *(v10 + 6);
              v169 = v10[5];
              v186 = v10;
              v170 = *(v10 + 48);
              v98 = v183 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
              swift_beginAccess();
              v99 = _s13SelectedStateV7WrappedVMa(0);
              v100 = (v98 + *(v99 + 20));
              v171 = *v100;
              v172 = v99;
              v101 = v100 + *(type metadata accessor for MailboxSyncState(0) + 48);
              v102 = *(v101 + 40);
              v103 = *(v101 + 48);
              v104 = v176;
              sub_1000B4820(v101, v176, type metadata accessor for PendingServerResponses);
              v106 = v104[3];
              v105 = v104[4];
              sub_10002587C(v104, v106);
              v107 = *(v105 + 24);
              swift_bridgeObjectRetain_n();

              v108 = sub_1000B4298(v102, v103);
              v109 = v106;
              v110 = v102;
              v111 = v107(v109, v105, v108);
              sub_1000B35D0(v104, type metadata accessor for PendingServerResponses);
              v112 = *(v184 + 1);
              LODWORD(v107) = *(v98 + *(v172 + 20) + 32);
              v113 = v177;
              sub_1000B4820(v182, v177, type metadata accessor for MessageBatches);
              *(&v207 + 1) = sub_100093190(&off_100599260);
              LOBYTE(v208) = 1;
              if (v107 && (v114 = *v113, sub_100026C18(v171, *v113, v102, v103)) && sub_100026C90(v171, v114, v111) && (v170 & 1) == 0)
              {
                *&v205 = v174;
                *(&v205 + 1) = v166;
                LOWORD(v206) = v168;
                *(&v206 + 1) = v173;
                LODWORD(v207) = v167;
                *&v200 = v173;
                DWORD2(v200) = v167;
                *(&v208 + 1) = &type metadata for DetectChangesToMessagesInRecent;
                sub_100026044();
                sub_1004A6674();
                *&v212[0] = v111;
                if ((v103 & 1) == 0)
                {
                  v115 = *(v102 + 16);
                  sub_10002A758(v102, 0);
                  v110 = v115;
                }

                v96 = v185;
                v10 = v186;
                a2 = v178;
                v116 = v169;
                *(&v212[0] + 1) = v110;
                BYTE8(v211) = v112;
                v117 = v175;
                sub_1000B4820(v113, v175, type metadata accessor for MessageBatches);
                LOBYTE(v200) = 0;
                sub_1000D7F2C(0xFFFFFFFFLL);
                v118 = sub_1000E25D0(v117, v116, 0);
                v120 = v119;
                sub_1000B35D0(v117, type metadata accessor for MessageBatches);
                v121 = sub_1000B35D0(v113, type metadata accessor for MessageBatches);
                *&v212[1] = v118;
                DWORD2(v212[1]) = v120;
                BYTE12(v212[1]) = BYTE4(v120) & 1;
                v219 = v211;
                v220[0] = v212[0];
                v215 = v207;
                v216 = v208;
                v217 = v209;
                v218 = v210;
                v213 = v205;
                v214 = v206;
                *(v220 + 13) = *(v212 + 13);
                if (v205)
                {
                  v227 = v219;
                  *v228 = v220[0];
                  *&v228[13] = *(v220 + 13);
                  v223 = v215;
                  v224 = v216;
                  v225 = v217;
                  v226 = v218;
                  v221 = v213;
                  v222 = v214;
                  __chkstk_darwin(v121);
                  *(&v160 - 2) = &v221;
                  sub_1000A915C(a2, v187, v96, v180, sub_1000B42A4, &v205);
                  if (*(&v206 + 1))
                  {
                    sub_1000B364C(&v205, &v213);
                    sub_1000B364C(&v213, v179);
                    return sub_100026E94(&v221);
                  }

                  sub_100025F40(&v205, &qword_1005CF328, &unk_1004D2620);
                  result = sub_100026E94(&v221);
                  goto LABEL_60;
                }
              }

              else
              {

                sub_10002A758(v102, v103);
                swift_bridgeObjectRelease_n();

                sub_1000B35D0(v113, type metadata accessor for MessageBatches);

                v213 = 0u;
                v214 = 0u;
                v215 = 0u;
                v216 = 0u;
                v217 = 0u;
                v218 = 0u;
                v219 = 0u;
                memset(v220, 0, 29);
                v96 = v185;
                v10 = v186;
                a2 = v178;
              }

              v95 = sub_100025F40(&v213, &qword_1005CF450, &qword_1004D2708);
              v72 = v184;
            }
          }
        }

        __chkstk_darwin(v95);
        *(&v160 - 4) = v10;
        *(&v160 - 3) = v72;
        v122 = v182;
        *(&v160 - 2) = v183;
        *(&v160 - 1) = v122;
        sub_1000A8EFC(a2, v187, v96, v180, sub_1000B428C, &v213);
        if (*(&v214 + 1))
        {
          sub_1000B364C(&v213, &v221);
          return sub_1000B364C(&v221, v179);
        }

        result = sub_100025F40(&v213, &qword_1005CF328, &unk_1004D2620);
LABEL_60:
        v71 = v179;
        goto LABEL_61;
      }
    }

LABEL_13:
    if (sub_100167D14(a2, v187))
    {
      if (v185[2])
      {
        v178 = a2;
        v45 = v10;
        v46 = v185;
        sub_1004A6E94();
        sub_1004A6EB4(v31);
        v47 = sub_1004A6F14();
        v48 = *(v46 + 32);
        v10 = v45;
        a2 = v178;
        v49 = -1 << v48;
        v50 = v47 & ~(-1 << v48);
        if ((*(v186 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
        {
          v51 = ~v49;
          while (*(v185[6] + v50) != v31)
          {
            v50 = (v50 + 1) & v51;
            if (((*(v186 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_33;
        }
      }
    }

LABEL_19:
    ;
  }

  while (v28 != 2);
  v52 = sub_100014D94();
  v53 = v185;
  if ((v52 & 1) == 0)
  {
    goto LABEL_29;
  }

  v52 = sub_100014D94();
  if (v52)
  {
    goto LABEL_29;
  }

  if (sub_100167D14(a2, v187))
  {
    v52 = sub_100014D94();
    if (v52)
    {
      goto LABEL_29;
    }
  }

  v178 = a2;
  LODWORD(v176) = *(v10 + 43);
  v54 = *v10;
  v175 = v10[1];
  v55 = v10[2];
  v56 = *(v10 + 6);
  v177 = v10[5];
  v186 = v10;
  v57 = *(v10 + 48);
  v58 = v183 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v59 = (v58 + *(_s13SelectedStateV7WrappedVMa(0) + 20));
  v60 = *v59;
  v61 = v59 + *(type metadata accessor for MailboxSyncState(0) + 48);
  v62 = *(v61 + 5);
  v63 = v61[48];
  result = sub_1000B4820(v182, v16, type metadata accessor for MessageBatches);
  v65 = *(v184 + 4);
  BYTE4(v207) = 1;
  v66 = v16;
  v67 = *v16 / 2;
  if (v67 >= v60)
  {
    goto LABEL_27;
  }

  v68 = __OFSUB__(v60, v67);
  v69 = v60 - v67;
  if (v68)
  {
    goto LABEL_120;
  }

  if ((v69 - 0x100000000) <= 0xFFFFFFFF00000000)
  {
    goto LABEL_27;
  }

  if (v63)
  {
    if (v62 <= 0)
    {
      goto LABEL_96;
    }

    goto LABEL_27;
  }

  v150 = *(v62 + 16);
  if (v150 > 0x8B)
  {
    goto LABEL_27;
  }

  v151 = (v62 + 32);
  while (v150)
  {
    v152 = *v151++;
    --v150;
    if (v152 < v69)
    {
      goto LABEL_27;
    }
  }

LABEL_96:
  if (v57)
  {
LABEL_27:
    sub_1000B35D0(v16, type metadata accessor for MessageBatches);
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v53 = v185;
    a2 = v178;
  }

  else
  {
    *&v205 = v54;
    *(&v205 + 1) = v175;
    LOWORD(v206) = v176;
    *(&v206 + 1) = v55;
    LODWORD(v207) = v56;
    v203 = v55;
    v204 = v56;
    *(&v207 + 1) = &type metadata for DetectRemovedMessagesInRecent;
    v140 = v65;
    swift_bridgeObjectRetain_n();

    sub_1000B4298(v62, v63);
    sub_100026044();
    sub_1004A6674();
    v141 = v66;
    v142 = sub_1000E25D0(v66, v177, v57 & 1);
    v144 = v143;
    v145 = sub_1000B35D0(v141, type metadata accessor for MessageBatches);
    *(&v210 + 1) = v142;
    LODWORD(v211) = v144;
    BYTE4(v211) = BYTE4(v144) & 1;
    *(&v211 + 5) = v140;
    if ((v63 & 1) == 0)
    {
      v146 = *(v62 + 16);
      v145 = sub_10002A758(v62, 0);
      v62 = v146;
    }

    v53 = v185;
    *(&v211 + 1) = v62;
    v217 = v209;
    v218 = v210;
    v213 = v205;
    v214 = v206;
    v215 = v207;
    v216 = v208;
    v219 = v211;
    a2 = v178;
    if (v205)
    {
      v225 = v217;
      v226 = v218;
      v227 = v219;
      v221 = v213;
      v222 = v214;
      v223 = v215;
      v224 = v216;
      __chkstk_darwin(v145);
      *(&v160 - 2) = &v221;
      sub_1000A8C98(a2, v187, v53, v180, sub_1000B493C, &v205);
      if (*(&v206 + 1))
      {
        sub_1000B364C(&v205, &v213);
        sub_1000B364C(&v213, &v200);
        sub_10002A79C(&v221);
        goto LABEL_31;
      }

      sub_100025F40(&v205, &qword_1005CF328, &unk_1004D2620);
      sub_10002A79C(&v221);
LABEL_76:
      v71 = v179;
      v202 = 0;
      v200 = 0u;
      v201 = 0u;
      goto LABEL_77;
    }
  }

  v52 = sub_100025F40(&v213, &qword_1005CF460, &qword_1004D2718);
  v10 = v186;
LABEL_29:
  __chkstk_darwin(v52);
  v70 = v182;
  *(&v160 - 4) = v10;
  *(&v160 - 3) = v70;
  *(&v160 - 2) = v184;
  sub_1000A8A1C(a2, v187, v53, v180, sub_1000B4928, &v213);
  if (!*(&v214 + 1))
  {
    sub_100025F40(&v213, &qword_1005CF328, &unk_1004D2620);
    goto LABEL_76;
  }

  sub_1000B364C(&v213, &v221);
  sub_1000B364C(&v221, &v200);
LABEL_31:
  v71 = v179;
  if (*(&v201 + 1))
  {
    sub_1000B364C(&v200, &v190);
    return sub_1000B364C(&v190, v71);
  }

LABEL_77:
  result = sub_100025F40(&v200, &qword_1005CF328, &unk_1004D2620);
LABEL_61:
  *(v71 + 32) = 0;
  *v71 = 0u;
  *(v71 + 16) = 0u;
  return result;
}

uint64_t sub_1000AE6A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = *(a2 + 8);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v6 + 8 * v7 + 24);
  }

  else
  {
    v8 = 1;
  }

  v23 = v8;
  v9 = *(a1 + 43);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = *(a1 + 6);
  v22 = *(a3 + 4);
  v14 = a4 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v15 = *(_s13SelectedStateV7WrappedVMa(0) + 20);
  v16 = (v14 + v15 + *(type metadata accessor for MailboxSyncState(0) + 76));
  v17.rawValue = *v16;
  v18 = v16[1];
  swift_bridgeObjectRetain_n();

  v19 = static MonotonicTime.now()();
  result = sub_1000CE570(&off_100599490);
  *&v24 = result;
  BYTE8(v24) = 0;
  *&v31[16] = 0;
  v31[24] = 1;
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    v21 = exp2((v18 - 1));
    if (MonotonicTime.init(seconds:since:)(fmin(v21 + v21, 37.0), v17).rawValue >= v19)
    {

      result = swift_bridgeObjectRelease_n();
      *(a5 + 121) = 0u;
      a5[6] = 0u;
      a5[7] = 0u;
      a5[4] = 0u;
      a5[5] = 0u;
      a5[2] = 0u;
      a5[3] = 0u;
      *a5 = 0u;
      a5[1] = 0u;
    }

    else
    {
      *&v25 = v10;
      *(&v25 + 1) = v11;
      LOWORD(v26) = v9;
      *(&v26 + 1) = v12;
      LODWORD(v27) = v13;
      *(&v27 + 1) = &type metadata for CountUnreadMessages;
      sub_100026044();
      result = sub_1004A6674();
      DWORD2(v30) = v23;
      *v31 = 1000000;
      v31[8] = 0;
      *&v31[9] = v22;
      a5[2] = v26;
      a5[3] = v27;
      a5[4] = v28;
      a5[5] = v29;
      *a5 = v24;
      a5[1] = v25;
      a5[6] = v30;
      a5[7] = *v31;
      *(a5 + 121) = *&v31[9];
    }
  }

  return result;
}

uint64_t sub_1000AE8A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = type metadata accessor for UploadMessages(0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 43);
  v11 = *a1;
  v29 = a1[1];
  v12 = a1[2];
  v13 = *(a1 + 6);
  v34 = *(a2 + 1);
  v14 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v15 = v14 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
  HIDWORD(v28) = *(v15 + 32);
  v16 = *(a2 + 32);
  LOBYTE(v14) = *(a2 + 40);
  v17 = type metadata accessor for MailboxSyncState(0);
  if (v14)
  {
    v18 = v16 != 0;
    v19 = 2;
    if (!v16)
    {
      v20 = (v15 + *(v17 + 72));
      if ((*(v20 + 9) & 1) == 0)
      {
        v21 = *v20;
        v22 = *(v20 + 8);
        if (v22)
        {
          v18 = 1;
        }

        else
        {
          v18 = v21;
        }

        if (v22)
        {
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }
      }
    }
  }

  else
  {
    v19 = 0;
    v18 = v16;
  }

  swift_bridgeObjectRetain_n();

  *(v10 + 5) = sub_1000CE570(&off_100599300);
  v10[48] = 0;
  v23 = v7[13];
  v24 = type metadata accessor for UploadMessages.PendingUpload(0);
  (*(*(v24 - 8) + 56))(&v10[v23], 1, 1, v24);
  *&v10[v7[14]] = xmmword_1004D25F0;
  v10[v7[18]] = 0;
  v25 = v29;
  *v10 = v11;
  *(v10 + 1) = v25;
  *(v10 + 8) = v30;
  *(v10 + 3) = v12;
  *(v10 + 8) = v13;
  v32 = v12;
  v33 = v13;
  *(v10 + 7) = v7;
  sub_100026044();
  sub_1004A6674();
  v10[104] = v34;
  v10[105] = HIDWORD(v28) == 0;
  *(v10 + 14) = v18;
  v10[120] = v19;
  *(v10 + 16) = _swiftEmptyArrayStorage;
  *(v10 + 17) = _swiftEmptyArrayStorage;
  *(v10 + 18) = &_swiftEmptyArrayStorage[4];
  *(v10 + 152) = xmmword_1004B1230;
  *&v10[v7[15]] = _swiftEmptySetSingleton;
  *&v10[v7[16]] = _swiftEmptyArrayStorage;
  *&v10[v7[17]] = _swiftEmptyArrayStorage;
  v26 = v31;
  sub_1000B4888(v10, v31, type metadata accessor for UploadMessages);
  return (*(v8 + 56))(v26, 0, 1, v7);
}

uint64_t sub_1000AEB8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = 0;
  v7 = result + 56;
  v8 = 1 << *(result + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(result + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 56;
  v13 = a3 + 56;
  v27 = a4 + 56;
  v28 = result;
LABEL_5:
  while (v10)
  {
    if (!*(a2 + 16))
    {
      return 1;
    }

LABEL_7:
    v14 = *(*(v5 + 48) + (__clz(__rbit64(v10)) | (v6 << 6)));
    sub_1004A6E94();
    sub_1004A6EB4(v14);
    v15 = sub_1004A6F14();
    v16 = -1 << *(a2 + 32);
    v17 = v15 & ~v16;
    if (((*(v12 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 1;
    }

    v10 &= v10 - 1;
    v18 = ~v16;
    while (*(*(a2 + 48) + v17) != v14)
    {
      v17 = (v17 + 1) & v18;
      if (((*(v12 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 1;
      }
    }

    if (*(a3 + 16))
    {
      sub_1004A6E94();
      sub_1004A6EB4(v14);
      v20 = sub_1004A6F14();
      v21 = -1 << *(a3 + 32);
      v22 = v20 & ~v21;
      if ((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (*(*(a3 + 48) + v22) != v14)
        {
          v22 = (v22 + 1) & v23;
          if (((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        return 1;
      }
    }

LABEL_22:
    result = sub_100167D14(a2, a3);
    v5 = v28;
    if (result)
    {
      if (*(a4 + 16))
      {
        sub_1004A6E94();
        sub_1004A6EB4(v14);
        result = sub_1004A6F14();
        v5 = v28;
        v24 = -1 << *(a4 + 32);
        v25 = result & ~v24;
        if ((*(v27 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v26 = ~v24;
          while (*(*(a4 + 48) + v25) != v14)
          {
            v25 = (v25 + 1) & v26;
            if (((*(v27 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          return 1;
        }
      }
    }
  }

  do
  {
    v19 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= v11)
    {
      return 0;
    }

    v10 = *(v7 + 8 * v19);
    ++v6;
  }

  while (!v10);
  v6 = v19;
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

  return 1;
}

void sub_1000AEE38(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - v9;
  v11 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v41 - v15;
  __chkstk_darwin(v17);
  v20 = v41 - v19;
  v21 = *(a2 + 8);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = *(v21 + 8 * v22 + 24);
  }

  else
  {
    v23 = 1;
  }

  v24 = *(a1 + 43);
  v28 = (a3 & 0x10000000000) == 0;
  v26 = *a1;
  v25 = a1[1];
  v27 = a1[2];
  v28 = v28 || v23 == 1;
  v29 = v28;
  v47 = *(a1 + 6);
  v46 = v25;
  if (v28)
  {
    swift_bridgeObjectRetain_n();

    v30 = 0;
    v31 = 0;
    v32 = 1;
LABEL_22:
    *a4 = sub_1000CE570(&off_1005994B8);
    *(a4 + 8) = 1;
    v40 = v46;
    *(a4 + 16) = v26;
    *(a4 + 24) = v40;
    *(a4 + 32) = v24;
    *(a4 + 40) = v27;
    LODWORD(v40) = v47;
    *(a4 + 48) = v47;
    v49 = v27;
    v50 = v40;
    *(a4 + 56) = &type metadata for PurgeMessagesOutsideWindowOfInterest;
    sub_100026044();
    sub_1004A6674();
    *(a4 + 104) = v31;
    *(a4 + 112) = v29;
    *(a4 + 116) = v30;
    *(a4 + 124) = v32 & 1;
    return;
  }

  v45 = v24;
  v33 = a1[5];
  v34 = *(a1 + 48);
  LODWORD(v48) = 1;
  if (v23 >= 2)
  {
    v41[1] = v18;
    v42 = v33;
    v44 = v29;
    v51 = v23 - 1;
    v35 = sub_100016948();
    swift_bridgeObjectRetain_n();

    static MessageIdentifier.... infix(_:_:)(&v48, &v51, &type metadata for UID, &v49);
    v43 = v49 | (HIDWORD(v49) << 32);
    if (v34)
    {
      v30 = 0;
    }

    else
    {
      v48 = Range<>.init<A>(_:)(&v49, &type metadata for UID, v35);
      sub_100016D2C();
      sub_1004A7124();
      v49 = v42;
      v48 = Range<>.init<A>(_:)(&v49, &type metadata for UID, v35);
      sub_1004A7124();
      MessageIdentifierSet.subtracting(_:)(v20, v16);
      sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
      MessageIdentifierSet.ranges.getter(v10);
      sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
      v30 = sub_1000E4C0C();
      v37 = v36;
      sub_100025F40(v10, &qword_1005CD7A0, &unk_1004CF590);
      sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
      if ((v37 & 1) == 0)
      {
        v38 = v30 == v42;
        v39 = HIDWORD(v42) == HIDWORD(v30);
        v32 = v38 && v39;
        if (v38 && v39)
        {
          v30 = 0;
        }

        goto LABEL_21;
      }

      v30 = 1;
    }

    v32 = 1;
LABEL_21:
    LOBYTE(v29) = v44;
    LOWORD(v24) = v45;
    v31 = v43;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_1000AF20C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a5;
  v56 = a3;
  v59 = a6;
  v9 = sub_10000C9C0(&qword_1005CF380, &unk_1004D2660);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests(0);
  v12 = *(SearchResult - 8);
  __chkstk_darwin(SearchResult);
  v52 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultMessages = type metadata accessor for FetchSearchResultMessages(0);
  v58 = *(SearchResultMessages - 1);
  __chkstk_darwin(SearchResultMessages);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(a1 + 43);
  v20 = *a1;
  v50 = a1[1];
  v21 = a1[2];
  v49 = *(a1 + 6);
  v55 = a1[5];
  v54 = *(a1 + 48);
  sub_1000B4820(a2, v19, type metadata accessor for MessageBatches);
  v22 = v56 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v23 = (v22 + *(_s13SelectedStateV7WrappedVMa(0) + 20));
  v24 = v23[144];
  v47 = v23[145];
  v48 = v24;
  v25 = v23[146];
  v45 = v23[147];
  v46 = v25;
  v44 = v23[148];
  v62 = *(a4 + 1);
  *v16 = _swiftEmptySetSingleton;
  v16[8] = 0;
  v26 = SearchResultMessages[13];
  v27 = type metadata accessor for NewServerMessages(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v56 = v26;
  v42 = v28 + 56;
  v43 = v29;
  v29(&v16[v26], 1, 1, v27);
  swift_bridgeObjectRetain_n();
  v30 = v20;

  sub_10005A8F4(v31, v55, v54 & 1, v11);
  if ((*(v12 + 48))(v11, 1, SearchResult) == 1)
  {
    swift_bridgeObjectRelease_n();

    sub_1000B35D0(v19, type metadata accessor for MessageBatches);
    sub_100025F40(v11, &qword_1005CF380, &unk_1004D2660);
    sub_100025F40(&v16[v56], &qword_1005CE3B0, &unk_1004D1010);
    return (*(v58 + 56))(v59, 1, 1, SearchResultMessages);
  }

  else
  {
    v33 = v52;
    sub_1000B4888(v11, v52, type metadata accessor for FetchSearchResultMessages.Requests);
    v34 = SearchResultMessages[8];
    v60 = v21;
    v35 = v49;
    v61 = v49;
    *&v16[v34] = SearchResultMessages;
    sub_100026044();
    sub_1004A6674();
    v36 = v50;
    *(v16 + 2) = v30;
    *(v16 + 3) = v36;
    *(v16 + 16) = v51;
    *(v16 + 5) = v21;
    *(v16 + 12) = v35;
    sub_1000B4888(v19, &v16[SearchResultMessages[7]], type metadata accessor for MessageBatches);
    v37 = v56;
    sub_100025F40(&v16[v56], &qword_1005CE3B0, &unk_1004D1010);
    v43(&v16[v37], 1, 1, v27);
    v38 = &v16[SearchResultMessages[9]];
    v39 = v47;
    *v38 = v48;
    v38[1] = v39;
    v40 = v45;
    v38[2] = v46;
    v38[3] = v40;
    v38[4] = v44;
    v16[SearchResultMessages[10]] = v62;
    v16[SearchResultMessages[11]] = BYTE6(v53) & 1;
    sub_1000B4888(v33, &v16[SearchResultMessages[12]], type metadata accessor for FetchSearchResultMessages.Requests);
    v41 = v59;
    sub_1000B4820(v16, v59, type metadata accessor for FetchSearchResultMessages);
    (*(v58 + 56))(v41, 0, 1, SearchResultMessages);
    return sub_1000B35D0(v16, type metadata accessor for FetchSearchResultMessages);
  }
}

uint64_t sub_1000AF768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v7 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = *(a1 + 43);
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = *(a1 + 6);
  v25 = a1[5];
  v24 = *(a1 + 48);
  sub_1000B4820(a2, &v22 - v11, type metadata accessor for MessageBatches);
  LOWORD(a2) = *(v23 + 4);
  *(a4 + 36) = 1;
  *(a4 + 104) = 0;
  *(a4 + 112) = 1;
  *a4 = v14;
  *(a4 + 8) = v15;
  *(a4 + 16) = v13;
  *(a4 + 24) = v16;
  *(a4 + 32) = v17;
  v26 = v16;
  v27 = v17;
  *(a4 + 40) = &type metadata for DetectRemovedMessages;
  sub_100026044();
  swift_bridgeObjectRetain_n();

  sub_1004A6674();
  sub_1000B4820(v12, v9, type metadata accessor for MessageBatches);
  v18 = sub_1000E2208(v9, v25, v24 & 1);
  v20 = v19;
  result = sub_1000B35D0(v12, type metadata accessor for MessageBatches);
  *(a4 + 88) = v18;
  *(a4 + 96) = v20;
  *(a4 + 100) = BYTE4(v20) & 1;
  *(a4 + 101) = a2;
  return result;
}

double sub_1000AF930@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v9 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v28[-v13];
  v29 = *(a1 + 43);
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = *(a1 + 6);
  v32 = a1[5];
  v31 = *(a1 + 48);
  LOBYTE(a2) = *(a2 + 1);
  v19 = a3 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  LODWORD(a1) = *(v19 + *(_s13SelectedStateV7WrappedVMa(0) + 20) + 32);
  sub_1000B4820(v30, v14, type metadata accessor for MessageBatches);
  *(&v37 + 1) = sub_100093190(&off_1005994E0);
  LOBYTE(v38) = 1;
  v42 = 0uLL;
  v43[0] = 1;
  *&v35 = v15;
  *(&v35 + 1) = v16;
  LOWORD(v36) = v29;
  *(&v36 + 1) = v17;
  LODWORD(v37) = v18;
  BYTE8(v41) = a2;
  BYTE9(v41) = a1 == 0;
  v33 = v17;
  v34 = v18;
  *(&v38 + 1) = &type metadata for DetectChangesToMessages;
  sub_100026044();
  swift_bridgeObjectRetain_n();

  sub_1004A6674();
  sub_1000B4820(v14, v11, type metadata accessor for MessageBatches);
  LOBYTE(v33) = 0;
  sub_1000D7F2C(0xFFFFFFFFLL);
  v20 = sub_1000E2208(v11, v32, v31 & 1);
  v22 = v21;
  sub_1000B35D0(v14, type metadata accessor for MessageBatches);
  *&v43[8] = v20;
  *&v43[16] = v22;
  v43[20] = BYTE4(v22) & 1;
  v23 = v42;
  *(a5 + 96) = v41;
  *(a5 + 112) = v23;
  v24 = v38;
  *(a5 + 32) = v37;
  *(a5 + 48) = v24;
  v25 = v40;
  *(a5 + 64) = v39;
  *(a5 + 80) = v25;
  v26 = v36;
  *a5 = v35;
  *(a5 + 16) = v26;
  result = *v43;
  *(a5 + 128) = *v43;
  *(a5 + 141) = *&v43[13];
  return result;
}

unint64_t sub_1000AFBEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_u64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_u64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_u64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_u64(v9.u64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1000AFCA0()
{
  v32 = v0[3];
  v33 = v0[1];
  v28 = v0[7];
  v29 = v0[5];
  v47[0] = *v0;
  v30 = v47[0];
  v1 = *(v47[0] + 16);
  sub_10000E268(v47, &v38, &qword_1005CF358, &qword_1004D2640);

  if (v1)
  {
    v2 = 0;
    v3 = (v30 + 64);
    while (1)
    {
      v4 = v2 + 1;
      v5 = *v3;
      v6 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *(v3 - 3);
      LODWORD(v38) = *(v3 - 8);
      v39 = v8;
      v40 = v6;
      v41 = v7;
      v42 = v5;
      sub_100014CEC(v8, v6);

      v33(&v34, &v38);
      sub_100014D40(v39, v40);

      v9 = v34;
      v10 = v35;
      v11 = v37;
      v12 = v36;
      v43 = v34;
      v44 = v35;
      v46 = v37;
      v45 = v36;
      if (v32(&v43))
      {
        break;
      }

      v3 += 40;
      ++v2;
      if (v1 == v4)
      {
        goto LABEL_5;
      }
    }

    v38 = v9;
    v39 = v10;
    LOWORD(v40) = v12;
    BYTE2(v40) = (v12 | (v11 << 16)) >> 16;
    v29(&v43, &v38);
    LODWORD(v38) = v43;
    v39 = v44;
    LOWORD(v40) = v45;
    BYTE2(v40) = v46;
    result = v28(&v43, &v38);
    v14 = v43;
    if (v1 - 1 != v2)
    {
      v15 = v30 + 64;
      v27 = v30 + 64;
      do
      {
        v31 = v14;
        v16 = (v15 + 40 * v4);
        while (1)
        {
          if (v4 >= v1)
          {
            __break(1u);
LABEL_21:
            __break(1u);
            return result;
          }

          v17 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_21;
          }

          v18 = *v16;
          v19 = *(v16 - 2);
          v20 = *(v16 - 1);
          v21 = *(v16 - 3);
          LODWORD(v38) = *(v16 - 8);
          v39 = v21;
          v40 = v19;
          v41 = v20;
          v42 = v18;
          sub_100014CEC(v21, v19);

          v33(&v34, &v38);
          sub_100014D40(v39, v40);

          v23 = v34;
          v22 = v35;
          v24 = v37;
          v25 = v36;
          v43 = v34;
          v44 = v35;
          v46 = v37;
          v45 = v36;
          result = v32(&v43);
          if (result)
          {
            break;
          }

          ++v4;
          v16 += 40;
          if (v17 == v1)
          {
            v14 = v31;
            goto LABEL_18;
          }
        }

        v38 = v23;
        v39 = v22;
        LOWORD(v40) = v25;
        BYTE2(v40) = (v25 | (v24 << 16)) >> 16;
        v29(&v43, &v38);
        LODWORD(v38) = v43;
        v39 = v44;
        LOWORD(v40) = v45;
        BYTE2(v40) = v46;
        result = v28(&v43, &v38);
        if (v31 <= v43)
        {
          v14 = v43;
        }

        else
        {
          v14 = v31;
        }

        ++v4;
        v15 = v27;
      }

      while (v17 != v1);
    }

LABEL_18:
    v26 = v14;
    sub_100025F40(v47, &qword_1005CF358, &qword_1004D2640);

    return v26;
  }

  else
  {
LABEL_5:
    sub_100025F40(v47, &qword_1005CF358, &qword_1004D2640);

    return 5;
  }
}

uint64_t sub_1000B0058(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100139840(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000B0110(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 24 * v2 + 25;
  v7 = 49;
  v16 = v2 >> 1;
  while (1)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 16);
    if (v3 >= v10)
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_12;
    }

    v19 = *(v1 + v7 - 17);
    v18 = *(v1 + v7 - 9);
    v17 = *(v1 + v7 - 1);
    v11 = *(v1 + v7);
    v12 = *(v1 + v6 - 17);
    v13 = *(v1 + v6 - 9);
    v14 = *(v1 + v6 - 1);
    v15 = *(v1 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10013991C(v1);
      v1 = result;
    }

    v8 = (v1 + v7);
    *(v8 - 17) = v12;
    *(v8 - 9) = v13;
    *(v8 - 1) = v14;
    *v8 = v15;
    v9 = (v1 + v6);
    *(v9 - 17) = v19;
    *(v9 - 9) = v18;
    *(v9 - 1) = v17;
    *v9 = v11;
    v4 = v16;
LABEL_5:
    ++v3;
    --v5;
    v6 -= 24;
    v7 += 24;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void *sub_1000B0290(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v4 = a2;
  v8 = a3;
  v9 = a4;
  sub_1004A6DA4();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = v10[2];

  if (__OFSUB__(v9 >> 1, v8))
  {
    goto LABEL_22;
  }

  if (v11 != (v9 >> 1) - v8)
  {
LABEL_23:
    swift_unknownObjectRelease();
    a3 = v8;
    a4 = v9;
    a2 = v4;
LABEL_2:
    sub_1000B1560(a1, a2, a3, a4);
    v7 = v6;
    goto LABEL_9;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_10;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v12 = v7[2];
  if (v12 >= 2)
  {
    a1 = 0;
    v14 = v12 >> 1;
    v9 = v12 - 1;
    v8 = 24 * v12 + 25;
    v15 = 49;
    v23 = v12 >> 1;
    do
    {
      if (a1 != v9)
      {
        v18 = v7[2];
        if (a1 >= v18)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if (v9 >= v18)
        {
          goto LABEL_21;
        }

        v26 = *(v7 + v15 - 17);
        v25 = *(v7 + v15 - 9);
        v24 = *(v7 + v15 - 1);
        v19 = *(v7 + v15);
        v4 = *(v7 + v8 - 17);
        v20 = *(v7 + v8 - 9);
        v21 = *(v7 + v8 - 1);
        v22 = *(v7 + v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10013991C(v7);
        }

        v16 = v7 + v15;
        *(v16 - 17) = v4;
        *(v16 - 9) = v20;
        *(v16 - 1) = v21;
        *v16 = v22;
        v17 = v7 + v8;
        *(v17 - 17) = v26;
        *(v17 - 9) = v25;
        *(v17 - 1) = v24;
        *v17 = v19;
        v14 = v23;
      }

      ++a1;
      --v9;
      v8 -= 24;
      v15 += 24;
    }

    while (v14 != a1);
  }

  return v7;
}

char *sub_1000B0484(char **a1, uint64_t a2, void *a3)
{
  v5 = a3[1];
  v83 = *a3;
  v6 = a3[2];
  v88 = a3[3];
  v89 = v5;
  v7 = a3[4];
  v84 = a3[5];
  v77 = a3;
  v85 = a3[6];
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v8);
  v80 = &v77 - v9;
  v10 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  __chkstk_darwin(v10);
  v12 = &v77 - v11;
  v82 = a1;
  v13 = *a1;
  sub_10000E268(a2, &v77 - v11, &unk_1005D91B0, &unk_1004CF400);

  v81 = a2;
  v14 = MessageIdentifierSet.startIndex.getter(v8);
  v16 = v15;
  v79 = 0;
  while (v14 != MessageIdentifierSet.endIndex.getter(v8) || v16 != v21)
  {
    MessageIdentifierSet.subscript.getter(v16, v8, &v99);
    MessageIdentifierSet.index(_:offsetBy:)(v14, v16, 1);
    v14 = v17;
    v16 = v18;
    v19 = sub_100067004();
    if (v20)
    {
      v22 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10013ADF0();
        v13 = v99;
      }

      sub_10013D534(v22, v13);
    }
  }

  v86 = v13;
  v24 = &v12[*(v10 + 36)];
  *v24 = v14;
  v24[1] = v16;
  sub_100025F40(v12, &qword_1005CDA38, &unk_1004D14C0);
  v25 = v83;
  v98 = v83;
  v26 = *(v83 + 16);
  sub_10000E268(&v98, &v99, &qword_1005CF358, &qword_1004D2640);
  v27 = v6;

  v90 = v7;

  if (v26)
  {
    v28 = 0;
    v29 = v25 + 64;
    v87 = v8;
    v78 = v25 + 64;
    do
    {
      v30 = (v29 + 40 * v28);
      v31 = v28;
      while (1)
      {
        if (v31 >= v26)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_43;
        }

        v32 = *v30;
        v33 = *(v30 - 2);
        v34 = *(v30 - 1);
        v35 = *(v30 - 3);
        LODWORD(v99) = *(v30 - 8);
        v100 = v35;
        v101 = v33;
        v102 = v34;
        LOBYTE(v103) = v32;
        sub_100014CEC(v35, v33);

        v36 = v27;
        v89(&v91, &v99);
        sub_100014D40(v100, v101);

        v37 = v91;
        v38 = v92;
        v39 = v94;
        v40 = v93;
        v95[0] = v91;
        v95[1] = v92;
        v97 = v94;
        v96 = v93;
        if (v88(v95))
        {
          v99 = v37;
          v100 = v38;
          LOWORD(v101) = v40;
          BYTE2(v101) = (v40 | (v39 << 16)) >> 16;
          v84(v95, &v99);
          v41 = sub_100067004();
          if (v42)
          {
            break;
          }
        }

        ++v31;
        v30 += 40;
        v8 = v87;
        if (v28 == v26)
        {
          goto LABEL_20;
        }
      }

      v43 = v41;
      v44 = v86;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v99 = v44;
      if ((v45 & 1) == 0)
      {
        sub_10013ADF0();
        v44 = v99;
      }

      v86 = v44;
      sub_10013D534(v43, v44);
      v27 = v36;
      v8 = v87;
      v29 = v78;
    }

    while (v28 != v26);
  }

LABEL_20:
  sub_100025F40(&v98, &qword_1005CF358, &qword_1004D2640);
  v46 = v27;

  v47 = v86;
  v48 = *(v86 + 2);
  v49 = _swiftEmptyArrayStorage;
  if (v48 && (v49 = sub_1001354D4(*(v86 + 2), 0), v50 = sub_10013930C(&v99, (v49 + 32), v48, v47), v51 = v99, v78 = v103, , sub_100020D08(v51), v50 != v48))
  {
LABEL_44:
    __break(1u);
  }

  else
  {
    v99 = v49;

    v52 = v79;
    sub_1000B1238(&v99);
    v53 = v81;
    v54 = v80;
    if (!v52)
    {

      v79 = v99;
      type metadata accessor for MessagesPendingDownload(0);
      MessageIdentifierSet.union(_:)(v53, v54);
      v55 = MessageIdentifierSet.startIndex.getter(v8);
      v57 = v56;
      v59 = v55 == MessageIdentifierSet.endIndex.getter(v8) && v57 == v58;
      v60 = v59;
      LODWORD(v78) = v60;
      if (v59)
      {
        sub_100025F40(v54, &unk_1005D91B0, &unk_1004CF400);
        v87 = 0;
      }

      else
      {
        MessageIdentifierSet.subscript.getter(v57, v8, &v99);
        sub_100025F40(v54, &unk_1005D91B0, &unk_1004CF400);
        v87 = v99;
      }

      v99 = v83;
      v100 = v89;
      v101 = v46;
      v102 = v88;
      v103 = v90;
      v104 = v84;
      v105 = v85;
      v106 = sub_1000DB8C8;
      v107 = 0;
      sub_10000E268(&v98, v95, &qword_1005CF358, &qword_1004D2640);

      v61 = sub_1000AFCA0();
      sub_100025F40(&v98, &qword_1005CF358, &qword_1004D2640);

      if (v61 == 5)
      {
        sub_100025F40(&v98, &qword_1005CF358, &qword_1004D2640);
      }

      else
      {
        __chkstk_darwin(v62);
        *(&v77 - 2) = v53;
        *(&v77 - 8) = v61;
        sub_10000E268(&v98, v95, &qword_1005CF358, &qword_1004D2640);

        v95[0] = sub_1000B0DA8(sub_1000B3988);

        sub_1000B10B8(v95);

        sub_100025F40(&v98, &qword_1005CF358, &qword_1004D2640);

        v63 = v95[0];
        v64 = *(v95[0] + 2);
        if (v64)
        {
          v95[0] = _swiftEmptyArrayStorage;
          sub_100091FA8(0, v64, 0);
          v65 = 0;
          v66 = v95[0];
          v67 = *(v95[0] + 2);
          v68 = 24 * v67;
          do
          {
            v69 = *&v63[v65 + 32];
            v70 = *&v63[v65 + 40];
            v71 = v63[v65 + 48];
            v72 = v63[v65 + 49];
            v95[0] = v66;
            v73 = *(v66 + 3);
            v74 = v67 + 1;
            if (v67 >= v73 >> 1)
            {
              sub_100091FA8((v73 > 1), v67 + 1, 1);
              v66 = v95[0];
            }

            *(v66 + 2) = v74;
            v75 = &v66[v68 + v65];
            *(v75 + 8) = v69;
            *(v75 + 5) = v70;
            v75[48] = v71;
            v75[49] = v72;
            v65 += 24;
            v67 = v74;
            --v64;
          }

          while (v64);
          sub_1000B35D0(v82, type metadata accessor for MessagesPendingDownload);

          v53 = v81;
          goto LABEL_41;
        }
      }

      sub_1000B35D0(v82, type metadata accessor for MessagesPendingDownload);

LABEL_41:
      sub_100025F40(v53, &unk_1005D91B0, &unk_1004CF400);
      LOBYTE(v99) = v78;
      return v79;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000B0DA8(uint64_t result)
{
  v3 = v2;
  v30 = result;
  v4 = *v1;
  v34 = v1[3];
  v35 = v1[1];
  v29 = v1[5];
  v54 = v4;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 64;
    v33 = *(v4 + 16);
    v28 = v5 - 1;
    v32 = _swiftEmptyArrayStorage;
    do
    {
      v31 = v3;
      v8 = (v7 + 40 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v6 = v9 + 1;
        v10 = *v8;
        v11 = *(v8 - 2);
        v12 = *(v8 - 1);
        v13 = *(v8 - 3);
        LODWORD(v40) = *(v8 - 8);
        v41 = v13;
        v42 = v11;
        v43 = v12;
        v44 = v10;
        sub_100014CEC(v13, v11);

        v35(&v36, &v40);
        sub_100014D40(v41, v42);

        v14 = v36;
        v15 = v37;
        v16 = v39;
        v17 = v38;
        v45 = v36;
        v46 = v37;
        v48 = v39;
        v47 = v38;
        result = v34(&v45);
        if (result)
        {
          break;
        }

        v8 += 40;
        ++v9;
        if (v33 == v6)
        {
          goto LABEL_18;
        }
      }

      v40 = v14;
      v41 = v15;
      LOWORD(v42) = v17;
      BYTE2(v42) = (v17 | (v16 << 16)) >> 16;
      v29(&v45, &v40);
      v18 = v45;
      v19 = v46;
      v20 = v47;
      v21 = HIBYTE(v47);
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v27 = v48;
      v52 = v48;
      result = v30(&v49);
      v3 = v31;
      if (v31)
      {
        sub_100025F40(&v54, &qword_1005CF358, &qword_1004D2640);

        goto LABEL_19;
      }

      if (result)
      {
        v22 = v32;
        result = swift_isUniquelyReferenced_nonNull_native();
        v53 = v32;
        if ((result & 1) == 0)
        {
          result = sub_100092048(0, v32[2] + 1, 1);
          v22 = v53;
        }

        v24 = v22[2];
        v23 = v22[3];
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          result = sub_100092048((v23 > 1), v24 + 1, 1);
          v25 = v24 + 1;
          v22 = v53;
        }

        v22[2] = v25;
        v32 = v22;
        v26 = &v22[3 * v24];
        *(v26 + 8) = v18;
        v26[5] = v19;
        *(v26 + 48) = v20;
        *(v26 + 49) = v21;
        *(v26 + 50) = v27;
        v3 = v31;
      }

      v7 = v4 + 64;
    }

    while (v28 != v9);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

LABEL_18:
  sub_100025F40(&v54, &qword_1005CF358, &qword_1004D2640);

LABEL_19:

  return v32;
}

Swift::Int sub_1000B10B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100141A8C(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (v14 >= *(v12 - 2))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = v12[33];
          result = v12[34];
          *v13 = *(v12 - 8);
          v18 = *(v12 + 1);
          *(v12 - 2) = v14;
          *v12 = v15;
          v12[8] = v16;
          v12[9] = v17;
          v12[10] = result;
          v12 -= 24;
          *(v13 + 2) = v18;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10000C9C0(&qword_1005CF360, &qword_1004D2648);
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v20[0] = v7 + 4;
    v20[1] = v6;
    sub_1000B2124(v20, v21, v22, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_1000B1238(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100141AC4(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (v14 >= *(v12 - 2))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = v12[33];
          *v13 = *(v12 - 8);
          v18 = *(v12 + 1);
          *(v12 - 2) = v14;
          *v12 = v15;
          v12[8] = v16;
          v12[9] = v17;
          v12 -= 24;
          *(v13 + 2) = v18;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v20[0] = v7 + 4;
    v20[1] = v6;
    sub_1000B2710(v20, v21, v22, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1000B13C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      v10 = _swiftEmptyArrayStorage;
      if (v6 != a3)
      {
LABEL_7:
        memcpy(v10 + 4, (a2 + 4 * a3), 4 * v7);
        return;
      }
    }

    else
    {
      sub_10000C9C0(a5, a6);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v12 = v11 - 32;
      if (v11 < 32)
      {
        v12 = v11 - 29;
      }

      v10[2] = v7;
      v10[3] = 2 * (v12 >> 2);
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1000B1490(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1000B1560(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10000C9C0(&qword_1005CEF00, &qword_1004D1DD0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + 24 * a3), 24 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_1000B1644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = sub_100135428(*(a3 + 16), 0);
  v8 = sub_100139428(&v10, v7 + 32, v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v7;
}

void *sub_1000B1710(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
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

    v8 = sub_1000B3C78(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_1000B17A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      sub_10000C9C0(&qword_1005CF690, &qword_1004D2888);
      v8 = sub_1004A6A74();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      v32 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(v4 + 56);
        v18 = *(v4 + 48) + 16 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v33 = *(v17 + v16);
        sub_1004A6E94();
        sub_1004A6EB4(v20 | (v20 << 32));
        v21 = sub_1004A6F14();
        v22 = -1 << *(v9 + 32);
        v23 = v21 & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
        {
          v26 = 0;
          v27 = (63 - v22) >> 6;
          while (++v24 != v27 || (v26 & 1) == 0)
          {
            v28 = v24 == v27;
            if (v24 == v27)
            {
              v24 = 0;
            }

            v26 |= v28;
            v29 = *(v12 + 8 * v24);
            if (v29 != -1)
            {
              v25 = __clz(__rbit64(~v29)) + (v24 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v9 + 48) + 16 * v25;
        *v30 = v19;
        *(v30 + 8) = v20;
        *(*(v9 + 56) + v25) = v33;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        v4 = v32;
        if (!v5)
        {
          return;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

uint64_t sub_1000B19E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000C9C0(&qword_1005CF698, qword_1004D2890);
  result = sub_1004A6A74();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v39 = v4;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(v4 + 56);
      v18 = *(v4 + 48) + 16 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = (v17 + 72 * v16);
      v22 = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v45 = *(v21 + 32);
      v43 = v23;
      v44 = v24;
      v41 = *v21;
      v42 = v22;
      sub_1004A6E94();
      sub_1004A6EB4(v20 | (v20 << 32));
      result = sub_1004A6F14();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        break;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = *(v9 + 48) + 16 * v28;
      *v33 = v19;
      *(v33 + 8) = v20;
      v34 = *(v9 + 56) + 72 * v28;
      *v34 = v41;
      v35 = v42;
      v36 = v43;
      v37 = v44;
      *(v34 + 64) = v45;
      *(v34 + 32) = v36;
      *(v34 + 48) = v37;
      *(v34 + 16) = v35;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        sub_100063BD4(&v41, v40);
        return v9;
      }

      result = sub_100063BD4(&v41, v40);
      v4 = v39;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v29 = 0;
    v30 = (63 - v25) >> 6;
    while (++v27 != v30 || (v29 & 1) == 0)
    {
      v31 = v27 == v30;
      if (v27 == v30)
      {
        v27 = 0;
      }

      v29 |= v31;
      v32 = *(v12 + 8 * v27);
      if (v32 != -1)
      {
        v28 = __clz(__rbit64(~v32)) + (v27 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1000B1C78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000C9C0(&qword_1005CF3F8, &qword_1004D26D0);
  result = sub_1004A6A74();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    v18 = *(v4 + 56) + 24 * v16;
    v32 = *v18;
    v31 = *(v18 + 8);
    v29 = *(v18 + 17);
    v30 = *(v18 + 16);
    sub_1004A6E94();
    sub_1004A6EE4(v17);
    result = sub_1004A6F14();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 4 * v22) = v17;
    v27 = *(v9 + 56) + 24 * v22;
    *v27 = v32;
    *(v27 + 8) = v31;
    *(v27 + 16) = v30;
    *(v27 + 17) = v29;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1000B1ED0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      sub_10000C9C0(&qword_1005CF520, &unk_1004D2790);
      v8 = sub_1004A6A74();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      v31 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(*(v4 + 48) + 4 * v16);
        v18 = *(v4 + 56) + 24 * v16;
        v19 = *(v18 + 8);
        v32 = *(v18 + 16);
        v33 = *v18;
        sub_1004A6E94();
        sub_1004A6EE4(v17);
        v20 = sub_1004A6F14();
        v21 = -1 << *(v9 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          v25 = 0;
          v26 = (63 - v21) >> 6;
          while (++v23 != v26 || (v25 & 1) == 0)
          {
            v27 = v23 == v26;
            if (v23 == v26)
            {
              v23 = 0;
            }

            v25 |= v27;
            v28 = *(v12 + 8 * v23);
            if (v28 != -1)
            {
              v24 = __clz(__rbit64(~v28)) + (v23 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v9 + 48) + 4 * v24) = v17;
        v29 = *(v9 + 56) + 24 * v24;
        *v29 = v33;
        *(v29 + 8) = v19;
        *(v29 + 16) = v32;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        v4 = v31;
        if (!v5)
        {
          return;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

uint64_t sub_1000B2124(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v98 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v8);
      v8 = result;
    }

    v90 = v8 + 2;
    v91 = v8[2];
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v8[2 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_1000B2CEC((*a3 + 24 * *v92), (*a3 + 24 * *v94), *a3 + 24 * v95, v99);
        if (v5)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_114;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_115;
        }

        *v92 = v93;
        v92[1] = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_116;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v97 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 24 * v7);
      v11 = (*a3 + 24 * v9);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[6];
        v13 += 6;
        ++v15;
        if (v10 < v12 == v17 >= v16)
        {
          v7 = v15 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 24 * v7 - 8;
        v19 = 24 * v9 + 18;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v19);
            v23 = *(v29 + v19 - 18);
            v24 = v29 + v18;
            v25 = *(v22 - 10);
            v26 = *(v22 - 2);
            v27 = *(v22 - 1);
            v28 = *v22;
            result = *v24;
            *(v22 - 18) = *(v24 - 16);
            *(v22 - 2) = result;
            *(v24 - 16) = v23;
            *(v24 - 8) = v25;
            *v24 = v26;
            *(v24 + 1) = v27;
            *(v24 + 2) = v28;
          }

          ++v21;
          v18 -= 24;
          v19 += 24;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v43 = v8[2];
    v42 = v8[3];
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_100085288((v42 > 1), v43 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v44;
    v45 = v8 + 4;
    v46 = &v8[2 * v43 + 4];
    *v46 = v9;
    v46[1] = v7;
    v99 = *v98;
    if (!*v98)
    {
      goto LABEL_127;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = v8[4];
          v49 = v8[5];
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_57:
          if (v51)
          {
            goto LABEL_104;
          }

          v64 = &v8[2 * v44];
          v66 = *v64;
          v65 = v64[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_106;
          }

          v70 = &v45[2 * v47];
          v72 = *v70;
          v71 = v70[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_111;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v44 < 2)
        {
          goto LABEL_112;
        }

        v74 = &v8[2 * v44];
        v76 = *v74;
        v75 = v74[1];
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_72:
        if (v69)
        {
          goto LABEL_108;
        }

        v77 = &v45[2 * v47];
        v79 = *v77;
        v78 = v77[1];
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_110;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v85 = &v45[2 * v47 - 2];
        v86 = *v85;
        v87 = &v45[2 * v47];
        v88 = v87[1];
        sub_1000B2CEC((*a3 + 24 * *v85), (*a3 + 24 * *v87), *a3 + 24 * v88, v99);
        if (v5)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_99;
        }

        if (v47 > v8[2])
        {
          goto LABEL_100;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = v8[2];
        if (v47 >= v89)
        {
          goto LABEL_101;
        }

        v44 = v89 - 1;
        result = memmove(&v45[2 * v47], v87 + 2, 16 * (v89 - 1 - v47));
        v8[2] = v89 - 1;
        if (v89 <= 2)
        {
          goto LABEL_3;
        }
      }

      v52 = &v45[2 * v44];
      v53 = *(v52 - 8);
      v54 = *(v52 - 7);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_102;
      }

      v57 = *(v52 - 6);
      v56 = *(v52 - 5);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_103;
      }

      v59 = &v8[2 * v44];
      v61 = *v59;
      v60 = v59[1];
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_105;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_107;
      }

      if (v63 >= v55)
      {
        v81 = &v45[2 * v47];
        v83 = *v81;
        v82 = v81[1];
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v97;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 24 * v7 - 24;
  v32 = v9 - v7;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = v34 + 24;
    v36 = *(v34 + 24);
    if (v36 >= *v34)
    {
LABEL_29:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 41);
    result = *(v34 + 42);
    *v35 = *v34;
    v40 = *(v34 + 16);
    *v34 = v36;
    *(v34 + 8) = v37;
    *(v34 + 16) = v38;
    *(v34 + 17) = v39;
    *(v34 + 18) = result;
    v34 -= 24;
    *(v35 + 16) = v40;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}