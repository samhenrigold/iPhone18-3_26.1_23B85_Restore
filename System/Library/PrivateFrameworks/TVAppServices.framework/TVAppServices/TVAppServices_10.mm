uint64_t sub_26CCF8DB0(uint64_t a1, uint64_t a2)
{
  v2[115] = a2;
  v2[114] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CCF8EBC, 0, 0);
}

void sub_26CCF8EBC(uint64_t a1)
{
  if (!*(*(v1 + 920) + 16) || (v2 = sub_26CC181C4(0x736E6F69746361, 0xE700000000000000), (v3 & 1) == 0) || (sub_26CC168C0(*(*(v1 + 920) + 56) + 32 * v2, v1 + 416), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD9C8, &qword_26CD47D78), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v18 = *(v1 + 912);
    v19 = qword_280BBCBE0;
    v20 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_26CD3C1E0;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_26CC19E10();
    *(v21 + 32) = 0xD00000000000003BLL;
    *(v21 + 40) = 0x800000026CD51B90;
    sub_26CD3A3DC(v20, &dword_26CC14000, v19, "%@", 2, 2, v21);

    v22 = sub_26CD3A07C();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    v116 = 0;
    goto LABEL_9;
  }

  v4 = *(v1 + 1000);
  v5 = *(v1 + 992);
  v6 = *(v1 + 904);
  *(v1 + 1008) = v6;
  v7 = sub_26CD3A07C();
  *(v1 + 1016) = v7;
  v8 = *(v7 - 8);
  *(v1 + 1024) = v8;
  v9 = *(v8 + 56);
  v9(v4, 1, 1, v7);
  v9(v5, 1, 1, v7);
  type metadata accessor for AppLibraryHandler();
  swift_initStackObject();
  v10 = sub_26CC53DF8();
  swift_beginAccess();
  v11 = v10[2];

  sub_26CC37114(v11);
  v13 = v12;

  *(v1 + 1032) = sub_26CCF3078(v13);

  v14 = *(v6 + 16);
  *(v1 + 1040) = v14;
  if (!v14)
  {

    v15 = 0;
    v115 = 0;
    goto LABEL_115;
  }

  v15 = 0;
  v16 = 0;
  v114 = (v1 + 896);
  v115 = 0;
  v17 = MEMORY[0x277D837D0];
  while (1)
  {
    *(v1 + 1064) = v16;
    *(v1 + 1056) = v115;
    *(v1 + 1048) = v15;
    v24 = *(v1 + 1008);
    if (v16 >= *(v24 + 16))
    {
      __break(1u);
LABEL_121:
      *(v1 + 1096) = *(v1 + 840);
      *(v1 + 1104) = *(v1 + 848);
      v113 = swift_task_alloc();
      *(v1 + 1112) = v113;
      *v113 = v1;
      v113[1] = sub_26CCFA178;

      sub_26CCFB66C();
      return;
    }

    v25 = *(v24 + 8 * v16 + 32);
    *(v1 + 1072) = v25;
    strcpy((v1 + 744), "isTvAppAction");
    *(v1 + 758) = -4864;

    sub_26CD3ABFC();
    if (!*(v25 + 16) || (v26 = sub_26CCCA694(v1 + 296), (v27 & 1) == 0))
    {
      sub_26CC579C4(v1 + 296);
LABEL_20:
      v28 = 0;
      goto LABEL_21;
    }

    sub_26CC168C0(*(v25 + 56) + 32 * v26, v1 + 640);
    sub_26CC579C4(v1 + 296);
    if (!swift_dynamicCast())
    {
      goto LABEL_20;
    }

    v28 = *(v1 + 1128);
LABEL_21:
    v29 = v15;
    *(v1 + 1129) = v28;
    *(v1 + 696) = 1701869940;
    *(v1 + 704) = 0xE400000000000000;
    sub_26CD3ABFC();
    if (*(v25 + 16) && (v30 = sub_26CCCA694(v1 + 136), (v31 & 1) != 0))
    {
      sub_26CC168C0(*(v25 + 56) + 32 * v30, v1 + 512);
      sub_26CC579C4(v1 + 136);
      if (swift_dynamicCast())
      {
        if (*(v1 + 856) == 0xD000000000000015 && 0x800000026CD51BD0 == *(v1 + 864))
        {

LABEL_59:

LABEL_60:
          v15 = v29;
          goto LABEL_13;
        }

        v63 = sub_26CD3AFDC();

        if (v63)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      sub_26CC579C4(v1 + 136);
    }

    if (v28)
    {
      v32 = *(v1 + 1024);
      v33 = *(v1 + 1016);
      v34 = *(v1 + 984);
      sub_26CC1B4DC(*(v1 + 992), v34, &qword_2804BCA30, &qword_26CD3DA70);
      v35 = *(v32 + 48);
      v36 = v35(v34, 1, v33);
      v17 = MEMORY[0x277D837D0];
      LODWORD(v33) = v36;
      sub_26CC1B544(v34, &qword_2804BCA30, &qword_26CD3DA70);
      if (v33 == 1)
      {
        goto LABEL_30;
      }
    }

    v48 = *(v1 + 1024);
    v49 = *(v1 + 1016);
    v50 = *(v1 + 976);
    sub_26CC1B4DC(*(v1 + 1000), v50, &qword_2804BCA30, &qword_26CD3DA70);
    v51 = *(v48 + 48);
    *(v1 + 1080) = v51;
    v52 = v51(v50, 1, v49);
    v53 = *(v1 + 976);
    if (v52 != 1)
    {

      sub_26CC1B544(v53, &qword_2804BCA30, &qword_26CD3DA70);
      goto LABEL_60;
    }

    sub_26CC1B544(*(v1 + 976), &qword_2804BCA30, &qword_26CD3DA70);
    *(v1 + 808) = 0x6449656C646E7562;
    *(v1 + 816) = 0xE900000000000073;
    sub_26CD3ABFC();
    v15 = v29;
    if (*(v25 + 16))
    {
      v54 = sub_26CCCA694(v1 + 376);
      if (v55)
      {
        break;
      }
    }

    sub_26CC579C4(v1 + 376);
LABEL_13:
    v16 = *(v1 + 1064) + 1;
    if (v16 == *(v1 + 1040))
    {

      goto LABEL_115;
    }
  }

  sub_26CC168C0(*(v25 + 56) + 32 * v54, v1 + 480);
  sub_26CC579C4(v1 + 376);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v56 = *(v1 + 880);
  *(v1 + 1088) = v56;
  v57 = *(v56 + 16);
  if (!v57)
  {
    *(v1 + 824) = 0x6449646E617262;
    *(v1 + 832) = 0xE700000000000000;
    sub_26CD3ABFC();
    if (*(v25 + 16) && (v58 = sub_26CCCA694(v1 + 176), (v59 & 1) != 0))
    {
      sub_26CC168C0(*(v25 + 56) + 32 * v58, v1 + 544);
      sub_26CC579C4(v1 + 176);
      if (swift_dynamicCast())
      {
        goto LABEL_121;
      }
    }

    else
    {
      sub_26CC579C4(v1 + 176);
    }

    v57 = *(v56 + 16);
    if (!v57)
    {

LABEL_110:
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      v96 = qword_280BBCBE0;
      *(v1 + 792) = 0;
      *(v1 + 800) = 0xE000000000000000;
      sub_26CD3AC6C();
      v97 = *(v1 + 800);
      *(v1 + 776) = *(v1 + 792);
      *(v1 + 784) = v97;
      MEMORY[0x26D6AD060](0xD000000000000056, 0x800000026CD51BF0);
      v98 = MEMORY[0x26D6AD1A0](v56, v17);
      v100 = v99;

      MEMORY[0x26D6AD060](v98, v100);

      v101 = *(v1 + 776);
      v102 = *(v1 + 784);
      v103 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_26CD3C1E0;
      *(v104 + 56) = MEMORY[0x277D837D0];
      *(v104 + 64) = sub_26CC19E10();
      *(v104 + 32) = v101;
      *(v104 + 40) = v102;
      v17 = MEMORY[0x277D837D0];
      sub_26CD3A3DC(v103, &dword_26CC14000, v96, "%@", 2, 2, v104);

      v115 = *(v1 + 1056);
      v15 = *(v1 + 1048);
      goto LABEL_13;
    }
  }

  v84 = 0;
  while (2)
  {
    if (v84 >= *(v56 + 16))
    {
      __break(1u);
      return;
    }

    v85 = *(v1 + 1032);
    if (!*(v85 + 16))
    {
LABEL_93:
      if (++v84 == v57)
      {

        v17 = MEMORY[0x277D837D0];
        goto LABEL_110;
      }

      continue;
    }

    break;
  }

  v86 = (v56 + 32 + 16 * v84);
  v88 = *v86;
  v87 = v86[1];
  sub_26CD3B0FC();

  sub_26CD3A54C();
  v89 = sub_26CD3B13C();
  v90 = -1 << *(v85 + 32);
  v91 = v89 & ~v90;
  if (((*(v85 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v91) & 1) == 0)
  {
LABEL_92:

    goto LABEL_93;
  }

  v92 = ~v90;
  v93 = *(v1 + 1032);
  while (1)
  {
    v94 = (*(v93 + 48) + 16 * v91);
    v95 = *v94 == v88 && v94[1] == v87;
    if (v95 || (sub_26CD3AFDC() & 1) != 0)
    {
      break;
    }

    v93 = *(v1 + 1032);
    v91 = (v91 + 1) & v92;
    if (((*(v93 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v91) & 1) == 0)
    {
      goto LABEL_92;
    }
  }

  v35 = *(v1 + 1080);
LABEL_30:
  v37 = *(v1 + 1072);
  *(v1 + 712) = 0xD000000000000015;
  *(v1 + 720) = 0x800000026CD4E1B0;
  sub_26CD3ABFC();
  if (!*(v37 + 16) || (v38 = sub_26CCCA694(v1 + 336), (v39 & 1) == 0))
  {
    sub_26CC579C4(v1 + 336);
LABEL_52:
    v47 = 0;
    v44 = 0;
    goto LABEL_53;
  }

  sub_26CC168C0(*(*(v1 + 1072) + 56) + 32 * v38, v1 + 576);
  sub_26CC579C4(v1 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD9D0, &qword_26CD47D80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_52;
  }

  v40 = *v114;
  if (!*(*v114 + 16))
  {
    goto LABEL_87;
  }

  v41 = sub_26CC181C4(0x6576694C5F736F49, 0xE800000000000000);
  if (v42)
  {
    goto LABEL_37;
  }

  if (!*(v40 + 16))
  {
LABEL_87:
    v44 = 0;
    goto LABEL_88;
  }

  v41 = sub_26CC181C4(7565129, 0xE300000000000000);
  if (v43)
  {
LABEL_37:
    v44 = *(*(v40 + 56) + 16 * v41 + 8);

    if (*(v40 + 16))
    {
      goto LABEL_38;
    }

LABEL_88:

    v47 = 0;
  }

  else
  {
    v44 = 0;
    if (!*(v40 + 16))
    {
      goto LABEL_88;
    }

LABEL_38:
    v45 = sub_26CC181C4(0x6173726576696E55, 0xE90000000000006CLL);
    if ((v46 & 1) == 0)
    {
      goto LABEL_88;
    }

    v47 = *(*(v40 + 56) + 16 * v45 + 8);
  }

LABEL_53:
  if (*(v1 + 1129) != 1)
  {

    goto LABEL_62;
  }

  v60 = *(v1 + 1016);
  v61 = *(v1 + 968);
  sub_26CC1B4DC(*(v1 + 992), v61, &qword_2804BCA30, &qword_26CD3DA70);
  if (v35(v61, 1, v60) != 1)
  {
    v64 = *(v1 + 968);

    sub_26CC1B544(v64, &qword_2804BCA30, &qword_26CD3DA70);
LABEL_62:
    v65 = *(v1 + 1016);
    v66 = *(v1 + 952);
    sub_26CC1B4DC(*(v1 + 1000), v66, &qword_2804BCA30, &qword_26CD3DA70);
    if (v35(v66, 1, v65) == 1)
    {
      sub_26CC1B544(*(v1 + 952), &qword_2804BCA30, &qword_26CD3DA70);
      v67 = *(v1 + 1072);
      if (v44)
      {
        v68 = *(v1 + 1000);
        v69 = *(v1 + 960);

        sub_26CD3A03C();

        sub_26CC1B544(v68, &qword_2804BCA30, &qword_26CD3DA70);
        sub_26CC6FFD0(v69, v68);
        *(v1 + 728) = 0x7363697274656DLL;
        *(v1 + 736) = 0xE700000000000000;
        sub_26CD3ABFC();
        if (*(v67 + 16) && (v70 = sub_26CCCA694(v1 + 256), (v71 & 1) != 0))
        {
          sub_26CC168C0(*(*(v1 + 1072) + 56) + 32 * v70, v1 + 448);
          sub_26CC579C4(v1 + 256);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
          v72 = swift_dynamicCast();
          v73 = *(v1 + 872);
          if (!v72)
          {
            v73 = 0;
          }

          v115 = v73;
          v15 = *(v1 + 1048);
        }

        else
        {

          sub_26CC579C4(v1 + 256);
          v115 = 0;
          v15 = *(v1 + 1048);
        }

        goto LABEL_84;
      }
    }

    else
    {
      v74 = *(v1 + 952);

      sub_26CC1B544(v74, &qword_2804BCA30, &qword_26CD3DA70);
    }

    v115 = *(v1 + 1056);
    v15 = *(v1 + 1048);
    goto LABEL_84;
  }

  v62 = *(v1 + 968);

  sub_26CC1B544(v62, &qword_2804BCA30, &qword_26CD3DA70);
  if (v47)
  {

    sub_26CD3A03C();
    goto LABEL_76;
  }

  if (v44)
  {
    sub_26CD3A03C();
LABEL_76:
    v75 = *(v1 + 992);
    v76 = *(v1 + 960);

    sub_26CC1B544(v75, &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CC6FFD0(v76, v75);
  }

  v77 = *(v1 + 1072);
  *(v1 + 760) = 0x7363697274656DLL;
  *(v1 + 768) = 0xE700000000000000;
  sub_26CD3ABFC();
  if (*(v77 + 16) && (v78 = sub_26CCCA694(v1 + 216), (v79 & 1) != 0))
  {
    sub_26CC168C0(*(*(v1 + 1072) + 56) + 32 * v78, v1 + 608);
    sub_26CC579C4(v1 + 216);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
    if (swift_dynamicCast())
    {
      v15 = *(v1 + 888);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {

    sub_26CC579C4(v1 + 216);
    v15 = 0;
  }

  v115 = *(v1 + 1056);
LABEL_84:
  v80 = *(v1 + 1016);
  v81 = *(v1 + 944);
  sub_26CC1B4DC(*(v1 + 1000), v81, &qword_2804BCA30, &qword_26CD3DA70);
  LODWORD(v80) = v35(v81, 1, v80);
  sub_26CC1B544(v81, &qword_2804BCA30, &qword_26CD3DA70);
  if (v80 == 1)
  {
LABEL_12:
    v17 = MEMORY[0x277D837D0];
    goto LABEL_13;
  }

  v82 = *(v1 + 1016);
  v83 = *(v1 + 936);
  sub_26CC1B4DC(*(v1 + 992), v83, &qword_2804BCA30, &qword_26CD3DA70);
  if (v35(v83, 1, v82) == 1)
  {
    sub_26CC1B544(*(v1 + 936), &qword_2804BCA30, &qword_26CD3DA70);
    goto LABEL_12;
  }

  v112 = *(v1 + 936);

  sub_26CC1B544(v112, &qword_2804BCA30, &qword_26CD3DA70);
LABEL_115:
  v105 = *(v1 + 1024);
  v106 = *(v1 + 1016);
  v107 = *(v1 + 928);
  sub_26CC1B4DC(*(v1 + 1000), v107, &qword_2804BCA30, &qword_26CD3DA70);
  if ((*(v105 + 48))(v107, 1, v106) == 1)
  {
    v108 = *(v1 + 1000);
    v109 = *(v1 + 992);
    v110 = *(v1 + 928);
    sub_26CC1B544(v108, &qword_2804BCA30, &qword_26CD3DA70);

    sub_26CC1B544(v110, &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CC6FFD0(v109, v108);
  }

  else
  {
    v111 = *(v1 + 928);
    sub_26CC1B544(*(v1 + 992), &qword_2804BCA30, &qword_26CD3DA70);

    sub_26CC1B544(v111, &qword_2804BCA30, &qword_26CD3DA70);
    v15 = v115;
  }

  v116 = v15;
  sub_26CC6FFD0(*(v1 + 1000), *(v1 + 912));
LABEL_9:

  v23 = *(v1 + 8);

  v23(v116);
}

uint64_t sub_26CCFA178(uint64_t a1)
{
  *(*v1 + 1120) = a1;

  return MEMORY[0x2822009F8](sub_26CCFA278, 0, 0);
}

uint64_t sub_26CCFA278()
{
  v1 = *(v0 + 1120);
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = sub_26CC181C4(*(v0 + 1096), *(v0 + 1104));
      v4 = v3;

      if (v4)
      {

        v5 = *(*(v1 + 56) + 8 * v2);

        v6 = *&v5[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appBundleIds];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v6 = *(v0 + 1088);
LABEL_8:
  v98 = (v0 + 896);
  v7 = MEMORY[0x277D837D0];
LABEL_9:
  v8 = *(v6 + 16);
  if (!v8)
  {
LABEL_25:

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v22 = qword_280BBCBE0;
    *(v0 + 792) = 0;
    *(v0 + 800) = 0xE000000000000000;
    sub_26CD3AC6C();
    v23 = *(v0 + 800);
    *(v0 + 776) = *(v0 + 792);
    *(v0 + 784) = v23;
    MEMORY[0x26D6AD060](0xD000000000000056, 0x800000026CD51BF0);
    v24 = MEMORY[0x26D6AD1A0](v6, v7);
    v26 = v25;

    MEMORY[0x26D6AD060](v24, v26);

    v27 = *(v0 + 776);
    v28 = *(v0 + 784);
    v29 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_26CD3C1E0;
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_26CC19E10();
    *(v30 + 32) = v27;
    *(v30 + 40) = v28;
    sub_26CD3A3DC(v29, &dword_26CC14000, v22, "%@", 2, 2, v30);

    v31 = *(v0 + 1056);
    v32 = *(v0 + 1048);
    goto LABEL_29;
  }

  v9 = 0;
  v99 = v6 + 32;
  v100 = v6;
  while (1)
  {
    if (v9 >= *(v6 + 16))
    {
      goto LABEL_115;
    }

    v10 = *(v0 + 1032);
    if (*(v10 + 16))
    {
      break;
    }

LABEL_12:
    if (++v9 == v8)
    {
      goto LABEL_25;
    }
  }

  v11 = (v99 + 16 * v9);
  v13 = *v11;
  v12 = v11[1];
  sub_26CD3B0FC();

  sub_26CD3A54C();
  v14 = sub_26CD3B13C();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if (((*(v10 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v16) & 1) == 0)
  {
LABEL_11:

    v6 = v100;
    goto LABEL_12;
  }

  v17 = ~v15;
  v18 = *(v0 + 1032);
  while (1)
  {
    v19 = (*(v18 + 48) + 16 * v16);
    v20 = *v19 == v13 && v19[1] == v12;
    if (v20 || (sub_26CD3AFDC() & 1) != 0)
    {
      break;
    }

    v18 = *(v0 + 1032);
    v16 = (v16 + 1) & v17;
    if (((*(v18 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v16) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(v0 + 1080);
LABEL_55:
  v53 = *(v0 + 1072);
  *(v0 + 712) = 0xD000000000000015;
  *(v0 + 720) = 0x800000026CD4E1B0;
  sub_26CD3ABFC();
  if (!*(v53 + 16) || (v54 = sub_26CCCA694(v0 + 336), (v55 & 1) == 0))
  {
    sub_26CC579C4(v0 + 336);
    goto LABEL_67;
  }

  sub_26CC168C0(*(*(v0 + 1072) + 56) + 32 * v54, v0 + 576);
  sub_26CC579C4(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD9D0, &qword_26CD47D80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_67:
    v63 = 0;
    v56 = 0;
    goto LABEL_68;
  }

  v56 = 0;
  v57 = *v98;
  if (!*(*v98 + 16))
  {
    goto LABEL_89;
  }

  v58 = sub_26CC181C4(0x6576694C5F736F49, 0xE800000000000000);
  if (v59)
  {
    goto LABEL_62;
  }

  v56 = 0;
  if (!*(v57 + 16))
  {
    goto LABEL_89;
  }

  v58 = sub_26CC181C4(7565129, 0xE300000000000000);
  v56 = 0;
  if (v60)
  {
LABEL_62:
    v56 = *(*(v57 + 56) + 16 * v58 + 8);
  }

  if (*(v57 + 16) && (v61 = sub_26CC181C4(0x6173726576696E55, 0xE90000000000006CLL), (v62 & 1) != 0))
  {
    v63 = *(*(v57 + 56) + 16 * v61 + 8);
  }

  else
  {
LABEL_89:

    v63 = 0;
  }

LABEL_68:
  if (*(v0 + 1129) != 1)
  {

    goto LABEL_74;
  }

  v64 = *(v0 + 1016);
  v65 = *(v0 + 968);
  sub_26CC1B4DC(*(v0 + 992), v65, &qword_2804BCA30, &qword_26CD3DA70);
  if (v21(v65, 1, v64) != 1)
  {
    v67 = *(v0 + 968);

    sub_26CC1B544(v67, &qword_2804BCA30, &qword_26CD3DA70);
LABEL_74:
    v68 = *(v0 + 1016);
    v69 = *(v0 + 952);
    sub_26CC1B4DC(*(v0 + 1000), v69, &qword_2804BCA30, &qword_26CD3DA70);
    if (v21(v69, 1, v68) == 1)
    {
      sub_26CC1B544(*(v0 + 952), &qword_2804BCA30, &qword_26CD3DA70);
      v70 = *(v0 + 1072);
      if (v56)
      {
        v71 = *(v0 + 1000);
        v72 = *(v0 + 960);

        sub_26CD3A03C();

        sub_26CC1B544(v71, &qword_2804BCA30, &qword_26CD3DA70);
        sub_26CC6FFD0(v72, v71);
        *(v0 + 728) = 0x7363697274656DLL;
        *(v0 + 736) = 0xE700000000000000;
        sub_26CD3ABFC();
        if (*(v70 + 16) && (v73 = sub_26CCCA694(v0 + 256), (v74 & 1) != 0))
        {
          sub_26CC168C0(*(*(v0 + 1072) + 56) + 32 * v73, v0 + 448);
          sub_26CC579C4(v0 + 256);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
          if (swift_dynamicCast())
          {
            v31 = *(v0 + 872);
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {

          sub_26CC579C4(v0 + 256);
          v31 = 0;
        }

        goto LABEL_85;
      }
    }

    else
    {
      v75 = *(v0 + 952);

      sub_26CC1B544(v75, &qword_2804BCA30, &qword_26CD3DA70);
    }

    v31 = *(v0 + 1056);
LABEL_85:
    v32 = *(v0 + 1048);
    goto LABEL_86;
  }

  v66 = *(v0 + 968);

  sub_26CC1B544(v66, &qword_2804BCA30, &qword_26CD3DA70);
  if (v63)
  {

    sub_26CD3A03C();
    goto LABEL_92;
  }

  if (v56)
  {
    sub_26CD3A03C();
LABEL_92:
    v80 = *(v0 + 992);
    v81 = *(v0 + 960);

    sub_26CC1B544(v80, &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CC6FFD0(v81, v80);
  }

  v82 = *(v0 + 1072);
  *(v0 + 760) = 0x7363697274656DLL;
  *(v0 + 768) = 0xE700000000000000;
  sub_26CD3ABFC();
  if (*(v82 + 16) && (v83 = sub_26CCCA694(v0 + 216), (v84 & 1) != 0))
  {
    sub_26CC168C0(*(*(v0 + 1072) + 56) + 32 * v83, v0 + 608);
    sub_26CC579C4(v0 + 216);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
    if (swift_dynamicCast())
    {
      v32 = *(v0 + 888);
    }

    else
    {
      v32 = 0;
    }

    v31 = *(v0 + 1056);
  }

  else
  {

    sub_26CC579C4(v0 + 216);
    v32 = 0;
    v31 = *(v0 + 1056);
  }

LABEL_86:
  v76 = *(v0 + 1016);
  v77 = *(v0 + 944);
  sub_26CC1B4DC(*(v0 + 1000), v77, &qword_2804BCA30, &qword_26CD3DA70);
  LODWORD(v76) = v21(v77, 1, v76);
  sub_26CC1B544(v77, &qword_2804BCA30, &qword_26CD3DA70);
  if (v76 == 1)
  {
    goto LABEL_29;
  }

  v78 = *(v0 + 1016);
  v79 = *(v0 + 936);
  sub_26CC1B4DC(*(v0 + 992), v79, &qword_2804BCA30, &qword_26CD3DA70);
  if (v21(v79, 1, v78) == 1)
  {
    sub_26CC1B544(*(v0 + 936), &qword_2804BCA30, &qword_26CD3DA70);
    while (1)
    {
LABEL_29:
      v33 = *(v0 + 1064) + 1;
      if (v33 == *(v0 + 1040))
      {

        goto LABEL_107;
      }

      *(v0 + 1064) = v33;
      *(v0 + 1056) = v31;
      *(v0 + 1048) = v32;
      v34 = *(v0 + 1008);
      if (v33 >= *(v34 + 16))
      {
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v35 = *(v34 + 8 * v33 + 32);
      *(v0 + 1072) = v35;
      strcpy((v0 + 744), "isTvAppAction");
      *(v0 + 758) = -4864;

      sub_26CD3ABFC();
      if (!*(v35 + 16))
      {
        break;
      }

      v36 = sub_26CCCA694(v0 + 296);
      if ((v37 & 1) == 0)
      {
        break;
      }

      sub_26CC168C0(*(v35 + 56) + 32 * v36, v0 + 640);
      sub_26CC579C4(v0 + 296);
      if (!swift_dynamicCast())
      {
        goto LABEL_36;
      }

      v38 = *(v0 + 1128);
LABEL_37:
      *(v0 + 1129) = v38;
      *(v0 + 696) = 1701869940;
      *(v0 + 704) = 0xE400000000000000;
      sub_26CD3ABFC();
      if (!*(v35 + 16) || (v39 = sub_26CCCA694(v0 + 136), (v40 & 1) == 0))
      {
        sub_26CC579C4(v0 + 136);
        if (!v38)
        {
          goto LABEL_47;
        }

LABEL_46:
        v42 = *(v0 + 1024);
        v43 = *(v0 + 1016);
        v44 = *(v0 + 984);
        sub_26CC1B4DC(*(v0 + 992), v44, &qword_2804BCA30, &qword_26CD3DA70);
        v21 = *(v42 + 48);
        LODWORD(v43) = v21(v44, 1, v43);
        sub_26CC1B544(v44, &qword_2804BCA30, &qword_26CD3DA70);
        if (v43 == 1)
        {
          goto LABEL_55;
        }

        goto LABEL_47;
      }

      sub_26CC168C0(*(v35 + 56) + 32 * v39, v0 + 512);
      sub_26CC579C4(v0 + 136);
      if (swift_dynamicCast())
      {
        if (*(v0 + 856) == 0xD000000000000015 && 0x800000026CD51BD0 == *(v0 + 864))
        {

LABEL_51:

          continue;
        }

        v41 = sub_26CD3AFDC();

        if (v41)
        {
          goto LABEL_51;
        }
      }

      if (v38)
      {
        goto LABEL_46;
      }

LABEL_47:
      v45 = *(v0 + 1024);
      v46 = *(v0 + 1016);
      v47 = *(v0 + 976);
      sub_26CC1B4DC(*(v0 + 1000), v47, &qword_2804BCA30, &qword_26CD3DA70);
      v48 = *(v45 + 48);
      *(v0 + 1080) = v48;
      v49 = v48(v47, 1, v46);
      v50 = *(v0 + 976);
      if (v49 != 1)
      {

        sub_26CC1B544(v50, &qword_2804BCA30, &qword_26CD3DA70);
        continue;
      }

      sub_26CC1B544(*(v0 + 976), &qword_2804BCA30, &qword_26CD3DA70);
      *(v0 + 808) = 0x6449656C646E7562;
      *(v0 + 816) = 0xE900000000000073;
      v7 = MEMORY[0x277D837D0];
      sub_26CD3ABFC();
      if (*(v35 + 16))
      {
        v51 = sub_26CCCA694(v0 + 376);
        if (v52)
        {
          sub_26CC168C0(*(v35 + 56) + 32 * v51, v0 + 480);
          sub_26CC579C4(v0 + 376);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
          if (swift_dynamicCast())
          {
            v6 = *(v0 + 880);
            *(v0 + 1088) = v6;
            if (!*(v6 + 16))
            {
              *(v0 + 824) = 0x6449646E617262;
              *(v0 + 832) = 0xE700000000000000;
              sub_26CD3ABFC();
              if (*(v35 + 16) && (v85 = sub_26CCCA694(v0 + 176), (v86 & 1) != 0))
              {
                sub_26CC168C0(*(v35 + 56) + 32 * v85, v0 + 544);
                sub_26CC579C4(v0 + 176);
                if (swift_dynamicCast())
                {
LABEL_116:
                  *(v0 + 1096) = *(v0 + 840);
                  *(v0 + 1104) = *(v0 + 848);
                  v97 = swift_task_alloc();
                  *(v0 + 1112) = v97;
                  *v97 = v0;
                  v97[1] = sub_26CCFA178;

                  return sub_26CCFB66C();
                }
              }

              else
              {
                sub_26CC579C4(v0 + 176);
              }
            }

            goto LABEL_9;
          }

          goto LABEL_51;
        }
      }

      sub_26CC579C4(v0 + 376);
    }

    sub_26CC579C4(v0 + 296);
LABEL_36:
    v38 = 0;
    goto LABEL_37;
  }

  v96 = *(v0 + 936);

  sub_26CC1B544(v96, &qword_2804BCA30, &qword_26CD3DA70);
LABEL_107:
  v87 = *(v0 + 1024);
  v88 = *(v0 + 1016);
  v89 = *(v0 + 928);
  sub_26CC1B4DC(*(v0 + 1000), v89, &qword_2804BCA30, &qword_26CD3DA70);
  if ((*(v87 + 48))(v89, 1, v88) == 1)
  {
    v90 = *(v0 + 1000);
    v91 = *(v0 + 992);
    v92 = *(v0 + 928);
    sub_26CC1B544(v90, &qword_2804BCA30, &qword_26CD3DA70);

    sub_26CC1B544(v92, &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CC6FFD0(v91, v90);
  }

  else
  {
    v93 = *(v0 + 928);
    sub_26CC1B544(*(v0 + 992), &qword_2804BCA30, &qword_26CD3DA70);

    sub_26CC1B544(v93, &qword_2804BCA30, &qword_26CD3DA70);
    v32 = v31;
  }

  sub_26CC6FFD0(*(v0 + 1000), *(v0 + 912));

  v94 = *(v0 + 8);

  return v94(v32);
}

unint64_t sub_26CCFB28C()
{
  result = qword_2804BD9B8;
  if (!qword_2804BD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD9B8);
  }

  return result;
}

uint64_t sub_26CCFB2E0(uint64_t a1)
{
  v2 = MEMORY[0x277D83B88];
  v19 = MEMORY[0x277D83B88];
  *&v18 = 2;
  sub_26CC331CC(&v18, v17);
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v17, 0x656372756F73, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  if ((*(a1 + 88) & 1) == 0)
  {
    v5 = *(a1 + 80);
    v19 = v2;
    *&v18 = v5;
    sub_26CC331CC(&v18, v17);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v17, 0xD000000000000011, 0x800000026CD4E170, v6);
  }

  v7 = *(a1 + 496);
  if (v7)
  {
    v8 = *(a1 + 488);
    v19 = MEMORY[0x277D837D0];
    *&v18 = v8;
    *(&v18 + 1) = v7;
    sub_26CC331CC(&v18, v17);

    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v17, 0x4449646165726874, 0xE800000000000000, v9);
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v19 = sub_26CD3A1EC();
    __swift_allocate_boxed_opaque_existential_1(&v18);
    sub_26CD3A19C();
    sub_26CC331CC(&v18, v17);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v17, 0x6974617269707865, 0xEE00657461446E6FLL, v10);
  }

  v11 = qword_26CD47E78[*(a1 + 480)];
  v19 = MEMORY[0x277D83E88];
  *&v18 = v11;
  sub_26CC331CC(&v18, v17);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v17, 0x79726F6765746163, 0xE800000000000000, v12);
  v13 = *(a1 + 512);
  if (v13)
  {
    if (*(a1 + 504) == 0xD000000000000013 && v13 == 0x800000026CD51D50)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_26CD3AFDC();
    }
  }

  else
  {
    v14 = 0;
  }

  v19 = MEMORY[0x277D839B0];
  LOBYTE(v18) = v14 & 1;
  sub_26CC331CC(&v18, v17);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v17, 0x6F69737365537369, 0xE90000000000006ELL, v15);
  return v3;
}

unint64_t sub_26CCFB618()
{
  result = qword_2804BD9C0;
  if (!qword_2804BD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD9C0);
  }

  return result;
}

uint64_t sub_26CCFB66C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  v0[37] = swift_task_alloc();
  v1 = sub_26CD39D0C();
  v0[38] = v1;
  v0[39] = *(v1 - 8);
  v0[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CCFB760, 0, 0);
}

uint64_t sub_26CCFB760()
{
  v1 = qword_2804BD9B0;
  if (qword_2804BD9B0)
  {

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    type metadata accessor for UTSURLRequestFactory();
    v4 = swift_task_alloc();
    v0[41] = v4;
    *v4 = v0;
    v4[1] = sub_26CCFB890;
    v5 = v0[37];

    return sub_26CD027F0(v5, 0x736C656E6E616863, 0xE800000000000000, 0, 0xE000000000000000, 0, 0);
  }
}

uint64_t sub_26CCFB890()
{

  if (v0)
  {

    v1 = sub_26CCFBBE4;
  }

  else
  {
    v1 = sub_26CCFB9A8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_26CCFB9A8()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_26CCFBAC8;
  v6 = v0[40];

  return UTSNetworkManager.execute(request:)(v6);
}

uint64_t sub_26CCFBAC8(uint64_t a1)
{
  *(*v2 + 344) = a1;

  if (v1)
  {

    v3 = sub_26CCFC5D8;
  }

  else
  {
    v3 = sub_26CCFBD64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CCFBBE4()
{
  v1 = v0[37];
  (*(v0[39] + 56))(v1, 1, 1, v0[38]);
  sub_26CC1B544(v1, &qword_2804BC3F8, &qword_26CD45490);
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = qword_280BBCBE0;
  v3 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v4 + 64) = sub_26CC2E6E8();
  *(v4 + 32) = &unk_287DFB610;
  sub_26CD3A3DC(v3, &dword_26CC14000, v2, "%@", 2, 2, v4);

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_26CCFBD64()
{
  v1 = [*(v0 + 344) data];
  v2 = sub_26CD3A0BC();
  v4 = v3;

  v5 = Data.asDictionary()();
  sub_26CC18C50(v2, v4);
  if (v5)
  {
    if (*(v5 + 16) && (v6 = sub_26CC181C4(1635017060, 0xE400000000000000), (v7 & 1) != 0))
    {
      sub_26CC168C0(*(v5 + 56) + 32 * v6, v0 + 208);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 272);
        if (*(v8 + 16) && (v9 = sub_26CC181C4(0x736C656E6E616863, 0xE800000000000000), (v10 & 1) != 0))
        {
          sub_26CC168C0(*(v8 + 56) + 32 * v9, v0 + 240);

          if (swift_dynamicCast())
          {
            v11 = 0;
            v12 = *(v0 + 280);
            v15 = *(v12 + 64);
            v14 = v12 + 64;
            v13 = v15;
            v16 = -1;
            v58 = *(v0 + 280);
            v17 = -1 << *(v58 + 32);
            if (-v17 < 64)
            {
              v16 = ~(-1 << -v17);
            }

            v18 = v16 & v13;
            v19 = (63 - v17) >> 6;
            v20 = MEMORY[0x277D84F98];
            v21 = &qword_2804BD9D8;
            v57 = v14;
            while (v18)
            {
LABEL_16:
              v23 = __clz(__rbit64(v18));
              v18 &= v18 - 1;
              v24 = v23 | (v11 << 6);
              v25 = (*(v58 + 48) + 16 * v24);
              v27 = *v25;
              v26 = v25[1];
              sub_26CC168C0(*(v58 + 56) + 32 * v24, v0 + 32);
              *(v0 + 64) = v27;
              *(v0 + 72) = v26;
              sub_26CC331CC((v0 + 32), (v0 + 80));
              v28 = v21;
              sub_26CC1B4DC(v0 + 64, v0 + 112, v21, qword_26CD47D98);

              if (swift_dynamicCast())
              {
                v32 = *(v0 + 288);
                sub_26CC1B4DC(v0 + 64, v0 + 160, v28, qword_26CD47D98);
                v33 = *(v0 + 160);
                v34 = *(v0 + 168);
                v35 = objc_allocWithZone(type metadata accessor for ChannelMetadata());
                v36 = ChannelMetadata.init(from:)(v32);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                sub_26CD38F2C(v36, v33, v34, isUniquelyReferenced_nonNull_native);
                v21 = &qword_2804BD9D8;

                __swift_destroy_boxed_opaque_existential_1((v0 + 176));
                sub_26CC1B544(v0 + 64, &qword_2804BD9D8, qword_26CD47D98);
                v14 = v57;
              }

              else
              {
                if (qword_280BB9C20 != -1)
                {
                  swift_once();
                }

                v59 = qword_280BBCBE0;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
                v29 = swift_allocObject();
                *(v29 + 16) = xmmword_26CD3C1E0;
                sub_26CD3AC6C();
                MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD51D10);
                MEMORY[0x26D6AD060](v27, v26);
                *(v29 + 32) = 0;
                *(v29 + 40) = 0xE000000000000000;
                v30 = sub_26CD3A98C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
                v31 = swift_allocObject();
                *(v31 + 16) = xmmword_26CD3C1E0;
                *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
                *(v31 + 64) = sub_26CC2E6E8();
                *(v31 + 32) = v29;
                sub_26CD3A3DC(v30, &dword_26CC14000, v59, "%@", 2, 2, v31);

                v21 = v28;
                sub_26CC1B544(v0 + 64, v28, qword_26CD47D98);
                v14 = v57;
              }
            }

            while (1)
            {
              v22 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                break;
              }

              if (v22 >= v19)
              {
                v53 = *(v0 + 344);
                v55 = *(v0 + 312);
                v54 = *(v0 + 320);
                v56 = *(v0 + 304);

                qword_2804BD9B0 = v20;

                (*(v55 + 8))(v54, v56);
                goto LABEL_28;
              }

              v18 = *(v14 + 8 * v22);
              ++v11;
              if (v18)
              {
                v11 = v22;
                goto LABEL_16;
              }
            }

            __break(1u);
            goto LABEL_37;
          }
        }

        else
        {
        }

        if (qword_280BB9C20 != -1)
        {
          swift_once();
        }

        v38 = *(v0 + 344);
        v40 = *(v0 + 312);
        v39 = *(v0 + 320);
        v41 = *(v0 + 304);
        v42 = qword_280BBCBE0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v43 = swift_allocObject();
        v60 = xmmword_26CD3C1E0;
        *(v43 + 16) = xmmword_26CD3C1E0;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD00000000000003BLL, 0x800000026CD51CD0);
        v44 = [v38 description];
        goto LABEL_27;
      }
    }

    else
    {
    }

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 344);
    v40 = *(v0 + 312);
    v39 = *(v0 + 320);
    v41 = *(v0 + 304);
    v42 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v43 = swift_allocObject();
    v60 = xmmword_26CD3C1E0;
    *(v43 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD51C90);
    v44 = [v38 description];
    goto LABEL_27;
  }

  if (qword_280BB9C20 != -1)
  {
LABEL_37:
    swift_once();
  }

  v38 = *(v0 + 344);
  v40 = *(v0 + 312);
  v39 = *(v0 + 320);
  v41 = *(v0 + 304);
  v42 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v43 = swift_allocObject();
  v60 = xmmword_26CD3C1E0;
  *(v43 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000033, 0x800000026CD51C50);
  v44 = [v38 description];
LABEL_27:
  v45 = v44;
  v46 = sub_26CD3A5CC();
  v48 = v47;

  MEMORY[0x26D6AD060](v46, v48);

  *(v43 + 32) = 0;
  *(v43 + 40) = 0xE000000000000000;
  v49 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v50 = swift_allocObject();
  *(v50 + 16) = v60;
  *(v50 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v50 + 64) = sub_26CC2E6E8();
  *(v50 + 32) = v43;
  sub_26CD3A3DC(v49, &dword_26CC14000, v42, "%@", 2, 2, v50);

  (*(v40 + 8))(v39, v41);
  v20 = 0;
LABEL_28:

  v51 = *(v0 + 8);

  return v51(v20);
}

uint64_t sub_26CCFC5D8()
{
  (*(v0[39] + 8))(v0[40], v0[38]);
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = qword_280BBCBE0;
  v2 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v3 + 64) = sub_26CC2E6E8();
  *(v3 + 32) = &unk_287DFB610;
  sub_26CD3A3DC(v2, &dword_26CC14000, v1, "%@", 2, 2, v3);

  v4 = v0[1];

  return v4(0);
}

unint64_t sub_26CCFC748()
{
  result = qword_2804BD9E0;
  if (!qword_2804BD9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD9E0);
  }

  return result;
}

uint64_t sub_26CCFC79C(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_26CD3A07C();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26CD3A41C();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v11 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v41 = v10;
  sub_26CD3A3FC();
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_26CD3AC6C();

  v45 = 0xD000000000000029;
  v46 = 0x800000026CD51DC0;
  v12 = *(v2 + 16);
  v33 = *(v2 + 24);
  v34 = v12;
  MEMORY[0x26D6AD060]();
  v13 = v45;
  v14 = v46;
  v15 = sub_26CD3A99C();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v16 = swift_allocObject();
  v44 = xmmword_26CD3C1E0;
  *(v16 + 16) = xmmword_26CD3C1E0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v17 = sub_26CC19E10();
  *(v16 + 64) = v17;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  v40 = v11;
  sub_26CD3A3DC(v15, &dword_26CC14000, v11, "%@", 2, 2, v16);

  sub_26CC1B2F4(v5);
  v18 = v38;
  if ((*(v38 + 48))(v5, 1, v6) == 1)
  {
    sub_26CC1B544(v5, &qword_2804BCA30, &qword_26CD3DA70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v19 = swift_allocObject();
    *(v19 + 16) = v44;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000003BLL, 0x800000026CD4E9D0);
    MEMORY[0x26D6AD060](v34, v33);
    MEMORY[0x26D6AD060](0xD000000000000010, 0x800000026CD51DF0);
    v20 = v46;
    *(v19 + 32) = v45;
    *(v19 + 40) = v20;
    v21 = sub_26CD3A98C();
    v22 = swift_allocObject();
    *(v22 + 16) = v44;
    *(v22 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v22 + 64) = sub_26CC2E6E8();
    *(v22 + 32) = v19;
    sub_26CD3A3DC(v21, &dword_26CC14000, v40, "%@", 2, 2, v22);
  }

  else
  {
    v23 = v6;
    v24 = v35;
    (*(v18 + 32))(v35, v5, v23);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_26CD3AC6C();

    v45 = 0xD000000000000028;
    v46 = 0x800000026CD51E10;
    sub_26CC1B8FC();
    v25 = sub_26CD3AF8C();
    MEMORY[0x26D6AD060](v25);

    v26 = v45;
    v27 = v46;
    v28 = sub_26CD3A99C();
    v29 = swift_allocObject();
    *(v29 + 16) = v44;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = v17;
    *(v29 + 32) = v26;
    *(v29 + 40) = v27;
    sub_26CD3A3DC(v28, &dword_26CC14000, v40, "%@", 2, 2, v29);

    sub_26CD3A0CC();
    (*(v18 + 8))(v24, v23);
  }

  sub_26CD3AA1C();
  v30 = v41;
  sub_26CD3A3FC();
  return (*(v42 + 8))(v30, v43);
}

uint64_t sub_26CCFCD54()
{

  sub_26CC1B544(v0 + OBJC_IVAR____TtC13TVAppServices17TVAppCacheStorage____lazy_storage___cacheUrl, &qword_2804BC900, &unk_26CD47F10);

  return swift_deallocClassInstance();
}

id sub_26CCFCE70(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = objc_opt_self();
  v7 = a3;
  v8 = [v6 ams_sharedAccountStore];
  v9 = [v8 *a4];

  return v9;
}

TVAppAccountStoreObjC __swiftcall TVAppAccountStoreObjC.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_26CCFD150(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return result;
}

double sub_26CCFD1C0(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

double sub_26CCFD210(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

id TVAppBagMock.__allocating_init(data:cachedData:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_prewarmCallCount] = 0;
  *&v5[OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data] = a1;
  *&v5[OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id TVAppBagMock.init(data:cachedData:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_prewarmCallCount] = 0;
  *&v2[OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data] = a1;
  *&v2[OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TVAppBagMock();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_26CCFD3B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CCFD46C;

  return sub_26CCFDD10(a1, a2);
}

uint64_t sub_26CCFD46C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_26CCFD570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_26CCFD594, 0, 0);
}

uint64_t sub_26CCFD594()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    v6 = sub_26CC181C4(v5, v4);
    if (v7)
    {
      sub_26CC168C0(*(v3 + 56) + 32 * v6, v0 + 16);

      goto LABEL_6;
    }
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  v8 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v9 = sub_26CD3A07C();
  v10 = swift_dynamicCast();
  (*(*(v9 - 8) + 56))(v8, v10 ^ 1u, 1, v9);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26CCFD6E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC16C10;

  return sub_26CCFDE4C(a1, a2);
}

uint64_t sub_26CCFD798(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CCFF690;

  return sub_26CCFDF94(a1, a2);
}

uint64_t sub_26CCFD850(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CCFF690;

  return sub_26CCFE0DC(a1, a2);
}

uint64_t sub_26CCFD908(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_26CC181C4(a1, a2);
    if (v8)
    {
      sub_26CC168C0(*(v6 + 56) + 32 * v7, v10);

      goto LABEL_6;
    }
  }

  memset(v10, 0, sizeof(v10));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCFD9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v9 = sub_26CC181C4(a1, a2);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    memset(v14, 0, sizeof(v14));
    goto LABEL_6;
  }

  sub_26CC168C0(*(v8 + 56) + 32 * v9, v14);

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v11 = sub_26CD3A07C();
  v12 = swift_dynamicCast();
  return (*(*(v11 - 8) + 56))(a3, v12 ^ 1u, 1, v11);
}

uint64_t sub_26CCFDB30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (*(v10 + 16))
  {

    v11 = sub_26CC181C4(a1, a2);
    if (v12)
    {
      sub_26CC168C0(*(v10 + 56) + 32 * v11, v14);

      goto LABEL_6;
    }
  }

  memset(v14, 0, sizeof(v14));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCFDC2C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_26CC181C4(a1, a2);
    if (v8)
    {
      sub_26CC168C0(*(v6 + 56) + 32 * v7, v10);

      goto LABEL_6;
    }
  }

  memset(v10, 0, sizeof(v10));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  sub_26CC54888();
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCFDD10(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_26CCFDD34, 0, 0);
}

