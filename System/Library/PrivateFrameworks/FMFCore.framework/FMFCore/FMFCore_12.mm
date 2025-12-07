uint64_t sub_24A489DD0(uint64_t a1)
{
  v2 = sub_24A4AB220();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24A38D374(&qword_27EF40C50, MEMORY[0x277D092D8], MEMORY[0x277D092E0]);
  result = MEMORY[0x24C218010](v9, v2, v10);
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
      v13(v5, v15, v2);
      sub_24A485F20(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24A489F6C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_24A48A174();
  result = MEMORY[0x24C218010](v3, &type metadata for LiveFriend, v4);
  v12 = result;
  if (v3)
  {
    v6 = (a1 + 50);
    do
    {
      v7 = *(v6 - 10);
      v8 = *(v6 - 18);
      if (*(v6 - 1))
      {
        v9 = 256;
      }

      else
      {
        v9 = 0;
      }

      if (*v6)
      {
        v10 = 0x10000;
      }

      else
      {
        v10 = 0;
      }

      v1 = v10 | v1 & 0xFF000000 | v9 | *(v6 - 2);

      sub_24A486200(&v11, v8, v7, v1);

      v6 += 24;
      --v3;
    }

    while (v3);
    return v12;
  }

  return result;
}

uint64_t sub_24A48A048(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v4 = sub_24A4957B4();
  result = MEMORY[0x24C218010](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_24A48646C(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_24A48A0F4(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_24A399A78(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

unint64_t sub_24A48A174()
{
  result = qword_27EF40C30;
  if (!qword_27EF40C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40C30);
  }

  return result;
}

unint64_t sub_24A48A1C8()
{
  result = qword_27EF40C48;
  if (!qword_27EF40C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40C48);
  }

  return result;
}

uint64_t sub_24A48A21C(uint64_t a1, void *a2, void *a3)
{
  v143 = a1;
  v5 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v5 - 8);
  v137 = &v110 - v6;
  v7 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v110 - v8;
  v10 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v144 = &v110 - v14;
  v15 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v15 - 8);
  v141 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v140 = &v110 - v18;
  v19 = type metadata accessor for FMFFriend(0);
  v139 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v136 = (&v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v23 = (&v110 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = &v110 - v25;
  v146 = swift_allocObject();
  *(v146 + 16) = a3;
  v27 = qword_27EF3EBF8;
  v138 = a3;
  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_24A4AB630();
  sub_24A378E18(v28, qword_27EF4E260);

  v29 = sub_24A4AB600();
  v30 = sub_24A4ABCE0();

  v31 = os_log_type_enabled(v29, v30);
  v142 = v26;
  v145 = v12;
  v147 = v9;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v149 = v33;
    *v32 = 136315138;
    v148 = *a2;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v34 = sub_24A4AB870();
    v36 = a2;
    v37 = sub_24A37BD58(v34, v35, &v149);

    *(v32 + 4) = v37;
    a2 = v36;
    _os_log_impl(&dword_24A376000, v29, v30, "%s: stop sharing action initiated", v32, 0xCu);
    sub_24A37EEE0(v33);
    MEMORY[0x24C219130](v33, -1, -1);
    v38 = v32;
    v12 = v145;
    MEMORY[0x24C219130](v38, -1, -1);
  }

  if (*(a2[17] + 40) == 1)
  {
    v39 = sub_24A4AB600();
    v40 = sub_24A4ABCC0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_24A376000, v39, v40, "Action is restricted. Returning with error", v41, 2u);
      MEMORY[0x24C219130](v41, -1, -1);
    }

    dispatch_group_leave(v138);
  }

  else
  {
    v135 = a2;
    v125 = v143 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend;
    v42 = v140;
    sub_24A495474(v143 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend, v140, type metadata accessor for FMFFriend);
    v43 = v139;
    (*(v139 + 56))(v42, 0, 1, v19);
    v44 = type metadata accessor for FMFLocation(0);
    isa = v44[-1].isa;
    v46 = isa + 56;
    v45 = *(isa + 7);
    v45(v144, 1, 1, v44);
    v47 = v19[21];
    *(v23 + v47) = 7;
    v48 = sub_24A4AAAD0();
    (*(*(v48 - 8) + 56))(v147, 1, 1, v48);
    v138 = v44;
    v124 = v45;
    v123 = v46;
    v45(v12, 1, 1, v44);
    v49 = v42;
    v50 = v141;
    sub_24A37BE24(v49, v141, &qword_27EF3F2D0, &qword_24A4B4F50);
    if ((*(v43 + 48))(v50, 1, v19) == 1)
    {
      sub_24A37EF2C(v50, &qword_27EF3F2D0, &qword_24A4B4F50);
      v51 = 0;
      v130 = 0;
      v140 = 0;
      v141 = 0;
      v139 = 0;
      v134 = 0;
      v131 = 0;
      v52 = 0;
      v128 = 0;
      v127 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0xE000000000000000;
      v59 = MEMORY[0x277D84FA0];
      v126 = 2;
      v60 = 0x7FFFFFFFFFFFFFFFLL;
      v133 = 2;
      v61 = 2;
      v62 = 2;
      v132 = 2;
    }

    else
    {
      sub_24A37EF2C(v12, &qword_27EF3F480, &unk_24A4B8C20);
      v63 = v147;
      sub_24A37EF2C(v147, &qword_27EF3F460, &unk_24A4B53B0);
      v64 = v50;
      v65 = v136;
      sub_24A4954DC(v64, v136, type metadata accessor for FMFFriend);
      v66 = v65[1];
      v120 = *v65;
      v117 = v66;
      v67 = v65[3];
      v119 = v65[2];
      v122 = v67;
      v121 = v65[4];
      sub_24A37B740(v65 + v19[8], v63, &qword_27EF3F460, &unk_24A4B53B0);
      v68 = v19[10];
      v118 = *(v65 + v19[9]);
      v132 = *(v65 + v68);
      v69 = v19[12];
      v115 = *(v65 + v19[11]);
      v114 = *(v65 + v69);
      v126 = *(v65 + v19[18]);
      v70 = v19[14];
      v116 = *(v65 + v19[13]);
      v133 = *(v65 + v70);
      v113 = *(v65 + v19[15]);
      sub_24A37B740(v65 + v19[20], v12, &qword_27EF3F480, &unk_24A4B8C20);
      v71 = (v65 + v19[19]);
      v72 = v71[1];
      v140 = *v71;
      v73 = v71[2];
      v112 = v71[3];
      v75 = v71[4];
      v74 = v71[5];
      v111 = v71[6];
      v76 = *(v65 + v19[16]);
      v141 = *(v65 + v19[17]);
      *(v23 + v47) = *(v65 + v19[21]);
      v77 = v65[5];

      v78 = v117;

      v134 = v72;
      v79 = v72;
      v131 = v73;
      v80 = v73;
      v61 = v114;
      v81 = v112;
      v128 = v75;
      v127 = v74;
      v82 = v74;
      v53 = v111;
      sub_24A39AED0(v140, v79, v80, v112, v75, v82, v111);
      v130 = v77;
      v62 = v115;
      v52 = v81;

      v139 = v76;
      v60 = v113;

      v83 = v65;
      v51 = v116;
      sub_24A489C74(v83, type metadata accessor for FMFFriend);
      v59 = v121;
      v58 = v78;
      v55 = v122;
      v56 = v120;
      v54 = v119;
      v57 = v118 & 0xFFFFFFFFFFFFFFFELL;
    }

    v84 = v19[14];
    *v23 = v56;
    v23[1] = v58;
    v23[2] = v54;
    v23[3] = v55;
    v23[4] = v59;
    sub_24A37BE24(v147, v23 + v19[8], &qword_27EF3F460, &unk_24A4B53B0);
    *(v23 + v19[9]) = v57;
    *(v23 + v19[10]) = v132;
    *(v23 + v19[11]) = v62;
    *(v23 + v19[12]) = v61;
    v85 = (v23 + v19[19]);
    v86 = v134;
    *v85 = v140;
    v85[1] = v86;
    v85[2] = v131;
    v85[3] = v52;
    v87 = v127;
    v85[4] = v128;
    v85[5] = v87;
    v85[6] = v53;
    *(v23 + v84) = v133;
    *(v23 + v19[18]) = (v126 == 2) | v126 & 1;
    *(v23 + v19[13]) = v51;
    v23[5] = v130;
    *(v23 + v19[15]) = v60;
    v88 = v144;
    if ((*(isa + 6))(v144, 1, v138) == 1)
    {
      sub_24A37EF2C(v88, &qword_27EF3F480, &unk_24A4B8C20);
      sub_24A37BE24(v145, v23 + v19[20], &qword_27EF3F480, &unk_24A4B8C20);
    }

    else
    {
      sub_24A37EF2C(v145, &qword_27EF3F480, &unk_24A4B8C20);
      v89 = v19[20];
      sub_24A4954DC(v88, v23 + v89, type metadata accessor for FMFLocation);
      v124(v23 + v89, 0, 1, v138);
    }

    v90 = v135;
    *(v23 + v19[16]) = v139;
    v91 = v142;
    *(v23 + v19[17]) = v141;
    sub_24A4954DC(v23, v91, type metadata accessor for FMFFriend);
    LOBYTE(v149) = 3;
    sub_24A4507E0(v91, &v149);
    v92 = sub_24A4AA700();
    v150 = v92;
    v93 = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
    v151 = v93;
    v94 = sub_24A38D3BC(&v149);
    v95 = *(*(v92 - 8) + 104);
    v95(v94, *MEMORY[0x277D08A20], v92);
    v96 = sub_24A4AA6C0();
    sub_24A37EEE0(&v149);
    if (v96)
    {
      v97 = sub_24A475BD8(*(v125 + 32));
      v98 = sub_24A489DD0(v97);

      v99 = sub_24A4ABB70();
      v100 = v137;
      (*(*(v99 - 8) + 56))(v137, 1, 1, v99);
      v101 = swift_allocObject();
      v101[2] = 0;
      v101[3] = 0;
      v101[4] = v98;
      v101[5] = v90;
      v101[6] = v143;
      v101[7] = sub_24A494B8C;
      v101[8] = v146;

      v102 = &unk_24A4BC580;
      v103 = v100;
    }

    else
    {
      v150 = v92;
      v151 = v93;
      v104 = sub_24A38D3BC(&v149);
      v95(v104, *MEMORY[0x277D089F8], v92);
      v105 = sub_24A4AA6C0();
      sub_24A37EEE0(&v149);
      if ((v105 & 1) == 0)
      {
        sub_24A489C74(v91, type metadata accessor for FMFFriend);
      }

      v106 = sub_24A4ABB70();
      v107 = v137;
      (*(*(v106 - 8) + 56))(v137, 1, 1, v106);
      v101 = swift_allocObject();
      v101[2] = 0;
      v101[3] = 0;
      v101[4] = v143;
      v101[5] = v90;
      v108 = v146;
      v101[6] = sub_24A494B8C;
      v101[7] = v108;

      v102 = &unk_24A4BC570;
      v103 = v107;
    }

    sub_24A432370(0, 0, v103, v102, v101);

    sub_24A489C74(v91, type metadata accessor for FMFFriend);
  }
}

uint64_t sub_24A48B060(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t *a4, uint64_t (*a5)(void, void, __n128), uint64_t a6)
{
  v109 = a1;
  v11 = sub_24A4AB690();
  v104 = *(v11 - 8);
  v105 = v11;
  MEMORY[0x28223BE20](v11);
  v102 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_24A4AB6E0();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMFFriend(0);
  MEMORY[0x28223BE20](v14);
  v98 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v110 = v16;
  v17 = qword_27EF3EBF8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_24A4AB630();
  v19 = sub_24A378E18(v18, qword_27EF4E260);

  v108 = v19;
  v20 = sub_24A4AB600();
  v21 = sub_24A4ABCE0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v107 = a4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v106 = v24;
    *v23 = 136315138;
    v111 = *a2;
    aBlock[0] = v24;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v25 = sub_24A4AB870();
    v27 = v14;
    v28 = a5;
    v29 = sub_24A37BD58(v25, v26, aBlock);

    *(v23 + 4) = v29;
    a5 = v28;
    v14 = v27;
    _os_log_impl(&dword_24A376000, v20, v21, "%s: removeFriend action initiated", v23, 0xCu);
    v30 = v106;
    sub_24A37EEE0(v106);
    MEMORY[0x24C219130](v30, -1, -1);
    v31 = v23;
    a4 = v107;
    MEMORY[0x24C219130](v31, -1, -1);
  }

  if (*(a2[17] + 40) == 1)
  {
    v32 = sub_24A4AB600();
    v33 = sub_24A4ABCC0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24A376000, v32, v33, "Action is restricted. Returning with error", v34, 2u);
      MEMORY[0x24C219130](v34, -1, -1);
    }

    LOBYTE(aBlock[0]) = 0;
    sub_24A489940();
    v35 = swift_allocError();
    *v36 = 5;
    *(v36 + 8) = 256;
    sub_24A438AE0(aBlock, v35, a3, a4, a5, a6);
  }

  else
  {
    v37 = (v109 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend);
    sub_24A451528(v109 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend);
    v108 = dispatch_group_create();
    v99 = swift_allocObject();
    *(v99 + 16) = 0;
    v38 = *(v14 + 36);
    v107 = v37;
    v39 = *(v37 + v38);
    v106 = v39;
    if (v39)
    {
      v40 = v108;
      dispatch_group_enter(v108);
      v42 = *v107;
      v41 = v107[1];
      type metadata accessor for FMFRemoveFriendRequest(0);
      v43 = (swift_allocObject() + qword_27EF4E348);
      *v43 = v42;
      v43[1] = v41;

      v97 = sub_24A3A45B8(0x6F4665766F6D6572, 0xEE007265776F6C6CLL);
      v44 = a2[15];
      v45 = a2[16];
      v96 = sub_24A37EACC(a2 + 12, v44);
      v46 = swift_allocObject();
      *(v46 + 16) = v99;
      *(v46 + 24) = v40;
      v47 = *(v45 + 64);
      refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

      v49 = v40;
      v47(v97, sub_24A49583C, v46, refreshed, v44, v45);

      dispatch_group_enter(v49);
      v50 = v98;
      sub_24A495474(v107, v98, type metadata accessor for FMFFriend);
      type metadata accessor for FMFStopSharingAction(0);
      v39 = swift_allocObject();
      sub_24A4954DC(v50, v39 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend, type metadata accessor for FMFFriend);
      *(v39 + 16) = 1;
      v51 = v49;
      sub_24A48A21C(v39, a2, v51);
      LOBYTE(v39) = v106;
    }

    v98 = swift_allocObject();
    *(v98 + 16) = 0;
    if ((v39 & 2) != 0)
    {
      v52 = v108;
      dispatch_group_enter(v108);
      v53 = *v107;
      v54 = v107[1];
      sub_24A44A59C(*v107, v54);
      type metadata accessor for FMFRemoveFriendRequest(0);
      v55 = (swift_allocObject() + qword_27EF4E348);
      *v55 = v53;
      v55[1] = v54;

      v39 = sub_24A3A45B8(0x6F4665766F6D6572, 0xEF676E69776F6C6CLL);
      v56 = a2[15];
      v57 = a2[16];
      v97 = sub_24A37EACC(a2 + 12, v56);
      v58 = swift_allocObject();
      *(v58 + 16) = v98;
      *(v58 + 24) = v52;
      v59 = *(v57 + 64);
      v60 = type metadata accessor for FMFInitRefreshClientResponse(0);
      v61 = v52;

      v59(v39, sub_24A494B70, v58, v60, v56, v57);
      LOBYTE(v39) = v106;
    }

    v97 = swift_allocObject();
    *(v97 + 16) = 0;
    if ((v39 & 4) != 0)
    {
      v62 = v108;
      dispatch_group_enter(v108);
      v64 = *v107;
      v63 = v107[1];
      type metadata accessor for FMFRemoveFriendRequest(0);
      v65 = (swift_allocObject() + qword_27EF4E348);
      *v65 = v64;
      v65[1] = v63;

      v39 = sub_24A3A45B8(0xD000000000000015, 0x800000024A4B3370);
      v66 = a2[15];
      v67 = a2[16];
      v96 = sub_24A37EACC(a2 + 12, v66);
      v68 = swift_allocObject();
      *(v68 + 16) = v97;
      *(v68 + 24) = v62;
      v69 = *(v67 + 64);
      v70 = type metadata accessor for FMFInitRefreshClientResponse(0);
      v71 = v62;

      v69(v39, sub_24A49583C, v68, v70, v66, v67);
      LOBYTE(v39) = v106;
    }

    v106 = swift_allocObject();
    v106[2] = 0;
    if ((v39 & 8) != 0)
    {
      v72 = v108;
      dispatch_group_enter(v108);
      v74 = *v107;
      v73 = v107[1];
      type metadata accessor for FMFRespondToInviteRequest(0);
      v75 = swift_allocObject();
      v76 = (v75 + qword_27EF4E1E8);
      *v76 = v74;
      v76[1] = v73;
      *(v75 + qword_27EF4E1F0) = 0;

      v77 = sub_24A3A45B8(0x6552657469766E69, 0xEE0065736E6F7073);
      v78 = a2[15];
      v79 = a2[16];
      v107 = sub_24A37EACC(a2 + 12, v78);
      v80 = swift_allocObject();
      *(v80 + 16) = v106;
      *(v80 + 24) = v72;
      v81 = *(v79 + 64);
      v82 = type metadata accessor for FMFInitRefreshClientResponse(0);
      v83 = v72;

      v81(v77, sub_24A49583C, v80, v82, v78, v79);
    }

    sub_24A3785D4();
    v107 = sub_24A4ABD60();
    v84 = swift_allocObject();
    v85 = v98;
    v84[2] = v99;
    v84[3] = a2;
    v86 = v110;
    v84[4] = v109;
    v84[5] = sub_24A495838;
    v84[6] = v86;
    v84[7] = v85;
    v87 = v106;
    v84[8] = v97;
    v84[9] = v87;
    aBlock[4] = sub_24A494B5C;
    aBlock[5] = v84;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8B708;
    v88 = _Block_copy(aBlock);

    v89 = v100;
    sub_24A4AB6B0();
    v111 = MEMORY[0x277D84F90];
    sub_24A38D374(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3CFC00();
    v90 = v102;
    v91 = v105;
    sub_24A4ABE90();
    v92 = v107;
    v93 = v108;
    sub_24A4ABD00();
    _Block_release(v88);

    (*(v104 + 8))(v90, v91);
    (*(v101 + 8))(v89, v103);
  }
}

uint64_t sub_24A48BC98(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void, __n128), uint64_t a6)
{
  v44 = a1;
  v11 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v42 = a5;
  v14[4] = a5;
  v14[5] = a6;
  v15 = qword_27EF3EBF8;

  v41 = a6;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);

  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCE0();

  v43 = v18;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v19;
    v20 = swift_slowAlloc();
    v39 = v20;
    *v19 = 136315138;
    v45 = *a2;
    v46 = v20;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v21 = sub_24A4AB870();
    v40 = a3;
    v23 = a4;
    v24 = sub_24A37BD58(v21, v22, &v46);
    a3 = v40;

    v25 = v38;
    *(v38 + 1) = v24;
    a4 = v23;
    v26 = v25;
    _os_log_impl(&dword_24A376000, v17, v43, "%s: ShowHideLocation: action initiated", v25, 0xCu);
    v27 = v39;
    sub_24A37EEE0(v39);
    MEMORY[0x24C219130](v27, -1, -1);
    MEMORY[0x24C219130](v26, -1, -1);
  }

  if (*(a2[17] + 40) == 1)
  {
    v28 = sub_24A4AB600();
    v29 = sub_24A4ABCC0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_24A376000, v28, v29, "Action is restricted. Returning with error", v30, 2u);
      MEMORY[0x24C219130](v30, -1, -1);
    }

    LOBYTE(v46) = 0;
    sub_24A489940();
    v31 = swift_allocError();
    *v32 = 5;
    *(v32 + 8) = 256;
    sub_24A438AE0(&v46, v31, a3, a4, v42, v41);
  }

  else
  {
    v33 = sub_24A4ABB70();
    (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v35 = v44;
    v34[4] = a2;
    v34[5] = v35;
    v34[6] = sub_24A495838;
    v34[7] = v14;

    sub_24A432370(0, 0, v13, &unk_24A4BC598, v34);
  }
}

uint64_t sub_24A48C0A8(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void, __n128), uint64_t a6)
{
  v142 = a1;
  v11 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v107 - v12;
  v14 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v145 = &v107 - v18;
  v19 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v19 - 8);
  v139 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v136 = &v107 - v22;
  v23 = type metadata accessor for FMFFriend(0);
  v135 = *(v23 - 1);
  MEMORY[0x28223BE20](v23);
  v134 = (&v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v140 = &v107 - v26;
  MEMORY[0x28223BE20](v27);
  v141 = &v107 - v28;
  v29 = swift_allocObject();
  v29[2] = a3;
  v29[3] = a4;
  v29[4] = a5;
  v29[5] = a6;
  v143 = v29;
  v30 = qword_27EF3EBF8;
  v137 = a3;

  v138 = a4;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_24A4AB630();
  sub_24A378E18(v31, qword_27EF4E260);

  v32 = sub_24A4AB600();
  v33 = sub_24A4ABCE0();

  v34 = os_log_type_enabled(v32, v33);
  v144 = v13;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v133 = a5;
    v36 = v35;
    v37 = swift_slowAlloc();
    v132 = v37;
    *v36 = 136315138;
    v146 = *a2;
    v147 = v37;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v38 = sub_24A4AB870();
    v40 = sub_24A37BD58(v38, v39, &v147);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_24A376000, v32, v33, "%s: stop following action initiated", v36, 0xCu);
    v41 = v132;
    sub_24A37EEE0(v132);
    MEMORY[0x24C219130](v41, -1, -1);
    v42 = v36;
    a5 = v133;
    MEMORY[0x24C219130](v42, -1, -1);
  }

  if (*(a2[17] + 40) == 1)
  {
    v43 = sub_24A4AB600();
    v44 = sub_24A4ABCC0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_24A376000, v43, v44, "Action is restricted. Returning with error", v45, 2u);
      MEMORY[0x24C219130](v45, -1, -1);
    }

    LOBYTE(v147) = 0;
    sub_24A489940();
    v46 = swift_allocError();
    *v47 = 5;
    *(v47 + 8) = 256;
    sub_24A438AE0(&v147, v46, v137, v138, a5, a6);
  }

  else
  {
    v132 = a2;
    v48 = v142 + OBJC_IVAR____TtC7FMFCore22FMFStopFollowingAction_friend;
    v49 = *(v142 + OBJC_IVAR____TtC7FMFCore22FMFStopFollowingAction_friend);
    v50 = *(v142 + OBJC_IVAR____TtC7FMFCore22FMFStopFollowingAction_friend + 8);
    type metadata accessor for FMFRemoveFriendRequest(0);
    v51 = (swift_allocObject() + qword_27EF4E348);
    v128 = v50;
    v129 = v49;
    *v51 = v49;
    v51[1] = v50;

    v130 = sub_24A3A45B8(0x6F4665766F6D6572, 0xEF676E69776F6C6CLL);
    v52 = v136;
    sub_24A495474(v48, v136, type metadata accessor for FMFFriend);
    v53 = v135;
    (*(v135 + 56))(v52, 0, 1, v23);
    v54 = type metadata accessor for FMFLocation(0);
    v123 = *(v54 - 8);
    v55 = v123 + 56;
    v56 = *(v123 + 56);
    v56(v145, 1, 1, v54);
    v57 = v23[21];
    v58 = v140;
    v140[v57] = 7;
    v59 = sub_24A4AAAD0();
    (*(*(v59 - 8) + 56))(v144, 1, 1, v59);
    v133 = v54;
    v119 = v55;
    v56(v16, 1, 1, v54);
    v60 = v52;
    v61 = v139;
    sub_24A37BE24(v60, v139, &qword_27EF3F2D0, &qword_24A4B4F50);
    v62 = (*(v53 + 48))(v61, 1, v23);
    v131 = v16;
    if (v62 == 1)
    {
      sub_24A37EF2C(v61, &qword_27EF3F2D0, &qword_24A4B4F50);
      v63 = 0;
      v124 = 0;
      v138 = 0;
      v139 = 0;
      v136 = 0;
      v137 = 0;
      v125 = 0;
      v64 = 0;
      v122 = 0;
      v121 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0xE000000000000000;
      v71 = MEMORY[0x277D84FA0];
      v120 = 2;
      v135 = 0x7FFFFFFFFFFFFFFFLL;
      v126 = 2;
      v127 = 2;
      v72 = 2;
      v73 = 2;
    }

    else
    {
      sub_24A37EF2C(v16, &qword_27EF3F480, &unk_24A4B8C20);
      v117 = v56;
      v74 = v144;
      sub_24A37EF2C(v144, &qword_27EF3F460, &unk_24A4B53B0);
      v75 = v134;
      sub_24A4954DC(v61, v134, type metadata accessor for FMFFriend);
      v76 = v75[1];
      v116 = *v75;
      v113 = v76;
      v77 = v75[3];
      v115 = v75[2];
      v109 = v77;
      v118 = v75[4];
      sub_24A37B740(v75 + v23[8], v74, &qword_27EF3F460, &unk_24A4B53B0);
      v78 = v23[10];
      v114 = *(v75 + v23[9]);
      v126 = *(v75 + v78);
      v79 = v23[12];
      v112 = *(v75 + v23[11]);
      v110 = *(v75 + v79);
      v120 = *(v75 + v23[18]);
      v80 = v23[14];
      v111 = *(v75 + v23[13]);
      v127 = *(v75 + v80);
      v135 = *(v75 + v23[15]);
      sub_24A37B740(v75 + v23[20], v16, &qword_27EF3F480, &unk_24A4B8C20);
      v81 = (v75 + v23[19]);
      v82 = *v81;
      v137 = v81[1];
      v138 = v82;
      v83 = v81[2];
      v64 = v81[3];
      v85 = v81[4];
      v84 = v81[5];
      v108 = v81[6];
      v86 = *(v75 + v23[16]);
      v139 = *(v75 + v23[17]);
      *(v58 + v57) = *(v75 + v23[21]);
      v87 = v75[5];

      v88 = v113;

      v125 = v83;
      v89 = v83;
      v72 = v110;
      v122 = v85;
      v121 = v84;
      v90 = v84;
      v65 = v108;
      sub_24A39AED0(v138, v137, v89, v64, v85, v90, v108);
      v124 = v87;
      v73 = v112;

      v136 = v86;
      v63 = v111;

      v91 = v75;
      v56 = v117;
      sub_24A489C74(v91, type metadata accessor for FMFFriend);
      v71 = v118;
      v70 = v88;
      v67 = v109;
      v68 = v116;
      v66 = v115;
      v69 = v114 & 0xFFFFFFFFFFFFFFFDLL;
    }

    v92 = v23[14];
    *v58 = v68;
    v58[1] = v70;
    v58[2] = v66;
    v58[3] = v67;
    v58[4] = v71;
    sub_24A37BE24(v144, v58 + v23[8], &qword_27EF3F460, &unk_24A4B53B0);
    *(v58 + v23[9]) = v69;
    *(v58 + v23[10]) = v126;
    *(v58 + v23[11]) = v73;
    *(v58 + v23[12]) = v72;
    v93 = (v58 + v23[19]);
    v94 = v137;
    *v93 = v138;
    v93[1] = v94;
    v93[2] = v125;
    v93[3] = v64;
    v95 = v121;
    v93[4] = v122;
    v93[5] = v95;
    v93[6] = v65;
    *(v58 + v92) = v127;
    *(v58 + v23[18]) = (v120 == 2) | v120 & 1;
    *(v58 + v23[13]) = v63;
    v58[5] = v124;
    *(v58 + v23[15]) = v135;
    if ((*(v123 + 48))(v145, 1, v133) == 1)
    {
      sub_24A37EF2C(v145, &qword_27EF3F480, &unk_24A4B8C20);
      sub_24A37BE24(v131, v58 + v23[20], &qword_27EF3F480, &unk_24A4B8C20);
    }

    else
    {
      sub_24A37EF2C(v131, &qword_27EF3F480, &unk_24A4B8C20);
      v96 = v23[20];
      sub_24A4954DC(v145, v58 + v96, type metadata accessor for FMFLocation);
      v56(v58 + v96, 0, 1, v133);
    }

    v97 = v132;
    *(v58 + v23[16]) = v136;
    *(v58 + v23[17]) = v139;
    v98 = v141;
    sub_24A4954DC(v58, v141, type metadata accessor for FMFFriend);
    LOBYTE(v147) = 5;
    sub_24A4507E0(v98, &v147);
    sub_24A44A59C(v129, v128);
    v99 = v97[15];
    v100 = v97[16];
    sub_24A37EACC(v97 + 12, v99);
    v101 = swift_allocObject();
    v103 = v142;
    v102 = v143;
    v101[2] = v97;
    v101[3] = v103;
    v101[4] = sub_24A495838;
    v101[5] = v102;
    v104 = *(v100 + 64);
    refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

    v104(v130, sub_24A494E18, v101, refreshed, v99, v100);

    sub_24A489C74(v141, type metadata accessor for FMFFriend);
  }
}

