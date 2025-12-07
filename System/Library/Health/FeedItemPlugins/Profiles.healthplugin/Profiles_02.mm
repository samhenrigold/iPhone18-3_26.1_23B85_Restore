uint64_t sub_29E4C9E68()
{
  v1 = *(v0 + 120);

  sub_29E4CF1C4(v1, MEMORY[0x29EDC16F8]);
  sub_29E4A1754((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29E4C9F20()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_29E4CA034;
  }

  else
  {
    v2 = sub_29E4D093C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E4CA034()
{
  v1 = *(v0 + 120);

  sub_29E4CF1C4(v1, MEMORY[0x29EDC16F8]);
  sub_29E4A1754((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29E4CA0EC()
{
  v1 = *(v0 + 120);

  sub_29E4CF1C4(v1, MEMORY[0x29EDC16F8]);
  sub_29E4A1754((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29E4CA1A4()
{
  v1 = *(v0 + 120);

  sub_29E4CF1C4(v1, MEMORY[0x29EDC16F8]);
  sub_29E4A1754((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29E4CA25C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E4FB7F0();
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[4];
  if ((sub_29E4F5204(v7) & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_29E4CF224(a1, v6, MEMORY[0x29EDC16F8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = 1;
  if (((1 << EnumCaseMultiPayload) & 0x29) == 0)
  {
    if (((1 << EnumCaseMultiPayload) & 0x12) == 0)
    {
      v10 = sub_29E4FB1E0();
      (*(*(v10 - 8) + 8))(v6, v10);
    }

    v11 = [v7 profileIdentifier];
    v12 = sub_29E4F57F0(v11, v2 + 5);

    if (v12)
    {
      v13 = sub_29E4A1710(v2 + 10, v2[13]);
      v9 = sub_29E4CE100(*v13, a1) ^ 1;
      return v9 & 1;
    }

LABEL_7:
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_29E4CA3D0(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = sub_29E4FC3C0();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = sub_29E4FB7F0();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  sub_29E4D018C(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_29E4FB390();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v5 = sub_29E4FB320();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v6 = sub_29E4FB460();
  v2[48] = v6;
  v2[49] = *(v6 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E4CA690, 0, 0);
}

uint64_t sub_29E4CA690()
{
  sub_29E4FAF70();
  swift_allocObject();
  sub_29E4FAF60();
  sub_29E4CD7AC(&qword_2A1A705F0, 255, MEMORY[0x29EDC16F8], MEMORY[0x29EDC1700]);
  v1 = sub_29E4FAF50();
  *(v0 + 448) = v1;
  *(v0 + 456) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 368);
  v6 = *(v0 + 376);
  v7 = *(v0 + 256);

  v8 = [*(v7 + 32) profileIdentifier];
  *(v0 + 464) = v8;
  sub_29E4FB7D0();
  *(v0 + 472) = type metadata accessor for CloudSyncTileViewController(0);

  sub_29E4FB360();
  *(v0 + 560) = *MEMORY[0x29EDC36F8];
  v9 = *(v5 + 104);
  *(v0 + 480) = v9;
  *(v0 + 488) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v6);
  v10 = v8;
  sub_29E4C7648(v3, v4);
  v10;
  sub_29E4C7648(v3, v4);
  sub_29E4FB3E0();
  v11 = sub_29E4FC7B0();
  v12 = HKUIJoinStringsForAutomationIdentifier();

  if (v12)
  {
    sub_29E4FC6F0();
  }

  v13 = *(v0 + 344);
  v14 = *(v0 + 352);
  v15 = *(v0 + 336);
  sub_29E4FB400();
  v16 = *MEMORY[0x29EDC3808];
  v17 = *(v13 + 104);
  *(v0 + 496) = v17;
  *(v0 + 504) = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v17(v14, v16, v15);
  sub_29E4FB3A0();
  swift_getObjectType();
  sub_29E4CD7AC(&qword_2A1A70220, v18, type metadata accessor for CloudSyncExecutor, &unk_29E500020);
  sub_29E4FB310();
  v20 = *(v0 + 40);
  v19 = *(v0 + 48);
  sub_29E4A1710((v0 + 16), v20);
  v21 = sub_29E4FB4C0();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  *(v0 + 512) = v21;
  *(v0 + 520) = v23;
  *(v0 + 528) = v25;
  *(v0 + 564) = v27;
  v28 = swift_task_alloc();
  *(v0 + 536) = v28;
  *v28 = v0;
  v28[1] = sub_29E4CAB78;

  return MEMORY[0x2A1C64D88](v21, v23, v25, v27, v20, v19);
}

uint64_t sub_29E4CAB78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[68] = a1;
  v4[69] = v1;

  v5 = *(v4 + 564);
  v6 = v3[66];
  v7 = v3[65];
  v8 = v3[64];
  if (v1)
  {
    v9 = v4[57];
    v10 = v4[58];
    v11 = v4[56];
    sub_29E4CDBC4(v8, v7, v6, v5);

    sub_29E4A1B94(v11, v9);
    v12 = sub_29E4CB91C;
  }

  else
  {
    sub_29E4CDBC4(v8, v7, v6, v5);
    v12 = sub_29E4CAD00;
  }

  return MEMORY[0x2A1C73D48](v12, 0, 0);
}

uint64_t sub_29E4CAD00()
{
  v1 = *(v0 + 544);
  if (*(v1 + 16))
  {
    (*(*(v0 + 392) + 16))(*(v0 + 328), v1 + ((*(*(v0 + 392) + 80) + 32) & ~*(*(v0 + 392) + 80)), *(v0 + 384));
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 328);
  v6 = *(v0 + 312);
  v7 = *(v0 + 248);

  (*(v4 + 56))(v5, v2, 1, v3);
  sub_29E4CF224(v7, v6, MEMORY[0x29EDC16F8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x2B) == 0 && EnumCaseMultiPayload == 2)
  {
    v9 = *(v0 + 312);
    v10 = sub_29E4FB1E0();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  v11 = *(v0 + 384);
  v12 = *(v0 + 392);
  v13 = *(v0 + 320);
  sub_29E4CDFFC(*(v0 + 328), v13);
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_29E4CE090(*(v0 + 320), &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    v14 = 0;
    v15 = 0xF000000000000000;
    goto LABEL_10;
  }

  v16 = *(v0 + 384);
  v17 = *(v0 + 392);
  v18 = *(v0 + 320);
  v14 = sub_29E4FB450();
  v15 = v19;
  (*(v17 + 8))(v18, v16);
  if (v15 >> 60 == 15)
  {
LABEL_10:
    v20 = *(v0 + 456);
    if (v20 >> 60 == 15)
    {
      sub_29E4C7648(*(v0 + 448), *(v0 + 456));
      sub_29E4A1B80(v14, v15);
LABEL_12:
      sub_29E4FC390();
      v21 = sub_29E4FC3B0();
      v22 = sub_29E4FC940();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_29E494000, v21, v22, "User data is same as previous feed item, evaluate if should show in summaryFeed", v23, 2u);
        MEMORY[0x29ED8BDB0](v23, -1, -1);
      }

      v24 = *(v0 + 288);
      v25 = *(v0 + 264);
      v26 = *(v0 + 272);
      v27 = *(v0 + 256);

      (*(v26 + 8))(v24, v25);
      swift_beginAccess();
      sub_29E4A76F0(v27 + 120, v0 + 96);
      sub_29E4A1710((v0 + 96), *(v0 + 120));
      sub_29E4E86CC();
      sub_29E4A1754((v0 + 96));
      sub_29E4A76F0(v27 + 120, v0 + 136);
      sub_29E4A1710((v0 + 136), *(v0 + 160));
      sub_29E4E86CC();
      sub_29E4A1754((v0 + 136));
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v20 = *(v0 + 456);
  if (v20 >> 60 == 15)
  {
LABEL_16:
    v28 = *(v0 + 448);
    sub_29E4C7648(v28, v20);
    sub_29E4A1B80(v14, v15);
    sub_29E4A1B80(v28, v20);
    goto LABEL_17;
  }

  v88 = *(v0 + 448);
  sub_29E4C7648(v88, *(v0 + 456));
  sub_29E4C7648(v88, v20);
  sub_29E4CF1B0(v14, v15);
  v89 = sub_29E4CF048(v14, v15, v88, v20);
  sub_29E4A1B80(v88, v20);
  sub_29E4A1B94(v88, v20);
  sub_29E4A1B80(v14, v15);
  sub_29E4A1B80(v14, v15);
  if (v89)
  {
    goto LABEL_12;
  }

LABEL_17:
  sub_29E4FC390();
  v29 = sub_29E4FC3B0();
  v30 = sub_29E4FC940();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_29E494000, v29, v30, "User data is different or no previous feed item, reset backoff algorithm, show in summaryFeed", v31, 2u);
    MEMORY[0x29ED8BDB0](v31, -1, -1);
  }

  v33 = *(v0 + 272);
  v32 = *(v0 + 280);
  v35 = *(v0 + 256);
  v34 = *(v0 + 264);

  (*(v33 + 8))(v32, v34);
  swift_beginAccess();
  v36 = *(v35 + 144);
  v37 = *(v35 + 152);
  sub_29E4A9F54(v35 + 120, v36);
  (*(v37 + 40))(v36, v37);
  swift_endAccess();
LABEL_20:
  v39 = *(v0 + 432);
  v38 = *(v0 + 440);
  v40 = *(v0 + 384);
  v41 = *(v0 + 392);
  sub_29E4FB3B0();
  sub_29E4F557C();
  v111 = *(v41 + 16);
  v111(v39, v38, v40);
  v42 = sub_29E4A7D34(0, 1, 1, MEMORY[0x29EDCA190]);
  v44 = *(v42 + 2);
  v43 = *(v42 + 3);
  if (v44 >= v43 >> 1)
  {
    v42 = sub_29E4A7D34((v43 > 1), v44 + 1, 1, v42);
  }

  v45 = *(v0 + 432);
  v46 = *(v0 + 384);
  v47 = *(v0 + 392);
  v48 = *(v0 + 304);
  v49 = *(v0 + 248);
  *(v42 + 2) = v44 + 1;
  v51 = *(v47 + 32);
  v47 += 32;
  v50 = v51;
  v52 = (*(v47 + 48) + 32) & ~*(v47 + 48);
  v113 = v42;
  v53 = *(v47 + 40);
  v51(&v42[v52 + v53 * v44], v45, v46);
  swift_storeEnumTagMultiPayload();
  v54 = MEMORY[0x29ED89DF0](v49, v48);
  sub_29E4CF1C4(v48, MEMORY[0x29EDC16F8]);
  if (v54 & 1) != 0 || (v55 = *(v0 + 304), v56 = *(v0 + 248), *v55 = 0, swift_storeEnumTagMultiPayload(), LOBYTE(v56) = MEMORY[0x29ED89DF0](v56, v55), sub_29E4CF1C4(v55, MEMORY[0x29EDC16F8]), (v56))
  {
    v108 = v53;
    v109 = v52;
    v110 = v50;
    v105 = *(v0 + 480);
    v57 = *(v0 + 560);
    v58 = *(v0 + 376);
    v59 = *(v0 + 360);
    sub_29E4FB7D0();

    MEMORY[0x29ED8AD70](0x697373696D736944, 0xEB00000000656C62);

    type metadata accessor for DismissibleCloudSyncTileViewController(0);
    sub_29E4FB360();
    v105(v58, v57, v59);
    sub_29E4FB3E0();
    v60 = sub_29E4FC7B0();
    v61 = HKUIJoinStringsForAutomationIdentifier();

    if (v61)
    {
      sub_29E4FC6F0();
    }

    v62 = *(v0 + 496);
    v64 = *(v0 + 416);
    v63 = *(v0 + 424);
    v107 = *(v0 + 384);
    v65 = *(v0 + 352);
    v66 = *(v0 + 336);
    v67 = *(v0 + 256);
    sub_29E4FB400();
    v62(v65, *MEMORY[0x29EDC3800], v66);
    sub_29E4FB3A0();
    swift_beginAccess();
    sub_29E4A76F0(v67 + 120, v0 + 56);
    sub_29E4A1710((v0 + 56), *(v0 + 80));
    sub_29E4E86CC();
    sub_29E4A1754((v0 + 56));
    sub_29E4FB3B0();
    v111(v64, v63, v107);
    v69 = *(v113 + 2);
    v68 = *(v113 + 3);
    v112 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v113 = sub_29E4A7D34((v68 > 1), v69 + 1, 1, v113);
    }

    v71 = *(v0 + 456);
    v70 = *(v0 + 464);
    v73 = *(v0 + 440);
    v72 = *(v0 + 448);
    v75 = *(v0 + 416);
    v74 = *(v0 + 424);
LABEL_29:
    v77 = *(v0 + 384);
    v76 = *(v0 + 392);
    v78 = *(v0 + 328);

    sub_29E4A1B94(v72, v71);
    v79 = *(v76 + 8);
    v79(v74, v77);
    sub_29E4CE090(v78, &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    v79(v73, v77);
    *(v113 + 2) = v112;
    v110(&v113[v109 + v69 * v108], v75, v77);
    goto LABEL_30;
  }

  v82 = *(v0 + 304);
  v83 = *(v0 + 248);
  *v82 = 1;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v83) = MEMORY[0x29ED89DF0](v83, v82);
  sub_29E4CF1C4(v82, MEMORY[0x29EDC16F8]);
  if (v83)
  {
    v108 = v53;
    v109 = v52;
    v110 = v50;
    v106 = *(v0 + 480);
    v104 = *(v0 + 560);
    v84 = *(v0 + 376);
    v85 = *(v0 + 360);
    sub_29E4FB7D0();

    MEMORY[0x29ED8AD70](0x656574616E614D2ELL, 0xE800000000000000);

    sub_29E4FB360();
    v106(v84, v104, v85);
    sub_29E4FB3E0();
    sub_29E4FB440();
    v86 = sub_29E4FC7B0();
    v87 = HKUIJoinStringsForAutomationIdentifier();

    if (v87)
    {
      sub_29E4FC6F0();
    }

    v97 = *(v0 + 496);
    v99 = *(v0 + 400);
    v98 = *(v0 + 408);
    v100 = *(v0 + 384);
    v101 = *(v0 + 352);
    v102 = *(v0 + 336);
    sub_29E4FB400();
    v97(v101, *MEMORY[0x29EDC3800], v102);
    sub_29E4FB3A0();
    sub_29E4FB3B0();
    v111(v99, v98, v100);
    v69 = *(v113 + 2);
    v103 = *(v113 + 3);
    v112 = v69 + 1;
    if (v69 >= v103 >> 1)
    {
      v113 = sub_29E4A7D34((v103 > 1), v69 + 1, 1, v113);
    }

    v71 = *(v0 + 456);
    v70 = *(v0 + 464);
    v73 = *(v0 + 440);
    v72 = *(v0 + 448);
    v75 = *(v0 + 400);
    v74 = *(v0 + 408);
    goto LABEL_29;
  }

  v90 = *(v0 + 456);
  v91 = *(v0 + 464);
  v93 = *(v0 + 440);
  v92 = *(v0 + 448);
  v94 = *(v0 + 384);
  v95 = *(v0 + 392);
  v96 = *(v0 + 328);

  sub_29E4A1B94(v92, v90);
  sub_29E4A1B94(v92, v90);
  sub_29E4CE090(v96, &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
  (*(v95 + 8))(v93, v94);
LABEL_30:
  sub_29E4A1754((v0 + 16));

  v80 = *(v0 + 8);

  return v80(v113);
}

uint64_t sub_29E4CB91C()
{
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 384);
  v5 = *(v0 + 392);

  sub_29E4A1B94(v2, v1);
  (*(v5 + 8))(v3, v4);
  sub_29E4A1754((v0 + 16));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_29E4CBA70()
{
  swift_unknownObjectRelease();

  sub_29E4A1754((v0 + 40));
  sub_29E4A1754((v0 + 80));
  sub_29E4A1754((v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t sub_29E4CBAEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29E49D938;

  return sub_29E4C7D28(a1);
}

uint64_t sub_29E4CBB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E4CD7AC(qword_2A1A70228, a2, type metadata accessor for CloudSyncExecutor, &unk_29E500070);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

uint64_t sub_29E4CBC3C()
{
  v1 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E4FC110();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E4D018C(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v24[-2] - v4;
  sub_29E4D018C(0, &qword_2A1A6F0C0, sub_29E4D01F0, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  v23 = xmmword_29E4FDE40;
  *(v6 + 16) = xmmword_29E4FDE40;
  *(v6 + 56) = sub_29E4FB630();
  *(v6 + 64) = sub_29E4CD7AC(&qword_2A1A70640, 255, MEMORY[0x29EDC3B40], MEMORY[0x29EDC3B38]);
  sub_29E4A197C((v6 + 32));
  sub_29E4FB620();
  v7 = [*(v0 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_profileIdentifier) type];
  if (v7 <= 4 && ((1 << v7) & 0x16) != 0 || v7 == 100)
  {
    v8 = *(v0 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_appFirstLaunchDateProvider + 24);
    v9 = *(v0 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_appFirstLaunchDateProvider + 32);
    sub_29E4A1710((v0 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_appFirstLaunchDateProvider), v8);
    (*(v9 + 8))(v8, v9);
    v10 = sub_29E4FB1E0();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v5, 1, v10) == 1)
    {
      sub_29E4CE090(v5, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
      CFAbsoluteTimeGetCurrent();
    }

    else
    {
      sub_29E4FB170();
      (*(v11 + 8))(v5, v10);
    }

    v25 = sub_29E4FC270();
    v26 = sub_29E4CD7AC(&qword_2A1A704A8, 255, MEMORY[0x29EDC3588], MEMORY[0x29EDC3580]);
    sub_29E4A197C(v24);
    sub_29E4FC260();
    v27 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      v27 = sub_29E4A7D68((v12 > 1), v13 + 1, 1, v6);
    }

    v14 = v25;
    v15 = v26;
    v16 = sub_29E4A9F54(v24, v25);
    MEMORY[0x2A1C7C4A8](v16);
    v18 = &v24[-2] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18);
    sub_29E4CEEF8(v13, v18, &v27, v14, v15);
    sub_29E4A1754(v24);
  }

  sub_29E4D0254();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29E4FFE90;
  sub_29E4FC100();
  sub_29E4FC140();
  swift_allocObject();
  *(v20 + 32) = sub_29E4FC120();
  sub_29E4FC100();
  v21 = swift_allocObject();
  *(v21 + 16) = v23;
  *(v21 + 56) = sub_29E4FC2E0();
  *(v21 + 64) = sub_29E4CD7AC(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0], MEMORY[0x29EDC35B8]);
  sub_29E4A197C((v21 + 32));
  sub_29E4FC2F0();
  sub_29E4FC2D0();
  swift_allocObject();
  *(v20 + 40) = sub_29E4FC120();
  return v20;
}

uint64_t sub_29E4CC22C(void *a1)
{
  v2 = MEMORY[0x29EDC9E88];
  sub_29E4CF500(0, &qword_2A184B848, sub_29E4CF28C, &type metadata for CloudSyncExecutor.Planner.ChangeType.DeleteFeedItemsCodingKeys, MEMORY[0x29EDC9E88]);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v32 = &v28 - v4;
  sub_29E4CF500(0, &qword_2A184B850, sub_29E4CF2E0, &type metadata for CloudSyncExecutor.Planner.ChangeType.UpdateAlgorithmCodingKeys, v2);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v29 = &v28 - v6;
  sub_29E4CF500(0, &qword_2A184B858, sub_29E4CF334, &type metadata for CloudSyncExecutor.Planner.ChangeType.UpdateStateCodingKeys, v2);
  v31 = v7;
  v28 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v37 = &v28 - v8;
  v30 = sub_29E4FB660();
  v38 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CloudSyncExecutor.Planner.ChangeType(0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4CF500(0, &qword_2A184B860, sub_29E4CF388, &type metadata for CloudSyncExecutor.Planner.ChangeType.CodingKeys, v2);
  v40 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v28 - v16;
  sub_29E4A1710(a1, a1[3]);
  sub_29E4CF388();
  sub_29E4FD080();
  sub_29E4CF224(v39, v13, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v22 = v28;
    v23 = v30;
    (*(v38 + 32))(v10, v13, v30);
    v41 = 0;
    sub_29E4CF334();
    v20 = v40;
    sub_29E4FCEF0();
    sub_29E4CD7AC(&qword_2A184B868, 255, MEMORY[0x29EDC3B48], MEMORY[0x29EDC3B50]);
    v24 = v31;
    sub_29E4FCF50();
    (*(v22 + 8))(v37, v24);
    (*(v38 + 8))(v10, v23);
    return (*(v15 + 8))(v17, v20);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v42 = 1;
    sub_29E4CF2E0();
    v19 = v29;
    v20 = v40;
    sub_29E4FCEF0();
    v21 = v34;
    sub_29E4FCF40();
    (*(v33 + 8))(v19, v21);
    return (*(v15 + 8))(v17, v20);
  }

  v43 = 2;
  sub_29E4CF28C();
  v26 = v32;
  v27 = v40;
  sub_29E4FCEF0();
  (*(v35 + 8))(v26, v36);
  return (*(v15 + 8))(v17, v27);
}

uint64_t sub_29E4CC81C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = MEMORY[0x29EDC9E80];
  sub_29E4CF500(0, &qword_2A184B7F0, sub_29E4CF28C, &type metadata for CloudSyncExecutor.Planner.ChangeType.DeleteFeedItemsCodingKeys, MEMORY[0x29EDC9E80]);
  v67 = v4;
  v62 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v68 = &v57 - v5;
  sub_29E4CF500(0, &qword_2A184B800, sub_29E4CF2E0, &type metadata for CloudSyncExecutor.Planner.ChangeType.UpdateAlgorithmCodingKeys, v3);
  v7 = *(v6 - 8);
  v65 = v6;
  v66 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v71 = &v57 - v8;
  sub_29E4CF500(0, &qword_2A184B810, sub_29E4CF334, &type metadata for CloudSyncExecutor.Planner.ChangeType.UpdateStateCodingKeys, v3);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v70 = &v57 - v10;
  sub_29E4CF500(0, &qword_2A184B820, sub_29E4CF388, &type metadata for CloudSyncExecutor.Planner.ChangeType.CodingKeys, v3);
  v69 = v11;
  v73 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v57 - v12;
  v14 = type metadata accessor for CloudSyncExecutor.Planner.ChangeType(0);
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v20 = &v57 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v57 - v21;
  sub_29E4A1710(a1, a1[3]);
  sub_29E4CF388();
  v23 = v74;
  sub_29E4FD070();
  if (v23)
  {
    goto LABEL_14;
  }

  v58 = v17;
  v59 = v20;
  v25 = v70;
  v24 = v71;
  v60 = v22;
  v61 = v14;
  v26 = v72;
  v74 = a1;
  v27 = v69;
  v28 = v13;
  v29 = sub_29E4FCEE0();
  v30 = v29;
  v31 = *(v29 + 16);
  if (!v31 || ((v32 = *(v29 + 32), v31 == 1) ? (v33 = v32 == 3) : (v33 = 1), v33))
  {
    v34 = v27;
    v35 = sub_29E4FCDB0();
    swift_allocError();
    v37 = v36;
    sub_29E4CF3DC(0);
    *v37 = v61;
    sub_29E4FCE70();
    sub_29E4FCD90();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x29EDC9DB8], v35);
    swift_willThrow();
    (*(v73 + 8))(v28, v34);
    swift_unknownObjectRelease();
    a1 = v74;
LABEL_14:
    v47 = a1;
    return sub_29E4A1754(v47);
  }

  if (*(v29 + 32))
  {
    v38 = v28;
    if (v32 == 1)
    {
      v76 = 1;
      sub_29E4CF2E0();
      v39 = v24;
      sub_29E4FCE60();
      v40 = v73;
      v70 = v30;
      v41 = v27;
      v42 = v65;
      v53 = sub_29E4FCEC0();
      (*(v66 + 8))(v39, v42);
      (*(v40 + 8))(v38, v41);
      swift_unknownObjectRelease();
      v54 = v53 & 1;
      v55 = v58;
      *v58 = v54;
      swift_storeEnumTagMultiPayload();
      v56 = v60;
      sub_29E4CF498(v55, v60, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
    }

    else
    {
      v77 = 2;
      sub_29E4CF28C();
      v45 = v68;
      sub_29E4FCE60();
      v46 = v73;
      (*(v62 + 8))(v45, v67);
      (*(v46 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v56 = v60;
      swift_storeEnumTagMultiPayload();
    }

    v49 = v26;
  }

  else
  {
    v75 = 0;
    sub_29E4CF334();
    v43 = v28;
    sub_29E4FCE60();
    v44 = v27;
    v49 = v26;
    v50 = v44;
    sub_29E4FB660();
    sub_29E4CD7AC(&qword_2A184B840, 255, MEMORY[0x29EDC3B48], MEMORY[0x29EDC3B58]);
    v51 = v59;
    v52 = v64;
    sub_29E4FCED0();
    (*(v63 + 8))(v25, v52);
    (*(v73 + 8))(v43, v50);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v56 = v60;
    sub_29E4CF498(v51, v60, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
  }

  sub_29E4CF498(v56, v49, type metadata accessor for CloudSyncExecutor.Planner.ChangeType);
  v47 = v74;
  return sub_29E4A1754(v47);
}

uint64_t sub_29E4CD098()
{
  v1 = 0x6C41657461647075;
  if (*v0 != 1)
  {
    v1 = 0x65466574656C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7453657461647075;
  }
}

uint64_t sub_29E4CD114@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29E4D07EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29E4CD13C(uint64_t a1)
{
  v2 = sub_29E4CF388();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4CD178(uint64_t a1)
{
  v2 = sub_29E4CF388();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4CD1C0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_29E4CD1F0(uint64_t a1)
{
  v2 = sub_29E4CF28C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4CD22C(uint64_t a1)
{
  v2 = sub_29E4CF28C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4CD288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465654665646968 && a2 == 0xEC0000006D657449)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29E4FCF80();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29E4CD314(uint64_t a1)
{
  v2 = sub_29E4CF2E0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4CD350(uint64_t a1)
{
  v2 = sub_29E4CF2E0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4CD3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F68636E61 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29E4FCF80();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29E4CD424(uint64_t a1)
{
  v2 = sub_29E4CF334();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4CD460(uint64_t a1)
{
  v2 = sub_29E4CF334();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4CD4CC()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_signals;
  v2 = sub_29E4FC190();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_29E4A1754((v0 + OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_appFirstLaunchDateProvider));

  return swift_deallocClassInstance();
}

uint64_t sub_29E4CD5B8(uint64_t a1)
{
  result = sub_29E4FC190();
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

void sub_29E4CD6B8(uint64_t a1)
{
  if (!qword_2A1A70498)
  {
    type metadata accessor for CloudSyncExecutor.Planner.ChangeType(255);
    sub_29E4CD7AC(&qword_2A1A703B0, 255, type metadata accessor for CloudSyncExecutor.Planner.ChangeType, &unk_29E4FFFB8);
    sub_29E4CD7AC(&qword_2A1A703B8, 255, type metadata accessor for CloudSyncExecutor.Planner.ChangeType, &unk_29E4FFF90);
    v1 = sub_29E4FC2B0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A70498);
    }
  }
}

uint64_t sub_29E4CD7AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_29E4CD7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Profiles17CloudSyncExecutor7Planner_signals;
  v4 = sub_29E4FC190();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29E4CD86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29E4CBC3C();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[3] = swift_getObjectType();
  v8[4] = *(v6 + 8);
  v8[0] = v5;
  swift_unknownObjectRetain_n();
  sub_29E4FC330();
  swift_unknownObjectRelease();

  return sub_29E4A1754(v8);
}

uint64_t sub_29E4CD968(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E4CD7AC(qword_2A1A70300, 255, type metadata accessor for CloudSyncExecutor.Planner, &unk_29E4FFFE0);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E4CDA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E4CD7AC(qword_2A1A70300, 255, type metadata accessor for CloudSyncExecutor.Planner, &unk_29E4FFFE0);

  return a5(a1, a2, v8, v9);
}

id sub_29E4CDB4C(id result, void *a2, id a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    result = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:

  return sub_29E4CDBB4(result);
}

id sub_29E4CDBB4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_29E4CDBC4(void *result, void *a2, void *a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    result = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:

  sub_29E4CDC2C(result);
}

void sub_29E4CDC2C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_29E4CDC3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_29E4FAFB0();
    if (v10)
    {
      v11 = sub_29E4FAFD0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_29E4FAFC0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_29E4FAFB0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_29E4FAFD0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_29E4FAFC0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_29E4CDE6C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x29EDCA608];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_29E4CEF90(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_29E4A1B94(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_29E4CDC3C(v13, a3, a4, &v12);
  v10 = v4;
  sub_29E4A1B94(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_29E4CDFFC(uint64_t a1, uint64_t a2)
{
  sub_29E4D018C(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4CE090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4D018C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4CE100(uint64_t a1, uint64_t a2)
{
  v112 = a2;
  v3 = sub_29E4FB290();
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v104 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_29E4FB2A0();
  v103 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29E4D018C(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v96 - v9;
  v11 = sub_29E4FB1E0();
  v109 = *(v11 - 8);
  v110 = v11;
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v101 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v108 = &v96 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v111 = &v96 - v16;
  v17 = sub_29E4FC3C0();
  v18 = *(v17 - 8);
  v113 = v17;
  v114 = v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v100 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v99 = &v96 - v22;
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v102 = &v96 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v27 = &v96 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v29 = &v96 - v28;
  sub_29E4D018C(0, &qword_2A184B7E0, type metadata accessor for CloudSyncResolutionInfo, v7);
  MEMORY[0x2A1C7C4A8](v30 - 8);
  v32 = &v96 - v31;
  v33 = type metadata accessor for CloudSyncResolutionInfo(0);
  v34 = *(v33 - 8);
  v35 = MEMORY[0x2A1C7C4A8](v33);
  v98 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x2A1C7C4A8](v35);
  v97 = &v96 - v38;
  MEMORY[0x2A1C7C4A8](v37);
  v40 = &v96 - v39;
  v117 = type metadata accessor for HealthAppDefaults();
  v118 = &off_2A24E8E98;
  v116[0] = a1;
  sub_29E4A1710(v116, v117);

  sub_29E4DCAB4(v32);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_29E4CE090(v32, &qword_2A184B7E0, type metadata accessor for CloudSyncResolutionInfo);
    sub_29E4FC390();
    v41 = sub_29E4FC3B0();
    v42 = sub_29E4FC940();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_29E494000, v41, v42, "State not yet resolved", v43, 2u);
      MEMORY[0x29ED8BDB0](v43, -1, -1);
    }

    (*(v114 + 8))(v29, v113);
    goto LABEL_14;
  }

  sub_29E4CF498(v32, v40, type metadata accessor for CloudSyncResolutionInfo);
  v44 = v40;
  if ((MEMORY[0x29ED89DF0](v112, v40) & 1) == 0)
  {
    sub_29E4FC390();
    v63 = sub_29E4FC3B0();
    v64 = sub_29E4FC940();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_29E494000, v63, v64, "State not yet resolved, previous state resolved is different", v65, 2u);
      MEMORY[0x29ED8BDB0](v65, -1, -1);
    }

    (*(v114 + 8))(v27, v113);
    goto LABEL_12;
  }

  v45 = v111;
  sub_29E4FB1D0();
  sub_29E4FB280();
  v47 = v106;
  v46 = v107;
  v48 = v104;
  (*(v106 + 104))(v104, *MEMORY[0x29EDB9CB8], v107);
  sub_29E4FB270();
  (*(v47 + 8))(v48, v46);
  (*(v103 + 8))(v6, v105);
  v50 = v109;
  v49 = v110;
  if ((*(v109 + 48))(v10, 1, v110) == 1)
  {
    sub_29E4CE090(v10, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
    v51 = v102;
    sub_29E4FC390();
    v52 = v101;
    (*(v50 + 16))(v101, v45, v49);
    v53 = sub_29E4FC3B0();
    v54 = sub_29E4FC940();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v115 = v56;
      *v55 = 136446210;
      sub_29E4CD7AC(&qword_2A184B7E8, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
      v57 = sub_29E4FCF60();
      v58 = v52;
      v60 = v59;
      v61 = *(v50 + 8);
      v61(v58, v49);
      v62 = sub_29E4F68F4(v57, v60, &v115);

      *(v55 + 4) = v62;
      _os_log_impl(&dword_29E494000, v53, v54, "Failed to compute one day ago from %{public}s", v55, 0xCu);
      sub_29E4A1754(v56);
      MEMORY[0x29ED8BDB0](v56, -1, -1);
      MEMORY[0x29ED8BDB0](v55, -1, -1);

      (*(v114 + 8))(v102, v113);
      v61(v111, v49);
    }

    else
    {

      v81 = *(v50 + 8);
      v81(v52, v49);
      (*(v114 + 8))(v51, v113);
      v81(v45, v49);
    }

LABEL_12:
    v66 = v44;
LABEL_13:
    sub_29E4CF1C4(v66, type metadata accessor for CloudSyncResolutionInfo);
LABEL_14:
    v67 = 0;
    goto LABEL_15;
  }

  (*(v50 + 32))(v108, v10, v49);
  if (sub_29E4FB1B0())
  {
    v69 = v99;
    sub_29E4FC390();
    v70 = v97;
    sub_29E4CF224(v44, v97, type metadata accessor for CloudSyncResolutionInfo);
    v71 = sub_29E4FC3B0();
    v72 = sub_29E4FC940();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v115 = v74;
      *v73 = 136446210;
      sub_29E4CD7AC(&qword_2A184B7E8, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
      v75 = sub_29E4FCF60();
      v76 = v70;
      v78 = v77;
      sub_29E4CF1C4(v76, type metadata accessor for CloudSyncResolutionInfo);
      v79 = sub_29E4F68F4(v75, v78, &v115);

      *(v73 + 4) = v79;
      _os_log_impl(&dword_29E494000, v71, v72, "State resolved last %{public}s which is more than a day ago", v73, 0xCu);
      sub_29E4A1754(v74);
      MEMORY[0x29ED8BDB0](v74, -1, -1);
      MEMORY[0x29ED8BDB0](v73, -1, -1);

      (*(v114 + 8))(v99, v113);
      v80 = *(v50 + 8);
      v80(v108, v49);
      v80(v111, v49);
    }

    else
    {

      sub_29E4CF1C4(v70, type metadata accessor for CloudSyncResolutionInfo);
      (*(v114 + 8))(v69, v113);
      v94 = *(v50 + 8);
      v94(v108, v49);
      v94(v45, v49);
    }

    v66 = v44;
    goto LABEL_13;
  }

  v82 = v100;
  sub_29E4FC390();
  v83 = v98;
  sub_29E4CF224(v44, v98, type metadata accessor for CloudSyncResolutionInfo);
  v84 = sub_29E4FC3B0();
  v85 = sub_29E4FC940();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v115 = v87;
    *v86 = 136446210;
    sub_29E4CD7AC(&qword_2A184B7E8, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
    v88 = sub_29E4FCF60();
    v89 = v83;
    v91 = v90;
    sub_29E4CF1C4(v89, type metadata accessor for CloudSyncResolutionInfo);
    v92 = sub_29E4F68F4(v88, v91, &v115);

    *(v86 + 4) = v92;
    _os_log_impl(&dword_29E494000, v84, v85, "State resolved last %{public}s which is less than a day ago", v86, 0xCu);
    sub_29E4A1754(v87);
    MEMORY[0x29ED8BDB0](v87, -1, -1);
    MEMORY[0x29ED8BDB0](v86, -1, -1);

    (*(v114 + 8))(v100, v113);
    v93 = *(v50 + 8);
    v93(v108, v49);
    v93(v111, v49);
  }

  else
  {

    sub_29E4CF1C4(v83, type metadata accessor for CloudSyncResolutionInfo);
    (*(v114 + 8))(v82, v113);
    v95 = *(v50 + 8);
    v95(v108, v49);
    v95(v45, v49);
  }

  sub_29E4CF1C4(v44, type metadata accessor for CloudSyncResolutionInfo);
  v67 = 1;
LABEL_15:
  sub_29E4A1754(v116);
  return v67;
}

uint64_t sub_29E4CEEF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29E4A197C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29E498334(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_29E4CEF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_29E4FAFB0();
  v11 = result;
  if (result)
  {
    result = sub_29E4FAFD0();
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

  sub_29E4FAFC0();
  sub_29E4CDC3C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_29E4CF048(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_29E4C7648(a3, a4);
          return sub_29E4CDE6C(v13, a2, a3, a4) & 1;
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

uint64_t sub_29E4CF1B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29E4C7648(result, a2);
  }

  return result;
}

uint64_t sub_29E4CF1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E4CF224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29E4CF28C()
{
  result = qword_2A184B7F8;
  if (!qword_2A184B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B7F8);
  }

  return result;
}

unint64_t sub_29E4CF2E0()
{
  result = qword_2A184B808;
  if (!qword_2A184B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B808);
  }

  return result;
}

unint64_t sub_29E4CF334()
{
  result = qword_2A184B818;
  if (!qword_2A184B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B818);
  }

  return result;
}

unint64_t sub_29E4CF388()
{
  result = qword_2A184B828;
  if (!qword_2A184B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B828);
  }

  return result;
}

void sub_29E4CF3DC(uint64_t a1)
{
  if (!qword_2A184B830)
  {
    sub_29E4CF44C();
    sub_29E4FCDA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B830);
    }
  }
}

unint64_t sub_29E4CF44C()
{
  result = qword_2A184B838;
  if (!qword_2A184B838)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A184B838);
  }

  return result;
}

uint64_t sub_29E4CF498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E4CF500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29E4CF568(uint64_t a1)
{
  v70 = a1;
  v1 = sub_29E4FC3C0();
  v59 = *(v1 - 8);
  v60 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v58 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for CloudSyncExecutor.Planner.ChangeType(0);
  MEMORY[0x2A1C7C4A8](v67);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E4FC1C0();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E4FC1E0();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v65 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FC230();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E4FC110();
  v71 = *(v10 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v69 = &v57 - v13;
  sub_29E4D018C(0, &qword_2A1A70630, MEMORY[0x29EDC3B48], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v57 - v15;
  sub_29E4D018C(0, &unk_2A1A704F0, MEMORY[0x29EDC3B60], MEMORY[0x29EDC34D8]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v57 - v20;
  v22 = sub_29E4FB660();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FB670();
  sub_29E4FC170();
  sub_29E4CD7AC(&qword_2A1A70628, 255, MEMORY[0x29EDC3B60], MEMORY[0x29EDC3B30]);
  sub_29E4FC2C0();
  v26 = v18;
  v27 = v23;
  (*(v19 + 8))(v21, v26);
  v28 = *(v23 + 48);
  v72 = v22;
  if (v28(v16, 1, v22) == 1)
  {
    sub_29E4CE090(v16, &qword_2A1A70630, MEMORY[0x29EDC3B48]);
    return MEMORY[0x29EDCA190];
  }

  (*(v23 + 32))(v25, v16, v72);
  v30 = v69;
  sub_29E4FC130();
  v31 = v68;
  sub_29E4FC100();
  sub_29E4CD7AC(&qword_2A1A70508, 255, MEMORY[0x29EDC34C0], MEMORY[0x29EDC34C8]);
  v32 = sub_29E4FC680();
  v33 = v71 + 8;
  v34 = *(v71 + 8);
  v34(v31, v10);
  if (v32)
  {
    v34(v30, v10);
    sub_29E4D018C(0, &qword_2A1A6F0D0, sub_29E4CD6B8, MEMORY[0x29EDC9E90]);
    sub_29E4CD6B8(0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_29E4FDE40;
    sub_29E4FC220();
    v37 = v62;
    v36 = v63;
    v38 = v25;
    v39 = v61;
    (*(v62 + 104))(v61, *MEMORY[0x29EDC3508], v63);
    sub_29E4FC1D0();
    (*(v37 + 8))(v39, v36);
    *v66 = 1;
    swift_storeEnumTagMultiPayload();
    sub_29E4CD7AC(&qword_2A1A703B0, 255, type metadata accessor for CloudSyncExecutor.Planner.ChangeType, &unk_29E4FFFB8);
    sub_29E4CD7AC(&qword_2A1A703B8, 255, type metadata accessor for CloudSyncExecutor.Planner.ChangeType, &unk_29E4FFF90);
    sub_29E4FC290();
    (*(v27 + 8))(v38, v72);
  }

  else
  {
    sub_29E4FC100();
    v40 = sub_29E4FC680();
    v34(v31, v10);
    v34(v30, v10);
    if ((v40 & 1) == 0)
    {
      v71 = v33;
      v46 = v10;
      v69 = v25;
      swift_getObjectType();
      v47 = v58;
      sub_29E4FC0E0();

      v48 = sub_29E4FC3B0();
      v49 = sub_29E4FC930();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v73 = v67;
        *v50 = 136315138;
        sub_29E4FC130();
        sub_29E4CD7AC(&qword_2A184B870, 255, MEMORY[0x29EDC34C0], MEMORY[0x29EDC34D0]);
        v51 = sub_29E4FCF60();
        v52 = v27;
        v54 = v53;
        v34(v31, v46);
        v55 = sub_29E4F68F4(v51, v54, &v73);
        v27 = v52;

        *(v50 + 4) = v55;
        _os_log_impl(&dword_29E494000, v48, v49, "Unexpected criteria identifier %s", v50, 0xCu);
        v56 = v67;
        sub_29E4A1754(v67);
        MEMORY[0x29ED8BDB0](v56, -1, -1);
        MEMORY[0x29ED8BDB0](v50, -1, -1);
      }

      (*(v59 + 8))(v47, v60);
      (*(v27 + 8))(v69, v72);
      return MEMORY[0x29EDCA190];
    }

    sub_29E4D018C(0, &qword_2A1A6F0D0, sub_29E4CD6B8, MEMORY[0x29EDC9E90]);
    sub_29E4CD6B8(0);
    v71 = (*(*(v41 - 8) + 80) + 32) & ~*(*(v41 - 8) + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_29E4FDE40;
    sub_29E4FC220();
    v43 = v61;
    v42 = v62;
    v44 = v63;
    (*(v62 + 104))(v61, *MEMORY[0x29EDC3508], v63);
    sub_29E4FC1D0();
    (*(v42 + 8))(v43, v44);
    v45 = v72;
    (*(v27 + 16))(v66, v25, v72);
    swift_storeEnumTagMultiPayload();
    sub_29E4CD7AC(&qword_2A1A703B0, 255, type metadata accessor for CloudSyncExecutor.Planner.ChangeType, &unk_29E4FFFB8);
    sub_29E4CD7AC(&qword_2A1A703B8, 255, type metadata accessor for CloudSyncExecutor.Planner.ChangeType, &unk_29E4FFF90);
    sub_29E4FC290();
    (*(v27 + 8))(v25, v45);
  }

  return v35;
}

void sub_29E4D018C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E4D01F0()
{
  result = qword_2A1A70480;
  if (!qword_2A1A70480)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A70480);
  }

  return result;
}

void sub_29E4D0254()
{
  if (!qword_2A1A70780)
  {
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70780);
    }
  }
}

void sub_29E4D0338(uint64_t a1)
{
  sub_29E4D03AC();
  if (v1 <= 0x3F)
  {
    sub_29E4D03F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_29E4D03AC()
{
  if (!qword_2A1A70638)
  {
    v0 = sub_29E4FB660();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70638);
    }
  }
}

uint64_t sub_29E4D03F4()
{
  result = qword_2A1A6F210;
  if (!qword_2A1A6F210)
  {
    result = MEMORY[0x29EDC9A98];
    atomic_store(MEMORY[0x29EDC9A98], &qword_2A1A6F210);
  }

  return result;
}

unint64_t sub_29E4D0428()
{
  result = qword_2A184B878;
  if (!qword_2A184B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B878);
  }

  return result;
}

unint64_t sub_29E4D0480()
{
  result = qword_2A184B880;
  if (!qword_2A184B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B880);
  }

  return result;
}

unint64_t sub_29E4D04D8()
{
  result = qword_2A184B888;
  if (!qword_2A184B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B888);
  }

  return result;
}

unint64_t sub_29E4D0530()
{
  result = qword_2A184B890;
  if (!qword_2A184B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B890);
  }

  return result;
}

unint64_t sub_29E4D0588()
{
  result = qword_2A184B898;
  if (!qword_2A184B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B898);
  }

  return result;
}

unint64_t sub_29E4D05E0()
{
  result = qword_2A184B8A0;
  if (!qword_2A184B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B8A0);
  }

  return result;
}

unint64_t sub_29E4D0638()
{
  result = qword_2A184B8A8;
  if (!qword_2A184B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B8A8);
  }

  return result;
}

unint64_t sub_29E4D0690()
{
  result = qword_2A184B8B0;
  if (!qword_2A184B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B8B0);
  }

  return result;
}

unint64_t sub_29E4D06E8()
{
  result = qword_2A184B8B8;
  if (!qword_2A184B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B8B8);
  }

  return result;
}

unint64_t sub_29E4D0740()
{
  result = qword_2A184B8C0;
  if (!qword_2A184B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B8C0);
  }

  return result;
}

unint64_t sub_29E4D0798()
{
  result = qword_2A184B8C8;
  if (!qword_2A184B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B8C8);
  }

  return result;
}

uint64_t sub_29E4D07EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7453657461647075 && a2 == 0xEB00000000657461;
  if (v4 || (sub_29E4FCF80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C41657461647075 && a2 == 0xEF6D687469726F67 || (sub_29E4FCF80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65466574656C6564 && a2 == 0xEF736D6574496465)
  {

    return 2;
  }

  else
  {
    v6 = sub_29E4FCF80();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29E4D0940(uint64_t a1)
{
  v2 = sub_29E4FB240();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = v25 - v8;
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  result = MEMORY[0x29ED8AEF0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_29E4F7394(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *SharingRelationshipLatestTransactionDatesInputSignal.__allocating_init(context:observer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_29E4D6084(a1, a3, a4, v4, ObjectType, a2);
}

void *sub_29E4D0C0C(uint64_t a1)
{
  sub_29E4D75A8(0, &qword_2A1A70698, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v35 - v4;
  v44 = sub_29E4FB240();
  v6 = *(v44 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v44);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v37 = &v35 - v9;
  v40 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29E4FCCA0();
    sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30);
    sub_29E4D615C(&qword_2A1A6F190, &unk_2A1A6F198, 0x29EDBAE30, MEMORY[0x29EDCA2F0]);
    result = sub_29E4FC8D0();
    a1 = v46;
    v11 = v47;
    v13 = v48;
    v12 = v49;
    v14 = v50;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v12 = 0;
  }

  v39 = v13;
  v42 = (v6 + 48);
  v43 = (v6 + 56);
  v35 = v6;
  v36 = (v6 + 32);
  v41 = MEMORY[0x29EDCA190];
  while (a1 < 0)
  {
    v21 = sub_29E4FCCD0();
    if (!v21 || (v45 = v21, sub_29E4A2AD8(0, &unk_2A1A6F198, 0x29EDBAE30), swift_dynamicCast(), (v20 = v51) == 0))
    {
LABEL_27:
      sub_29E4C4CA8(a1);
      return v41;
    }

LABEL_17:
    v22 = [v20 profileIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 identifier];

      sub_29E4FB230();
      v25 = *v43;
      v26 = v5;
      v27 = 0;
    }

    else
    {
      v25 = *v43;
      v26 = v5;
      v27 = 1;
    }

    v28 = v44;
    v25(v26, v27, 1, v44);

    if ((*v42)(v5, 1, v28) == 1)
    {
      result = sub_29E4D7100(v5, &qword_2A1A70698, MEMORY[0x29EDB9C08]);
    }

    else
    {
      v29 = *v36;
      v30 = v44;
      (*v36)(v37, v5, v44);
      v29(v38, v37, v30);
      v31 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_29E4A7EE0(0, v41[2] + 1, 1, v41);
      }

      v33 = v41[2];
      v32 = v41[3];
      if (v33 >= v32 >> 1)
      {
        v41 = sub_29E4A7EE0((v32 > 1), v33 + 1, 1, v41);
      }

      v34 = v41;
      v41[2] = v33 + 1;
      result = (v31)(v34 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33, v38, v44);
    }
  }

  v18 = v12;
  v19 = v14;
  if (v14)
  {
LABEL_13:
    v14 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v12 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v12 >= ((v13 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v19 = *(v11 + 8 * v12);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t static SharingRelationshipLatestTransactionDatesInputSignal.identityConfiguration.getter()
{
  v0 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  sub_29E4FC2F0();
  return sub_29E4FC2D0();
}

uint64_t sub_29E4D11F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v3 = objc_opt_self();
  v4 = sub_29E4FB210();
  v5 = [v3 _profileWithUUID_type_];

  [v2 setProfileIdentifier_];
  [v2 resume];
  Source = type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal.QuerySource();
  v7 = swift_allocObject();
  sub_29E4D760C(0, &qword_2A184B8F8, &type metadata for SharingRelationshipLatestTransactionDatesInputSignal.QuerySource.State);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v7 + 16) = v2;
  *(v7 + 24) = result;
  a1[3] = Source;
  a1[4] = &off_2A24E8A98;
  *a1 = v7;
  return result;
}

Swift::Void __swiftcall SharingRelationshipLatestTransactionDatesInputSignal.stopObservation()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  sub_29E4D1360(&v1[4]);

  os_unfair_lock_unlock(v1 + 10);
}

void sub_29E4D1360(uint64_t a1)
{
  v3 = v2;
  v14 = a1;
  v4 = *(a1 + 8);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      sub_29E4A76F0(*(v4 + 56) + 40 * (__clz(__rbit64(v7)) | (v10 << 6)), v13);
      sub_29E498334(v13, v12);
      v1 = *(*sub_29E4A1710(v12, v12[3]) + 24);
      os_unfair_lock_lock((v1 + 24));
      sub_29E4D768C((v1 + 16));
      if (v3)
      {
        break;
      }

      v3 = 0;
      v7 &= v7 - 1;
      os_unfair_lock_unlock((v1 + 24));
      sub_29E4A1754(v12);
      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        v11 = sub_29E4A278C(MEMORY[0x29EDCA190]);

        *(v14 + 8) = v11;
        return;
      }

      v7 = *(v4 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v1 + 24));
  __break(1u);
}

uint64_t SharingRelationshipLatestTransactionDatesInputSignal.dependencyDidUpdate(anchors:)()
{
  v1 = v0;
  v49 = *v0;
  v2 = sub_29E4FC3C0();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v50 = &v46 - v5;
  sub_29E4D75A8(0, &qword_2A1A70470, sub_29E4C4ABC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v46 - v7;
  sub_29E4D75A8(0, &qword_2A1A70500, MEMORY[0x29EDC3B28], MEMORY[0x29EDC34D8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v46 - v12;
  sub_29E4C4ABC(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FB610();
  sub_29E4FC160();
  sub_29E4D6114(&qword_2A1A70648, 255, MEMORY[0x29EDC3B28], MEMORY[0x29EDC3B20]);
  sub_29E4FC2C0();
  (*(v11 + 8))(v13, v10);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_29E4D7100(v8, &qword_2A1A70470, sub_29E4C4ABC);
    swift_getObjectType();
    v19 = v48;
    sub_29E4FC0E0();

    v20 = sub_29E4FC3B0();
    v21 = sub_29E4FC920();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53 = v0;
      v54 = v23;
      *v22 = 136315138;
      sub_29E4D6114(&qword_2A1A6F3C8, v24, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal, &protocol conformance descriptor for SharingRelationshipLatestTransactionDatesInputSignal);
      v25 = sub_29E4FCF60();
      v27 = sub_29E4F68F4(v25, v26, &v54);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_29E494000, v20, v21, "%s: Dependency did update but no anchor present for summary sharing.", v22, 0xCu);
      sub_29E4A1754(v23);
      MEMORY[0x29ED8BDB0](v23, -1, -1);
      MEMORY[0x29ED8BDB0](v22, -1, -1);
    }

    return (*(v51 + 8))(v19, v52);
  }

  else
  {
    v47 = v16;
    (*(v16 + 32))(v18, v8, v15);
    v48 = v18;
    sub_29E4FC310();
    v29 = sub_29E4D0C0C(v54);

    v30 = sub_29E4D6B78(v29);

    swift_getObjectType();
    v31 = v50;
    sub_29E4FC0E0();
    swift_bridgeObjectRetain_n();

    v32 = sub_29E4FC3B0();
    v33 = sub_29E4FC940();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v53 = v1;
      v54 = v46;
      *v34 = 136315650;
      sub_29E4D6114(&qword_2A1A6F3C8, v35, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal, &protocol conformance descriptor for SharingRelationshipLatestTransactionDatesInputSignal);
      v36 = sub_29E4FCF60();
      v38 = sub_29E4F68F4(v36, v37, &v54);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2048;
      v39 = *(v30 + 16);

      *(v34 + 14) = v39;

      *(v34 + 22) = 2080;
      sub_29E4FB240();
      sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
      v40 = sub_29E4FC8B0();
      v42 = sub_29E4F68F4(v40, v41, &v54);

      *(v34 + 24) = v42;
      _os_log_impl(&dword_29E494000, v32, v33, "%s: Found %ld sharing profiles: %s", v34, 0x20u);
      v43 = v46;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v43, -1, -1);
      MEMORY[0x29ED8BDB0](v34, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v44 = (*(v51 + 8))(v31, v52);
    v45 = v1[2];
    MEMORY[0x2A1C7C4A8](v44);
    *(&v46 - 2) = v30;
    *(&v46 - 1) = v1;
    os_unfair_lock_lock((v45 + 40));
    sub_29E4D6D18((v45 + 16));
    os_unfair_lock_unlock((v45 + 40));

    return (*(v47 + 8))(v48, v15);
  }
}

void sub_29E4D1C64(char *a1, void *a2, char *a3)
{
  v4 = a3;
  v171 = *a3;
  sub_29E4D75A8(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v162 = &v161 - v8;
  v9 = sub_29E4FB240();
  v197 = *(v9 - 8);
  v198 = v9;
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v177 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v176 = &v161 - v13;
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v193 = &v161 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v164 = &v161 - v17;
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = &v161 - v19;
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v175 = &v161 - v22;
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v25 = &v161 - v24;
  v178 = v26;
  MEMORY[0x2A1C7C4A8](v23);
  v182 = &v161 - v27;
  v190 = sub_29E4FC3C0();
  v185 = *(v190 - 8);
  v28 = MEMORY[0x2A1C7C4A8](v190);
  v184 = &v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v31 = MEMORY[0x2A1C7C4A8](v30);
  v183 = &v161 - v32;
  MEMORY[0x2A1C7C4A8](v31);
  v34 = &v161 - v33;
  v35 = *a1;
  v168 = a2;
  v192 = v3;
  v172 = v25;
  v163 = v36;
  if (v35)
  {
    v167 = 0;
  }

  else
  {
    *a1 = 1;
    v167 = a2[2] == 0;
  }

  v191 = a1 + 8;

  v38 = sub_29E4D0940(v37);
  v39 = *(v4 + 3);
  v40 = *(v4 + 4);
  ObjectType = swift_getObjectType();
  v189 = v39;
  v187 = ObjectType;
  v188 = v40;
  sub_29E4FC0E0();

  v42 = sub_29E4FC3B0();
  v43 = sub_29E4FC940();

  v44 = os_log_type_enabled(v42, v43);
  v194 = v4;
  v165 = a1;
  if (v44)
  {
    v4 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v45 = v202;
    *v4 = 136315394;
    *&v200 = v194;
    sub_29E4D6114(&qword_2A1A6F3C8, v46, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal, &protocol conformance descriptor for SharingRelationshipLatestTransactionDatesInputSignal);
    v174 = v20;
    v47 = sub_29E4FCF60();
    v49 = sub_29E4F68F4(v47, v48, &v202);

    *(v4 + 4) = v49;
    *(v4 + 6) = 2080;
    sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v50 = sub_29E4FC8B0();
    v52 = sub_29E4F68F4(v50, v51, &v202);

    *(v4 + 14) = v52;
    _os_log_impl(&dword_29E494000, v42, v43, "%s: Looking for updates from existing profiles: %s", v4, 0x16u);
    v20 = v174;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v45, -1, -1);
    MEMORY[0x29ED8BDB0](v4, -1, -1);
  }

  v186 = *(v185 + 8);
  v186(v34, v190);
  v53 = v168;
  v54 = v168[2];
  v55 = *(v38 + 16);
  v56 = v172;
  v166 = v38;
  if (v54 > v55 >> 3)
  {

    v57 = sub_29E4D4B10(v53, v38);
  }

  else
  {
    v202 = v38;

    sub_29E4D48C4(v53);
    v57 = v202;
  }

  v58 = (v57 + 56);
  v59 = 1 << *(v57 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v57 + 56);
  v62 = (v59 + 63) >> 6;
  v199 = v197 + 16;
  v195 = v197 + 32;
  v196 = (v197 + 8);
  v185 += 8;

  v63 = 0;
  *&v64 = 136446210;
  v169 = v64;
  *&v64 = 136315394;
  v170 = v64;
  v180 = v57;
  v181 = (v57 + 56);
  v179 = v62;
LABEL_12:
  v65 = v63;
  while (v61)
  {
    v67 = v20;
    v63 = v65;
LABEL_21:
    v68 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v69 = v197;
    v70 = v198;
    v71 = *(v197 + 16);
    v72 = v182;
    v71(v182, *(v57 + 48) + *(v197 + 72) * (v68 | (v63 << 6)), v198);
    (*(v69 + 32))(v56, v72, v70);
    v73 = *v191;
    if (*(*v191 + 16))
    {
      v74 = sub_29E49ED7C(v56);
      if (v75)
      {
        v174 = v67;
        sub_29E4A76F0(*(v73 + 56) + 40 * v74, &v200);
        sub_29E498334(&v200, &v202);
        sub_29E4FC0E0();
        v90 = v198;
        v71(v164, v56, v198);
        v91 = v194;

        v92 = sub_29E4FC3B0();
        v93 = v91;
        v94 = sub_29E4FC940();

        if (os_log_type_enabled(v92, v94))
        {
          v95 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          *&v200 = v173;
          *v95 = v170;
          v204 = v93;
          sub_29E4D6114(&qword_2A1A6F3C8, v96, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal, &protocol conformance descriptor for SharingRelationshipLatestTransactionDatesInputSignal);
          v97 = sub_29E4FCF60();
          v99 = sub_29E4F68F4(v97, v98, &v200);

          *(v95 + 4) = v99;
          *(v95 + 12) = 2080;
          sub_29E4D6114(&qword_2A1A70BC0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
          v100 = v164;
          v101 = sub_29E4FCF60();
          v103 = v102;
          v104 = v90;
          v105 = v94;
          v4 = *v196;
          (*v196)(v100, v104);
          v106 = sub_29E4F68F4(v101, v103, &v200);

          *(v95 + 14) = v106;
          _os_log_impl(&dword_29E494000, v92, v105, "%s: Ending sharing relationship observation for profile %s", v95, 0x16u);
          v107 = v173;
          swift_arrayDestroy();
          MEMORY[0x29ED8BDB0](v107, -1, -1);
          v108 = v95;
          v56 = v172;
          v57 = v180;
          MEMORY[0x29ED8BDB0](v108, -1, -1);
        }

        else
        {

          v4 = *v196;
          (*v196)(v164, v90);
        }

        v186(v163, v190);
        v109 = *(*sub_29E4A1710(&v202, v203) + 24);
        os_unfair_lock_lock((v109 + 24));
        v110 = v192;
        sub_29E4D6FF8((v109 + 16));
        v192 = v110;
        v20 = v174;
        v111 = (v109 + 24);
        if (v110)
        {
          goto LABEL_53;
        }

        os_unfair_lock_unlock(v111);
        sub_29E4F2B7C(v56, &v200);
        sub_29E4D7010(&v200);
        v112 = v162;
        sub_29E4F2B3C(v56, v162);
        sub_29E4D7100(v112, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
        (v4)(v56, v198);
        sub_29E4A1754(&v202);
        v167 = 1;
        v58 = v181;
        v62 = v179;
        goto LABEL_12;
      }
    }

    v76 = v183;
    sub_29E4FC0E0();
    v20 = v67;
    v77 = v198;
    v71(v67, v56, v198);
    v78 = sub_29E4FC3B0();
    v4 = v56;
    v79 = sub_29E4FC930();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v173 = v80;
      v174 = swift_slowAlloc();
      v202 = v174;
      *v80 = v169;
      sub_29E4D6114(&qword_2A1A70BC0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
      v81 = sub_29E4FCF60();
      v4 = v20;
      v83 = v82;
      v84 = *v196;
      (*v196)(v4, v198);
      v85 = sub_29E4F68F4(v81, v83, &v202);
      v20 = v4;

      v86 = v173;
      *(v173 + 4) = v85;
      v87 = v79;
      v88 = v86;
      _os_log_impl(&dword_29E494000, v78, v87, "Unexpectedly no transaction source for %{public}s", v86, 0xCu);
      v89 = v174;
      sub_29E4A1754(v174);
      MEMORY[0x29ED8BDB0](v89, -1, -1);
      MEMORY[0x29ED8BDB0](v88, -1, -1);

      v186(v183, v190);
      v56 = v172;
      (v84)(v172, v198);
      v65 = v63;
      v57 = v180;
    }

    else
    {

      v66 = *v196;
      (*v196)(v20, v77);
      v186(v76, v190);
      (v66)(v4, v77);
      v65 = v63;
      v57 = v180;
      v56 = v4;
    }

    v58 = v181;
    v62 = v179;
  }

  while (2)
  {
    v63 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v63 < v62)
    {
      v61 = *(v58 + v63);
      ++v65;
      if (v61)
      {
        v67 = v20;
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  v114 = sub_29E4D0940(v113);
  v115 = v168;
  if (*(v114 + 16) <= v168[2] >> 3)
  {
    v202 = v168;

    sub_29E4D48C4(v114);

    v116 = v202;
  }

  else
  {

    v116 = sub_29E4D4B10(v114, v115);
  }

  v117 = v198;
  v118 = (v116 + 56);
  v119 = 1 << *(v116 + 32);
  v120 = -1;
  if (v119 < 64)
  {
    v120 = ~(-1 << v119);
  }

  v121 = v120 & *(v116 + 56);
  v122 = (v119 + 63) >> 6;

  v123 = 0;
  v174 = (v116 + 56);
  v173 = v122;
  v179 = v116;
  if (!v121)
  {
LABEL_37:
    v125 = v193;
    while (1)
    {
      v124 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        goto LABEL_51;
      }

      if (v124 >= v122)
      {

        if (v167)
        {
          sub_29E4D31B0(v165);
        }

        return;
      }

      v121 = *&v118[8 * v124];
      ++v123;
      if (v121)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v124 = v123;
    v125 = v193;
LABEL_41:
    v126 = *(v116 + 48);
    v127 = v197;
    v128 = *(v197 + 16);
    v129 = v175;
    v128(v175, v126 + *(v197 + 72) * (__clz(__rbit64(v121)) | (v124 << 6)), v117);
    v183 = *(v127 + 32);
    (v183)(v125, v129, v117);
    sub_29E4FC0E0();
    v130 = v176;
    v181 = v128;
    v128(v176, v125, v117);
    v131 = v194;

    v132 = sub_29E4FC3B0();
    v133 = v117;
    v134 = sub_29E4FC940();

    if (os_log_type_enabled(v132, v134))
    {
      v135 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v202 = v172;
      *v135 = v170;
      *&v200 = v131;
      sub_29E4D6114(&qword_2A1A6F3C8, v136, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal, &protocol conformance descriptor for SharingRelationshipLatestTransactionDatesInputSignal);
      v137 = sub_29E4FCF60();
      v139 = sub_29E4F68F4(v137, v138, &v202);

      *(v135 + 4) = v139;
      *(v135 + 12) = 2080;
      sub_29E4D6114(&qword_2A1A70BC0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
      v140 = sub_29E4FCF60();
      v142 = v141;
      v182 = *v196;
      (v182)(v130, v133);
      v143 = sub_29E4F68F4(v140, v142, &v202);
      v131 = v194;

      *(v135 + 14) = v143;
      _os_log_impl(&dword_29E494000, v132, v134, "%s: Beginning sharing relationship observation for profile %s", v135, 0x16u);
      v144 = v172;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v144, -1, -1);
      v145 = v135;
      v125 = v193;
      MEMORY[0x29ED8BDB0](v145, -1, -1);
    }

    else
    {

      v182 = *v196;
      (v182)(v130, v133);
    }

    v186(v184, v190);
    v117 = v133;
    (*(v131 + 7))(&v202, v125);
    v146 = sub_29E4A1710(&v202, v203);
    v147 = swift_allocObject();
    swift_weakInit();
    v148 = v177;
    v181(v177, v125, v133);
    v149 = (*(v197 + 80) + 24) & ~*(v197 + 80);
    v150 = swift_allocObject();
    *(v150 + 16) = v147;
    v151 = (v183)(v150 + v149, v148, v117);
    v4 = *(*v146 + 24);
    MEMORY[0x2A1C7C4A8](v151);
    *(&v161 - 4) = v152;
    *(&v161 - 3) = sub_29E4D7170;
    *(&v161 - 2) = v150;

    os_unfair_lock_lock(v4 + 6);
    v153 = v192;
    sub_29E4D7188(v4 + 2);
    v192 = v153;
    if (v153)
    {
      break;
    }

    v121 &= v121 - 1;
    os_unfair_lock_unlock(v4 + 6);

    sub_29E4A76F0(&v202, &v200);
    v154 = v191;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v204 = *v154;
    v156 = sub_29E4A9F54(&v200, v201);
    MEMORY[0x2A1C7C4A8](v156);
    v158 = (&v161 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v159 + 16))(v158);
    v160 = v193;
    sub_29E4D64C0(*v158, v193, isUniquelyReferenced_nonNull_native, &v204);
    (v182)(v160, v117);
    sub_29E4A1754(&v200);
    *v154 = v204;
    sub_29E4A1754(&v202);
    v123 = v124;
    v116 = v179;
    v118 = v174;
    v122 = v173;
    if (!v121)
    {
      goto LABEL_37;
    }
  }

LABEL_52:
  v111 = (v4 + 24);
LABEL_53:
  os_unfair_lock_unlock(v111);
  __break(1u);
}

uint64_t sub_29E4D30E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 16);
    MEMORY[0x2A1C7C4A8](result);
    os_unfair_lock_lock(v4 + 10);
    sub_29E4D7234(&v4[4]);
    os_unfair_lock_unlock(v4 + 10);
  }

  return result;
}

uint64_t sub_29E4D31B0(uint64_t a1)
{
  v3 = sub_29E4FC560();
  v16 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E4FC580();
  v6 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v9;
  aBlock[4] = sub_29E4D71A8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E4BB1B0;
  aBlock[3] = &unk_2A24E8B28;
  v11 = _Block_copy(aBlock);

  sub_29E4FC570();
  v17 = MEMORY[0x29EDCA190];
  sub_29E4D6114(&qword_2A1A70428, 255, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  v12 = MEMORY[0x29EDCA248];
  sub_29E4D75A8(0, &qword_2A1A6F240, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29E4D71C8(&qword_2A1A6F238, &qword_2A1A6F240, v12);
  sub_29E4FCC70();
  MEMORY[0x29ED8B0B0](0, v8, v5, v11);
  _Block_release(v11);
  (*(v16 + 8))(v5, v3);
  (*(v6 + 8))(v8, v15);
}

uint64_t sub_29E4D34A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29E4C474C(0);
  v12 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *(a1 + 48);
  v11[0] = swift_getObjectType();
  sub_29E4FC2F0();
  v13 = a2;
  sub_29E4C4804(0);
  sub_29E4C4838();
  sub_29E4C4920();
  sub_29E4D6DC8();

  sub_29E4FC0B0();
  v13 = a1;
  type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal();
  sub_29E4D6114(qword_2A1A6F3D0, v9, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal, &protocol conformance descriptor for SharingRelationshipLatestTransactionDatesInputSignal);
  sub_29E4FC280();
  return (*(v6 + 8))(v8, v12);
}

unint64_t sub_29E4D36A0(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v79 = a4;
  v76 = a5;
  v8 = sub_29E4FC3C0();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v73 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v72 = &v70 - v11;
  v12 = sub_29E4FB240();
  v13 = *(v12 - 8);
  v77 = v12;
  v78 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v70 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v70 - v20;
  sub_29E4D75A8(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v23 = MEMORY[0x2A1C7C4A8](v22 - 8);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v23);
  v28 = &v70 - v27;
  if (a3)
  {
    v29 = *(a1 + 8);
    if (*(v29 + 16))
    {
      result = sub_29E49ED7C(v79);
      if (v30)
      {
        sub_29E4A76F0(*(v29 + 56) + 40 * result, v81);
        v31 = sub_29E4FB0D0();
        v32 = [v31 hk_isDatabaseAccessibilityError];

        swift_getObjectType();
        v33 = (v78 + 16);
        if (v32)
        {
          v34 = v72;
          sub_29E4FC0E0();
          v35 = *v33;
          v36 = v33;
          v37 = v77;
          v73 = v36;
          v71 = v35;
          v35(v19, v79, v77);
          v38 = sub_29E4FC3B0();
          v39 = sub_29E4FC940();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *&v80[0] = v70;
            *v40 = 136446210;
            sub_29E4D6114(&qword_2A1A70BC0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
            v41 = sub_29E4FCF60();
            v43 = v42;
            (*(v78 + 8))(v19, v77);
            v44 = sub_29E4F68F4(v41, v43, v80);
            v37 = v77;

            *(v40 + 4) = v44;
            _os_log_impl(&dword_29E494000, v38, v39, "Scheduling retry for fetch and observe for transactions for %{public}s due to database accessibility error", v40, 0xCu);
            v45 = v70;
            sub_29E4A1754(v70);
            MEMORY[0x29ED8BDB0](v45, -1, -1);
            v46 = v40;
            v47 = v78;
            MEMORY[0x29ED8BDB0](v46, -1, -1);
          }

          else
          {

            v47 = v78;
            (*(v78 + 8))(v19, v37);
          }

          (*(v74 + 8))(v34, v75);
          sub_29E4FB6A0();
          sub_29E4FB690();
          sub_29E4A76F0(v81, v80);
          v71(v21, v79, v37);
          v68 = (*(v47 + 80) + 64) & ~*(v47 + 80);
          v69 = swift_allocObject();
          sub_29E498334(v80, v69 + 16);
          *(v69 + 56) = v76;
          (*(v47 + 32))(v69 + v68, v21, v37);

          sub_29E4FB680();
        }

        else
        {
          v51 = v73;
          sub_29E4FC0E0();
          v52 = *v33;
          v53 = a2;
          v54 = v77;
          v52(v16, v79, v77);
          v55 = a2;
          v56 = sub_29E4FC3B0();
          v57 = sub_29E4FC920();
          sub_29E4D724C(v53, 1);
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            *&v80[0] = v79;
            *v58 = 136446466;
            sub_29E4D6114(&qword_2A1A70BC0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
            v59 = sub_29E4FCF60();
            v61 = v60;
            (*(v78 + 8))(v16, v54);
            v62 = sub_29E4F68F4(v59, v61, v80);

            *(v58 + 4) = v62;
            *(v58 + 12) = 2082;
            v81[7] = v53;
            v63 = v53;
            sub_29E4A2CE8(0, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
            v64 = sub_29E4FC700();
            v66 = sub_29E4F68F4(v64, v65, v80);

            *(v58 + 14) = v66;
            _os_log_impl(&dword_29E494000, v56, v57, "Failed to fetch and observe for transactions for %{public}s: %{public}s", v58, 0x16u);
            v67 = v79;
            swift_arrayDestroy();
            MEMORY[0x29ED8BDB0](v67, -1, -1);
            MEMORY[0x29ED8BDB0](v58, -1, -1);
          }

          else
          {

            (*(v78 + 8))(v16, v54);
          }

          (*(v74 + 8))(v51, v75);
        }

        return sub_29E4A1754(v81);
      }
    }
  }

  else
  {
    v81[0] = a2;
    sub_29E4D72C0(0);
    sub_29E4D6114(&qword_2A184B8F0, 255, sub_29E4D72C0, MEMORY[0x29EDC9A88]);
    v48 = sub_29E4FC8F0();
    if (v48)
    {
      v49 = v48;
      sub_29E4FCB10();
    }

    else
    {
      v50 = sub_29E4FB1E0();
      (*(*(v50 - 8) + 56))(v28, 1, 1, v50);
    }

    (*(v78 + 16))(v21, v79, v77);
    sub_29E4D7328(v28, v25);
    sub_29E4D780C(v25, v21);
    sub_29E4D31B0(a1);
    return sub_29E4D7100(v28, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
  }

  return result;
}

uint64_t sub_29E4D3F08(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_29E4A1710(a1, a1[3]);
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, a3, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v6 + 32))(v12 + v11, v8, v5);
  v13 = *(*v9 + 24);
  v16 = *v9;
  v17 = sub_29E4D7480;
  v18 = v12;

  os_unfair_lock_lock((v13 + 24));
  sub_29E4D76A4((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));
}

uint64_t sub_29E4D40B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 16);
    MEMORY[0x2A1C7C4A8](result);
    os_unfair_lock_lock(v4 + 10);
    sub_29E4D7674();
    os_unfair_lock_unlock(v4 + 10);
  }

  return result;
}

uint64_t SharingRelationshipLatestTransactionDatesInputSignal.dependencyConfigurations(for:)()
{
  sub_29E4D7098(0, &qword_2A1A6F0C0, &qword_2A1A70480, MEMORY[0x29EDC3608], MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E4FDE40;
  sub_29E4FB610();
  *(v0 + 56) = sub_29E4FC2E0();
  *(v0 + 64) = sub_29E4D6114(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0], MEMORY[0x29EDC35B8]);
  sub_29E4A197C((v0 + 32));
  sub_29E4FB600();
  return v0;
}

uint64_t sub_29E4D4254(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (*a1)
  {
    [*(a2 + 16) stopQuery_];
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = objc_allocWithZone(MEMORY[0x29EDBADB0]);
  v19 = sub_29E4D722C;
  v20 = v9;
  aBlock = MEMORY[0x29EDCA5F8];
  v16 = 1107296256;
  v17 = sub_29E4D452C;
  v18 = &unk_2A24E8B78;
  v11 = _Block_copy(&aBlock);

  v12 = [v10 initWithHandler_];
  _Block_release(v11);

  v19 = sub_29E4D722C;
  v20 = v9;
  aBlock = MEMORY[0x29EDCA5F8];
  v16 = 1107296256;
  v17 = sub_29E4D452C;
  v18 = &unk_2A24E8BA0;
  v13 = _Block_copy(&aBlock);

  [v12 setUpdateHandler_];
  _Block_release(v13);
  [*(a2 + 16) executeQuery_];

  *a1 = v12;
  return result;
}

void sub_29E4D4438(int a1, uint64_t a2, id a3, void (*a4)(id, uint64_t))
{
  if (a2)
  {
    (a4)(a2, 0, a3);
  }

  else
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v6 = objc_opt_self();
      v7 = sub_29E4FC6B0();
      v5 = [v6 hk:0 error:v7 description:?];

      a3 = 0;
    }

    v8 = a3;
    a4(v5, 1);
  }
}

uint64_t sub_29E4D452C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_29E4A2AD8(0, &qword_2A1A6F178, 0x29EDBADA8);
    v5 = sub_29E4FC7C0();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_29E4D45E4()
{

  return swift_deallocClassInstance();
}

uint64_t SharingRelationshipLatestTransactionDatesInputSignal.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SharingRelationshipLatestTransactionDatesInputSignal.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_29E4D4704()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock(v1 + 10);
  sub_29E4D1360(&v1[4]);

  os_unfair_lock_unlock(v1 + 10);
}

uint64_t sub_29E4D4760()
{
  sub_29E4D7098(0, &qword_2A1A6F0C0, &qword_2A1A70480, MEMORY[0x29EDC3608], MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E4FDE40;
  sub_29E4FB610();
  *(v0 + 56) = sub_29E4FC2E0();
  *(v0 + 64) = sub_29E4D6114(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0], MEMORY[0x29EDC35B8]);
  sub_29E4A197C((v0 + 32));
  sub_29E4FB600();
  return v0;
}

uint64_t sub_29E4D4858(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4D6114(qword_2A1A6F3D0, a2, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal, &protocol conformance descriptor for SharingRelationshipLatestTransactionDatesInputSignal);

  return MEMORY[0x2A1C64680](a1, v3);
}

void sub_29E4D48C4(uint64_t a1)
{
  sub_29E4D75A8(0, &qword_2A1A70698, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_29E4FB240();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_29E4D55BC(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_29E4D7100(v5, &qword_2A1A70698, MEMORY[0x29EDB9C08]);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_29E4D4B10(uint64_t a1, uint64_t a2)
{
  v93 = *MEMORY[0x29EDCA608];
  sub_29E4D75A8(0, &qword_2A1A70698, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = (&v64 - v8);
  v10 = sub_29E4FB240();
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v84 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = (&v64 - v14);
  MEMORY[0x2A1C7C4A8](v13);
  v79 = (&v64 - v17);
  if (!*(a2 + 16))
  {

    return MEMORY[0x29EDCA1A0];
  }

  v65 = v9;
  v67 = v7;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v78 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v86 = (v21 & v18);
  v71 = (63 - v20) >> 6;
  v85 = v16 + 16;
  v76 = (v16 + 48);
  v77 = (v16 + 56);
  v75 = (v16 + 32);
  v81 = (a2 + 56);
  v66 = v16;
  v87 = (v16 + 8);

  v23 = 0;
  v68 = a1;
  for (i = a1 + 56; ; v19 = i)
  {
    v24 = v86;
    v25 = v23;
    if (v86)
    {
LABEL_14:
      v7 = (v24 - 1) & v24;
      v29 = v65;
      (*(v66 + 16))(v65, *(a1 + 48) + *(v66 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v10);
      v30 = 0;
      v27 = v25;
    }

    else
    {
      v26 = v71 <= (v23 + 1) ? v23 + 1 : v71;
      v27 = v26 - 1;
      v28 = v23;
      while (1)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_58;
        }

        if (v25 >= v71)
        {
          break;
        }

        v24 = *(v19 + 8 * v25);
        ++v28;
        if (v24)
        {
          goto LABEL_14;
        }
      }

      v7 = 0;
      v30 = 1;
      v29 = v65;
    }

    v73 = *v77;
    v73(v29, v30, 1, v10);
    v88 = a1;
    v89 = v19;
    v90 = v78;
    v91 = v27;
    v92 = v7;
    v72 = *v76;
    if (v72(v29, 1, v10) == 1)
    {
      sub_29E4D7100(v29, &qword_2A1A70698, MEMORY[0x29EDB9C08]);
      v58 = a1;
      goto LABEL_53;
    }

    v70 = *v75;
    v70(v79, v29, v10);
    v69 = sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v31 = sub_29E4FC650();
    v32 = -1 << *(a2 + 32);
    v23 = v31 & ~v32;
    v25 = v23 >> 6;
    v19 = 1 << v23;
    if (((1 << v23) & v81[v23 >> 6]) != 0)
    {
      break;
    }

    (*v87)(v79, v10);
LABEL_22:
    v23 = v27;
    v86 = v7;
  }

  v64 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = ~v32;
  v33 = *(v66 + 72);
  v82 = *(v66 + 16);
  v83 = v33;
  while (1)
  {
    v82(v15, *(a2 + 48) + v83 * v23, v10);
    v34 = sub_29E4D6114(&qword_2A184B2D0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
    v35 = sub_29E4FC680();
    v86 = *v87;
    v86(v15, v10);
    if (v35)
    {
      break;
    }

    v23 = (v23 + 1) & v80;
    v25 = v23 >> 6;
    v19 = 1 << v23;
    if (((1 << v23) & v81[v23 >> 6]) == 0)
    {
      a1 = v68;
      v86(v79, v10);
      goto LABEL_22;
    }
  }

  v80 = v34;
  v36 = (v86)(v79, v10);
  v37 = *(a2 + 32);
  v64 = ((1 << v37) + 63) >> 6;
  v22 = 8 * v64;
  a1 = v68;
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v65 = &v64;
    MEMORY[0x2A1C7C4A8](v36);
    v39 = &v64 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v81, v38);
    v40 = *&v39[8 * v25] & ~v19;
    v41 = *(a2 + 16);
    v79 = v39;
    *&v39[8 * v25] = v40;
    v42 = v41 - 1;
    v43 = v67;
    v25 = i;
    v44 = v71;
LABEL_26:
    v66 = v42;
    while (v7)
    {
      v45 = v27;
LABEL_38:
      v48 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v82(v43, *(a1 + 48) + (v48 | (v45 << 6)) * v83, v10);
      v49 = 0;
LABEL_39:
      v73(v43, v49, 1, v10);
      v88 = a1;
      v89 = v25;
      v90 = v78;
      v91 = v27;
      v92 = v7;
      if (v72(v43, 1, v10) == 1)
      {
        sub_29E4D7100(v43, &qword_2A1A70698, MEMORY[0x29EDB9C08]);
        a2 = sub_29E4C0394(v79, v64, v66, a2);
        goto LABEL_52;
      }

      v70(v84, v43, v10);
      v50 = sub_29E4FC650();
      v51 = a2;
      v52 = -1 << *(a2 + 32);
      v23 = v50 & ~v52;
      v53 = v23 >> 6;
      v19 = 1 << v23;
      if (((1 << v23) & v81[v23 >> 6]) != 0)
      {
        v82(v15, *(v51 + 48) + v23 * v83, v10);
        v54 = sub_29E4FC680();
        v86(v15, v10);
        if ((v54 & 1) == 0)
        {
          v55 = ~v52;
          do
          {
            v23 = (v23 + 1) & v55;
            v53 = v23 >> 6;
            v19 = 1 << v23;
            if (((1 << v23) & v81[v23 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v82(v15, *(v51 + 48) + v23 * v83, v10);
            v56 = sub_29E4FC680();
            v86(v15, v10);
          }

          while ((v56 & 1) == 0);
        }

        v86(v84, v10);
        v57 = v79[v53];
        v79[v53] = v57 & ~v19;
        a2 = v51;
        a1 = v68;
        v43 = v67;
        v25 = i;
        v44 = v71;
        if ((v57 & v19) != 0)
        {
          v42 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            a2 = MEMORY[0x29EDCA1A0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v86(v84, v10);
        a2 = v51;
        a1 = v68;
        v43 = v67;
        v25 = i;
        v44 = v71;
      }
    }

    if (v44 <= (v27 + 1))
    {
      v46 = v27 + 1;
    }

    else
    {
      v46 = v44;
    }

    v47 = v46 - 1;
    while (1)
    {
      v45 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v45 >= v44)
      {
        v7 = 0;
        v49 = 1;
        v27 = v47;
        goto LABEL_39;
      }

      v7 = *(v25 + 8 * v45);
      ++v27;
      if (v7)
      {
        v27 = v45;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v60 = v22;

    v79 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v79;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v81, v61);
  a2 = sub_29E4D586C(v63, v64, v79, v23, &v88);

  MEMORY[0x29ED8BDB0](v63, -1, -1);
LABEL_52:
  v58 = v88;
LABEL_53:
  sub_29E4C4CA8(v58);
  return a2;
}

uint64_t sub_29E4D55BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  v31 = a1;
  v10 = sub_29E4FC650();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_29E4D6114(&qword_2A184B2D0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v19 = sub_29E4FC680();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_29E4F8E78();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_29E4D5D78(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_29E4D586C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  sub_29E4D75A8(0, &qword_2A1A70698, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_29E4FB240();
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_29E4D7100(v11, &qword_2A1A70698, MEMORY[0x29EDB9C08]);
          v45 = v61;

          return sub_29E4C0394(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
        v35 = sub_29E4FC650();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_29E4D6114(&qword_2A184B2D0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
        v43 = sub_29E4FC680();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x29EDCA1A0];
  }
}

uint64_t sub_29E4D5D78(int64_t a1)
{
  v3 = sub_29E4FB240();
  v4 = *(v3 - 8);
  result = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_29E4FCC80();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
        v24 = sub_29E4FC650();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

void *sub_29E4D6084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();

  return sub_29E4D61C4(a1, a2, a3, sub_29E4D11F8, 0, v11, a5, a6);
}

uint64_t sub_29E4D6114(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_29E4D615C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E4A2AD8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_29E4D61C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v30 = a4;
  v31 = a5;
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v9 = sub_29E4FCA60();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E4FCA30();
  MEMORY[0x2A1C7C4A8](v12);
  v13 = sub_29E4FC580();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v14 = MEMORY[0x29EDCA190];
  v15 = sub_29E4A1068(MEMORY[0x29EDCA190]);
  sub_29E4D760C(0, &qword_2A1A6F130, &type metadata for SharingRelationshipLatestTransactionDatesInputSignal.State);
  v16 = swift_allocObject();
  *(v16 + 40) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = MEMORY[0x29EDCA198];
  *(v16 + 32) = v15;
  a6[2] = v16;
  v23 = sub_29E4A2AD8(0, &qword_2A1A70790, 0x29EDCA548);
  sub_29E4FC570();
  v32 = v14;
  sub_29E4D6114(&qword_2A1A6F1C0, 255, MEMORY[0x29EDCA288], MEMORY[0x29EDCA290]);
  v17 = MEMORY[0x29EDCA288];
  sub_29E4D75A8(0, &qword_2A1A6F228, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29E4D71C8(&qword_2A1A6F220, &qword_2A1A6F228, v17);
  sub_29E4FCC70();
  (*(v24 + 104))(v11, *MEMORY[0x29EDCA2A8], v25);
  v18 = sub_29E4FCA90();
  v19 = v29;
  a6[3] = v26;
  a6[4] = v19;
  v20 = v28;
  a6[5] = v27;
  a6[6] = v20;
  v21 = v31;
  a6[7] = v30;
  a6[8] = v21;
  a6[9] = v18;
  return a6;
}

uint64_t sub_29E4D64C0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_29E4FB240();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Source = type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal.QuerySource();
  v32 = &off_2A24E8A98;
  *&v30 = a1;
  v12 = *a4;
  v14 = sub_29E49ED7C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *a4;
    if (v18)
    {
LABEL_8:
      v21 = (v20[7] + 40 * v14);
      sub_29E4A1754(v21);
      return sub_29E498334(&v30, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_29E4C2E18();
    goto LABEL_7;
  }

  sub_29E4C0708(v17, a3 & 1);
  v23 = sub_29E49ED7C(a2);
  if ((v18 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_29E4FCFB0();
    __break(1u);
    return result;
  }

  v14 = v23;
  v20 = *a4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v25 = sub_29E4A9F54(&v30, Source);
  MEMORY[0x2A1C7C4A8](v25);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  sub_29E4D6738(v14, v11, *v27, v20);
  return sub_29E4A1754(&v30);
}

uint64_t sub_29E4D6738(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  Source = type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal.QuerySource();
  v16 = &off_2A24E8A98;
  *&v14 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29E4FB240();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_29E498334(&v14, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_29E4D6814(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E4FCCB0())
  {
    v4 = sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
    v5 = sub_29E4D615C(&qword_2A1A6F1E0, &qword_2A1A6F1E8, 0x29EDBAD78, MEMORY[0x29EDCA2F0]);
    result = MEMORY[0x29ED8AEF0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x29ED8B3B0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_29E4F6E84(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_29E4FCCB0();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29E4D6980(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKSharingMessageDirection(0);
  v4 = v3;
  v5 = sub_29E4D6114(&qword_2A184B8D8, 255, type metadata accessor for HKSharingMessageDirection, &unk_29E4FE944);
  result = MEMORY[0x29ED8AEF0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_29E4F7258(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_29E4D6A30(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKSharingStatus(0);
  v4 = v3;
  v5 = sub_29E4D6114(&qword_2A184B8D0, 255, type metadata accessor for HKSharingStatus, &unk_29E4FE984);
  result = MEMORY[0x29ED8AEF0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_29E4F722C(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_29E4D6AE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x29ED8AEF0](v2, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_29E4F70DC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_29E4D6B78(uint64_t a1)
{
  v2 = sub_29E4FB240();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_29E4D6114(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  result = MEMORY[0x29ED8AEF0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_29E4F7394(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_29E4D6DC8()
{
  result = qword_2A1A6F288;
  if (!qword_2A1A6F288)
  {
    sub_29E4C4804(255);
    sub_29E4D6114(&unk_2A1A706F0, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F288);
  }

  return result;
}

uint64_t sub_29E4D6EA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_29E4D6F00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_29E4D6F60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29E4D6FA8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_29E4D7010(uint64_t a1)
{
  sub_29E4D7098(0, &qword_2A184B8E0, &qword_2A184B790, &protocol descriptor for SummaryTransactionSource, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E4D7098(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E4A2CE8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E4D7100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4D75A8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4D71B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E4D71C8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E4D75A8(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E4D724C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_29E4D7258()
{
  v1 = *(sub_29E4FB240() - 8);
  v2 = *(v0 + 56);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_29E4D3F08((v0 + 16), v2, v3);
}

void sub_29E4D72C0(uint64_t a1)
{
  if (!qword_2A184B8E8)
  {
    sub_29E4A2AD8(255, &qword_2A1A6F178, 0x29EDBADA8);
    v1 = sub_29E4FC800();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B8E8);
    }
  }
}

uint64_t sub_29E4D7328(uint64_t a1, uint64_t a2)
{
  sub_29E4D75A8(0, qword_2A1A70838, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4D73BC()
{
  v1 = sub_29E4FB240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E4D7498(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, uint64_t, uint64_t))
{
  v6 = *(sub_29E4FB240() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2 & 1, v7, v8);
}

void sub_29E4D7554(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    [*(v1 + 16) stopQuery_];

    *a1 = 0;
  }
}

void sub_29E4D75A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E4D760C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v4 = sub_29E4FCDC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_29E4D76C4(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x29EDCA190];
  while (1)
  {
    v15 = *v6;

    a1(&v14, &v15);
    if (v3)
    {
      break;
    }

    if (v14)
    {
      v13 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_29E4A8244(0, v7[2] + 1, 1, v7);
      }

      v9 = v7[2];
      v8 = v7[3];
      v10 = v13;
      if (v9 >= v8 >> 1)
      {
        v11 = sub_29E4A8244((v8 > 1), v9 + 1, 1, v7);
        v10 = v13;
        v7 = v11;
      }

      v7[2] = v9 + 1;
      *&v7[2 * v9 + 4] = v10;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t sub_29E4D780C(uint64_t a1, uint64_t a2)
{
  sub_29E4DC254(0, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_29E4FB1E0();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    v12 = MEMORY[0x29EDB9BC8];
    sub_29E4DBD7C(a1, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
    sub_29E4F2B3C(a2, v7);
    v13 = sub_29E4FB240();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_29E4DBD7C(v7, qword_2A1A70838, v12);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_29E4C2214(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_29E4FB240();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_29E4D7A54(uint64_t a1, uint64_t a2)
{
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_29E4FB910();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    v12 = MEMORY[0x29EDC1958];
    sub_29E4DBD7C(a1, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
    sub_29E4F2C60(a2, v7);
    v13 = sub_29E4FB240();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_29E4DBD7C(v7, &unk_2A1A705A0, v12);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_29E4C2258(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_29E4FB240();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_29E4D7C9C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_29E49ED7C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_29E4C3090();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_29E4FB240();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_29E4C19DC(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_29E4D7D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_29E49ED7C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29E4C3348();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_29E4FB240();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_29E4FB910();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_29E4C1D04(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_29E4FB910();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_29E4D7F04()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v1 = objc_allocWithZone(MEMORY[0x29EDBAAB0]);
  v2 = v0;
  v3 = [v1 initWithHealthStore_];
  v4 = [objc_allocWithZone(MEMORY[0x29EDBACE8]) initWithHealthStore_];

  type metadata accessor for EndSharingRelationshipManager();
  swift_allocObject();
  v5 = sub_29E4DB688(v3, v4);

  qword_2A1A70C98 = v5;
}

uint64_t sub_29E4D7FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a1 + 8);
  v8 = v7[2];
  v9 = MEMORY[0x29EDCA190];
LABEL_2:
  v10 = &v7[2 * v6 + 5];
  while (v8 != v6)
  {
    if (v6 >= v7[2])
    {
      __break(1u);
LABEL_20:
      v7 = sub_29E4A80F4(0, v7[2] + 1, 1, v7);
      goto LABEL_16;
    }

    ++v6;
    v11 = v10 + 2;
    v12 = *(v10 - 1);
    v3 = *v10;

    v12(&v27, v13);

    v10 = v11;
    if (v27)
    {
      v26 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_29E4A8114(0, v9[2] + 1, 1, v9);
      }

      v15 = v9[2];
      v14 = v9[3];
      v3 = v15 + 1;
      v16 = v26;
      if (v15 >= v14 >> 1)
      {
        v17 = sub_29E4A8114((v14 > 1), v15 + 1, 1, v9);
        v16 = v26;
        v9 = v17;
      }

      v9[2] = v3;
      *&v9[2 * v15 + 4] = v16;
      goto LABEL_2;
    }
  }

  v18 = v9[2] + 1;
  v19 = 4;
  while (--v18)
  {
    v20 = v9[v19];
    v19 += 2;
    if (v20 == a2)
    {
    }
  }

  v3 = swift_allocObject();
  *(v3 + 24) = a3;
  swift_unknownObjectWeakInit();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v23 = v7[2];
  v22 = v7[3];
  if (v23 >= v22 >> 1)
  {
    v7 = sub_29E4A80F4((v22 > 1), v23 + 1, 1, v7);
  }

  v7[2] = v23 + 1;
  v24 = &v7[2 * v23];
  v24[4] = sub_29E4DBD30;
  v24[5] = v3;

  *(a1 + 8) = v7;
  return result;
}

unint64_t sub_29E4D81F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = sub_29E4DBA04((a1 + 8), a2);
  result = swift_unknownObjectRelease();
  v7 = *(*(a1 + 8) + 16);
  if (v7 >= v5)
  {
    return sub_29E4DBC70(v5, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E4D826C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29E4FB240();
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v89 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v96 = &v85 - v7;
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v104 = &v85 - v9;
  v10 = sub_29E4FB930();
  v102 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v101 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E4FB910();
  v109 = *(v12 - 8);
  v110 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v108 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E4FBFE0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v85 - v19;
  v21 = sub_29E4FC3C0();
  v99 = *(v21 - 8);
  v100 = v21;
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC370();
  v24 = *(v15 + 16);
  v106 = a1;
  v24(v20, a1, v14);
  v25 = sub_29E4FC3B0();
  v91 = sub_29E4FC940();
  v26 = os_log_type_enabled(v25, v91);
  v90 = v3;
  v95 = v14;
  v105 = v15;
  v94 = v18;
  v92 = v15 + 16;
  v103 = v24;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v111 = v86;
    aBlock = v3;
    *v27 = 136315395;
    swift_getMetatypeMetadata();
    v28 = sub_29E4FC700();
    v30 = sub_29E4F68F4(v28, v29, &v111);
    v87 = v10;
    v31 = v30;

    *(v27 + 4) = v31;
    *(v27 + 12) = 2081;
    v24(v18, v20, v14);
    v32 = sub_29E4FC700();
    v34 = v33;
    (*(v105 + 8))(v20, v14);
    v35 = sub_29E4F68F4(v32, v34, &v111);
    v10 = v87;

    *(v27 + 14) = v35;
    _os_log_impl(&dword_29E494000, v25, v91, "[%s]: Starting to end sharing relationship for %{private}s. Updating the profile's endSharingRelationshipState to endingInProgress.", v27, 0x16u);
    v36 = v86;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v36, -1, -1);
    MEMORY[0x29ED8BDB0](v27, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v20, v14);
  }

  (*(v99 + 8))(v23, v100);
  (*(v102 + 104))(v101, *MEMORY[0x29EDC19D8], v10);
  v37 = v108;
  sub_29E4FB8F0();
  v38 = v109;
  v39 = v110;
  v40 = *(v109 + 16);
  v41 = v104;
  v40(v104, v37, v110);
  v42 = *(v38 + 56);
  v42(v41, 0, 1, v39);
  sub_29E4D8E20(v106, v41);
  v43 = MEMORY[0x29EDC1958];
  sub_29E4DBD7C(v41, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v40(v41, v37, v39);
  v42(v41, 0, 1, v39);
  sub_29E4D8FD8();
  sub_29E4DBD7C(v41, &unk_2A1A705A0, v43);
  v44 = sub_29E4FBFA0();
  if (v44 == 1)
  {
    v74 = v106;
    v75 = *(v107 + 32);
    v76 = v96;
    sub_29E4FBFC0();
    v65 = sub_29E4FB210();
    (*(v97 + 8))(v76, v98);
    v77 = swift_allocObject();
    swift_weakInit();
    v78 = v94;
    v79 = v74;
    v80 = v95;
    v103(v94, v79, v95);
    v81 = v105;
    v82 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = v77;
    (*(v81 + 32))(v83 + v82, v78, v80);
    v116 = sub_29E4DC2C0;
    v117 = v83;
    aBlock = MEMORY[0x29EDCA5F8];
    v113 = 1107296256;
    v114 = sub_29E4F9D10;
    v115 = &unk_2A24E8D18;
    v73 = _Block_copy(&aBlock);

    [v75 revokeInvitationWithUUID:v65 completion:v73];
    goto LABEL_10;
  }

  v45 = v103;
  if (v44 == 2)
  {
    v62 = v106;
    v63 = *(v107 + 32);
    v64 = v96;
    sub_29E4FBFC0();
    v65 = sub_29E4FB210();
    (*(v97 + 8))(v64, v98);
    v66 = swift_allocObject();
    swift_weakInit();
    v67 = v94;
    v68 = v62;
    v69 = v95;
    v45(v94, v68, v95);
    v70 = v105;
    v71 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = v66;
    (*(v70 + 32))(v72 + v71, v67, v69);
    v116 = sub_29E4DBDF0;
    v117 = v72;
    aBlock = MEMORY[0x29EDCA5F8];
    v113 = 1107296256;
    v114 = sub_29E4F9D10;
    v115 = &unk_2A24E8D68;
    v73 = _Block_copy(&aBlock);

    [v63 leaveInvitationWithUUID:v65 completion:v73];
LABEL_10:
    _Block_release(v73);

    return (*(v109 + 8))(v108, v110);
  }

  if (v44 == 3)
  {
    v46 = v96;
    v47 = v106;
    sub_29E4FBFC0();
    v48 = v94;
    v49 = v95;
    v45(v94, v47, v95);
    v50 = v105;
    v51 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v52 = swift_allocObject();
    v53 = v107;
    *(v52 + 16) = v107;
    (*(v50 + 32))(v52 + v51, v48, v49);
    v54 = *(v53 + 24);
    v56 = v97;
    v55 = v98;
    v57 = v89;
    (*(v97 + 16))(v89, v46, v98);
    v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v59 = (v88 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_29E4DBE6C;
    *(v60 + 24) = v52;
    (*(v56 + 32))(v60 + v58, v57, v55);
    *(v60 + v59) = v90;
    v116 = sub_29E4DBEE0;
    v117 = v60;
    aBlock = MEMORY[0x29EDCA5F8];
    v113 = 1107296256;
    v114 = sub_29E4E5C54;
    v115 = &unk_2A24E8DE0;
    v61 = _Block_copy(&aBlock);

    [v54 fetchAllProfilesWithCompletion_];
    _Block_release(v61);

    (*(v56 + 8))(v46, v55);
  }

  return (*(v109 + 8))(v108, v110);
}

uint64_t sub_29E4D8E20(uint64_t a1, uint64_t a2)
{
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v13[-v5];
  v7 = sub_29E4FB240();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E4FBFC0();
  v11 = *(v2 + 40);
  v14 = v10;
  os_unfair_lock_lock(v11 + 10);
  sub_29E4DC238(&v11[4], &v15);
  os_unfair_lock_unlock(v11 + 10);
  (*(v8 + 8))(v10, v7);
  sub_29E4DC128(a2, v6);
  sub_29E4FC460();
  if ((sub_29E4FBFA0() - 1) <= 1)
  {
    sub_29E4FC450();
  }
}

uint64_t sub_29E4D8FD8()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock(v1 + 10);
  sub_29E4DC10C(&v1[4], &v7);
  os_unfair_lock_unlock(v1 + 10);
  v2 = *(v7 + 16);
  if (v2)
  {
    v3 = v7 + 40;
    do
    {
      v4 = *(v3 - 8);

      v4(v5);

      v3 += 16;
      --v2;
    }

    while (v2);
  }
}

void sub_29E4D9078(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E4FBFE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  if (a1)
  {
    v9 = *(a2 + 16);
    (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    (*(v7 + 32))(v11 + v10, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    aBlock[4] = sub_29E4DC074;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E4F9D10;
    aBlock[3] = &unk_2A24E8E30;
    v12 = _Block_copy(aBlock);
    v13 = a1;

    [v9 tearDownHealthSharingForProfile:v13 completion:v12];
    _Block_release(v12);
  }
}

void sub_29E4D9250(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v86 = a1;
  v75 = *v3;
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v82 = &v70[-v8];
  v9 = sub_29E4FB930();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v76 = &v70[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_29E4FB910();
  v80 = *(v11 - 8);
  v81 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v79 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_29E4FBFE0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v70[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v74 = &v70[-v19];
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v70[-v20];
  v22 = sub_29E4FC3C0();
  v84 = *(v22 - 8);
  v85 = v22;
  v23 = MEMORY[0x2A1C7C4A8](v22);
  v25 = &v70[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v70[-v26];
  v28 = (v14 + 16);
  if (a2)
  {
    sub_29E4FC370();
    v29 = *v28;
    (*v28)(v21, v86, v13);
    v30 = sub_29E4FC3B0();
    v31 = sub_29E4FC940();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      LODWORD(v81) = v31;
      v33 = v32;
      v82 = swift_slowAlloc();
      v87 = v82;
      *v33 = 136446466;
      v88 = v75;
      swift_getMetatypeMetadata();
      v34 = sub_29E4FC700();
      v83 = v4;
      v36 = sub_29E4F68F4(v34, v35, &v87);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      v29(v74, v21, v13);
      v37 = sub_29E4FC700();
      v39 = v38;
      (*(v14 + 8))(v21, v13);
      v40 = sub_29E4F68F4(v37, v39, &v87);
      v4 = v83;

      *(v33 + 14) = v40;
      _os_log_impl(&dword_29E494000, v30, v81, "[%{public}s]: Successfully ended sharing relationship with %s", v33, 0x16u);
      v41 = v82;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v41, -1, -1);
      MEMORY[0x29ED8BDB0](v33, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v21, v13);
    }

    v63 = (*(v84 + 8))(v27, v85);
    v64 = v4[5];
    MEMORY[0x2A1C7C4A8](v63);
    *&v70[-16] = v86;
    os_unfair_lock_lock(v64 + 10);
    sub_29E4DC0F0();
    os_unfair_lock_unlock(v64 + 10);
  }

  else
  {
    v83 = v4;
    sub_29E4FC370();
    v42 = *v28;
    (*v28)(v17, v86, v13);
    v43 = a3;
    v44 = sub_29E4FC3B0();
    v45 = sub_29E4FC920();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v72 = v44;
      v47 = v46;
      v73 = swift_slowAlloc();
      v87 = v73;
      *v47 = 136446722;
      v88 = v75;
      swift_getMetatypeMetadata();
      v48 = sub_29E4FC700();
      v50 = sub_29E4F68F4(v48, v49, &v87);
      v75 = a3;
      v71 = v45;
      v51 = v50;

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      v42(v74, v17, v13);
      v52 = sub_29E4FC700();
      v54 = v53;
      (*(v14 + 8))(v17, v13);
      v55 = v86;
      v56 = sub_29E4F68F4(v52, v54, &v87);
      a3 = v75;

      *(v47 + 14) = v56;
      *(v47 + 22) = 2082;
      v88 = a3;
      v57 = a3;
      sub_29E4DC254(0, &qword_2A184B908, sub_29E4AD188);
      v58 = sub_29E4FC700();
      v60 = sub_29E4F68F4(v58, v59, &v87);

      *(v47 + 24) = v60;
      v61 = v72;
      _os_log_impl(&dword_29E494000, v72, v71, "[%{public}s]: Failed to tear down Health sharing for profile %{public}s: %{public}s", v47, 0x20u);
      v62 = v73;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v62, -1, -1);
      MEMORY[0x29ED8BDB0](v47, -1, -1);

      (*(v84 + 8))(v25, v85);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
      (*(v84 + 8))(v25, v85);
      v55 = v86;
    }

    (*(v77 + 104))(v76, *MEMORY[0x29EDC19D0], v78);
    v65 = a3;
    v66 = v79;
    sub_29E4FB8F0();
    v68 = v80;
    v67 = v81;
    v69 = v82;
    (*(v80 + 16))(v82, v66, v81);
    (*(v68 + 56))(v69, 0, 1, v67);
    sub_29E4D8E20(v55, v69);
    sub_29E4DBD7C(v69, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
    (*(v68 + 8))(v66, v67);
  }
}

uint64_t sub_29E4D9AC8(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29E4D9250(a4, a1 & 1, a2);
  }

  return result;
}

uint64_t sub_29E4D9B44()
{
  v0 = sub_29E4FB240();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FBFC0();
  sub_29E4D7C9C(v3);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_29E4D9C2C(uint64_t a1)
{
  v39 = *v1;
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_29E4FBFE0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v34 - v10;
  v12 = sub_29E4FC3C0();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC370();
  v16 = *(v7 + 16);
  v40 = a1;
  v16(v11, a1, v6);
  v17 = sub_29E4FC3B0();
  v37 = sub_29E4FC940();
  if (os_log_type_enabled(v17, v37))
  {
    v18 = swift_slowAlloc();
    v36 = v12;
    v19 = v18;
    v35 = swift_slowAlloc();
    v41[0] = v35;
    *v19 = 136446466;
    v41[1] = v39;
    swift_getMetatypeMetadata();
    v20 = sub_29E4FC700();
    v34 = v17;
    v22 = sub_29E4F68F4(v20, v21, v41);
    v39 = v13;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v16(v38, v11, v6);
    v24 = sub_29E4FC700();
    v26 = v25;
    (*(v7 + 8))(v11, v6);
    v27 = sub_29E4F68F4(v24, v26, v41);

    *(v19 + 14) = v27;
    v28 = v34;
    _os_log_impl(&dword_29E494000, v34, v37, "[%{public}s]: Clearing end sharing relationship state for %s", v19, 0x16u);
    v29 = v35;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v29, -1, -1);
    MEMORY[0x29ED8BDB0](v19, -1, -1);

    (*(v39 + 8))(v15, v36);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
    (*(v13 + 8))(v15, v12);
  }

  v30 = sub_29E4FB910();
  v31 = *(*(v30 - 8) + 56);
  v31(v5, 1, 1, v30);
  sub_29E4D8E20(v40, v5);
  v32 = MEMORY[0x29EDC1958];
  sub_29E4DBD7C(v5, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v31(v5, 1, 1, v30);
  sub_29E4D8FD8();
  return sub_29E4DBD7C(v5, &unk_2A1A705A0, v32);
}

uint64_t sub_29E4DA0B4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_29E4FC3C0();
  MEMORY[0x2A1C7C4A8](v3);
  v4 = sub_29E4FAFA0();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E4FBFE0();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FAF80();
  sub_29E4FBFD0();
  (*(v6 + 32))(a2, v8, v5);
  return (*(v6 + 56))(a2, 0, 1, v5);
}

void *sub_29E4DA4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v25 = a3;
  v27 = a1;
  v26 = a4;
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v10 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v24 - v13;
  v15 = sub_29E4FB910();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4DC128(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = MEMORY[0x29EDC1958];
    sub_29E4DBD7C(v14, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
    v20 = v25;
    sub_29E4FBFC0();
    sub_29E4D7D64(v8, v12);
    (*(v6 + 8))(v8, v5);
    v21 = sub_29E4DBD7C(v12, &unk_2A1A705A0, v19);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v20 = v25;
    sub_29E4FBFC0();
    (*(v16 + 16))(v12, v18, v15);
    (*(v16 + 56))(v12, 0, 1, v15);
    sub_29E4D7A54(v12, v8);
    v21 = (*(v16 + 8))(v18, v15);
  }

  MEMORY[0x2A1C7C4A8](v21);
  *(&v24 - 2) = v20;
  result = sub_29E4D76C4(sub_29E4DC1A8, (&v24 - 4), v22);
  *v26 = result;
  return result;
}

void *sub_29E4DA81C@<X0>(void *(**a1)(__int128 *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = sub_29E4FBFE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  result = (*a1)(&v16, v9);
  if (v16)
  {
    v11 = *(v7 + 16);
    v15 = v16;
    v11(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v15;
    result = (*(v7 + 32))(v13 + v12, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v14 = sub_29E4DC1C4;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *a3 = v14;
  a3[1] = v13;
  return result;
}

uint64_t sub_29E4DA98C()
{
  v0 = sub_29E4FB240();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FBFC0();
  sub_29E4AA264();
  return (*(v1 + 8))(v3, v0);
}

void sub_29E4DAA68(unint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  v49 = a4;
  v50 = a3;
  v10 = sub_29E4FB240();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29E4FC3C0();
  v14 = *(v48 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v48);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v20 = &v46 - v19;
  if (a1)
  {
    MEMORY[0x2A1C7C4A8](v18);
    *(&v46 - 2) = a5;
    v21 = sub_29E4E5B40(sub_29E4DBF90, (&v46 - 4), a1);
    if (v21)
    {
      v22 = v21;
      v50();

      return;
    }

    sub_29E4FC370();
    (*(v11 + 16))(v13, a5, v10);
    v35 = sub_29E4FC3B0();
    v36 = sub_29E4FC930();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      v52 = a6;
      *v37 = 136446466;
      swift_getMetatypeMetadata();
      v38 = sub_29E4FC700();
      v40 = sub_29E4F68F4(v38, v39, &v51);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2082;
      v41 = sub_29E4FB200();
      v43 = v42;
      (*(v11 + 8))(v13, v10);
      v44 = sub_29E4F68F4(v41, v43, &v51);

      *(v37 + 14) = v44;
      _os_log_impl(&dword_29E494000, v35, v36, "[%{public}s]: Failed to find a profile with UUID: %{public}s", v37, 0x16u);
      v45 = v47;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v45, -1, -1);
      MEMORY[0x29ED8BDB0](v37, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    (*(v14 + 8))(v20, v48);
  }

  else
  {
    sub_29E4FC370();
    v23 = a2;
    v24 = sub_29E4FC3B0();
    v25 = sub_29E4FC920();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v27;
      v52 = a6;
      *v26 = 136446466;
      swift_getMetatypeMetadata();
      v28 = sub_29E4FC700();
      v30 = sub_29E4F68F4(v28, v29, &v51);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v52 = a2;
      v31 = a2;
      sub_29E4DC254(0, &qword_2A184B908, sub_29E4AD188);
      v32 = sub_29E4FC700();
      v34 = sub_29E4F68F4(v32, v33, &v51);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_29E494000, v24, v25, "[%{public}s]: Failed to fetch profiles: %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v27, -1, -1);
      MEMORY[0x29ED8BDB0](v26, -1, -1);
    }

    (*(v14 + 8))(v17, v48);
  }

  (v50)(0);
}

uint64_t sub_29E4DAF48(id *a1, uint64_t a2)
{
  v3 = sub_29E4FB240();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 identifier];
  sub_29E4FB230();

  v8 = sub_29E4FB220();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_29E4DB074(uint64_t a1, const char *a2, void (*a3)(void))
{
  v33 = a2;
  v5 = v3;
  v36 = a1;
  v6 = *v3;
  sub_29E4DC254(0, &qword_2A184B900, MEMORY[0x29EDC2B28]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_29E4FBFE0();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E4FC3C0();
  v34 = *(v14 - 8);
  v35 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC370();
  v17 = sub_29E4FC3B0();
  v18 = sub_29E4FC940();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v5;
    v20 = v19;
    v30 = swift_slowAlloc();
    v37[0] = v30;
    v37[1] = v6;
    *v20 = 136446210;
    swift_getMetatypeMetadata();
    v21 = sub_29E4FC700();
    v31 = v10;
    v23 = v13;
    v24 = v11;
    v25 = a3;
    v26 = sub_29E4F68F4(v21, v22, v37);
    v10 = v31;

    *(v20 + 4) = v26;
    a3 = v25;
    v11 = v24;
    v13 = v23;
    _os_log_impl(&dword_29E494000, v17, v18, v33, v20, 0xCu);
    v27 = v30;
    sub_29E4A1754(v30);
    MEMORY[0x29ED8BDB0](v27, -1, -1);
    MEMORY[0x29ED8BDB0](v20, -1, -1);
  }

  (*(v34 + 8))(v16, v35);
  sub_29E4DA0B4(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_29E4DBD7C(v9, &qword_2A184B900, MEMORY[0x29EDC2B28]);
  }

  (*(v11 + 32))(v13, v9, v10);
  a3(v13);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_29E4DB418(uint64_t a1, uint64_t a2, void *a3, const char *a4, void (*a5)(void), ...)
{
  v7 = a3;

  sub_29E4DB074(v7, a4, a5);
}

uint64_t sub_29E4DB480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  if (*(v9 + 16) && (v10 = sub_29E49ED7C(a2), (v11 & 1) != 0))
  {
    *a3 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v13 = sub_29E4FB910();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_29E4A2534(0);
    swift_allocObject();
    v14 = sub_29E4FC480();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a1 + 16);
    result = sub_29E4C24C8(v14, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 16) = v17;
    *a3 = v14;
  }

  return result;
}

uint64_t sub_29E4DB5E8()
{

  return swift_deallocClassInstance();
}

void *sub_29E4DB688(void *a1, void *a2)
{
  v3 = v2;
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v24 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v10 = [objc_allocWithZone(MEMORY[0x29EDBAE38]) initWithHealthStore_];

  v3[4] = v10;
  v11 = MEMORY[0x29EDCA190];
  v12 = sub_29E4A0B9C(MEMORY[0x29EDCA190]);
  v13 = sub_29E4A0DFC(v11);
  sub_29E4DB8D8(0);
  v14 = swift_allocObject();
  *(v14 + 40) = 0;
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  v3[5] = v14;
  v15 = sub_29E4FB910();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_29E4A2534(0);
  swift_allocObject();
  v3[6] = sub_29E4FC480();
  v3[2] = a1;
  v3[3] = a2;
  v16 = objc_opt_self();
  v17 = a1;
  v18 = a2;
  v19 = [v16 defaultCenter];
  v20 = sub_29E4FCAA0();
  [v19 addObserver:v3 selector:sel_endSharingRelationshipRequested_ name:v20 object:0];

  v21 = [v16 defaultCenter];
  v22 = sub_29E4FCAB0();
  [v21 addObserver:v3 selector:sel_endSharingRelationshipFailureAcknowledged_ name:v22 object:0];

  return v3;
}

void sub_29E4DB8D8(uint64_t a1)
{
  if (!qword_2A1A6F150)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_29E4FCDC0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F150);
    }
  }
}

uint64_t sub_29E4DB938(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = a1 + 40; ; i += 16)
  {
    v6 = *(i - 8);

    v6(&v10, v7);
    v8 = v10;

    if (v8)
    {
      swift_unknownObjectRelease();
      if (v8 == a2)
      {
        break;
      }
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_29E4DBA04(uint64_t *a1, uint64_t a2)
{
  v21 = a1;
  v4 = *a1;
  result = sub_29E4DB938(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return v4[2];
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = v4 + 2;
    v9 = v4[2];
    if (v8 == v9)
    {
      return v7;
    }

    v11 = 2 * result;
    while (v8 < v9)
    {
      v12 = &v4[v11];
      v13 = v4[v11 + 6];

      v13(&v20, v14);
      v15 = v20;

      if (!v15 || (result = swift_unknownObjectRelease(), v15 != a2))
      {
        if (v8 != v7)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v7 >= *v10)
          {
            goto LABEL_24;
          }

          if (v8 >= *v10)
          {
            goto LABEL_25;
          }

          v17 = v12[6];
          v16 = v12[7];
          v19 = *&v4[2 * v7 + 4];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_29E4DB674(v4);
          }

          v18 = &v4[2 * v7];
          v18[4] = v17;
          v18[5] = v16;

          if (v8 >= v4[2])
          {
            goto LABEL_26;
          }

          *&v4[v11 + 6] = v19;

          *v21 = v4;
        }

        ++v7;
      }

      ++v8;
      v10 = v4 + 2;
      v9 = v4[2];
      v11 += 2;
      if (v8 == v9)
      {
        return v7;
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
  }

  __break(1u);
  return result;
}

unint64_t sub_29E4DBBAC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_29E4AA100();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_29E4DBC70(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_29E4A80F4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_29E4DBBAC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_29E4DBD30@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 24);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_29E4DBD7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4DC254(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4DBDD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E4DBE6C(void *a1)
{
  v3 = *(sub_29E4FBFE0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_29E4D9078(a1, v4, v5);
}

void sub_29E4DBEE0(unint64_t a1, void *a2)
{
  v5 = *(sub_29E4FB240() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29E4DAA68(a1, a2, v7, v8, v2 + v6, v9);
}

uint64_t sub_29E4DBFB0()
{
  v1 = sub_29E4FBFE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E4DC128(uint64_t a1, uint64_t a2)
{
  sub_29E4DC254(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4DC1C4()
{
  sub_29E4FBFE0();

  return sub_29E4DA98C();
}

void sub_29E4DC254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E4FCC30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E4DC2C4(void *a1)
{
  sub_29E4DD46C(0, &qword_2A184B928, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4DD418();
  sub_29E4FD080();
  v9[15] = 0;
  sub_29E4FB7F0();
  sub_29E4DD538(&qword_2A1A705F0, MEMORY[0x29EDC16F8], MEMORY[0x29EDC1700]);
  sub_29E4FCF50();
  if (!v1)
  {
    type metadata accessor for CloudSyncResolutionInfo(0);
    v9[14] = 1;
    sub_29E4FB1E0();
    sub_29E4DD538(&qword_2A1A70700, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29E4FCF50();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29E4DC4D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_29E4FB1E0();
  v19 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E4FB7F0();
  MEMORY[0x2A1C7C4A8](v23);
  v24 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4DD46C(0, &qword_2A184B938, MEMORY[0x29EDC9E80]);
  v25 = v7;
  v21 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for CloudSyncResolutionInfo(0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A1710(a1, a1[3]);
  sub_29E4DD418();
  sub_29E4FD070();
  if (v2)
  {
    return sub_29E4A1754(a1);
  }

  v18 = a1;
  v13 = v12;
  v14 = v21;
  v15 = v22;
  v27 = 0;
  sub_29E4DD538(&qword_2A1A705E8, MEMORY[0x29EDC16F8], MEMORY[0x29EDC1708]);
  v16 = v24;
  sub_29E4FCED0();
  sub_29E4DD4D0(v16, v13, MEMORY[0x29EDC16F8]);
  v26 = 1;
  sub_29E4DD538(&unk_2A1A706E0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  sub_29E4FCED0();
  (*(v14 + 8))(v9, v25);
  (*(v19 + 32))(v13 + *(v10 + 20), v5, v15);
  sub_29E4DD580(v13, v20);
  sub_29E4A1754(v18);
  return sub_29E4DD5E4(v13, type metadata accessor for CloudSyncResolutionInfo);
}

uint64_t sub_29E4DC8E4()
{
  if (*v0)
  {
    return 1702125924;
  }

  else
  {
    return 0x6574617473;
  }
}

uint64_t sub_29E4DC914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_29E4FCF80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29E4FCF80();

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

uint64_t sub_29E4DC9EC(uint64_t a1)
{
  v2 = sub_29E4DD418();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4DCA28(uint64_t a1)
{
  v2 = sub_29E4DD418();

  return MEMORY[0x2A1C73280](a1, v2);
}

CFTypeID sub_29E4DCA94()
{
  result = CFDataGetTypeID();
  qword_2A184BCE0 = result;
  return result;
}

uint64_t sub_29E4DCAB4@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_29E4FB240();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v65 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4B0B1C(0);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v56 - v8;
  v10 = sub_29E4FB130();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 24);
  v14 = *(v1 + 32);
  v16 = objc_allocWithZone(MEMORY[0x29EDB93F8]);

  v17 = sub_29E4DD244(v15, v14, 0);
  v57 = 0;
  v58 = v1;
  v59 = v13;
  v60 = v14;
  v18 = v63;
  v19 = v64;
  v61 = v11;
  v62 = v10;
  v20 = v17;
  v21 = [v17 dataContainerURL];

  if (v21)
  {
    sub_29E4FB110();

    v22 = v61;
    v23 = *(v61 + 56);
    v24 = v7;
    v25 = 0;
  }

  else
  {
    v22 = v61;
    v23 = *(v61 + 56);
    v24 = v7;
    v25 = 1;
  }

  v26 = v62;
  v23(v24, v25, 1, v62);
  v27 = v65;
  sub_29E4DD4D0(v7, v9, sub_29E4B0B1C);
  v28 = (*(v22 + 48))(v9, 1, v26);
  v29 = v66;
  if (v28 == 1)
  {
    sub_29E4DD5E4(v9, sub_29E4B0B1C);
    v30 = type metadata accessor for CloudSyncResolutionInfo(0);
    v31 = *(*(v30 - 8) + 56);
    v32 = v29;
LABEL_6:
    v33 = 1;
    return v31(v32, v33, 1, v30);
  }

  v35 = v59;
  (*(v22 + 32))(v59, v9, v26);
  v36 = [*(v58 + 16) identifier];
  sub_29E4FB230();

  v37 = v26;
  v38 = sub_29E4FB200();
  v39 = v27;
  v41 = v40;
  (*(v18 + 8))(v39, v19);
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_29E4FCD70();
  MEMORY[0x29ED8AD70](0xD00000000000001DLL, 0x800000029E5028B0);
  MEMORY[0x29ED8AD70](v38, v41);

  MEMORY[0x29ED8AD70](0xD00000000000001CLL, 0x800000029E5028D0);
  v42 = sub_29E4FC6B0();

  v43 = sub_29E4FC6B0();
  sub_29E4FB120();
  v44 = sub_29E4FC6B0();

  v45 = v22;
  v46 = _CFPreferencesCopyAppValueWithContainer();

  if (!v46)
  {
    (*(v45 + 8))(v35, v37);
    v30 = type metadata accessor for CloudSyncResolutionInfo(0);
    v31 = *(*(v30 - 8) + 56);
    v32 = v66;
    goto LABEL_6;
  }

  v47 = CFGetTypeID(v46);
  v48 = v66;
  if (qword_2A184B1C8 != -1)
  {
    v55 = v47;
    swift_once();
    v47 = v55;
  }

  v49 = v62;
  if (v47 != qword_2A184BCE0)
  {
LABEL_17:
    swift_unknownObjectRelease();
    (*(v61 + 8))(v35, v49);
    v30 = type metadata accessor for CloudSyncResolutionInfo(0);
    v31 = *(*(v30 - 8) + 56);
    v32 = v48;
    goto LABEL_6;
  }

  type metadata accessor for CFData(0);
  swift_unknownObjectRetain();
  if (!swift_dynamicCastUnknownClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  v50 = sub_29E4FB160();
  v52 = v51;
  swift_unknownObjectRelease();
  sub_29E4FAF40();
  swift_allocObject();
  sub_29E4FAF30();
  v53 = type metadata accessor for CloudSyncResolutionInfo(0);
  sub_29E4DD538(&qword_2A184B910, type metadata accessor for CloudSyncResolutionInfo, &unk_29E500808);
  v54 = v57;
  sub_29E4FAF20();
  if (v54)
  {

    sub_29E4A1B94(v50, v52);
    swift_unknownObjectRelease_n();
    (*(v61 + 8))(v35, v62);
    v31 = *(*(v53 - 8) + 56);
    v32 = v48;
    v33 = 1;
  }

  else
  {

    swift_unknownObjectRelease_n();
    sub_29E4A1B94(v50, v52);
    (*(v61 + 8))(v35, v62);
    v31 = *(*(v53 - 8) + 56);
    v32 = v48;
    v33 = 0;
  }

  v30 = v53;
  return v31(v32, v33, 1, v30);
}

uint64_t sub_29E4DD1E0()
{

  return swift_deallocClassInstance();
}

id sub_29E4DD244(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x29EDCA608];
  v5 = sub_29E4FC6B0();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_29E4FB0E0();

    swift_willThrow();
  }

  return v6;
}

uint64_t type metadata accessor for CloudSyncResolutionInfo(uint64_t a1)
{
  result = qword_2A184B918;
  if (!qword_2A184B918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E4DD394(uint64_t a1)
{
  result = sub_29E4FB7F0();
  if (v2 <= 0x3F)
  {
    result = sub_29E4FB1E0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29E4DD418()
{
  result = qword_2A184B930;
  if (!qword_2A184B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B930);
  }

  return result;
}

void sub_29E4DD46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4DD418();
    v7 = a3(a1, &type metadata for CloudSyncResolutionInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E4DD4D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E4DD538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E4DD580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncResolutionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4DD5E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29E4DD658()
{
  result = qword_2A184B940;
  if (!qword_2A184B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B940);
  }

  return result;
}

unint64_t sub_29E4DD6B0()
{
  result = qword_2A184B948;
  if (!qword_2A184B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B948);
  }

  return result;
}

unint64_t sub_29E4DD708()
{
  result = qword_2A184B950;
  if (!qword_2A184B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B950);
  }

  return result;
}

char *sub_29E4DD77C()
{
  sub_29E4DEC48(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_29E4FB460();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v0 + 32) profileIdentifier];
  sub_29E4C6970(v8, v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_29E4DE950(v3);
    return MEMORY[0x29EDCA190];
  }

  else
  {
    v10 = *(v5 + 32);
    v10(v7, v3, v4);
    v9 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_29E4A7D34(0, *(v9 + 2) + 1, 1, v9);
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_29E4A7D34((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v10(&v9[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12], v7, v4);
  }

  return v9;
}

uint64_t sub_29E4DD9D8()
{
  swift_getObjectType();
  sub_29E4DE8C0(&qword_2A1A70080, v1, type metadata accessor for ProfileSearchExecutor, &unk_29E500A80);
  sub_29E4FB310();
  v2 = sub_29E4DD77C();
  v0[8] = v2;
  v3 = v0[5];
  v4 = v0[6];
  sub_29E4A1710(v0 + 2, v3);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_29E4DDB54;

  return MEMORY[0x2A1C64D80](v2, v3, v4);
}

uint64_t sub_29E4DDB54()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_29E4DDCD4;
  }

  else
  {
    v2 = sub_29E4DDC68;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E4DDC68()
{

  sub_29E4A1754((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E4DDCD4()
{

  sub_29E4A1754((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E4DDD40()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCC8Profiles21ProfileSearchExecutor7Planner_signals;
  v2 = sub_29E4FC190();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29E4DDDEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Profiles21ProfileSearchExecutor7Planner_signals;
  v4 = sub_29E4FC190();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29E4DDE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29E4DE9DC();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v8[3] = swift_getObjectType();
  v8[4] = *(v6 + 8);
  v8[0] = v5;
  swift_unknownObjectRetain_n();
  sub_29E4FC330();
  swift_unknownObjectRelease();

  return sub_29E4A1754(v8);
}

uint64_t sub_29E4DDF5C()
{
  v0 = sub_29E4FC1C0();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E4FC1E0();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29E4DEC48(0, &qword_2A1A6F0E0, MEMORY[0x29EDC34F0], MEMORY[0x29EDC9E90]);
  sub_29E4FC1B0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29E4FDE40;
  (*(v1 + 104))(v3, *MEMORY[0x29EDC3508], v0);
  sub_29E4FC1D0();
  (*(v1 + 8))(v3, v0);
  sub_29E4FC1A0();
  return v5;
}

uint64_t sub_29E4DE170(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E4DE8C0(qword_2A1A70158, 255, type metadata accessor for ProfileSearchExecutor.Planner, &unk_29E500A40);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E4DE24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E4DE8C0(qword_2A1A70158, 255, type metadata accessor for ProfileSearchExecutor.Planner, &unk_29E500A40);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29E4DE30C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29E49D938;

  return sub_29E4DD9B8();
}

uint64_t sub_29E4DE398(uint64_t a1)
{
  v3 = sub_29E4FC190();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + 32) profileIdentifier];
  v8 = *(v4 + 16);
  v11 = *(v1 + 16);
  v8(v6, a1, v3);
  type metadata accessor for ProfileSearchExecutor.Planner(0);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v11;
  (*(v4 + 32))(v9 + OBJC_IVAR____TtCC8Profiles21ProfileSearchExecutor7Planner_signals, v6, v3);
  swift_unknownObjectRetain();
  return v9;
}

uint64_t sub_29E4DE4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E4DE8C0(qword_2A1A70088, a2, type metadata accessor for ProfileSearchExecutor, &unk_29E500AD0);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

uint64_t _s19HealthOrchestration19ConstantInputSignalC8ProfilesSSRszrlE17searchDestination8observerACySSGAA0dE8Observer_p_tFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v8 = MEMORY[0x29EDCA190];
  sub_29E4C3514(0, 1, 0);
  v3 = v8;
  v5 = *(v8 + 16);
  v4 = *(v8 + 24);
  if (v5 >= v4 >> 1)
  {
    sub_29E4C3514((v4 > 1), v5 + 1, 1);
    v3 = v8;
  }

  *(v3 + 16) = v5 + 1;
  v6 = v3 + 16 * v5;
  strcpy((v6 + 32), "healthDetails");
  *(v6 + 46) = -4864;
  sub_29E4DECAC(0, &qword_2A1A70908, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29E4DECFC();
  sub_29E4FC670();

  sub_29E4FC2F0();
  sub_29E4A9ED8();
  swift_allocObject();
  swift_unknownObjectRetain();
  return sub_29E4FC240();
}

uint64_t type metadata accessor for ProfileSearchExecutor.Planner(uint64_t a1)
{
  result = qword_2A1A70140;
  if (!qword_2A1A70140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E4DE7CC(uint64_t a1)
{
  result = sub_29E4FC190();
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

uint64_t sub_29E4DE8C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_29E4DE950(uint64_t a1)
{
  sub_29E4DEC48(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E4DE9DC()
{
  v0 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E4FC110();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29E4DECAC(0, &qword_2A1A70780, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E4FDE50;
  sub_29E4FC100();
  sub_29E4DEC48(0, &qword_2A1A6F0C0, sub_29E4D01F0, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E4FEDE0;
  sub_29E4FC2F0();
  *(v3 + 56) = sub_29E4FC2E0();
  *(v3 + 64) = sub_29E4DE8C0(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0], MEMORY[0x29EDC35B8]);
  sub_29E4A197C((v3 + 32));
  sub_29E4FC2D0();
  *(v3 + 96) = sub_29E4FC200();
  *(v3 + 104) = sub_29E4DE8C0(&qword_2A1A704C0, 255, MEMORY[0x29EDC3530], MEMORY[0x29EDC3528]);
  sub_29E4A197C((v3 + 72));
  sub_29E4FC1F0();
  sub_29E4FC140();
  swift_allocObject();
  *(v2 + 32) = sub_29E4FC120();
  return v2;
}

void sub_29E4DEC48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E4DECAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E4DECFC()
{
  result = qword_2A1A6F230;
  if (!qword_2A1A6F230)
  {
    sub_29E4DECAC(255, &qword_2A1A70908, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F230);
  }

  return result;
}

uint64_t sub_29E4DED80()
{
  sub_29E4DFDDC(v0 + OBJC_IVAR____TtC8Profiles22ProfileSearchViewModel_searchInfo, type metadata accessor for ProfileSearch);

  return swift_deallocClassInstance();
}

uint64_t sub_29E4DEE20(uint64_t a1)
{
  result = type metadata accessor for ProfileSearch(319);
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

double sub_29E4DEF1C@<D0>(void *a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC8Profiles22ProfileSearchViewModel_searchInfo;
  v4 = (v3 + *(type metadata accessor for ProfileSearch(0) + 24));
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;
  v6 = *MEMORY[0x29EDC2380];
  v7 = sub_29E4FBD60();
  (*(*(v7 - 8) + 104))(a1, v6, v7);

  return result;
}

void *sub_29E4DEFC8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29E4FC3C0();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = MEMORY[0x2A1C7C4A8](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v39 = &v35 - v5;
  sub_29E4DFCD8(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProfileSearch(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v37 = &v35 - v13;
  v38 = v0;
  result = sub_29E4FBD70();
  v15 = v44;
  if (v44)
  {
    v16 = sub_29E4A1710(v43, v44);
    v17 = *(v15 - 8);
    MEMORY[0x2A1C7C4A8](v16);
    v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = sub_29E4FBE10();
    v22 = v21;
    (*(v17 + 8))(v19, v15);
    sub_29E4A1754(v43);
    if (v22 >> 60 == 15)
    {
      sub_29E4FC360();
      v23 = sub_29E4FC3B0();
      v24 = sub_29E4FC920();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v43[0] = v26;
        *v25 = 136446210;
        v27 = sub_29E4FD0B0();
        v29 = sub_29E4F68F4(v27, v28, v43);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_29E494000, v23, v24, "[%{public}s] Updated with nil context or user data. This is unexpected.", v25, 0xCu);
        sub_29E4A1754(v26);
        MEMORY[0x29ED8BDB0](v26, -1, -1);
        MEMORY[0x29ED8BDB0](v25, -1, -1);
      }

      return (*(v41 + 8))(v4, v42);
    }

    else
    {
      sub_29E4FAF40();
      swift_allocObject();
      sub_29E4FAF30();
      sub_29E4DFD94(&qword_2A184B978, type metadata accessor for ProfileSearch, &unk_29E4FFD54);
      v30 = v20;
      sub_29E4FAF20();

      (*(v10 + 56))(v8, 0, 1, v9);
      v31 = v37;
      sub_29E4DFD30(v8, v37);
      v32 = v36;
      sub_29E4C77E8(v31, v36);
      v33 = type metadata accessor for ProfileSearchViewModel(0);
      v34 = swift_allocObject();
      sub_29E4DFD30(v32, v34 + OBJC_IVAR____TtC8Profiles22ProfileSearchViewModel_searchInfo);
      *(v38 + qword_2A1A709A0) = v34;

      v44 = v33;
      v45 = sub_29E4DFD94(&qword_2A184B980, type metadata accessor for ProfileSearchViewModel, &unk_29E500BA8);
      v43[0] = v34;
      sub_29E4FBD30();
      sub_29E4A1B80(v30, v22);
      return sub_29E4DFDDC(v31, type metadata accessor for ProfileSearch);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_29E4DF6D8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29E4FC6F0();
    *&a1[qword_2A1A709A0] = 0;
    v6 = a4;
    v7 = sub_29E4FC6B0();
  }

  else
  {
    *&a1[qword_2A1A709A0] = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for ProfileSearchTileViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

char *sub_29E4DF794(char *a1, uint64_t a2, void *a3)
{
  *&a1[qword_2A1A709A0] = 0;
  v7.receiver = a1;
  v7.super_class = type metadata accessor for ProfileSearchTileViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29E4DF82C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileSearchTileViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E4DF8A0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v33[-v7 - 8];
  v9 = [v1 navigationController];
  if (v9)
  {
    v10 = v9;
    if (*&v1[qword_2A1A709A0])
    {
      sub_29E4FBD70();
      v11 = v36;
      if (v36)
      {
        v12 = sub_29E4A1710(v35, v36);
        v13 = *(v11 - 8);
        MEMORY[0x2A1C7C4A8](v12);
        v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        (*(v13 + 16))(v15);
        sub_29E4FBE00();
        (*(v13 + 8))(v15, v11);
        sub_29E4FCA00();
        sub_29E4A76F0(v34, v33);
        v16 = objc_allocWithZone(sub_29E4FC030());
        v17 = sub_29E4FC020();
        sub_29E4A1754(v34);
        sub_29E4A1754(v35);
        [v10 pushViewController:v17 animated:1];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_29E4FC360();
      v25 = sub_29E4FC3B0();
      v26 = sub_29E4FC920();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35[0] = v28;
        *v27 = 136446210;
        v29 = sub_29E4FD0B0();
        v31 = sub_29E4F68F4(v29, v30, v35);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_29E494000, v25, v26, "[%{public}s] Unable to determine destination for view controller", v27, 0xCu);
        sub_29E4A1754(v28);
        MEMORY[0x29ED8BDB0](v28, -1, -1);
        MEMORY[0x29ED8BDB0](v27, -1, -1);
      }

      (*(v3 + 8))(v8, v2);
    }
  }

  else
  {
    sub_29E4FC360();
    v18 = sub_29E4FC3B0();
    v19 = sub_29E4FC920();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35[0] = v21;
      *v20 = 136446210;
      v22 = sub_29E4FD0B0();
      v24 = sub_29E4F68F4(v22, v23, v35);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_29E494000, v18, v19, "[%{public}s] Attempted to push onto a non-existent navigation controller.", v20, 0xCu);
      sub_29E4A1754(v21);
      MEMORY[0x29ED8BDB0](v21, -1, -1);
      MEMORY[0x29ED8BDB0](v20, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_29E4DFCD8(uint64_t a1)
{
  if (!qword_2A184B970)
  {
    type metadata accessor for ProfileSearch(255);
    v1 = sub_29E4FCC30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B970);
    }
  }
}

uint64_t sub_29E4DFD30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileSearch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4DFD94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E4DFDDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E4DFE3C@<X0>(uint64_t a1@<X8>)
{
  sub_29E4FB4B0();
  v3 = sub_29E4FC6B0();

  v4 = [v1 valueForKey_];

  if (v4)
  {
    sub_29E4FCC50();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_29E4FB1E0();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_29E4AD1FC(v11);
    v8 = sub_29E4FB1E0();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_29E4DFFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v24 = a2;
  v3 = sub_29E4FBAA0();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v19 = v5;
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4E3198(0);
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v17 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E4FCB00();
  v25 = v18;
  v20 = *(v4 + 16);
  v20(v6, a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v16 = *(v4 + 32);
  v16(v11 + v10, v6, v3);
  sub_29E4E322C(0, &qword_2A184B9B0, sub_29E4E32B8, MEMORY[0x29EDB89F8]);
  sub_29E4E3310();
  v12 = v17;
  sub_29E4FC510();

  v20(v6, v21, v3);
  v13 = swift_allocObject();
  v16(v13 + v10, v6, v3);
  sub_29E4E3398(&qword_2A184B9C8, sub_29E4E3198, MEMORY[0x29EDB8968]);
  v14 = v22;
  sub_29E4FC4F0();

  return (*(v23 + 8))(v12, v14);
}

BOOL sub_29E4E02C0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29E4FB240();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29E4FBAA0();
  v6 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29E4FC3C0();
  v51 = *(v49 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v49);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v43 - v11;
  v13 = *a1;
  sub_29E4FC3A0();

  v14 = sub_29E4FC3B0();
  v15 = sub_29E4FC940();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v52 = v43;
    *v16 = 136315394;
    *(v16 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v52);
    *(v16 + 12) = 2080;
    v17 = sub_29E4FC8B0();
    v19 = sub_29E4F68F4(v17, v18, &v52);
    v20 = v8;
    v44 = v6;
    v21 = v19;

    *(v16 + 14) = v21;
    v22 = v49;
    v23 = v51;
    v8 = v20;
    _os_log_impl(&dword_29E494000, v14, v15, "%s Notification Hold Instructions: %s", v16, 0x16u);
    v24 = v43;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v24, -1, -1);
    MEMORY[0x29ED8BDB0](v16, -1, -1);

    v25 = v23;
    v6 = v44;
    v26 = *(v25 + 8);
    v26(v12, v22);
  }

  else
  {

    v26 = *(v51 + 8);
    v26(v12, v49);
  }

  v27 = sub_29E4FBA40();
  v29 = sub_29E4E08F8(v27, v28, v13);

  sub_29E4FC3A0();
  v30 = v48;
  (*(v6 + 2))(v8, a2, v48);
  v31 = sub_29E4FC3B0();
  v32 = sub_29E4FC940();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v44 = v26;
    v34 = v33;
    v35 = swift_slowAlloc();
    v52 = v35;
    *v34 = 136315650;
    *(v34 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v52);
    *(v34 + 12) = 2080;
    v36 = v8;
    v37 = v45;
    sub_29E4FBA80();
    v38 = sub_29E4FB200();
    v40 = v39;
    (*(v46 + 8))(v37, v47);
    (*(v6 + 1))(v36, v48);
    v41 = sub_29E4F68F4(v38, v40, &v52);

    *(v34 + 14) = v41;
    *(v34 + 22) = 1024;
    *(v34 + 24) = v29 & 1;
    _os_log_impl(&dword_29E494000, v31, v32, "%s Does Hold Exist for Entry %s: %{BOOL}d", v34, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v35, -1, -1);
    MEMORY[0x29ED8BDB0](v34, -1, -1);

    v44(v50, v49);
  }

  else
  {

    (*(v6 + 1))(v8, v30);
    v26(v50, v49);
  }

  return (v29 & 1) == 0;
}

BOOL sub_29E4E082C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_29E4FD030();
  MEMORY[0x29ED8B670](a1);
  v4 = sub_29E4FD050();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_29E4E08F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_29E4FD030();
  sub_29E4FC730();
  v6 = sub_29E4FD050();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_29E4FCF80() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_29E4E09F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  v3 = sub_29E4FBAA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  sub_29E4E55DC(0, &qword_2A184BA90, sub_29E4E569C, sub_29E4E5738);
  v17 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v16 - v8;
  sub_29E4FBA40();
  v10 = sub_29E4FB5D0();

  v19 = v10;
  (*(v4 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_29E4FC410();
  sub_29E4E569C(0);
  sub_29E4E39EC(0, &qword_2A184B570, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
  sub_29E4E5738();
  sub_29E4E349C();
  sub_29E4FC520();

  sub_29E4E57EC();
  v13 = v17;
  v14 = sub_29E4FC4E0();
  result = (*(v7 + 8))(v9, v13);
  *v18 = v14;
  return result;
}

uint64_t sub_29E4E0CBC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a2;
  v70 = a3;
  v4 = MEMORY[0x29EDC9A98];
  sub_29E4E39EC(0, &qword_2A184BAA0, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AC0]);
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v67 = &v56[-v6];
  v7 = sub_29E4FB240();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v59 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_29E4FBAA0();
  v64 = *(v9 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v63 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v56[-v12];
  v14 = sub_29E4FC3C0();
  v65 = *(v14 - 8);
  v66 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v56[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E4E5874(0, &qword_2A184BAA8, MEMORY[0x29EDB8AB0]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v56[-v20];
  sub_29E4E39EC(0, &qword_2A184BAB0, v4, MEMORY[0x29EDB8B18]);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v56[-v25];
  v27 = *a1;
  if (v27 == 2 || (v27 & 1) == 0)
  {
    v73 = 1;
    sub_29E4FC4B0();
    sub_29E4A2CE8(0, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
    sub_29E4FC4A0();
    (*(v19 + 8))(v21, v18);
    sub_29E4E58C8();
    v51 = sub_29E4FC4E0();
    result = (*(v24 + 8))(v26, v23);
  }

  else
  {
    v28 = v16;
    sub_29E4FC3A0();
    v29 = v64;
    v30 = *(v64 + 16);
    v31 = v62;
    v30(v13, v62, v9);
    v32 = v63;
    v30(v63, v31, v9);
    v33 = sub_29E4FC3B0();
    v34 = sub_29E4FC940();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v72 = v62;
      *v35 = 136315906;
      *(v35 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v72);
      *(v35 + 12) = 2080;
      v36 = v59;
      v58 = v33;
      sub_29E4FBA80();
      v37 = sub_29E4FB200();
      v57 = v34;
      v39 = v38;
      (*(v60 + 8))(v36, v61);
      v40 = *(v29 + 8);
      v40(v13, v9);
      v41 = sub_29E4F68F4(v37, v39, &v72);

      *(v35 + 14) = v41;
      *(v35 + 22) = 2080;
      v42 = sub_29E4FBA40();
      v44 = v43;
      v40(v32, v9);
      v45 = sub_29E4F68F4(v42, v44, &v72);

      *(v35 + 24) = v45;
      *(v35 + 32) = 2080;
      v71 = v27;
      sub_29E4E5874(0, &qword_2A1A6F208, MEMORY[0x29EDC9C68]);
      v46 = sub_29E4FC700();
      v48 = sub_29E4F68F4(v46, v47, &v72);

      *(v35 + 34) = v48;
      v49 = v58;
      _os_log_impl(&dword_29E494000, v58, v57, "[%s] Skipping duplicate invitation notification for %s: key %s value: %s", v35, 0x2Au);
      v50 = v62;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v50, -1, -1);
      MEMORY[0x29ED8BDB0](v35, -1, -1);
    }

    else
    {

      v53 = *(v29 + 8);
      v53(v32, v9);
      v53(v13, v9);
    }

    (*(v65 + 8))(v28, v66);
    sub_29E4A2CE8(0, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
    v54 = v67;
    sub_29E4FC4C0();
    sub_29E4E5944();
    v55 = v69;
    v51 = sub_29E4FC4E0();
    result = (*(v68 + 8))(v54, v55);
  }

  *v70 = v51;
  return result;
}

void sub_29E4E1418(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v61 = a3;
  v62 = a2;
  v65 = a4;
  sub_29E4E36D4(0, &qword_2A184BA58, MEMORY[0x29EDB8AA0]);
  v6 = v5;
  v60 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v59 - v7;
  v9 = sub_29E4FBAA0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v59 - v14;
  v16 = sub_29E4FC3C0();
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = MEMORY[0x2A1C7C4A8](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v59 - v20;
  v22 = sub_29E4E431C(a1);
  if (v22)
  {
    v23 = v22;
    v24 = v65;
    sub_29E4FC3A0();
    v25 = v9;
    (*(v10 + 16))(v15, a1, v9);
    v26 = v23;
    v27 = sub_29E4FC3B0();
    v28 = sub_29E4FC940();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v66 = v60;
      *v29 = 136315650;
      *(v29 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v66);
      *(v29 + 12) = 2080;
      v30 = MEMORY[0x29ED8A010]();
      v31 = v25;
      v33 = v32;
      (*(v10 + 8))(v15, v31);
      v34 = sub_29E4F68F4(v30, v33, &v66);

      *(v29 + 14) = v34;
      *(v29 + 22) = 2080;
      v35 = v26;
      v36 = [v35 description];
      v37 = sub_29E4FC6F0();
      v39 = v38;

      v40 = v65;
      v41 = sub_29E4F68F4(v37, v39, &v66);

      *(v29 + 24) = v41;
      _os_log_impl(&dword_29E494000, v27, v28, "[%s] Successfully created UNNotificationRequest for sharing entry for %s: %s", v29, 0x20u);
      v42 = v60;
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v42, -1, -1);
      MEMORY[0x29ED8BDB0](v29, -1, -1);

      (*(v63 + 8))(v21, v64);
    }

    else
    {

      (*(v10 + 8))(v15, v25);
      (*(v63 + 8))(v21, v64);
      v40 = v24;
    }

    swift_getObjectType();
    v53 = sub_29E4FB5A0();
  }

  else
  {
    v62 = v8;
    sub_29E4FC3A0();
    v43 = v9;
    (*(v10 + 16))(v13, a1, v9);
    v44 = sub_29E4FC3B0();
    v45 = sub_29E4FC920();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v66 = v47;
      *v46 = 136315394;
      *(v46 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v66);
      *(v46 + 12) = 2080;
      sub_29E4E3398(&unk_2A184B678, MEMORY[0x29EDC1A38], MEMORY[0x29EDC1A58]);
      v48 = sub_29E4FCF60();
      v49 = v43;
      v51 = v50;
      (*(v10 + 8))(v13, v49);
      v52 = sub_29E4F68F4(v48, v51, &v66);

      *(v46 + 14) = v52;
      _os_log_impl(&dword_29E494000, v44, v45, "[%s] Tried to create a UNNotificationRequest for a sharing entry that should not receive a notification: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v47, -1, -1);
      MEMORY[0x29ED8BDB0](v46, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    (*(v63 + 8))(v19, v64);
    v54 = v6;
    v55 = v60;
    v56 = v62;
    v57 = [objc_allocWithZone(MEMORY[0x29EDB9FA0]) initWithDomain:*MEMORY[0x29EDBA538] code:118 userInfo:0];
    sub_29E4A2AD8(0, &qword_2A1A6F188, 0x29EDBCCD8);
    v66 = v57;
    sub_29E4A2CE8(0, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
    v58 = v57;
    sub_29E4FC490();
    sub_29E4E50E4(&qword_2A184BA60, &qword_2A184BA58, MEMORY[0x29EDB8AA0], MEMORY[0x29EDB8AA8]);
    v53 = sub_29E4FC4E0();

    (*(v55 + 8))(v56, v54);
    v40 = v65;
  }

  *v40 = v53;
}

uint64_t sub_29E4E1B68@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a2;
  sub_29E4E3938(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_29E4FBA40();
  v9 = sub_29E4FB5E0();

  v13[1] = v9;
  *(swift_allocObject() + 16) = v8;
  sub_29E4E39EC(0, &qword_2A184BA40, MEMORY[0x29EDCA180] + 8, MEMORY[0x29EDB8AD0]);
  sub_29E4A2AD8(0, &qword_2A1A6F188, 0x29EDBCCD8);
  sub_29E4E3A6C();
  v10 = v8;
  sub_29E4FC4F0();

  sub_29E4E3398(&qword_2A184BA50, sub_29E4E3938, MEMORY[0x29EDB8908]);
  v11 = sub_29E4FC4E0();
  result = (*(v5 + 8))(v7, v4);
  *v13[0] = v11;
  return result;
}

uint64_t sub_29E4E1D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E4A25CC(a1, a2);

  return sub_29E4AD310(a1 + 40, a2 + 40);
}

_OWORD *sub_29E4E1DD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_29E4A25CC(*(v3 + 48) + 40 * v13, &v17);
    sub_29E4AD310(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = sub_29E4A2C58(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return sub_29E4E5514(&v17, sub_29E4E5574);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_29E4E1F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v127 = a5;
  v128 = a4;
  v136 = a3;
  v110 = a2;
  sub_29E4E5128(0, &qword_2A184B988, MEMORY[0x29EDC1A38], MEMORY[0x29EDB8AB0]);
  v113 = v6;
  v112 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v111 = &v103 - v7;
  sub_29E4E322C(0, &qword_2A184B990, MEMORY[0x29EDC1A38], MEMORY[0x29EDB8B18]);
  v116 = v8;
  v115 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v114 = &v103 - v9;
  sub_29E4E3000(0);
  v11 = *(v10 - 8);
  v119 = v10;
  v120 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v117 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4E3468(0);
  v121 = *(v13 - 8);
  v122 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v135 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4E354C(0);
  v129 = *(v15 - 8);
  v130 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v124 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4E35B4(0, &qword_2A184BA10, sub_29E4E354C, sub_29E4E36A0);
  v125 = *(v17 - 8);
  v126 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v123 = &v103 - v18;
  sub_29E4E36D4(0, &qword_2A184BA20, MEMORY[0x29EDB8AC0]);
  v109 = v19;
  v108 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v107 = &v103 - v20;
  v21 = sub_29E4FBAA0();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v137 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v24;
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v103 - v25;
  v27 = sub_29E4FC3C0();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v106 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v105 = &v103 - v32;
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v131 = &v103 - v34;
  MEMORY[0x2A1C7C4A8](v33);
  v36 = &v103 - v35;
  sub_29E4FC3A0();
  v37 = *(v22 + 16);
  v138 = a1;
  v132 = v37;
  v133 = v22 + 16;
  v37(v26, a1, v21);
  v38 = sub_29E4FC3B0();
  v39 = sub_29E4FC940();
  v40 = os_log_type_enabled(v38, v39);
  v118 = v22;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v103 = v28;
    v43 = v42;
    v139 = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v139);
    *(v41 + 12) = 2080;
    v44 = sub_29E4FB9B0();
    v45 = v21;
    v47 = v46;
    v48 = v26;
    v49 = v45;
    (*(v22 + 8))(v48, v45);
    v50 = sub_29E4F68F4(v44, v47, &v139);

    *(v41 + 14) = v50;
    _os_log_impl(&dword_29E494000, v38, v39, "[%s] Creating notification publisher for sharing entry: %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v43, -1, -1);
    MEMORY[0x29ED8BDB0](v41, -1, -1);

    v28 = v103;
  }

  else
  {

    v51 = v26;
    v49 = v21;
    (*(v22 + 8))(v51, v21);
  }

  v52 = *(v28 + 8);
  v52(v36, v27);
  v53 = sub_29E4FB9D0();
  v54 = v131;
  if ((v53 & 1) == 0 && (sub_29E4FBA20() & 1) == 0)
  {
    v63 = v106;
    sub_29E4FC3A0();
    v64 = sub_29E4FC3B0();
    v65 = sub_29E4FC940();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v139 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v139);
      v68 = "[%s] Terminating early: sharing entry is not incoming invite or outgoing accepted";
      goto LABEL_20;
    }

LABEL_21:

    v52(v63, v27);
    sub_29E4A2AD8(0, &qword_2A1A6F188, 0x29EDBCCD8);
    sub_29E4A2CE8(0, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
    v100 = v107;
    sub_29E4FC4C0();
    sub_29E4E50E4(&qword_2A184BA28, &qword_2A184BA20, MEMORY[0x29EDB8AC0], MEMORY[0x29EDB8AC8]);
    v101 = v109;
    v99 = sub_29E4FC4E0();
    (*(v108 + 8))(v100, v101);
    return v99;
  }

  if (sub_29E4FB9D0())
  {
    v55 = sub_29E4FBA30();
    if ((v56 & 1) == 0 && v55 == 1)
    {
      sub_29E4FC3A0();
      v57 = sub_29E4FC3B0();
      v58 = sub_29E4FC940();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v139 = v60;
        *v59 = 136315138;
        *(v59 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v139);
        _os_log_impl(&dword_29E494000, v57, v58, "[%s] Creating notification: The notification has been acknowledged, but the invitation is still pending", v59, 0xCu);
        sub_29E4A1754(v60);
        MEMORY[0x29ED8BDB0](v60, -1, -1);
        MEMORY[0x29ED8BDB0](v59, -1, -1);
      }

      v52(v54, v27);
    }
  }

  if (sub_29E4FBA20())
  {
    v61 = sub_29E4FBA30();
    if ((v62 & 1) == 0 && v61 == 2)
    {
      v63 = v105;
      sub_29E4FC3A0();
      v64 = sub_29E4FC3B0();
      v65 = sub_29E4FC940();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v139 = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, &v139);
        v68 = "[%s] Terminating early: We have already acknowledged the notification";
LABEL_20:
        _os_log_impl(&dword_29E494000, v64, v65, v68, v66, 0xCu);
        sub_29E4A1754(v67);
        MEMORY[0x29ED8BDB0](v67, -1, -1);
        MEMORY[0x29ED8BDB0](v66, -1, -1);
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  sub_29E4A2AD8(0, &unk_2A184B580, 0x29EDBACA8);
  sub_29E4FCAF0();
  v69 = objc_allocWithZone(MEMORY[0x29EDBACA8]);
  v70 = sub_29E4FC6B0();

  v71 = [v69 initWithClientIdentifier:v70 healthStore:v110];

  v72 = v138;
  v73 = v132;
  v132(v137, v138, v49);
  v74 = v111;
  sub_29E4FC4B0();
  sub_29E4A2CE8(0, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
  v75 = v114;
  v76 = v113;
  sub_29E4FC4A0();
  (*(v112 + 8))(v74, v76);
  *(swift_allocObject() + 16) = v71;
  v131 = v71;
  sub_29E4FC410();
  sub_29E4E30EC(0);
  sub_29E4E33E0();
  sub_29E4E3398(&qword_2A184B9D0, sub_29E4E30EC, MEMORY[0x29EDB8908]);
  v77 = v117;
  v78 = v116;
  sub_29E4FC520();

  (*(v115 + 8))(v75, v78);

  sub_29E4FC410();
  sub_29E4E39EC(0, &qword_2A184B570, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
  sub_29E4E3518();
  sub_29E4E349C();
  v79 = v119;
  sub_29E4FC520();

  (*(v120 + 8))(v77, v79);
  v80 = v137;
  v104 = v49;
  v73(v137, v72, v49);
  v81 = v118;
  v82 = *(v118 + 80);
  v83 = (v82 + 16) & ~v82;
  v84 = (v134 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  v120 = *(v81 + 32);
  (v120)(v85 + v83, v80, v49);
  v86 = (v85 + v84);
  v87 = v127;
  *v86 = v128;
  v86[1] = v87;
  swift_unknownObjectRetain();
  sub_29E4FC410();
  v128 = sub_29E4A2AD8(0, &qword_2A1A6F188, 0x29EDBCCD8);
  v88 = MEMORY[0x29EDB89F8];
  sub_29E4E36D4(0, &qword_2A184B9F8, MEMORY[0x29EDB89F8]);
  v127 = v89;
  sub_29E4E3580();
  sub_29E4E50E4(&qword_2A184BA00, &qword_2A184B9F8, v88, MEMORY[0x29EDB8A00]);
  v90 = v124;
  v91 = v122;
  v92 = v135;
  sub_29E4FC520();

  (*(v121 + 8))(v92, v91);
  v93 = v137;
  v94 = v104;
  v132(v137, v138, v104);
  v95 = swift_allocObject();
  *(v95 + 16) = v136;
  (v120)(v95 + ((v82 + 24) & ~v82), v93, v94);

  sub_29E4FC410();
  sub_29E4E36A0();
  v96 = v123;
  v97 = v130;
  sub_29E4FC520();

  (*(v129 + 8))(v90, v97);
  sub_29E4E38B0();
  v98 = v126;
  v99 = sub_29E4FC4E0();

  (*(v125 + 8))(v96, v98);
  return v99;
}

void sub_29E4E3000(uint64_t a1)
{
  if (!qword_2A184B998)
  {
    sub_29E4E30EC(255);
    sub_29E4E322C(255, &qword_2A184B990, MEMORY[0x29EDC1A38], MEMORY[0x29EDB8B18]);
    sub_29E4E3398(&qword_2A184B9D0, sub_29E4E30EC, MEMORY[0x29EDB8908]);
    sub_29E4E33E0();
    v1 = sub_29E4FC3F0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B998);
    }
  }
}

void sub_29E4E30EC(uint64_t a1)
{
  if (!qword_2A184B9A0)
  {
    sub_29E4E3198(255);
    sub_29E4FBAA0();
    sub_29E4E3398(&qword_2A184B9C8, sub_29E4E3198, MEMORY[0x29EDB8968]);
    v1 = sub_29E4FC3D0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B9A0);
    }
  }
}

void sub_29E4E3198(uint64_t a1)
{
  if (!qword_2A184B9A8)
  {
    sub_29E4E322C(255, &qword_2A184B9B0, sub_29E4E32B8, MEMORY[0x29EDB89F8]);
    sub_29E4E3310();
    v1 = sub_29E4FC3E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B9A8);
    }
  }
}

void sub_29E4E322C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29E4A2CE8(255, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E4E32B8()
{
  if (!qword_2A184B9B8)
  {
    v0 = sub_29E4FC8E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B9B8);
    }
  }
}

unint64_t sub_29E4E3310()
{
  result = qword_2A184B9C0;
  if (!qword_2A184B9C0)
  {
    sub_29E4E322C(255, &qword_2A184B9B0, sub_29E4E32B8, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B9C0);
  }

  return result;
}

uint64_t sub_29E4E3398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E4E33E0()
{
  result = qword_2A184B9D8;
  if (!qword_2A184B9D8)
  {
    sub_29E4E322C(255, &qword_2A184B990, MEMORY[0x29EDC1A38], MEMORY[0x29EDB8B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B9D8);
  }

  return result;
}

unint64_t sub_29E4E349C()
{
  result = qword_2A184B578;
  if (!qword_2A184B578)
  {
    sub_29E4E39EC(255, &qword_2A184B570, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B578);
  }

  return result;
}

void sub_29E4E35B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    v7 = MEMORY[0x29EDB89F8];
    sub_29E4E36D4(255, &qword_2A184B9F8, MEMORY[0x29EDB89F8]);
    a3(255);
    sub_29E4E50E4(&qword_2A184BA00, &qword_2A184B9F8, v7, MEMORY[0x29EDB8A00]);
    a4();
    v8 = sub_29E4FC3F0();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E4E36D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29E4A2AD8(255, &qword_2A1A6F188, 0x29EDBCCD8);
    v7 = sub_29E4A2CE8(255, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
    v8 = a3(a1, v6, v7, MEMORY[0x29EDC9F20]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E4E377C(uint64_t *a1@<X8>)
{
  v3 = *(sub_29E4FBAA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_29E4E1418(v1 + v4, v6, v7, a1);
}

uint64_t sub_29E4E382C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E4FBAA0();

  return sub_29E4E1B68(a1, a2);
}

unint64_t sub_29E4E38B0()
{
  result = qword_2A184BA30;
  if (!qword_2A184BA30)
  {
    sub_29E4E35B4(255, &qword_2A184BA10, sub_29E4E354C, sub_29E4E36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BA30);
  }

  return result;
}

void sub_29E4E3938(uint64_t a1)
{
  if (!qword_2A184BA38)
  {
    sub_29E4E39EC(255, &qword_2A184BA40, MEMORY[0x29EDCA180] + 8, MEMORY[0x29EDB8AD0]);
    sub_29E4A2AD8(255, &qword_2A1A6F188, 0x29EDBCCD8);
    sub_29E4E3A6C();
    v1 = sub_29E4FC3D0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184BA38);
    }
  }
}

void sub_29E4E39EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_29E4A2CE8(255, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
    v9 = a4(a1, a3, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29E4E3A6C()
{
  result = qword_2A184BA48;
  if (!qword_2A184BA48)
  {
    sub_29E4E39EC(255, &qword_2A184BA40, MEMORY[0x29EDCA180] + 8, MEMORY[0x29EDB8AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BA48);
  }

  return result;
}

id sub_29E4E3AEC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_29E4E3AF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v41 = a1;
  v42 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v43 = v8;
  v44 = 0;
  v45 = v11 & v9;
  v46 = a2;
  v47 = a3;

  sub_29E4E1DD0(&v37);
  if (!*(&v38 + 1))
  {
LABEL_18:
    sub_29E4C4CA8(v41);
  }

  while (1)
  {
    v34 = v37;
    v35 = v38;
    v36 = v39;
    sub_29E4A2C58(&v40, v33);
    v15 = *a5;
    v16 = sub_29E49EE90(&v34);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_29E4C13F0(v21, a4 & 1);
      v16 = sub_29E49EE90(&v34);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v30 = v16;
    sub_29E4C337C();
    v16 = v30;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_29E4AD310(*(*a5 + 56) + 32 * v16, v32);
      sub_29E4A1754(v33);
      sub_29E4A2628(&v34);
      v14 = *(v12 + 56);
      sub_29E4A1754((v14 + v13));
      sub_29E4A2C58(v32, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v24 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v25 = v24[6] + 40 * v16;
    v26 = v34;
    v27 = v35;
    *(v25 + 32) = v36;
    *v25 = v26;
    *(v25 + 16) = v27;
    sub_29E4A2C58(v33, (v24[7] + 32 * v16));
    v28 = v24[2];
    v20 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v24[2] = v29;
LABEL_7:
    sub_29E4E1DD0(&v37);
    a4 = 1;
    if (!*(&v38 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_29E4FCFB0();
  __break(1u);
  return result;
}

uint64_t sub_29E4E3D3C()
{
  sub_29E4E5490(0);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v14[4] = v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29E4FBAA0();
  MEMORY[0x2A1C7C4A8](v2);
  v3 = sub_29E4FC3C0();
  v14[5] = *(v3 - 8);
  v14[6] = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v4 = sub_29E4FB240();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  sub_29E4FBA80();
  v9 = sub_29E4FB210();
  (*(v5 + 8))(v7, v4);
  v10 = [v8 _profileWithUUID_type_];

  sub_29E4E5248();
  v11 = v10;
  v12 = sub_29E4FBCF0();

  return v12;
}

id sub_29E4E431C(uint64_t a1)
{
  v74 = sub_29E4FC3C0();
  v73 = *(v74 - 8);
  MEMORY[0x2A1C7C4A8](v74);
  v72 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x29EDC9C68];
  sub_29E4E5128(0, &qword_2A1A70698, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v78 = &v70 - v5;
  sub_29E4E5128(0, &qword_2A184B558, MEMORY[0x29EDB9B18], v3);
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v77 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v79 = &v70 - v9;
  v76 = sub_29E4FB020();
  v75 = *(v76 - 8);
  MEMORY[0x2A1C7C4A8](v76);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E4FBAA0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v70 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v70 - v16;
  v18 = sub_29E4FB570();
  v83 = *(v18 - 8);
  v84 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_29E4FBA40();
  v81 = v21;
  v82 = [objc_allocWithZone(MEMORY[0x29EDBCCC0]) init];
  sub_29E4A2AD8(0, &qword_2A1A6F1D8, 0x29EDB8BB0);
  v22 = sub_29E4FC980();
  v87[3] = v12;
  v87[4] = MEMORY[0x29EDC1A28];
  v23 = sub_29E4A197C(v87);
  v71 = v13;
  v24 = *(v13 + 16);
  v24(v23, a1, v12);
  sub_29E4FC960();
  v25 = sub_29E4FC950();

  sub_29E4A1754(v87);
  v24(v17, a1, v12);
  v26 = v25;
  v85 = v20;
  sub_29E4FB550();
  if (sub_29E4FB9D0())
  {
    v74 = v26;
    if (qword_2A1A70BD8 != -1)
    {
      swift_once();
    }

    v73 = a1;
    v72 = sub_29E4FB050();
    sub_29E4FB050();
    v27 = "ITE_RECEIVED_SUBTITLE";
  }

  else
  {
    if ((sub_29E4FBA20() & 1) == 0)
    {

      v57 = v72;
      sub_29E4FC3A0();
      v58 = v70;
      v24(v70, a1, v12);
      v59 = sub_29E4FC3B0();
      v60 = sub_29E4FC920();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v87[0] = v62;
        *v61 = 136315394;
        *(v61 + 4) = sub_29E4F68F4(0xD000000000000023, 0x800000029E500C00, v87);
        *(v61 + 12) = 2080;
        sub_29E4E3398(&unk_2A184B678, MEMORY[0x29EDC1A38], MEMORY[0x29EDC1A58]);
        v63 = sub_29E4FCF60();
        v64 = v58;
        v65 = v63;
        v67 = v66;
        (*(v71 + 8))(v64, v12);
        v68 = sub_29E4F68F4(v65, v67, v87);

        *(v61 + 14) = v68;
        _os_log_impl(&dword_29E494000, v59, v60, "[%s] Received a SharingEntryProfileInformation we were not supposed to create a notification for: %s", v61, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED8BDB0](v62, -1, -1);
        MEMORY[0x29ED8BDB0](v61, -1, -1);
      }

      else
      {

        (*(v71 + 8))(v58, v12);
      }

      (*(v73 + 8))(v57, v74);
      (*(v83 + 8))(v85, v84);
      return 0;
    }

    v74 = v26;
    if (qword_2A1A70BD8 != -1)
    {
      swift_once();
    }

    v73 = a1;
    v72 = sub_29E4FB050();
    sub_29E4FB050();
    v27 = "ITE_ACCEPTED_SUBTITLE";
  }

  sub_29E4FB560();
  sub_29E4B1068(0xD000000000000034, v27 | 0x8000000000000000, "", 0, 2, v11);
  (*(v75 + 8))(v11, v76);
  sub_29E4E518C(0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29E4FDE40;
  v29 = sub_29E4FB540();
  v31 = v30;
  *(v28 + 56) = MEMORY[0x29EDC99B0];
  *(v28 + 64) = sub_29E4E51F4();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  sub_29E4FC6C0();

  v32 = sub_29E4FC6B0();

  v33 = v82;
  [v82 setTitle_];

  v34 = sub_29E4FC6B0();

  [v33 setSubtitle_];

  v35 = sub_29E4FC6B0();

  [v33 setCategoryIdentifier_];

  v36 = sub_29E4FC6B0();

  [v33 setBody_];

  sub_29E4E5248();
  v37 = sub_29E4FBD10();
  [v33 setSound_];

  v38 = [objc_allocWithZone(MEMORY[0x29EDC1570]) init];
  v39 = [v38 URLForSharingOverview];
  if (v39)
  {
    v40 = v77;
    v41 = v39;
    sub_29E4FB110();

    v42 = 0;
    v38 = v41;
    v43 = v74;
    v44 = v79;
  }

  else
  {
    v42 = 1;
    v43 = v74;
    v44 = v79;
    v40 = v77;
  }

  v45 = sub_29E4FB130();
  (*(*(v45 - 8) + 56))(v40, v42, 1, v45);
  sub_29E4E529C(v40, v44);
  v46 = sub_29E4FB240();
  v47 = v78;
  (*(*(v46 - 8) + 56))(v78, 1, 1, v46);
  v48 = sub_29E4FBD00();
  sub_29E4E5330(v47, &qword_2A1A70698, MEMORY[0x29EDB9C08]);
  v49 = sub_29E4F2F0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87[0] = v48;
  sub_29E4E3AF8(v49, sub_29E4E1D8C, 0, isUniquelyReferenced_nonNull_native, v87);

  sub_29E4E5330(v44, &qword_2A184B558, MEMORY[0x29EDB9B18]);
  v51 = sub_29E4FC620();

  [v33 setUserInfo_];

  v52 = sub_29E4E3D3C();
  v86 = v52;
  v87[0] = MEMORY[0x29EDCA190];
  if (v52)
  {
    v53 = v52;
    MEMORY[0x29ED8ADD0]();
    if (*((v87[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29E4FC7E0();
    }

    sub_29E4FC7F0();
  }

  sub_29E4E53A0(&v86);
  sub_29E4A2AD8(0, &qword_2A184BA78, 0x29EDBCCC8);
  v54 = sub_29E4FC7B0();

  [v33 setAttachments_];

  v55 = sub_29E4FC6B0();

  v56 = [objc_opt_self() requestWithIdentifier:v55 content:v33 trigger:0];

  (*(v83 + 8))(v85, v84);
  return v56;
}

uint64_t sub_29E4E50E4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E4E36D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E4E5128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E4E518C(uint64_t a1)
{
  if (!qword_2A1A70898)
  {
    sub_29E4A2CE8(255, &qword_2A1A70890, MEMORY[0x29EDCA100]);
    v1 = sub_29E4FCF70();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A70898);
    }
  }
}

unint64_t sub_29E4E51F4()
{
  result = qword_2A1A70910;
  if (!qword_2A1A70910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A70910);
  }

  return result;
}

unint64_t sub_29E4E5248()
{
  result = qword_2A184BA68;
  if (!qword_2A184BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BA68);
  }

  return result;
}

uint64_t sub_29E4E529C(uint64_t a1, uint64_t a2)
{
  sub_29E4E5128(0, &qword_2A184B558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4E5330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4E5128(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4E53A0(uint64_t a1)
{
  sub_29E4E5428(0, &qword_2A184BA70, &qword_2A184BA78, 0x29EDBCCC8, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E4E5428(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E4A2AD8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E4E5490(uint64_t a1)
{
  if (!qword_2A184BA80)
  {
    sub_29E4E5428(255, &qword_2A1A6F2F8, &qword_2A1A708D0, 0x29EDBACE0, MEMORY[0x29EDBA1D0]);
    v1 = sub_29E4FCC30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184BA80);
    }
  }
}

uint64_t sub_29E4E5514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E4E5574()
{
  if (!qword_2A184BA88)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184BA88);
    }
  }
}

void sub_29E4E55DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    sub_29E4E39EC(255, &qword_2A184B570, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
    a3(255);
    sub_29E4E349C();
    a4();
    v7 = sub_29E4FC3F0();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E4E569C(uint64_t a1)
{
  if (!qword_2A1A70430)
  {
    sub_29E4E5874(255, &qword_2A1A6F208, MEMORY[0x29EDC9C68]);
    sub_29E4A2CE8(255, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
    v1 = sub_29E4FC4D0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A70430);
    }
  }
}

uint64_t sub_29E4E576C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29E4FBAA0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E4E0CBC(a1, v6, a2);
}

unint64_t sub_29E4E57EC()
{
  result = qword_2A184BA98;
  if (!qword_2A184BA98)
  {
    sub_29E4E55DC(255, &qword_2A184BA90, sub_29E4E569C, sub_29E4E5738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BA98);
  }

  return result;
}

void sub_29E4E5874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E4E58C8()
{
  result = qword_2A184BAB8;
  if (!qword_2A184BAB8)
  {
    sub_29E4E39EC(255, &qword_2A184BAB0, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BAB8);
  }

  return result;
}

unint64_t sub_29E4E5944()
{
  result = qword_2A184BAC0;
  if (!qword_2A184BAC0)
  {
    sub_29E4E39EC(255, &qword_2A184BAA0, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184BAC0);
  }

  return result;
}

BOOL sub_29E4E59C0(uint64_t *a1)
{
  v3 = *(sub_29E4FBAA0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_29E4E02C0(a1, v4);
}

uint64_t sub_29E4E5A30()
{
  v1 = sub_29E4FBAA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E4E5AB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E4FBAA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

void *sub_29E4E5B40(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E4FCCB0())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED8B3B0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_29E4E5C54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_29E4A2AD8(0, &qword_2A1A708D0, 0x29EDBACE0);
    v4 = sub_29E4FC7C0();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_29E4E5D70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfilesAppDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E4E5E34()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_29E4E5E68(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29E4FC3C0();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_29E4FC9A0();
  if (v7)
  {
    v8 = v7;
    v9 = sub_29E4FBDA0();
    sub_29E4FBD90();
    sub_29E4FCA00();
    sub_29E4A1710(v33, v33[3]);
    v10 = sub_29E4FB2F0();
    v11 = sub_29E4FBDE0();

    if (v11)
    {
      v12 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
      [v12 setProfileIdentifier_];
      [v12 resume];
      sub_29E4FBE30();
      v13 = v12;
      sub_29E4FCA00();
      sub_29E4A76F0(v34, v32);
      v14 = sub_29E4FBE20();
      v15 = [v9 navigationController];
      if (v15)
      {
        v16 = v15;
        [v15 pushViewController:v14 animated:0];
      }

      [v14 restoreUserActivityState_];
    }

    else
    {
      v14 = v9;
    }

    sub_29E4A1754(v34);
    return sub_29E4A1754(v33);
  }

  else
  {
    sub_29E4FC370();
    v17 = a1;
    v18 = sub_29E4FC3B0();
    v19 = sub_29E4FC920();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33[0] = v21;
      *v20 = 136446466;
      v34[0] = ObjectType;
      swift_getMetatypeMetadata();
      v22 = sub_29E4FC700();
      v24 = sub_29E4F68F4(v22, v23, v33);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = [v17 activityType];
      v26 = sub_29E4FC6F0();
      v28 = v27;

      v29 = sub_29E4F68F4(v26, v28, v33);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_29E494000, v18, v19, "[%{public}s]: Unable to fetch ProfileIdentifier from UserActivty %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v21, -1, -1);
      MEMORY[0x29ED8BDB0](v20, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}