uint64_t sub_26CCFDD34()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);

    v6 = sub_26CC181C4(v5, v4);
    if (v7)
    {
      sub_26CC168C0(*(v3 + 56) + 32 * v6, v0 + 16);

      goto LABEL_6;
    }
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(v0 + 8);

  return v10(v8, v9);
}

uint64_t sub_26CCFDE4C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_26CCFDE70, 0, 0);
}

uint64_t sub_26CCFDE70()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    v6 = sub_26CC181C4(v5, v4);
    if (v7)
    {
      sub_26CC168C0(*(v3 + 56) + 32 * v6, v0 + 16);

      goto LABEL_6;
    }
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 72);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_26CCFDF94(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_26CCFDFB8, 0, 0);
}

uint64_t sub_26CCFDFB8()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    v6 = sub_26CC181C4(v5, v4);
    if (v7)
    {
      sub_26CC168C0(*(v3 + 56) + 32 * v6, v0 + 16);

      goto LABEL_6;
    }
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD460, &unk_26CD45D60);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 72);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_26CCFE0DC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_26CCFE100, 0, 0);
}

uint64_t sub_26CCFE100()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    v6 = sub_26CC181C4(v5, v4);
    if (v7)
    {
      sub_26CC168C0(*(v3 + 56) + 32 * v6, v0 + 16);

      goto LABEL_6;
    }
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  sub_26CC54888();
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 72);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_26CCFE218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_26CCFE240, 0, 0);
}