uint64_t sub_24A48CD48(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void, __n128), uint64_t a6)
{
  v147 = a1;
  v11 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v11 - 8);
  v138 = &v113 - v12;
  v13 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v113 - v14;
  v16 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v149 = &v113 - v20;
  v21 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v21 - 8);
  v141 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v140 = &v113 - v24;
  v25 = type metadata accessor for FMFFriend(0);
  v139 = *(v25 - 1);
  MEMORY[0x28223BE20](v25);
  v137 = (&v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v29 = (&v113 - v28);
  MEMORY[0x28223BE20](v30);
  v146 = &v113 - v31;
  v32 = swift_allocObject();
  v32[2] = a3;
  v32[3] = a4;
  v144 = a5;
  v32[4] = a5;
  v32[5] = a6;
  v148 = v32;
  v33 = qword_27EF3EBF8;
  v142 = a3;

  v143 = a4;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = sub_24A4AB630();
  sub_24A378E18(v34, qword_27EF4E260);

  v35 = sub_24A4AB600();
  v36 = sub_24A4ABCE0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v136 = v29;
    v145 = v15;
    v38 = v37;
    v134 = swift_slowAlloc();
    v151 = v134;
    *v38 = 136315138;
    v150 = *a2;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v39 = sub_24A4AB870();
    v41 = a2;
    v42 = sub_24A37BD58(v39, v40, &v151);

    *(v38 + 4) = v42;
    a2 = v41;
    _os_log_impl(&dword_24A376000, v35, v36, "%s: stop sharing action initiated", v38, 0xCu);
    v43 = v134;
    sub_24A37EEE0(v134);
    MEMORY[0x24C219130](v43, -1, -1);
    v44 = v38;
    v15 = v145;
    v29 = v136;
    MEMORY[0x24C219130](v44, -1, -1);
  }

  if (*(a2[17] + 40) == 1)
  {
    v45 = sub_24A4AB600();
    v46 = sub_24A4ABCC0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_24A376000, v45, v46, "Action is restricted. Returning with error", v47, 2u);
      MEMORY[0x24C219130](v47, -1, -1);
    }

    LOBYTE(v151) = 0;
    sub_24A489940();
    v48 = swift_allocError();
    *v49 = 5;
    *(v49 + 8) = 256;
    sub_24A438AE0(&v151, v48, v142, v143, v144, a6);
  }

  else
  {
    v136 = a2;
    v125 = v147 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend;
    v50 = v140;
    sub_24A495474(v147 + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend, v140, type metadata accessor for FMFFriend);
    v51 = v139;
    (*(v139 + 56))(v50, 0, 1, v25);
    v52 = type metadata accessor for FMFLocation(0);
    v134 = *(v52 - 1);
    v53 = v134 + 7;
    v54 = v134[7];
    v54(v149, 1, 1, v52);
    v55 = v25[21];
    *(v29 + v55) = 7;
    v56 = sub_24A4AAAD0();
    (*(*(v56 - 8) + 56))(v15, 1, 1, v56);
    v144 = v52;
    v124 = v54;
    v54(v18, 1, 1, v52);
    v57 = v141;
    sub_24A37BE24(v50, v141, &qword_27EF3F2D0, &qword_24A4B4F50);
    v58 = (*(v51 + 48))(v57, 1, v25);
    v135 = v18;
    if (v58 == 1)
    {
      sub_24A37EF2C(v57, &qword_27EF3F2D0, &qword_24A4B4F50);
      v59 = 0;
      v131 = 0;
      v133 = 0;
      v142 = 0;
      v143 = 0;
      v60 = 0;
      v140 = 0;
      v141 = 0;
      v129 = 0;
      v128 = 0;
      v127 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0xE000000000000000;
      v66 = MEMORY[0x277D84FA0];
      v67 = v15;
      v68 = 2;
      v139 = 0x7FFFFFFFFFFFFFFFLL;
      v69 = 2;
      v126 = 2;
      v130 = 2;
      v132 = 2;
    }

    else
    {
      sub_24A37EF2C(v18, &qword_27EF3F480, &unk_24A4B8C20);
      sub_24A37EF2C(v15, &qword_27EF3F460, &unk_24A4B53B0);
      v70 = v57;
      v71 = v137;
      sub_24A4954DC(v70, v137, type metadata accessor for FMFFriend);
      v72 = v71[1];
      v121 = *v71;
      v118 = v72;
      v73 = v71[3];
      v120 = v71[2];
      v114 = v73;
      v123 = v71[4];
      sub_24A37B740(v71 + v25[8], v15, &qword_27EF3F460, &unk_24A4B53B0);
      v74 = v25[10];
      v119 = *(v71 + v25[9]);
      v132 = *(v71 + v74);
      v75 = v25[12];
      v130 = *(v71 + v25[11]);
      v126 = *(v71 + v75);
      v76 = v25[18];
      v145 = v15;
      v116 = *(v71 + v76);
      v77 = v25[14];
      v115 = *(v71 + v25[13]);
      v117 = *(v71 + v77);
      v139 = *(v71 + v25[15]);
      sub_24A37B740(v71 + v25[20], v18, &qword_27EF3F480, &unk_24A4B8C20);
      v78 = v71 + v25[19];
      v79 = *v78;
      v60 = *(v78 + 1);
      v80 = *(v78 + 3);
      v141 = *(v78 + 2);
      v142 = v79;
      v140 = v80;
      v81 = *(v78 + 4);
      v82 = *(v78 + 5);
      v83 = *(v78 + 6);
      v84 = v25[17];
      v143 = *(v71 + v25[16]);
      v85 = *(v71 + v84);
      *(v29 + v55) = *(v71 + v25[21]);
      v86 = v85;
      v122 = v53;
      v87 = v71[5];

      v65 = v118;

      v129 = v81;
      v128 = v82;
      v127 = v83;
      sub_24A39AED0(v142, v60, v141, v140, v81, v82, v83);
      v131 = v87;
      v68 = v116;

      v59 = v115;

      v133 = v86;
      v69 = v117;

      sub_24A489C74(v71, type metadata accessor for FMFFriend);
      v67 = v145;
      v66 = v123;
      v62 = v114;
      v63 = v121;
      v61 = v120;
      v64 = v119 & 0xFFFFFFFFFFFFFFFELL;
    }

    v88 = v25[14];
    *v29 = v63;
    v29[1] = v65;
    v29[2] = v61;
    v29[3] = v62;
    v29[4] = v66;
    sub_24A37BE24(v67, v29 + v25[8], &qword_27EF3F460, &unk_24A4B53B0);
    *(v29 + v25[9]) = v64;
    *(v29 + v25[10]) = v132;
    *(v29 + v25[11]) = v130;
    *(v29 + v25[12]) = v126;
    v89 = (v29 + v25[19]);
    v90 = v141;
    *v89 = v142;
    v89[1] = v60;
    v91 = v140;
    v89[2] = v90;
    v89[3] = v91;
    v92 = v128;
    v89[4] = v129;
    v89[5] = v92;
    v89[6] = v127;
    *(v29 + v88) = v69;
    *(v29 + v25[18]) = (v68 == 2) | v68 & 1;
    *(v29 + v25[13]) = v59;
    v29[5] = v131;
    *(v29 + v25[15]) = v139;
    if ((v134[6])(v149, 1, v144) == 1)
    {
      sub_24A37EF2C(v149, &qword_27EF3F480, &unk_24A4B8C20);
      sub_24A37BE24(v135, v29 + v25[20], &qword_27EF3F480, &unk_24A4B8C20);
    }

    else
    {
      sub_24A37EF2C(v135, &qword_27EF3F480, &unk_24A4B8C20);
      v93 = v25[20];
      sub_24A4954DC(v149, v29 + v93, type metadata accessor for FMFLocation);
      v124(v29 + v93, 0, 1, v144);
    }

    v94 = v136;
    v95 = v146;
    *(v29 + v25[16]) = v143;
    *(v29 + v25[17]) = v133;
    sub_24A4954DC(v29, v95, type metadata accessor for FMFFriend);
    LOBYTE(v151) = 3;
    sub_24A4507E0(v95, &v151);
    v96 = sub_24A4AA700();
    v152 = v96;
    v97 = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
    v153 = v97;
    v98 = sub_24A38D3BC(&v151);
    v99 = *(*(v96 - 8) + 104);
    v99(v98, *MEMORY[0x277D08A20], v96);
    v100 = sub_24A4AA6C0();
    sub_24A37EEE0(&v151);
    if (v100)
    {
      v101 = sub_24A475BD8(*(v125 + 32));
      v102 = sub_24A489DD0(v101);

      v103 = sub_24A4ABB70();
      v104 = v138;
      (*(*(v103 - 8) + 56))(v138, 1, 1, v103);
      v105 = swift_allocObject();
      v105[2] = 0;
      v105[3] = 0;
      v105[4] = v102;
      v105[5] = v94;
      v106 = v148;
      v105[6] = v147;
      v105[7] = sub_24A495838;
      v105[8] = v106;

      v107 = &unk_24A4BC5B0;
    }

    else
    {
      v152 = v96;
      v153 = v97;
      v108 = sub_24A38D3BC(&v151);
      v99(v108, *MEMORY[0x277D089F8], v96);
      v109 = sub_24A4AA6C0();
      sub_24A37EEE0(&v151);
      if ((v109 & 1) == 0)
      {
        sub_24A489C74(v95, type metadata accessor for FMFFriend);
      }

      v110 = sub_24A4ABB70();
      v104 = v138;
      (*(*(v110 - 8) + 56))(v138, 1, 1, v110);
      v105 = swift_allocObject();
      v105[2] = 0;
      v105[3] = 0;
      v111 = v148;
      v105[4] = v147;
      v105[5] = v94;
      v105[6] = sub_24A495838;
      v105[7] = v111;

      v107 = &unk_24A4BC5A8;
    }

    sub_24A432370(0, 0, v104, v107, v105);

    sub_24A489C74(v95, type metadata accessor for FMFFriend);
  }
}

uint64_t sub_24A48DBE0(uint64_t a1, char *a2, char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v12 - 8);
  v265 = &v244 - v13;
  v278 = type metadata accessor for FMFIntermediateFriend(0);
  v273 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v266 = &v244 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v15 - 8);
  v284 = &v244 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v244 - v18;
  v20 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v20 - 8);
  v268 = &v244 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v272 = &v244 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v244 - v25;
  MEMORY[0x28223BE20](v27);
  v274 = &v244 - v28;
  v29 = sub_24A3C9CEC(&qword_27EF3F2E0, &qword_24A4BACE0);
  MEMORY[0x28223BE20](v29 - 8);
  v264 = (&v244 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v280 = &v244 - v32;
  v33 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v33 - 8);
  v262 = &v244 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v260 = &v244 - v36;
  MEMORY[0x28223BE20](v37);
  v261 = &v244 - v38;
  MEMORY[0x28223BE20](v39);
  v269 = &v244 - v40;
  v41 = type metadata accessor for FMFFriend(0);
  v292 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v276 = &v244 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v259 = &v244 - v44;
  MEMORY[0x28223BE20](v45);
  v263 = (&v244 - v46);
  MEMORY[0x28223BE20](v47);
  v258 = (&v244 - v48);
  MEMORY[0x28223BE20](v49);
  v281 = &v244 - v50;
  MEMORY[0x28223BE20](v51);
  v283 = &v244 - v52;
  MEMORY[0x28223BE20](v53);
  v293 = &v244 - v54;
  MEMORY[0x28223BE20](v55);
  v282 = &v244 - v56;
  v275 = v57;
  MEMORY[0x28223BE20](v58);
  v286 = (&v244 - v59);
  v60 = swift_allocObject();
  *(v60 + 16) = a3;
  *(v60 + 24) = a4;
  v290 = a5;
  *(v60 + 32) = a5;
  *(v60 + 40) = a6;
  v61 = qword_27EF3EBF8;
  v288 = a3;

  v289 = a4;

  v291 = a6;

  if (v61 != -1)
  {
LABEL_74:
    swift_once();
  }

  v62 = sub_24A4AB630();
  v63 = sub_24A378E18(v62, qword_27EF4E260);

  v287 = v63;
  v64 = sub_24A4AB600();
  v65 = sub_24A4ABCE0();

  v66 = os_log_type_enabled(v64, v65);
  v285 = v41;
  v271 = v26;
  v270 = v19;
  v67 = a2;
  if (v66)
  {
    v68 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v294[0] = v26;
    *v68 = 136315394;
    v295 = *a2;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v69 = sub_24A4AB870();
    v19 = sub_24A37BD58(v69, v70, v294);

    *(v68 + 4) = v19;
    *(v68 + 12) = 2080;
    *(v68 + 14) = sub_24A37BD58(*(a1 + 24), *(a1 + 32), v294);
    _os_log_impl(&dword_24A376000, v64, v65, "%s: respond to invite action initiated for friend ID: %s", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v26, -1, -1);
    MEMORY[0x24C219130](v68, -1, -1);
  }

  a2 = v293;
  if (*(*(v67 + 17) + 40) == 1)
  {
    v71 = sub_24A4AB600();
    v72 = sub_24A4ABCC0();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_24A376000, v71, v72, "Action is restricted. Returning with error", v73, 2u);
      MEMORY[0x24C219130](v73, -1, -1);
    }

    LOBYTE(v294[0]) = 0;
    sub_24A489940();
    v74 = swift_allocError();
    *v75 = 5;
    *(v75 + 8) = 256;
    sub_24A438AE0(v294, v74, v288, v289, v290, v291);
  }

  else
  {
    v267 = v60;
    v76 = *(v67 + 6);
    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    v257 = v76;
    sub_24A4ABD70();
    v256 = 0;
    v41 = v294[0];
    v279 = *(v294[0] + 16);
    if (v279)
    {
      v60 = 0;
      while (1)
      {
        if (v60 >= *(v41 + 16))
        {
          __break(1u);
          goto LABEL_74;
        }

        v277 = *(v292 + 80);
        sub_24A495474(v41 + ((v277 + 32) & ~v277) + *(v292 + 72) * v60, a2, type metadata accessor for FMFFriend);
        v77 = *(a2 + 1);
        v294[0] = *a2;
        v294[1] = v77;
        v78 = *(a1 + 24);
        v26 = *(a1 + 32);
        v295 = v78;
        v296 = v26;
        sub_24A3A1434();
        if (sub_24A4ABE60())
        {

          goto LABEL_24;
        }

        v79 = a1;
        v19 = v67;
        v80 = *(a2 + 4);
        if (*(v80 + 16))
        {
          sub_24A4AC360();
          sub_24A4AB8F0();
          v81 = sub_24A4AC3A0();
          v82 = -1 << *(v80 + 32);
          v83 = v81 & ~v82;
          if ((*(v80 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
          {
            break;
          }
        }

LABEL_10:
        ++v60;
        a2 = v293;
        sub_24A489C74(v293, type metadata accessor for FMFFriend);
        v67 = v19;
        a1 = v79;
        if (v60 == v279)
        {
          goto LABEL_29;
        }
      }

      v84 = ~v82;
      while (1)
      {
        v85 = (*(v80 + 48) + 16 * v83);
        v86 = *v85 == v78 && v85[1] == v26;
        if (v86 || (sub_24A4AC270() & 1) != 0)
        {
          break;
        }

        v83 = (v83 + 1) & v84;
        if (((*(v80 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v67 = v19;
      a1 = v79;
      a2 = v293;
LABEL_24:
      v87 = v282;
      sub_24A4954DC(a2, v282, type metadata accessor for FMFFriend);
      v88 = v286;
      sub_24A4954DC(v87, v286, type metadata accessor for FMFFriend);
      v89 = v285;
      v90 = v284;
      v91 = v292;
      if ((*(v88 + v285[9]) & 0xA) != 0)
      {
        LODWORD(v291) = *(a1 + 40);
        v255 = a1;
        if (v291 == 1)
        {
          v92 = v269;
          sub_24A495474(v88, v269, type metadata accessor for FMFFriend);
          (*(v91 + 56))(v92, 0, 1, v89);
          (*(v273 + 56))(v280, 1, 1, v278);
          v93 = type metadata accessor for FMFLocation(0);
          v260 = *(v93 - 8);
          v94 = v260 + 56;
          v95 = *(v260 + 56);
          v95(v274, 1, 1, v93);
          v96 = v89[21];
          v281[v96] = 7;
          v97 = sub_24A4AAAD0();
          v98 = v270;
          (*(*(v97 - 8) + 56))(v270, 1, 1, v97);
          v99 = v91;
          v100 = v271;
          v262 = v93;
          v247 = v94;
          v246 = v95;
          v95(v271, 1, 1, v93);
          v101 = v261;
          sub_24A37B740(v92, v261, &qword_27EF3F2D0, &qword_24A4B4F50);
          if ((*(v99 + 48))(v101, 1, v89) == 1)
          {
            sub_24A37EF2C(v101, &qword_27EF3F2D0, &qword_24A4B4F50);
            LODWORD(v261) = 0;
            v248 = 0;
            v102 = 0;
            v292 = 0;
            v293 = 0;
            v279 = 0;
            v254 = 0;
            v253 = 0;
            v252 = 0;
            v251 = 0;
            v263 = 0;
            v250 = 0;
            v268 = 0;
            v289 = 0;
            v272 = 0;
            v290 = 0xE000000000000000;
            v288 = MEMORY[0x277D84FA0];
            LODWORD(v284) = 2;
            v259 = 0x7FFFFFFFFFFFFFFFLL;
            v103 = 1;
            LODWORD(v282) = 2;
            LODWORD(v287) = 2;
            v249 = 2;
          }

          else
          {
            sub_24A37EF2C(v100, &qword_27EF3F480, &unk_24A4B8C20);
            sub_24A37EF2C(v98, &qword_27EF3F460, &unk_24A4B53B0);
            v138 = v258;
            sub_24A4954DC(v101, v258, type metadata accessor for FMFFriend);
            v139 = v138[1];
            v272 = *v138;
            v290 = v139;
            v140 = v138[3];
            v268 = v138[2];
            v289 = v140;
            v288 = v138[4];
            sub_24A37B740(v138 + v89[8], v98, &qword_27EF3F460, &unk_24A4B53B0);
            v141 = v89[10];
            v245 = *(v138 + v89[9]);
            v249 = *(v138 + v141);
            v142 = v89[12];
            LODWORD(v287) = *(v138 + v89[11]);
            LODWORD(v282) = *(v138 + v142);
            v248 = *(v138 + v89[18]);
            v143 = v89[14];
            LODWORD(v261) = *(v138 + v89[13]);
            LODWORD(v284) = *(v138 + v143);
            v259 = *(v138 + v89[15]);
            sub_24A37B740(v138 + v89[20], v100, &qword_27EF3F480, &unk_24A4B8C20);
            v144 = (v138 + v89[19]);
            v145 = v144[1];
            v279 = *v144;
            v146 = v144[2];
            v147 = v144[3];
            v148 = v96;
            v149 = v144[4];
            v263 = v144[5];
            v150 = v144[6];
            v151 = *(v138 + v89[16]);
            v152 = *(v138 + v89[17]);
            v281[v148] = *(v138 + v89[21]);
            v153 = v152;
            v154 = v138[5];

            v254 = v145;
            v253 = v146;
            v252 = v147;
            v251 = v149;
            v250 = v150;
            sub_24A39AED0(v279, v145, v146, v147, v149, v263, v150);
            v102 = v154;

            v292 = v151;

            v293 = v153;

            sub_24A489C74(v138, type metadata accessor for FMFFriend);
            v103 = v245 | 1;
          }

          v155 = v277;
          v156 = v266;
          v157 = v280;
          v158 = v264;
          sub_24A37B740(v280, v264, &qword_27EF3F2E0, &qword_24A4BACE0);
          v159 = v278;
          if ((*(v273 + 48))(v158, 1, v278) == 1)
          {
            sub_24A37EF2C(v157, &qword_27EF3F2E0, &qword_24A4BACE0);
            sub_24A37EF2C(v269, &qword_27EF3F2D0, &qword_24A4B4F50);
            sub_24A37EF2C(v158, &qword_27EF3F2E0, &qword_24A4BACE0);
            v160 = v270;
          }

          else
          {

            sub_24A4954DC(v158, v156, type metadata accessor for FMFIntermediateFriend);
            if (v287 == 2 || (v287 & 1) == 0)
            {
              v185 = *(v156 + v159[14]);
            }

            else
            {
              v185 = 1;
            }

            if (v282 == 2 || (v282 & 1) == 0)
            {
              v191 = *(v156 + v159[15]);
            }

            else
            {
              v191 = 1;
            }

            v290 = v156[1];
            v192 = v156[3];
            if (v284 == 2 || (v284 & 1) == 0)
            {
              v193 = *(v156 + v159[16]);
            }

            else
            {
              v193 = 1;
            }

            v194 = *v156;
            v195 = v156[2];
            v196 = *(v156 + v159[17]);
            v197 = v156[9];
            LODWORD(v284) = v193 & 1;
            v289 = v192;
            LODWORD(v282) = v191 & 1;
            v272 = v194;
            v268 = v195;
            LODWORD(v287) = v185 & 1;
            if (v197)
            {
              v198 = v156[8];
              sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_24A4B4E10;
              *(inited + 32) = v198;
              v159 = v278;
              *(inited + 40) = v197;
              v102 = v196;

              v288 = sub_24A48A0F4(inited, v288);
              swift_setDeallocating();
              v156 = v266;
              sub_24A406964(inited + 32);
            }

            else
            {
              v200 = v156[4];
              v102 = v196;

              if (v200)
              {

                v201 = sub_24A3999E0(v200);

                v288 = sub_24A399BC8(v201, v288);
              }
            }

            v160 = v270;
            sub_24A37EF2C(v270, &qword_27EF3F460, &unk_24A4B53B0);
            sub_24A37EF2C(v280, &qword_27EF3F2E0, &qword_24A4BACE0);
            sub_24A37EF2C(v269, &qword_27EF3F2D0, &qword_24A4B4F50);
            sub_24A37B740(v156 + v159[12], v160, &qword_27EF3F460, &unk_24A4B53B0);
            sub_24A489C74(v156, type metadata accessor for FMFIntermediateFriend);
          }

          v89 = v285;
          v202 = v285[14];
          v203 = v281;
          v204 = v290;
          *v281 = v272;
          v203[1] = v204;
          v205 = v289;
          v203[2] = v268;
          v203[3] = v205;
          v203[4] = v288;
          sub_24A37BE24(v160, v203 + v89[8], &qword_27EF3F460, &unk_24A4B53B0);
          *(v203 + v89[9]) = v103;
          *(v203 + v89[10]) = v249;
          *(v203 + v89[11]) = v287;
          *(v203 + v89[12]) = v282;
          v206 = (v203 + v89[19]);
          v207 = v254;
          *v206 = v279;
          v206[1] = v207;
          v208 = v252;
          v206[2] = v253;
          v206[3] = v208;
          v209 = v263;
          v206[4] = v251;
          v206[5] = v209;
          v206[6] = v250;
          *(v203 + v202) = v284;
          *(v203 + v89[18]) = v248;
          *(v203 + v89[13]) = v261;
          v203[5] = v102;
          *(v203 + v89[15]) = v259;
          v210 = v274;
          if ((*(v260 + 48))(v274, 1, v262) == 1)
          {
            sub_24A37EF2C(v210, &qword_27EF3F480, &unk_24A4B8C20);
            sub_24A37BE24(v271, v203 + v89[20], &qword_27EF3F480, &unk_24A4B8C20);
          }

          else
          {
            sub_24A37EF2C(v271, &qword_27EF3F480, &unk_24A4B8C20);
            v211 = v89[20];
            sub_24A4954DC(v210, v203 + v211, type metadata accessor for FMFLocation);
            v246(v203 + v211, 0, 1, v262);
          }

          v188 = v203;
          v88 = v286;
          v189 = v255;
          v190 = v283;
        }

        else
        {
          v118 = v260;
          sub_24A495474(v88, v260, type metadata accessor for FMFFriend);
          (*(v91 + 56))(v118, 0, 1, v89);
          v119 = type metadata accessor for FMFLocation(0);
          v281 = *(v119 - 8);
          v120 = (v281 + 56);
          v121 = *(v281 + 7);
          v121(v272, 1, 1, v119);
          v122 = v91;
          v123 = v263;
          v273 = v89[21];
          *(v263 + v273) = 7;
          v124 = sub_24A4AAAD0();
          (*(*(v124 - 8) + 56))(v90, 1, 1, v124);
          v125 = v268;
          v282 = v119;
          v264 = v121;
          v261 = v120;
          v121(v268, 1, 1, v119);
          v126 = v118;
          v127 = v262;
          sub_24A37BE24(v126, v262, &qword_27EF3F2D0, &qword_24A4B4F50);
          v128 = (*(v122 + 48))(v127, 1, v89);
          if (v128 == 1)
          {
            v129 = v90;
            sub_24A37EF2C(v127, &qword_27EF3F2D0, &qword_24A4B4F50);
            LODWORD(v266) = 0;
            v273 = 0;
            v292 = 0;
            v293 = 0;
            v290 = 0;
            v289 = 0;
            v288 = 0;
            v287 = 0;
            v270 = 0;
            v269 = 0;
            v130 = 0;
            v131 = 0;
            v132 = 0;
            v133 = 0;
            v134 = 0;
            v135 = 0xE000000000000000;
            v136 = MEMORY[0x277D84FA0];
            v137 = 2;
            v280 = 0x7FFFFFFFFFFFFFFFLL;
            LODWORD(v279) = 2;
            LODWORD(v274) = 2;
            LODWORD(v271) = 2;
            LODWORD(v278) = 2;
          }

          else
          {
            sub_24A37EF2C(v125, &qword_27EF3F480, &unk_24A4B8C20);
            sub_24A37EF2C(v284, &qword_27EF3F460, &unk_24A4B53B0);
            v161 = v259;
            sub_24A4954DC(v127, v259, type metadata accessor for FMFFriend);
            v162 = v161[1];
            v260 = *v161;
            v253 = v162;
            v163 = v161[3];
            v258 = v161[2];
            v251 = v163;
            v262 = v161[4];
            sub_24A37B740(v161 + v89[8], v284, &qword_27EF3F460, &unk_24A4B53B0);
            v164 = v89[10];
            v254 = *(v161 + v89[9]);
            LODWORD(v278) = *(v161 + v164);
            v165 = v89[12];
            LODWORD(v271) = *(v161 + v89[11]);
            LODWORD(v274) = *(v161 + v165);
            LODWORD(v252) = *(v161 + v89[18]);
            v166 = v89[14];
            LODWORD(v266) = *(v161 + v89[13]);
            LODWORD(v279) = *(v161 + v166);
            v280 = *(v161 + v89[15]);
            sub_24A37B740(v161 + v89[20], v125, &qword_27EF3F480, &unk_24A4B8C20);
            v167 = v161 + v89[19];
            v168 = *(v167 + 1);
            v290 = *v167;
            v289 = v168;
            v169 = *(v167 + 3);
            v288 = *(v167 + 2);
            v287 = v169;
            v170 = *(v167 + 4);
            v171 = *(v167 + 5);
            v172 = *(v167 + 6);
            v173 = *(v161 + v89[16]);
            v293 = *(v161 + v89[17]);
            *(v123 + v273) = *(v161 + v89[21]);
            v174 = v161[5];

            v175 = v253;

            v270 = v170;
            v269 = v171;
            v176 = v171;
            v130 = v172;
            sub_24A39AED0(v290, v289, v288, v287, v170, v176, v172);
            v273 = v174;
            v137 = v252;

            v292 = v173;

            v177 = v161;
            v129 = v284;
            sub_24A489C74(v177, type metadata accessor for FMFFriend);
            v136 = v262;
            v135 = v175;
            v132 = v251;
            v133 = v260;
            v131 = v258;
            v134 = v254 & 0xFFFFFFFFFFFFFFF7;
          }

          v178 = v89[14];
          *v123 = v133;
          v123[1] = v135;
          v123[2] = v131;
          v123[3] = v132;
          v123[4] = v136;
          sub_24A37BE24(v129, v123 + v89[8], &qword_27EF3F460, &unk_24A4B53B0);
          *(v123 + v89[9]) = v134;
          *(v123 + v89[10]) = v278;
          *(v123 + v89[11]) = v271;
          *(v123 + v89[12]) = v274;
          v179 = (v123 + v89[19]);
          v180 = v289;
          *v179 = v290;
          v179[1] = v180;
          v181 = v287;
          v179[2] = v288;
          v179[3] = v181;
          v182 = v269;
          v179[4] = v270;
          v179[5] = v182;
          v179[6] = v130;
          *(v123 + v178) = v279;
          *(v123 + v89[18]) = (v137 == 2) | v137 & 1;
          *(v123 + v89[13]) = v266;
          v123[5] = v273;
          *(v123 + v89[15]) = v280;
          v183 = v272;
          v184 = v282;
          if ((*(v281 + 6))(v272, 1, v282) == 1)
          {
            sub_24A37EF2C(v183, &qword_27EF3F480, &unk_24A4B8C20);
            sub_24A37BE24(v268, v123 + v89[20], &qword_27EF3F480, &unk_24A4B8C20);
          }

          else
          {
            sub_24A37EF2C(v268, &qword_27EF3F480, &unk_24A4B8C20);
            v186 = v285[20];
            sub_24A4954DC(v183, v123 + v186, type metadata accessor for FMFLocation);
            v187 = v123 + v186;
            v89 = v285;
            v264(v187, 0, 1, v184);
          }

          v188 = v123;
          v88 = v286;
          v189 = v255;
          v190 = v283;
          v155 = v277;
        }

        v212 = v291;
        v213 = v293;
        v214 = ~v155;
        *(v188 + v89[16]) = v292;
        *(v188 + v89[17]) = v213;
        sub_24A4954DC(v188, v190, type metadata accessor for FMFFriend);
        LOBYTE(v294[0]) = v212;
        sub_24A4507E0(v190, v294);
        v215 = sub_24A475BD8(v88[4]);
        v216 = sub_24A489DD0(v215);

        v217 = sub_24A4AA700();
        v294[3] = v217;
        v294[4] = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
        v218 = sub_24A38D3BC(v294);
        (*(*(v217 - 8) + 104))(v218, *MEMORY[0x277D08A20], v217);
        LOBYTE(v217) = sub_24A4AA6C0();
        sub_24A37EEE0(v294);
        if (v217)
        {
          v219 = sub_24A4ABB70();
          v220 = v265;
          (*(*(v219 - 8) + 56))(v265, 1, 1, v219);
          v221 = v276;
          sub_24A495474(v88, v276, type metadata accessor for FMFFriend);
          v222 = (v155 + 56) & v214;
          v223 = (v275 + v222 + 7) & 0xFFFFFFFFFFFFFFF8;
          v224 = swift_allocObject();
          v224[2] = 0;
          v224[3] = 0;
          v224[4] = v189;
          v224[5] = v216;
          v224[6] = v67;
          sub_24A4954DC(v221, v224 + v222, type metadata accessor for FMFFriend);
          v225 = (v224 + v223);
          v226 = v267;
          *v225 = sub_24A495838;
          v225[1] = v226;

          sub_24A432370(0, 0, v220, &unk_24A4BC5C0, v224);
        }

        else
        {

          v228 = *v88;
          v227 = v88[1];
          type metadata accessor for FMFRespondToInviteRequest(0);
          v229 = swift_allocObject();
          v230 = (v229 + qword_27EF4E1E8);
          *v230 = v228;
          v230[1] = v227;
          *(v229 + qword_27EF4E1F0) = v212;

          v231 = sub_24A3A45B8(0x6552657469766E69, 0xEE0065736E6F7073);
          v232 = v155;
          v233 = *(v67 + 15);
          v234 = *(v67 + 16);
          sub_24A37EACC(v67 + 12, v233);
          v235 = v276;
          sub_24A495474(v88, v276, type metadata accessor for FMFFriend);
          v236 = (v232 + 24) & v214;
          v237 = (v275 + v236 + 7) & 0xFFFFFFFFFFFFFFF8;
          v238 = swift_allocObject();
          *(v238 + 16) = v67;
          sub_24A4954DC(v235, v238 + v236, type metadata accessor for FMFFriend);
          v239 = (v238 + v237);
          v240 = v267;
          *v239 = sub_24A495838;
          v239[1] = v240;
          v241 = *(v234 + 64);
          refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

          v241(v231, sub_24A494EB4, v238, refreshed, v233, v234);

          v88 = v286;
        }

        sub_24A489C74(v283, type metadata accessor for FMFFriend);
      }

      else
      {
        v113 = sub_24A4AB600();
        v114 = sub_24A4ABCE0();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          _os_log_impl(&dword_24A376000, v113, v114, "%%@: Cannot respond to invite from someone who has not sent the invite", v115, 2u);
          MEMORY[0x24C219130](v115, -1, -1);
        }

        LOBYTE(v294[0]) = 0;
        sub_24A489940();
        v116 = swift_allocError();
        *v117 = 1;
        *(v117 + 8) = 256;
        sub_24A438AE0(v294, v116, v288, v289, v290, v291);
      }

      sub_24A489C74(v88, type metadata accessor for FMFFriend);
    }

    else
    {
LABEL_29:

      v104 = sub_24A4AB600();
      v105 = sub_24A4ABCC0();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v294[0] = v107;
        *v106 = 136315138;
        v295 = *v67;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v108 = sub_24A4AB870();
        v110 = sub_24A37BD58(v108, v109, v294);

        *(v106 + 4) = v110;
        _os_log_impl(&dword_24A376000, v104, v105, "%s: Friend not present right now. Action may be triggered from notification", v106, 0xCu);
        sub_24A37EEE0(v107);
        MEMORY[0x24C219130](v107, -1, -1);
        MEMORY[0x24C219130](v106, -1, -1);
      }

      LOBYTE(v294[0]) = 0;
      sub_24A489940();
      v111 = swift_allocError();
      *v112 = 1;
      *(v112 + 8) = 256;
      sub_24A438AE0(v294, v111, v288, v289, v290, v291);
    }
  }
}

uint64_t sub_24A48FF48(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = qword_27EF3EBF8;
  v90 = a3;

  v89 = a4;

  v88 = a6;

  if (v13 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v14 = sub_24A4AB630();
    sub_24A378E18(v14, qword_27EF4E260);

    v15 = sub_24A4AB600();
    v16 = sub_24A4ABCE0();

    v91 = a2;
    if (os_log_type_enabled(v15, v16))
    {
      v87 = a5;
      v17 = a1;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v94 = v19;
      *v18 = 136315138;
      v98 = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v20 = sub_24A4AB870();
      v22 = sub_24A37BD58(v20, v21, &v94);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_24A376000, v15, v16, "%s: set favorite action initiated", v18, 0xCu);
      sub_24A37EEE0(v19);
      MEMORY[0x24C219130](v19, -1, -1);
      v23 = v18;
      a1 = v17;
      a5 = v87;
      MEMORY[0x24C219130](v23, -1, -1);
    }

    v24 = (a1 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_friend);
    if ((*(v24 + *(type metadata accessor for FMFFriend(0) + 36)) & 2) == 0)
    {

      v25 = sub_24A4AB600();
      v26 = sub_24A4ABCE0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v94 = v28;
        *v27 = 136315138;
        v98 = *a2;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v29 = sub_24A4AB870();
        v31 = sub_24A37BD58(v29, v30, &v94);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_24A376000, v25, v26, "%s: SaveFavorites: Error saving favorite. Friend needs to be sharing location with me.", v27, 0xCu);
        sub_24A37EEE0(v28);
        MEMORY[0x24C219130](v28, -1, -1);
        MEMORY[0x24C219130](v27, -1, -1);
      }

      LOBYTE(v94) = 0;
      sub_24A489940();
      v32 = swift_allocError();
      *v33 = 1;
      *(v33 + 8) = 256;
      sub_24A438AE0(&v94, v32, v90, v89, a5, v88);
    }

    sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
    sub_24A4ABD70();
    v34 = v96;
    v86 = v12;
    if (v96)
    {
      v35 = v97;
      v36 = v94;
      v37 = v95;

      sub_24A37F110(v36, v37, v34, v35);
      if (v35)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_24A37F110(v94, v95, 0, v97);
    }

    v35 = MEMORY[0x277D84F90];
LABEL_13:
    v98 = v35;
    sub_24A4767C0(&v98);
    v38 = *(v98 + 2);
    v92 = a1;
    v85 = v24;
    if (v38)
    {
      v39 = *v24;
      v40 = v24[1];
      v41 = a1 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_order;
      v42 = v98 + 40;
      v43 = MEMORY[0x277D84F90];
      do
      {
        a1 = *(v42 - 1);
        v45 = *v42;
        v46 = v39 == a1 && v40 == v45;
        if (!v46 && (sub_24A4AC270() & 1) == 0 || (*(v41 + 8) & 1) == 0)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_24A3ED900(0, *(v43 + 2) + 1, 1, v43);
          }

          v48 = *(v43 + 2);
          v47 = *(v43 + 3);
          if (v48 >= v47 >> 1)
          {
            v43 = sub_24A3ED900((v47 > 1), v48 + 1, 1, v43);
          }

          *(v43 + 2) = v48 + 1;
          v44 = &v43[16 * v48];
          *(v44 + 4) = a1;
          *(v44 + 5) = v45;
        }

        v42 += 24;
        --v38;
      }

      while (v38);
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
    }

    if ((*(v92 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_order + 8) & 1) == 0)
    {
      a1 = *(v92 + OBJC_IVAR____TtC7FMFCore20FMFSetFavoriteAction_order);
      v49 = *(v43 + 2);
      v51 = *v85;
      v50 = v85[1];
      if (a1 >= v49)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if ((a1 & 0x8000000000000000) == 0)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v49 >= *(v43 + 3) >> 1)
          {
            v43 = sub_24A3ED900(isUniquelyReferenced_nonNull_native, v49 + 1, 1, v43);
          }

          sub_24A4542A4(a1, a1, 1, v51, v50);

          goto LABEL_39;
        }

        __break(1u);
LABEL_69:
        v43 = sub_24A3ED900(0, v49 + 1, 1, v43);
      }

      v54 = *(v43 + 2);
      v53 = *(v43 + 3);
      if (v54 >= v53 >> 1)
      {
        v43 = sub_24A3ED900((v53 > 1), v54 + 1, 1, v43);
      }

      *(v43 + 2) = v54 + 1;
      v55 = &v43[16 * v54];
      *(v55 + 4) = v51;
      *(v55 + 5) = v50;
    }