uint64_t sub_26CCFE240()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_data;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);

    v6 = sub_26CC181C4(v5, v4);
    if (v7)
    {
      sub_26CC168C0(*(v3 + 56) + 32 * v6, v0 + 16);

      goto LABEL_6;
    }
  }

  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v10 = swift_dynamicCast();
  (*(*(v8 - 8) + 56))(v9, v10 ^ 1u, 1, v8);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26CCFE380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_cachedData;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_5;
  }

  v11 = sub_26CC181C4(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_5:
    memset(v15, 0, sizeof(v15));
    goto LABEL_6;
  }

  sub_26CC168C0(*(v10 + 56) + 32 * v11, v15);

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v13 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v13 ^ 1u, 1, a3);
}

uint64_t sub_26CCFE494()
{
  v1 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_prewarmCallCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26CCFE4D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_prewarmCallCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26CCFE5A8()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_prewarmCallCount;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v6;
    v7 = *(v0 + 8);

    return v7();
  }

  return result;
}

id TVAppBagMock.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TVAppBagMock.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVAppBagMock();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double keypath_getTm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

uint64_t dispatch thunk of TVAppBagMock.string(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xA0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CCFD46C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of TVAppBagMock.url(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xA8);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26CC246B8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of TVAppBagMock.dictionary(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xB0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CC16C10;

  return v9(a1, a2);
}

uint64_t dispatch thunk of TVAppBagMock.array(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xB8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CCFF690;

  return v9(a1, a2);
}

uint64_t dispatch thunk of TVAppBagMock.BOOLean(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xC0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CCFF690;

  return v9(a1, a2);
}

uint64_t dispatch thunk of TVAppBagMock.integer(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xC8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CCFF690;

  return v9(a1, a2);
}

uint64_t dispatch thunk of TVAppBagMock.double(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xD0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CCFF690;

  return v9(a1, a2);
}

uint64_t dispatch thunk of TVAppBagMock.value<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x110);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26CC37110;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TVAppBagMock.prewarm()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x138);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC37110;

  return v5();
}

void sub_26CCFF698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      v6[0] = 1;
      v7 = 0x7070415654;
      v8 = 0xE500000000000000;
      v9 = v3;
      v10 = v4;
      swift_bridgeObjectRetain_n();
      sub_26CCDFD30(&v5, v6);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_26CCFF758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v79 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v65 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = &v65 - v8;
  v9 = sub_26CD3A07C();
  v74 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v65 - v12;
  sub_26CC1B4DC(a1, &v65 - v12, &qword_2804BC3F8, &qword_26CD45490);
  v14 = sub_26CD39D0C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v81 = v15 + 48;
  v76 = v16;
  v77 = v15;
  if (!v16(v13, 1, v14))
  {
    sub_26CD39C0C();
  }

  sub_26CD00BDC();
  v17 = &unk_280BBC000;
  v80 = v14;
  v84 = v3;
  v78 = v13;
  v73 = v9;
  v92 = sub_26CD01D24();
  v18 = [objc_opt_self() standardUserDefaults];
  v19 = sub_26CD3A59C();
  v20 = [v18 arrayForKey_];

  if (v20 && (v21 = sub_26CD3A7AC(), v20, v22 = sub_26CC77EFC(v21), , v22))
  {
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  sub_26CCFF698(v22);
  v82 = 0;

  v23 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_installedBundleIdentifiers;
  swift_beginAccess();
  v24 = *(v3 + v23);
  v25 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfoFormatted;
  swift_beginAccess();
  v26 = *(v3 + v25);
  v27 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_testBundleIdentifiers;
  swift_beginAccess();
  v28 = *(v3 + v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA08, &qword_26CD48050);
  inited = swift_initStackObject();
  v85 = xmmword_26CD3C1E0;
  *(inited + 16) = xmmword_26CD3C1E0;
  strcpy((inited + 32), "clientFeatures");
  *(inited + 47) = -18;
  v30 = v92;
  v31 = *(v92 + 16);
  v83 = v92;
  if (v31)
  {
    v32 = v28;
    v33 = sub_26CCDEDD4(v31, 0);
    v72 = sub_26CCE51EC(&v87, (v33 + 4), v31, v30);
    v17 = v87;
    v70 = v90;
    v71 = v89;
    v68 = v24;
    v69 = v91;

    v67 = v26;

    sub_26CC33234(v17);
    if (v72 != v31)
    {
      __break(1u);
      goto LABEL_33;
    }

    v17 = &unk_280BBC000;
    v34 = v67;
    v24 = v68;
  }

  else
  {

    v32 = v28;
    v33 = MEMORY[0x277D84F90];
    v34 = v26;
  }

  *(inited + 48) = v33;
  v35 = sub_26CC32920(inited);
  swift_setDeallocating();
  sub_26CC1B544(inited + 32, &qword_2804BDA10, &unk_26CD48058);
  sub_26CD39D8C();
  swift_allocObject();
  sub_26CD39D7C();
  v87 = v24;
  v88 = v34;
  v89 = v32;
  v90 = v35;
  sub_26CD01E48();
  v30 = v82;
  v36 = sub_26CD39D6C();
  if (v30)
  {

    if (qword_280BB9C20 == -1)
    {
LABEL_13:
      v38 = v17[380];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v39 = swift_allocObject();
      *(v39 + 16) = v85;
      v87 = 0;
      v88 = 0xE000000000000000;
      sub_26CD3AC6C();
      MEMORY[0x26D6AD060](0xD000000000000032, 0x800000026CD52150);
      v86 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
      sub_26CD3AD1C();
      v40 = v88;
      *(v39 + 32) = v87;
      *(v39 + 40) = v40;
      v41 = sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v42 = swift_allocObject();
      *(v42 + 16) = v85;
      *(v42 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v42 + 64) = sub_26CC2E6E8();
      *(v42 + 32) = v39;
      sub_26CD3A3DC(v41, &dword_26CC14000, v38, "%@", 2, 2, v42);

      (*(v77 + 56))(v79, 1, 1, v80);
      v43 = v78;
      goto LABEL_27;
    }

LABEL_33:
    swift_once();
    goto LABEL_13;
  }

  v44 = v36;
  v45 = v37;

  v43 = v78;
  v46 = v80;
  v47 = v76;
  if (v76(v78, 1, v80))
  {
    sub_26CC18C50(v44, v45);
  }

  else
  {
    sub_26CD39CDC();
    v47 = v76;
  }

  v48 = v47(v43, 1, v46);
  v49 = v84;
  v50 = v47;
  v52 = v74;
  v51 = v75;
  if (!v48)
  {
    v54 = sub_26CD39C5C();
    if (*v53)
    {
      v55 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = *v55;
      *v55 = 0x8000000000000000;
      sub_26CD38A70(0xD000000000000010, 0x800000026CD4BD10, 0x2D746E65746E6F43, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);
      *v55 = v86;
    }

    v54(&v87, 0);
    v46 = v80;
    v52 = v74;
    v51 = v75;
    v50 = v76;
  }

  if (v50(v43, 1, v46))
  {
    (*(v52 + 56))(v51, 1, 1, v73);
  }

  else
  {
    sub_26CD39C9C();
    v51 = v75;
    v57 = v73;
    if ((*(v52 + 48))(v75, 1, v73) != 1)
    {
      v62 = v66;
      (*(v52 + 32))(v66, v51, v57);
      sub_26CD01E9C();
      if (v76(v43, 1, v46))
      {
        (*(v52 + 8))(v62, v57);
      }

      else
      {
        v63 = v65;
        sub_26CD3A05C();

        (*(v52 + 56))(v63, 0, 1, v57);
        sub_26CD39CAC();
        (*(v52 + 8))(v62, v57);
      }

      v64 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_configurationRequest;
      swift_beginAccess();
      sub_26CD0257C(v43, v49 + v64);
      swift_endAccess();
      sub_26CC1B4DC(v43, v79, &qword_2804BC3F8, &qword_26CD45490);
      goto LABEL_27;
    }
  }

  sub_26CC1B544(v51, &qword_2804BCA30, &qword_26CD3DA70);
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v58 = v17[380];
  v59 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v60 = swift_allocObject();
  *(v60 + 16) = v85;
  *(v60 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v60 + 64) = sub_26CC2E6E8();
  *(v60 + 32) = &unk_287DFC720;
  sub_26CD3A3DC(v59, &dword_26CC14000, v58, "%@", 2, 2, v60);

  (*(v77 + 56))(v79, 1, 1, v46);
LABEL_27:

  return sub_26CC1B544(v43, &qword_2804BC3F8, &qword_26CD45490);
}

double sub_26CD00918()
{
  sub_26CC1B544(v0 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_configurationRequest, &qword_2804BC3F8, &qword_26CD45490);

  return result;
}

uint64_t sub_26CD009A8()
{
  sub_26CD09390();
  v0 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_configurationRequest;

  sub_26CC1B544(v1 + v0, &qword_2804BC3F8, &qword_26CD45490);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfigurationRequestBuilder(uint64_t a1)
{
  result = qword_280BB9F70;
  if (!qword_280BB9F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26CD00AE0(uint64_t a1)
{
  sub_26CD00B84(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26CD00B84(uint64_t a1)
{
  if (!qword_280BBB1E0)
  {
    sub_26CD39D0C();
    v1 = sub_26CD3AADC();
    if (!v2)
    {
      atomic_store(v1, &qword_280BBB1E0);
    }
  }
}

uint64_t sub_26CD00BDC()
{
  v2 = sub_26CD39DBC();
  v95 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v75 - v6;
  v8 = sub_26CD3A07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v75 - v13;
  sub_26CC589A8(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26CC1B544(v7, &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v15 = qword_280BBCBE0;
    v16 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_26CD3C1E0;
    *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v17 + 64) = sub_26CC2E6E8();
    *(v17 + 32) = &unk_287DFC5B8;
    sub_26CD3A3DC(v16, &dword_26CC14000, v15, "%@", 2, 2, v17);

    sub_26CD025EC();
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }

  v86 = v4;
  v87 = v2;
  v89 = v0;
  sub_26CD39FDC();
  v21 = v9 + 8;
  v20 = *(v9 + 8);
  v20(v7, v8);
  (*(v9 + 32))(v14, v12, v8);
  v22 = sub_26CD3A08C();
  if (v1)
  {

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v24 = qword_280BBCBE0;
    v25 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26CD3C1E0;
    *(v26 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v26 + 64) = sub_26CC2E6E8();
    *(v26 + 32) = &unk_287DFC588;
    sub_26CD3A3DC(v25, &dword_26CC14000, v24, "%@", 2, 2, v26);

    sub_26CD025EC();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    return (v20)(v14, v8);
  }

  v28 = v22;
  v29 = v23;
  sub_26CC18080(0, &qword_2804BDA18, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD938, &unk_26CD479F0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26CD42990;
  *(v30 + 32) = sub_26CC18080(0, &unk_280BBB7A8, 0x277CBEAC0);
  *(v30 + 40) = sub_26CC18080(0, &qword_280BBB758, 0x277CBEA60);
  *(v30 + 48) = sub_26CC18080(0, &unk_280BBB748, 0x277CCACA8);
  sub_26CD3A9AC();
  v84 = v28;

  sub_26CC1B4DC(v94, v93, &qword_2804BBDA8, &qword_26CD3D5F0);
  if (!v93[3])
  {
    sub_26CC1B544(v93, &qword_2804BBDA8, &qword_26CD3D5F0);
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v49 = qword_280BBCBE0;
    v50 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_26CD3C1E0;
    *(v51 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v51 + 64) = sub_26CC2E6E8();
    *(v51 + 32) = &unk_287DFC558;
    sub_26CD3A3DC(v50, &dword_26CC14000, v49, "%@", 2, 2, v51);

    sub_26CD025EC();
    swift_allocError();
    *v52 = 2;
    swift_willThrow();
    sub_26CC18C50(v84, v29);
    sub_26CC1B544(v94, &qword_2804BBDA8, &qword_26CD3D5F0);
    return (v20)(v14, v8);
  }

  v82 = 0;
  v31 = v90;
  if (*(v90 + 16))
  {
    v32 = sub_26CC181C4(0xD000000000000010, 0x800000026CD52250);
    if (v33)
    {
      sub_26CC168C0(*(v31 + 56) + 32 * v32, v93);
      if (swift_dynamicCast())
      {
        *(v89 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfo) = v90;
      }
    }
  }

  if (*(v31 + 16))
  {
    v34 = sub_26CC181C4(0x6269726373627553, 0xEA00000000006465);
    if (v35)
    {
      sub_26CC168C0(*(v31 + 56) + 32 * v34, v93);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      if (swift_dynamicCast())
      {
        *(v89 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscribedBundleIdentifiers) = v90;
      }
    }
  }

  if (*(v31 + 16))
  {
    v36 = sub_26CC181C4(0x656C6C6174736E49, 0xE900000000000064);
    if (v37)
    {
      sub_26CC168C0(*(v31 + 56) + 32 * v36, v93);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      if (swift_dynamicCast())
      {
        v38 = v29;
        v39 = v90;
        v40 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_installedBundleIdentifiers;
        v41 = v89;
        swift_beginAccess();
        *(v41 + v40) = v39;
        v29 = v38;
      }
    }
  }

  v42 = *(v31 + 16);
  v81 = v20;
  if (!v42)
  {
    goto LABEL_32;
  }

  v43 = sub_26CC181C4(1953719636, 0xE400000000000000);
  if ((v44 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_26CC168C0(*(v31 + 56) + 32 * v43, v93);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  if (swift_dynamicCast())
  {
    v45 = v29;
    v46 = v90;
    v47 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_testBundleIdentifiers;
    v48 = v89;
    swift_beginAccess();
    *(v48 + v47) = v46;
    v29 = v45;
LABEL_32:
  }

  v53 = v89;
  v54 = *(*(v89 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscribedBundleIdentifiers) + 16);
  if (!v54)
  {
    goto LABEL_49;
  }

  v77 = v29;
  v78 = v21;
  v79 = v14;
  v80 = v8;
  v85 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfo;
  v88 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfoFormatted;
  v83 = (v95 + 8);

  v55 = (v76 + 40);
  do
  {
    v57 = *(v55 - 1);
    v56 = *v55;
    v58 = *(v53 + v85);
    v59 = *(v58 + 16);
    swift_bridgeObjectRetain_n();
    if (!v59)
    {
      goto LABEL_42;
    }

    v60 = sub_26CC181C4(v57, v56);
    if ((v61 & 1) == 0)
    {

LABEL_41:

LABEL_42:
      v67 = v57;
      v68 = v56;
      goto LABEL_43;
    }

    sub_26CC168C0(*(v58 + 56) + 32 * v60, v93);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_41;
    }

    v62 = v92;
    v95 = v91;
    v63 = v86;
    sub_26CD39D9C();
    sub_26CD39DAC();
    v93[0] = v95;
    v93[1] = v62;
    sub_26CC16DCC();
    v64 = sub_26CD3AB1C();
    v66 = v65;
    (*v83)(v63, v87);

    v67 = v57;
    v68 = v56;
    if (v66)
    {

      v67 = v64;
      v68 = v66;
    }

LABEL_43:
    v69 = v88;
    swift_beginAccess();
    v70 = *(v53 + v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v53 + v69) = v70;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v70 = sub_26CCBF3FC(0, *(v70 + 2) + 1, 1, v70);
      *(v53 + v88) = v70;
    }

    v73 = *(v70 + 2);
    v72 = *(v70 + 3);
    if (v73 >= v72 >> 1)
    {
      v70 = sub_26CCBF3FC((v72 > 1), v73 + 1, 1, v70);
    }

    *(v70 + 2) = v73 + 1;
    v74 = &v70[32 * v73];
    *(v74 + 4) = v57;
    *(v74 + 5) = v56;
    *(v74 + 6) = v67;
    *(v74 + 7) = v68;
    v53 = v89;
    *(v89 + v88) = v70;
    swift_endAccess();
    v55 += 2;
    --v54;
  }

  while (v54);

  v8 = v80;
  v14 = v79;
  v29 = v77;
LABEL_49:
  sub_26CC18C50(v84, v29);
  sub_26CC1B544(v94, &qword_2804BBDA8, &qword_26CD3D5F0);
  return v81(v14, v8);
}

uint64_t sub_26CD01860()
{
  v1 = sub_26CD39D0C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[6] = v2;
  type metadata accessor for UTSURLRequestFactory();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_26CD019B8;

  return sub_26CC67CEC(v2, 0x72756769666E6F63, 0xEE00736E6F697461, 0x2F33762F7374752FLL, 0xE800000000000000, 0, 0);
}

uint64_t sub_26CD019B8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_26CD01CAC;
  }

  else
  {
    v2 = sub_26CD01ACC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CD01ACC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v14 = v0[4];
  v4 = v0[2];
  v5 = *(v3 + 16);
  v5(v1, v2, v4);
  type metadata accessor for ConfigurationRequestBuilder(0);
  v6 = swift_allocObject();
  (*(v3 + 56))(v6 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_configurationRequest, 1, 1, v4);
  v7 = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_installedBundleIdentifiers) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_testBundleIdentifiers) = v7;
  *(v6 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscribedBundleIdentifiers) = v7;
  v8 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfo;
  *(v6 + v8) = sub_26CC194BC(v7);
  *(v6 + OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_subscriptionInfoFormatted) = v7;
  v5(v14, v1, v4);
  v9 = sub_26CD0881C(v14);
  v10 = *(v3 + 8);
  v10(v1, v4);

  v10(v2, v4);
  v11 = (v9 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
  *v11 = 1414745936;
  v11[1] = 0xE400000000000000;

  v12 = v0[1];

  return v12(v9);
}

uint64_t sub_26CD01CAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD01D24()
{
  v0 = sub_26CC7C09C(&unk_287DFC5E8);
  swift_arrayDestroy();
  v4 = v0;
  v8[0] = 1;
  v9 = 0x7070415654;
  v10 = 0xE500000000000000;
  v11 = 0xD000000000000010;
  v12 = 0x800000026CD52230;
  sub_26CCDFD30(v5, v8);

  v6 = &type metadata for FeatureFlagManager;
  v7 = sub_26CC30530();
  LOBYTE(v5[0]) = 1;
  v1 = sub_26CD3A29C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  if (v1)
  {
    LOBYTE(v5[0]) = 1;
    v5[1] = 0x7070415654;
    v5[2] = 0xE500000000000000;
    v6 = 0x6F74616C70;
    v7 = 0xE500000000000000;
    sub_26CCDFD30(&v3, v5);
  }

  return v4;
}

unint64_t sub_26CD01E48()
{
  result = qword_280BB9F88;
  if (!qword_280BB9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9F88);
  }

  return result;
}

void *sub_26CD01E9C()
{
  v0 = sub_26CD39E2C();
  *&v30 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - v4;
  v29 = _s13TVAppServices26ContentRestrictionsUtilityO14getCountryCodeSSyFZ_0();
  v7 = v6;
  v8 = sub_26CC40F08();
  v9 = *MEMORY[0x277CEC570];
  if ((v9 & 0x80000000) != 0 || v8 != v9)
  {
    v13 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD48010;
    *(v14 + 56) = MEMORY[0x277D837D0];
    v15 = sub_26CC19E10();
    *(v14 + 32) = v29;
    *(v14 + 40) = v7;
    v16 = MEMORY[0x277D84D90];
    *(v14 + 96) = MEMORY[0x277D84D38];
    *(v14 + 104) = v16;
    *(v14 + 64) = v15;
    *(v14 + 72) = v13;

    sub_26CD3A5DC();
    sub_26CD39DFC();

    v10 = sub_26CCBE394(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = v10[2];
    v17 = v10[3];
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      *&v28 = v18 + 1;
      v27 = sub_26CCBE394((v17 > 1), v18 + 1, 1, v10);
      v19 = v28;
      v10 = v27;
    }

    v10[2] = v19;
    (*(v30 + 32))(v10 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v18, v5, v0);
    v11 = sub_26CC40EDC();
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v11 = sub_26CC40EDC();
  }

  v12 = *MEMORY[0x277CEC570];
  if ((v12 & 0x80000000) != 0 || v11 != v12)
  {
    v20 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_26CD48010;
    *(v21 + 56) = MEMORY[0x277D837D0];
    v22 = sub_26CC19E10();
    *(v21 + 32) = v29;
    *(v21 + 40) = v7;
    v23 = MEMORY[0x277D84D90];
    *(v21 + 96) = MEMORY[0x277D84D38];
    *(v21 + 104) = v23;
    *(v21 + 64) = v22;
    *(v21 + 72) = v20;
    sub_26CD3A5DC();
    sub_26CD39DFC();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_26CCBE394(0, v10[2] + 1, 1, v10);
    }

    v25 = v10[2];
    v24 = v10[3];
    if (v25 >= v24 >> 1)
    {
      v10 = sub_26CCBE394((v24 > 1), v25 + 1, 1, v10);
    }

    v10[2] = v25 + 1;
    (*(v30 + 32))(v10 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25, v3, v0);
  }

  else
  {
  }

  return v10;
}

uint64_t sub_26CD0257C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CD025EC()
{
  result = qword_280BB9C38[0];
  if (!qword_280BB9C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BB9C38);
  }

  return result;
}

unint64_t sub_26CD02654()
{
  result = qword_2804BDA20;
  if (!qword_2804BDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDA20);
  }

  return result;
}

uint64_t static UTSURLRequestFactory.create(route:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CC246B8;

  return sub_26CD027F0(a1, a2, a3, 0, 0xE000000000000000, 0, 0);
}

uint64_t UTSURLRequestError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

uint64_t sub_26CD027F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[43] = a6;
  v7[44] = a7;
  v7[41] = a4;
  v7[42] = a5;
  v7[39] = a2;
  v7[40] = a3;
  v7[38] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378);
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v8 = sub_26CD3A07C();
  v7[50] = v8;
  v7[51] = *(v8 - 8);
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD02968, 0, 0);
}

uint64_t sub_26CD02968()
{
  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = qword_280BBCC18;
  v0[55] = qword_280BBCC18;
  v7 = v2;
  v8 = v1;

  MEMORY[0x26D6AD060](v4, v3);
  v0[56] = v7;
  v0[57] = v8;

  return MEMORY[0x2822009F8](sub_26CD02A3C, v5, 0);
}

uint64_t sub_26CD02A3C()
{
  sub_26CD199A8(v0[56], v0[57]);
  v2 = v1;

  v0[58] = v2;

  return MEMORY[0x2822009F8](sub_26CD02ABC, 0, 0);
}

uint64_t sub_26CD02ABC()
{
  v1 = *(v0 + 352);
  if (*(v0 + 464))
  {

    if (!v1)
    {
      *(v0 + 488) = 0;
      v5 = *(v0 + 440);
      v7 = *(v0 + 312);
      v6 = *(v0 + 320);
      v12 = *(v0 + 328);
      v13 = *(v0 + 336);

      MEMORY[0x26D6AD060](v7, v6);
      *(v0 + 496) = v12;
      *(v0 + 504) = v13;
      v4 = sub_26CD02EF4;
      v3 = v5;
      goto LABEL_8;
    }

    v1 = *(v0 + 352);
  }

  else if (!v1)
  {
    *(v0 + 66) = 1;
    v10 = swift_task_alloc();
    *(v0 + 472) = v10;
    *v10 = v0;
    v10[1] = sub_26CD02D34;

    return sub_26CD15604((v0 + 66), 0.0);
  }

  v2 = *(v0 + 344);
  *(v0 + 544) = v1;
  *(v0 + 536) = v2;
  *(v0 + 528) = 0;

  *(v0 + 552) = sub_26CCF3448(&unk_287DF9B58);
  sub_26CD04454(&unk_287DF9B78);
  if (v1)
  {
    v3 = *(v0 + 440);
    v4 = sub_26CD03110;
LABEL_8:

    return MEMORY[0x2822009F8](v4, v3, 0);
  }

  sub_26CC6848C();
  swift_allocError();
  *v8 = 2;
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26CD02D34(void *a1)
{
  *(*v2 + 480) = v1;

  if (v1)
  {
    v4 = sub_26CD04204;
  }

  else
  {

    v4 = sub_26CD02E50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CD02E50()
{
  v0[61] = v0[60];
  v1 = v0[55];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[41];
  v6 = v0[42];

  MEMORY[0x26D6AD060](v3, v2);
  v0[62] = v5;
  v0[63] = v6;

  return MEMORY[0x2822009F8](sub_26CD02EF4, v1, 0);
}

uint64_t sub_26CD02EF4()
{
  v1 = sub_26CD199A8(v0[62], v0[63]);
  v3 = v2;

  v0[64] = v1;
  v0[65] = v3;

  return MEMORY[0x2822009F8](sub_26CD02F84, 0, 0);
}

uint64_t sub_26CD02F84()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[61];
  v0[68] = v1;
  v0[67] = v2;
  v0[66] = v3;

  v0[69] = sub_26CCF3448(&unk_287DF9B58);
  sub_26CD04454(&unk_287DF9B78);
  if (v1)
  {
    v4 = v0[55];

    return MEMORY[0x2822009F8](sub_26CD03110, v4, 0);
  }

  else
  {

    sub_26CC6848C();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_26CD03110()
{
  v1 = *(v0 + 440);
  swift_beginAccess();
  sub_26CC1B4DC(v1 + 128, v0 + 72, &qword_2804BDA30, qword_26CD482E0);
  if (*(v0 + 72))
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    sub_26CD04534(v0 + 72, v0 + 120);
    sub_26CC1B544(v0 + 72, &qword_2804BDA30, qword_26CD482E0);
    sub_26CD22CB8(v3, v2, v0 + 16);
    sub_26CD04590(v0 + 120);
    if (*(v0 + 24))
    {
      *(v0 + 256) = *(v0 + 32);
      v4 = *(v0 + 264);
      *(v0 + 560) = *(v0 + 256);
      *(v0 + 568) = v4;
      sub_26CD045E4(v0 + 256, v0 + 288);
      sub_26CC1B544(v0 + 16, &qword_2804BDA38, qword_26CD48278);
      v5 = sub_26CD03260;
      goto LABEL_6;
    }
  }

  else
  {
    sub_26CC1B544(v0 + 72, &qword_2804BDA30, qword_26CD482E0);
  }

  v5 = sub_26CD03A5C;
LABEL_6:

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CD03260()
{
  if (*(v0 + 560) == *(v0 + 312) && *(v0 + 568) == *(v0 + 320))
  {
    sub_26CC7BDB4(v0 + 256);
    goto LABEL_8;
  }

  v2 = sub_26CD3AFDC();
  sub_26CC7BDB4(v0 + 256);
  if (v2)
  {
LABEL_8:
  }

  v3 = *(v0 + 552);
  v4 = *(v0 + 408);
  v49 = *(v0 + 400);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 320);
  *(v0 + 272) = *(v0 + 312);
  *(v0 + 280) = v7;
  *(swift_task_alloc() + 16) = v3;
  sub_26CC86D6C();
  sub_26CD3A92C();

  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  *(v0 + 200) = *(v0 + 168);
  *(v0 + 216) = v8;
  *(v0 + 224) = v9;
  sub_26CC86DC0();
  sub_26CD3A66C();

  sub_26CD3A03C();

  sub_26CD3A02C();

  sub_26CC1B544(v6, &qword_2804BCA30, &qword_26CD3DA70);
  v10 = *(v4 + 48);
  if (v10(v5, 1, v49) == 1)
  {
    sub_26CC1B544(*(v0 + 392), &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v13 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    MEMORY[0x26D6AD060](v12, v11);
    *(v14 + 32) = 0xD00000000000001BLL;
    *(v14 + 40) = 0x800000026CD522A0;
    v15 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_26CD3C1E0;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v16 + 64) = sub_26CC2E6E8();
    *(v16 + 32) = v14;
    sub_26CD3A3DC(v15, &dword_26CC14000, v13, "%@", 2, 2, v16);

    sub_26CD044E0();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
LABEL_19:

    v40 = *(v0 + 8);
    goto LABEL_20;
  }

  v19 = *(v0 + 360);
  v18 = *(v0 + 368);
  v20 = *(*(v0 + 408) + 32);
  (v20)(*(v0 + 432), *(v0 + 392), *(v0 + 400));
  sub_26CD39E6C();
  sub_26CC1B4DC(v18, v19, &qword_2804BC628, &qword_26CD41378);
  v21 = sub_26CD39EAC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    v23 = *(v0 + 400);
    v24 = *(v0 + 408);
    v25 = *(v0 + 376);
    sub_26CC1B544(*(v0 + 360), &qword_2804BC628, &qword_26CD41378);
    (*(v24 + 56))(v25, 1, 1, v23);
LABEL_16:
    sub_26CC1B544(*(v0 + 376), &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 432);
    v30 = *(v0 + 400);
    v31 = *(v0 + 408);
    v32 = *(v0 + 368);
    v34 = *(v0 + 312);
    v33 = *(v0 + 320);
    v35 = qword_280BBCC98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    MEMORY[0x26D6AD060](v34, v33);
    *(v36 + 32) = 0xD000000000000025;
    *(v36 + 40) = 0x800000026CD522C0;
    v37 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_26CD3C1E0;
    *(v38 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v38 + 64) = sub_26CC2E6E8();
    *(v38 + 32) = v36;
    sub_26CD3A3DC(v37, &dword_26CC14000, v35, "%@", 2, 2, v38);

    sub_26CC6848C();
    swift_allocError();
    *v39 = 5;
    swift_willThrow();
    sub_26CC1B544(v32, &qword_2804BC628, &qword_26CD41378);
    (*(v31 + 8))(v29, v30);
    goto LABEL_19;
  }

  v26 = *(v0 + 400);
  v27 = *(v0 + 376);
  v28 = *(v0 + 360);
  sub_26CD39E7C();
  (*(v22 + 8))(v28, v21);
  if (v10(v27, 1, v26) == 1)
  {
    goto LABEL_16;
  }

  v43 = *(v0 + 424);
  v42 = *(v0 + 432);
  v44 = *(v0 + 408);
  v45 = *(v0 + 416);
  v46 = *(v0 + 400);
  v47 = *(v0 + 368);
  v20(v43);
  (*(v44 + 16))(v45, v43, v46);
  sub_26CD39C7C();
  v48 = *(v44 + 8);
  v48(v43, v46);
  sub_26CC1B544(v47, &qword_2804BC628, &qword_26CD41378);
  v48(v42, v46);

  v40 = *(v0 + 8);
LABEL_20:

  return v40();
}

uint64_t sub_26CD03A5C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 408);
  v47 = *(v0 + 400);
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  v5 = *(v0 + 320);
  *(v0 + 272) = *(v0 + 312);
  *(v0 + 280) = v5;
  *(swift_task_alloc() + 16) = v1;
  sub_26CC86D6C();
  sub_26CD3A92C();

  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  *(v0 + 200) = *(v0 + 168);
  *(v0 + 216) = v6;
  *(v0 + 224) = v7;
  sub_26CC86DC0();
  sub_26CD3A66C();

  sub_26CD3A03C();

  sub_26CD3A02C();

  sub_26CC1B544(v4, &qword_2804BCA30, &qword_26CD3DA70);
  v8 = *(v2 + 48);
  if (v8(v3, 1, v47) == 1)
  {
    sub_26CC1B544(*(v0 + 392), &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    MEMORY[0x26D6AD060](v10, v9);
    *(v12 + 32) = 0xD00000000000001BLL;
    *(v12 + 40) = 0x800000026CD522A0;
    v13 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v14 + 64) = sub_26CC2E6E8();
    *(v14 + 32) = v12;
    sub_26CD3A3DC(v13, &dword_26CC14000, v11, "%@", 2, 2, v14);

    sub_26CD044E0();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
LABEL_11:

    v38 = *(v0 + 8);
    goto LABEL_12;
  }

  v17 = *(v0 + 360);
  v16 = *(v0 + 368);
  v18 = *(*(v0 + 408) + 32);
  (v18)(*(v0 + 432), *(v0 + 392), *(v0 + 400));
  sub_26CD39E6C();
  sub_26CC1B4DC(v16, v17, &qword_2804BC628, &qword_26CD41378);
  v19 = sub_26CD39EAC();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    v21 = *(v0 + 400);
    v22 = *(v0 + 408);
    v23 = *(v0 + 376);
    sub_26CC1B544(*(v0 + 360), &qword_2804BC628, &qword_26CD41378);
    (*(v22 + 56))(v23, 1, 1, v21);
LABEL_8:
    sub_26CC1B544(*(v0 + 376), &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 432);
    v28 = *(v0 + 400);
    v29 = *(v0 + 408);
    v30 = *(v0 + 368);
    v32 = *(v0 + 312);
    v31 = *(v0 + 320);
    v33 = qword_280BBCC98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    MEMORY[0x26D6AD060](v32, v31);
    *(v34 + 32) = 0xD000000000000025;
    *(v34 + 40) = 0x800000026CD522C0;
    v35 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26CD3C1E0;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v36 + 64) = sub_26CC2E6E8();
    *(v36 + 32) = v34;
    sub_26CD3A3DC(v35, &dword_26CC14000, v33, "%@", 2, 2, v36);

    sub_26CC6848C();
    swift_allocError();
    *v37 = 5;
    swift_willThrow();
    sub_26CC1B544(v30, &qword_2804BC628, &qword_26CD41378);
    (*(v29 + 8))(v27, v28);
    goto LABEL_11;
  }

  v24 = *(v0 + 400);
  v25 = *(v0 + 376);
  v26 = *(v0 + 360);
  sub_26CD39E7C();
  (*(v20 + 8))(v26, v19);
  if (v8(v25, 1, v24) == 1)
  {
    goto LABEL_8;
  }

  v41 = *(v0 + 424);
  v40 = *(v0 + 432);
  v42 = *(v0 + 408);
  v43 = *(v0 + 416);
  v44 = *(v0 + 400);
  v45 = *(v0 + 368);
  v18(v41);
  (*(v42 + 16))(v43, v41, v44);
  sub_26CD39C7C();
  v46 = *(v42 + 8);
  v46(v41, v44);
  sub_26CC1B544(v45, &qword_2804BC628, &qword_26CD41378);
  v46(v40, v44);

  v38 = *(v0 + 8);
LABEL_12:

  return v38();
}

uint64_t sub_26CD04204()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static UTSURLRequestFactory.create(route:basePath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26CC37110;

  return sub_26CD027F0(a1, a2, a3, a4, a5, 0, 0);
}

unint64_t sub_26CD043B4()
{
  result = qword_2804BDA28;
  if (!qword_2804BDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDA28);
  }

  return result;
}

unint64_t sub_26CD044E0()
{
  result = qword_280BBA9B0;
  if (!qword_280BBA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBA9B0);
  }

  return result;
}

uint64_t sub_26CD04640()
{
  v1[37] = v0;
  v2 = sub_26CD39E2C();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v3 = sub_26CD39D0C();
  v1[44] = v3;
  v1[45] = *(v3 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v4 = sub_26CD3A07C();
  v1[51] = v4;
  v1[52] = *(v4 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD04844, 0, 0);
}

uint64_t sub_26CD04844()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[44];
  v5 = v0[45];
  v6 = v0[43];
  v7 = v0[37];
  v8 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  v0[55] = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v0[56] = v9;
  v0[57] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25 = v9;
  v26 = v7;
  v9(v3, v7 + v8, v4);
  sub_26CD39C9C();
  v10 = *(v5 + 8);
  v0[58] = v10;
  v0[59] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v4);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_26CC1B544(v0[43], &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v11 = v0[48];
    v12 = v0[44];
    v24 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000004BLL, 0x800000026CD52330);
    v25(v11, v26 + v8, v12);
    sub_26CD05DEC();
    v14 = sub_26CD3AF8C();
    MEMORY[0x26D6AD060](v14);

    v10(v11, v12);
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    v15 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_26CD3C1E0;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v16 + 64) = sub_26CC2E6E8();
    *(v16 + 32) = v13;
    sub_26CD3A3DC(v15, &dword_26CC14000, v24, "%@", 2, 2, v16);

    sub_26CC6848C();
    swift_allocError();
    *v17 = 4;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  else
  {
    (*(v0[52] + 32))(v0[54], v0[43], v0[51]);
    v20 = sub_26CD39FFC();
    v22 = v21;
    v0[60] = v20;
    v0[61] = v21;
    v23 = swift_task_alloc();
    v0[62] = v23;
    *v23 = v0;
    v23[1] = sub_26CD04C7C;

    return sub_26CD05E44(v20, v22);
  }
}

uint64_t sub_26CD04C7C(uint64_t a1)
{
  *(*v1 + 504) = a1;

  return MEMORY[0x2822009F8](sub_26CD04D7C, 0, 0);
}

uint64_t sub_26CD04D7C(uint64_t a1)
{
  v2 = URL.queryParameters.getter();
  v3 = v1[63];
  if (v2)
  {
    v4 = v2;
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v1[39];
      v9 = *(v6 + 16);
      v8 = v6 + 16;
      v7 = v9;
      v26 = (*(v8 + 64) + 32) & ~*(v8 + 64);
      v10 = v3 + v26;
      v11 = *(v8 + 56);
      v27 = v9;
      v28 = MEMORY[0x277D84F90];
      do
      {
        v14 = v1[41];
        v7(v14, v10, v1[38]);
        v15 = swift_task_alloc();
        *(v15 + 16) = v14;

        sub_26CCF1604(sub_26CD076F0, v15, v4);
        LOBYTE(v14) = v16;

        if ((v14 & 1) == 0)
        {
          v7(v1[40], v1[41], v1[38]);
          v17 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_26CCBE394(0, v28[2] + 1, 1, v28);
          }

          v19 = v17[2];
          v18 = v17[3];
          if (v19 >= v18 >> 1)
          {
            v17 = sub_26CCBE394((v18 > 1), v19 + 1, 1, v17);
          }

          v12 = v1[40];
          v13 = v1[38];
          v17[2] = v19 + 1;
          v28 = v17;
          (*(v8 + 16))(v17 + v26 + v19 * v11, v12, v13);
        }

        (*(v8 - 8))(v1[41], v1[38]);
        v10 += v11;
        --v5;
        v7 = v27;
      }

      while (v5);
    }
  }

  v21 = v1[52];
  v20 = v1[53];
  v22 = v1[51];
  v23 = v1[42];
  sub_26CD3A05C();

  (*(v21 + 16))(v23, v20, v22);
  (*(v21 + 56))(v23, 0, 1, v22);
  swift_beginAccess();
  sub_26CD39CAC();
  swift_endAccess();
  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  v24 = qword_280BBCC18;
  v1[64] = qword_280BBCC18;

  return MEMORY[0x2822009F8](sub_26CD05088, v24, 0);
}