LABEL_39:
    v93 = *(v43 + 2);
    if (!v93)
    {
      break;
    }

    a5 = 0;
    v12 = (v43 + 40);
    v56 = MEMORY[0x277D84F90];
    a2 = MEMORY[0x277D84F98];
    while (a5 < *(v43 + 2))
    {
      v57 = *(v12 - 1);
      a1 = *v12;

      v58 = swift_isUniquelyReferenced_nonNull_native();
      v94 = a2;
      v59 = sub_24A39B2C8(v57, a1);
      v61 = a2[2];
      v62 = (v60 & 1) == 0;
      v63 = __OFADD__(v61, v62);
      v64 = v61 + v62;
      if (v63)
      {
        goto LABEL_65;
      }

      v65 = v60;
      if (a2[3] < v64)
      {
        sub_24A4A5814(v64, v58);
        v59 = sub_24A39B2C8(v57, a1);
        if ((v65 & 1) != (v66 & 1))
        {

          result = sub_24A4AC2B0();
          __break(1u);
          return result;
        }

LABEL_47:
        a2 = v94;
        if (v65)
        {
          goto LABEL_48;
        }

        goto LABEL_50;
      }

      if (v58)
      {
        goto LABEL_47;
      }

      v67 = v59;
      sub_24A4A9034();
      v59 = v67;
      a2 = v94;
      if (v65)
      {
LABEL_48:
        *(a2[7] + 8 * v59) = a5;
        goto LABEL_52;
      }

LABEL_50:
      a2[(v59 >> 6) + 8] |= 1 << v59;
      v68 = (a2[6] + 16 * v59);
      *v68 = v57;
      v68[1] = a1;
      *(a2[7] + 8 * v59) = a5;
      v69 = a2[2];
      v63 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (v63)
      {
        goto LABEL_66;
      }

      a2[2] = v70;

LABEL_52:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_24A3EDEF0(0, *(v56 + 2) + 1, 1, v56);
      }

      v72 = *(v56 + 2);
      v71 = *(v56 + 3);
      if (v72 >= v71 >> 1)
      {
        v56 = sub_24A3EDEF0((v71 > 1), v72 + 1, 1, v56);
      }

      *(v56 + 2) = v72 + 1;
      v73 = &v56[24 * v72];
      *(v73 + 5) = a1;
      *(v73 + 6) = a5;
      *(v73 + 4) = v57;
      v12 += 2;
      if (v93 == ++a5)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  a2 = MEMORY[0x277D84F98];
  v56 = MEMORY[0x277D84F90];
LABEL_59:

  sub_24A4ABD70();
  v74 = v96;
  if (v96)
  {
    v75 = v97;
    v77 = v94;
    v76 = v95;

    sub_24A37F110(v77, v76, v74, v75);
    v94 = v77 & 0xFF010101;
    v95 = v76;
    v96 = v74;
    v97 = v56;
    sub_24A452308(&v94, 0);
    sub_24A37F110(v94, v95, v96, v97);
  }

  else
  {
  }

  type metadata accessor for FMFSaveFavoritesRequest(0);
  *(swift_allocObject() + qword_27EF4DFD0) = a2;
  v78 = sub_24A3A45B8(0x6F76614665766173, 0xED00007365746972);
  v79 = v91[15];
  v80 = v91[16];
  sub_24A37EACC(v91 + 12, v79);
  v81 = swift_allocObject();
  v81[2] = v91;
  v81[3] = sub_24A495838;
  v81[4] = v86;
  v82 = *(v80 + 64);
  refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

  v82(v78, sub_24A4950BC, v81, refreshed, v79, v80);
}

uint64_t sub_24A490970(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void, __n128), uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v71 = a5;
  v12[4] = a5;
  v12[5] = a6;
  v73 = v12;
  v13 = qword_27EF3EBF8;
  v69 = a3;

  v70 = a4;

  v72 = a6;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_24A4AB630();
  sub_24A378E18(v14, qword_27EF4E260);

  v15 = sub_24A4AB600();
  v16 = sub_24A4ABCE0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v75 = v18;
    *v17 = 136315138;
    v74[0] = *a2;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v19 = sub_24A4AB870();
    v21 = sub_24A37BD58(v19, v20, &v75);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_24A376000, v15, v16, "%s: updating prefs action initiated", v17, 0xCu);
    sub_24A37EEE0(v18);
    MEMORY[0x24C219130](v18, -1, -1);
    MEMORY[0x24C219130](v17, -1, -1);
  }

  sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
  sub_24A4ABD70();
  v22 = v77;
  if (!v77)
  {

    v33 = sub_24A4AB600();
    v34 = sub_24A4ABCE0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v75 = v36;
      *v35 = 136315138;
      v74[0] = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v41 = sub_24A4AB870();
      v43 = sub_24A37BD58(v41, v42, &v75);

      *(v35 + 4) = v43;
      v40 = "%s: Existing prefs not avaiable. Operation can be completed only if prefs exist in store.";
      goto LABEL_11;
    }

LABEL_12:

    LOBYTE(v75) = 0;
    sub_24A489940();
    v44 = swift_allocError();
    *v45 = 2;
    *(v45 + 8) = 256;
    sub_24A438AE0(&v75, v44, v69, v70, v71, v72);
  }

  v23 = v78;
  v25 = v75;
  v24 = v76;
  v26 = v75 >> 24;
  LOWORD(v75) = v75 & 0x101;
  BYTE2(v75) = BYTE2(v25) & 1;
  BYTE3(v75) = v26;
  v27 = *(a1 + 25);
  v28 = *(a1 + 26);
  v29 = *(a1 + 27);
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  v32 = *(a1 + 48);
  LOBYTE(v74[0]) = *(a1 + 24);
  BYTE1(v74[0]) = v27;
  BYTE2(v74[0]) = v28;
  BYTE3(v74[0]) = v29;
  v74[1] = v30;
  v74[2] = v31;
  v74[3] = v32;

  LOBYTE(v31) = _s7FMFCore14FMFPreferencesV2eeoiySbAC_ACtFZ_0(&v75, v74);

  sub_24A37F110(v25, v24, v22, v23);
  if (v31)
  {

    v33 = sub_24A4AB600();
    v34 = sub_24A4ABCE0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v75 = v36;
      *v35 = 136315138;
      v74[0] = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v37 = sub_24A4AB870();
      v39 = sub_24A37BD58(v37, v38, &v75);

      *(v35 + 4) = v39;
      v40 = "%s: Existing prefs match the action prefs. Action is not needed.";
LABEL_11:
      _os_log_impl(&dword_24A376000, v33, v34, v40, v35, 0xCu);
      sub_24A37EEE0(v36);
      MEMORY[0x24C219130](v36, -1, -1);
      MEMORY[0x24C219130](v35, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v47 = *(a1 + 32);
  v46 = *(a1 + 40);
  v48 = *(a1 + 48);
  if (*(a1 + 25))
  {
    v49 = 256;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49 | *(a1 + 24);
  if (*(a1 + 26))
  {
    v51 = 0x10000;
  }

  else
  {
    v51 = 0;
  }

  v52 = v50 | v51 | (*(a1 + 27) << 24);
  type metadata accessor for FMFSavePrefsRequest(0);
  v53 = swift_allocObject();
  *(v53 + qword_27EF3F7C8) = 0;
  v54 = (v53 + qword_27EF3F7C0);
  *v54 = v52;
  v54[1] = v47;
  v54[2] = v46;
  v54[3] = v48;
  v55 = (v53 + qword_27EF3F7D0);
  *v55 = 0;
  v55[1] = 0;

  v56 = sub_24A3A45B8(0x6665725065766173, 0xE900000000000073);
  v57 = *(a1 + 32);
  v58 = *(a1 + 40);
  v59 = *(a1 + 48);
  if (*(a1 + 25))
  {
    v60 = 256;
  }

  else
  {
    v60 = 0;
  }

  v61 = v60 | *(a1 + 24);
  if (*(a1 + 26))
  {
    v62 = 0x10000;
  }

  else
  {
    v62 = 0;
  }

  v75 = v61 | v62 | (*(a1 + 27) << 24);
  v76 = v57;
  v77 = v58;
  v78 = v59;

  sub_24A452308(&v75, 0);
  sub_24A37F110(v75, v76, v77, v78);
  v63 = a2[15];
  v64 = a2[16];
  sub_24A37EACC(a2 + 12, v63);
  v65 = swift_allocObject();
  v65[2] = a2;
  v65[3] = sub_24A495838;
  v65[4] = v73;
  v66 = *(v64 + 64);
  refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

  v66(v56, sub_24A4950EC, v65, refreshed, v63, v64);
}

uint64_t sub_24A491084(void *a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void, __n128), uint64_t a6)
{
  v67 = a1;
  v11 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v11 - 8);
  v65 = &v63 - v12;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v68 = v13;
  v14 = qword_27EF3EBF8;
  v66 = a3;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_24A4AB630();
  sub_24A378E18(v15, qword_27EF4E260);

  v16 = sub_24A4AB600();
  v17 = sub_24A4ABCE0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v64 = a6;
    v19 = v18;
    v63 = swift_slowAlloc();
    *&v81 = v63;
    *v19 = 136315138;
    *&v78 = *a2;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v20 = sub_24A4AB870();
    v22 = a2;
    v23 = a4;
    v24 = a5;
    v25 = sub_24A37BD58(v20, v21, &v81);

    *(v19 + 4) = v25;
    a5 = v24;
    a4 = v23;
    a2 = v22;
    _os_log_impl(&dword_24A376000, v16, v17, "%s: updating me action initiated", v19, 0xCu);
    v26 = v63;
    sub_24A37EEE0(v63);
    MEMORY[0x24C219130](v26, -1, -1);
    v27 = v19;
    a6 = v64;
    MEMORY[0x24C219130](v27, -1, -1);
  }

  if (*(a2[17] + 40) == 1)
  {
    v28 = sub_24A4AB600();
    v29 = sub_24A4ABCC0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_24A376000, v28, v29, "Action is restricted. Returning with error", v30, 2u);
      MEMORY[0x24C219130](v30, -1, -1);
    }

    LOBYTE(v81) = 0;
    sub_24A489940();
    v31 = swift_allocError();
    *v32 = 5;
    *(v32 + 8) = 256;
    sub_24A438AE0(&v81, v31, v66, a4, a5, a6);
  }

  else
  {
    v33 = a2[6];
    sub_24A3C9CEC(&qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A4ABD70();
    v81 = v78;
    v82 = v79;
    *v83 = *v80;
    *&v83[9] = *&v80[9];
    v34 = v78;
    v66 = v33;
    if (v78)
    {
      LODWORD(v63) = v83[24];
      v35 = *&v83[16];
      v64 = *&v83[8];
      v37 = *(&v81 + 1);
      v36 = v82;
      v39 = v67[3];
      v38 = v67[4];

      sub_24A37EF2C(&v81, &qword_27EF3FD68, &unk_24A4B9F40);
      *&v72 = v34;
      *(&v72 + 1) = v37;
      *&v73 = v36;
      *(&v73 + 1) = v39;
      *&v74[0] = v38;
      *(&v74[0] + 1) = v64;
      *&v74[1] = v35;
      BYTE8(v74[1]) = v63 & 1;
      sub_24A452B2C(&v72, 0);
      v75 = v72;
      v76 = v73;
      v77[0] = v74[0];
      *(v77 + 9) = *(v74 + 9);
      sub_24A37EF2C(&v75, &qword_27EF3FD68, &unk_24A4B9F40);
    }

    v40 = sub_24A4AA700();
    *(&v79 + 1) = v40;
    *v80 = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
    v41 = sub_24A38D3BC(&v78);
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D08A20], v40);
    LOBYTE(v40) = sub_24A4AA6C0();
    sub_24A37EEE0(&v78);
    if (v40)
    {
      v42 = sub_24A4ABB70();
      v43 = v65;
      (*(*(v42 - 8) + 56))(v65, 1, 1, v42);
      v44 = swift_allocObject();
      v44[2] = 0;
      v44[3] = 0;
      v45 = v68;
      v44[4] = v67;
      v44[5] = a2;
      v44[6] = sub_24A495838;
      v44[7] = v45;

      sub_24A432370(0, 0, v43, &unk_24A4BC5D8, v44);
    }

    else
    {
      v47 = v67[3];
      v46 = v67[4];
      type metadata accessor for FMFSavePrefsRequest(0);
      v48 = swift_allocObject();
      *(v48 + qword_27EF3F7C8) = 0;
      v49 = (v48 + qword_27EF3F7C0);
      *v49 = 0u;
      v49[1] = 0u;
      v50 = (v48 + qword_27EF3F7D0);
      *v50 = v47;
      v50[1] = v46;

      v67 = sub_24A3A45B8(0x6665725065766173, 0xE900000000000073);
      sub_24A4ABD70();
      v78 = v75;
      v79 = v76;
      *v80 = v77[0];
      *&v80[9] = *(v77 + 9);
      v51 = v75;
      if (v75)
      {
        v52 = v80[24];
        v54 = *&v80[8];
        v53 = *&v80[16];
        v56 = *(&v78 + 1);
        v55 = v79;

        sub_24A37EF2C(&v78, &qword_27EF3FD68, &unk_24A4B9F40);
        *&v69 = v51;
        *(&v69 + 1) = v56;
        *&v70 = v55;
        *(&v70 + 1) = v47;
        *&v71[0] = v46;
        *(&v71[0] + 1) = v54;
        *&v71[1] = v53;
        BYTE8(v71[1]) = v52 & 1;
        sub_24A452B2C(&v69, 0);
        v72 = v69;
        v73 = v70;
        v74[0] = v71[0];
        *(v74 + 9) = *(v71 + 9);
        sub_24A37EF2C(&v72, &qword_27EF3FD68, &unk_24A4B9F40);
      }

      v57 = a2[15];
      v58 = a2[16];
      sub_24A37EACC(a2 + 12, v57);
      v59 = swift_allocObject();
      v59[2] = a2;
      v59[3] = sub_24A495838;
      v59[4] = v68;
      v60 = *(v58 + 64);
      refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

      v60(v67, sub_24A49511C, v59, refreshed, v57, v58);
    }
  }
}

uint64_t sub_24A491890(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void, __n128), uint64_t a6)
{
  v12 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v16 = qword_27EF3EBF8;
  v58 = a3;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_24A4AB630();
  v18 = sub_24A378E18(v17, qword_27EF4E260);

  v57 = v18;
  v19 = sub_24A4AB600();
  v20 = sub_24A4ABCE0();

  v21 = os_log_type_enabled(v19, v20);
  v56 = a2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v55 = a6;
    v23 = v22;
    v24 = swift_slowAlloc();
    v54 = v14;
    v25 = v24;
    *v23 = 136315138;
    v59 = *a2;
    v60[0] = v24;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v26 = sub_24A4AB870();
    v28 = sub_24A37BD58(v26, v27, v60);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_24A376000, v19, v20, "%s: not now action initiated", v23, 0xCu);
    sub_24A37EEE0(v25);
    v14 = v54;
    MEMORY[0x24C219130](v25, -1, -1);
    v29 = v23;
    a6 = v55;
    MEMORY[0x24C219130](v29, -1, -1);
  }

  v30 = (a1 + OBJC_IVAR____TtC7FMFCore15FMFNotNowAction_friend);
  v31 = type metadata accessor for FMFFriend(0);
  if (*(v30 + *(v31 + 36)) & 2) == 0 || (v32 = *(v30 + *(v31 + 40)), v32 == 2) || (v32)
  {
    v33 = sub_24A4AB600();
    v34 = sub_24A4ABCE0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_24A376000, v33, v34, "%%@: Cannot respond not now when the friend is not sharing location with me.", v35, 2u);
      MEMORY[0x24C219130](v35, -1, -1);
    }

    LOBYTE(v60[0]) = 0;
    sub_24A489940();
    v36 = swift_allocError();
    *v37 = 1;
    *(v37 + 8) = 256;
    sub_24A438AE0(v60, v36, v58, a4, a5, a6);
  }

  else
  {
    v39 = sub_24A4AA700();
    v60[3] = v39;
    v60[4] = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
    v40 = sub_24A38D3BC(v60);
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D08A20], v39);
    LOBYTE(v39) = sub_24A4AA6C0();
    sub_24A37EEE0(v60);
    if (v39)
    {
      v41 = sub_24A4ABB70();
      (*(*(v41 - 8) + 56))(v14, 1, 1, v41);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v42[4] = a1;
      v42[5] = sub_24A495838;
      v42[6] = v15;

      sub_24A432370(0, 0, v14, &unk_24A4BC5E8, v42);
    }

    else
    {
      v44 = *v30;
      v43 = v30[1];
      type metadata accessor for FMFNotNowRequest(0);
      v45 = (swift_allocObject() + qword_27EF4E110);
      *v45 = v44;
      v45[1] = v43;

      v46 = sub_24A3A45B8(0x776F4E746F6ELL, 0xE600000000000000);
      v47 = v56;
      v48 = v56[15];
      v49 = v56[16];
      sub_24A37EACC(v56 + 12, v48);
      v50 = swift_allocObject();
      v50[2] = v47;
      v50[3] = sub_24A495838;
      v50[4] = v15;
      v51 = *(v49 + 64);
      refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

      v51(v46, sub_24A49524C, v50, refreshed, v48, v49);
    }
  }
}