uint64_t sub_26CD05088()
{
  v1 = *(v0 + 512);
  swift_beginAccess();
  sub_26CD07680(v1 + 128, v0 + 72);
  if (*(v0 + 72))
  {
    v3 = *(v0 + 480);
    v2 = *(v0 + 488);
    sub_26CD04534(v0 + 72, v0 + 120);
    sub_26CC1B544(v0 + 72, &qword_2804BDA30, qword_26CD482E0);
    sub_26CD22CB8(v3, v2, v0 + 16);

    sub_26CD04590(v0 + 120);
    if (*(v0 + 24))
    {
      *(v0 + 66) = *(v0 + 65);
      sub_26CC1B544(v0 + 16, &qword_2804BDA38, qword_26CD48278);
      v4 = sub_26CD051C0;
      goto LABEL_6;
    }
  }

  else
  {

    sub_26CC1B544(v0 + 72, &qword_2804BDA30, qword_26CD482E0);
  }

  v4 = sub_26CD05718;
LABEL_6:

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CD051C0()
{
  if (*(v0 + 66))
  {
    v1 = objc_allocWithZone(MEMORY[0x277CCAB70]);
    v2 = sub_26CD39FCC();
    v3 = [v1 initWithURL_];
    *(v0 + 520) = v3;

    if (qword_280BB9C28 != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 464);
    v40 = *(v0 + 448);
    v4 = *(v0 + 440);
    v5 = *(v0 + 392);
    v6 = *(v0 + 352);
    v7 = *(v0 + 296);
    v8 = sub_26CD3A59C();
    MGGetSInt32Answer();

    v9 = sub_26CD3A59C();

    v10 = sub_26CD3A59C();
    [v3 setValue:v9 forHTTPHeaderField:v10];

    v11 = [objc_opt_self() standardUserDefaults];
    v12 = sub_26CD3A59C();
    v13 = [v11 integerForKey_];

    v14 = 91;
    if (v13)
    {
      v14 = v13;
    }

    *(v0 + 288) = v14;
    sub_26CD3AF8C();
    v15 = sub_26CD3A59C();

    v16 = sub_26CD3A59C();
    [v3 setValue:v15 forHTTPHeaderField:v16];

    v17 = sub_26CD3A59C();
    v18 = sub_26CD3A59C();
    [v3 setValue:v17 forHTTPHeaderField:v18];

    v40(v5, v7 + v4, v6);
    v19 = sub_26CD39CCC();
    v21 = v20;
    v41(v5, v6);
    if (v21 >> 60 == 15)
    {
      v22 = 0;
    }

    else
    {
      v22 = sub_26CD3A09C();
      sub_26CC1D1B8(v19, v21);
    }

    v28 = *(v0 + 448);
    v29 = *(v0 + 440);
    v30 = *(v0 + 384);
    v32 = *(v0 + 360);
    v31 = *(v0 + 368);
    v33 = *(v0 + 352);
    v34 = *(v0 + 296);
    [v3 setHTTPBody_];

    v35 = sub_26CD3A59C();
    [v3 setHTTPMethod_];

    sub_26CD39C6C();
    swift_beginAccess();
    v36 = *(v32 + 40);
    *(v0 + 528) = v36;
    *(v0 + 536) = (v32 + 40) & 0xFFFFFFFFFFFFLL | 0xEFDA000000000000;
    v36(v34 + v29, v30, v33);
    swift_endAccess();
    type metadata accessor for NetworkRequestSigningManager();
    v28(v31, v34 + v29, v33);
    v37 = swift_task_alloc();
    *(v0 + 544) = v37;
    *v37 = v0;
    v37[1] = sub_26CD05834;
    v39 = *(v0 + 368);
    v38 = *(v0 + 376);

    return sub_26CC60760(v38, v39);
  }

  else
  {
    v23 = *(v0 + 432);
    v24 = *(v0 + 408);
    v25 = *(*(v0 + 416) + 8);
    v25(*(v0 + 424), v24);
    v25(v23, v24);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_26CD05718()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = *(v0[52] + 8);
  v3(v0[53], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CD05834()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  (*(v2 + 464))(*(v2 + 368), *(v2 + 352));
  if (v0)
  {
    v3 = sub_26CD05B18;
  }

  else
  {
    v3 = sub_26CD059A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CD059A4()
{
  v12 = *(v0 + 528);
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 408);
  v6 = *(v0 + 376);
  v7 = *(v0 + 352);
  v8 = *(v0 + 296);

  v9 = *(v4 + 8);
  v9(v3, v5);
  v9(v1, v5);
  swift_beginAccess();
  v12(v8 + v2, v6, v7);
  swift_endAccess();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26CD05B18()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 408);
  v4 = *(v0 + 416);

  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26CD05C44()
{
  v1 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  v2 = sub_26CD39D0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_26CC1B544(v0 + OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_locationClient, &qword_2804BDA58, &qword_26CD4AAB0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UTSNetworkRequestDecorator(uint64_t a1)
{
  result = qword_2804BDA48;
  if (!qword_2804BDA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CD05D54(uint64_t a1)
{
  result = sub_26CD39D0C();
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

unint64_t sub_26CD05DEC()
{
  result = qword_2804BDA60;
  if (!qword_2804BDA60)
  {
    sub_26CD39D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDA60);
  }

  return result;
}

uint64_t sub_26CD05E44(uint64_t a1, uint64_t a2)
{
  v3[70] = v2;
  v3[69] = a2;
  v3[68] = a1;
  v4 = sub_26CD39D0C();
  v3[71] = v4;
  v3[72] = *(v4 - 8);
  v3[73] = swift_task_alloc();
  v5 = sub_26CD39E2C();
  v3[74] = v5;
  v3[75] = *(v5 - 8);
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD05F80, 0, 0);
}

uint64_t sub_26CD05F80()
{
  *(v0 + 528) = MEMORY[0x277D84FA0];
  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  v1 = qword_280BBCC18;
  *(v0 + 632) = qword_280BBCC18;

  return MEMORY[0x2822009F8](sub_26CD06024, v1, 0);
}

uint64_t sub_26CD06024()
{
  v0[80] = sub_26CD19808(v0[68], v0[69]);

  return MEMORY[0x2822009F8](sub_26CD06098, 0, 0);
}

uint64_t sub_26CD06098(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 640);
  if (v4)
  {
    v5 = 0;
    v6 = v4 + 64;
    v7 = -1;
    v8 = -1 << *(v4 + 32);
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v9 = v7 & *(v4 + 64);
    v10 = (63 - v8) >> 6;
    v40 = (*(v3 + 600) + 8);
    v39 = *(v3 + 640);
    if (!v9)
    {
      goto LABEL_8;
    }

    do
    {
      while (1)
      {
        v11 = v5;
LABEL_15:
        v14 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v15 = v14 | (v11 << 6);
        v16 = (*(v4 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        sub_26CC168C0(*(v4 + 56) + 32 * v15, v3 + 328);
        *(v3 + 216) = v18;
        *(v3 + 224) = v17;
        sub_26CC331CC((v3 + 328), (v3 + 232));

        v13 = v11;
LABEL_16:
        *(v3 + 168) = *(v3 + 216);
        *(v3 + 184) = *(v3 + 232);
        *(v3 + 200) = *(v3 + 248);
        if (!*(v3 + 176))
        {

          v22 = *(v3 + 528);
          goto LABEL_23;
        }

        sub_26CC331CC((v3 + 184), (v3 + 360));
        if (swift_dynamicCast())
        {
          break;
        }

        v5 = v13;
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      v43 = v13;
      v19 = *(v3 + 624);
      v20 = *(v3 + 616);
      v41 = *(v3 + 592);
      sub_26CD39DFC();

      v21 = v20;
      v4 = v39;
      sub_26CCDEE64(v19, v21);
      a1 = (*v40)(v19, v41);
      v5 = v43;
    }

    while (v9);
LABEL_8:
    if (v10 <= v5 + 1)
    {
      v12 = v5 + 1;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        v9 = 0;
        *(v3 + 248) = 0u;
        *(v3 + 232) = 0u;
        *(v3 + 216) = 0u;
        goto LABEL_16;
      }

      v9 = *(v6 + 8 * v11);
      ++v5;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = MEMORY[0x277D84FA0];
LABEL_23:
    v23 = v22 + 56;
    v24 = -1;
    v25 = -1 << *(v22 + 32);
    if (-v25 < 64)
    {
      v24 = ~(-1 << -v25);
    }

    v26 = v24 & *(v22 + 56);
    v27 = (63 - v25) >> 6;
    v44 = *(v3 + 600);
    v42 = (v44 + 8);

    v28 = 0;
    while (v26)
    {
LABEL_31:
      v30 = a1;
      (*(v44 + 16))(*(v3 + 608), *(a1 + 6) + *(v44 + 72) * (__clz(__rbit64(v26)) | (v28 << 6)), *(v3 + 592));
      v31 = sub_26CD39E0C();
      v33 = *(v3 + 608);
      v34 = *(v3 + 592);
      if (v31 == 26227 && v32 == 0xE200000000000000)
      {

        (*v42)(v33, v34);
LABEL_41:

        a2 = *(v3 + 632);
        a1 = sub_26CD066F8;
        a3 = 0;

        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      v26 &= v26 - 1;
      v36 = sub_26CD3AFDC();

      (*v42)(v33, v34);
      a1 = v30;
      if (v36)
      {
        goto LABEL_41;
      }
    }

    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {

        v37 = swift_task_alloc();
        *(v3 + 648) = v37;
        *v37 = v3;
        v37[1] = sub_26CD064F4;

        return sub_26CCCA3E8();
      }

      v26 = *(v23 + 8 * v29);
      ++v28;
      if (v26)
      {
        v28 = v29;
        goto LABEL_31;
      }
    }
  }

  __break(1u);
  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26CD064F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 656) = v2;

  if (v2)
  {
    v7 = sub_26CD074CC;
  }

  else
  {
    *(v6 + 664) = a2;
    *(v6 + 672) = a1;
    v7 = sub_26CD0662C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CD0662C()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[75];
  v4 = v0[74];
  sub_26CD39DFC();

  sub_26CCDEE64(v1, v2);
  (*(v3 + 8))(v1, v4);
  v5 = v0[79];

  return MEMORY[0x2822009F8](sub_26CD066F8, v5, 0);
}

uint64_t sub_26CD066F8()
{
  v1 = *(v0 + 632);
  swift_beginAccess();
  sub_26CD07680(v1 + 128, v0 + 72);
  if (*(v0 + 72))
  {
    v2 = *(v0 + 552);
    v3 = *(v0 + 544);
    sub_26CD04534(v0 + 72, v0 + 120);
    sub_26CC1B544(v0 + 72, &qword_2804BDA30, qword_26CD482E0);
    sub_26CD22CB8(v3, v2, v0 + 16);
    sub_26CD04590(v0 + 120);
    if (*(v0 + 24))
    {
      *(v0 + 68) = *(v0 + 64);
      sub_26CC1B544(v0 + 16, &qword_2804BDA38, qword_26CD48278);
      v4 = sub_26CD06824;
      goto LABEL_6;
    }
  }

  else
  {
    sub_26CC1B544(v0 + 72, &qword_2804BDA30, qword_26CD482E0);
  }

  v4 = sub_26CD069E4;
LABEL_6:

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CD06824()
{
  v10 = v0;
  if (*(v0 + 68))
  {
    if (qword_2804BBA20 != -1)
    {
      swift_once();
    }

    *(v0 + 680) = off_2804BC780;
    v1 = swift_task_alloc();
    *(v0 + 688) = v1;
    *v1 = v0;
    v1[1] = sub_26CD06AEC;

    return sub_26CC7F9DC();
  }

  v3 = *(v0 + 528);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = *(v0 + 600);
  v6 = sub_26CCDEBD0(*(v3 + 16), 0);
  v7 = sub_26CCE4C98(&v9, &v6[(*(v5 + 80) + 32) & ~*(v5 + 80)], v4, v3);
  sub_26CC33234(v9);
  if (v7 != v4)
  {
    __break(1u);
LABEL_10:

    v6 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 8);

  return v8(v6);
}

uint64_t sub_26CD069E4()
{
  v9 = v0;
  v1 = v0[66];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[75];
    v4 = sub_26CCDEBD0(*(v1 + 16), 0);
    v5 = sub_26CCE4C98(&v8, &v4[(*(v3 + 80) + 32) & ~*(v3 + 80)], v2, v1);
    sub_26CC33234(v8);
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_26CD06AEC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 696) = a1;
  *(v3 + 704) = v1;

  if (v1)
  {
    v4 = sub_26CD06C04;
  }

  else
  {
    v4 = sub_26CD07050;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CD06C04()
{
  v28 = v0;
  v1 = *(v0 + 704);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(*(v0 + 680) + 16);
  *(swift_task_alloc() + 16) = v6;
  sub_26CD3A9EC();

  v7 = *(v0 + 66);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_26CD3AC6C();
  *(v0 + 464) = 0;
  *(v0 + 472) = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD00000000000001FLL, 0x800000026CD523A0);
  v8 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v8, v4);
  sub_26CD05DEC();
  v9 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](v9);

  (*(v3 + 8))(v2, v4);
  MEMORY[0x26D6AD060](0x1000000000000012, 0x800000026CD523C0);
  *(v0 + 67) = v7;
  sub_26CD3AD1C();
  MEMORY[0x26D6AD060](0x72724520A280E220, 0xAC000000203A726FLL);
  *(v0 + 536) = v1;
  v10 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  v11 = sub_26CD3A5FC();
  MEMORY[0x26D6AD060](v11);

  v13 = *(v0 + 464);
  v12 = *(v0 + 472);
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 704);
  v15 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  v26 = 0xD00000000000001DLL;
  v27 = 0x800000026CD523E0;
  MEMORY[0x26D6AD060](v13, v12);

  *(v16 + 32) = 0xD00000000000001DLL;
  *(v16 + 40) = 0x800000026CD523E0;
  v17 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26CD3C1E0;
  *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v18 + 64) = sub_26CC2E6E8();
  *(v18 + 32) = v16;
  sub_26CD3A3DC(v17, &dword_26CC14000, v15, "%@", 2, 2, v18);

  v19 = *(v0 + 528);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v0 + 600);
    v22 = sub_26CCDEBD0(*(v19 + 16), 0);
    v23 = sub_26CCE4C98(&v26, &v22[(*(v21 + 80) + 32) & ~*(v21 + 80)], v20, v19);
    sub_26CC33234(v26);
    if (v23 == v20)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v22 = MEMORY[0x277D84F90];
LABEL_7:

  v24 = *(v0 + 8);

  return v24(v22);
}

uint64_t sub_26CD07050()
{
  v35 = v0;
  v1 = v0 + 66;
  v2 = v0[87];
  if (*(v2 + 16))
  {
    v3 = sub_26CC181C4(0x656475746974616CLL, 0xE800000000000000);
    v4 = v0[87];
    if (v5)
    {
      sub_26CC168C0(*(v4 + 56) + 32 * v3, (v0 + 33));
      if (swift_dynamicCast())
      {
        v6 = v0[61];
        if (*(v2 + 16) && (v7 = v0[60], v8 = sub_26CC181C4(0x64757469676E6F6CLL, 0xE900000000000065), (v9 & 1) != 0))
        {
          sub_26CC168C0(*(v4 + 56) + 32 * v8, (v0 + 37));

          if (swift_dynamicCast())
          {
            v10 = v0[78];
            v11 = v0[77];
            v12 = v0[75];
            v32 = v0[74];
            v13 = v0[62];
            v14 = v0[63];
            v33 = v7;
            v34 = v6;
            MEMORY[0x26D6AD060](44, 0xE100000000000000);
            MEMORY[0x26D6AD060](v13, v14);

            sub_26CD39DFC();

            sub_26CCDEE64(v10, v11);
            (*(v12 + 8))(v10, v32);
            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v15 = v0[73];
  v16 = v0[72];
  v17 = v0[71];
  v18 = v0[70];
  v19 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26CD3C1E0;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000053, 0x800000026CD52400);
  v21 = OBJC_IVAR____TtC13TVAppServices26UTSNetworkRequestDecorator_request;
  swift_beginAccess();
  (*(v16 + 16))(v15, v18 + v21, v17);
  sub_26CD05DEC();
  v22 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](v22);

  (*(v16 + 8))(v15, v17);
  *(v20 + 32) = 0;
  *(v20 + 40) = 0xE000000000000000;
  v23 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26CD3C1E0;
  *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v24 + 64) = sub_26CC2E6E8();
  *(v24 + 32) = v20;
  sub_26CD3A3DC(v23, &dword_26CC14000, v19, "%@", 2, 2, v24);

LABEL_14:
  v25 = *v1;
  v26 = *(*v1 + 16);
  if (v26)
  {
    v27 = v0[75];
    v28 = sub_26CCDEBD0(v26, 0);
    v29 = sub_26CCE4C98(&v33, &v28[(*(v27 + 80) + 32) & ~*(v27 + 80)], v26, v25);
    sub_26CC33234(v33);
    if (v29 == v26)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v28 = MEMORY[0x277D84F90];
LABEL_18:

  v30 = v0[1];

  return v30(v28);
}

uint64_t sub_26CD074CC(uint64_t a1)
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 656);
  v3 = qword_280BBCBE0;
  v4 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v5 + 64) = sub_26CC2E6E8();
  *(v5 + 32) = &unk_287DF9A30;
  sub_26CD3A3DC(v4, &dword_26CC14000, v3, "%@", 2, 2, v5);

  v6 = *(v1 + 632);

  return MEMORY[0x2822009F8](sub_26CD066F8, v6, 0);
}

uint64_t sub_26CD0760C(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (sub_26CD39E0C() == v2 && v4 == v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_26CD3AFDC();
  }

  return v6 & 1;
}

uint64_t sub_26CD07680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA30, qword_26CD482E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26CD07710(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_26CD39D0C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  if (a1 && ((*(v13 + 56))(v11, 1, 1, v12), sub_26CD08730(), sub_26CD3AD8C(), (*(v13 + 48))(v11, 1, v12) != 1))
  {
    v24 = *(v13 + 32);
    v24(v16, v11, v12);
    v24(v18, v16, v12);
    v31 = [objc_opt_self() defaultSession];
    v30 = sub_26CD39C4C();
    v36 = sub_26CD08788;
    v37 = a5;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_26CD1FB4C;
    v35 = &block_descriptor_23;
    v25 = _Block_copy(&aBlock);

    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    *(v26 + 24) = a4;
    v36 = sub_26CD087E4;
    v37 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_26CD22A98;
    v35 = &block_descriptor_29;
    v27 = _Block_copy(&aBlock);

    v29 = v30;
    v28 = v31;
    [v31 createDataTaskWithRequest:v30 activity:0 dataTaskCreationCompletionHandler:v25 requestCompletionHandler:v27];
    _Block_release(v27);
    _Block_release(v25);

    (*(v13 + 8))(v18, v12);
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v19 = qword_280BBCBE0;
    v20 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_26CD3C1E0;
    *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v21 + 64) = sub_26CC2E6E8();
    *(v21 + 32) = &unk_287DFC750;
    sub_26CD3A3DC(v20, &dword_26CC14000, v19, "%@", 2, 2, v21);

    sub_26CD044E0();
    v22 = swift_allocError();
    *v23 = 1;
    a3(0, v22);
  }
}

uint64_t sub_26CD07BA8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA78, &qword_26CD48350);
  *v1 = v0;
  v1[1] = sub_26CD07C90;
  v3 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x2865747563657865, 0xE900000000000029, sub_26CD0863C, v3, v2);
}

uint64_t sub_26CD07C90()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_26CD07E6C;
  }

  else
  {
    v2 = sub_26CD07DA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CD07DA4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_26CD08644();
    swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

void sub_26CD07E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_26CD39D0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  v14 = sub_26CD13AD8();
  (*(v5 + 16))(v7, a2 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request, v4);
  v15 = sub_26CD39C4C();
  (*(v5 + 8))(v7, v4);
  v16 = [v14 requestByEncodingRequest:v15 parameters:0];

  v17 = swift_allocObject();
  v17[2] = sub_26CD08698;
  v17[3] = v13;
  v17[4] = a2;
  aBlock[4] = sub_26CD08724;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CD22A98;
  aBlock[3] = &block_descriptor_12;
  v18 = _Block_copy(aBlock);

  [v16 addFinishBlock_];
  _Block_release(v18);
}

uint64_t sub_26CD0817C(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v3 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    swift_getErrorValue();
    v5 = sub_26CD3B08C();
    MEMORY[0x26D6AD060](v5);

    *(v4 + 32) = 0xD000000000000023;
    *(v4 + 40) = 0x800000026CD52530;
    v6 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26CD3C1E0;
    *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v7 + 64) = sub_26CC2E6E8();
    *(v7 + 32) = v4;
    sub_26CD3A3DC(v6, &dword_26CC14000, v3, "%@", 2, 2, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
    return sub_26CD3A81C();
  }

  else
  {
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
    return sub_26CD3A82C();
  }
}

uint64_t sub_26CD08380()
{
  v1 = OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request;
  v2 = sub_26CD39D0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AMSMediaRequestHandler(uint64_t a1)
{
  result = qword_2804BDA68;
  if (!qword_2804BDA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CD08480(uint64_t a1)
{
  result = sub_26CD39D0C();
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

uint64_t sub_26CD08518@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request;
  v4 = sub_26CD39D0C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_26CD08590()
{
  result = *(v0 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

uint64_t sub_26CD085B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC30618;

  return sub_26CD07B88();
}

unint64_t sub_26CD08644()
{
  result = qword_2804BDA80;
  if (!qword_2804BDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDA80);
  }

  return result;
}

uint64_t sub_26CD08698(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);

  return sub_26CD0817C(a1, a2);
}

unint64_t sub_26CD08730()
{
  result = qword_2804BDA90;
  if (!qword_2804BDA90)
  {
    sub_26CD39D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDA90);
  }

  return result;
}

id sub_26CD08788(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask);
  *(v1 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask) = a1;
  v3 = a1;

  return [v3 resume];
}

uint64_t sub_26CD0881C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody) = xmmword_26CD48360;
  v4 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
  *v4 = 5522759;
  v4[1] = 0xE300000000000000;
  *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_timeout) = 0x404E000000000000;
  *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_cachePolicy) = 0;
  *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_queryParams) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_path) = MEMORY[0x277D84F90];
  v5 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType);
  *v5 = 0xD000000000000010;
  v5[1] = 0x800000026CD4BD10;
  v6 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultNetworkStorefrontName);
  *v6 = 26227;
  v6[1] = 0xE200000000000000;
  v7 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultLocaleQueryName);
  *v7 = 0x656C61636F6CLL;
  v7[1] = 0xE600000000000000;
  *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_isRequestBuilt) = 0;
  v8 = (v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_storefront);
  *v8 = 0;
  v8[1] = 0;
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_26CD3A59C();
  [v9 integerForKey_];

  v11 = (v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_defaultProtocolVersion);
  *v11 = sub_26CD3AF8C();
  v11[1] = v12;
  v13 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_urlRequest;
  v14 = sub_26CD39D0C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v2 + v13, a1, v14);
  v16 = sub_26CD39BFC();
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 5522759;
  }

  v19 = (v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_method);
  if (v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  *v19 = v18;
  v19[1] = v20;

  if (v18 == 5522759 && v20 == 0xE300000000000000)
  {
  }

  else
  {
    v21 = sub_26CD3AFDC();

    if ((v21 & 1) == 0)
    {
      v22 = sub_26CD39CCC();
      v24 = v23;
      (*(v15 + 8))(a1, v14);
      v25 = (v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
      v26 = *(v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
      v27 = *(v2 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8);
      *v25 = v22;
      v25[1] = v24;
      sub_26CC1D1B8(v26, v27);
      return v2;
    }
  }

  (*(v15 + 8))(a1, v14);
  return v2;
}

uint64_t sub_26CD08B34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_26CD39D0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26CD39E2C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  v14 = *(v1 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_storefront + 8);
  v47 = v11;
  if (v14)
  {

    v15 = v47;
    sub_26CD39DFC();

    swift_beginAccess();
    sub_26CCDEE64(v13, v10);
    (*(v7 + 8))(v13, v15);
    swift_endAccess();
    sub_26CC56118();
    if (v16)
    {
LABEL_3:
      sub_26CD39DFC();

      swift_beginAccess();
      sub_26CCDEE64(v13, v10);
      (*(v7 + 8))(v13, v15);
      swift_endAccess();
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v17 = qword_280BBCBE0;
    v18 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_26CD3C1E0;
    *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v19 + 64) = sub_26CC2E6E8();
    *(v19 + 32) = &unk_287DFACB0;
    sub_26CD3A3DC(v18, &dword_26CC14000, v17, "%@", 2, 2, v19);

    v15 = v47;
    sub_26CC56118();
    if (v20)
    {
      goto LABEL_3;
    }
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v21 = qword_280BBCBE0;
  v22 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26CD3C1E0;
  *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v23 + 64) = sub_26CC2E6E8();
  *(v23 + 32) = &unk_287DFACE0;
  sub_26CD3A3DC(v22, &dword_26CC14000, v21, "%@", 2, 2, v23);

  v15 = v47;
LABEL_10:
  if (qword_280BB9C28 != -1)
  {
    swift_once();
  }

  v24 = sub_26CD3A59C();
  v44 = MGGetSInt32Answer();

  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280BBACE0 + 1) && qword_280BBAD00)
  {

    sub_26CD39DFC();

    swift_beginAccess();
    sub_26CCDEE64(v13, v10);
    (*(v7 + 8))(v13, v15);
    swift_endAccess();
    v25 = v3;
  }

  else
  {
    v40 = v10;
    v41 = v7;
    v42 = v4;
    v43 = v3;
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v26 = qword_280BBCBE0;
    v27 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v28 = swift_allocObject();
    v39 = xmmword_26CD3C1E0;
    *(v28 + 16) = xmmword_26CD3C1E0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v28 + 56) = v29;
    v30 = sub_26CC2E6E8();
    *(v28 + 64) = v30;
    *(v28 + 32) = &unk_287DFA580;
    sub_26CD3A3DC(v27, &dword_26CC14000, v26, "%@", 2, 2, v28);

    v31 = sub_26CD3A98C();
    v32 = swift_allocObject();
    *(v32 + 16) = v39;
    *(v32 + 56) = v29;
    *(v32 + 64) = v30;
    *(v32 + 32) = &unk_287DFAD10;
    sub_26CD3A3DC(v31, &dword_26CC14000, v26, "%@", 2, 2, v32);

    v4 = v42;
    v25 = v43;
    v15 = v47;
    v10 = v40;
    v7 = v41;
  }

  sub_26CD39DFC();

  swift_beginAccess();
  sub_26CCDEE64(v13, v10);
  v33 = *(v7 + 8);
  v33(v13, v15);
  swift_endAccess();
  sub_26CD39DFC();
  swift_beginAccess();
  sub_26CCDEE64(v13, v10);
  v33(v13, v15);
  swift_endAccess();
  sub_26CD09F6C();
  v34 = v45;
  sub_26CD09504(v45);
  v35 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_urlRequest;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v35, v34, v25);
  swift_endAccess();
  v36 = v2 + v35;
  v37 = v46;
  (*(v4 + 16))(v46, v36, v25);
  return (*(v4 + 56))(v37, 0, 1, v25);
}

uint64_t sub_26CD09390()
{

  v1 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_urlRequest;
  v2 = sub_26CD39D0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_26CC1D1B8(*(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody), *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8));

  return v0;
}

uint64_t sub_26CD09504@<X0>(uint64_t a1@<X8>)
{
  v78 = sub_26CD39F9C();
  v3 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26CD39D0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  if (v1[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_isRequestBuilt] == 1)
  {
    v8 = &OBJC_IVAR____TtC13TVAppServices14RequestBuilder_urlRequest;
    if (qword_280BB9C20 == -1)
    {
LABEL_3:
      v9 = qword_280BBCBE0;
      v10 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_26CD3C1E0;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = sub_26CC19E10();
      *(v11 + 32) = 0xD00000000000003CLL;
      *(v11 + 40) = 0x800000026CD52660;
      sub_26CD3A3DC(v10, &dword_26CC14000, v9, "%@", 2, 2, v11);

      v12 = *v8;
      swift_beginAccess();
      return (*(v6 + 16))(a1, &v1[v12], v5);
    }

LABEL_42:
    swift_once();
    goto LABEL_3;
  }

  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_isRequestBuilt;
  v74 = v5;
  v79 = v1;
  v14 = *(v1 + 2);
  v72 = a1;
  if (v14)
  {
    v69 = v6;
    v70 = v3;
    a1 = v14 + 64;
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v75 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_urlRequest;
    v6 = (v15 + 63) >> 6;
    v76 = v14;
    swift_bridgeObjectRetain_n();
    v18 = 0;
    v8 = v75;
    while (v17)
    {
      v19 = v18;
      v20 = v76;
LABEL_14:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v5 = *(*(v20 + 7) + ((v19 << 10) | (16 * v21)) + 8);
      v22 = v79;
      swift_beginAccess();

      v1 = v8 + v22;
      sub_26CD39CBC();
      swift_endAccess();
    }

    v20 = v76;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v6)
      {

        v3 = v70;
        v6 = v69;
        goto LABEL_17;
      }

      v17 = *(a1 + 8 * v19);
      ++v18;
      if (v17)
      {
        v18 = v19;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_17:
  v23 = v79;
  v24 = &v79[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody];
  v25 = *&v79[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8];
  if (v25 >> 60 != 15)
  {
    v26 = *v24;
    swift_beginAccess();
    sub_26CCC706C(v26, v25);
    sub_26CCAE954(v26, v25);
    sub_26CD39CDC();
    swift_endAccess();
    sub_26CC1D1B8(v26, v25);
  }

  v27 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_urlRequest;
  swift_beginAccess();

  sub_26CD39C0C();
  swift_endAccess();
  v28 = *(v6 + 16);
  v29 = v73;
  v30 = v74;
  v75 = v6 + 16;
  v70 = v28;
  (v28)(v73, &v23[v27], v74);
  v31 = sub_26CD39BFC();
  v33 = v32;
  (*(v6 + 8))(v29, v30);
  if (v33)
  {
    if (v31 == 1414745936 && v33 == 0xE400000000000000)
    {
    }

    else
    {
      v34 = sub_26CD3AFDC();

      if ((v34 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v35 = *v24;
    v36 = v24[1];
    swift_beginAccess();
    sub_26CCC706C(v35, v36);
    sub_26CD39CDC();
    swift_endAccess();
  }

LABEL_25:
  swift_beginAccess();
  sub_26CD39C3C();
  sub_26CD39C1C();
  swift_endAccess();
  v37 = *(*&v23[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_path] + 16);
  if (v37)
  {
    v73 = v27;
    LODWORD(v76) = *MEMORY[0x277CC91D8];
    v38 = (v3 + 104);
    v39 = (v3 + 8);

    v40 = (v69 + 40);
    do
    {
      v43 = *(v40 - 1);
      v44 = *v40;

      v45 = sub_26CD094A4(v80);
      v46 = sub_26CD39C8C();
      v48 = v47;
      v49 = sub_26CD3A07C();
      if ((*(*(v49 - 8) + 48))(v48, 1, v49))
      {

        v46(v82, 0);
        (v45)(v80, 0);
      }

      else
      {
        v81[0] = v43;
        v81[1] = v44;
        v42 = v77;
        v41 = v78;
        (*v38)(v77, v76, v78);
        sub_26CC16DCC();
        sub_26CD3A01C();
        (*v39)(v42, v41);
        v46(v82, 0);
        (v45)(v80, 0);
      }

      v40 += 2;
      --v37;
    }

    while (v37);

    v23 = v79;
    v27 = v73;
  }

  v50 = sub_26CD094A4(v82);
  v51 = sub_26CD39C8C();
  v53 = v52;
  v54 = sub_26CD3A07C();
  if ((*(*(v54 - 8) + 48))(v53, 1, v54))
  {
    v51(v81, 0);
    (v50)(v82, 0);
  }

  else
  {
    v55 = OBJC_IVAR____TtC13TVAppServices14RequestBuilder_queryParams;
    swift_beginAccess();
    v56 = *&v23[v55];
    v57 = *(v56 + 16);
    if (v57)
    {
      v76 = v50;
      v58 = sub_26CCDEBD0(v57, 0);
      v59 = *(sub_26CD39E2C() - 8);
      v60 = sub_26CCE4C98(v80, &v58[(*(v59 + 80) + 32) & ~*(v59 + 80)], v57, v56);
      v61 = v80[0];
      v77 = v80[4];
      v78 = v60;

      result = sub_26CC33234(v61);
      if (v78 != v57)
      {
        __break(1u);
        return result;
      }

      v23 = v79;
      v50 = v76;
    }

    sub_26CD3A00C();

    v51(v81, 0);
    (v50)(v82, 0);
  }

  v62 = sub_26CD094A4(v80);
  v64 = sub_26CD39C5C();
  if (*v63)
  {
    v65 = v63;
    v66 = *&v23[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType];
    v67 = *&v23[OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType + 8];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81[0] = *v65;
    *v65 = 0x8000000000000000;
    sub_26CD38A70(v66, v67, 0x2D746E65746E6F43, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);
    *v65 = v81[0];
  }

  v64(v82, 0);
  (v62)(v80, 0);
  v23[v71] = 1;
  return (v70)(v72, &v23[v27], v74);
}

double sub_26CD09F6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA98, &unk_26CD48410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26CD3C1E0;
  strcpy((inited + 32), "Content-Type");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v2 = (v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType);
  v3 = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType + 8);
  *(inited + 48) = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_contentType);
  *(inited + 56) = v3;

  v4 = sub_26CC31D94(inited);
  swift_setDeallocating();
  sub_26CD0A280(inited + 32);
  *(v0 + 16) = v4;

  v6 = (v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody);
  v7 = *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_26CCC706C(*v6, *(v0 + OBJC_IVAR____TtC13TVAppServices14RequestBuilder_postBody + 8));
    sub_26CCC706C(v8, v7);
    sub_26CC1D1B8(v8, v7);
    sub_26CC1D1B8(v8, v7);
    v9 = swift_initStackObject();
    strcpy((v9 + 32), "Content-Type");
    *(v9 + 16) = xmmword_26CD3C1E0;
    *(v9 + 45) = 0;
    *(v9 + 46) = -5120;
    v10 = v2[1];
    *(v9 + 48) = *v2;
    *(v9 + 56) = v10;

    v11 = sub_26CC31D94(v9);
    swift_setDeallocating();
    sub_26CD0A280(v9 + 32);
    *(v0 + 16) = v11;
  }

  return result;
}