uint64_t sub_24A491E78(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void, __n128), uint64_t a6)
{
  v12 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v12 - 8);
  v178 = &v146 - v13;
  v14 = type metadata accessor for FMFIntermediateFriend(0);
  v187 = *(v14 - 8);
  v188 = v14;
  MEMORY[0x28223BE20](v14);
  v182 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v16 - 8);
  v185 = &v146 - v17;
  v18 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v18 - 8);
  v189 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v186 = &v146 - v21;
  v22 = sub_24A3C9CEC(&qword_27EF3F2E0, &qword_24A4BACE0);
  MEMORY[0x28223BE20](v22 - 8);
  v181 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v193 = (&v146 - v25);
  v26 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v26 - 8);
  v180 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v184 = &v146 - v29;
  v194 = type metadata accessor for FMFFriend(0);
  v179 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v177 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v190 = (&v146 - v32);
  MEMORY[0x28223BE20](v33);
  v35 = &v146 - v34;
  v36 = swift_allocObject();
  v36[2] = a3;
  v36[3] = a4;
  v191 = a5;
  v36[4] = a5;
  v36[5] = a6;
  v37 = qword_27EF3EBF8;

  v192 = a4;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_24A4AB630();
  sub_24A378E18(v38, qword_27EF4E260);

  v39 = sub_24A4AB600();
  v40 = sub_24A4ABCE0();

  v41 = os_log_type_enabled(v39, v40);
  v183 = v35;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v175 = v42;
    v176 = swift_slowAlloc();
    v196[0] = v176;
    *v42 = 136315138;
    v195 = *a2;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v43 = sub_24A4AB870();
    LOBYTE(v42) = v40;
    v45 = a3;
    v46 = v36;
    v47 = sub_24A37BD58(v43, v44, v196);

    v48 = v175;
    *(v175 + 1) = v47;
    v36 = v46;
    a3 = v45;
    v49 = v48;
    _os_log_impl(&dword_24A376000, v39, v42, "%s: ask to follow action initiated", v48, 0xCu);
    v50 = v176;
    sub_24A37EEE0(v176);
    MEMORY[0x24C219130](v50, -1, -1);
    MEMORY[0x24C219130](v49, -1, -1);
  }

  v51 = v193;
  v52 = v194;
  if (*(a2[17] + 40) == 1)
  {
    v53 = sub_24A4AB600();
    v54 = sub_24A4ABCC0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_24A376000, v53, v54, "Action is restricted. Returning with error", v55, 2u);
      MEMORY[0x24C219130](v55, -1, -1);
    }

    LOBYTE(v196[0]) = 0;
    sub_24A489940();
    v57 = swift_allocError();
    v58 = 5;
LABEL_16:
    *v56 = v58;
    *(v56 + 8) = 256;
    sub_24A438AE0(v196, v57, a3, v192, v191, a6);
  }

  v59 = a1 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend;
  if ((*(a1 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend + *(v194 + 36)) & 2) != 0 || (v60 = *(v59 + 32), v61 = sub_24A39F92C(v60), !v62))
  {
    v73 = sub_24A4AB600();
    v74 = sub_24A4ABCE0();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_24A376000, v73, v74, "%%@: Cannot ask to follow when the friend is already sharing location.", v75, 2u);
      MEMORY[0x24C219130](v75, -1, -1);
    }

    LOBYTE(v196[0]) = 0;
    sub_24A489940();
    v57 = swift_allocError();
    v58 = 1;
    goto LABEL_16;
  }

  v153 = v60;
  v151 = v61;
  v166 = v62;
  v148 = a3;
  v170 = a1;
  v169 = v36;
  v152 = v59;
  v63 = v184;
  sub_24A495474(v59, v184, type metadata accessor for FMFFriend);
  v64 = v179;
  (*(v179 + 56))(v63, 0, 1, v52);
  (*(v187 + 56))(v51, 1, 1, v188);
  v65 = type metadata accessor for FMFLocation(0);
  v164 = *(v65 - 8);
  v66 = v164 + 56;
  v67 = *(v164 + 56);
  v67(v186, 1, 1, v65);
  v163 = v52[21];
  *(v190 + v163) = 7;
  v68 = sub_24A4AAAD0();
  v69 = v185;
  (*(*(v68 - 8) + 56))(v185, 1, 1, v68);
  v70 = v189;
  v165 = v65;
  v150 = v66;
  v149 = v67;
  v67(v189, 1, 1, v65);
  v71 = v180;
  sub_24A37B740(v63, v180, &qword_27EF3F2D0, &qword_24A4B4F50);
  if ((*(v64 + 48))(v71, 1, v52) == 1)
  {
    sub_24A37EF2C(v71, &qword_27EF3F2D0, &qword_24A4B4F50);
    v161 = 0;
    v155 = 0;
    v72 = 0;
    v163 = 0;
    v162 = 0;
    v175 = 0;
    v174 = 0;
    v159 = 0;
    v158 = 0;
    v171 = 0;
    v157 = 0;
    v156 = 0;
    v172 = 0;
    v180 = 0;
    v173 = 0;
    v179 = 0xE000000000000000;
    v176 = MEMORY[0x277D84FA0];
    v168 = 2;
    v160 = 0x7FFFFFFFFFFFFFFFLL;
    v177 = 4;
    LODWORD(v191) = 2;
    v167 = 2;
    v154 = 2;
  }

  else
  {
    sub_24A37EF2C(v70, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A37EF2C(v69, &qword_27EF3F460, &unk_24A4B53B0);
    v77 = v177;
    sub_24A4954DC(v71, v177, type metadata accessor for FMFFriend);
    v78 = v77[1];
    v173 = *v77;
    v179 = v78;
    v79 = v77[3];
    v172 = v77[2];
    v180 = v79;
    v176 = v77[4];
    v52 = v194;
    sub_24A37B740(v77 + *(v194 + 32), v69, &qword_27EF3F460, &unk_24A4B53B0);
    v80 = v52[10];
    v147 = *(v77 + v52[9]);
    v154 = *(v77 + v80);
    v81 = v52[12];
    v167 = *(v77 + v52[11]);
    LODWORD(v191) = *(v77 + v81);
    v155 = *(v77 + v52[18]);
    v82 = v52[14];
    v161 = *(v77 + v52[13]);
    v168 = *(v77 + v82);
    v160 = *(v77 + v52[15]);
    sub_24A37B740(v77 + v52[20], v70, &qword_27EF3F480, &unk_24A4B8C20);
    v83 = (v77 + v52[19]);
    v84 = v83[1];
    v175 = *v83;
    v174 = v84;
    v85 = v83[2];
    v86 = v83[3];
    v87 = v83[5];
    v171 = v83[4];
    v88 = v83[6];
    v89 = *(v77 + v52[16]);
    v90 = *(v77 + v52[17]);
    *(v190 + v163) = *(v77 + v52[21]);
    v146 = v77[5];

    v159 = v85;
    v91 = v85;
    v72 = v146;
    v158 = v86;
    v157 = v87;
    v156 = v88;
    sub_24A39AED0(v175, v174, v91, v86, v171, v87, v88);

    v162 = v89;

    v163 = v90;

    sub_24A489C74(v77, type metadata accessor for FMFFriend);
    v177 = v147 | 4;
  }

  v92 = v182;
  v93 = v193;
  v94 = v181;
  sub_24A37B740(v193, v181, &qword_27EF3F2E0, &qword_24A4BACE0);
  v95 = v188;
  if ((*(v187 + 48))(v94, 1, v188) == 1)
  {
    sub_24A37EF2C(v93, &qword_27EF3F2E0, &qword_24A4BACE0);
    sub_24A37EF2C(v184, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A37EF2C(v94, &qword_27EF3F2E0, &qword_24A4BACE0);
    v96 = v176;
    v97 = v168;
    v98 = v180;
    v99 = v72;
    v100 = v179;
    v101 = v167;
  }

  else
  {

    sub_24A4954DC(v94, v92, type metadata accessor for FMFIntermediateFriend);
    if (v167 == 2 || (v167 & 1) == 0)
    {
      v102 = *(v92 + v95[14]);
    }

    else
    {
      v102 = 1;
    }

    if (v191 == 2 || (v191 & 1) == 0)
    {
      v103 = *(v92 + v95[15]);
    }

    else
    {
      v103 = 1;
    }

    if (v168 == 2 || (v168 & 1) == 0)
    {
      v104 = *(v92 + v95[16]);
    }

    else
    {
      v104 = 1;
    }

    v100 = v92[1];
    v173 = *v92;
    v98 = v92[3];
    v172 = v92[2];
    v105 = *(v92 + v95[17]);
    sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A4B4E10;
    v107 = v92[7];
    if (!v107)
    {
      goto LABEL_47;
    }

    v101 = v102 & 1;
    LODWORD(v191) = v103 & 1;
    v97 = v104 & 1;
    *(inited + 32) = v92[6];
    v108 = inited + 32;
    *(inited + 40) = v107;
    v109 = inited;

    v110 = sub_24A3999E0(v109);
    swift_setDeallocating();
    sub_24A406964(v108);
    v96 = sub_24A399BC8(v110, v176);
    v111 = v92;
    v99 = v105;
    sub_24A489C74(v111, type metadata accessor for FMFIntermediateFriend);
    sub_24A37EF2C(v193, &qword_27EF3F2E0, &qword_24A4BACE0);
    sub_24A37EF2C(v184, &qword_27EF3F2D0, &qword_24A4B4F50);
    v52 = v194;
  }

  v112 = v52[14];
  v113 = v190;
  *v190 = v173;
  v113[1] = v100;
  v113[2] = v172;
  v113[3] = v98;
  v113[4] = v96;
  sub_24A37BE24(v185, v113 + v52[8], &qword_27EF3F460, &unk_24A4B53B0);
  *(v113 + v52[9]) = v177;
  *(v113 + v52[10]) = v154;
  *(v113 + v52[11]) = v101;
  *(v113 + v52[12]) = v191;
  v114 = (v113 + v52[19]);
  v115 = v174;
  *v114 = v175;
  v114[1] = v115;
  v116 = v158;
  v114[2] = v159;
  v114[3] = v116;
  v117 = v157;
  v114[4] = v171;
  v114[5] = v117;
  v114[6] = v156;
  *(v113 + v112) = v97;
  *(v113 + v52[18]) = v155;
  *(v113 + v52[13]) = v161;
  v113[5] = v99;
  *(v113 + v52[15]) = v160;
  v118 = v186;
  v119 = v165;
  v120 = (*(v164 + 48))(v186, 1, v165);
  v121 = v183;
  if (v120 == 1)
  {
    sub_24A37EF2C(v118, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A37BE24(v189, v113 + v52[20], &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    sub_24A37EF2C(v189, &qword_27EF3F480, &unk_24A4B8C20);
    v122 = v52[20];
    sub_24A4954DC(v118, v113 + v122, type metadata accessor for FMFLocation);
    v149(v113 + v122, 0, 1, v119);
  }

  v123 = v169;
  v124 = v170;
  *(v113 + v52[16]) = v162;
  *(v113 + v52[17]) = v163;
  sub_24A4954DC(v113, v121, type metadata accessor for FMFFriend);
  LOBYTE(v196[0]) = 4;
  sub_24A4507E0(v121, v196);
  v125 = sub_24A4AA700();
  v196[3] = v125;
  v196[4] = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v126 = sub_24A38D3BC(v196);
  (*(*(v125 - 8) + 104))(v126, *MEMORY[0x277D08A20], v125);
  LOBYTE(v125) = sub_24A4AA6C0();
  sub_24A37EEE0(v196);
  if (v125)
  {
    v127 = sub_24A4ABB70();
    v128 = v178;
    (*(*(v127 - 8) + 56))(v178, 1, 1, v127);
    v129 = swift_allocObject();
    v129[2] = 0;
    v129[3] = 0;
    v130 = v166;
    v129[4] = v151;
    v129[5] = v130;
    v129[6] = a2;
    v129[7] = v124;
    v129[8] = sub_24A495838;
    v129[9] = v123;

    sub_24A432370(0, 0, v128, &unk_24A4BC5F8, v129);

    v131 = v121;
LABEL_45:
    sub_24A489C74(v131, type metadata accessor for FMFFriend);
  }

  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_24A4B4E10;
  v133 = v152[1];
  *(v132 + 32) = *v152;
  *(v132 + 40) = v133;
  v134 = v153;
  v135 = *(v153 + 16);
  if (!v135)
  {

    v136 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

  v193 = a2;
  v136 = sub_24A3A11D8(v135, 0);
  v194 = sub_24A3A1268(v196, v136 + 4, v135, v134);
  v137 = v196[0];

  sub_24A3A13C0(v137);
  if (v194 == v135)
  {
    v123 = v169;
    a2 = v193;
LABEL_44:
    type metadata accessor for FMFAskToFollowRequest(0);
    v138 = swift_allocObject();
    *(v138 + qword_27EF4E208) = v132;
    *(v138 + qword_27EF4E210) = v136;
    v139 = sub_24A3A45B8(0x657469766E69, 0xE600000000000000);
    v140 = a2[15];
    v141 = a2[16];
    sub_24A37EACC(a2 + 12, v140);
    v142 = swift_allocObject();
    v143 = v170;
    v142[2] = a2;
    v142[3] = v143;
    v142[4] = sub_24A495838;
    v142[5] = v123;
    v144 = *(v141 + 64);
    refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

    v144(v139, sub_24A495344, v142, refreshed, v140, v141);

    v131 = v183;
    goto LABEL_45;
  }

  __break(1u);
LABEL_47:

  __break(1u);
  return result;
}

uint64_t sub_24A4933DC(void *a1, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void, __n128), uint64_t a6)
{
  v47 = a1;
  v11 = type metadata accessor for FMFLocationAlert(0);
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - v14;
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  *(v16 + 5) = a6;
  v17 = sub_24A4AA700();
  v49[3] = v17;
  v49[4] = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v18 = sub_24A38D3BC(v49);
  (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D089F8], v17);

  LOBYTE(v17) = sub_24A4AA6C0();
  sub_24A37EEE0(v49);
  if (v17)
  {
    if (qword_27EF3EC28 != -1)
    {
      swift_once();
    }

    if (byte_27EF40928)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v19 = sub_24A4AB630();
      sub_24A378E18(v19, qword_27EF4E260);

      v20 = sub_24A4AB600();
      v21 = sub_24A4ABCE0();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v47 = v23;
        *v22 = 136315138;
        v48 = *a2;
        v49[0] = v23;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v24 = sub_24A4AB870();
        v26 = sub_24A37BD58(v24, v25, v49);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_24A376000, v20, v21, "%s: Dismissing FMFLocationAlert update due to demo mode.", v22, 0xCu);
        v27 = v47;
        sub_24A37EEE0(v47);
        MEMORY[0x24C219130](v27, -1, -1);
        MEMORY[0x24C219130](v22, -1, -1);
      }

      LOBYTE(v49[0]) = 0;
      sub_24A489940();
      v28 = swift_allocError();
      *v29 = 6;
      *(v29 + 8) = 256;
      sub_24A438AE0(v49, v28, a3, a4, a5, a6);
    }

    else
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v30 = sub_24A4AB630();
      sub_24A378E18(v30, qword_27EF4E260);

      v31 = sub_24A4AB600();
      v32 = sub_24A4ABCE0();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v45 = v34;
        *v33 = 136315138;
        v48 = *a2;
        v49[0] = v34;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v35 = sub_24A4AB870();
        v37 = sub_24A37BD58(v35, v36, v49);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_24A376000, v31, v32, "%s: updating location alert action initiated", v33, 0xCu);
        v38 = v45;
        sub_24A37EEE0(v45);
        MEMORY[0x24C219130](v38, -1, -1);
        MEMORY[0x24C219130](v33, -1, -1);
      }

      v39 = sub_24A4ABB70();
      (*(*(v39 - 8) + 56))(v15, 1, 1, v39);
      sub_24A495474(v47, &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFLocationAlert);
      v40 = (*(v46 + 80) + 40) & ~*(v46 + 80);
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v41[4] = a2;
      sub_24A4954DC(&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40, type metadata accessor for FMFLocationAlert);
      v42 = (v41 + ((v12 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v42 = sub_24A495838;
      v42[1] = v16;

      sub_24A432370(0, 0, v15, &unk_24A4BC608, v41);
    }
  }
}

uint64_t sub_24A493A34(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(void, void, __n128), uint64_t a6)
{
  v12 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v16 = sub_24A4AA700();
  v37[3] = v16;
  v37[4] = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v17 = sub_24A38D3BC(v37);
  (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D089F8], v16);

  LOBYTE(v16) = sub_24A4AA6C0();
  sub_24A37EEE0(v37);
  if (v16)
  {
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(a1 + 24);
      v20 = sub_24A4ABB70();
      (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = a2;
      v21[5] = v19;
      v21[6] = v18;
      v21[7] = sub_24A495838;
      v21[8] = v15;
      v21[9] = a1;

      sub_24A432370(0, 0, v14, &unk_24A4BC618, v21);
    }

    else
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v22 = sub_24A4AB630();
      sub_24A378E18(v22, qword_27EF4E260);

      v23 = sub_24A4AB600();
      v24 = sub_24A4ABCE0();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v35 = v26;
        *v25 = 136315138;
        v36 = *a2;
        v37[0] = v26;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v27 = sub_24A4AB870();
        v29 = sub_24A37BD58(v27, v28, v37);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_24A376000, v23, v24, "%s: Error when muting fences- no friend handle", v25, 0xCu);
        v30 = v35;
        sub_24A37EEE0(v35);
        MEMORY[0x24C219130](v30, -1, -1);
        MEMORY[0x24C219130](v25, -1, -1);
      }

      LOBYTE(v37[0]) = 0;
      sub_24A489940();
      v31 = swift_allocError();
      *v32 = 2;
      *(v32 + 8) = 256;
      sub_24A438AE0(v37, v31, a3, a4, a5, a6);
    }
  }
}

uint64_t sub_24A493E50(void *a1, uint64_t *a2, char *a3, uint64_t *a4, char *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  type metadata accessor for FMFUpdateStewieLocationAction();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A484B90(v13, sub_24A494B50, v11);
    goto LABEL_29;
  }

  type metadata accessor for FMFShareLocationAction(0);
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A476924(v15, sub_24A494B50, v11);
    goto LABEL_29;
  }

  type metadata accessor for FMFRemoveFriendAction(0);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A48B060(v17, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFShowHideLocationAction();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A48BC98(v19, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFStopFollowingAction(0);
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A48C0A8(v21, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFStopSharingAction(0);
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A48CD48(v23, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFRespondToInviteAction();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = v24;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A48DBE0(v25, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFSetFavoriteAction(0);
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A48FF48(v27, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFUpdatePrefsAction();
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A490970(v29, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFUpdateMeDeviceAction();
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v31 = v30;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A491084(v31, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFNotNowAction(0);
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v33 = v32;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A491890(v33, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFAddUpdateLabelAction(0);
  v34 = swift_dynamicCastClass();
  if (v34)
  {
    v35 = v34;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A47EEDC(v35, sub_24A494B50, v11);
    goto LABEL_29;
  }

  type metadata accessor for FMFRemoveLabelsAction();
  v36 = swift_dynamicCastClass();
  if (v36)
  {
    v37 = v36;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A4800CC(v37, sub_24A494B50, v11);
    goto LABEL_29;
  }

  type metadata accessor for FMFAskToFollowAction(0);
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = v38;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A491E78(v39, a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  type metadata accessor for FMFAddLocationAlertAction(0);
  v76 = swift_dynamicCastClass();
  if (v76)
  {
    v41 = qword_27EF3EBF8;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = sub_24A4AB630();
    sub_24A378E18(v42, qword_27EF4E260);

    v43 = sub_24A4AB600();
    v44 = sub_24A4ABCE0();

    v74 = v44;
    if (os_log_type_enabled(v43, v44))
    {
      buf = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *buf = 136315138;
      v77 = v72;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v45 = sub_24A4AB870();
      v47 = sub_24A37BD58(v45, v46, &v77);

      *(buf + 4) = v47;
      _os_log_impl(&dword_24A376000, v43, v74, "%s: adding location alert action initiated", buf, 0xCu);
      sub_24A37EEE0(v72);
      MEMORY[0x24C219130](v72, -1, -1);
      MEMORY[0x24C219130](buf, -1, -1);
    }

    v48 = &OBJC_IVAR____TtC7FMFCore25FMFAddLocationAlertAction_locationAlert;
LABEL_44:
    v56 = *v48;

    sub_24A4933DC((v76 + v56), a2, a3, a4, a5, a6);

    goto LABEL_31;
  }

  type metadata accessor for FMFUpdateLocationAlertAction(0);
  v76 = swift_dynamicCastClass();
  if (v76)
  {
    v49 = qword_27EF3EBF8;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = sub_24A4AB630();
    sub_24A378E18(v50, qword_27EF4E260);

    v51 = sub_24A4AB600();
    v52 = sub_24A4ABCE0();

    v75 = v52;
    if (os_log_type_enabled(v51, v52))
    {
      bufa = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *bufa = 136315138;
      v77 = v73;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v53 = sub_24A4AB870();
      v55 = sub_24A37BD58(v53, v54, &v77);

      *(bufa + 4) = v55;
      _os_log_impl(&dword_24A376000, v51, v75, "%s: updating location alert action initiated", bufa, 0xCu);
      sub_24A37EEE0(v73);
      MEMORY[0x24C219130](v73, -1, -1);
      MEMORY[0x24C219130](bufa, -1, -1);
    }

    v48 = &OBJC_IVAR____TtC7FMFCore28FMFUpdateLocationAlertAction_locationAlert;
    goto LABEL_44;
  }

  type metadata accessor for FMFRemoveLocationAlertAction(0);
  v57 = swift_dynamicCastClass();
  if (v57)
  {
    v58 = v57;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A480700(v58, sub_24A494B50, v11);
  }

  else
  {
    type metadata accessor for FMFGetURLInfoAction(0);
    v59 = swift_dynamicCastClass();
    if (v59)
    {
      v60 = v59;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      sub_24A4838D8(v60, sub_24A494B50, v11);
    }

    else
    {
      type metadata accessor for FMFMuteFencesAction(0);
      v61 = swift_dynamicCastClass();
      if (!v61)
      {
        v63 = qword_27EF3EBF8;
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        if (v63 != -1)
        {
          swift_once();
        }

        v64 = sub_24A4AB630();
        sub_24A378E18(v64, qword_27EF4E260);
        v65 = sub_24A4AB600();
        v66 = sub_24A4ABCE0();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_24A376000, v65, v66, "FMFActionsController: cannot map action to request", v67, 2u);
          MEMORY[0x24C219130](v67, -1, -1);
        }

        LOBYTE(v77) = 0;
        sub_24A489940();
        v68 = swift_allocError();
        *v69 = 0;
        *(v69 + 8) = 256;
        sub_24A438AE0(&v77, v68, a3, a4, a5, a6);

        goto LABEL_30;
      }

      v62 = v61;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      sub_24A493A34(v62, a2, a3, a4, a5, a6);
    }
  }

LABEL_29:

LABEL_30:

LABEL_31:
}

uint64_t sub_24A494B94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A3A357C;

  return sub_24A479EAC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A494C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A3A357C;

  return sub_24A479550(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24A494D44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A3A357C;

  return sub_24A47DA54(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A494E5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24A494EB4(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for FMFFriend(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24A47C0CC(a1, a2, v7, (v2 + v6), v8);
}

uint64_t sub_24A494F68(uint64_t a1)
{
  v3 = *(type metadata accessor for FMFFriend(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A3A357C;

  return sub_24A47B2DC(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_24A495128()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A495178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A3A357C;

  return sub_24A47E0F4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A49527C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A357C;

  return sub_24A47C46C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24A495388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A3A357C;

  return sub_24A47CD60(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24A495474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A4954DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A495544(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FMFLocationAlert(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24A3A357C;

  return sub_24A4816AC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_24A495680()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A4956C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A3A357C;

  return sub_24A482088(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_24A4957B4()
{
  result = qword_27EF40C68;
  if (!qword_27EF40C68)
  {
    sub_24A3CBC9C(&unk_27EF3F4C0, &qword_24A4B7E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40C68);
  }

  return result;
}

uint64_t FMImageCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_24A4AC360();
  MEMORY[0x24C218780](v1);
  return sub_24A4AC3A0();
}

uint64_t sub_24A49590C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_24A495954(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

void *FMImageCache.__allocating_init(converter:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24A37887C(a1, a2);

  return v4;
}

uint64_t sub_24A495A7C@<X0>(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v129 = a5;
  v123 = a4;
  v126 = a3;
  v7 = *a1;
  v8 = *(*a1 + 96);
  sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
  v9 = sub_24A4AC3B0();
  v117 = *(v9 - 8);
  v118 = v9;
  MEMORY[0x28223BE20](v9);
  v116 = &v108 - v10;
  v11 = *(v7 + 80);
  v125 = *(v11 - 8);
  MEMORY[0x28223BE20](v12);
  v111 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v108 - v15;
  MEMORY[0x28223BE20](v16);
  v112 = &v108 - v17;
  MEMORY[0x28223BE20](v18);
  v121 = &v108 - v19;
  v20 = sub_24A4ABDF0();
  v119 = *(v20 - 8);
  v120 = v20;
  MEMORY[0x28223BE20](v20);
  v113 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v127 = &v108 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v108 - v25;
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v28);
  v124 = (&v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v32 = &v108 - v31;
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = *(AssociatedConformanceWitness + 16);

  v128 = v11;
  v122 = v33;
  sub_24A4AB7B0();

  v34 = *(v27 + 6);
  if (v34(v26, 1, v8) != 1)
  {
    v57 = *(v27 + 4);
    v127 = v27 + 32;
    v124 = v57;
    v57(v32, v26, v8);
    v58 = v32;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v59 = sub_24A4AB630();
    sub_24A378E18(v59, qword_27EF4E260);
    v60 = v125;
    v61 = v121;
    v62 = a2;
    v63 = v128;
    (*(v125 + 16))(v121, v62, v128);
    v64 = sub_24A4AB600();
    v65 = sub_24A4ABCA0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v122 = v58;
      v67 = v66;
      v68 = swift_slowAlloc();
      v120 = v8;
      v69 = v68;
      v130[0] = v68;
      *v67 = 136315138;
      v70 = sub_24A4AC280();
      v71 = v61;
      v73 = v72;
      (*(v60 + 8))(v71, v63);
      v74 = sub_24A37BD58(v70, v73, v130);

      *(v67 + 4) = v74;
      _os_log_impl(&dword_24A376000, v64, v65, "FMImageCache: Found cached data for request: %s in memory cache.", v67, 0xCu);
      sub_24A37EEE0(v69);
      v75 = v69;
      v8 = v120;
      MEMORY[0x24C219130](v75, -1, -1);
      v76 = v67;
      v58 = v122;
      MEMORY[0x24C219130](v76, -1, -1);

      v77 = v126;
      if (!v126)
      {
        goto LABEL_19;
      }
    }

    else
    {

      (*(v60 + 8))(v61, v63);
      v77 = v126;
      if (!v126)
      {
LABEL_19:
        v98 = v129;
        v124(v129, v58, v8);
        return (*(v27 + 7))(v98, 0, 1, v8);
      }
    }

    v96 = v116;
    (*(v27 + 2))(v116, v58, v8);
    v97 = v118;
    swift_storeEnumTagMultiPayload();
    v77(v96);
    (*(v117 + 8))(v96, v97);
    goto LABEL_19;
  }

  v121 = v27;
  v35 = v120;
  v119 = *(v119 + 1);
  v119(v26, v120);
  v36 = v127;
  sub_24A49A548(v127);
  v37 = a2;
  if (v34(v36, 1, v8) == 1)
  {
    v119(v127, v35);
    swift_beginAccess();
    v38 = a1;

    v127 = a2;
    v39 = v128;
    v40 = sub_24A4ABC30();

    v41 = v121;
    if ((v40 & 1) == 0)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v42 = sub_24A4AB630();
      sub_24A378E18(v42, qword_27EF4E260);
      v43 = v125;
      v44 = v111;
      (*(v125 + 16))(v111, v127, v39);
      v45 = sub_24A4AB600();
      v46 = sub_24A4ABCE0();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v119 = v38;
        v48 = v47;
        v49 = swift_slowAlloc();
        v120 = v8;
        v50 = v49;
        v131 = v49;
        *v48 = 136315138;
        v51 = sub_24A4AC280();
        v52 = v44;
        v54 = v53;
        (*(v43 + 8))(v52, v39);
        v55 = sub_24A37BD58(v51, v54, &v131);

        *(v48 + 4) = v55;
        _os_log_impl(&dword_24A376000, v45, v46, "FMImageCache: Cached data for request: %s not found, regenerating.", v48, 0xCu);
        sub_24A37EEE0(v50);
        v56 = v50;
        v8 = v120;
        MEMORY[0x24C219130](v56, -1, -1);
        MEMORY[0x24C219130](v48, -1, -1);
      }

      else
      {

        (*(v43 + 8))(v44, v39);
      }

      sub_24A496E28(v127, v126, v123);
    }

    return (*(v41 + 7))(v129, 1, 1, v8);
  }

  else
  {
    v78 = *(v121 + 4);
    v111 = v121 + 32;
    v110 = v78;
    v78(v124, v127, v8);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v119 = a1;
    v79 = sub_24A4AB630();
    sub_24A378E18(v79, qword_27EF4E260);
    v80 = v125;
    v81 = v112;
    v82 = v128;
    v109 = *(v125 + 16);
    v109(v112, a2, v128);
    v83 = sub_24A4AB600();
    v84 = sub_24A4ABCA0();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v127 = v37;
      v86 = v85;
      v87 = swift_slowAlloc();
      v120 = v8;
      v88 = v87;
      v130[0] = v87;
      *v86 = 136315138;
      v89 = sub_24A4AC280();
      v90 = v81;
      v92 = v91;
      (*(v80 + 8))(v90, v82);
      v93 = sub_24A37BD58(v89, v92, v130);

      *(v86 + 4) = v93;
      _os_log_impl(&dword_24A376000, v83, v84, "FMImageCache: Found cached data for request: %s in disk cache.", v86, 0xCu);
      sub_24A37EEE0(v88);
      v94 = v88;
      v8 = v120;
      MEMORY[0x24C219130](v94, -1, -1);
      v95 = v86;
      v37 = v127;
      MEMORY[0x24C219130](v95, -1, -1);
    }

    else
    {

      (*(v80 + 8))(v81, v82);
    }

    v109(v114, v37, v82);
    v100 = v121;
    v101 = *(v121 + 2);
    v102 = v113;
    v103 = v124;
    v101(v113, v124, v8);
    v127 = *(v100 + 7);
    (v127)(v102, 0, 1, v8);
    swift_beginAccess();
    sub_24A4AB7A0();
    sub_24A4AB7C0();
    swift_endAccess();
    v104 = v126;
    if (v126)
    {
      v105 = v116;
      v101(v116, v124, v8);
      v106 = v118;
      swift_storeEnumTagMultiPayload();
      v104(v105);
      v103 = v124;
      (*(v117 + 8))(v105, v106);
    }

    v107 = v129;
    v110(v129, v103, v8);
    return (v127)(v107, 0, 1, v8);
  }
}

uint64_t sub_24A4966F4()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMImageCache: Purging cache...", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24A49B090;
  *(v7 + 24) = v1;
  v10[4] = sub_24A37CE34;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24A37CDDC;
  v10[3] = &unk_285D8BCA8;
  v8 = _Block_copy(v10);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_24A4968E0(void *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = sub_24A4AA9D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v41 - v8;
  v10 = *(v2 + 80);
  v11 = *(swift_getAssociatedConformanceWitness() + 16);
  v12 = sub_24A4AB750();
  swift_beginAccess();
  a1[4] = v12;

  v13 = *(v2 + 96);
  swift_getTupleTypeMetadata2();
  v14 = sub_24A4ABAB0();
  v15 = sub_24A49AD54(v14, v10, v13, v11);

  swift_beginAccess();
  a1[6] = v15;

  v42 = objc_opt_self();
  v16 = [v42 defaultManager];
  (*(*a1 + 160))();
  v17 = sub_24A4AA980();
  v41[0] = *(v4 + 8);
  v41[1] = v4 + 8;
  (v41[0])(v9, v3);
  v43 = 0;
  v18 = [v16 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:0 options:5 error:&v43];

  v19 = v43;
  if (v18)
  {
    v20 = sub_24A4ABA70();
    v21 = v19;

    v22 = *(v20 + 16);
    if (!v22)
    {
LABEL_7:

      return;
    }

    v23 = v3;
    v24 = 0;
    v25 = (v4 + 16);
    while (v24 < *(v20 + 16))
    {
      (*(v4 + 16))(v6, v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v23);
      v26 = [v42 defaultManager];
      v27 = sub_24A4AA980();
      v28 = v23;
      (v41[0])(v6, v23);
      v43 = 0;
      v29 = [v26 removeItemAtURL:v27 error:&v43];

      if (!v29)
      {
        v31 = v43;

        goto LABEL_10;
      }

      ++v24;
      v30 = v43;
      v23 = v28;
      if (v22 == v24)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v31 = v43;
LABEL_10:
    v25 = sub_24A4AA950();

    swift_willThrow();
    if (qword_27EF3EBF8 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v32 = sub_24A4AB630();
  sub_24A378E18(v32, qword_27EF4E260);
  v33 = v25;
  v34 = sub_24A4AB600();
  v35 = sub_24A4ABCE0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v36 = 136315138;
    swift_getErrorValue();
    v38 = sub_24A4AC310();
    v40 = sub_24A37BD58(v38, v39, &v43);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_24A376000, v34, v35, "FMImageCache: Error deleting file : %s", v36, 0xCu);
    sub_24A37EEE0(v37);
    MEMORY[0x24C219130](v37, -1, -1);
    MEMORY[0x24C219130](v36, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A496E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v27 = *v3;
  v6 = v27;
  v32 = sub_24A4AB690();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24A4AB6E0();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v30 = v4[3];
  (*(v12 + 16))(&v26 - v16, a1, v11, v15);
  v18 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  *(v19 + 24) = *(v27 + 88);
  *(v19 + 40) = *(v6 + 104);
  *(v19 + 48) = v4;
  (*(v12 + 32))(v19 + v18, v17, v11);
  v20 = (v19 + ((v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  v21 = v29;
  *v20 = v28;
  v20[1] = v21;
  aBlock[4] = sub_24A49B4A0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8BF80;
  v23 = _Block_copy(aBlock);

  sub_24A3C8498(v22, v21);
  sub_24A4AB6B0();
  v35 = MEMORY[0x277D84F90];
  sub_24A378D20(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v24 = v32;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v10, v8, v23);
  _Block_release(v23);
  (*(v34 + 8))(v8, v24);
  (*(v31 + 8))(v10, v33);
}

void sub_24A497238(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  isEscapingClosureAtFileLocation = v3;
  v82 = a3;
  v89 = a2;
  v6 = *v3;
  v7 = v6[10];
  v91 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v88 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = (v79 - v10);
  MEMORY[0x28223BE20](v11);
  v90 = v79 - v12;
  v87 = v13;
  MEMORY[0x28223BE20](v14);
  v80 = v79 - v15;
  v16 = v6[12];
  v17 = sub_24A4ABDF0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v79 - v19;
  swift_beginAccess();
  v21 = v6[13];
  v84 = v6[11];
  v85 = v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = *(AssociatedConformanceWitness + 16);

  v92 = a1;
  sub_24A4AB7B0();

  v23 = *(*(v16 - 8) + 48);
  v86 = v16;
  LODWORD(v6) = v23(v20, 1, v16);
  (*(v18 + 8))(v20, v17);
  if (v6 != 1 || (swift_beginAccess(), , v24 = sub_24A4ABC30(), , (v24 & 1) != 0))
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v25 = sub_24A4AB630();
    sub_24A378E18(v25, qword_27EF4E260);
    v26 = v91;
    v27 = v92;
    v28 = v88;
    v81 = *(v91 + 16);
    v81(v88, v92, v7);
    v29 = sub_24A4AB600();
    v30 = sub_24A4ABCE0();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v90;
    if (v31)
    {
      v33 = v28;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      v36 = sub_24A4AC280();
      AssociatedConformanceWitness = isEscapingClosureAtFileLocation;
      v37 = v32;
      v39 = v38;
      (*(v91 + 8))(v33, v7);
      v40 = sub_24A37BD58(v36, v39, aBlock);
      v32 = v37;
      v27 = v92;
      isEscapingClosureAtFileLocation = AssociatedConformanceWitness;

      *(v34 + 4) = v40;
      _os_log_impl(&dword_24A376000, v29, v30, "FMImageCache: Loading declined, we are already processing similar location: %s", v34, 0xCu);
      sub_24A37EEE0(v35);
      v41 = v35;
      v26 = v91;
      MEMORY[0x24C219130](v41, -1, -1);
      MEMORY[0x24C219130](v34, -1, -1);

      v42 = v89;
      if (!v89)
      {
        return;
      }
    }

    else
    {

      (*(v26 + 8))(v28, v7);
      v42 = v89;
      if (!v89)
      {
        return;
      }
    }

    v43 = *(isEscapingClosureAtFileLocation + 24);
    v81(v32, v27, v7);
    v44 = (*(v26 + 80) + 56) & ~*(v26 + 80);
    v45 = (v87 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *&v47 = v7;
    *(&v47 + 1) = v84;
    *&v48 = v86;
    *(&v48 + 1) = v85;
    *(v46 + 16) = v47;
    *(v46 + 32) = v48;
    *(v46 + 48) = isEscapingClosureAtFileLocation;
    (*(v26 + 32))(v46 + v44, v32, v7);
    v49 = (v46 + v45);
    v22 = v82;
    *v49 = v42;
    v49[1] = v22;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_24A49B2B4;
    *(v7 + 24) = v46;
    aBlock[4] = sub_24A37CE3C;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A37CDDC;
    aBlock[3] = &unk_285D8BEB8;
    v50 = _Block_copy(aBlock);
    sub_24A3C8498(v42, v22);
    sub_24A3C8498(v42, v22);

    dispatch_sync(v43, v50);
    sub_24A3C84A8(v42, v22);
    _Block_release(v50);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v88 = v22;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v51 = sub_24A4AB630();
  sub_24A378E18(v51, qword_27EF4E260);
  v52 = v91;
  v53 = v91 + 16;
  v54 = v80;
  v89 = *(v91 + 16);
  v89(v80, v92, v7);
  v55 = sub_24A4AB600();
  v56 = sub_24A4ABCE0();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = sub_24A4AC280();
    v61 = v60;
    v62 = *(v91 + 8);
    v82 = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    AssociatedConformanceWitness = v62;
    v62(v54, v7);
    v63 = sub_24A37BD58(v59, v61, aBlock);
    v52 = v91;

    *(v57 + 4) = v63;
    _os_log_impl(&dword_24A376000, v55, v56, "FMImageCache: Attempting to load request: %s", v57, 0xCu);
    sub_24A37EEE0(v58);
    MEMORY[0x24C219130](v58, -1, -1);
    MEMORY[0x24C219130](v57, -1, -1);
  }

  else
  {

    v64 = *(v52 + 8);
    v82 = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    AssociatedConformanceWitness = v64;
    v64(v54, v7);
  }

  v65 = v89;
  v66 = v92;
  v89(v90, v92, v7);
  v67 = v65;
  v68 = swift_allocObject();
  v79[1] = v53;
  v69 = v68;
  swift_weakInit();
  v70 = v81;
  v67(v81, v66, v7);
  v71 = (*(v52 + 80) + 56) & ~*(v52 + 80);
  v72 = swift_allocObject();
  *&v73 = v7;
  v74 = v84;
  v75 = v85;
  *(&v73 + 1) = v84;
  *&v76 = v86;
  *(&v76 + 1) = v85;
  *(v72 + 16) = v73;
  *(v72 + 32) = v76;
  *(v72 + 48) = v69;
  (*(v52 + 32))(v72 + v71, v70, v7);
  v77 = v90;
  v78 = (*(v75 + 24))(v90, sub_24A49B24C, v72, v74, v75);
  [*(isEscapingClosureAtFileLocation + 16) addOperation_];
  v89(v70, v66, v7);
  swift_beginAccess();
  sub_24A4ABC40();
  sub_24A4ABC10();
  (AssociatedConformanceWitness)(v77, v7);
  swift_endAccess();
}

uint64_t sub_24A497C54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v22 = &v17 - v7;
  swift_beginAccess();
  v8 = v5[12];

  sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
  sub_24A4AC3B0();
  swift_getFunctionTypeMetadata1();
  sub_24A4ABB30();
  v9 = v5[13];
  v10 = v5[11];
  swift_getAssociatedConformanceWitness();
  v21 = a2;
  sub_24A4AB7B0();

  v11 = v23;
  if (!v23)
  {
    v11 = sub_24A4ABAB0();
  }

  v26 = v11;
  v12 = swift_allocObject();
  *&v13 = v6;
  *(&v13 + 1) = v10;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  *(v12 + 16) = v13;
  *(v12 + 32) = v14;
  v15 = v19;
  *(v12 + 48) = v18;
  *(v12 + 56) = v15;
  v23 = sub_24A49B324;
  v24 = v12;

  sub_24A4ABB00();
  (*(v20 + 16))(v22, v21, v6);
  v25 = v26;
  swift_beginAccess();
  sub_24A4AB7A0();
  sub_24A4AB7C0();
  return swift_endAccess();
}

uint64_t sub_24A497F08(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a7;
  v46 = a8;
  v44 = a5;
  v47 = a3;
  v48 = a1;
  v49 = a2;
  v10 = sub_24A4AB690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A4AB6E0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v50 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a6 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v20 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v40 = a9;
    v22 = *(result + 24);
    v42 = v13;
    v43 = v22;

    v23 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v17 + 16))(&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v44, a6);
    v24 = (*(v17 + 80) + 48) & ~*(v17 + 80);
    v41 = v15;
    v25 = (v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = v14;
    v26 = v11;
    v27 = v10;
    v28 = swift_allocObject();
    v29 = v45;
    v30 = v46;
    *(v28 + 2) = a6;
    *(v28 + 3) = v29;
    v31 = v40;
    *(v28 + 4) = v30;
    *(v28 + 5) = v31;
    (*(v17 + 32))(&v28[v24], v20, a6);
    *&v28[v25] = v23;
    v32 = &v28[(v25 + 15) & 0xFFFFFFFFFFFFFFF8];
    v34 = v48;
    v33 = v49;
    *v32 = v48;
    *(v32 + 1) = v33;
    LOBYTE(v25) = v47 & 1;
    v32[16] = v47 & 1;
    aBlock[4] = sub_24A49B358;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D8BF30;
    v35 = _Block_copy(aBlock);

    sub_24A49B3F8(v34, v33, v25);
    v36 = v50;
    sub_24A4AB6B0();
    v51 = MEMORY[0x277D84F90];
    sub_24A378D20(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v37 = v42;
    sub_24A4ABE90();
    v38 = v43;
    MEMORY[0x24C218190](0, v36, v37, v35);
    _Block_release(v35);

    (*(v26 + 8))(v37, v27);
    (*(v41 + 8))(v36, v44);
  }

  return result;
}

void *sub_24A4983AC(uint64_t a1, uint64_t a2, void (*a3)(char *, void *, uint64_t), unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v127 = a7;
  LODWORD(v108) = a5;
  v110 = a4;
  v109 = a3;
  v128 = a1;
  v118 = sub_24A4ABDF0();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = v102 - v12;
  sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
  v121 = sub_24A4AC3B0();
  v115 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v114 = (v102 - v13);
  v14 = sub_24A4ABDF0();
  MEMORY[0x28223BE20](v14 - 8);
  v105 = v102 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v112 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v111 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (v102 - v19);
  v113 = v21;
  v22 = sub_24A4AC3B0();
  v125 = *(v22 - 8);
  v126 = v22;
  MEMORY[0x28223BE20](v22);
  AssociatedConformanceWitness = (v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v124 = (v102 - v25);
  v129 = a6;
  v26 = *(a6 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v119 = v102 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = v102 - v33;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v35 = sub_24A4AB630();
  v36 = sub_24A378E18(v35, qword_27EF4E260);
  v37 = *(v26 + 16);
  v123 = v26 + 16;
  v122 = v37;
  v37(v34, v128, v129);
  v102[2] = v36;
  v38 = sub_24A4AB600();
  v39 = sub_24A4ABCE0();
  v40 = os_log_type_enabled(v38, v39);
  v107 = a8;
  v106 = v20;
  v104 = v26;
  v103 = v29;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v102[1] = a2;
    v42 = v41;
    v43 = swift_slowAlloc();
    v132 = v43;
    *v42 = 136315138;
    v44 = v129;
    swift_getAssociatedConformanceWitness();
    v45 = sub_24A4AC280();
    v46 = v44;
    v48 = v47;
    v49 = *(v26 + 8);
    v49(v34, v46);
    v50 = sub_24A37BD58(v45, v48, &v132);

    *(v42 + 4) = v50;
    _os_log_impl(&dword_24A376000, v38, v39, "FMImageCache: Finished loading request: %s", v42, 0xCu);
    sub_24A37EEE0(v43);
    MEMORY[0x24C219130](v43, -1, -1);
    MEMORY[0x24C219130](v42, -1, -1);
  }

  else
  {

    v49 = *(v26 + 8);
    v49(v34, v129);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v52 = AssociatedConformanceWitness;
  if (result)
  {
    v53 = result;
    v54 = v124;
    sub_24A499360(v109, v110, v108 & 1, result, v124);
    (*(v125 + 16))(v52, v54, v126);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = *v52;
      v56 = v103;
      v122(v103, v128, v129);
      v57 = v55;
      v58 = sub_24A4AB600();
      v59 = sub_24A4ABCE0();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        AssociatedConformanceWitness = swift_slowAlloc();
        v132 = AssociatedConformanceWitness;
        *v60 = 136315394;
        v61 = v49;
        v62 = v129;
        swift_getAssociatedConformanceWitness();
        LODWORD(v113) = v59;
        v63 = sub_24A4AC280();
        v65 = v64;
        v66 = v56;
        v67 = a9;
        v61(v66, v62);
        v68 = sub_24A37BD58(v63, v65, &v132);

        *(v60 + 4) = v68;
        *(v60 + 12) = 2080;
        swift_getErrorValue();
        v69 = sub_24A4AC310();
        v71 = sub_24A37BD58(v69, v70, &v132);

        *(v60 + 14) = v71;
        _os_log_impl(&dword_24A376000, v58, v113, "FMImageCache: Failed to fetch image for request: %s due to: %s", v60, 0x16u);
        v72 = AssociatedConformanceWitness;
        swift_arrayDestroy();
        MEMORY[0x24C219130](v72, -1, -1);
        MEMORY[0x24C219130](v60, -1, -1);
      }

      else
      {

        v49(v56, v129);
        v67 = a9;
      }

      swift_beginAccess();
      v93 = v121;
      swift_getFunctionTypeMetadata1();
      sub_24A4ABB30();
      swift_getAssociatedConformanceWitness();

      sub_24A4AB7B0();

      if (v130)
      {
        v131 = v130;
        MEMORY[0x28223BE20](v94);
        v102[-6] = v129;
        v102[-5] = v95;
        v102[-4] = v107;
        v102[-3] = v67;
        v102[-2] = v55;
        swift_getWitnessTable();
        v93 = v121;
        sub_24A4ABA10();
      }

      v96 = v114;
      *v114 = v55;
      swift_storeEnumTagMultiPayload();
      v97 = *(*v53 + 288);
      v98 = v55;
      v97(v128, v96);

      (*(v115 + 8))(v96, v93);
    }

    else
    {
      v102[0] = a9;
      v73 = v112;
      v74 = v128;
      v75 = v106;
      v76 = v113;
      (*(v112 + 32))(v106, v52, v113);
      v122(v119, v74, v129);
      v77 = v73 + 16;
      v78 = *(v73 + 16);
      v79 = v111;
      v110 = v77;
      v109 = v78;
      (v78)(v111, v75, v76);
      sub_24A386E10(*v79, *(v79 + 1));
      v80 = *(v76 + 48);
      v81 = v107;
      v82 = *(v107 - 8);
      v83 = *(v82 + 32);
      v84 = &v79[v80];
      v85 = v105;
      v108 = v82 + 32;
      v104 = v83;
      v83(v105, v84, v107);
      (*(v82 + 56))(v85, 0, 1, v81);
      swift_beginAccess();
      v86 = v127;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_24A4AB7A0();
      sub_24A4AB7C0();
      swift_endAccess();
      sub_24A499A34(*v75, v75[1], v74);
      swift_beginAccess();
      swift_getFunctionTypeMetadata1();
      sub_24A4ABB30();

      sub_24A4AB7B0();

      if (v130)
      {
        v131 = v130;
        MEMORY[0x28223BE20](v87);
        v102[-6] = v129;
        v102[-5] = v86;
        v88 = v102[0];
        v102[-4] = v81;
        v102[-3] = v88;
        v102[-2] = v75;
        swift_getWitnessTable();
        sub_24A4ABA10();
      }

      v89 = v111;
      v90 = v113;
      (v109)(v111, v75, v113);
      sub_24A386E10(*v89, *(v89 + 1));
      v91 = v114;
      v104(v114, &v89[*(v90 + 48)], v81);
      v92 = v121;
      swift_storeEnumTagMultiPayload();
      (*(*v53 + 288))(v128, v91);
      (*(v115 + 8))(v91, v92);
      (*(v112 + 8))(v75, v90);
    }

    swift_beginAccess();
    v99 = v129;
    sub_24A4ABC40();
    v100 = v116;
    v101 = v128;
    sub_24A4ABC20();
    (*(v117 + 8))(v100, v118);
    swift_endAccess();
    v122(v119, v101, v99);
    v131 = 0;
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_24A4ABB30();
    sub_24A4AB7A0();
    sub_24A4AB7C0();
    swift_endAccess();

    return (*(v125 + 8))(v124, v126);
  }

  return result;
}

id sub_24A499360@<X0>(void *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v29 = a2;
  v9 = *(*a4 + 96);
  v10 = sub_24A4ABDF0();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  if (a3)
  {
    *a5 = a1;
    swift_getTupleTypeMetadata2();
    sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
    sub_24A4AC3B0();
    swift_storeEnumTagMultiPayload();

    return a1;
  }

  else
  {
    v27 = v15;
    v19 = a4[7];
    v20 = v29;
    sub_24A380530(a1, v29);
    v28 = a1;
    v19(a1, v20);
    if ((*(v13 + 48))(v12, 1, v9) == 1)
    {
      (*(v27 + 8))(v12, v10);
      sub_24A49B44C();
      v21 = swift_allocError();
      *v22 = 1;
      sub_24A49B34C(v28, v29, 0);
      *a5 = v21;
      swift_getTupleTypeMetadata2();
    }

    else
    {
      v23 = *(v13 + 32);
      v23(v17, v12, v9);
      v24 = *(swift_getTupleTypeMetadata2() + 48);
      v25 = v29;
      *a5 = v28;
      a5[1] = v25;
      v23(a5 + v24, v17, v9);
    }

    sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
    sub_24A4AC3B0();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_24A4996F4(void (**a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v17 - v9;
  sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
  v11 = sub_24A4AC3B0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v17 - v14;
  v17 = *a1;
  (*(v8 + 16))(v10, v18, TupleTypeMetadata2, v13);
  sub_24A386E10(*v10, *(v10 + 1));
  (*(*(a5 - 8) + 32))(v15, &v10[*(TupleTypeMetadata2 + 48)], a5);
  swift_storeEnumTagMultiPayload();
  v17(v15);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_24A49990C(void (**a1)(char *), void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24A3CBC9C(&qword_27EF3F0D0, &unk_24A4B6970);
  v7 = sub_24A4AC3B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = *a1;
  *(&v14 - v9) = a2;
  swift_storeEnumTagMultiPayload();
  v12 = a2;
  v11(v10);
  return (*(v8 + 8))(v10, v7);
}

void sub_24A499A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x24C2189A0]();
  sub_24A499AA8(v3, a3, a1, a2);

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_24A499AA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v77 = a3;
  v86[1] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v84 = sub_24A4AA9D0();
  v6 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v74 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v72 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v81 = &v72 - v13;
  v14 = *(v5 + 160);
  v14(v12);
  v15 = *(v5 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v15, AssociatedConformanceWitness);
  sub_24A4AA990();

  v73 = v6;
  v17 = v6 + 8;
  v18 = *(v6 + 8);
  v19 = v84;
  v18(v10, v84);
  v85 = 0;
  v80 = objc_opt_self();
  v20 = [v80 defaultManager];
  v76 = a1;
  v21 = v81;
  v75 = v14;
  (v14)();
  sub_24A4AA9B0();
  v82 = v18;
  v83 = v17;
  v18(v10, v19);
  v22 = sub_24A4AB820();

  v23 = [v20 fileExistsAtPath:v22 isDirectory:&v85];

  if ((v23 & 1) == 0)
  {
    v24 = [v80 defaultManager];
    v75();
    v25 = sub_24A4AA980();
    v26 = v84;
    v82(v10, v84);
    v86[0] = 0;
    v27 = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:v86];

    if (!v27)
    {
      v43 = v86[0];
      v44 = sub_24A4AA950();

      swift_willThrow();
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v45 = sub_24A4AB630();
      sub_24A378E18(v45, qword_27EF4E260);
      v46 = v74;
      (*(v73 + 16))(v74, v21, v26);
      v47 = sub_24A4AB600();
      v48 = sub_24A4ABCE0();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v80 = v44;
        v50 = v49;
        v51 = swift_slowAlloc();
        v86[0] = v51;
        *v50 = 136315138;
        sub_24A378D20(&qword_27EF40BD0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v52 = sub_24A4AC240();
        v54 = v53;
        v55 = v46;
        v56 = v82;
        v82(v55, v26);
        v57 = sub_24A37BD58(v52, v54, v86);

        *(v50 + 4) = v57;
        _os_log_impl(&dword_24A376000, v47, v48, "FMImageCache: Could not create directory for content: %s", v50, 0xCu);
        sub_24A37EEE0(v51);
        MEMORY[0x24C219130](v51, -1, -1);
        MEMORY[0x24C219130](v50, -1, -1);

        return v56(v81, v26);
      }

      else
      {

        v70 = v46;
        v71 = v82;
        v82(v70, v26);
        return v71(v21, v26);
      }
    }

    v28 = v86[0];
  }

  v29 = v79;
  sub_24A4AAA20();
  v30 = v29;
  v31 = v21;
  if (!v29)
  {
    v32 = [v80 defaultManager];
    sub_24A3C9CEC(&qword_27EF40598, &unk_24A4BACB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A4B4E10;
    v34 = *MEMORY[0x277CCA1B0];
    *(inited + 32) = *MEMORY[0x277CCA1B0];
    v35 = *MEMORY[0x277CCA1A0];
    type metadata accessor for FileProtectionType(0);
    *(inited + 64) = v36;
    *(inited + 40) = v35;
    v37 = v34;
    v38 = v35;
    v31 = v21;
    sub_24A3A9E3C(inited);
    swift_setDeallocating();
    sub_24A49B1E4(inited + 32);
    type metadata accessor for FileAttributeKey(0);
    sub_24A378D20(&qword_27EF3EDE0, type metadata accessor for FileAttributeKey, &unk_24A4B403C);
    v39 = sub_24A4AB760();

    sub_24A4AA9B0();
    v40 = sub_24A4AB820();

    v86[0] = 0;
    LODWORD(v34) = [v32 setAttributes:v39 ofItemAtPath:v40 error:v86];

    if (v34)
    {
      v41 = v86[0];
      return (v82)(v21, v84);
    }

    v58 = v86[0];
    v30 = sub_24A4AA950();

    swift_willThrow();
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v59 = sub_24A4AB630();
  sub_24A378E18(v59, qword_27EF4E260);
  v60 = v30;
  v61 = sub_24A4AB600();
  v62 = sub_24A4ABCC0();

  v63 = os_log_type_enabled(v61, v62);
  v64 = v84;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v86[0] = v66;
    *v65 = 136315138;
    swift_getErrorValue();
    v67 = sub_24A4AC310();
    v69 = sub_24A37BD58(v67, v68, v86);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_24A376000, v61, v62, "FMImageCache: Could not save objects to disk %s", v65, 0xCu);
    sub_24A37EEE0(v66);
    MEMORY[0x24C219130](v66, -1, -1);
    MEMORY[0x24C219130](v65, -1, -1);
  }

  else
  {
  }

  return (v82)(v31, v64);
}

id sub_24A49A360()
{
  v1 = *v0;
  v2 = sub_24A4AA9D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  (*(v1 + 160))(v7);
  v10 = *(v1 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v10, AssociatedConformanceWitness);
  sub_24A4AA990();

  v12 = *(v3 + 8);
  v12(v5, v2);
  v13 = [objc_opt_self() defaultManager];
  sub_24A4AA9B0();
  v14 = sub_24A4AB820();

  v15 = [v13 fileExistsAtPath_];

  v12(v9, v2);
  return v15;
}

uint64_t sub_24A49A548@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = *v1;
  v3 = *(*v1 + 12);
  v4 = sub_24A4ABDF0();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x28223BE20](v4);
  v49 = &v46 - v6;
  v7 = sub_24A4AA9D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  (*(v2 + 20))(v14);
  v17 = *(v2 + 10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v17, AssociatedConformanceWitness);
  sub_24A4AA990();

  v19 = *(v8 + 8);
  v52 = v7;
  v20 = v7;
  v21 = v19;
  v19(v12, v20);
  v22 = sub_24A4AA9E0();
  v24 = v23;
  v25 = v48;
  v26 = v49;
  v1[7]();
  sub_24A386E10(v22, v24);
  v27 = *(v3 - 8);
  if ((*(v27 + 48))(v26, 1, v3) == 1)
  {
    v50 = v3;
    (*(v25 + 8))(v26, v47);
    v29 = v51;
    v28 = v52;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v30 = sub_24A4AB630();
    sub_24A378E18(v30, qword_27EF4E260);
    (*(v8 + 16))(v29, v16, v28);
    v31 = sub_24A4AB600();
    v32 = v16;
    v33 = sub_24A4ABCE0();
    if (os_log_type_enabled(v31, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54 = v35;
      *v34 = 136315138;
      sub_24A378D20(&qword_27EF40BD0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v36 = sub_24A4AC240();
      v37 = v29;
      v38 = v21;
      v39 = v28;
      v40 = v36;
      v42 = v41;
      v38(v37, v39);
      v43 = sub_24A37BD58(v40, v42, &v54);

      *(v34 + 4) = v43;
      _os_log_impl(&dword_24A376000, v31, v33, "FMImageCache: Failed to load cached image from disk: %s", v34, 0xCu);
      sub_24A37EEE0(v35);
      MEMORY[0x24C219130](v35, -1, -1);
      MEMORY[0x24C219130](v34, -1, -1);

      v38(v32, v39);
    }

    else
    {

      v21(v29, v28);
      v21(v32, v28);
    }

    return (*(*(v50 - 8) + 56))(v53, 1, 1);
  }

  else
  {
    v21(v16, v52);
    v45 = v53;
    (*(v27 + 32))(v53, v26, v3);
    return (*(v27 + 56))(v45, 0, 1, v3);
  }
}

uint64_t FMImageCache.deinit()
{

  return v0;
}

uint64_t FMImageCache.__deallocating_deinit()
{
  FMImageCache.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24A49AB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A4AB7D0();

  return sub_24A49AB9C(a1, v6, a2, a3);
}

unint64_t sub_24A49AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_24A4AB810();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_24A49AD24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_24A49AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24A4ABAF0())
  {
    sub_24A4AC0A0();
    v13 = sub_24A4AC090();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24A4ABAF0();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24A4ABAD0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24A4ABF60();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24A49AB40(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_24A49B09C()
{
  result = qword_27EF40C78;
  if (!qword_27EF40C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40C78);
  }

  return result;
}

uint64_t sub_24A49B1E4(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF40358, &qword_24A4BA148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A49B2B4()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_24A497C54(*(v0 + 48), v0 + v1, *v2, v2[1]);
}

void sub_24A49B34C(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_24A386E10(a1, a2);
  }
}

void *sub_24A49B358()
{
  v1 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v2 = (*(*(v0[2] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24A4983AC(v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), v0[2], v0[3], v0[4], v0[5]);
}

id sub_24A49B3F8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_24A380530(a1, a2);
  }
}

unint64_t sub_24A49B44C()
{
  result = qword_27EF40D00;
  if (!qword_27EF40D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D00);
  }

  return result;
}

void sub_24A49B4A0()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_24A497238(v0 + v1, *v2, *(v2 + 8));
}

void sub_24A49B55C()
{
  v1 = [*(v0 + 16) aa_primaryAppleAccount];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 aa_personID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_24A4AB850();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    if (qword_27EF3EBD8 != -1)
    {
      swift_once();
    }

    v11 = qword_27EF4E1B8;
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 8))(ObjectType, v11);
    v15 = 0x27EF3E000uLL;
    if (v7)
    {
      if (!v14)
      {
        goto LABEL_24;
      }

      if (v5 != v13 || v7 != v14)
      {
        v17 = sub_24A4AC270();

        if (v17)
        {
          goto LABEL_30;
        }

LABEL_24:
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v18 = sub_24A4AB630();
        sub_24A378E18(v18, qword_27EF4E260);
        v19 = sub_24A4AB600();
        v20 = sub_24A4ABCE0();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = ObjectType;
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_24A376000, v19, v20, "FMFGarbageCollector: purging cache because person id are not matching.", v22, 2u);
          v23 = v22;
          ObjectType = v21;
          v15 = 0x27EF3E000;
          MEMORY[0x24C219130](v23, -1, -1);
        }

        sub_24A49C5C8();
        goto LABEL_30;
      }
    }

    else if (v14)
    {

      goto LABEL_24;
    }

LABEL_30:
    if (*(v15 + 3064) != -1)
    {
      swift_once();
    }

    v24 = sub_24A4AB630();
    sub_24A378E18(v24, qword_27EF4E260);

    v25 = sub_24A4AB600();
    v26 = sub_24A4ABCE0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      osloga = swift_slowAlloc();
      v34 = osloga;
      *v27 = 136315138;

      sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
      v28 = sub_24A4AB870();
      v30 = v5;
      v31 = sub_24A37BD58(v28, v29, &v34);

      *(v27 + 4) = v31;
      v5 = v30;
      _os_log_impl(&dword_24A376000, v25, v26, "FMFGarbageCollector: saveFmfPersonID new: %s", v27, 0xCu);
      sub_24A37EEE0(osloga);
      MEMORY[0x24C219130](osloga, -1, -1);
      MEMORY[0x24C219130](v27, -1, -1);
    }

    (*(v11 + 16))(v5, v7, ObjectType, v11);
    return;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);
  oslog = sub_24A4AB600();
  v9 = sub_24A4ABCC0();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24A376000, oslog, v9, "FMFGarbageCollector: saveFmfPersonID - error retrieving primary account", v10, 2u);
    MEMORY[0x24C219130](v10, -1, -1);
  }
}

uint64_t sub_24A49BA0C(void *a1)
{
  v2 = v1;
  v4 = sub_24A4AB690();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A4AB6E0();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 48);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_24A49CA90;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8BFF8;
  v12 = _Block_copy(aBlock);
  v13 = v10;

  v14 = a1;
  sub_24A4AB6B0();
  v19 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v9, v6, v12);
  _Block_release(v12);

  (*(v18 + 8))(v6, v4);
  (*(v7 + 8))(v9, v17);
}

void sub_24A49BCDC(uint64_t a1, void *a2)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A4AB630();
  sub_24A378E18(v4, qword_27EF4E260);

  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(a1 + 25);

    _os_log_impl(&dword_24A376000, v5, v6, "FMFGarbageCollector: scheduleAccountVerification alreadyPending?: %{BOOL}d", v7, 8u);
    MEMORY[0x24C219130](v7, -1, -1);

    if (*(a1 + 25))
    {
      return;
    }
  }

  else
  {

    if (*(a1 + 25))
    {
      return;
    }
  }

  if (*(a1 + 40))
  {
    v8 = [a2 userInfo];
    if (!v8)
    {
      return;
    }

    v9 = v8;
    v10 = sub_24A4AB780();

    v16 = sub_24A4AB850();
    v17 = v11;
    sub_24A4ABEE0();
    if (!*(v10 + 16) || (v12 = sub_24A4301B8(v18), (v13 & 1) == 0))
    {

      sub_24A431860(v18);
      return;
    }

    sub_24A37EE84(*(v10 + 56) + 32 * v12, v19);
    sub_24A431860(v18);

    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v14 = *(a1 + 40);
    if (!v14)
    {

      return;
    }

    if (v16 == *(a1 + 32) && v14 == v17)
    {
    }

    else
    {
      v15 = sub_24A4AC270();

      if ((v15 & 1) == 0)
      {
        return;
      }
    }
  }

  sub_24A49BFA4();
}

uint64_t sub_24A49BFA4()
{
  v1 = v0;
  v2 = sub_24A4AB690();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A4AB6E0();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24A4AB700();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = sub_24A4AB6A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 25) = 1;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);
  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCE0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v1;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24A376000, v17, v18, "FMFGarbageCollector: Dispatching verification on background", v20, 2u);
    v21 = v20;
    v1 = v19;
    MEMORY[0x24C219130](v21, -1, -1);
  }

  sub_24A3785D4();
  (*(v13 + 104))(v15, *MEMORY[0x277D851A8], v12);
  v30 = sub_24A4ABDA0();
  (*(v13 + 8))(v15, v12);
  sub_24A4AB6F0();
  v22 = v11;
  sub_24A4AB720();
  v31 = *(v6 + 8);
  v23 = v32;
  v31(v8, v32);
  aBlock[4] = sub_24A49CA88;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8BFA8;
  v24 = _Block_copy(aBlock);

  v25 = v33;
  sub_24A4AB6B0();
  v39 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v26 = v34;
  v27 = v38;
  sub_24A4ABE90();
  v28 = v30;
  MEMORY[0x24C218130](v22, v25, v26, v24);
  _Block_release(v24);

  (*(v37 + 8))(v26, v27);
  (*(v35 + 8))(v25, v36);
  v31(v22, v23);
}