uint64_t sub_26CD0A0EC()
{
  sub_26CD09390();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RequestBuilder(uint64_t a1)
{
  result = qword_280BBAF98;
  if (!qword_280BBAF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CD0A198(uint64_t a1)
{
  result = sub_26CD39D0C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_26CD0A280(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBB68, &qword_26CD3C678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CD0A2FC()
{
  result = qword_2804BDAA0;
  if (!qword_2804BDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDAA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13TVAppServices28PlatformSpecificLocalizationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CD0A37C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 520))
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

uint64_t sub_26CD0A3D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 520) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 520) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_26CD0A4C0(char a1)
{
  result = 0x736E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x696373656C616F63;
      break;
    case 2:
      result = 0x4579616C70736964;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6449797469746E65;
      break;
    case 5:
      result = 0x65726F6353736168;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x76546E4F7369;
      break;
    case 8:
    case 9:
    case 10:
    case 11:
      result = 0x657A696C61636F6CLL;
      break;
    case 12:
      result = 0x54676E6974746573;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x6449646165726874;
      break;
    case 15:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CD0A678(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDAE8, &qword_26CD486F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD0D3B0();
  sub_26CD3B16C();
  *&v61 = *v3;
  LOBYTE(v59[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDAB8, &qword_26CD486E0);
  sub_26CD0D5A0(&qword_2804BDAF0, sub_26CD0D618, MEMORY[0x277D83948]);
  sub_26CD3AF1C();
  if (!v2)
  {
    LOBYTE(v61) = 1;
    sub_26CD3AECC();
    LOBYTE(v61) = 2;
    sub_26CD3AEEC();
    LOBYTE(v61) = 3;
    sub_26CD3AEFC();
    LOBYTE(v61) = 4;
    sub_26CD3AECC();
    LOBYTE(v61) = 5;
    sub_26CD3AEDC();
    LOBYTE(v61) = 6;
    sub_26CD3AEFC();
    LOBYTE(v61) = 7;
    sub_26CD3AEDC();
    v9 = *(v3 + 112);
    v82[2] = *(v3 + 128);
    v10 = *(v3 + 128);
    v82[3] = *(v3 + 144);
    v11 = *(v3 + 144);
    v82[4] = *(v3 + 160);
    v12 = *(v3 + 160);
    v82[5] = *(v3 + 176);
    v13 = *(v3 + 112);
    v82[0] = *(v3 + 96);
    v82[1] = v13;
    v63 = v10;
    v64 = v11;
    v14 = *(v3 + 176);
    v65 = v12;
    v66 = v14;
    v61 = v82[0];
    v62 = v9;
    v60 = 8;
    sub_26CD0D66C(v82, v59);
    sub_26CD0D6DC();
    sub_26CD3AF1C();
    v59[2] = v63;
    v59[3] = v64;
    v59[4] = v65;
    v59[5] = v66;
    v59[0] = v61;
    v59[1] = v62;
    sub_26CD0D4AC(v59);
    v15 = *(v3 + 240);
    v16 = *(v3 + 208);
    v78 = *(v3 + 224);
    v79 = v15;
    v17 = *(v3 + 240);
    v18 = *(v3 + 272);
    v80 = *(v3 + 256);
    v81 = v18;
    v19 = *(v3 + 208);
    v77[0] = *(v3 + 192);
    v77[1] = v19;
    v55 = v78;
    v56 = v17;
    v20 = *(v3 + 272);
    v57 = v80;
    v58 = v20;
    v53 = v77[0];
    v54 = v16;
    v52 = 9;
    sub_26CD0D66C(v77, v51);
    sub_26CD3AF1C();
    v51[2] = v55;
    v51[3] = v56;
    v51[4] = v57;
    v51[5] = v58;
    v51[0] = v53;
    v51[1] = v54;
    sub_26CD0D4AC(v51);
    v21 = *(v3 + 336);
    v22 = *(v3 + 304);
    v73 = *(v3 + 320);
    v74 = v21;
    v23 = *(v3 + 336);
    v24 = *(v3 + 368);
    v75 = *(v3 + 352);
    v76 = v24;
    v25 = *(v3 + 304);
    v72[0] = *(v3 + 288);
    v72[1] = v25;
    v47 = v73;
    v48 = v23;
    v26 = *(v3 + 368);
    v49 = v75;
    v50 = v26;
    v45 = v72[0];
    v46 = v22;
    v44 = 10;
    sub_26CD0D66C(v72, v43);
    sub_26CD3AF1C();
    v43[2] = v47;
    v43[3] = v48;
    v43[4] = v49;
    v43[5] = v50;
    v43[0] = v45;
    v43[1] = v46;
    sub_26CD0D4AC(v43);
    v27 = *(v3 + 432);
    v28 = *(v3 + 400);
    v68 = *(v3 + 416);
    v69 = v27;
    v29 = *(v3 + 432);
    v30 = *(v3 + 464);
    v70 = *(v3 + 448);
    v71 = v30;
    v31 = *(v3 + 400);
    v67[0] = *(v3 + 384);
    v67[1] = v31;
    v40 = v29;
    v41 = v70;
    v42 = *(v3 + 464);
    v37 = v67[0];
    v38 = v28;
    v39 = v68;
    v36 = 11;
    sub_26CD0D66C(v67, v35);
    sub_26CD3AF1C();
    v35[2] = v39;
    v35[3] = v40;
    v35[4] = v41;
    v35[5] = v42;
    v35[0] = v37;
    v35[1] = v38;
    sub_26CD0D4AC(v35);
    v34 = *(v3 + 480);
    v33[14] = 12;
    sub_26CD0D730();
    sub_26CD3AF1C();
    v34 = 13;
    sub_26CD3AEDC();
    v34 = 14;
    sub_26CD3AECC();
    v34 = 15;
    sub_26CD3AECC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26CD0ACEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CD0BA2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CD0AD20(uint64_t a1)
{
  v2 = sub_26CD0D3B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD0AD5C(uint64_t a1)
{
  v2 = sub_26CD0D3B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26CD0AD98@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_26CD0BF44(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x208uLL);
  }

  return result;
}

uint64_t sub_26CD0ADFC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x746963696C706D49;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6E6974656B72614DLL;
  if (v3 == 1)
  {
    v6 = 0x746963696C706D49;
  }

  else
  {
    v5 = 0xE900000000000067;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x746963696C707845;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x6E6974656B72614DLL;
    v4 = 0xE900000000000067;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x746963696C707845;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CD0AEE8()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CD0AF84(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CD0B00C(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

unint64_t sub_26CD0B0A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26CD0DAEC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26CD0B0D4(uint64_t *a1@<X8>)
{
  v2 = 0x746963696C706D49;
  v3 = 0xE800000000000000;
  if (*v1 != 1)
  {
    v2 = 0x6E6974656B72614DLL;
    v3 = 0xE900000000000067;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0x746963696C707845;
    v4 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v4;
}

uint64_t sub_26CD0B1DC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDB58, &qword_26CD48AC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD0E21C();
  sub_26CD3B16C();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_26CD0D66C(&v31, &v18);
  sub_26CD0D6DC();
  v14 = v37;
  sub_26CD3AF1C();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_26CD0D4AC(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_26CD0D4AC(&v18);
    LOBYTE(v17) = 1;
    sub_26CD3AECC();
    v17 = *(v2 + 14);
    v16[7] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CC3F22C(&qword_280BB9BE0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_26CD3AF1C();
    LOBYTE(v17) = 3;
    sub_26CD3AEDC();
    LOBYTE(v17) = 4;
    sub_26CD3AECC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_26CD0B4BC()
{
  v1 = *v0;
  v2 = 0x6449646E617262;
  v3 = 0x6449656C646E7562;
  v4 = 0x4170704176547369;
  if (v1 != 3)
  {
    v4 = 1701869940;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26CD0B564@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CD0DB38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CD0B58C(uint64_t a1)
{
  v2 = sub_26CD0E21C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD0B5C8(uint64_t a1)
{
  v2 = sub_26CD0E21C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_26CD0B604@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_26CD0DD04(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_26CD0B678(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDB60, &qword_26CD48AD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD0EA30();
  sub_26CD3B16C();
  v8[15] = 0;
  sub_26CD3AECC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26CD3AECC();
  v8[13] = 2;
  sub_26CD3AECC();
  v8[12] = 3;
  sub_26CD3AECC();
  v8[11] = 4;
  sub_26CD3AECC();
  v8[10] = 5;
  sub_26CD3AECC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26CD0B878()
{
  v1 = *v0;
  v2 = 0x7654656C707041;
  v3 = 0x534F63614DLL;
  v4 = 0x6173726576696E55;
  if (v1 != 4)
  {
    v4 = 0x734F6E6F69736956;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7565129;
  if (v1 != 1)
  {
    v5 = 0x6576694C5F736F49;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26CD0B928@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CD0E2D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CD0B950(uint64_t a1)
{
  v2 = sub_26CD0EA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD0B98C(uint64_t a1)
{
  v2 = sub_26CD0EA30();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CD0B9C8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26CD0E4D8(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_26CD0BA2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696373656C616F63 && a2 == 0xEC0000006449676ELL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4579616C70736964 && a2 == 0xEE00656D6954646ELL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026CD526A0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6449797469746E65 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65726F6353736168 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026CD4E170 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x76546E4F7369 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED000079646F4264 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEF7265746F6F4664 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED00007478655464 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x54676E6974746573 && a2 == 0xEB00000000657079 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026CD526C0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6449646165726874 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

void *sub_26CD0BF44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDAA8, &qword_26CD486D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v235 = 1;
  v233 = 1;
  v230 = 1;
  v9 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_26CD0D3B0();
  sub_26CD3B15C();
  if (v2)
  {
    v236 = v2;
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v94 = 0;
    v95 = 0;
    v92 = 0;
    v93 = 0;
    v70 = 0;
    v71 = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v72 = 0;
    v68 = 0;
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v86 = 0;
    v87 = 0;
    v85 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v82 = 0;
    v83 = 0;
    v63 = 0;
    v69 = 0;
    v67 = 0;
    v77 = 0;
    v79 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v101 = xmmword_26CD3E690;
    v84 = 0u;
    v80 = 0u;
    v81 = 0u;
    v51 = 3;
    v100 = 2;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    v16 = 2;
    v17 = 2;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v78);
    v156 = v12;
    v157 = v11;
    v158 = v10;
    v159 = v79;
    v162 = v77;
    v165 = v67;
    v166 = v69;
    v167 = v17;
    v169 = v63;
    v171 = v16;
    v174 = v62;
    v175 = v15;
    v176 = v61;
    v177 = v60;
    v178 = v59;
    v179 = v58;
    v180 = v57;
    v181 = v56;
    v182 = v55;
    v183 = v54;
    v184 = v53;
    v185 = v52;
    v186 = v70;
    v187 = v14;
    v188 = v66;
    v189 = v64;
    v160 = v235;
    *v161 = *v234;
    *&v161[3] = *&v234[3];
    v163 = v233;
    *v164 = *v232;
    *&v164[3] = *&v232[3];
    *v168 = *v231;
    *&v168[3] = *&v231[3];
    v170 = v230;
    v172 = v228;
    v173 = v229;
    v190 = v73;
    v191 = v71;
    v192 = v76;
    v193 = v75;
    v194 = v74;
    v195 = v72;
    v196 = v68;
    v197 = v65;
    v198 = v93;
    v199 = v13;
    v200 = v94;
    v201 = v95;
    v202 = v96;
    v203 = v97;
    v204 = v98;
    v205 = v99;
    v208 = v101;
    v209 = v80;
    v206 = v84;
    v207 = v81;
    v210 = v85;
    v211 = v86;
    v212 = v87;
    v213 = v88;
    v214 = v89;
    v215 = v90;
    v216 = v91;
    v217 = v92;
    v218 = v51;
    v219 = v100;
    v220 = v226;
    v221 = v227;
    v222 = v82;
    v223 = v83;
    v224 = 0;
    v225 = 0;
    return sub_26CCFB5C4(&v156);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDAB8, &qword_26CD486E0);
  v102[0] = 0;
  sub_26CD0D5A0(&qword_2804BDAC0, sub_26CD0D404, MEMORY[0x277D83978]);
  sub_26CD3AE2C();
  v50 = v156;
  LOBYTE(v156) = 1;
  v48 = sub_26CD3ADDC();
  v49 = v19;
  LOBYTE(v156) = 2;
  v79 = sub_26CD3ADFC();
  v235 = v20 & 1;
  LOBYTE(v156) = 3;
  v77 = sub_26CD3AE0C();
  v233 = v21 & 1;
  LOBYTE(v156) = 4;
  v67 = sub_26CD3ADDC();
  v69 = v22;
  LOBYTE(v156) = 5;
  v47 = sub_26CD3ADEC();
  LOBYTE(v156) = 6;
  v63 = sub_26CD3AE0C();
  v230 = v23 & 1;
  LOBYTE(v156) = 7;
  v46 = sub_26CD3ADEC();
  v143 = 8;
  sub_26CD0D458();
  sub_26CD3AE2C();
  v236 = 0;
  v24 = a2;
  v45 = v145;
  v61 = v146;
  v62 = v144;
  v59 = v148;
  v60 = v147;
  v57 = v150;
  v58 = v149;
  v55 = v152;
  v56 = v151;
  v53 = v154;
  v54 = v153;
  v52 = v155;
  v101 = xmmword_26CD3E690;
  v142[0] = xmmword_26CD3E690;
  memset(&v142[1], 0, 80);
  sub_26CD0D4AC(v142);
  v129 = 9;
  v25 = v236;
  sub_26CD3AE2C();
  v236 = v25;
  if (v25)
  {
    (*(v6 + 8))(v8, v5);
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v94 = 0;
    v95 = 0;
    v92 = 0;
    v93 = 0;
    v70 = 0;
    v71 = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v72 = 0;
    v68 = 0;
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v86 = 0;
    v87 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    v51 = 3;
    v100 = 2;
    v80 = 0u;
    v81 = 0u;
    v13 = 1;
    v14 = 1;
    v10 = v49;
    v12 = v50;
    v11 = v48;
    v84 = 0u;
    v16 = v46;
    v17 = v47;
    v15 = v45;
    goto LABEL_4;
  }

  v44 = v131;
  v64 = v133;
  v70 = v130;
  v71 = v135;
  v75 = v137;
  v76 = v136;
  v73 = v134;
  v74 = v138;
  v72 = v139;
  v68 = v140;
  v65 = v141;
  v66 = v132;
  v101 = xmmword_26CD3E690;
  v128[0] = xmmword_26CD3E690;
  memset(&v128[1], 0, 80);
  sub_26CD0D4AC(v128);
  v117 = 10;
  v26 = v236;
  sub_26CD3AE2C();
  v236 = v26;
  if (v26)
  {
    (*(v6 + 8))(v8, v5);
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v94 = 0;
    v95 = 0;
    v92 = 0;
    v93 = 0;
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v86 = 0;
    v87 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    v51 = 3;
    v80 = 0u;
    v81 = 0u;
    v100 = 2;
    v13 = 1;
    v10 = v49;
    v12 = v50;
    v11 = v48;
    v84 = 0u;
    v16 = v46;
    v17 = v47;
    v14 = v44;
    v15 = v45;
    goto LABEL_4;
  }

  v43 = v119;
  v93 = v118;
  v94 = v120;
  v95 = v121;
  v96 = v122;
  v97 = v123;
  v98 = v124;
  v99 = v125;
  v81 = v127;
  v84 = v126;
  v101 = xmmword_26CD3E690;
  v116[0] = xmmword_26CD3E690;
  memset(&v116[1], 0, 80);
  sub_26CD0D4AC(v116);
  v105 = 11;
  v27 = v236;
  sub_26CD3AE2C();
  v236 = v27;
  if (v27)
  {
    (*(v6 + 8))(v8, v5);
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
    v82 = 0;
    v83 = 0;
    v51 = 3;
    v100 = 2;
    v10 = v49;
    v12 = v50;
    v11 = v48;
    v16 = v46;
    v17 = v47;
    v15 = v45;
    v80 = 0u;
LABEL_14:
    v13 = v43;
    v14 = v44;
    goto LABEL_4;
  }

  v80 = v107;
  v101 = v106;
  v85 = v108;
  v86 = v109;
  v87 = v110;
  v88 = v111;
  v89 = v112;
  v90 = v113;
  v91 = v114;
  v92 = v115;
  v104[0] = xmmword_26CD3E690;
  memset(&v104[1], 0, 80);
  sub_26CD0D4AC(v104);
  v102[0] = 12;
  sub_26CD0D514();
  v28 = v236;
  sub_26CD3AE2C();
  v236 = v28;
  if (v28)
  {
    (*(v6 + 8))(v8, v5);
    v82 = 0;
    v83 = 0;
    v51 = 3;
    v100 = 2;
    v10 = v49;
    v12 = v50;
    v11 = v48;
    v16 = v46;
    v17 = v47;
    v15 = v45;
    goto LABEL_14;
  }

  v51 = v156;
  LOBYTE(v156) = 13;
  v100 = sub_26CD3ADEC();
  v236 = 0;
  LOBYTE(v156) = 14;
  v82 = sub_26CD3ADDC();
  v83 = v29;
  v236 = 0;
  v103 = 15;
  v30 = sub_26CD3ADDC();
  v41 = v31;
  v42 = v30;
  v236 = 0;
  (*(v6 + 8))(v8, v5);
  *v102 = v50;
  *&v102[8] = v48;
  *&v102[16] = v49;
  *&v102[24] = v79;
  v40 = v235;
  v102[32] = v235;
  *&v102[33] = *v234;
  *&v102[36] = *&v234[3];
  *&v102[40] = v77;
  *&v102[482] = v226;
  v39 = v233;
  v102[48] = v233;
  *&v102[49] = *v232;
  *&v102[52] = *&v232[3];
  *&v102[56] = v67;
  *&v102[64] = v69;
  v102[72] = v47;
  *&v102[73] = *v231;
  *&v102[76] = *&v231[3];
  v32 = v62;
  *&v102[80] = v63;
  *&v102[90] = v228;
  *&v102[94] = v229;
  *&v102[486] = v227;
  HIDWORD(v38) = v230;
  v102[88] = v230;
  v102[89] = v46;
  *&v102[96] = v62;
  *&v102[104] = v45;
  v33 = v61;
  *&v102[112] = v61;
  *&v102[120] = v60;
  *&v102[128] = v59;
  *&v102[136] = v58;
  *&v102[144] = v57;
  *&v102[152] = v56;
  *&v102[160] = v55;
  *&v102[168] = v54;
  *&v102[176] = v53;
  *&v102[184] = v52;
  v35 = v70;
  v34 = v71;
  *&v102[192] = v70;
  *&v102[200] = v44;
  v36 = v66;
  *&v102[208] = v66;
  *&v102[216] = v64;
  v37 = v73;
  *&v102[224] = v73;
  *&v102[232] = v71;
  *&v102[240] = v76;
  *&v102[248] = v75;
  *&v102[256] = v74;
  *&v102[264] = v72;
  *&v102[272] = v68;
  *&v102[280] = v65;
  *&v102[288] = v93;
  *&v102[296] = v43;
  *&v102[304] = v94;
  *&v102[312] = v95;
  *&v102[320] = v96;
  *&v102[328] = v97;
  *&v102[336] = v98;
  *&v102[344] = v99;
  *&v102[352] = v84;
  *&v102[368] = v81;
  *&v102[384] = v101;
  *&v102[400] = v80;
  *&v102[416] = v85;
  *&v102[424] = v86;
  *&v102[432] = v87;
  *&v102[440] = v88;
  *&v102[448] = v89;
  *&v102[456] = v90;
  *&v102[464] = v91;
  *&v102[472] = v92;
  v102[480] = v51;
  v102[481] = v100;
  *&v102[488] = v82;
  *&v102[496] = v83;
  *&v102[504] = v42;
  *&v102[512] = v41;
  sub_26CD0D568(v102, &v156);
  __swift_destroy_boxed_opaque_existential_1(v78);
  v156 = v50;
  v157 = v48;
  v158 = v49;
  v159 = v79;
  v160 = v40;
  v162 = v77;
  v163 = v39;
  v165 = v67;
  v166 = v69;
  v167 = v47;
  v169 = v63;
  v170 = BYTE4(v38);
  v171 = v46;
  v174 = v32;
  v175 = v45;
  v176 = v33;
  v177 = v60;
  v178 = v59;
  v179 = v58;
  v180 = v57;
  v181 = v56;
  v182 = v55;
  v183 = v54;
  v184 = v53;
  v185 = v52;
  v186 = v35;
  v187 = v44;
  v188 = v36;
  v189 = v64;
  v190 = v37;
  v191 = v34;
  *v161 = *v234;
  *&v161[3] = *&v234[3];
  *v164 = *v232;
  *&v164[3] = *&v232[3];
  *&v168[3] = *&v231[3];
  *v168 = *v231;
  v172 = v228;
  v173 = v229;
  v192 = v76;
  v193 = v75;
  v194 = v74;
  v195 = v72;
  v196 = v68;
  v197 = v65;
  v198 = v93;
  v199 = v43;
  v200 = v94;
  v201 = v95;
  v202 = v96;
  v203 = v97;
  v204 = v98;
  v205 = v99;
  v206 = v84;
  v207 = v81;
  v208 = v101;
  v209 = v80;
  v210 = v85;
  v211 = v86;
  v212 = v87;
  v213 = v88;
  v214 = v89;
  v215 = v90;
  v216 = v91;
  v217 = v92;
  v218 = v51;
  v219 = v100;
  v220 = v226;
  v221 = v227;
  v222 = v82;
  v223 = v83;
  v224 = v42;
  v225 = v41;
  sub_26CCFB5C4(&v156);
  return memcpy(v24, v102, 0x208uLL);
}

unint64_t sub_26CD0D3B0()
{
  result = qword_2804BDAB0;
  if (!qword_2804BDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDAB0);
  }

  return result;
}

unint64_t sub_26CD0D404()
{
  result = qword_2804BDAC8;
  if (!qword_2804BDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDAC8);
  }

  return result;
}

unint64_t sub_26CD0D458()
{
  result = qword_2804BDAD0;
  if (!qword_2804BDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDAD0);
  }

  return result;
}

uint64_t sub_26CD0D4AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDAD8, &qword_26CD486E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CD0D514()
{
  result = qword_2804BDAE0;
  if (!qword_2804BDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDAE0);
  }

  return result;
}

uint64_t sub_26CD0D5A0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BDAB8, &qword_26CD486E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CD0D618()
{
  result = qword_2804BDAF8;
  if (!qword_2804BDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDAF8);
  }

  return result;
}

uint64_t sub_26CD0D66C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDAD8, &qword_26CD486E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CD0D6DC()
{
  result = qword_2804BDB00;
  if (!qword_2804BDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB00);
  }

  return result;
}

unint64_t sub_26CD0D730()
{
  result = qword_2804BDB08;
  if (!qword_2804BDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB08);
  }

  return result;
}

uint64_t sub_26CD0D7A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_26CD0D800(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_26CD0D8A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
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

uint64_t sub_26CD0D904(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

unint64_t sub_26CD0D990()
{
  result = qword_2804BDB10;
  if (!qword_2804BDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB10);
  }

  return result;
}

unint64_t sub_26CD0D9E8()
{
  result = qword_2804BDB18;
  if (!qword_2804BDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB18);
  }

  return result;
}

unint64_t sub_26CD0DA40()
{
  result = qword_2804BDB20;
  if (!qword_2804BDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB20);
  }

  return result;
}

unint64_t sub_26CD0DA98()
{
  result = qword_2804BDB28;
  if (!qword_2804BDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB28);
  }

  return result;
}

unint64_t sub_26CD0DAEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_26CD3AD9C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26CD0DB38(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000026CD4E1B0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449646E617262 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE900000000000073 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4170704176547369 && a2 == 0xED00006E6F697463 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_26CD0DD04@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDB30, &unk_26CD48AB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_26CD0E21C();
  sub_26CD3B15C();
  if (v2)
  {
    v40 = v2;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v47 = 0;
    v93 = 0;
    v48 = 0;
    v46 = 2;
    __swift_destroy_boxed_opaque_existential_1(v39);
    v73 = v45;
    v74 = 1;
    v75 = v44;
    v76 = v43;
    v77 = v42;
    v78 = v41;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = v48;
    v86 = v93;
    v87 = v47;
    v88 = v46;
    *v89 = v92[0];
    *&v89[3] = *(v92 + 3);
    v90 = 0;
    v91 = 0;
    return sub_26CD0E270(&v73);
  }

  else
  {
    v60 = 0;
    sub_26CD0D458();
    sub_26CD3AE2C();
    v32 = a2;
    v33 = v62;
    v44 = v63;
    v45 = v61;
    v43 = v64;
    v11 = v65;
    v12 = v66;
    v37 = v68;
    v38 = v67;
    v13 = v69;
    v35 = v71;
    v36 = v70;
    v34 = v72;
    v59[0] = xmmword_26CD3E690;
    memset(&v59[1], 0, 80);
    sub_26CD0D4AC(v59);
    LOBYTE(v73) = 1;
    v14 = sub_26CD3ADDC();
    v41 = v12;
    v42 = v11;
    v48 = v14;
    v93 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    LOBYTE(v49) = 2;
    sub_26CC3F22C(&qword_2804BBE98, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_26CD3AE2C();
    v16 = v73;
    LOBYTE(v73) = 3;
    v17 = sub_26CD3ADEC();
    v47 = v16;
    v46 = v17;
    v58 = 4;
    v18 = sub_26CD3ADDC();
    v40 = 0;
    v19 = v18;
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    v23 = v44;
    v22 = v45;
    *&v49 = v45;
    *(&v49 + 1) = v33;
    v24 = v42;
    v25 = v43;
    *&v50 = v44;
    *(&v50 + 1) = v43;
    v26 = v41;
    *&v51 = v42;
    *(&v51 + 1) = v41;
    *&v52 = v38;
    *(&v52 + 1) = v37;
    *&v53 = v13;
    *(&v53 + 1) = v36;
    *&v54 = v35;
    *(&v54 + 1) = v34;
    *&v55 = v48;
    *(&v55 + 1) = v93;
    *&v56 = v47;
    BYTE8(v56) = v46;
    *&v57 = v19;
    *(&v57 + 1) = v21;
    sub_26CD0E2A0(&v49, &v73);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v73 = v22;
    v74 = v33;
    v75 = v23;
    v76 = v25;
    v77 = v24;
    v78 = v26;
    v79 = v38;
    v80 = v37;
    v81 = v13;
    v82 = v36;
    v83 = v35;
    v84 = v34;
    v85 = v48;
    v86 = v93;
    v87 = v47;
    v88 = v46;
    v90 = v19;
    v91 = v21;
    result = sub_26CD0E270(&v73);
    v27 = v56;
    v28 = v32;
    v32[6] = v55;
    v28[7] = v27;
    v28[8] = v57;
    v29 = v52;
    v28[2] = v51;
    v28[3] = v29;
    v30 = v54;
    v28[4] = v53;
    v28[5] = v30;
    v31 = v50;
    *v28 = v49;
    v28[1] = v31;
  }

  return result;
}

unint64_t sub_26CD0E21C()
{
  result = qword_2804BDB38;
  if (!qword_2804BDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB38);
  }

  return result;
}

uint64_t sub_26CD0E2D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7654656C707041 && a2 == 0xE700000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7565129 && a2 == 0xE300000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576694C5F736F49 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x534F63614DLL && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6173726576696E55 && a2 == 0xE90000000000006CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x734F6E6F69736956 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_26CD0E4D8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDB40, &qword_26CD48AC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_26CD0EA30();
  sub_26CD3B15C();
  if (v2)
  {
    v45 = v2;
    v43 = 0;
    __swift_destroy_boxed_opaque_existential_1(v44);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = v43;
    v62 = 0;
    v63 = 0;
    return sub_26CD0EA84(&v52);
  }

  else
  {
    LOBYTE(v52) = 0;
    *&v42 = sub_26CD3ADDC();
    *(&v42 + 1) = v11;
    LOBYTE(v52) = 1;
    v41 = sub_26CD3ADDC();
    v40 = v12;
    LOBYTE(v52) = 2;
    v13 = sub_26CD3ADDC();
    v39 = v14;
    LOBYTE(v52) = 3;
    v15 = sub_26CD3ADDC();
    v38 = v16;
    v37 = a2;
    LOBYTE(v52) = 4;
    v17 = sub_26CD3ADDC();
    v43 = v18;
    v64 = 5;
    v19 = sub_26CD3ADDC();
    v45 = 0;
    v20 = v19;
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v23 = v42;
    v46 = v42;
    v24 = *(&v42 + 1);
    *&v47 = v41;
    v25 = v40;
    *(&v47 + 1) = v40;
    *&v48 = v13;
    v36 = v13;
    v26 = v39;
    *(&v48 + 1) = v39;
    *&v49 = v15;
    v35 = v15;
    v27 = v38;
    *(&v49 + 1) = v38;
    *&v50 = v17;
    v28 = v17;
    v29 = v43;
    *(&v50 + 1) = v43;
    *&v51 = v20;
    *(&v51 + 1) = v22;
    sub_26CD0EAB4(&v46, &v52);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v52 = v23;
    v53 = v24;
    v54 = v41;
    v55 = v25;
    v56 = v36;
    v57 = v26;
    v58 = v35;
    v59 = v27;
    v60 = v28;
    v61 = v29;
    v62 = v20;
    v63 = v22;
    result = sub_26CD0EA84(&v52);
    v30 = v49;
    v31 = v37;
    v37[2] = v48;
    v31[3] = v30;
    v32 = v51;
    v31[4] = v50;
    v31[5] = v32;
    v33 = v47;
    *v31 = v46;
    v31[1] = v33;
  }

  return result;
}

unint64_t sub_26CD0EA30()
{
  result = qword_2804BDB48;
  if (!qword_2804BDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB48);
  }

  return result;
}

unint64_t sub_26CD0EAEC()
{
  result = qword_2804BDB50;
  if (!qword_2804BDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB50);
  }

  return result;
}

unint64_t sub_26CD0EB64()
{
  result = qword_2804BDB68;
  if (!qword_2804BDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB68);
  }

  return result;
}

unint64_t sub_26CD0EBBC()
{
  result = qword_2804BDB70;
  if (!qword_2804BDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB70);
  }

  return result;
}

unint64_t sub_26CD0EC14()
{
  result = qword_2804BDB78;
  if (!qword_2804BDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB78);
  }

  return result;
}

unint64_t sub_26CD0EC6C()
{
  result = qword_2804BDB80;
  if (!qword_2804BDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB80);
  }

  return result;
}

unint64_t sub_26CD0ECC4()
{
  result = qword_2804BDB88;
  if (!qword_2804BDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB88);
  }

  return result;
}

unint64_t sub_26CD0ED1C()
{
  result = qword_2804BDB90;
  if (!qword_2804BDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB90);
  }

  return result;
}

uint64_t sub_26CD0EDC4()
{
  sub_26CD0EE28(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_26CD0EE28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDB98, &unk_26CD48D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CD0EE90(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t NotificationServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

uint64_t sub_26CD0EFC4(uint64_t a1)
{
  type metadata accessor for NotificationService();
  v1 = swift_allocObject();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  v4 = type metadata accessor for UNNotificationClient();
  v5 = &off_287E00918;
  v3[0] = [objc_allocWithZone(v4) init];
  swift_beginAccess();
  sub_26CD10288(v3, v1 + 16);
  result = swift_endAccess();
  qword_2804BDBA0 = v1;
  return result;
}

uint64_t static NotificationService.shared.getter()
{
  if (qword_2804BBA98 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CD0F0D0(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return MEMORY[0x2822009F8](sub_26CD0F0F0, 0, 0);
}

uint64_t sub_26CD0F0F0()
{
  v1 = *(v0 + 216);
  swift_beginAccess();
  sub_26CD0F584(v1 + 16, v0 + 80);
  if (*(v0 + 104))
  {
    v2 = *(v0 + 208);
    sub_26CC2524C((v0 + 80), v0 + 144);
    v3 = *(*__swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168)) + OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_center);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_26CD0F39C;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA48, &qword_26CD42810);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_26CD0EE90;
    *(v0 + 104) = &block_descriptor_13;
    *(v0 + 112) = v4;
    [v3 setBadgeCount:v2 withCompletionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_26CD0F5F4(v0 + 80);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v5 = qword_280BBCBE0;
    v6 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26CD3C1E0;
    *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v7 + 64) = sub_26CC2E6E8();
    *(v7 + 32) = &unk_287DFC158;
    sub_26CD3A3DC(v6, &dword_26CC14000, v5, "%@", 2, 2, v7);

    sub_26CC7BCA0();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_26CD0F39C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_26CD0F510;
  }

  else
  {
    v2 = sub_26CD0F4AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CD0F4AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD0F510(uint64_t a1)
{
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1((v1 + 144));
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26CD0F584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDBA8, qword_26CD48D98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CD0F5F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDBA8, qword_26CD48D98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CD0F65C(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_26CD0F67C, 0, 0);
}

uint64_t sub_26CD0F67C()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  sub_26CD0F584(v1 + 16, v0 + 56);
  if (*(v0 + 80))
  {
    sub_26CC2524C((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_26CC3D674;
    v3 = *(v0 + 120);

    return sub_26CC75A20(v3);
  }

  else
  {
    sub_26CD0F5F4(v0 + 56);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v5 = qword_280BBCBE0;
    v6 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26CD3C1E0;
    *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v7 + 64) = sub_26CC2E6E8();
    *(v7 + 32) = &unk_287DFC158;
    sub_26CD3A3DC(v6, &dword_26CC14000, v5, "%@", 2, 2, v7);

    sub_26CC7BCA0();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_26CD0F898(_BYTE *a1, _BYTE *a2)
{
  *(v3 + 120) = v2;
  *(v3 + 146) = *a1;
  *(v3 + 147) = *a2;
  return MEMORY[0x2822009F8](sub_26CD0F8C8, 0, 0);
}

uint64_t sub_26CD0F8C8()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  sub_26CD0F584(v1 + 16, v0 + 56);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 147);
    v3 = *(v0 + 146);
    sub_26CC2524C((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 144) = v3;
    *(v0 + 145) = v2;
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_26CD0FB00;

    return sub_26CC76658((v0 + 144), (v0 + 145));
  }

  else
  {
    sub_26CD0F5F4(v0 + 56);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v6 = qword_280BBCBE0;
    v7 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v8 + 64) = sub_26CC2E6E8();
    *(v8 + 32) = &unk_287DFC158;
    sub_26CD3A3DC(v7, &dword_26CC14000, v6, "%@", 2, 2, v8);

    sub_26CC7BCA0();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_26CD0FB00(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_26CD0FC94;
  }

  else
  {
    *(v4 + 148) = a1 & 1;
    v5 = sub_26CD0FC2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CD0FC2C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 148);

  return v1(v2);
}

uint64_t sub_26CD0FC94()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t NotificationService.__deallocating_deinit()
{
  sub_26CD0F5F4(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_26CD0FD58()
{
  result = qword_2804BDBB0;
  if (!qword_2804BDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBB0);
  }

  return result;
}

uint64_t sub_26CD0FDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CC37110;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of NotificationService.badgeCount(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26CC37110;

  return v6(a1);
}

uint64_t dispatch thunk of NotificationService.deliverNotification(payload:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26CC246B8;

  return v6(a1);
}

uint64_t dispatch thunk of NotificationService.isEnabled(category:setting:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26CC5C5BC;

  return v8(a1, a2);
}

uint64_t sub_26CD10288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDBA8, qword_26CD48D98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RequestContentType.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

unint64_t sub_26CD10388()
{
  result = qword_2804BDBB8;
  if (!qword_2804BDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBB8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26CD10400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26CD10444(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26CD10498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CC37110;

  return v9(a1, a2, a3);
}

uint64_t sub_26CD105C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CC246B8;

  return v9(a1, a2, a3);
}

uint64_t sub_26CD106E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26CC5C5BC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_26CD1082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 360) = a4;
  *(v5 + 368) = a5;
  return MEMORY[0x2822009F8](sub_26CD1084C, 0, 0);
}

uint64_t sub_26CD1084C()
{
  sub_26CC200FC(*(v0 + 360), v0 + 160);
  if (!*(v0 + 184))
  {
    sub_26CC1B544(v0 + 160, &qword_2804BBDA8, &qword_26CD3D5F0);
LABEL_5:
    sub_26CC200FC(*(v0 + 360), v0 + 192);
    if (*(v0 + 216))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA0, &unk_26CD3D4F0);
      if (swift_dynamicCast())
      {
        v2 = *(v0 + 336);
        v51 = *(v2 + 16);
        if (!v51)
        {
          v4 = MEMORY[0x277D84F90];
          goto LABEL_56;
        }

        goto LABEL_8;
      }
    }

    else
    {
      sub_26CC1B544(v0 + 192, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    if (qword_280BB9C20 == -1)
    {
LABEL_52:
      v42 = *(v0 + 360);
      v43 = qword_280BBCBE0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_26CD3C1E0;
      sub_26CD3AC6C();
      MEMORY[0x26D6AD060](0xD000000000000033, 0x800000026CD527A0);
      sub_26CC200FC(v42, v0 + 224);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
      v45 = sub_26CD3A5FC();
      MEMORY[0x26D6AD060](v45);

      *(v44 + 32) = 0;
      *(v44 + 40) = 0xE000000000000000;
      v46 = sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_26CD3C1E0;
      *(v47 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v47 + 64) = sub_26CC2E6E8();
      *(v47 + 32) = v44;
      sub_26CD3A3DC(v46, &dword_26CC14000, v43, "%@", 2, 2, v47);

      v48 = *(v0 + 8);

      return v48();
    }

LABEL_63:
    swift_once();
    goto LABEL_52;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v1 = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBB70, &unk_26CD3C680);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  *(v2 + 32) = v1;
  v51 = 1;
LABEL_8:
  v3 = 0;
  v52 = v2 + 32;
  v55 = *(v0 + 368);
  v4 = MEMORY[0x277D84F90];
  v50 = v2;
  do
  {
    if (v3 >= *(v2 + 16))
    {
      goto LABEL_62;
    }

    v53 = v3 + 1;
    v54 = v4;
    v5 = *(v52 + 8 * v3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v5;
    v7 = -1 << *(v55 + 32);
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v55 + 64);
    v10 = (63 - v7) >> 6;

    v11 = 0;
    if (!v9)
    {
LABEL_17:
      if (v10 <= v11 + 1)
      {
        v15 = v11 + 1;
      }

      else
      {
        v15 = v10;
      }

      v16 = v15 - 1;
      while (1)
      {
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v14 >= v10)
        {
          v9 = 0;
          *(v0 + 80) = 0u;
          *(v0 + 96) = 0u;
          v11 = v16;
          *(v0 + 64) = 0u;
          goto LABEL_26;
        }

        v9 = *(v55 + 64 + 8 * v14);
        ++v11;
        if (v9)
        {
          v11 = v14;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    while (1)
    {
      v14 = v11;
LABEL_25:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v14 << 6);
      v19 = (*(v55 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      sub_26CC168C0(*(v55 + 56) + 32 * v18, v0 + 256);
      *(v0 + 64) = v21;
      *(v0 + 72) = v20;
      sub_26CC331CC((v0 + 256), (v0 + 80));

LABEL_26:
      v22 = *(v0 + 80);
      *(v0 + 112) = *(v0 + 64);
      *(v0 + 128) = v22;
      *(v0 + 144) = *(v0 + 96);
      v23 = *(v0 + 120);
      if (!v23)
      {
        break;
      }

      v24 = *(v0 + 112);
      sub_26CC168C0(v0 + 128, v0 + 32);
      *(v0 + 16) = v24;
      *(v0 + 24) = v23;

      sub_26CC1B544(v0 + 112, &qword_2804BD9D8, qword_26CD47D98);
      v25 = *(v0 + 24);
      if (!v25)
      {
        goto LABEL_41;
      }

      v26 = *(v0 + 16);
      sub_26CC331CC((v0 + 32), (v0 + 288));
      v27 = sub_26CC181C4(v26, v25);
      v29 = v5[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_60;
      }

      v33 = v28;
      if (v5[3] >= v32)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_33;
        }

        v38 = v27;
        sub_26CD36B88();
        v27 = v38;
        v5 = v56;
        if ((v33 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_15:
        v12 = v27;

        v13 = (v5[7] + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v13);
        sub_26CC331CC((v0 + 288), v13);
        isUniquelyReferenced_nonNull_native = 1;
        if (!v9)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_26CD34624(v32, isUniquelyReferenced_nonNull_native & 1);
        v5 = v56;
        v27 = sub_26CC181C4(v26, v25);
        if ((v33 & 1) != (v34 & 1))
        {

          return sub_26CD3B02C();
        }

LABEL_33:
        if (v33)
        {
          goto LABEL_15;
        }

LABEL_34:
        v5[(v27 >> 6) + 8] |= 1 << v27;
        v35 = (v5[6] + 16 * v27);
        *v35 = v26;
        v35[1] = v25;
        sub_26CC331CC((v0 + 288), (v5[7] + 32 * v27));
        v36 = v5[2];
        v31 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v31)
        {
          goto LABEL_61;
        }

        v5[2] = v37;
        isUniquelyReferenced_nonNull_native = 1;
        if (!v9)
        {
          goto LABEL_17;
        }
      }
    }

    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
LABEL_41:

    v4 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_26CCBF508(0, v54[2] + 1, 1, v54);
    }

    v2 = v50;
    v40 = v4[2];
    v39 = v4[3];
    if (v40 >= v39 >> 1)
    {
      v4 = sub_26CCBF508((v39 > 1), v40 + 1, 1, v4);
      v2 = v50;
    }

    v4[2] = v40 + 1;
    v4[v40 + 4] = v5;
    v3 = v53;
  }

  while (v53 != v51);
LABEL_56:
  *(v0 + 376) = v4;

  v49 = swift_task_alloc();
  *(v0 + 384) = v49;
  *v49 = v0;
  v49[1] = sub_26CD10F98;

  return sub_26CC595F0(v4);
}

uint64_t sub_26CD10F98()
{
  v2 = *v1;
  *(v2 + 392) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CD110D4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26CD110D4()
{

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = v0[49];
  v2 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  v0[40] = 0;
  v0[41] = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD000000000000039, 0x800000026CD527E0);
  v0[43] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  sub_26CD3AD1C();
  v4 = v0[41];
  *(v3 + 32) = v0[40];
  *(v3 + 40) = v4;
  v5 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v6 + 64) = sub_26CC2E6E8();
  *(v6 + 32) = v3;
  sub_26CD3A3DC(v5, &dword_26CC14000, v2, "%@", 2, 2, v6);

  v7 = v0[1];

  return v7();
}

double sub_26CD112C0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_26CC168C0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_26CD1130C(_OWORD *a1@<X8>)
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
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26CC168C0(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_26CC331CC(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_26CC1B544(v20, &qword_2804BD9D8, qword_26CD47D98);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
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
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
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
}

uint64_t sub_26CD114D0()
{

  return swift_deallocClassInstance();
}

uint64_t PlaybackEventQueueService.__allocating_init(directoryName:eventsFileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26CC30618;

  return PlaybackEventQueueService.init(directoryName:eventsFileName:)(a1, a2, a3, a4);
}

uint64_t PlaybackEventQueueService.init(directoryName:eventsFileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_26CD11674, 0, 0);
}

uint64_t sub_26CD11674()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  swift_defaultActor_initialize();
  v1[19] = MEMORY[0x277D84F90];
  v1[16] = v5;
  v1[17] = v3;
  v1[14] = v4;
  v1[15] = v2;
  type metadata accessor for CacheStorage(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v1[18] = v6;

  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_26CD117BC;

  return sub_26CD11A1C();
}

uint64_t sub_26CD117BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  sub_26CD12250(v5, v6);
  swift_getObjectType();
  v8 = sub_26CD3A80C();
  if (v1)
  {
    v9 = sub_26CD119B8;
  }

  else
  {
    *(v4 + 96) = a1;
    v9 = sub_26CD11920;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_26CD11920()
{
  v1 = v0[9];
  if (v0[12])
  {
    v2 = v0[12];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  *(v1 + 152) = v2;

  v3 = v0[1];
  v4 = v0[9];

  return v3(v4);
}

uint64_t sub_26CD119B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD11A1C()
{
  v1[14] = v0;
  v2 = sub_26CD39F9C();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = sub_26CD3A07C();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD11BBC, v0, 0);
}

uint64_t sub_26CD11BBC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[18];
  v4 = v0[19];
  sub_26CC6E7A0(v1);
  sub_26CC4EDBC(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[23];
    sub_26CC3C0E0(v0[22]);
LABEL_10:
    sub_26CC3C0E0(v5);
    v27 = MEMORY[0x277D84F90];
LABEL_11:

    v28 = v0[1];

    return v28(v27);
  }

  (*(v0[19] + 32))(v0[21], v0[22], v0[18]);
  v6 = objc_opt_self();
  v7 = [v6 defaultManager];
  sub_26CD39FFC();
  v8 = sub_26CD3A59C();

  v9 = [v7 fileExistsAtPath_];

  if (!v9)
  {
    v5 = v0[23];
    (*(v0[19] + 8))(v0[21], v0[18]);
    goto LABEL_10;
  }

  v10 = [v6 defaultManager];
  sub_26CD39FFC();
  v11 = sub_26CD3A59C();

  v0[11] = 0;
  v12 = [v10 contentsOfDirectoryAtPath:v11 error:v0 + 11];

  v13 = v0[11];
  if (v12)
  {
    v14 = sub_26CD3A7AC();
    v15 = v13;

    v16 = *(v14 + 16);
    if (v16)
    {
      v17 = (v14 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDBC8, qword_26CD492A8);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_26CD3C1E0;

        MEMORY[0x26D6AD060](v18, v19);

        *(v20 + 56) = MEMORY[0x277D837D0];
        *(v20 + 32) = 0x20646E756F46;
        *(v20 + 40) = 0xE600000000000000;
        sub_26CD3B0DC();

        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v22 = v0[16];
    v21 = v0[17];
    v23 = v0[14];
    v24 = v0[15];

    v25 = *(v23 + 112);
    v26 = *(v23 + 120);
    v0[9] = v25;
    v0[10] = v26;
    (*(v22 + 104))(v21, *MEMORY[0x277CC91D0], v24);
    sub_26CC16DCC();

    sub_26CD3A06C();
    (*(v22 + 8))(v21, v24);

    v35 = sub_26CD3A08C();
    v37 = v36;
    v38 = objc_opt_self();
    v39 = sub_26CD3A09C();
    v0[12] = 0;
    v40 = [v38 JSONObjectWithData:v39 options:0 error:v0 + 12];

    v41 = v0[12];
    if (v40)
    {
      v42 = v41;
      sub_26CD3AB3C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA0, &unk_26CD3D4F0);
      if (swift_dynamicCast())
      {
        v43 = v0[13];
        sub_26CC18C50(v35, v37);
      }

      else
      {
        sub_26CC18C50(v35, v37);
        v43 = MEMORY[0x277D84F90];
      }

      v50 = v0[23];
      v51 = v0[21];
      v52 = v0[18];
      v53 = v0[14];
      v54 = *(v0[19] + 8);
      v54(v0[20], v52);
      v54(v51, v52);
      sub_26CC3C0E0(v50);
      swift_beginAccess();
      *(v53 + 152) = v43;

      v27 = *(v53 + 152);

      goto LABEL_11;
    }

    v45 = v0[20];
    v44 = v0[21];
    v46 = v0[18];
    v47 = v0[19];
    v48 = v41;
    sub_26CD39F8C();

    swift_willThrow();
    sub_26CC18C50(v35, v37);
    v49 = *(v47 + 8);
    v49(v45, v46);
    v49(v44, v46);
  }

  else
  {
    v30 = v0[21];
    v31 = v0[18];
    v32 = v0[19];
    v33 = v13;
    sub_26CD39F8C();

    swift_willThrow();
    (*(v32 + 8))(v30, v31);
  }

  sub_26CC3C0E0(v0[23]);

  v34 = v0[1];

  return v34();
}

unint64_t sub_26CD12250(uint64_t a1, uint64_t a2)
{
  result = qword_2804BDBC0;
  if (!qword_2804BDBC0)
  {
    type metadata accessor for PlaybackEventQueueService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBC0);
  }

  return result;
}

uint64_t sub_26CD122C8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_26CD122E8, v1, 0);
}

uint64_t sub_26CD122E8()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 152);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 152) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26CCBF508(0, v2[2] + 1, 1, v2);
    *(v1 + 152) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_26CCBF508((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = v0[5];
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v1 + 152) = v2;
  swift_endAccess();
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_26CCBF914;

  return sub_26CD12424();
}

uint64_t sub_26CD12424()
{
  v1[9] = v0;
  v2 = sub_26CD39F9C();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_26CD3A07C();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD125C4, v0, 0);
}

uint64_t sub_26CD125C4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  sub_26CC6E7A0(v1);
  sub_26CC4EDBC(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    (*(*(v0 + 112) + 32))(*(v0 + 128), *(v0 + 136), *(v0 + 104));
    v6 = objc_opt_self();
    v7 = [v6 defaultManager];
    sub_26CD39FFC();
    v8 = sub_26CD3A59C();

    v9 = [v7 fileExistsAtPath_];

    if ((v9 & 1) == 0)
    {
      v10 = [v6 defaultManager];
      v11 = sub_26CD39FCC();
      *(v0 + 56) = 0;
      v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:0 attributes:0 error:v0 + 56];

      v13 = *(v0 + 56);
      if (!v12)
      {
        v39 = *(v0 + 112);
        v40 = v13;
        sub_26CD39F8C();

        swift_willThrow();
        v38 = *(v39 + 8);
        goto LABEL_13;
      }

      v14 = v13;
    }

    v16 = *(v0 + 88);
    v15 = *(v0 + 96);
    v17 = *(v0 + 72);
    v18 = *(v0 + 80);
    v19 = *(v17 + 120);
    *(v0 + 40) = *(v17 + 112);
    *(v0 + 48) = v19;
    (*(v16 + 104))(v15, *MEMORY[0x277CC91D0], v18);
    sub_26CC16DCC();

    sub_26CD3A06C();
    (*(v16 + 8))(v15, v18);

    v20 = objc_opt_self();
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    v21 = sub_26CD3A79C();

    *(v0 + 64) = 0;
    v22 = [v20 dataWithJSONObject:v21 options:0 error:v0 + 64];

    v23 = *(v0 + 64);
    v24 = *(v0 + 120);
    if (v22)
    {
      v25 = sub_26CD3A0BC();
      v27 = v26;

      v28 = [v6 defaultManager];
      sub_26CD39FFC();
      v29 = sub_26CD3A59C();

      v30 = sub_26CD3A09C();
      v31 = [v28 createFileAtPath:v29 contents:v30 attributes:0];

      if (v31)
      {
        if (qword_280BB9C20 != -1)
        {
          swift_once();
        }

        v32 = qword_280BBCBE0;
        v33 = sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_26CD3C1E0;
        *(v34 + 56) = MEMORY[0x277D837D0];
        *(v34 + 64) = sub_26CC19E10();
        *(v34 + 32) = 0x69786520656C6946;
        *(v34 + 40) = 0xEB00000000737473;
        sub_26CD3A3DC(v33, &dword_26CC14000, v32, "%@", 2, 2, v34);

        sub_26CC18C50(v25, v27);
      }

      else
      {
        if (qword_280BB9C20 != -1)
        {
          swift_once();
        }

        v43 = qword_280BBCBE0;
        v44 = sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_26CD3C1E0;
        *(v45 + 56) = MEMORY[0x277D837D0];
        *(v45 + 64) = sub_26CC19E10();
        *(v45 + 32) = 0xD000000000000013;
        *(v45 + 40) = 0x800000026CD4E9B0;
        sub_26CD3A3DC(v44, &dword_26CC14000, v43, "%@", 2, 2, v45);
        sub_26CC18C50(v25, v27);
      }

      v5 = *(v0 + 144);
      v46 = *(v0 + 128);
      v47 = *(v0 + 104);
      v48 = *(*(v0 + 112) + 8);
      v48(*(v0 + 120), v47);
      v48(v46, v47);
      goto LABEL_18;
    }

    v35 = *(v0 + 104);
    v36 = *(v0 + 112);
    v37 = v23;
    sub_26CD39F8C();

    swift_willThrow();
    v38 = *(v36 + 8);
    v38(v24, v35);
LABEL_13:
    v41 = *(v0 + 144);
    v38(*(v0 + 128), *(v0 + 104));
    sub_26CC3C0E0(v41);

    v42 = *(v0 + 8);
    goto LABEL_19;
  }

  v5 = *(v0 + 136);
  sub_26CC3C0E0(*(v0 + 144));
LABEL_18:
  sub_26CC3C0E0(v5);

  v42 = *(v0 + 8);
LABEL_19:

  return v42();
}

uint64_t sub_26CD12C6C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v1 + 152) = MEMORY[0x277D84F90];

  sub_26CC6F2D0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26CD12D34()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 152);
  if (*(v2 + 16))
  {
    result = swift_beginAccess();
    if (!*(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);

    sub_26CD13308(0, 1);
    swift_endAccess();
  }

  else
  {
    v4 = 0;
  }

  v0[9] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_26CD12E38;

  return sub_26CD12424();
}

uint64_t sub_26CD12E38()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x2822009F8](sub_26CD12F70, v3, 0);
  }

  else
  {
    v4 = v2[1];
    v5 = v2[9];

    return v4(v5);
  }
}

uint64_t sub_26CD12F70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD12FD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CD13060;

  return sub_26CD11A1C();
}

uint64_t sub_26CD13060(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v8 = *(v4 + 8);

    return v8(v7);
  }
}