void sub_24A49C4E0(uint64_t a1)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFGarbageCollector: Async verifying account", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  sub_24A37C2D8();
  *(a1 + 25) = 0;
}

void sub_24A49C5C8()
{
  v32[3] = *MEMORY[0x277D85DE8];
  if (*(v0 + 24) == 1)
  {
    v1 = [objc_opt_self() defaultManager];
    v30 = *(v0 + 72);
    v31 = v1;
    v29 = *(v30 + 16);
    if (!v29)
    {
LABEL_28:
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_24A43EDA8();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    v2 = 0;
    while (v2 < *(v30 + 16))
    {
      v3 = v30 + 32 + 16 * v2;
      v5 = *v3;
      v4 = *(v3 + 8);

      v6 = sub_24A4AB820();
      v32[0] = 0;
      v7 = [v31 contentsOfDirectoryAtPath:v6 error:v32];

      v8 = v32[0];
      if (v7)
      {
        v9 = sub_24A4ABA70();
        v10 = v8;

        v11 = *(v9 + 16);
        if (v11)
        {
          v12 = 0;
          v13 = (v9 + 40);
          while (v12 < *(v9 + 16))
          {
            v15 = *(v13 - 1);
            v14 = *v13;
            v32[0] = v5;
            v32[1] = v4;

            MEMORY[0x24C217D50](v15, v14);

            v16 = sub_24A4AB820();

            v32[0] = 0;
            v17 = [v31 removeItemAtPath:v16 error:v32];

            if (!v17)
            {
              v19 = v32[0];

              goto LABEL_16;
            }

            ++v12;
            v18 = v32[0];
            v13 += 2;
            if (v11 == v12)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
          break;
        }

LABEL_4:
      }

      else
      {
        v19 = v32[0];
LABEL_16:

        v20 = sub_24A4AA950();

        swift_willThrow();
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v21 = sub_24A4AB630();
        sub_24A378E18(v21, qword_27EF4E260);
        v22 = sub_24A4AB600();
        v23 = sub_24A4ABCC0();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_24A376000, v22, v23, "FMFGarbageCollector: Error deleting file", v24, 2u);
          MEMORY[0x24C219130](v24, -1, -1);
        }
      }

      if (++v2 == v29)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (qword_27EF3EBF8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v25 = sub_24A4AB630();
  sub_24A378E18(v25, qword_27EF4E260);
  v26 = sub_24A4AB600();
  v27 = sub_24A4ABCE0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_24A376000, v26, v27, "FMFGarbageCollector: Not purging files since not using cache", v28, 2u);
    MEMORY[0x24C219130](v28, -1, -1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A43EDA8();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_24A49CA30()
{

  sub_24A3C8470(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_24A49CA98()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
}

FMFCore::InitialTabInfo __swiftcall InitialTabInfo.init()()
{
  v1 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  v0[1] = v1;
  v0[2] = v1;
  return result;
}

uint64_t sub_24A49CAC0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x626C6C614378616DLL;
  }

  else
  {
    v2 = 0x626C6C61436E696DLL;
  }

  if (*a2)
  {
    v3 = 0x626C6C614378616DLL;
  }

  else
  {
    v3 = 0x626C6C61436E696DLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24A4AC270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24A49CB54()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A49CBD8(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A49CC48(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A49CCC8@<X0>(char *a2@<X8>)
{
  v3 = sub_24A4AC0C0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24A49CD28(uint64_t *a1@<X8>)
{
  v2 = 0x626C6C61436E696DLL;
  if (*v1)
  {
    v2 = 0x626C6C614378616DLL;
  }

  *a1 = v2;
  a1[1] = 0xEB000000006B6361;
}

uint64_t sub_24A49CD68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24A49CDB0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24A49CDF0()
{
  sub_24A3A6C84(v0 + qword_27EF4E2F0);

  v1 = *(v0 + qword_27EF4E310);
  v2 = *(v0 + qword_27EF4E310 + 8);
  v3 = *(v0 + qword_27EF4E310 + 16);

  return sub_24A49D054(v1, v2, v3);
}

uint64_t sub_24A49CE68()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24A3A6C84(v0 + qword_27EF4E2F0);

  sub_24A49D054(*(v0 + qword_27EF4E310), *(v0 + qword_27EF4E310 + 8), *(v0 + qword_27EF4E310 + 16));
  return v0;
}

uint64_t sub_24A49CF90()
{
  sub_24A49CE68();

  return swift_deallocClassInstance();
}

unint64_t sub_24A49D000()
{
  result = qword_27EF40D18;
  if (!qword_27EF40D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D18);
  }

  return result;
}

uint64_t sub_24A49D054(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

id sub_24A49D0A0()
{
  qword_27EF40D48 = [objc_opt_self() sharedInstance];
  result = [objc_opt_self() standardUserDefaults];
  qword_27EF40D50 = result;
  return result;
}

id static FMUserDefaults.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EF3EC48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27EF40D48;
  v1 = qword_27EF40D50;
  v6 = qword_27EF40D50;
  *a1 = qword_27EF40D48;
  a1[1] = v1;
  v3 = v2;

  return v6;
}

Swift::Bool __swiftcall FMUserDefaults.BOOL(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  v3 = [*v1 isInternalBuild];
  if (v3)
  {
    v4 = sub_24A4AB820();
    v5 = [v2 BOOLForKey_];

    LOBYTE(v3) = v5;
  }

  return v3;
}

Swift::String_optional __swiftcall FMUserDefaults.string(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if ([*v1 isInternalBuild] && (v3 = sub_24A4AB820(), v4 = objc_msgSend(v2, sel_stringForKey_, v3), v3, v4))
  {
    v5 = sub_24A4AB850();
    v7 = v6;

    v8 = v7;
    v9 = v5;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v9;
  return result;
}

Swift::Int_optional __swiftcall FMUserDefaults.int(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if ([*v1 isInternalBuild])
  {
    v3 = sub_24A4AB820();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_24A4AB850();
      v7 = v6;

      v9 = HIBYTE(v7) & 0xF;
      v10 = v5 & 0xFFFFFFFFFFFFLL;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v11 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          v34 = 0;
          v13 = sub_24A49D860(v5, v7, 10);
          v31 = v32;
LABEL_65:

          if (v31)
          {
            v8 = 0;
          }

          else
          {
            v8 = v13;
          }

          goto LABEL_70;
        }

        if ((v7 & 0x2000000000000000) != 0)
        {
          v33[0] = v5;
          v33[1] = v7 & 0xFFFFFFFFFFFFFFLL;
          if (v5 == 43)
          {
            if (v9)
            {
              if (--v9)
              {
                v13 = 0;
                v23 = v33 + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    break;
                  }

                  v25 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    break;
                  }

                  v13 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    break;
                  }

                  ++v23;
                  if (!--v9)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

          if (v5 != 45)
          {
            if (v9)
            {
              v13 = 0;
              v28 = v33;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  break;
                }

                ++v28;
                if (!--v9)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v9)
          {
            if (--v9)
            {
              v13 = 0;
              v17 = v33 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  break;
                }

                v19 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v19 - v18;
                if (__OFSUB__(v19, v18))
                {
                  break;
                }

                ++v17;
                if (!--v9)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v8 = sub_24A4ABF90();
          }

          v12 = *v8;
          if (v12 == 43)
          {
            if (v10 >= 1)
            {
              v9 = v10 - 1;
              if (v10 != 1)
              {
                v13 = 0;
                if (v8)
                {
                  v20 = v8 + 1;
                  while (1)
                  {
                    v21 = *v20 - 48;
                    if (v21 > 9)
                    {
                      goto LABEL_63;
                    }

                    v22 = 10 * v13;
                    if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v13 = v22 + v21;
                    if (__OFADD__(v22, v21))
                    {
                      goto LABEL_63;
                    }

                    ++v20;
                    if (!--v9)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_75;
          }

          if (v12 != 45)
          {
            if (v10)
            {
              v13 = 0;
              if (v8)
              {
                while (1)
                {
                  v26 = *v8 - 48;
                  if (v26 > 9)
                  {
                    goto LABEL_63;
                  }

                  v27 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v13 = v27 + v26;
                  if (__OFADD__(v27, v26))
                  {
                    goto LABEL_63;
                  }

                  ++v8;
                  if (!--v10)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            v13 = 0;
            LOBYTE(v9) = 1;
            goto LABEL_64;
          }

          if (v10 >= 1)
          {
            v9 = v10 - 1;
            if (v10 != 1)
            {
              v13 = 0;
              if (v8)
              {
                v14 = v8 + 1;
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_63;
                  }

                  v16 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v13 = v16 - v15;
                  if (__OFSUB__(v16, v15))
                  {
                    goto LABEL_63;
                  }

                  ++v14;
                  if (!--v9)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v9) = 0;
LABEL_64:
              v34 = v9;
              v31 = v9;
              goto LABEL_65;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }
    }
  }

  v8 = 0;
  v31 = 1;
LABEL_70:
  LOBYTE(v10) = v31 & 1;
LABEL_77:
  result.is_nil = v10;
  result.value = v8;
  return result;
}

Swift::Double_optional __swiftcall FMUserDefaults.double(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if ([*v1 isInternalBuild] && (v4 = sub_24A4AB820(), v5 = objc_msgSend(v2, sel_stringForKey_, v4), v4, v5))
  {
    v6 = sub_24A4AB850();
    v8 = v7;

    v11 = 0;
    v9 = sub_24A49E260(v6, v8, &v11);

    v10 = v9 && v11;
  }

  else
  {
    v10 = 0;
  }

  result.value = v3;
  result.is_nil = v10;
  return result;
}

void FMUserDefaults.set(value:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  if ([*v3 isInternalBuild])
  {
    sub_24A49E358(a1, v14);
    v6 = v15;
    if (v15)
    {
      v7 = sub_24A37EACC(v14, v15);
      v8 = *(v6 - 8);
      v9 = MEMORY[0x28223BE20](v7);
      v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = sub_24A4AC260();
      (*(v8 + 8))(v11, v6);
      sub_24A37EEE0(v14);
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_24A4AB820();
    [v5 setValue:v12 forKey:v13];
    swift_unknownObjectRelease();
  }
}

unsigned __int8 *sub_24A49D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24A4AB9F0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24A49DDEC(result, v5);
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
      result = sub_24A4ABF90();
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

uint64_t sub_24A49DDEC(uint64_t a1, unint64_t a2)
{
  v2 = sub_24A4ABA00();
  v6 = sub_24A49DE6C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_24A49DE6C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24A4ABE00();
    if (!v9 || (v10 = v9, v11 = sub_24A37D828(v9, 0), v12 = sub_24A49DFC4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_24A4AB8E0();

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
      return sub_24A4AB8E0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24A4ABF90();
LABEL_4:

  return sub_24A4AB8E0();
}

unint64_t sub_24A49DFC4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_24A49E1E4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24A4AB9A0();
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
          result = sub_24A4ABF90();
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

    result = sub_24A49E1E4(v12, a6, a7);
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

    result = sub_24A4AB980();
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

unint64_t sub_24A49E1E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24A4AB9B0();
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
    v5 = MEMORY[0x24C217DA0](15, a1 >> 16);
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

BOOL sub_24A49E260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_24A4ABF30();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_24A49E358(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F808, &unk_24A4BA6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_24A49E3C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24A49E3D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24A49E41C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_24A49E468@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t type metadata accessor for FMFRemoveLabelsRequest(uint64_t a1)
{
  result = qword_27EF40D58;
  if (!qword_27EF40D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A49E584()
{
  v1 = *(v0 + qword_27EF4E330);
  v3[3] = sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  v3[0] = v1;
  swift_beginAccess();

  sub_24A3A6CEC(v3, 0x736C6562616CLL, 0xE600000000000000);
  return swift_endAccess();
}

uint64_t sub_24A49E634()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_24A49E714()
{
  sub_24A49E634();

  return swift_deallocClassInstance();
}

uint64_t static FMSystemInfo.isKoreaSKU()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  if (v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_24A4AB820();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v5 = sub_24A4AB630();
      sub_24A378E18(v5, qword_27EF4E260);
      v6 = sub_24A4AB600();
      v7 = sub_24A4ABCE0();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24A376000, v6, v7, "SystemInfo simulating Korea SKU device.", v8, 2u);
        MEMORY[0x24C219130](v8, -1, -1);
      }

      return 1;
    }
  }

  if (sub_24A49E940() == 18507 && v9 == 0xE200000000000000)
  {

    return 1;
  }

  v11 = sub_24A4AC270();

  return v11 & 1;
}

uint64_t sub_24A49E940()
{
  sub_24A49EB94(v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }
  }

  else
  {
    sub_24A3A83C8(v2);
  }

  return 0;
}

uint64_t static FMSystemInfo.isChinaSKU()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isInternalBuild];

  if (v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_24A4AB820();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v5 = sub_24A4AB630();
      sub_24A378E18(v5, qword_27EF4E260);
      v6 = sub_24A4AB600();
      v7 = sub_24A4ABCE0();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24A376000, v6, v7, "SystemInfo simulating China SKU device.", v8, 2u);
        MEMORY[0x24C219130](v8, -1, -1);
      }

      return 1;
    }
  }

  if (sub_24A49E940() == 18499 && v9 == 0xE200000000000000)
  {

    return 1;
  }

  v11 = sub_24A4AC270();

  return v11 & 1;
}

double sub_24A49EB94@<D0>(uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = sub_24A4AB820();
  v5 = MGCopyAnswerWithError();

  if (v5)
  {
    *(a3 + 24) = swift_getObjectType();
    *a3 = v5;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t FMFAddress.displayAddress.getter()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[12];
  v7 = v0[17];
  v6 = v0[18];
  if (v5 && (v8 = v0[11], sub_24A4AB910() >= 1))
  {

    if (!v3)
    {
      goto LABEL_4;
    }
  }

  else
  {

    v8 = v7;
    v5 = v6;
    if (!v3)
    {
LABEL_4:
      if (!v5)
      {
        if (!v1)
        {
          goto LABEL_6;
        }

LABEL_14:

        v8 = v2;
        v5 = v1;
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  if (!v5)
  {
    goto LABEL_21;
  }

  if (v4 == v8 && v3 == v5 || (sub_24A4AC270() & 1) != 0)
  {

    if (!v1)
    {
LABEL_6:
      if (!v3)
      {
        return v3;
      }

      goto LABEL_21;
    }

    goto LABEL_14;
  }

LABEL_15:
  v9 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    type metadata accessor for FMLocalize();
    if (v3)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = objc_opt_self();

      v12 = [v11 bundleForClass_];
      sub_24A4AA800();

      sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_24A4BB330;
      v14 = MEMORY[0x277D837D0];
      *(v13 + 56) = MEMORY[0x277D837D0];
      v15 = sub_24A3ABD70();
      *(v13 + 32) = v4;
      *(v13 + 40) = v3;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v8;
      *(v13 + 80) = v5;
    }

    else
    {
      v21 = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      sub_24A4AA800();

      sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24A4B4E10;
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_24A3ABD70();
      *(v23 + 32) = v8;
      *(v23 + 40) = v5;
    }

    goto LABEL_22;
  }

  if (!v3)
  {
    return v3;
  }

LABEL_21:
  type metadata accessor for FMLocalize();
  v16 = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();

  v18 = [v17 bundleForClass_];
  sub_24A4AA800();

  sub_24A3C9CEC(&qword_27EF3F360, &qword_24A4BA1B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24A4B4E10;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_24A3ABD70();
  *(v19 + 32) = v4;
  *(v19 + 40) = v3;
LABEL_22:
  v3 = sub_24A4AB860();

  return v3;
}

uint64_t FMFAddress.fmlPlacemark.getter()
{

  return sub_24A4AB590();
}

id FMFAddress.placemark.getter()
{
  v1 = v0[2];
  v14 = v0[6];
  v2 = v0[8];
  v3 = v0[10];
  v4 = v0[12];
  v5 = v0[18];
  v6 = [objc_allocWithZone(MEMORY[0x277D07BD0]) init];
  if (v3)
  {
    v7 = sub_24A4AB820();
    [v6 setLocality_];
  }

  if (v5)
  {
    v8 = sub_24A4AB820();
    [v6 setAdministrativeArea_];
  }

  if (v1)
  {
    v9 = sub_24A4AB820();
    [v6 setCountry_];
  }

  if (v4)
  {
    v10 = sub_24A4AB820();
    [v6 setState_];
  }

  if (v2)
  {
    v11 = sub_24A4AB820();
    [v6 setStreetAddress_];
  }

  if (v14)
  {
    v12 = sub_24A4AB820();
    [v6 setStreetName_];
  }

  return v6;
}

__n128 FMFAddress.init(formattedAddressLines:country:countryCode:streetName:streetAddress:locality:stateCode:postalCode:landmark:administrativeArea:areaOfInterest:fullThoroughfare:mapFormattedAddress:coarseAddressModern:streetAddressModern:smallAddressModern:mediumAddressModern:largeAddressModern:poiAddressModern:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __n128 a23, uint64_t a24)
{
  result = a23;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 144) = a15;
  *(a9 + 168) = a16;
  *(a9 + 184) = a17;
  *(a9 + 200) = a18;
  *(a9 + 216) = a19;
  *(a9 + 232) = a20;
  *(a9 + 248) = a21;
  *(a9 + 264) = a22;
  *(a9 + 280) = a23;
  *(a9 + 296) = a24;
  return result;
}

uint64_t FMFAddress.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = sub_24A4AB5A0();
  *(a2 + 80) = v4;
  *(a2 + 136) = sub_24A4AB560();
  *(a2 + 144) = v5;
  *(a2 + 8) = sub_24A4AB580();
  *(a2 + 16) = v6;
  *(a2 + 88) = sub_24A4AB5B0();
  *(a2 + 96) = v7;
  *(a2 + 56) = sub_24A4AB550();
  *(a2 + 64) = v8;
  *(a2 + 40) = sub_24A4AB500();
  *(a2 + 48) = v9;
  *a2 = sub_24A4AB570();
  *(a2 + 208) = sub_24A4AB530();
  *(a2 + 216) = v10;
  *(a2 + 288) = sub_24A4AB4F0();
  *(a2 + 296) = v11;
  *(a2 + 240) = sub_24A4AB520();
  *(a2 + 248) = v12;
  *(a2 + 256) = sub_24A4AB540();
  *(a2 + 264) = v13;
  *(a2 + 272) = sub_24A4AB510();
  *(a2 + 280) = v14;
  v15 = sub_24A4AB5D0();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  result = (*(*(v15 - 8) + 8))(a1, v15);
  *(a2 + 168) = MEMORY[0x277D84F90];
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  return result;
}

double FMFAddress.init(mapItem:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 geoAddress];
  v5 = [v4 structuredAddress];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 locality];
    if (v7)
    {
      v8 = v7;
      v81 = sub_24A4AB850();
      v82 = v9;
    }

    else
    {
      v81 = 0;
      v82 = 0;
    }

    v10 = [v6 administrativeArea];
    if (v10)
    {
      v11 = v10;
      v12 = sub_24A4AB850();
      v79 = v13;
      v80 = v12;
    }

    else
    {
      v79 = 0;
      v80 = 0;
    }

    v14 = [v6 subAdministrativeArea];
    if (v14)
    {
      v15 = v14;
      v16 = sub_24A4AB850();
      v77 = v17;
      v78 = v16;
    }

    else
    {
      v77 = 0;
      v78 = 0;
    }

    v18 = [v6 country];
    if (v18)
    {
      v19 = v18;
      v75 = sub_24A4AB850();
      v76 = v20;
    }

    else
    {
      v75 = 0;
      v76 = 0;
    }

    v21 = [v6 administrativeAreaCode];
    if (v21)
    {
      v22 = v21;
      v73 = sub_24A4AB850();
      v74 = v23;
    }

    else
    {
      v73 = 0;
      v74 = 0;
    }

    v24 = [v6 postCode];
    if (v24)
    {
      v25 = v24;
      v26 = sub_24A4AB850();
      v71 = v27;
      v72 = v26;

      goto LABEL_21;
    }
  }

  else
  {
    v80 = 0;
    v73 = 0;
    v74 = 0;
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
  }

  v71 = 0;
  v72 = 0;
LABEL_21:
  v28 = [a1 name];
  if (v28)
  {
    v29 = v28;
    v30 = sub_24A4AB850();
    v69 = v31;
    v70 = v30;

    v32 = &off_278FE1000;
    if (v6)
    {
      goto LABEL_23;
    }

LABEL_26:
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_34;
  }

  v69 = 0;
  v70 = 0;
  v32 = &off_278FE1000;
  if (!v6)
  {
    goto LABEL_26;
  }

LABEL_23:
  v33 = [v6 thoroughfare];
  if (v33)
  {
    v34 = v33;
    v67 = sub_24A4AB850();
    v68 = v35;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v36 = [v6 v32[386]];
  if (v36)
  {
    v37 = v36;
    v65 = sub_24A4AB850();
    v66 = v38;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  v39 = [v6 countryCode];
  if (!v39)
  {
LABEL_34:
    v63 = 0;
    v64 = 0;
    if (!v4)
    {
      goto LABEL_37;
    }

LABEL_35:
    v43 = [v4 formattedAddressLines];
    if (v43)
    {
      v44 = v43;
      sub_24A4ABA60();
    }

    goto LABEL_37;
  }

  v40 = v39;
  v41 = sub_24A4AB850();
  v63 = v42;
  v64 = v41;

  if (v4)
  {
    goto LABEL_35;
  }

LABEL_37:
  v45 = [a1 geoAddress];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 structuredAddress];

    if (v47)
    {
      v48 = [v47 areaOfInterests];

      if (v48)
      {
        sub_24A4ABA60();
      }
    }
  }

  v49 = MEMORY[0x277D84F90];
  v50 = [a1 geoAddress];
  if (!v50)
  {
    goto LABEL_45;
  }

  v51 = v50;
  v52 = [v50 structuredAddress];

  if (!v52)
  {
LABEL_46:
    v55 = 0;
    goto LABEL_47;
  }

  v53 = [v52 v32[386]];

  if (!v53)
  {
LABEL_45:
    v52 = 0;
    goto LABEL_46;
  }

  v52 = sub_24A4AB850();
  v55 = v54;

LABEL_47:
  v56 = [a1 addressObject];
  if (v56 && (v57 = v56, v58 = [v56 fullAddressNoCurrentCountryWithMultiline_], v57, v58))
  {
    v59 = sub_24A4AB850();
    v61 = v60;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v59 = 0;
    v61 = 0;
  }

  *a2 = 0;
  *(a2 + 8) = v75;
  *(a2 + 16) = v76;
  *(a2 + 24) = v64;
  *(a2 + 32) = v63;
  *(a2 + 40) = v67;
  *(a2 + 48) = v68;
  *(a2 + 56) = v65;
  *(a2 + 64) = v66;
  *(a2 + 72) = v81;
  *(a2 + 80) = v82;
  *(a2 + 88) = v73;
  *(a2 + 96) = v74;
  *(a2 + 104) = v72;
  *(a2 + 112) = v71;
  *(a2 + 120) = v70;
  *(a2 + 128) = v69;
  *(a2 + 136) = v80;
  *(a2 + 144) = v79;
  *(a2 + 152) = v78;
  *(a2 + 160) = v77;
  *(a2 + 168) = v49;
  *(a2 + 176) = v52;
  *(a2 + 184) = v55;
  *(a2 + 192) = v59;
  *(a2 + 200) = v61;
  result = 0.0;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  return result;
}

FMFCore::FMFAddressLevelType_optional __swiftcall FMFAddressLevelType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FMFAddress.country.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FMFAddress.countryCode.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FMFAddress.streetName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FMFAddress.streetAddress.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t FMFAddress.locality.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t FMFAddress.stateCode.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t FMFAddress.postalCode.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t FMFAddress.landmark.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t FMFAddress.administrativeArea.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t FMFAddress.subAdministrativeArea.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t FMFAddress.fullThoroughfare.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t FMFAddress.mapFormattedAddress.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t FMFAddress.coarseAddressModern.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t FMFAddress.streetAddressModern.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t FMFAddress.smallAddressModern.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t FMFAddress.mediumAddressModern.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t FMFAddress.largeAddressModern.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t FMFAddress.poiAddressModern.getter()
{
  v1 = *(v0 + 288);

  return v1;
}

uint64_t sub_24A49FEC8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A3C1AE4(*a1);
  v5 = v4;
  if (v3 == sub_24A3C1AE4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A49FF50()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A3C1AE4(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A49FFB4(uint64_t a1)
{
  sub_24A3C1AE4(*v1);
  sub_24A4AB8F0();
}

uint64_t sub_24A4A0008(uint64_t a1)
{
  v2 = *v1;
  sub_24A4AC360();
  sub_24A3C1AE4(v2);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A4A0068@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A4A245C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A4A0098@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A3C1AE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A4A00C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A4A245C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A4A00F8(uint64_t a1)
{
  v2 = sub_24A3C1E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFAddress.displayAddressWithStreetName.getter()
{
  v1 = *v0;
  v2 = v0[5];
  if (*v0 && *(v1 + 16))
  {
    v2 = *(v1 + 32);
  }

  return v2;
}

uint64_t FMFAddress.displayAddressWithoutStreetName.getter()
{
  v1 = *v0;
  v2 = v0[7];
  if (*v0 && *(v1 + 16) >= 2uLL)
  {
    v2 = *(v1 + 48);
  }

  return v2;
}

uint64_t FMFAddress.formattedAddress.getter()
{
  v3 = *v0;
  v2 = v0 + 1;
  v1 = v3;
  if (v3 && *(v1 + 16))
  {
    sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
    sub_24A4A2718();
    return sub_24A4AB800();
  }

  memcpy(v11, v2, sizeof(v11));
  v5 = FMFAddress.postalAddress.getter();
  v6 = _s7FMFCore10FMFAddressV21formattedAddressLines3forSaySSGSgSo08CNPostalD0C_tFZ_0(v5);

  if (v6)
  {
    if (*(v6 + 2))
    {
      sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
      sub_24A4A2718();
      v7 = sub_24A4AB800();

      return v7;
    }
  }

  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_24A4AA800();

  return v10;
}

id FMFAddress.postalAddress.getter()
{
  v1 = v0[2];
  v20 = v0[4];
  v2 = v0[8];
  v3 = v0[10];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[18];
  v7 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  if (v2)
  {
    v8 = sub_24A4AB820();
    [v7 setStreet_];
  }

  if (v3)
  {
    v9 = sub_24A4AB820();
    [v7 setCity_];
  }

  if (!v4)
  {
LABEL_13:
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = [v7 city];
  v11 = sub_24A4AB850();
  v13 = v12;

  if (v5 == v11 && v4 == v13)
  {

    goto LABEL_13;
  }

  v15 = sub_24A4AC270();

  if (v15)
  {
    goto LABEL_13;
  }

LABEL_14:
  v16 = sub_24A4AB820();
  [v7 setState_];

LABEL_15:
  if (v1)
  {
    v17 = sub_24A4AB820();
    [v7 setCountry_];
  }

  if (v20)
  {
    v18 = sub_24A4AB820();
    [v7 setISOCountryCode_];
  }

  return v7;
}

void FMFAddress.levelType.getter(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[8];
  v4 = v1[10];
  v5 = v1[18];
  if (v3 && ((v3 & 0x2000000000000000) != 0 ? (v6 = HIBYTE(v3) & 0xF) : (v6 = v1[7] & 0xFFFFFFFFFFFFLL), v6))
  {
    *a1 = 1;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_15;
    }

    v7 = v1[9] & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v4) & 0xF;
    }

    if (v7)
    {
      *a1 = 2;
    }

    else
    {
      if (!v5)
      {
        goto LABEL_20;
      }

LABEL_15:
      v8 = v1[17] & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      if (v8)
      {
        *a1 = 3;
      }

      else
      {
        if (!v2)
        {
          goto LABEL_22;
        }

LABEL_20:
        v9 = v1[1] & 0xFFFFFFFFFFFFLL;
        if ((v2 & 0x2000000000000000) != 0)
        {
          v9 = HIBYTE(v2) & 0xF;
        }

        if (v9)
        {
          *a1 = 4;
        }

        else
        {
LABEL_22:
          *a1 = 0;
        }
      }
    }
  }
}

double FMFAddress.init(formattedAddressLines:country:countryCode:streetName:streetAddress:locality:stateCode:postalCode:landmark:administrativeArea:areaOfInterest:fullThoroughfare:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, __int128 a16, uint64_t a17)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 144) = a15;
  *(a9 + 168) = a16;
  *(a9 + 184) = a17;
  result = 0.0;
  *(a9 + 272) = 0u;
  *(a9 + 288) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 192) = 0u;
  return result;
}

uint64_t FMFAddress.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF40D68, &qword_24A4BCAA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v66 - v7;
  sub_24A37EACC(a1, a1[3]);
  sub_24A3C1E10();
  sub_24A4AC3C0();
  if (v2)
  {
    v9 = a1;
  }

  else
  {
    v101 = a1;
    sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
    v102 = 0;
    sub_24A382908(&qword_27EF3F110, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_24A4AC160();
    v99 = v103;
    LOBYTE(v103) = 1;
    v10 = sub_24A4AC120();
    v97 = v11;
    v98 = v10;
    LOBYTE(v103) = 2;
    v12 = sub_24A4AC120();
    v95 = v13;
    v96 = v12;
    LOBYTE(v103) = 3;
    v14 = sub_24A4AC120();
    v93 = v15;
    v94 = v14;
    LOBYTE(v103) = 4;
    v16 = sub_24A4AC120();
    v91 = v17;
    v92 = v16;
    LOBYTE(v103) = 5;
    v18 = sub_24A4AC120();
    v89 = v19;
    v90 = v18;
    LOBYTE(v103) = 6;
    v20 = sub_24A4AC120();
    v87 = v21;
    v88 = v20;
    LOBYTE(v103) = 7;
    v22 = sub_24A4AC120();
    v85 = v23;
    v86 = v22;
    LOBYTE(v103) = 8;
    v24 = sub_24A4AC120();
    v83 = v25;
    v84 = v24;
    LOBYTE(v103) = 9;
    v26 = sub_24A4AC120();
    v81 = v27;
    v82 = v26;
    LOBYTE(v103) = 10;
    v28 = sub_24A4AC120();
    v79 = v29;
    v80 = v28;
    v102 = 11;
    sub_24A4AC160();
    v78 = v103;
    LOBYTE(v103) = 12;
    v30 = sub_24A4AC120();
    v76 = v31;
    v77 = v30;
    LOBYTE(v103) = 13;
    v32 = sub_24A4AC120();
    v74 = v33;
    v75 = v32;
    LOBYTE(v103) = 14;
    v34 = sub_24A4AC120();
    v72 = v35;
    v73 = v34;
    LOBYTE(v103) = 15;
    v36 = sub_24A4AC120();
    v70 = v37;
    v71 = v36;
    LOBYTE(v103) = 16;
    v38 = sub_24A4AC120();
    v100 = v6;
    v68 = v39;
    v69 = v38;
    LOBYTE(v103) = 17;
    v40 = sub_24A4AC120();
    v42 = v41;
    v67 = v40;
    LOBYTE(v103) = 18;
    v43 = sub_24A4AC120();
    v45 = v44;
    LOBYTE(v103) = 19;
    v46 = sub_24A4AC120();
    v48 = v47;
    (*(v100 + 8))(v8, v5);
    v49 = v98;
    *a2 = v99;
    a2[1] = v49;
    v50 = v96;
    a2[2] = v97;
    a2[3] = v50;
    v51 = v94;
    a2[4] = v95;
    a2[5] = v51;
    v52 = v92;
    a2[6] = v93;
    a2[7] = v52;
    v53 = v90;
    a2[8] = v91;
    a2[9] = v53;
    v54 = v88;
    a2[10] = v89;
    a2[11] = v54;
    v55 = v86;
    a2[12] = v87;
    a2[13] = v55;
    v56 = v84;
    a2[14] = v85;
    a2[15] = v56;
    v57 = v82;
    a2[16] = v83;
    a2[17] = v57;
    v58 = v80;
    a2[18] = v81;
    a2[19] = v58;
    v59 = v78;
    a2[20] = v79;
    a2[21] = v59;
    v60 = v76;
    a2[22] = v77;
    a2[23] = v60;
    v61 = v74;
    a2[24] = v75;
    a2[25] = v61;
    v62 = v72;
    a2[26] = v73;
    a2[27] = v62;
    v63 = v70;
    a2[28] = v71;
    a2[29] = v63;
    v64 = v68;
    a2[30] = v69;
    a2[31] = v64;
    a2[32] = v67;
    a2[33] = v42;
    a2[34] = v43;
    a2[35] = v45;
    a2[36] = v46;
    a2[37] = v48;
    v9 = v101;
  }

  return sub_24A37EEE0(v9);
}

double FMFAddress.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 postalAddress];
  if (v4)
  {
    v5 = v4;
    v6 = _s7FMFCore10FMFAddressV21formattedAddressLines3forSaySSGSgSo08CNPostalD0C_tFZ_0(v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 country];
  if (v7)
  {
    v8 = v7;
    v9 = sub_24A4AB850();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a1 ISOcountryCode];
  if (v12)
  {
    v13 = v12;
    v14 = sub_24A4AB850();
    v83 = v15;
  }

  else
  {
    v14 = 0;
    v83 = 0;
  }

  v16 = [a1 postalAddress];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 street];

    v19 = sub_24A4AB850();
    v81 = v20;
    v82 = v19;
  }

  else
  {
    v81 = 0;
    v82 = 0;
  }

  v21 = [a1 thoroughfare];
  if (v21)
  {
    v22 = v21;
    v23 = sub_24A4AB850();
    v79 = v24;
    v80 = v23;
  }

  else
  {
    v79 = 0;
    v80 = 0;
  }

  v25 = [a1 locality];
  if (v25)
  {
    v26 = v25;
    v27 = sub_24A4AB850();
    v77 = v28;
    v78 = v27;
  }

  else
  {
    v77 = 0;
    v78 = 0;
  }

  v29 = [a1 postalCode];
  if (v29)
  {
    v30 = v29;
    v31 = sub_24A4AB850();
    v75 = v32;
    v76 = v31;
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  v33 = [a1 postalCode];
  if (v33)
  {
    v34 = v33;
    v35 = sub_24A4AB850();
    v73 = v36;
    v74 = v35;
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v37 = [a1 name];
  if (v37)
  {
    v38 = v37;
    v39 = sub_24A4AB850();
    v71 = v40;
    v72 = v39;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v41 = [a1 administrativeArea];
  if (v41)
  {
    v42 = v41;
    v43 = sub_24A4AB850();
    v69 = v44;
    v70 = v43;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v45 = [a1 subAdministrativeArea];
  if (v45)
  {
    v46 = v45;
    v47 = sub_24A4AB850();
    v67 = v48;
    v68 = v47;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v49 = [a1 areasOfInterest];
  if (v49)
  {
    v50 = v49;
    v66 = sub_24A4ABA70();
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v51 = [a1 fullThoroughfare];
  if (v51)
  {
    v52 = v51;
    v53 = sub_24A4AB850();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  v56 = [a1 _geoMapItem];
  if (v56)
  {
    v57 = [v56 addressObject];
    swift_unknownObjectRelease();
    if (v57)
    {
      v65 = v14;
      v58 = v11;
      v59 = v9;
      v60 = v6;
      v61 = [v57 fullAddressNoCurrentCountryWithMultiline_];

      if (v61)
      {
        v57 = sub_24A4AB850();
        v63 = v62;
      }

      else
      {

        v57 = 0;
        v63 = 0;
      }

      v6 = v60;
      v9 = v59;
      v11 = v58;
      v14 = v65;
    }

    else
    {

      v63 = 0;
    }
  }

  else
  {

    v57 = 0;
    v63 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 32) = v83;
  *(a2 + 40) = v82;
  *(a2 + 48) = v81;
  *(a2 + 56) = v80;
  *(a2 + 64) = v79;
  *(a2 + 72) = v78;
  *(a2 + 80) = v77;
  *(a2 + 88) = v76;
  *(a2 + 96) = v75;
  *(a2 + 104) = v74;
  *(a2 + 112) = v73;
  *(a2 + 120) = v72;
  *(a2 + 128) = v71;
  *(a2 + 136) = v70;
  *(a2 + 144) = v69;
  *(a2 + 152) = v68;
  *(a2 + 160) = v67;
  *(a2 + 168) = v66;
  *(a2 + 176) = v53;
  *(a2 + 184) = v55;
  *(a2 + 192) = v57;
  *(a2 + 200) = v63;
  result = 0.0;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  return result;
}

{
  v4 = [a1 locality];
  v5 = sub_24A4AB850();
  v7 = v6;

  *(a2 + 72) = v5;
  *(a2 + 80) = v7;
  v8 = [a1 administrativeArea];
  v9 = sub_24A4AB850();
  v11 = v10;

  *(a2 + 136) = v9;
  *(a2 + 144) = v11;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v12 = [a1 country];
  v13 = sub_24A4AB850();
  v15 = v14;

  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  v16 = [a1 state];
  v17 = sub_24A4AB850();
  v19 = v18;

  *(a2 + 88) = v17;
  *(a2 + 96) = v19;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  v20 = [a1 streetAddress];
  v21 = sub_24A4AB850();
  v23 = v22;

  *(a2 + 56) = v21;
  *(a2 + 64) = v23;
  v24 = [a1 streetName];
  v25 = sub_24A4AB850();
  v27 = v26;

  *(a2 + 40) = v25;
  *(a2 + 48) = v27;
  *a2 = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;

  *(a2 + 168) = MEMORY[0x277D84F90];
  result = 0.0;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  return result;
}

double FMFAddress.init(formattedAddressLines:country:countryCode:streetName:streetAddress:locality:stateCode:postalCode:landmark:administrativeArea:areaOfInterest:fullThoroughfare:mapFormattedAddress:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 152) = 0;
  *(a9 + 160) = 0;
  *(a9 + 144) = a15;
  *(a9 + 168) = a16;
  *(a9 + 184) = a17;
  *(a9 + 200) = a18;
  result = 0.0;
  *(a9 + 272) = 0u;
  *(a9 + 288) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 224) = 0u;
  return result;
}

uint64_t FMFAddress.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF40D78, &qword_24A4BCAA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[3];
  v73 = v1[2];
  v74 = v7;
  v10 = v1[5];
  v71 = v1[4];
  v72 = v9;
  v11 = v1[6];
  v12 = v1[7];
  v69 = v10;
  v70 = v11;
  v13 = v1[8];
  v14 = v1[9];
  v67 = v12;
  v68 = v13;
  v15 = v1[10];
  v16 = v1[11];
  v65 = v14;
  v66 = v15;
  v17 = v1[12];
  v18 = v1[13];
  v63 = v16;
  v64 = v17;
  v19 = v1[14];
  v20 = v1[15];
  v61 = v18;
  v62 = v19;
  v21 = v1[16];
  v22 = v1[17];
  v59 = v20;
  v60 = v21;
  v24 = v1[18];
  v23 = v1[19];
  v57 = v22;
  v58 = v24;
  v55 = v23;
  v25 = v1[21];
  v56 = v1[20];
  v54 = v25;
  v26 = v1[23];
  v53 = v1[22];
  v52 = v26;
  v27 = v1[25];
  v51 = v1[24];
  v50 = v27;
  v28 = v1[27];
  v49 = v1[26];
  v48 = v28;
  v29 = v1[29];
  v47 = v1[28];
  v46 = v29;
  v30 = v1[31];
  v45 = v1[30];
  v44 = v30;
  v31 = v1[33];
  v41 = v1[32];
  v40 = v31;
  v32 = v1[35];
  v43 = v1[34];
  v42 = v32;
  v33 = v1[37];
  v39 = v1[36];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3C1E10();

  sub_24A4AC3D0();
  v76 = v8;
  v78 = 0;
  sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  sub_24A38CA78();
  v34 = v75;
  sub_24A4AC1F0();
  if (v34)
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v36 = v71;
    v37 = v72;
    v75 = v33;

    v76 = v74;
    v77 = v73;
    v78 = 1;
    sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
    sub_24A38D258();
    sub_24A4AC1F0();
    v76 = v37;
    v77 = v36;
    v78 = 2;
    v74 = v6;
    sub_24A4AC1F0();
    v76 = v69;
    v77 = v70;
    v78 = 3;
    sub_24A4AC1F0();
    v76 = v67;
    v77 = v68;
    v78 = 4;
    sub_24A4AC1F0();
    v76 = v65;
    v77 = v66;
    v78 = 5;
    sub_24A4AC1F0();
    v76 = v63;
    v77 = v64;
    v78 = 6;
    sub_24A4AC1F0();
    v76 = v61;
    v77 = v62;
    v78 = 7;
    sub_24A4AC1F0();
    v76 = v59;
    v77 = v60;
    v78 = 8;
    sub_24A4AC1F0();
    v76 = v57;
    v77 = v58;
    v78 = 9;
    sub_24A4AC1F0();
    v76 = v55;
    v77 = v56;
    v78 = 10;
    sub_24A4AC1F0();
    v76 = v54;
    v78 = 11;
    sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
    sub_24A382908(&qword_27EF3F3F0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24A4AC1F0();
    v76 = v53;
    v77 = v52;
    v78 = 12;
    sub_24A4AC1F0();
    v76 = v51;
    v77 = v50;
    v78 = 13;
    sub_24A4AC1F0();
    v76 = v49;
    v77 = v48;
    v78 = 14;
    sub_24A4AC1F0();
    v76 = v47;
    v77 = v46;
    v78 = 15;
    sub_24A4AC1F0();
    v76 = v45;
    v77 = v44;
    v78 = 16;
    sub_24A4AC1F0();
    v76 = v41;
    v77 = v40;
    v78 = 17;
    sub_24A4AC1F0();
    v76 = v43;
    v77 = v42;
    v78 = 18;
    sub_24A4AC1F0();
    v38 = v74;
    v76 = v39;
    v77 = v75;
    v78 = 19;
    sub_24A4AC1F0();
    return (*(v4 + 8))(v38, 0);
  }
}

uint64_t _s7FMFCore10FMFAddressV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v11 = a1[7];
  v10 = a1[8];
  v12 = a1[10];
  v120 = a1[9];
  v117 = a1[11];
  v121 = a1[12];
  v113 = a1[13];
  v119 = a1[14];
  v109 = a1[15];
  v116 = a1[16];
  v105 = a1[17];
  v112 = a1[18];
  v104 = a1[19];
  v108 = a1[20];
  v102 = a1[21];
  v96 = a1[22];
  v100 = a1[23];
  v92 = a1[24];
  v97 = a1[25];
  v88 = a1[26];
  v94 = a1[27];
  v85 = a1[28];
  v90 = a1[29];
  v81 = a1[30];
  v86 = a1[31];
  v77 = a1[32];
  v82 = a1[33];
  v73 = a1[34];
  v78 = a1[35];
  v71 = a1[36];
  *&v74 = a1[37];
  v14 = *a2;
  v13 = a2[1];
  v16 = a2[2];
  v15 = a2[3];
  v18 = a2[4];
  v17 = a2[5];
  v19 = a2[6];
  v20 = a2[7];
  v21 = a2[8];
  v22 = a2[9];
  v23 = a2[10];
  v24 = a2[11];
  v25 = a2[12];
  v114 = a2[13];
  v118 = a2[14];
  v110 = a2[15];
  v115 = a2[16];
  v106 = a2[17];
  v111 = a2[18];
  v103 = a2[19];
  v107 = a2[20];
  v101 = a2[21];
  v95 = a2[22];
  v99 = a2[23];
  v91 = a2[24];
  v98 = a2[25];
  v87 = a2[26];
  v93 = a2[27];
  v83 = a2[28];
  v89 = a2[29];
  v79 = a2[30];
  v84 = a2[31];
  v75 = a2[32];
  v80 = a2[33];
  v72 = a2[34];
  v76 = a2[35];
  v70 = a2[36];
  *(&v74 + 1) = a2[37];
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    v65 = a2[8];
    v67 = a2[7];
    v59 = v8;
    v62 = v9;
    v55 = a2[10];
    v57 = a2[9];
    v52 = v11;
    v53 = v10;
    v50 = a2[12];
    v51 = a2[11];
    v26 = v12;
    v27 = v6;
    v28 = v7;
    v29 = a2[6];
    v30 = a2[5];
    v31 = v4;
    v32 = v5;
    v33 = a2[4];
    v34 = a2[3];
    v35 = a2[2];
    v49 = a2[1];
    v36 = sub_24A38B37C(v3, v14);
    v16 = v35;
    v15 = v34;
    v18 = v33;
    v5 = v32;
    v4 = v31;
    v17 = v30;
    v19 = v29;
    v7 = v28;
    v6 = v27;
    v12 = v26;
    v13 = v49;
    v25 = v50;
    v24 = v51;
    v11 = v52;
    v10 = v53;
    v23 = v55;
    v22 = v57;
    v8 = v59;
    v9 = v62;
    v21 = v65;
    v20 = v67;
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v5)
  {
    if (!v16)
    {
      return 0;
    }

    if (v4 != v13 || v5 != v16)
    {
      v60 = v17;
      v63 = v19;
      v66 = v21;
      v68 = v20;
      v56 = v12;
      v58 = v7;
      v37 = v6;
      v38 = v18;
      v54 = v15;
      v39 = sub_24A4AC270();
      v15 = v54;
      v12 = v56;
      v18 = v38;
      v17 = v60;
      v19 = v63;
      v7 = v58;
      v6 = v37;
      v21 = v66;
      v20 = v68;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v6)
  {
    if (!v18)
    {
      return 0;
    }

    if (v7 != v15 || v6 != v18)
    {
      v61 = v17;
      v64 = v19;
      v69 = v20;
      v40 = v21;
      v41 = v8;
      v42 = v12;
      v43 = sub_24A4AC270();
      v17 = v61;
      v19 = v64;
      v12 = v42;
      v8 = v41;
      v21 = v40;
      v20 = v69;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v9)
  {
    if (!v19)
    {
      return 0;
    }

    if (v8 != v17 || v9 != v19)
    {
      v44 = v12;
      v45 = sub_24A4AC270();
      v12 = v44;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v10)
  {
    if (!v21)
    {
      return 0;
    }

    if (v11 != v20 || v10 != v21)
    {
      v46 = v12;
      v47 = sub_24A4AC270();
      v12 = v46;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v12)
  {
    if (!v23 || (v120 != v22 || v12 != v23) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v121)
  {
    if (!v25 || (v117 != v24 || v121 != v25) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (v119)
  {
    if (!v118 || (v113 != v114 || v119 != v118) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v118)
  {
    return 0;
  }

  if (v116)
  {
    if (!v115 || (v109 != v110 || v116 != v115) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v115)
  {
    return 0;
  }

  if (v112)
  {
    if (!v111 || (v105 != v106 || v112 != v111) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v111)
  {
    return 0;
  }

  if (v108)
  {
    if (!v107 || (v104 != v103 || v108 != v107) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v107)
  {
    return 0;
  }

  if ((sub_24A38B37C(v102, v101) & 1) == 0)
  {
    return 0;
  }

  if (v100)
  {
    if (!v99 || (v96 != v95 || v100 != v99) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v99)
  {
    return 0;
  }

  if (v97)
  {
    if (!v98 || (v92 != v91 || v97 != v98) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v98)
  {
    return 0;
  }

  if (v94)
  {
    if (!v93 || (v88 != v87 || v94 != v93) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v93)
  {
    return 0;
  }

  if (v90)
  {
    if (!v89 || (v85 != v83 || v90 != v89) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v89)
  {
    return 0;
  }

  if (v86)
  {
    if (!v84 || (v81 != v79 || v86 != v84) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v84)
  {
    return 0;
  }

  if (v82)
  {
    if (!v80 || (v77 != v75 || v82 != v80) && (sub_24A4AC270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v80)
  {
    return 0;
  }

  if (!v78)
  {
    if (!v76)
    {
      goto LABEL_124;
    }

    return 0;
  }

  if (!v76 || (v73 != v72 || v78 != v76) && (sub_24A4AC270() & 1) == 0)
  {
    return 0;
  }

LABEL_124:
  result = v74 == 0;
  if (v74 && *(&v74 + 1))
  {
    if (v71 == v70 && v74 == *(&v74 + 1))
    {
      return 1;
    }

    else
    {

      return sub_24A4AC270();
    }
  }

  return result;
}

unint64_t sub_24A4A245C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC290();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

char *_s7FMFCore10FMFAddressV21formattedAddressLines3forSaySSGSgSo08CNPostalD0C_tFZ_0(uint64_t a1)
{
  v24 = sub_24A4AA7F0();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() stringFromPostalAddress:a1 style:0];
  v6 = sub_24A4AB850();
  v8 = v7;

  v27 = v6;
  v28 = v8;
  v25 = 10;
  v26 = 0xE100000000000000;
  sub_24A3A1434();
  v9 = sub_24A4ABE10();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v2 + 8);
    v23 = v9;
    v12 = (v9 + 40);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v14 = *v12;
      v27 = *(v12 - 1);
      v28 = v14;

      sub_24A4AA7A0();
      v15 = sub_24A4ABE30();
      v17 = v16;
      (*v11)(v4, v24);

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_24A3ED900(0, *(v13 + 2) + 1, 1, v13);
        }

        v20 = *(v13 + 2);
        v19 = *(v13 + 3);
        if (v20 >= v19 >> 1)
        {
          v13 = sub_24A3ED900((v19 > 1), v20 + 1, 1, v13);
        }

        *(v13 + 2) = v20 + 1;
        v21 = &v13[16 * v20];
        *(v21 + 4) = v15;
        *(v21 + 5) = v17;
      }

      else
      {
      }

      v12 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {

    return 0;
  }

  return v13;
}

unint64_t sub_24A4A2718()
{
  result = qword_27EF40498;
  if (!qword_27EF40498)
  {
    sub_24A3CBC9C(&qword_27EF3F108, &qword_24A4B4950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40498);
  }

  return result;
}

unint64_t sub_24A4A2780()
{
  result = qword_27EF40D80;
  if (!qword_27EF40D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24A4A2888()
{
  result = qword_27EF40D88;
  if (!qword_27EF40D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D88);
  }

  return result;
}

unint64_t sub_24A4A28E0()
{
  result = qword_27EF40D90;
  if (!qword_27EF40D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D90);
  }

  return result;
}

unint64_t sub_24A4A2938()
{
  result = qword_27EF40D98;
  if (!qword_27EF40D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40D98);
  }

  return result;
}

uint64_t type metadata accessor for FMFRemoveFriendRequest(uint64_t a1)
{
  result = qword_27EF40DA0;
  if (!qword_27EF40DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A4A2A24()
{
  v1 = *(v0 + qword_27EF4E348);
  v2 = *(v0 + qword_27EF4E348 + 8);
  v4[3] = MEMORY[0x277D837D0];
  v4[0] = v1;
  v4[1] = v2;
  swift_beginAccess();

  sub_24A3A6CEC(v4, 25705, 0xE200000000000000);
  return swift_endAccess();
}

uint64_t sub_24A4A2AC8()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_24A4A2BAC()
{
  sub_24A4A2AC8();

  return swift_deallocClassInstance();
}

uint64_t sub_24A4A2C14()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4A2D1C(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A4A2E10(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A4A2F14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A4A3214(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A4A2F44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472656C61;
  v5 = 0xEB00000000747865;
  v6 = 0x746E6F4361746164;
  v7 = 0xEB00000000737574;
  v8 = 0x6174536863746566;
  if (v2 != 3)
  {
    v8 = 0x52646E616D6D6F63;
    v7 = 0xEF65736E6F707365;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F43726576726573;
    v3 = 0xED0000747865746ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_24A4A3008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A4A3214(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A4A303C(uint64_t a1)
{
  v2 = sub_24A3B98AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A4A3078(void *a1)
{
  v2 = swift_allocObject();
  sub_24A3B7448(a1);
  return v2;
}

uint64_t sub_24A4A30C8()
{

  sub_24A3D02B0(v0 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse);

  return swift_deallocClassInstance();
}

unint64_t sub_24A4A3168()
{
  result = qword_27EF40DE8;
  if (!qword_27EF40DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40DE8);
  }

  return result;
}

unint64_t sub_24A4A31C0()
{
  result = qword_27EF40DF0;
  if (!qword_27EF40DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40DF0);
  }

  return result;
}

unint64_t sub_24A4A3214(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for FMFUpdateLocationAlertRequest(uint64_t a1)
{
  result = qword_27EF40E08;
  if (!qword_27EF40E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A4A32AC(uint64_t a1)
{
  result = type metadata accessor for FMFLocationAlert(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A4A3344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A3C9CEC(&qword_27EF3FF48, &qword_24A4BD240);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for LiveRelabilityStats(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_24A37EF2C(a1, &qword_27EF3FF48, &qword_24A4BD240);
    sub_24A4A423C(a2, a3, v9);

    return sub_24A37EF2C(v9, &qword_27EF3FF48, &qword_24A4BD240);
  }

  else
  {
    sub_24A3998A4(a1, v13, type metadata accessor for LiveRelabilityStats);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24A430600(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_24A4A3518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A3C9CEC(&qword_27EF3FF50, &qword_24A4BD250);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ShallowRelabilityStats(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_24A37EF2C(a1, &qword_27EF3FF50, &qword_24A4BD250);
    sub_24A4A43F4(a2, a3, v9);

    return sub_24A37EF2C(v9, &qword_27EF3FF50, &qword_24A4BD250);
  }

  else
  {
    sub_24A3998A4(a1, v13, type metadata accessor for ShallowRelabilityStats);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24A43076C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_24A4A36EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24A3C9CEC(&qword_27EF404F0, qword_24A4BA768);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_24A37EF2C(a1, &qword_27EF404F0, qword_24A4BA768);
    sub_24A4A45AC(a2, a3, v9);

    return sub_24A37EF2C(v9, &qword_27EF404F0, qword_24A4BA768);
  }

  else
  {
    sub_24A4A9AE0(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24A430918(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_24A4A3904(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v22;
  }

  else
  {
    v16 = sub_24A39B2C8(a2, a3);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v23 = *v7;
      if (!v19)
      {
        sub_24A4A96B8(a5, a6);
        v20 = v23;
      }

      result = sub_24A4A7BD4(v16, v20, v21);
      *v7 = v20;
    }
  }

  return result;
}

uint64_t sub_24A4A3A1C(uint64_t a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_24A430F00(a1, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    result = sub_24A43014C(a2 & 1);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        sub_24A4A9814();
        v11 = v14;
      }

      result = sub_24A4A7D84(v9, v11, v12);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_24A4A3ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_24A431020(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }

  else
  {
    v10 = sub_24A39B2C8(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v17 = *v4;
      if (!v13)
      {
        sub_24A4A9970();
        v14 = v17;
      }

      result = sub_24A4A7BD4(v10, v14, v15);
      *v4 = v14;
    }
  }

  return result;
}

void sub_24A4A3BD4()
{
  v1 = v0;
  v47 = *MEMORY[0x277D85DE8];
  sub_24A4AA790();
  swift_allocObject();
  sub_24A4AA780();
  type metadata accessor for FMFLocationAlert(0);
  sub_24A4A7F18();
  v2 = sub_24A4AA770();
  v4 = v3;

  v5 = objc_opt_self();
  v6 = sub_24A4AAA00();
  *&v43[0] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v43];

  v8 = *&v43[0];
  if (v7)
  {
    sub_24A4ABE70();
    swift_unknownObjectRelease();
    sub_24A3A60B4(&v44, v46);
    sub_24A37EE84(v46, &v44);
    sub_24A3C9CEC(&qword_27EF3F800, &unk_24A4B6530);
    if (swift_dynamicCast())
    {
      v39 = v2;
      v40 = v4;
      v9 = *&v43[0] + 64;
      v10 = 1 << *(*&v43[0] + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(*&v43[0] + 64);
      v13 = (v10 + 63) >> 6;
      v42 = *&v43[0];

      v14 = 0;
      v41 = v1;
LABEL_8:
      if (v12)
      {
        goto LABEL_13;
      }

      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
        }

        if (v16 >= v13)
        {
          break;
        }

        v12 = *(v9 + 8 * v16);
        ++v14;
        if (v12)
        {
          v14 = v16;
LABEL_13:
          v17 = __clz(__rbit64(v12)) | (v14 << 6);
          v18 = (*(v42 + 48) + 16 * v17);
          v20 = *v18;
          v19 = v18[1];
          sub_24A37EE84(*(v42 + 56) + 32 * v17, v45);
          *&v44 = v20;
          *(&v44 + 1) = v19;
          v21 = qword_27EF3FC00;
          swift_beginAccess();
          sub_24A37EE84(v45, v43);
          swift_bridgeObjectRetain_n();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v23 = *(v1 + v21);
          *(v1 + v21) = 0x8000000000000000;
          v24 = sub_24A39B2C8(v20, v19);
          v26 = v23[2];
          v27 = (v25 & 1) == 0;
          v28 = __OFADD__(v26, v27);
          v29 = v26 + v27;
          if (v28)
          {
            goto LABEL_28;
          }

          v30 = v25;
          if (v23[3] >= v29)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_18;
            }

            v36 = v24;
            sub_24A3A8430();
            v24 = v36;
            v32 = v23;
            if (v30)
            {
              goto LABEL_6;
            }

LABEL_19:
            v32[(v24 >> 6) + 8] |= 1 << v24;
            v33 = (v32[6] + 16 * v24);
            *v33 = v20;
            v33[1] = v19;
            sub_24A3A60B4(v43, (v32[7] + 32 * v24));
            v34 = v32[2];
            v28 = __OFADD__(v34, 1);
            v35 = v34 + 1;
            if (!v28)
            {
              v32[2] = v35;
              goto LABEL_7;
            }

            goto LABEL_29;
          }

          sub_24A3A6214(v29, isUniquelyReferenced_nonNull_native);
          v24 = sub_24A39B2C8(v20, v19);
          if ((v30 & 1) != (v31 & 1))
          {
            sub_24A4AC2B0();
            __break(1u);
            return;
          }

LABEL_18:
          v32 = v23;
          if ((v30 & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_6:
          v15 = (v32[7] + 32 * v24);
          sub_24A37EEE0(v15);
          sub_24A3A60B4(v43, v15);

LABEL_7:
          v12 &= v12 - 1;
          v1 = v41;
          *(v41 + v21) = v32;
          swift_endAccess();
          sub_24A37EF2C(&v44, &qword_27EF40E18, &qword_24A4BD1D0);
          goto LABEL_8;
        }
      }

      sub_24A386E10(v39, v40);

      sub_24A37EEE0(v46);
    }

    else
    {
      sub_24A37EEE0(v46);
      sub_24A386E10(v2, v4);
    }
  }

  else
  {
    v37 = v8;
    v38 = sub_24A4AA950();

    swift_willThrow();
    sub_24A386E10(v2, v4);
  }
}

uint64_t sub_24A4A4074()
{
  v0 = sub_24A4AAC20();

  v1 = qword_27EF4E0D8;
  v2 = sub_24A4AAAD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24A3DEA30(v0 + qword_27EF4E378);

  return swift_deallocClassInstance();
}

double sub_24A4A4198@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_24A39B2C8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A3A8430();
      v10 = v13;
    }

    sub_24A3A60B4((*(v10 + 56) + 32 * v8), a3);
    sub_24A4A6EC8(v8, v10, v11);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_24A4A423C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24A39B2C8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A4A8860(type metadata accessor for LiveRelabilityStats, &qword_27EF40E68, &qword_24A4BD248, type metadata accessor for LiveRelabilityStats);
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for LiveRelabilityStats(0);
    v20 = *(v12 - 8);
    sub_24A3998A4(v11 + *(v20 + 72) * v8, a3, type metadata accessor for LiveRelabilityStats);
    sub_24A4A7468(v8, v10, type metadata accessor for LiveRelabilityStats, v13);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = type metadata accessor for LiveRelabilityStats(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_24A4A43F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24A39B2C8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A4A8860(type metadata accessor for ShallowRelabilityStats, &qword_27EF40E70, &unk_24A4BD258, type metadata accessor for ShallowRelabilityStats);
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for ShallowRelabilityStats(0);
    v20 = *(v12 - 8);
    sub_24A3998A4(v11 + *(v20 + 72) * v8, a3, type metadata accessor for ShallowRelabilityStats);
    sub_24A4A7468(v8, v10, type metadata accessor for ShallowRelabilityStats, v13);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = type metadata accessor for ShallowRelabilityStats(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_24A4A45AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24A39B2C8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A4A8AC8();
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
    v20 = *(v12 - 8);
    sub_24A4A9AE0(v11 + *(v20 + 72) * v8, a3);
    sub_24A4A7234(v8, v10, v13);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_24A4A471C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24A39B2C8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24A4A8860(type metadata accessor for FMFFriend, &qword_27EF40E20, &unk_24A4BD1D8, type metadata accessor for FMFFriend);
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for FMFFriend(0);
    v20 = *(v12 - 8);
    sub_24A3998A4(v11 + *(v20 + 72) * v8, a3, type metadata accessor for FMFFriend);
    sub_24A4A7468(v8, v10, type metadata accessor for FMFFriend, v13);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = type metadata accessor for FMFFriend(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_24A4A48D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A3C9CEC(&qword_27EF40390, &unk_24A4BA170);
  v34 = v4;
  result = sub_24A4AC080();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_24A4A4B88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A3C9CEC(&qword_27EF40E60, &qword_24A4BD238);
  v37 = v4;
  result = sub_24A4AC080();
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
      v23 = v22[1];
      v24 = *(v5 + 56) + 32 * v21;
      v25 = *(v24 + 8);
      v41 = *v24;
      v42 = *v22;
      v26 = *(v24 + 16);
      v39 = *(v24 + 25);
      v40 = *(v24 + 24);
      v38 = *(v24 + 26);
      if ((v37 & 1) == 0)
      {
      }

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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
      *v16 = v42;
      v16[1] = v23;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v41;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v40;
      *(v17 + 25) = v39;
      *(v17 + 26) = v38;
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

uint64_t sub_24A4A4F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - v6;
  v7 = *v2;
  sub_24A3C9CEC(&qword_27EF40E78, &qword_24A4BD268);
  v40 = v4;
  result = sub_24A4AC080();
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
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_24A4A9AE0(v28, v41);
      }

      else
      {
        sub_24A4A9B50(v28, v41);
      }

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_24A4A9AE0(v41, *(v9 + 56) + v27 * v17);
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

uint64_t sub_24A4A5264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A3C9CEC(&qword_27EF40E28, &qword_24A4BD1E8);
  v38 = v4;
  result = sub_24A4AC080();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 56 * v21;
      v25 = *(v24 + 8);
      v43 = *v24;
      v44 = *v22;
      v26 = *(v24 + 24);
      v42 = *(v24 + 16);
      v41 = *(v24 + 32);
      v27 = *(v24 + 48);
      v40 = *(v24 + 40);
      if ((v38 & 1) == 0)
      {
      }

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v44;
      v16[1] = v23;
      v17 = *(v7 + 56) + 56 * v15;
      *v17 = v43;
      *(v17 + 8) = v25;
      *(v17 + 16) = v42;
      *(v17 + 24) = v26;
      *(v17 + 32) = v41;
      v12 = v39;
      *(v17 + 40) = v40;
      *(v17 + 48) = v27;
      ++*(v7 + 16);
      v5 = v37;
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
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

uint64_t sub_24A4A5570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A3C9CEC(&qword_27EF403D0, &qword_24A4BA1A0);
  v35 = v4;
  result = sub_24A4AC080();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v25 = v24;
      }

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_24A4A5814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A3C9CEC(&qword_27EF40E88, qword_24A4BD278);
  v34 = v4;
  result = sub_24A4AC080();
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

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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

uint64_t sub_24A4A5B04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_24A3C9CEC(a3, a4);
  v38 = v6;
  result = sub_24A4AC080();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v7;
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
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v7 + 56) + 24 * v23;
      v28 = *(v27 + 8);
      v40 = *v27;
      v39 = *(v27 + 16);
      if ((v38 & 1) == 0)
      {
      }

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = *(v9 + 56) + 24 * v17;
      *v19 = v40;
      *(v19 + 8) = v28;
      *(v19 + 16) = v39;
      ++*(v9 + 16);
      v7 = v37;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
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

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_24A4A5DCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A3C9CEC(&qword_27EF40E58, &qword_24A4BD218);
  v36 = v4;
  result = sub_24A4AC080();
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
      v26 = *(v25 + 8);
      v38 = *v25;
      v37 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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
      *v17 = v38;
      *(v17 + 8) = v26;
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

uint64_t sub_24A4A609C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A3C9CEC(&qword_27EF40398, &unk_24A4BD220);
  result = sub_24A4AC080();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = (*(v5 + 56) + 32 * v22);
      if (v4)
      {
        sub_24A3A60B4(v24, v30);
      }

      else
      {
        sub_24A37EE84(v24, v30);
      }

      sub_24A4AC360();
      sub_24A4AB8F0();

      result = sub_24A4AC3A0();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      result = sub_24A3A60B4(v30, (*(v7 + 56) + 32 * v18));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24A4A6548(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_24A3C9CEC(a3, a4);
  v37 = v6;
  result = sub_24A4AC080();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_24A4A67E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A3C9CEC(&qword_27EF40E40, &qword_24A4BD200);
  v31 = v4;
  result = sub_24A4AC080();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_24A4AC360();
      MEMORY[0x24C218780](v20);
      result = sub_24A4AC3A0();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24A4A6A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_24A3C9CEC(&qword_27EF40E48, &qword_24A4BD208);
  v34 = v4;
  result = sub_24A4AC080();
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

      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
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

uint64_t sub_24A4A6D18(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_24A4ABEB0() + 1) & ~v6;
    do
    {
      sub_24A4AC360();

      sub_24A4AB8F0();
      v10 = sub_24A4AC3A0();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v4);
        v17 = (v15 + 16 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A4A6EC8(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_24A4ABEB0() + 1) & ~v6;
    do
    {
      sub_24A4AC360();

      sub_24A4AB8F0();
      v11 = sub_24A4AC3A0();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v4);
        v15 = (v13 + 16 * v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v4);
        v18 = (v16 + 32 * v7);
        if (v4 != v7 || v17 >= v18 + 2)
        {
          v10 = v18[1];
          *v17 = *v18;
          v17[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A4A7078(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_24A4ABEB0() + 1) & ~v6;
    do
    {
      sub_24A4AC360();

      sub_24A4AB8F0();
      v11 = sub_24A4AC3A0();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v4);
        v15 = (v13 + 16 * v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v4);
        v18 = (v16 + 32 * v7);
        if (32 * v4 != 32 * v7 || (v4 = v7, v17 >= v18 + 2))
        {
          v10 = v18[1];
          *v17 = *v18;
          v17[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A4A7234(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_24A4ABEB0() + 1) & ~v6;
    while (1)
    {
      sub_24A4AC360();

      sub_24A4AB8F0();
      v10 = sub_24A4AC3A0();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v11 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 16 * v4);
      v14 = (v12 + 16 * v7);
      if (v4 != v7 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760) - 8) + 72);
      v17 = v16 * v4;
      result = v15 + v16 * v4;
      v18 = v16 * v7;
      v19 = v15 + v16 * v7 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A4A7468(unint64_t result, uint64_t a2, uint64_t (*a3)(void), __n128 a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v10 = ~v7;
    v11 = (sub_24A4ABEB0() + 1) & ~v7;
    while (1)
    {
      sub_24A4AC360();

      sub_24A4AB8F0();
      v12 = sub_24A4AC3A0();

      v13 = v12 & v10;
      if (v5 >= v11)
      {
        break;
      }

      if (v13 < v11)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v5);
      v16 = (v14 + 16 * v8);
      if (v5 != v8 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v5;
      result = v17 + v18 * v5;
      v20 = v18 * v8;
      v21 = v17 + v18 * v8 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v10;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A4A765C(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_24A4ABEB0() + 1) & ~v6;
    do
    {
      sub_24A4AC360();

      sub_24A4AB8F0();
      v11 = sub_24A4AC3A0();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v4);
        v15 = (v13 + 16 * v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v4;
        v18 = (v16 + 24 * v7);
        if (24 * v4 < (24 * v7) || v17 >= v18 + 24 || v4 != v7)
        {
          v10 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A4A782C(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_24A4ABEB0() + 1) & ~v6;
    do
    {
      sub_24A4AC360();
      sub_24A4AB8F0();

      result = sub_24A4AC3A0();
      v11 = result & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v4);
        v14 = (v12 + v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v4);
        v17 = (v15 + 32 * v7);
        if (v4 != v7 || v16 >= v17 + 2)
        {
          v10 = v17[1];
          *v16 = *v17;
          v16[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A4A7BD4(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_24A4ABEB0() + 1) & ~v6;
    do
    {
      sub_24A4AC360();

      sub_24A4AB8F0();
      v10 = sub_24A4AC3A0();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A4A7D84(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_24A4ABEB0() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + v7);
      sub_24A4AC360();
      MEMORY[0x24C218780](v10);
      result = sub_24A4AC3A0();
      v11 = result & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v4);
        v14 = (v12 + v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A4A7F18()
{
  result = qword_27EF3FB50;
  if (!qword_27EF3FB50)
  {
    type metadata accessor for FMFLocationAlert(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB50);
  }

  return result;
}

unint64_t sub_24A4A7F70(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_24A4A7FC0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_24A4A8008(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7 & 1;
  *(v9 + 25) = BYTE1(a7) & 1;
  *(v9 + 26) = BYTE2(a7) & 1;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_24A4A80C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  result = sub_24A4A9AE0(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_24A4A816C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_24A4A81D0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_24A4A8244(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

_OWORD *sub_24A4A8298(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_24A3A60B4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_24A4A8300(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void sub_24A4A8348()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40578, &qword_24A4BD230);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_24A4A84C0()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40390, &unk_24A4BA170);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_24A4A863C()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40E60, &qword_24A4BD238);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 25);
        LOBYTE(v22) = *(v22 + 26);
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 24) = v26;
        *(v29 + 25) = v27;
        *(v29 + 26) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_24A4A8860(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v41 = a4;
  v7 = v4;
  v8 = a1(0);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v38 - v9;
  sub_24A3C9CEC(a2, a3);
  v10 = *v4;
  v11 = sub_24A4AC070();
  v12 = v11;
  if (*(v10 + 16))
  {
    v38 = v7;
    v13 = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || v13 >= v10 + 64 + 8 * v15)
    {
      memmove(v13, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = v10;
        v31 = *v29;
        v32 = v29[1];
        v33 = v39;
        v34 = *(v40 + 72) * v26;
        v35 = v41;
        sub_24A399284(v28 + v34, v39, v41);
        v36 = v42;
        v37 = (*(v42 + 48) + v27);
        *v37 = v31;
        v37[1] = v32;
        v10 = v30;
        sub_24A3998A4(v33, *(v36 + 56) + v34, v35);

        v21 = v43;
      }

      while (v43);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v12 = v42;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v43 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }
}

void sub_24A4A8AC8()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - v3;
  sub_24A3C9CEC(&qword_27EF40E78, &qword_24A4BD268);
  v4 = *v0;
  v5 = sub_24A4AC070();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_24A4A9B50(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_24A4A9AE0(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_24A4A8D14()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40E28, &qword_24A4BD1E8);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 56;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v22 + 40);
        v29 = *(v22 + 48);
        v30 = (*(v4 + 48) + v18);
        *v30 = v21;
        v30[1] = v20;
        v31 = *(v4 + 56) + v17;
        *v31 = v23;
        *(v31 + 8) = v24;
        *(v31 + 16) = v25;
        *(v31 + 24) = v26;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        *(v31 + 48) = v29;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_24A4A8EC4()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF403D0, &qword_24A4BA1A0);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_24A4A9034()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40E88, qword_24A4BD278);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_24A4A9228(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_24A3C9CEC(a1, a2);
  v4 = *v2;
  v5 = sub_24A4AC070();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v19 *= 24;
        v24 = *(v4 + 56) + v19;
        v25 = *v24;
        v26 = *(v24 + 8);
        LOBYTE(v24) = *(v24 + 16);
        v27 = (*(v6 + 48) + v20);
        *v27 = v23;
        v27[1] = v22;
        v28 = *(v6 + 56) + v19;
        *v28 = v25;
        *(v28 + 8) = v26;
        *(v28 + 16) = v24;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_24A4A93A0()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40E58, &qword_24A4BD218);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_24A4A9528()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40398, &unk_24A4BD220);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        sub_24A37EE84(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_24A3A60B4(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_24A4A96B8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_24A3C9CEC(a1, a2);
  v4 = *v2;
  v5 = sub_24A4AC070();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_24A4A9814()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40E40, &qword_24A4BD200);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_24A4A9970()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40E48, &qword_24A4BD208);
  v2 = *v0;
  v3 = sub_24A4AC070();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_24A4A9AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A4A9B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF403A8, &qword_24A4BA760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMFRemoveFriendAction.__allocating_init(friend:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24A423930(a1, v2 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend);
  *(v2 + 16) = 1;
  return v2;
}

uint64_t FMFRemoveFriendAction.init(friend:)(uint64_t a1)
{
  sub_24A423930(a1, v1 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend);
  *(v1 + 16) = 1;
  return v1;
}

uint64_t sub_24A4A9C4C()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](0x3A646E6569726620, 0xE900000000000020);
  type metadata accessor for FMFFriend(0);
  sub_24A4AC030();
  return 0;
}

uint64_t FMFRemoveFriendAction.__deallocating_deinit()
{
  sub_24A3A16E4(v0 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFRemoveFriendAction(uint64_t a1)
{
  result = qword_27EF40E90;
  if (!qword_27EF40E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMFMyInfo.firstName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FMFMyInfo.meDeviceId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FMFMyInfo.deviceId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_24A4A9F94()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4AA088(uint64_t a1)
{
  sub_24A4AB8F0();
}

uint64_t sub_24A4AA168(uint64_t a1)
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

unint64_t sub_24A4AA258@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A4AA664(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A4AA288(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736C69616D65;
  v5 = 0xEA00000000006449;
  v6 = 0x656369766544656DLL;
  v7 = 0xE800000000000000;
  v8 = 0x6449656369766564;
  if (v2 != 3)
  {
    v8 = 0x656C626967696C65;
    v7 = 0xEE00654D6F747541;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D614E7473726966;
    v3 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_24A4AA338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A4AA664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A4AA360(uint64_t a1)
{
  v2 = sub_24A3850E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A4AA39C(uint64_t a1)
{
  v2 = sub_24A3850E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFMyInfo.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v0 + 56);

  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  MEMORY[0x24C217D50](0x666E49794D464D46, 0xE90000000000006FLL);
  MEMORY[0x24C217D50](0x736C69616D65203ALL, 0xEA0000000000203ALL);
  v7 = MEMORY[0x24C217E90](v2, MEMORY[0x277D837D0]);
  MEMORY[0x24C217D50](v7);

  MEMORY[0x24C217D50](0x614E747372696620, 0xEC000000203A656DLL);
  MEMORY[0x24C217D50](v1, v3);
  MEMORY[0x24C217D50](0x6369766544656D20, 0xED0000203A644965);
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v8 = sub_24A4AB870();
  MEMORY[0x24C217D50](v8);

  MEMORY[0x24C217D50](0x4965636976656420, 0xEB00000000203A64);
  MEMORY[0x24C217D50](v4, v5);
  MEMORY[0x24C217D50](0xD000000000000011, 0x800000024A4B37A0);
  if (v6)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v6)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v9, v10);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_24A4AA610()
{
  result = qword_27EF40EB8;
  if (!qword_27EF40EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40EB8);
  }

  return result;
}

unint64_t sub_24A4AA664(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A4AC0C0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}