uint64_t sub_22C8A00E0()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_22C8A013C()
{
  sub_22C36BA7C();
  sub_22C8A5230(v3);
  v4 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = sub_22C3A5908(&qword_27D9C10A8, &qword_22C92BF70);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C374FF8();
  sub_22C904BFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C36A588();
  sub_22C9048EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C373CE0();
  sub_22C90471C();

  sub_22C38A15C();
  sub_22C90470C();
  sub_22C3860B4();
  v10 = swift_allocBox();
  v12 = sub_22C371F78(v10, v11);
  v13(v12);
  *v2 = v10;
  sub_22C9048BC();
  sub_22C8A5140();
  sub_22C37A060();
  v14();
  v15 = sub_22C382AAC();
  sub_22C36C640(v15, v16, v17, v0);
  sub_22C8A51E4();
  sub_22C90492C();
  v18 = sub_22C38C28C();
  v19(v18);
  v20 = sub_22C8A5154();
  sub_22C89D8DC(v20);
  sub_22C36DD80(v1, &qword_27D9C1068);
  v21 = sub_22C376B3C();
  v22(v21);
  v23 = sub_22C8A5194();
  v24(v23);
  sub_22C36CC48();
}

void sub_22C8A0378()
{
  sub_22C36BA7C();
  v74 = v1;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D5B4();
  v73 = v6;
  v7 = sub_22C3A5908(&qword_27D9C10A8, &qword_22C92BF70);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36D5B4();
  v67 = v9;
  sub_22C36BA0C();
  sub_22C904BFC();
  sub_22C369824();
  v71 = v11;
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v70 = v12;
  v13 = sub_22C3A5908(&qword_27D9C10B0, &qword_22C92BF78);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C36D5B4();
  v66 = v15;
  sub_22C36BA0C();
  sub_22C9045BC();
  sub_22C369824();
  v68 = v17;
  v69 = v16;
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  v65 = v18;
  v19 = sub_22C3A5908(&qword_27D9C10B8, &qword_22C92BF80);
  sub_22C369914(v19);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  sub_22C387210();
  v21 = sub_22C3A5908(&qword_27D9C10A0, &qword_22C92BF68);
  v22 = sub_22C369914(v21);
  MEMORY[0x28223BE20](v22);
  sub_22C369ABC();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v65 - v27;
  sub_22C9046EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v29);
  sub_22C378990();
  sub_22C9046DC();
  sub_22C4E719C(v3, v28, &qword_27D9C10A0, &qword_22C92BF68);
  v30 = sub_22C901DCC();
  sub_22C36D0A8(v28, 1, v30);
  if (v37)
  {
    sub_22C36DD80(v28, &qword_27D9C10A0);
  }

  else
  {
    sub_22C901DBC();
    sub_22C36BBA8();
    (*(v31 + 8))(v28, v30);
  }

  sub_22C9046BC();
  sub_22C4E719C(v3, v25, &qword_27D9C10A0, &qword_22C92BF68);
  sub_22C36D0A8(v25, 1, v30);
  if (v37)
  {
    v32 = &qword_27D9C10A0;
    v33 = v25;
LABEL_10:
    sub_22C36DD80(v33, v32);
    *v0 = 0;
    v41 = v69;
    (*(v68 + 104))(v0, *MEMORY[0x277D1FAF8], v69);
    goto LABEL_11;
  }

  v34 = v66;
  sub_22C901DAC();
  sub_22C36BBA8();
  (*(v35 + 8))(v25, v30);
  v36 = sub_22C902BFC();
  sub_22C36D0A8(v34, 1, v36);
  if (v37)
  {
    v32 = &qword_27D9C10B0;
    v33 = v34;
    goto LABEL_10;
  }

  v38 = v65;
  sub_22C8A0958();
  sub_22C36BBA8();
  v39 = sub_22C372FCC();
  v40(v39);
  v41 = v69;
  (*(v68 + 32))(v0, v38, v69);
LABEL_11:
  v42 = sub_22C37049C();
  v45 = sub_22C8A51F0(v42, v43, v44, v41);
  MEMORY[0x2318B1BA0](v45);
  v46 = v70;
  v47 = v74;
  sub_22C89D150();
  v48 = swift_allocBox();
  sub_22C70C980(v48, v49);
  sub_22C37BBE4();
  v50();
  *v67 = v0;
  sub_22C9048BC();
  sub_22C8A5140();
  sub_22C37A060();
  v51();
  sub_22C36BECC();
  sub_22C36C640(v52, v53, v54, v47);
  sub_22C90492C();
  v56 = v71;
  v55 = v72;
  sub_22C646A98();
  v57 = v73;
  v58(v73, v46, v55);
  v59 = sub_22C37049C();
  v62 = sub_22C8A51F0(v59, v60, v61, v55);
  sub_22C89D8DC(v62);
  sub_22C36DD80(v57, &qword_27D9C1068);
  (*(v56 + 8))(v46, v55);
  v63 = sub_22C370114();
  v64(v63);
  sub_22C36CC48();
}

void sub_22C8A0958()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C9045BC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C3881C0();
  v8 = sub_22C3A5908(&qword_27D9C10C0, &qword_22C92BF88);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C370654();
  v10 = sub_22C902C0C();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v31 - v18;
  sub_22C902BEC();
  sub_22C37BFE0(v1);
  if (v20)
  {
    sub_22C36DD80(v1, &qword_27D9C10C0);
    *v3 = 0;
    (*(v6 + 104))(v3, *MEMORY[0x277D1FAF8], v4);
  }

  else
  {
    v31[1] = v3;
    v21 = *(v12 + 32);
    v22 = sub_22C370114();
    v21(v22);
    (v21)(v16, v19, v10);
    v23 = sub_22C3806B8();
    v25 = v24(v23);
    if (v25 == *MEMORY[0x277D1D268])
    {
      v26 = MEMORY[0x277D1FAF0];
    }

    else if (v25 == *MEMORY[0x277D1D260])
    {
      v26 = MEMORY[0x277D1FAE8];
    }

    else if (v25 == *MEMORY[0x277D1D258])
    {
      v26 = MEMORY[0x277D1FB00];
    }

    else
    {
      *v0 = 0;
      v26 = MEMORY[0x277D1FAF8];
    }

    (*(v6 + 104))(v0, *v26, v4);
    v27 = sub_22C3806B8();
    v28(v27);
    v29 = sub_22C37E83C();
    v30(v29);
  }

  sub_22C36CC48();
}

void sub_22C8A0CB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22C8A0D04()
{
  sub_22C36BA7C();
  sub_22C8A5230(v3);
  v4 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37FCFC();
  v6 = sub_22C3A5908(&qword_27D9C1098, &qword_22C92BF60);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C374FF8();
  sub_22C904BFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C36A588();
  sub_22C90472C();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C373CE0();
  sub_22C90471C();

  sub_22C38A15C();
  sub_22C90470C();
  sub_22C3860B4();
  v10 = swift_allocBox();
  v12 = sub_22C371F78(v10, v11);
  v13(v12);
  *v2 = v10;
  sub_22C9046FC();
  sub_22C8A5140();
  sub_22C37A060();
  v14();
  v15 = sub_22C382AAC();
  sub_22C36C640(v15, v16, v17, v0);
  sub_22C8A51E4();
  sub_22C90485C();
  v18 = sub_22C38C28C();
  v19(v18);
  v20 = sub_22C8A5154();
  sub_22C89D8DC(v20);
  sub_22C36DD80(v1, &qword_27D9C1068);
  v21 = sub_22C376B3C();
  v22(v21);
  v23 = sub_22C8A5194();
  v24(v23);
  sub_22C36CC48();
}

void sub_22C8A0F40()
{
  sub_22C36BA7C();
  sub_22C8A52AC();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C37FCFC();
  v4 = sub_22C3A5908(&qword_27D9C1098, &qword_22C92BF60);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C374FF8();
  sub_22C904BFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C36A588();
  sub_22C90457C();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C373CE0();
  sub_22C90456C();
  sub_22C8A5214();
  sub_22C90455C();
  sub_22C3860B4();
  v8 = swift_allocBox();
  v10 = sub_22C371F78(v8, v9);
  v11(v10);
  *v1 = v8;
  sub_22C9046FC();
  sub_22C36985C();
  v12 = sub_22C375C78();
  v13(v12);
  sub_22C38AC64();
  sub_22C90485C();
  v14 = sub_22C38C28C();
  v15(v14);
  v16 = sub_22C8A5154();
  sub_22C89D8DC(v16);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v17 = sub_22C376B3C();
  v18(v17);
  v19 = sub_22C8A5194();
  v20(v19);
  sub_22C36CC48();
}

void sub_22C8A1168()
{
  sub_22C36BA7C();
  sub_22C8A5350();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C37FCFC();
  v4 = sub_22C3A5908(&qword_27D9C1098, &qword_22C92BF60);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D83C();
  sub_22C904BFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C370654();
  v7 = sub_22C3A5908(&qword_27D9C1078, &qword_22C92BF40);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C37B974();
  sub_22C90467C();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C373CE0();
  sub_22C90466C();
  sub_22C37E22C();
  sub_22C8A52B8();
  sub_22C904B4C();
  v10 = sub_22C37049C();
  v14 = sub_22C8A51F0(v10, v11, v12, v13);
  MEMORY[0x2318B1B30](v14);
  sub_22C8A535C();
  sub_22C89D150();
  v15 = swift_allocBox();
  v17 = sub_22C388AD8(v15, v16);
  v18(v17);
  *v1 = v15;
  v19 = *MEMORY[0x277D1FB18];
  sub_22C9046FC();
  sub_22C8A5140();
  sub_22C37A060();
  v20();
  sub_22C36BECC();
  sub_22C36D1B8(v21, v22, v23);
  sub_22C90485C();
  sub_22C37F658();
  sub_22C8A5260();
  v24();
  v25 = sub_22C389250();
  v28 = sub_22C36EEBC(v25, v26, v27, v19);
  sub_22C89D8DC(v28);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v29 = sub_22C8A5240();
  v30(v29);
  v31 = sub_22C8A5250();
  v32(v31);
  sub_22C36CC48();
}

uint64_t sub_22C8A140C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_22C8A1468()
{
  sub_22C36BA7C();
  v46 = v0;
  v4 = v3;
  v6 = v5;
  v43 = v7;
  v8 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36FF70();
  v10 = sub_22C3A5908(&qword_27D9C1090, &qword_22C92BF58);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C371BB4();
  sub_22C904BFC();
  sub_22C369824();
  v44 = v13;
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v16 = v15 - v14;
  v17 = sub_22C3A5908(&qword_27D9BFD08, &qword_22C925480);
  v18 = sub_22C369914(v17);
  MEMORY[0x28223BE20](v18);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  sub_22C90497C();
  sub_22C369824();
  MEMORY[0x28223BE20](v22);
  sub_22C378990();
  v23 = *v4;
  sub_22C90496C();
  if (v6)
  {

    sub_22C8A17AC();
    sub_22C90494C();
  }

  if (v23 != 2)
  {
    sub_22C8A17AC();
    sub_22C8A51E4();
    sub_22C90495C();
  }

  v24 = v46;
  sub_22C89D150();
  v25 = swift_allocBox();
  sub_22C70C980(v25, v26);
  sub_22C8A51A4();
  v28(v27);
  *v2 = v21;
  sub_22C90493C();
  sub_22C8A5140();
  sub_22C37A060();
  v30(v29);
  sub_22C36BECC();
  sub_22C36C640(v31, v32, v33, v24);
  sub_22C90498C();
  v35 = v44;
  v34 = v45;
  sub_22C646A98();
  v36(v1, v16, v34);
  v37 = sub_22C371A14();
  v40 = sub_22C36CD04(v37, v38, v39, v34);
  sub_22C89D8DC(v40);
  sub_22C36DD80(v1, &qword_27D9C1068);
  (*(v35 + 8))(v16, v34);
  v41 = sub_22C370114();
  v42(v41);
  sub_22C36CC48();
}

void sub_22C8A17AC()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22C9062AC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  sub_22C90629C();
  v42 = v3;
  v43 = v1;
  sub_22C3858B4();
  v13 = sub_22C90AD9C();

  v14 = *(v13 + 16);
  if (v14 <= 3 && v14)
  {
    v40 = v5;
    v41 = v12;
    v37 = v8;
    v38 = *(v13 + 16);
    v39 = v6;
    v15 = 0;
    v16 = v13 + 56;
    v17 = -v14;
    v18 = MEMORY[0x277D84F90];
LABEL_4:
    v19 = (v16 + 32 * v15++);
    while (v17 + v15 != 1)
    {
      if ((v15 - 1) >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v21 = *(v19 - 3);
      v20 = *(v19 - 2);
      if ((v20 ^ v21) >> 14)
      {
        v23 = *(v19 - 1);
        v22 = *v19;
        if ((*v19 & 0x1000000000000000) != 0)
        {

          sub_22C8A3F68(v21, v20, v23, v22);
          v26 = v27;

          if ((v26 & 0x100000000) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if ((v22 & 0x2000000000000000) != 0)
          {
            v25 = HIBYTE(v22) & 0xF;
            v42 = *(v19 - 1);
            v43 = v22 & 0xFFFFFFFFFFFFFFLL;
            v24 = &v42;
          }

          else if ((v23 & 0x1000000000000000) != 0)
          {
            v24 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v25 = v23 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = sub_22C90AFCC();
          }

          v26 = sub_22C8A4C9C(v24, v25, v21, v20, v23, v22, 0xAu);

          if ((v26 & 0x100000000) == 0)
          {
LABEL_18:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22C594734(0, *(v18 + 16) + 1, 1, v18);
              v18 = v30;
            }

            v29 = *(v18 + 16);
            v28 = *(v18 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_22C594734(v28 > 1, v29 + 1, 1, v18);
              v18 = v31;
            }

            *(v18 + 16) = v29 + 1;
            *(v18 + 4 * v29 + 32) = v26;
            v16 = v13 + 56;
            goto LABEL_4;
          }
        }
      }

      ++v15;
      v19 += 4;
    }

    if (*(v18 + 16) != v38)
    {
      v6 = v39;
      (*(v37 + 8))(v41, v39);
      v5 = v40;
      goto LABEL_24;
    }

    v6 = v39;
    v5 = v40;
    if (v38 == 3)
    {
      v35 = *(v18 + 32);
    }

    else
    {
      v35 = 0;
    }

    sub_22C383EB0(v35);
    sub_22C90626C();
    if (v38 == 1)
    {
      v36 = 0;
    }

    else
    {
      if ((v38 - 2) >= *(v18 + 16))
      {
        goto LABEL_39;
      }

      v36 = *(v18 + 4 * (v38 - 2) + 32);
    }

    sub_22C383EB0(v36);
    sub_22C90627C();
    if (v38 <= *(v18 + 16))
    {

      LOBYTE(v42) = 0;
      sub_22C90628C();
      (*(v37 + 32))(v40, v13, v39);
      v34 = 0;
      goto LABEL_25;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    swift_bridgeObjectRetain_n();

    __break(1u);
  }

  else
  {
    v32 = sub_22C3806B8();
    v33(v32);
LABEL_24:

    v34 = 1;
LABEL_25:
    sub_22C36C640(v5, v34, 1, v6);
    sub_22C36CC48();
  }
}

void sub_22C8A1B74()
{
  sub_22C36BA7C();
  sub_22C8A52AC();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C37FCFC();
  v4 = sub_22C3A5908(&qword_27D9C1090, &qword_22C92BF58);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C374FF8();
  sub_22C904BFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C36A588();
  sub_22C90480C();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C373CE0();
  sub_22C90456C();
  sub_22C8A5214();
  sub_22C90455C();
  sub_22C3860B4();
  v8 = swift_allocBox();
  v10 = sub_22C371F78(v8, v9);
  v11(v10);
  *v1 = v8;
  sub_22C90493C();
  sub_22C36985C();
  v12 = sub_22C375C78();
  v13(v12);
  sub_22C38AC64();
  sub_22C90498C();
  v14 = sub_22C38C28C();
  v15(v14);
  v16 = sub_22C8A5154();
  sub_22C89D8DC(v16);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v17 = sub_22C376B3C();
  v18(v17);
  v19 = sub_22C8A5194();
  v20(v19);
  sub_22C36CC48();
}

void sub_22C8A1D9C()
{
  sub_22C36BA7C();
  sub_22C8A5350();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C37FCFC();
  v4 = sub_22C3A5908(&qword_27D9C1090, &qword_22C92BF58);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D83C();
  sub_22C904BFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C370654();
  v7 = sub_22C3A5908(&qword_27D9C1078, &qword_22C92BF40);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C37B974();
  sub_22C9048AC();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C373CE0();
  sub_22C90466C();
  sub_22C37E22C();
  sub_22C8A52B8();
  sub_22C904B4C();
  v10 = sub_22C37049C();
  v14 = sub_22C8A51F0(v10, v11, v12, v13);
  MEMORY[0x2318B1D60](v14);
  sub_22C8A535C();
  sub_22C89D150();
  v15 = swift_allocBox();
  v17 = sub_22C388AD8(v15, v16);
  v18(v17);
  *v1 = v15;
  v19 = *MEMORY[0x277D1FB60];
  sub_22C90493C();
  sub_22C8A5140();
  sub_22C37A060();
  v20();
  sub_22C36BECC();
  sub_22C36D1B8(v21, v22, v23);
  sub_22C90498C();
  sub_22C37F658();
  sub_22C8A5260();
  v24();
  v25 = sub_22C389250();
  v28 = sub_22C36EEBC(v25, v26, v27, v19);
  sub_22C89D8DC(v28);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v29 = sub_22C8A5240();
  v30(v29);
  v31 = sub_22C8A5250();
  v32(v31);
  sub_22C36CC48();
}

uint64_t sub_22C8A2040(uint64_t a1)
{
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  return sub_22C89D10C(a1);
}

uint64_t sub_22C8A2054()
{
}

uint64_t sub_22C8A208C()
{
  swift_weakDestroy();

  return v0;
}

uint64_t sub_22C8A20C4()
{
  sub_22C8A208C();

  return swift_deallocClassInstance();
}

void sub_22C8A211C()
{
  sub_22C36BA7C();
  sub_22C8A52AC();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C37FCFC();
  v4 = sub_22C3A5908(&qword_27D9C1088, &qword_22C92BF50);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C374FF8();
  sub_22C904BFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C36A588();
  sub_22C904AFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C373CE0();
  sub_22C90456C();
  sub_22C8A5214();
  sub_22C90455C();
  sub_22C3860B4();
  v8 = swift_allocBox();
  v10 = sub_22C371F78(v8, v9);
  v11(v10);
  *v1 = v8;
  sub_22C904ACC();
  sub_22C36985C();
  v12 = sub_22C375C78();
  v13(v12);
  sub_22C38AC64();
  sub_22C904B0C();
  v14 = sub_22C38C28C();
  v15(v14);
  v16 = sub_22C8A5154();
  sub_22C89D8DC(v16);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v17 = sub_22C376B3C();
  v18(v17);
  v19 = sub_22C8A5194();
  v20(v19);
  sub_22C36CC48();
}

void sub_22C8A2344()
{
  sub_22C36BA7C();
  sub_22C8A52AC();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C37FCFC();
  v4 = sub_22C3A5908(&qword_27D9C1088, &qword_22C92BF50);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C374FF8();
  sub_22C904BFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C36A588();
  sub_22C904A8C();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C373CE0();
  sub_22C90456C();
  sub_22C8A5214();
  sub_22C90455C();
  sub_22C3860B4();
  v8 = swift_allocBox();
  v10 = sub_22C371F78(v8, v9);
  v11(v10);
  *v1 = v8;
  sub_22C904ACC();
  sub_22C36985C();
  v12 = sub_22C375C78();
  v13(v12);
  sub_22C38AC64();
  sub_22C904B0C();
  v14 = sub_22C38C28C();
  v15(v14);
  v16 = sub_22C8A5154();
  sub_22C89D8DC(v16);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v17 = sub_22C376B3C();
  v18(v17);
  v19 = sub_22C8A5194();
  v20(v19);
  sub_22C36CC48();
}

void sub_22C8A256C()
{
  sub_22C36BA7C();
  sub_22C8A5350();
  v2 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C37FCFC();
  v4 = sub_22C3A5908(&qword_27D9C1088, &qword_22C92BF50);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D83C();
  sub_22C904BFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C370654();
  v7 = sub_22C3A5908(&qword_27D9C1078, &qword_22C92BF40);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C37B974();
  sub_22C904ABC();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C373CE0();
  sub_22C90466C();
  sub_22C37E22C();
  sub_22C8A52B8();
  sub_22C904B4C();
  v10 = sub_22C37049C();
  v14 = sub_22C8A51F0(v10, v11, v12, v13);
  MEMORY[0x2318B1F70](v14);
  sub_22C8A535C();
  sub_22C89D150();
  v15 = swift_allocBox();
  v17 = sub_22C388AD8(v15, v16);
  v18(v17);
  *v1 = v15;
  v19 = *MEMORY[0x277D1FB88];
  sub_22C904ACC();
  sub_22C8A5140();
  sub_22C37A060();
  v20();
  sub_22C36BECC();
  sub_22C36D1B8(v21, v22, v23);
  sub_22C904B0C();
  sub_22C37F658();
  sub_22C8A5260();
  v24();
  v25 = sub_22C389250();
  v28 = sub_22C36EEBC(v25, v26, v27, v19);
  sub_22C89D8DC(v28);
  sub_22C36DD80(v0, &qword_27D9C1068);
  v29 = sub_22C8A5240();
  v30(v29);
  v31 = sub_22C8A5250();
  v32(v31);
  sub_22C36CC48();
}

void sub_22C8A2834()
{
  sub_22C36BA7C();
  v1 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v1);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  sub_22C36D5B4();
  v70 = v3;
  v4 = sub_22C3A5908(&qword_27D9C1070, &unk_22C92BF30);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C36D5B4();
  v69 = v6;
  v7 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C3881C0();
  v68 = sub_22C9047AC();
  sub_22C369824();
  v66 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v62 = v11;
  sub_22C36BA0C();
  v67 = sub_22C904BFC();
  sub_22C369824();
  v65 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v60 = v15 - v14;
  sub_22C9047DC();
  sub_22C369824();
  v63 = v17;
  v64 = v16;
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v61 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v22 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v22);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C371BB4();
  v24 = sub_22C90069C();
  sub_22C36985C();
  v26 = *(v25 + 16);
  v27 = sub_22C372FCC();
  v26(v27);
  sub_22C36BECC();
  sub_22C36C640(v28, v29, v30, v24);
  v31 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot7GMSCall_traceId;
  v32 = v71;
  swift_beginAccess();
  sub_22C381470(v0, v32 + v31, &qword_27D9BB190, qword_22C90DD90);
  swift_endAccess();
  sub_22C90456C();
  sub_22C8A5214();
  v59 = v21;
  sub_22C90455C();
  sub_22C89D150();
  v33 = v62;
  sub_22C90479C();
  sub_22C90624C();
  v34 = sub_22C372FCC();
  v26(v34);
  sub_22C36BECC();
  sub_22C36C640(v35, v36, v37, v24);
  sub_22C90623C();
  sub_22C90625C();
  sub_22C36BECC();
  sub_22C36C640(v38, v39, v40, v41);
  sub_22C90478C();
  v43 = v63;
  v42 = v64;
  (*(v63 + 16))(v61, v21, v64);
  sub_22C90475C();
  v44 = v66;
  sub_22C37BBE4();
  v45 = v68;
  v46 = v33;
  v47(v69, v33, v68);
  v48 = sub_22C371A14();
  sub_22C36CD04(v48, v49, v50, v45);
  v51 = v60;
  sub_22C90486C();
  v52 = v65;
  v53 = v70;
  v54 = v67;
  (*(v65 + 16))(v70, v51, v67);
  v55 = sub_22C37049C();
  v58 = sub_22C8A51F0(v55, v56, v57, v54);
  sub_22C89D8DC(v58);
  sub_22C36DD80(v53, &qword_27D9C1068);
  (*(v44 + 8))(v46, v45);
  (*(v52 + 8))(v51, v54);
  (*(v43 + 8))(v59, v42);
  sub_22C36CC48();
}

void sub_22C8A2CE0()
{
  sub_22C36BA7C();
  v4 = v1;
  v5 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C36D5B4();
  v75 = v7;
  v8 = sub_22C3A5908(&qword_27D9C1070, &unk_22C92BF30);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D5B4();
  v74 = v10;
  sub_22C36BA0C();
  v11 = sub_22C90069C();
  sub_22C369824();
  v67[0] = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  v67[2] = v14;
  v15 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v67[1] = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  v20 = v67 - v19;
  v21 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v21);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C37B974();
  sub_22C9047AC();
  sub_22C369824();
  v72 = v24;
  v73 = v23;
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  sub_22C371BB4();
  sub_22C904BFC();
  sub_22C369824();
  v70 = v26;
  v71 = v25;
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v29 = v28 - v27;
  v69 = sub_22C9045AC();
  sub_22C369824();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v33);
  v35 = v67 - v34;
  sub_22C90456C();
  v77 = v35;
  sub_22C90455C();
  v68 = v29;
  sub_22C89D150();
  v36 = v2;
  sub_22C90479C();
  v37 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot7GMSCall_traceId;
  sub_22C36CA70(v4 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot7GMSCall_traceId, &v78);
  v76 = v4;
  sub_22C4E719C(v4 + v37, v20, &qword_27D9BB190, qword_22C90DD90);
  v38 = sub_22C383C3C();
  if (sub_22C370B74(v38, v39, v11))
  {
    sub_22C36DD80(v20, &qword_27D9BB190);
    v40 = 1;
  }

  else
  {
    v41 = *(v67[0] + 16);
    v42 = sub_22C372FCC();
    (v41)(v42);
    sub_22C36DD80(v20, &qword_27D9BB190);
    sub_22C90624C();
    sub_22C634004();
    v41();
    v43 = sub_22C371A14();
    sub_22C36CD04(v43, v44, v45, v11);
    sub_22C90623C();
    v46 = sub_22C3806B8();
    v47(v46);
    v40 = 0;
  }

  v48 = sub_22C90625C();
  sub_22C8A51F0(v0, v40, 1, v48);
  sub_22C90478C();
  v49 = v69;
  (*(v31 + 16))(v3, v77, v69);
  sub_22C90476C();
  v51 = v72;
  v50 = v73;
  sub_22C389280();
  v52 = sub_22C37E83C();
  v53(v52);
  v54 = sub_22C37049C();
  sub_22C8A51F0(v54, v55, v56, v50);
  v57 = v68;
  sub_22C90486C();
  v58 = v71;
  sub_22C37BBE4();
  v59 = v75;
  v60(v75, v57, v58);
  v61 = sub_22C37049C();
  v64 = sub_22C8A51F0(v61, v62, v63, v58);
  sub_22C89D8DC(v64);
  sub_22C36DD80(v59, &qword_27D9C1068);
  (*(v51 + 8))(v36, v50);
  v65 = sub_22C36CA88();
  v66(v65);
  (*(v31 + 8))(v77, v49);
  sub_22C36CC48();
}

void sub_22C8A3204()
{
  sub_22C36BA7C();
  v7 = sub_22C3A5908(&qword_27D9C1068, &qword_22C92BF28);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36D5B4();
  v79 = v9;
  v10 = sub_22C3A5908(&qword_27D9C1070, &unk_22C92BF30);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C36D5B4();
  v78 = v12;
  sub_22C36BA0C();
  v13 = sub_22C90069C();
  sub_22C369824();
  v71 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v72 = v16;
  v17 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v18 = sub_22C369914(v17);
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v70[2] = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  v22 = v70 - v21;
  v23 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v23);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  sub_22C374FF8();
  sub_22C9047AC();
  sub_22C369824();
  v76 = v26;
  v77 = v25;
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  sub_22C370654();
  sub_22C904BFC();
  sub_22C369824();
  v74 = v28;
  v75 = v27;
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  sub_22C387210();
  v29 = sub_22C3A5908(&qword_27D9C1078, &qword_22C92BF40);
  sub_22C369914(v29);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  sub_22C36D83C();
  v81 = sub_22C9046AC();
  sub_22C369824();
  v73 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v33);
  sub_22C36CAC0();
  sub_22C90466C();
  swift_getErrorValue();
  sub_22C89E2A8();
  sub_22C904B4C();
  sub_22C36BECC();
  sub_22C36C640(v34, v35, v36, v37);
  v38 = v4;
  v39 = v1;
  v80 = v2;
  MEMORY[0x2318B1B60](v38);
  v40 = v0;
  sub_22C89D150();
  v41 = v3;
  sub_22C90479C();
  v42 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot7GMSCall_traceId;
  sub_22C36CA70(v39 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot7GMSCall_traceId, &v82);
  sub_22C4E719C(v39 + v42, v22, &qword_27D9BB190, qword_22C90DD90);
  v43 = sub_22C383C3C();
  if (sub_22C370B74(v43, v44, v13))
  {
    sub_22C36DD80(v22, &qword_27D9BB190);
    v45 = 1;
  }

  else
  {
    v47 = v71;
    v46 = v72;
    v70[1] = v39;
    v48 = *(v71 + 16);
    v48(v72, v22, v13);
    sub_22C36DD80(v22, &qword_27D9BB190);
    sub_22C90624C();
    v49 = sub_22C36A724();
    (v48)(v49);
    v50 = sub_22C371A14();
    sub_22C36CD04(v50, v51, v52, v13);
    sub_22C90623C();
    (*(v47 + 8))(v46, v13);
    v45 = 0;
  }

  v53 = sub_22C90625C();
  sub_22C36C640(v5, v45, 1, v53);
  sub_22C90478C();
  v54 = v73;
  (*(v73 + 16))(v6, v80, v81);
  MEMORY[0x2318B1C50](v6);
  v56 = v76;
  v55 = v77;
  sub_22C389280();
  v57 = sub_22C37E83C();
  v58(v57);
  v59 = sub_22C37049C();
  sub_22C8A51F0(v59, v60, v61, v55);
  sub_22C90486C();
  v62 = v75;
  sub_22C37BBE4();
  v63 = v79;
  v64(v79, v40, v62);
  sub_22C36BECC();
  sub_22C36C640(v65, v66, v67, v62);
  sub_22C89D8DC(v63);
  sub_22C36DD80(v63, &qword_27D9C1068);
  (*(v56 + 8))(v41, v55);
  v68 = sub_22C372280();
  v69(v68);
  (*(v54 + 8))(v80, v81);
  sub_22C36CC48();
}

uint64_t sub_22C8A37F4(void *a1, uint64_t a2)
{
  swift_weakDestroy();
  sub_22C36DD80(v2 + *a1, a2);

  return swift_deallocClassInstance();
}

void sub_22C8A38C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_22C8A0CB0(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationBiomeRoot.RequestValidation.ValidationResult(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for ResponseGenerationTriageReport.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationTriageReport.ModelInference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C8A3BF8()
{
  result = qword_27D9C1030;
  if (!qword_27D9C1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1030);
  }

  return result;
}

unint64_t sub_22C8A3C50()
{
  result = qword_27D9C1038;
  if (!qword_27D9C1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1038);
  }

  return result;
}

unint64_t sub_22C8A3CA8()
{
  result = qword_27D9C1040;
  if (!qword_27D9C1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1040);
  }

  return result;
}

unint64_t sub_22C8A3D00()
{
  result = qword_27D9C1048;
  if (!qword_27D9C1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1048);
  }

  return result;
}

unint64_t sub_22C8A3D58()
{
  result = qword_27D9C1050;
  if (!qword_27D9C1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1050);
  }

  return result;
}

unint64_t sub_22C8A3DB0()
{
  result = qword_27D9C1058;
  if (!qword_27D9C1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1058);
  }

  return result;
}

unint64_t sub_22C8A3E08()
{
  result = qword_27D9C1060;
  if (!qword_27D9C1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1060);
  }

  return result;
}

id sub_22C8A3E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22C90A0EC();

  if (a4)
  {
    v8 = sub_22C909EAC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_22C8A3F0C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_22C90A41C();
    sub_22C37B124(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x2318B78B0](15, a1 >> 16);
    sub_22C37B124(v3);
    return v4 | 8;
  }
}

void sub_22C8A3F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C387D14(a1, a2, a3, a4);

  v6 = sub_22C90A49C();
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v42 = sub_22C36A724();
    v6 = sub_22C8A48C8(v42, v43);
    v45 = v44;

    v7 = v45;
    if ((v45 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      sub_22C36A724();
      v8 = sub_22C90AFCC();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          sub_22C37751C();
          if (v20)
          {
            sub_22C8A5344();
            while (1)
            {
              sub_22C8A5338();
              if (v16 && v24 < v22)
              {
                v25 = -48;
              }

              else if (v24 < 0x41 || v24 >= v21)
              {
                sub_22C8A52A0();
                if (!v16 || v24 >= v26)
                {
                  goto LABEL_130;
                }

                v25 = -87;
              }

              else
              {
                v25 = -55;
              }

              v27 = v23 * v4;
              if ((v27 & 0xFFFFFFFF00000000) == 0 && !__CFADD__(v27, (v24 + v25)))
              {
                sub_22C8A532C();
                if (!v28)
                {
                  continue;
                }
              }

              goto LABEL_130;
            }
          }
        }

        goto LABEL_130;
      }

      goto LABEL_134;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        sub_22C38B580();
        if (v29 ^ v30 | v28)
        {
          v33 = v36;
        }

        if (v29 ^ v30 | v28)
        {
          v34 = 65;
        }

        if (!(v29 ^ v30 | v28))
        {
          v35 = 58;
        }

        if (v31)
        {
          v37 = 0;
          while (1)
          {
            v38 = *v31;
            if (v38 < 0x30 || v38 >= v35)
            {
              if (v38 < 0x41 || v38 >= v34)
              {
                if (v38 < 0x61 || v38 >= v33)
                {
                  goto LABEL_130;
                }

                v39 = -87;
              }

              else
              {
                v39 = -55;
              }
            }

            else
            {
              v39 = -48;
            }

            v40 = v37 * v4;
            if ((v40 & 0xFFFFFFFF00000000) == 0)
            {
              v41 = v38 + v39;
              v16 = __CFADD__(v40, v41);
              v37 = v40 + v41;
              if (!v16)
              {
                ++v31;
                if (--v32)
                {
                  continue;
                }
              }
            }

            goto LABEL_130;
          }
        }
      }

      goto LABEL_130;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        sub_22C37751C();
        if (v11)
        {
          sub_22C8A5344();
          while (1)
          {
            sub_22C8A5338();
            if (v16 && v15 < v13)
            {
              v17 = -48;
            }

            else if (v15 < 0x41 || v15 >= v12)
            {
              sub_22C8A52A0();
              if (!v16 || v15 >= v18)
              {
                break;
              }

              v17 = -87;
            }

            else
            {
              v17 = -55;
            }

            v19 = v14 * v4;
            if ((v19 & 0xFFFFFFFF00000000) == 0 && v19 >= (v15 + v17))
            {
              sub_22C8A532C();
              if (!v28)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_130:

      return;
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  sub_22C8A5288();
  if (!v28)
  {
    if (v47 != 45)
    {
      if (v46)
      {
        sub_22C8A517C();
        while (1)
        {
          sub_22C386C24();
          if (v16 && v65 < v64)
          {
            v66 = -48;
          }

          else if (v65 < 0x41 || v65 >= v63)
          {
            sub_22C8A52A0();
            if (!v16 || v65 >= v67)
            {
              goto LABEL_130;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }

          v68 = v62 * v4;
          if ((v68 & 0xFFFFFFFF00000000) == 0 && !__CFADD__(v68, (v65 + v66)))
          {
            sub_22C37ADF8();
            if (!v28)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    if (v46)
    {
      if (v46 != 1)
      {
        sub_22C8A517C();
        sub_22C8A51B0();
        while (1)
        {
          sub_22C386C24();
          if (v16 && v51 < v50)
          {
            v52 = -48;
          }

          else if (v51 < 0x41 || v51 >= v49)
          {
            sub_22C8A52A0();
            if (!v16 || v51 >= v53)
            {
              goto LABEL_130;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }

          v54 = v48 * v4;
          if ((v54 & 0xFFFFFFFF00000000) == 0 && v54 >= (v51 + v52))
          {
            sub_22C37ADF8();
            if (!v28)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    goto LABEL_133;
  }

  if (v46)
  {
    if (v46 != 1)
    {
      sub_22C8A517C();
      sub_22C8A51B0();
      while (1)
      {
        sub_22C386C24();
        if (v16 && v58 < v57)
        {
          v59 = -48;
        }

        else if (v58 < 0x41 || v58 >= v56)
        {
          sub_22C8A52A0();
          if (!v16 || v58 >= v60)
          {
            goto LABEL_130;
          }

          v59 = -87;
        }

        else
        {
          v59 = -55;
        }

        v61 = v55 * v4;
        if ((v61 & 0xFFFFFFFF00000000) == 0 && !__CFADD__(v61, (v58 + v59)))
        {
          sub_22C37ADF8();
          if (!v28)
          {
            continue;
          }
        }

        goto LABEL_130;
      }
    }

    goto LABEL_130;
  }

LABEL_135:
  __break(1u);
}

void sub_22C8A4410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C387D14(a1, a2, a3, a4);

  v6 = sub_22C90A49C();
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v39 = sub_22C36A724();
    v6 = sub_22C8A48C8(v39, v40);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      sub_22C36A724();
      v8 = sub_22C90AFCC();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          sub_22C37751C();
          if (v19)
          {
            sub_22C8A5344();
            while (1)
            {
              sub_22C8A5338();
              if (v16 && v23 < v21)
              {
                v24 = -48;
              }

              else if (v23 < 0x41 || v23 >= v20)
              {
                sub_22C5CA9F8();
                if (!v16 || v23 >= v25)
                {
                  goto LABEL_130;
                }

                v24 = -87;
              }

              else
              {
                v24 = -55;
              }

              if ((v22 * v4) >> 64 == (v22 * v4) >> 63 && !__OFADD__(v22 * v4, (v23 + v24)))
              {
                sub_22C8A532C();
                if (!v26)
                {
                  continue;
                }
              }

              goto LABEL_130;
            }
          }
        }

        goto LABEL_130;
      }

      goto LABEL_134;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        sub_22C38B580();
        if (v27 ^ v28 | v26)
        {
          v31 = v34;
        }

        if (v27 ^ v28 | v26)
        {
          v32 = 65;
        }

        if (!(v27 ^ v28 | v26))
        {
          v33 = 58;
        }

        if (v29)
        {
          v35 = 0;
          while (1)
          {
            v36 = *v29;
            if (v36 < 0x30 || v36 >= v33)
            {
              if (v36 < 0x41 || v36 >= v32)
              {
                if (v36 < 0x61 || v36 >= v31)
                {
                  goto LABEL_130;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * v4;
            if ((v35 * v4) >> 64 == (v35 * v4) >> 63)
            {
              v35 = v38 + (v36 + v37);
              if (!__OFADD__(v38, (v36 + v37)))
              {
                ++v29;
                if (--v30)
                {
                  continue;
                }
              }
            }

            goto LABEL_130;
          }
        }
      }

      goto LABEL_130;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        sub_22C37751C();
        if (v11)
        {
          sub_22C8A5344();
          while (1)
          {
            sub_22C8A5338();
            if (v16 && v15 < v13)
            {
              v17 = -48;
            }

            else if (v15 < 0x41 || v15 >= v12)
            {
              sub_22C5CA9F8();
              if (!v16 || v15 >= v18)
              {
                break;
              }

              v17 = -87;
            }

            else
            {
              v17 = -55;
            }

            if ((v14 * v4) >> 64 == (v14 * v4) >> 63 && !__OFSUB__(v14 * v4, (v15 + v17)))
            {
              sub_22C8A532C();
              if (!v26)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_130:

      return;
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  sub_22C8A5288();
  if (!v26)
  {
    if (v44 != 45)
    {
      if (v43)
      {
        sub_22C8A517C();
        while (1)
        {
          sub_22C386C24();
          if (v16 && v60 < v59)
          {
            v61 = -48;
          }

          else if (v60 < 0x41 || v60 >= v58)
          {
            sub_22C5CA9F8();
            if (!v16 || v60 >= v62)
            {
              goto LABEL_130;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }

          if ((v57 * v4) >> 64 == (v57 * v4) >> 63 && !__OFADD__(v57 * v4, (v60 + v61)))
          {
            sub_22C37ADF8();
            if (!v26)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    if (v43)
    {
      if (v43 != 1)
      {
        sub_22C8A517C();
        sub_22C8A51B0();
        while (1)
        {
          sub_22C386C24();
          if (v16 && v48 < v47)
          {
            v49 = -48;
          }

          else if (v48 < 0x41 || v48 >= v46)
          {
            sub_22C5CA9F8();
            if (!v16 || v48 >= v50)
            {
              goto LABEL_130;
            }

            v49 = -87;
          }

          else
          {
            v49 = -55;
          }

          if ((v45 * v4) >> 64 == (v45 * v4) >> 63 && !__OFSUB__(v45 * v4, (v48 + v49)))
          {
            sub_22C37ADF8();
            if (!v26)
            {
              continue;
            }
          }

          goto LABEL_130;
        }
      }

      goto LABEL_130;
    }

    goto LABEL_133;
  }

  if (v43)
  {
    if (v43 != 1)
    {
      sub_22C8A517C();
      sub_22C8A51B0();
      while (1)
      {
        sub_22C386C24();
        if (v16 && v54 < v53)
        {
          v55 = -48;
        }

        else if (v54 < 0x41 || v54 >= v52)
        {
          sub_22C5CA9F8();
          if (!v16 || v54 >= v56)
          {
            goto LABEL_130;
          }

          v55 = -87;
        }

        else
        {
          v55 = -55;
        }

        if ((v51 * v4) >> 64 == (v51 * v4) >> 63 && !__OFADD__(v51 * v4, (v54 + v55)))
        {
          sub_22C37ADF8();
          if (!v26)
          {
            continue;
          }
        }

        goto LABEL_130;
      }
    }

    goto LABEL_130;
  }

LABEL_135:
  __break(1u);
}

uint64_t sub_22C8A48C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_22C87FAE0(sub_22C439EAC, 0, a1, a2);
  sub_22C8A492C(v3, v4, v5, v6);
  sub_22C385D88();

  return v2;
}

uint64_t sub_22C8A492C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22C90ACAC();
    if (!v9 || (v10 = v9, v11 = sub_22C387878(v9, 0), v12 = sub_22C8A4A8C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22C90A26C();

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
      return sub_22C90A26C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22C90AFCC();
LABEL_4:

  return sub_22C90A26C();
}

unint64_t sub_22C8A4A8C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_22C8A3F0C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22C90A3FC();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22C90AFCC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_22C8A3F0C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_22C90A3CC();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22C8A4C9C(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unsigned int a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    sub_22C634004();
    result = sub_22C8A3F0C(v19, v20, v21);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v22 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(a6) & 0xF;
    }

    if (v22 < v16 >> 16)
    {
      goto LABEL_114;
    }

    result = sub_22C90A3EC();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    sub_22C634004();
    v24 = v23;
    result = sub_22C8A3F0C(v25, v26, v27);
    v17 = v24;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    sub_22C634004();
    v29 = v28;
    result = sub_22C8A3F0C(v30, v31, v32);
    v17 = v29;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v33 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v33 = v17;
  }

  if (v33 < v11 >> 16)
  {
    goto LABEL_110;
  }

  if (v33 < a4 >> 16)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  sub_22C370114();
  result = sub_22C90A3EC();
LABEL_22:
  v34 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_109;
  }

  if (v34 < v18)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v35 = (v18 + v12);
  if (!v12)
  {
    v35 = 0;
  }

  v36 = *v35;
  if (v36 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        sub_22C38191C();
        if (v58 ^ v59 | v57)
        {
          v64 = v65;
        }

        if (v58 ^ v59 | v57)
        {
          v66 = 65;
        }

        else
        {
          v66 = v63;
        }

        if (v58 ^ v59 | v57)
        {
          v67 = v62;
        }

        else
        {
          v67 = 58;
        }

        if (v61)
        {
          v48 = 0;
          v68 = (v61 + 1);
          v69 = v60 - 1;
          do
          {
            v70 = *v68;
            if (v70 < 0x30 || v70 >= v67)
            {
              if (v70 < 0x41 || v70 >= v66)
              {
                v53 = 0;
                v54 = 1;
                if (v70 < 0x61 || v70 >= v64)
                {
                  return v53 | (v54 << 32);
                }

                v71 = -87;
              }

              else
              {
                v71 = -55;
              }
            }

            else
            {
              v71 = -48;
            }

            v72 = v48 * a7;
            if ((v72 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_106;
            }

            v73 = v70 + v71;
            v48 = v72 + v73;
            if (__CFADD__(v72, v73))
            {
              goto LABEL_106;
            }

            ++v68;
            --v69;
          }

          while (v69);
LABEL_104:
          v54 = 0;
          v53 = v48;
          return v53 | (v54 << 32);
        }

        goto LABEL_105;
      }

      goto LABEL_106;
    }

    goto LABEL_113;
  }

  if (v36 != 45)
  {
    if (v34 != v18)
    {
      sub_22C38191C();
      if (v75 ^ v76 | v74)
      {
        v81 = v82;
      }

      if (v75 ^ v76 | v74)
      {
        v83 = 65;
      }

      else
      {
        v83 = v80;
      }

      if (v75 ^ v76 | v74)
      {
        v84 = v79;
      }

      else
      {
        v84 = 58;
      }

      if (v78)
      {
        v48 = 0;
        while (1)
        {
          v85 = *v78;
          if (v85 < 0x30 || v85 >= v84)
          {
            if (v85 < 0x41 || v85 >= v83)
            {
              v53 = 0;
              v54 = 1;
              if (v85 < 0x61 || v85 >= v81)
              {
                return v53 | (v54 << 32);
              }

              v86 = -87;
            }

            else
            {
              v86 = -55;
            }
          }

          else
          {
            v86 = -48;
          }

          v87 = v48 * a7;
          if ((v87 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_106;
          }

          v88 = v85 + v86;
          v48 = v87 + v88;
          if (__CFADD__(v87, v88))
          {
            goto LABEL_106;
          }

          ++v78;
          if (!--v77)
          {
            goto LABEL_104;
          }
        }
      }

      goto LABEL_105;
    }

LABEL_106:
    v53 = 0;
    v54 = 1;
    return v53 | (v54 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      sub_22C38191C();
      if (v38 ^ v39 | v37)
      {
        v44 = v45;
      }

      if (v38 ^ v39 | v37)
      {
        v46 = 65;
      }

      else
      {
        v46 = v43;
      }

      if (v38 ^ v39 | v37)
      {
        v47 = v42;
      }

      else
      {
        v47 = 58;
      }

      if (v41)
      {
        v48 = 0;
        v49 = (v41 + 1);
        v50 = v40 - 1;
        while (1)
        {
          v51 = *v49;
          if (v51 < 0x30 || v51 >= v47)
          {
            if (v51 < 0x41 || v51 >= v46)
            {
              v53 = 0;
              v54 = 1;
              if (v51 < 0x61 || v51 >= v44)
              {
                return v53 | (v54 << 32);
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

          v55 = v48 * a7;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_106;
          }

          v56 = v51 + v52;
          v48 = v55 - v56;
          if (v55 < v56)
          {
            goto LABEL_106;
          }

          ++v49;
          if (!--v50)
          {
            goto LABEL_104;
          }
        }
      }

LABEL_105:
      v53 = 0;
      v54 = 0;
      return v53 | (v54 << 32);
    }

    goto LABEL_106;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
  return result;
}

uint64_t sub_22C8A5090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C8A50D8()
{
  v1 = sub_22C3704C4();
  v2(v1);
  sub_22C36985C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C8A51C0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_22C909FFC();
}

uint64_t sub_22C8A5230(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  return result;
}

uint64_t sub_22C8A5270(uint64_t a1)
{

  return sub_22C90B62C();
}

void sub_22C8A52B8()
{

  sub_22C89E2A8();
}

uint64_t sub_22C8A52D4(uint64_t a2, ...)
{

  return sub_22C909FFC();
}

id sub_22C8A52F8(uint64_t a1, uint64_t a2)
{

  return sub_22C8A3E5C(a1, a2, v2, 0);
}

uint64_t sub_22C8A5314()
{
}

uint64_t sub_22C8A5368(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_22C909FFC();
}

unint64_t sub_22C8A5380(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_22C90A4AC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C8A542C(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    v3 = a3(0);
    sub_22C369914(v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C8A54C4(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_22C8A5524(uint64_t a1)
{
  v59 = sub_22C3A5908(&qword_27D9C11A0, &qword_22C92C288);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  v58 = &v50 - v3;
  v4 = sub_22C3A5908(&qword_27D9C11A8, &unk_22C92C290);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v57 = &v50 - v6;
  v7 = sub_22C36BA0C();
  v8 = type metadata accessor for PromptTreeIdentifier.Label(v7);
  v9 = sub_22C3699B8(v8);
  v56 = v10;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v13 = v12 - v11;
  v54 = sub_22C3A5908(&qword_27D9BD050, &qword_22C917420);
  sub_22C36985C();
  MEMORY[0x28223BE20](v14);
  sub_22C3698E4();
  v53 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v52 = v17;
  v60 = a1;
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9C11B0, qword_22C92C2A0);
    sub_22C37FDE8();
    v18 = sub_22C90B1EC();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v19 = v60 + 64;
  v20 = 1 << *(v60 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v60 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = v18 + 64;

  v26 = 0;
  v55 = v13;
  v51 = v18;
  v27 = v58;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v29 = __clz(__rbit64(v22)) | (v26 << 6);
    v30 = v60;
    v31 = *(v60 + 48);
    v61 = *(v56 + 72);
    v32 = v52;
    sub_22C8AEF98(v31 + v61 * v29, v52, type metadata accessor for PromptTreeIdentifier.Label);
    v33 = *(*(v30 + 56) + 8 * v29);
    v34 = v54;
    *(v32 + *(v54 + 48)) = v33;
    v35 = v32;
    v36 = v53;
    sub_22C8AF090(v35, v53);
    v37 = *(v34 + 48);
    v38 = *(v59 + 48);
    sub_22C8AF100(v36, v27);
    v62[0] = *(v36 + v37);

    sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C3A5908(&qword_27D9BE4D0, &unk_22C91DB40);
    swift_dynamicCast();
    v39 = v57;
    sub_22C8AF100(v27, v57);
    v40 = *(v27 + v38);
    v41 = v55;
    sub_22C8AF100(v39, v55);
    v18 = v51;
    sub_22C90B62C();
    sub_22C48640C();
    result = sub_22C90B66C();
    v42 = -1 << *(v18 + 32);
    v43 = result & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v24 + 8 * (v43 >> 6))) == 0)
    {
      v46 = 0;
      v47 = (63 - v42) >> 6;
      while (++v44 != v47 || (v46 & 1) == 0)
      {
        v48 = v44 == v47;
        if (v44 == v47)
        {
          v44 = 0;
        }

        v46 |= v48;
        v49 = *(v24 + 8 * v44);
        if (v49 != -1)
        {
          v45 = __clz(__rbit64(~v49)) + (v44 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v45 = __clz(__rbit64((-1 << v43) & ~*(v24 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v22 &= v22 - 1;
    *(v24 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    result = sub_22C8AF100(v41, *(v18 + 48) + v45 * v61);
    *(*(v18 + 56) + 8 * v45) = v40;
    ++*(v18 + 16);
  }

  while (v22);
LABEL_8:
  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v23)
    {

      return v18;
    }

    v22 = *(v19 + 8 * v28);
    ++v26;
    if (v22)
    {
      v26 = v28;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_22C8A598C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9C0E18, &qword_22C92B4B0);
    sub_22C37FDE8();
    v2 = sub_22C90B1EC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_22C456E34(&v22, v24);
    sub_22C456E34(v24, v25);
    sub_22C456E34(v25, &v23);
    result = sub_22C36E2BC(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      sub_22C36FF94(v17);
      result = sub_22C456E34(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_22C456E34(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_22C8A5BD4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9C1168, &qword_22C92C250);
    v2 = sub_22C90B1EC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v16 = *v15;
    v17 = v15[1];
    v27 = MEMORY[0x277D837D0];
    v28 = MEMORY[0x277D42EC0];
    *&v26 = v16;
    *(&v26 + 1) = v17;
    sub_22C36C730(&v26, v30);
    sub_22C36C730(v30, v31);
    sub_22C36C730(v31, &v29);

    result = sub_22C36E2BC(v14, v13);
    v18 = result;
    if (v19)
    {
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;

      v21 = (v2[7] + 40 * v18);
      sub_22C36FF94(v21);
      result = sub_22C36C730(&v29, v21);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = (v2[6] + 16 * result);
      *v22 = v14;
      v22[1] = v13;
      result = sub_22C36C730(&v29, v2[7] + 40 * result);
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22C8A5E24(uint64_t a1, float a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a1 + 16) == i)
    {
      return 0;
    }

    if (*(a1 + 32 + 4 * i) == a2)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_22C8A5E64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_22C90A31C())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_22C90A46C() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_22C90B4FC();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t ResponseGenerationPromptVersion.rawValue.getter()
{
  if (*v0)
  {
    return 14454;
  }

  else
  {
    return 14198;
  }
}

uint64_t ResponseGenerationModelProvider.init(sessionIdentityToken:promptVersion:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_22C9063DC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  LODWORD(v13) = *a2;
  v14 = type metadata accessor for ResponseGenerationModelProvider(0);
  sub_22C379DF8(a1, &a3[*(v14 + 20)], &qword_27D9BB728, &qword_22C911230);
  sub_22C90405C();
  v15 = sub_22C9063CC();
  v16 = sub_22C90AACC();
  if (os_log_type_enabled(v15, v16))
  {
    sub_22C36BED8();
    v23 = a1;
    v17 = swift_slowAlloc();
    sub_22C370220();
    v22 = v8;
    v18 = v13;
    v13 = swift_slowAlloc();
    v24 = v13;
    *v17 = 136315138;
    if (v18)
    {
      v19 = 14454;
    }

    else
    {
      v19 = 14198;
    }

    v20 = sub_22C36F9F4(v19, 0xE200000000000000, &v24);

    *(v17 + 4) = v20;
    _os_log_impl(&dword_22C366000, v15, v16, "Using prompt version %s", v17, 0xCu);
    sub_22C36FF94(v13);
    LOBYTE(v13) = v18;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    sub_22C36DD28(v23, &qword_27D9BB728, &qword_22C911230);
    result = (*(v22 + 8))(v12, v6);
  }

  else
  {

    sub_22C36DD28(a1, &qword_27D9BB728, &qword_22C911230);
    result = (*(v8 + 8))(v12, v6);
  }

  *a3 = v13;
  return result;
}

uint64_t ResponseGenerationModelProvider.getModelClient(locale:biomeRoot:)()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_22C90077C();
  v1[6] = v5;
  sub_22C3699B8(v5);
  v1[7] = v6;
  v1[8] = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  sub_22C369914(v7);
  v1[9] = sub_22C3699D4();
  v8 = sub_22C9063DC();
  v1[10] = v8;
  sub_22C3699B8(v8);
  v1[11] = v9;
  v1[12] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C8A62C8(uint64_t a1)
{
  sub_22C90405C();
  v3 = sub_22C9063CC();
  v4 = sub_22C90AACC();
  if (os_log_type_enabled(v3, v4))
  {
    sub_22C3720F4();
    v5 = swift_slowAlloc();
    sub_22C383878(v5);
    _os_log_impl(&dword_22C366000, v3, v4, "Configuring GMS client without LLMCache", v1, 2u);
    v6 = sub_22C371B8C();
    MEMORY[0x2318B9880](v6);
  }

  v7 = v2[9];
  v9 = v2[7];
  v8 = v2[8];
  v10 = v2[5];
  v21 = v2[6];
  v22 = v2[4];
  v20 = v2[3];
  v11 = v2[2];

  v12 = sub_22C50B478();
  v13(v12);
  v14 = type metadata accessor for ResponseGenerationModelProvider(0);
  sub_22C379DF8(v10 + *(v14 + 20), v7, &qword_27D9BB728, &qword_22C911230);
  (*(v9 + 16))(v8, v20, v21);
  v11[3] = type metadata accessor for ResponseGenerationGenerativeModelsClient(0);
  v11[4] = &off_283FC30B8;
  sub_22C557D04(v11);

  v15 = sub_22C36BA00();
  sub_22C8A6470(v15, v16, v22, v17);

  sub_22C369A24();

  return v18();
}

uint64_t sub_22C8A6470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v157 = a2;
  v154 = sub_22C90077C();
  sub_22C369824();
  v152 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v139 = v10 - v9;
  sub_22C36BA0C();
  v141 = sub_22C9063DC();
  sub_22C369824();
  v140 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  sub_22C3698D4();
  v14 = MEMORY[0x28223BE20](v13);
  v148 = v134 - v15;
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v134[1] = v16;
  v17 = sub_22C3A5908(&qword_27D9BBBF8, &qword_22C911238);
  sub_22C369914(v17);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  v147 = v134 - v19;
  sub_22C36BA0C();
  v138 = sub_22C90199C();
  sub_22C369824();
  v136 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v135 = v23 - v22;
  sub_22C36BA0C();
  v151 = sub_22C90124C();
  sub_22C369824();
  v137 = v24;
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA64();
  v149 = v27;
  v28 = sub_22C3A5908(&qword_27D9BBC00, &unk_22C911240);
  v29 = sub_22C369914(v28);
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA64();
  v146 = v31;
  sub_22C36BA0C();
  v144 = sub_22C90075C();
  sub_22C369824();
  v156 = v32;
  MEMORY[0x28223BE20](v33);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  v143 = v35;
  v36 = sub_22C3A5908(&qword_27D9C1178, &qword_22C92C258);
  v37 = sub_22C369914(v36);
  MEMORY[0x28223BE20](v37);
  sub_22C3698E4();
  v145 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  v155 = v40;
  v41 = sub_22C36BA0C();
  v42 = type metadata accessor for ResponseGenerationPreferences(v41);
  sub_22C36985C();
  MEMORY[0x28223BE20](v43);
  sub_22C369838();
  v46 = v45 - v44;
  v150 = a1;
  v47 = sub_22C36BAFC();
  sub_22C379DF8(v47, v48, v49, v50);
  v51 = type metadata accessor for ResponseGenerationGenerativeModelsClient(0);
  v52 = a4;
  *(a4 + v51[7]) = a3;
  if (qword_2814357B8 != -1)
  {
    swift_once();
  }

  v53 = sub_22C37AA60(v42, qword_281437588);
  swift_beginAccess();
  sub_22C8AEF98(v53, v46, type metadata accessor for ResponseGenerationPreferences);
  v54 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C386EA4(v54);
  v153 = v158;
  v142 = v159;
  sub_22C8AEFF4(v46, type metadata accessor for ResponseGenerationPreferences);
  sub_22C8AF72C();
  v55 = sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
  sub_22C386EA4(v55);
  v56 = v158;
  v57 = BYTE4(v158);
  sub_22C8AF764();
  v58 = a4 + v51[8];
  *v58 = v56;
  *(v58 + 4) = v57;
  sub_22C8AF72C();
  v59 = sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
  sub_22C386EA4(v59);
  v60 = v158;
  sub_22C8AF764();
  *(a4 + v51[9]) = v60;
  sub_22C8AF72C();
  sub_22C901EDC();
  v61 = v158;
  v62 = v159;
  sub_22C8AF764();
  v63 = (a4 + v51[10]);
  *v63 = v61;
  v63[1] = v62;
  sub_22C8AF72C();
  v64 = sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
  sub_22C386EA4(v64);
  v65 = v158;
  sub_22C8AF764();
  *(a4 + v51[11]) = v65;
  sub_22C8AF72C();
  sub_22C901EDC();
  v66 = v158;
  v67 = v159;
  sub_22C8AF764();
  v68 = (a4 + v51[12]);
  *v68 = v66;
  v68[1] = v67;
  v69 = v142;

  v70 = v143;
  sub_22C90076C();
  sub_22C90074C();
  v72 = v156 + 8;
  v71 = *(v156 + 8);
  v73 = v144;
  v71(v70, v144);
  v74 = v155;
  sub_22C90123C();
  v146 = v52;
  v75 = v51;
  v156 = v72;
  v76 = v73;
  v77 = v154;
  v78 = v151;
  v79 = v147;
  sub_22C36C640(v74, 0, 1, v151);
  v147 = *(v75 + 24);
  v80 = v145;
  sub_22C379DF8(v74, v145, &qword_27D9C1178, &qword_22C92C258);
  v81 = sub_22C370B74(v80, 1, v78);
  v82 = v152;
  if (v81 == 1)
  {
    v151 = v75;
    sub_22C36DD28(v80, &qword_27D9C1178, &qword_22C92C258);
    sub_22C90405C();
    v83 = v139;
    v84 = v157;
    (*(v82 + 16))(v139, v157, v77);

    v85 = sub_22C9063CC();
    v86 = sub_22C90AADC();

    if (os_log_type_enabled(v85, v86))
    {
      sub_22C37FE78();
      v87 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      *v87 = 136315394;
      v88 = sub_22C36F9F4(v153, v69, &v158);

      *(v87 + 4) = v88;
      *(v87 + 12) = 2080;
      v89 = v134[2];
      sub_22C90076C();
      v90 = v134[3];
      sub_22C90074C();
      v71(v89, v76);
      v91 = sub_22C9006FC();
      if (sub_22C370B74(v90, 1, v91) == 1)
      {
        sub_22C36DD28(v90, &qword_27D9BBC00, &unk_22C911240);
        v92 = 0xEE00656C61636F6CLL;
        v93 = 0x206E776F6E6B6E75;
      }

      else
      {
        v93 = sub_22C9006EC();
        v92 = v120;
        sub_22C36BBA8();
        v121 = sub_22C36CA88();
        v122(v121);
      }

      v123 = *(v152 + 8);
      v124 = v154;
      v123(v139, v154);
      v125 = sub_22C36F9F4(v93, v92, &v158);

      *(v87 + 14) = v125;
      _os_log_impl(&dword_22C366000, v85, v86, "Unable to create MC query %s with %s", v87, 0x16u);
      swift_arrayDestroy();
      v126 = sub_22C371B8C();
      MEMORY[0x2318B9880](v126);
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v123(v157, v124);
      sub_22C36DD28(v150, &qword_27D9BB728, &qword_22C911230);
      sub_22C36DB14();
    }

    else
    {

      v103 = *(v82 + 8);
      v103(v84, v77);
      sub_22C36DD28(v150, &qword_27D9BB728, &qword_22C911230);
      v103(v83, v77);
      sub_22C36DB14();
    }

    sub_22C36EE3C();
    v127();
    sub_22C36DD28(v155, &qword_27D9C1178, &qword_22C92C258);
    v128 = *(v151 + 20);
    goto LABEL_21;
  }

  v94 = v137;
  v95 = v149;
  (*(v137 + 32))(v149, v80, v78);
  (*(v94 + 16))(v134[4], v95, v78);
  sub_22C90198C();
  v96 = v138;
  if (sub_22C370B74(v79, 1, v138) == 1)
  {
    sub_22C36DD28(v79, &qword_27D9BBBF8, &qword_22C911238);
    sub_22C90405C();

    v97 = sub_22C9063CC();
    v98 = sub_22C90AADC();

    if (os_log_type_enabled(v97, v98))
    {
      sub_22C36BED8();
      v99 = swift_slowAlloc();
      sub_22C370220();
      v100 = swift_slowAlloc();
      v158 = v100;
      *v99 = 136315138;
      v101 = sub_22C36F9F4(v153, v69, &v158);

      *(v99 + 4) = v101;
      _os_log_impl(&dword_22C366000, v97, v98, "Unknown model bundle %s", v99, 0xCu);
      sub_22C36FF94(v100);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v82 + 8))(v157, v154);
      sub_22C36DD28(v150, &qword_27D9BB728, &qword_22C911230);
      sub_22C36DB14();
      sub_22C36EE3C();
      v102();
      (*(v94 + 8))(v149, v151);
    }

    else
    {

      (*(v82 + 8))(v157, v154);
      sub_22C36DD28(v150, &qword_27D9BB728, &qword_22C911230);
      sub_22C36DB14();
      sub_22C36EE3C();
      v129();
      (*(v94 + 8))(v149, v78);
    }

    sub_22C36DD28(v155, &qword_27D9C1178, &qword_22C92C258);
    v128 = *(v75 + 20);
LABEL_21:
    v130 = sub_22C3A5908(&qword_27D9BBBC0, &qword_22C92C1C0);
    v131 = v146;
    result = sub_22C374D84(v146 + v128, v132, v133, v130);
    *(v131 + v147) = 0;
    return result;
  }

  v104 = v135;
  (*(v136 + 32))(v135, v79, v96);
  v105 = *(v75 + 20);
  sub_22C90127C();
  sub_22C8AF04C(&qword_281435820, MEMORY[0x277D29CE0]);
  v106 = v146;
  sub_22C90125C();
  v107 = sub_22C3A5908(&qword_27D9BBBC0, &qword_22C92C1C0);
  sub_22C36C640(v106 + v105, 0, 1, v107);
  v108 = sub_22C8A84C4(v104);
  *(v106 + v147) = v108;
  v109 = v157;
  if (v108)
  {

    sub_22C90405C();
    v110 = sub_22C9063CC();
    sub_22C90AACC();
    v111 = sub_22C370214();
    if (os_log_type_enabled(v111, v112))
    {
      sub_22C3720F4();
      v113 = swift_slowAlloc();
      *v113 = 0;
      sub_22C382ABC();
      _os_log_impl(v114, v115, v116, v117, v113, 2u);
      v78 = v151;
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    sub_22C36DB14();
    sub_22C36EE3C();
    v118();
    sub_22C90193C();
  }

  (*(v82 + 8))(v109, v154);
  sub_22C36DD28(v150, &qword_27D9BB728, &qword_22C911230);
  (*(v136 + 8))(v135, v138);
  (*(v94 + 8))(v149, v78);
  return sub_22C36DD28(v155, &qword_27D9C1178, &qword_22C92C258);
}

IntelligenceFlowPlannerRuntime::ResponseGenerationPromptVersion_optional __swiftcall ResponseGenerationPromptVersion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C90B21C();

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

  *v2 = v5;
  return result;
}

unint64_t sub_22C8A7380(uint64_t a1)
{
  v1 = sub_22C90B21C();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_22C8A73CC(uint64_t a1)
{
  v1 = sub_22C90B21C();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22C8A7448@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseGenerationPromptVersion.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE200000000000000;
  return result;
}

void *sub_22C8A7474(void *a1, unint64_t a2, char a3)
{
  v99 = a2;
  v103 = a1;
  v4 = sub_22C9063DC();
  sub_22C369824();
  v98 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v92 - v11;
  v13 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v16 = &v92 - v15;
  v17 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C369824();
  v19 = v18;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  v22 = &v92 - v21;
  sub_22C90A17C();
  sub_22C369824();
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v28 = v27 - v26;
  if (!a3)
  {
    v92 = v25;
    v93 = v24;
    v95 = v19;
    v96 = v9;
    v44 = v98;
    v94 = v4;
    sub_22C90306C();
    v45 = v100;
    v97 = v17;
    sub_22C90308C();
    v46 = v22;
    if (v45)
    {
      v93 = v22;
      v47 = v45;
      v48 = v99;
      v49 = v97;
      v50 = v95;
    }

    else
    {
      v100 = 0;
      v61 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
      v62 = sub_22C370B74(v16, 1, v61);
      sub_22C36DD28(v16, &qword_27D9BC160, &unk_22C912170);
      v50 = v95;
      if (v62 == 1)
      {
        sub_22C90405C();
        v63 = v99;

        v64 = sub_22C9063CC();
        v65 = sub_22C90AACC();

        if (os_log_type_enabled(v64, v65))
        {
          sub_22C36BED8();
          v66 = swift_slowAlloc();
          sub_22C370220();
          v67 = swift_slowAlloc();
          v101 = v67;
          *v66 = 136315138;
          *(v66 + 4) = sub_22C36F9F4(v103, v63, &v101);
          sub_22C376098();
          _os_log_impl(v68, v69, v70, v71, v66, 0xCu);
          sub_22C36FF94(v67);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          sub_22C369B50();
          MEMORY[0x2318B9880]();
        }

        (*(v98 + 8))(v12, v94);
        (*(v50 + 8))(v46, v97);
        goto LABEL_17;
      }

      v48 = v99;
      v101 = v103;
      v102 = v99;
      sub_22C379BF8();
      sub_22C3858B4();
      v73 = sub_22C37A4C0();
      sub_22C3800C4(v73, v74, v75, v76, v77, v78, v79, v80, v88, v89, v90, v91);
      sub_22C386130();
      sub_22C90A15C();
      sub_22C386A34();
      sub_22C90A12C();
      v82 = v81;

      (*(v92 + 8))(v28, v93);
      if (v82 >> 60 == 15)
      {
        v93 = v22;
        sub_22C8AEE80();
        sub_22C37A198();
        v47 = swift_allocError();
        swift_willThrow();
        v49 = v97;
      }

      else
      {
        sub_22C8FFECC();
        swift_allocObject();
        sub_22C8FFEBC();
        sub_22C8AEED4();
        sub_22C3884B4();
        v83 = v100;
        sub_22C8FFEAC();
        v49 = v97;
        if (!v83)
        {
          (*(v50 + 8))(v22, v97);

          v86 = sub_22C50B478();
          sub_22C3C8114(v86, v87);
          return v101;
        }

        v93 = v22;

        v84 = sub_22C50B478();
        sub_22C3C8114(v84, v85);
        v47 = v83;
      }

      v44 = v98;
    }

    v51 = v96;
    sub_22C90405C();

    v52 = v47;
    v53 = sub_22C9063CC();
    v54 = sub_22C90AACC();

    if (os_log_type_enabled(v53, v54))
    {
      sub_22C37FE78();
      v55 = swift_slowAlloc();
      swift_slowAlloc();
      v100 = 0;
      sub_22C383540();
      v56 = swift_slowAlloc();
      v101 = v56;
      *v55 = 138412546;
      v57 = v47;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v58;
      *v44 = v58;
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_22C36F9F4(v103, v48, &v101);
      _os_log_impl(&dword_22C366000, v53, v54, "Error trying to parse response JSON, %@:\n%s", v55, 0x16u);
      sub_22C36DD28(v44, &qword_27D9BB158, qword_22C910FD0);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C36FF94(v56);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v44 + 8))(v96, v94);
      (*(v50 + 8))(v93, v97);
    }

    else
    {

      (*(v44 + 8))(v51, v94);
      (*(v50 + 8))(v93, v49);
    }

LABEL_17:

    return v103;
  }

  if (a3 != 1)
  {
    goto LABEL_17;
  }

  v29 = v100;
  v101 = v103;
  v102 = v99;
  sub_22C379BF8();
  v31 = v30;
  v33 = v32;
  sub_22C3858B4();
  v34 = sub_22C37A4C0();
  sub_22C3800C4(v34, v35, v36, v37, v38, v39, v40, v41, v88, v89, v90, v91);
  sub_22C386130();
  sub_22C90A15C();
  sub_22C386A34();
  sub_22C90A12C();
  v43 = v42;

  (*(v33 + 8))(v28, v31);
  if (v43 >> 60 != 15)
  {
    sub_22C8FFECC();
    swift_allocObject();
    sub_22C8FFEBC();
    sub_22C8AEED4();
    sub_22C3884B4();
    sub_22C8FFEAC();

    v59 = sub_22C50B478();
    sub_22C3C8114(v59, v60);
    if (v29)
    {
      return v103;
    }

    return v101;
  }

  sub_22C8AEE80();
  sub_22C37A198();
  swift_allocError();
  swift_willThrow();
  return v103;
}

uint64_t sub_22C8A7C70(uint64_t a1, float a2)
{
  v4 = sub_22C9063DC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v10 = (v8 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  if ((a1 & 0x100000000) != 0)
  {
    sub_22C90405C();
    v17 = sub_22C9063CC();
    sub_22C90AABC();
    v25 = sub_22C370214();
    if (!os_log_type_enabled(v25, v26))
    {
      v24 = 1;
      v16 = v10;
      goto LABEL_13;
    }

    sub_22C3720F4();
    v27 = swift_slowAlloc();
    *v27 = 0;
    sub_22C382ABC();
    _os_log_impl(v28, v29, v30, v31, v27, 2u);
    v24 = 1;
    v16 = v10;
  }

  else if (*&a1 <= a2)
  {
    sub_22C90405C();

    v17 = sub_22C9063CC();
    v32 = sub_22C90AABC();

    if (!os_log_type_enabled(v17, v32))
    {
      v24 = 1;
      goto LABEL_13;
    }

    sub_22C37FE78();
    v33 = swift_slowAlloc();
    sub_22C37FB74(v33, 3.8521e-34);
    _os_log_impl(&dword_22C366000, v17, v32, "Reflection score %f >= %f, accepting model response", v33, 0x16u);
    v24 = 1;
  }

  else
  {
    sub_22C90405C();

    v17 = sub_22C9063CC();
    v18 = sub_22C90AABC();

    if (!os_log_type_enabled(v17, v18))
    {
      v24 = 0;
      v16 = v14;
      goto LABEL_13;
    }

    sub_22C37FE78();
    v19 = swift_slowAlloc();
    sub_22C37FB74(v19, 3.8521e-34);
    sub_22C382ABC();
    _os_log_impl(v20, v21, v22, v23, v19, 0x16u);
    v24 = 0;
    v16 = v14;
  }

  sub_22C369B50();
  MEMORY[0x2318B9880]();
LABEL_13:

  (*(v6 + 8))(v16, v4);
  return v24;
}

uint64_t sub_22C8A7F1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C8A7FE0(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_22C8A8014(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = sub_22C3A5908(&qword_27D9C11E8, &qword_22C92C570);
  sub_22C369824();
  v8 = v7;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = &v13[-v10];
  sub_22C374168(a1, a1[3]);
  sub_22C8AF4F0();
  sub_22C90B6CC();
  v13[15] = 0;
  sub_22C90B3CC();
  if (!v4)
  {
    v13[14] = 1;
    sub_22C90B3FC();
  }

  return (*(v8 + 8))(v11, v6);
}

float sub_22C8A8184(void *a1)
{
  sub_22C3A5908(&qword_27D9C11D8, &qword_22C92C568);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  sub_22C374168(a1, a1[3]);
  sub_22C8AF4F0();
  sub_22C90B6BC();
  if (!v1)
  {
    sub_22C90B2DC();
    sub_22C90B30C();
    v2 = v6;
    v7 = sub_22C389270();
    v8(v7);
  }

  sub_22C36FF94(a1);
  return v2;
}

uint64_t sub_22C8A8338(uint64_t a1)
{
  v2 = sub_22C8AF49C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8A8374(uint64_t a1)
{
  v2 = sub_22C8AF49C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C8A83D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C8A7F1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C8A83FC(uint64_t a1)
{
  v2 = sub_22C8AF4F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C8A8438(uint64_t a1)
{
  v2 = sub_22C8AF4F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22C8A8474(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_22C8A8184(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_22C8A84C4(uint64_t a1)
{
  v23[0] = a1;
  v2 = sub_22C90197C();
  MEMORY[0x28223BE20](v2 - 8);
  v23[1] = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22C901B5C();
  v4 = *(v25 - 8);
  v5 = MEMORY[0x28223BE20](v25);
  v24 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - v7;
  v9 = sub_22C90876C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v23 - v14;
  sub_22C379DF8(v1, v23 - v14, &qword_27D9BB728, &qword_22C911230);
  if (sub_22C370B74(v15, 1, v9) != 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    sub_22C3FCDA0();
    (*(v10 + 8))(v12, v9);
  }

  sub_22C3A5908(&qword_27D9BBC10, &unk_22C911250);
  v16 = sub_22C90199C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22C90F800;
  (*(v17 + 16))(v19 + v18, v23[0], v16);
  sub_22C90196C();
  sub_22C901B4C();
  v20 = v25;
  (*(v4 + 16))(v24, v8, v25);
  sub_22C90194C();
  swift_allocObject();
  v21 = sub_22C90190C();
  (*(v4 + 8))(v8, v20);
  return v21;
}

uint64_t sub_22C8A88BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = v7;
  *(v8 + 56) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = sub_22C9018FC();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = sub_22C901ACC();
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_22C9063DC();
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v12 = sub_22C901D8C();
  *(v8 + 168) = v12;
  *(v8 + 176) = *(v12 - 8);
  *(v8 + 184) = swift_task_alloc();
  v13 = sub_22C90069C();
  *(v8 + 192) = v13;
  *(v8 + 200) = *(v13 - 8);
  *(v8 + 208) = swift_task_alloc();
  v14 = sub_22C90634C();
  *(v8 + 216) = v14;
  *(v8 + 224) = *(v14 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v15 = sub_22C90636C();
  *(v8 + 248) = v15;
  *(v8 + 256) = *(v15 - 8);
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8A8BD8, 0, 0);
}

uint64_t sub_22C8A8BD8(uint64_t a1)
{
  sub_22C9036AC();
  sub_22C90633C();
  v2 = sub_22C90635C();
  v3 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    sub_22C3720F4();
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v2, v3, v5, "ResponseGeneration.modelInference", "", v4, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v6 = *(v1 + 30);
  v8 = *(v1 + 28);
  v7 = *(v1 + 29);
  v9 = *(v1 + 27);
  v26 = *(v1 + 9);

  (*(v8 + 16))(v7, v6, v9);
  sub_22C9063AC();
  swift_allocObject();
  *(v1 + 34) = sub_22C90639C();
  v10 = sub_22C36CA88();
  v11(v10);
  v12 = sub_22C36D264();
  v13(v12);
  sub_22C90068C();
  v14 = *(v26 + *(type metadata accessor for ResponseGenerationGenerativeModelsClient(0) + 28));
  *(v1 + 35) = v14;
  if (v14)
  {
    sub_22C89A870();
    sub_22C8A2834();
  }

  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 36) = v15;
  *v15 = v16;
  v15[1] = sub_22C8A8DF4;
  v17 = *(v1 + 26);
  v18 = *(v1 + 23);
  v19 = *(v1 + 8);
  v20 = v1[7];
  v22 = *(v1 + 5);
  v21 = *(v1 + 6);
  v23 = *(v1 + 3);
  v24 = *(v1 + 4);

  return sub_22C8AC900(v18, v23, v24, v19, v17, v21, v22, v20);
}

uint64_t sub_22C8A8DF4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369A30();
  *v5 = v4;
  *(v6 + 296) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C8A8EF4(uint64_t a1)
{
  sub_22C90405C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    sub_22C3720F4();
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22C366000, v2, v3, "Collecting from completion stream", v4, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v5 = v1[20];
  v6 = v1[16];
  v7 = v1[17];

  v8 = *(v7 + 8);
  v1[38] = v8;
  v8(v5, v6);
  sub_22C8AF04C(&qword_27D9C1148, MEMORY[0x277D71D98]);
  sub_22C901D9C();
  swift_task_alloc();
  sub_22C36CC90();
  v1[39] = v9;
  *v9 = v10;
  v9[1] = sub_22C8A927C;
  v11 = v1[15];

  return MEMORY[0x2821D97D8](v11);
}

uint64_t sub_22C8A9084()
{
  v1 = *(v0 + 296);
  v2 = sub_22C382E60();
  v3(v2);
  sub_22C90405C();
  v4 = v1;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();

  if (os_log_type_enabled(v5, v6))
  {
    sub_22C36BED8();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    sub_22C382ABC();
    sub_22C5CA61C(v11, v12, v13, v14);
    _os_log_impl(v15, v16, v17, v18, v19, v20);
    sub_22C36DD28(v8, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v21 = *(v0 + 280);

  v22 = sub_22C36D264();
  v24 = v23(v22);
  if (v21)
  {
    v5 = sub_22C89A870();
    sub_22C8A3204();
  }

  sub_22C36DC78(v24, v25, v26, v27);
  sub_22C8A97E8(v5);

  sub_22C369A24();

  return v28();
}

uint64_t sub_22C8A927C()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 320) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C8A93DC(uint64_t a1)
{
  sub_22C90405C();
  v2 = sub_22C9063CC();
  sub_22C90AACC();
  v3 = sub_22C370214();
  if (os_log_type_enabled(v3, v4))
  {
    sub_22C3720F4();
    v5 = swift_slowAlloc();
    *v5 = 0;
    sub_22C376098();
    _os_log_impl(v6, v7, v8, v9, v5, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v10 = v1[38];
  v11 = v1[35];

  v12 = sub_22C36BAFC();
  v10(v12);
  if (v11)
  {
    sub_22C89A870();
    sub_22C8A2CE0();
  }

  v13 = v1[34];
  v15 = v1[14];
  v14 = v1[15];
  v16 = v1[13];
  v17 = v1[2];
  (*(v1[22] + 8))(v1[23], v1[21]);
  v18 = sub_22C37170C();
  v19(v18);
  (*(v15 + 32))(v17, v14, v16);
  sub_22C8A97E8(v13);

  sub_22C369A24();

  return v20();
}

uint64_t sub_22C8A95D8()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[40];
  v2 = sub_22C382E60();
  v3(v2);
  sub_22C90405C();
  v4 = v1;
  v5 = sub_22C9063CC();
  v6 = sub_22C90AADC();

  if (os_log_type_enabled(v5, v6))
  {
    sub_22C36BED8();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    sub_22C382ABC();
    sub_22C5CA61C(v11, v12, v13, v14);
    _os_log_impl(v15, v16, v17, v18, v19, v20);
    sub_22C36DD28(v8, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v21 = v0[35];

  v22 = sub_22C36D264();
  v24 = v23(v22);
  if (v21)
  {
    v5 = sub_22C89A870();
    sub_22C8A3204();
  }

  sub_22C36DC78(v24, v25, v26, v27);
  sub_22C8A97E8(v5);

  sub_22C369A24();

  return v28();
}

uint64_t sub_22C8A97E8(uint64_t a1)
{
  v29 = sub_22C90637C();
  v27 = *(v29 - 1);
  MEMORY[0x28223BE20](v29);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9036AC();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v28 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v24 = v8;
    v25 = v7;
    v26 = v3;

    sub_22C9063BC();

    v12 = v27;
    v13 = v29;
    if ((*(v27 + 88))(v2, v29) == *MEMORY[0x277D85B00])
    {
      v14 = 0;
      v15 = 0;
      v29 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v2, v13);
      v29 = "%s";
      v15 = 2;
      v14 = 1;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = v15;
    *(v17 + 1) = v14;
    *(v17 + 2) = 2080;
    sub_22C90366C();
    v19 = sub_22C90AF7C();
    v21 = sub_22C36F9F4(v19, v20, &v30);

    *(v17 + 4) = v21;
    v22 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v28, v22, "ResponseGeneration.modelInference", v29, v17, 0xCu);
    sub_22C36FF94(v18);
    MEMORY[0x2318B9880](v18, -1, -1);
    MEMORY[0x2318B9880](v17, -1, -1);

    (*(v4 + 8))(v6, v26);
    return (*(v24 + 8))(v10, v25);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_22C8A9B8C(void *a1, uint64_t a2, uint64_t a3)
{
  v90 = sub_22C9063DC();
  sub_22C369824();
  v81 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v9 = (v7 - v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v80 - v12;
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v80 = v14;
  v82 = a1;
  v83 = a2;
  v88 = 10;
  v89 = 0xE100000000000000;
  v86 = 4091452;
  v87 = 0xE300000000000000;
  sub_22C3858B4();
  v15 = sub_22C37A4C0();
  v23 = sub_22C3800C4(v15, v16, v17, v18, v19, v20, v21, v22, v76, v77, v78, v79);
  v25 = v24;
  sub_22C90AF7C();
  sub_22C386130();
  sub_22C386A34();
  sub_22C8A5E64(v26, v27, v28, v29);
  if (v30)
  {

    sub_22C90405C();
    v31 = sub_22C9063CC();
    sub_22C90AADC();
    v32 = sub_22C370214();
    if (os_log_type_enabled(v32, v33))
    {
      sub_22C3720F4();
      v34 = swift_slowAlloc();
      sub_22C383878(v34);
      sub_22C37B3D4();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      v13 = v9;
LABEL_11:
      v73 = sub_22C371B8C();
      MEMORY[0x2318B9880](v73);
      goto LABEL_12;
    }

    v13 = v9;
    goto LABEL_12;
  }

  sub_22C386A34();
  v40 = sub_22C90A4AC();
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v88 = v23;
  v89 = v25;
  v82 = v40;
  v83 = v42;
  v84 = v44;
  v85 = v46;
  sub_22C3ECFB8();
  sub_22C8AEF44();
  v47 = sub_22C90A02C();

  if ((v47 & 1) == 0)
  {

    sub_22C90405C();
    v31 = sub_22C9063CC();
    sub_22C90AADC();
    v65 = sub_22C370214();
    if (os_log_type_enabled(v65, v66))
    {
      sub_22C3720F4();
      v67 = swift_slowAlloc();
      sub_22C383878(v67);
      sub_22C37B3D4();
      _os_log_impl(v68, v69, v70, v71, v72, 2u);
      goto LABEL_11;
    }

LABEL_12:

    (*(v81 + 8))(v13, v90);
    sub_22C8AEE2C();
    sub_22C37A198();
    swift_allocError();
    *v74 = 3;
    swift_willThrow();
    return sub_22C36CA88();
  }

  v48 = sub_22C36D39C();
  sub_22C8A5380(v48, v49, v25);
  sub_22C386130();

  v50 = sub_22C36BA00();
  MEMORY[0x2318B76D0](v50);

  v51 = v80;
  sub_22C90405C();

  v52 = sub_22C9063CC();
  v53 = sub_22C90AABC();

  if (os_log_type_enabled(v52, v53))
  {
    sub_22C36BED8();
    v54 = swift_slowAlloc();
    sub_22C370220();
    v55 = swift_slowAlloc();
    v82 = v55;
    *v54 = 136380675;
    v56 = sub_22C36CA88();
    *(v54 + 4) = sub_22C36F9F4(v56, v57, v58);
    sub_22C5CA61C(&dword_22C366000, v52, v53, "Reformatted prompt to be sent to the model:\n%{private}s");
    _os_log_impl(v59, v60, v61, v62, v63, v64);
    sub_22C36FF94(v55);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v81 + 8))(v51, v90);
  return sub_22C36CA88();
}

uint64_t sub_22C8A9FBC()
{
  sub_22C369980();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v5 = sub_22C90000C();
  v1[17] = v5;
  sub_22C3699B8(v5);
  v1[18] = v6;
  v1[19] = sub_22C3699D4();
  v7 = sub_22C9019FC();
  v1[20] = v7;
  sub_22C3699B8(v7);
  v1[21] = v8;
  v1[22] = sub_22C3699D4();
  v9 = sub_22C901A1C();
  v1[23] = v9;
  sub_22C3699B8(v9);
  v1[24] = v10;
  v1[25] = sub_22C3699D4();
  v11 = sub_22C901A4C();
  v1[26] = v11;
  sub_22C3699B8(v11);
  v1[27] = v12;
  v1[28] = sub_22C3699D4();
  v13 = sub_22C901A8C();
  v1[29] = v13;
  sub_22C3699B8(v13);
  v1[30] = v14;
  v1[31] = sub_22C3699D4();
  v15 = sub_22C901A6C();
  v1[32] = v15;
  sub_22C3699B8(v15);
  v1[33] = v16;
  v1[34] = sub_22C36D0D4();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v17 = sub_22C3A5908(&qword_27D9BBC28, &qword_22C911298);
  sub_22C369914(v17);
  v1[37] = sub_22C36D0D4();
  v1[38] = swift_task_alloc();
  v18 = sub_22C9019AC();
  v1[39] = v18;
  sub_22C3699B8(v18);
  v1[40] = v19;
  v1[41] = sub_22C3699D4();
  v20 = sub_22C901ACC();
  v1[42] = v20;
  sub_22C3699B8(v20);
  v1[43] = v21;
  v1[44] = sub_22C3699D4();
  v22 = sub_22C90444C();
  v1[45] = v22;
  sub_22C3699B8(v22);
  v1[46] = v23;
  v1[47] = sub_22C3699D4();
  v24 = sub_22C3A5908(&qword_27D9C1110, &unk_22C92C180);
  sub_22C369914(v24);
  v1[48] = sub_22C3699D4();
  v25 = sub_22C3A5908(&qword_27D9BBBC0, &qword_22C92C1C0);
  v1[49] = v25;
  sub_22C3699B8(v25);
  v1[50] = v26;
  v1[51] = sub_22C36D0D4();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v27 = type metadata accessor for ResponseGenerationGenerativeModelsClient(0);
  v1[54] = v27;
  sub_22C369914(v27);
  v1[55] = sub_22C36D0D4();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v28 = sub_22C9063DC();
  v1[62] = v28;
  sub_22C3699B8(v28);
  v1[63] = v29;
  v1[64] = sub_22C36D0D4();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_22C8AA4C0(uint64_t a1)
{
  v143 = v1;
  v2 = *(*(v1 + 128) + *(*(v1 + 432) + 24));
  *(v1 + 576) = v2;
  if (!v2)
  {
    sub_22C90405C();
    v19 = sub_22C9063CC();
    sub_22C90AADC();
    v20 = sub_22C370214();
    if (os_log_type_enabled(v20, v21))
    {
      sub_22C3720F4();
      v22 = swift_slowAlloc();
      *v22 = 0;
      sub_22C376098();
      _os_log_impl(v23, v24, v25, v26, v22, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v27 = sub_22C36BAFC();
    v28(v27);
    sub_22C8AEE2C();
    sub_22C37A198();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
    goto LABEL_18;
  }

  sub_22C90405C();
  sub_22C3876AC();
  v3 = sub_22C372164();
  sub_22C8AEF98(v3, v4, v5);
  v6 = sub_22C9063CC();
  sub_22C90AACC();
  v7 = sub_22C370214();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 488);
  if (v9)
  {
    v11 = *(v1 + 432);
    sub_22C36BED8();
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = *(v10 + *(v11 + 36));
    sub_22C36A5A4();
    sub_22C8AEFF4(v10, v14);
    *(v12 + 4) = v13;
    sub_22C382ABC();
    _os_log_impl(v15, v16, v17, v18, v12, 0xCu);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {

    sub_22C36A5A4();
    sub_22C8AEFF4(v10, v30);
  }

  v31 = *(v1 + 432);
  v33 = *(v1 + 384);
  v32 = *(v1 + 392);
  v34 = *(v1 + 128);
  v35 = *(*(v1 + 504) + 8);
  (v35)(*(v1 + 568), *(v1 + 496));
  sub_22C379DF8(v34 + *(v31 + 20), v33, &qword_27D9C1110, &unk_22C92C180);
  if (sub_22C370B74(v33, 1, v32) == 1)
  {
    sub_22C36DD28(*(v1 + 384), &qword_27D9C1110, &unk_22C92C180);
    sub_22C8AEE2C();
    sub_22C37A198();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();

LABEL_18:
    sub_22C37F668();

    sub_22C369A24();

    return v98();
  }

  v134 = v35;
  v38 = *(v1 + 472);
  v37 = *(v1 + 480);
  v39 = *(v1 + 464);
  v137 = *(v1 + 456);
  v139 = *(v1 + 448);
  v141 = v2;
  v41 = *(v1 + 416);
  v40 = *(v1 + 424);
  v42 = *(v1 + 392);
  v43 = *(v1 + 400);
  v44 = *(v1 + 128);
  (*(v43 + 32))(v40, *(v1 + 384), v42);
  sub_22C90405C();
  v133 = *(v43 + 16);
  v133(v41, v40, v42);
  sub_22C8AEF98(v44, v37, type metadata accessor for ResponseGenerationGenerativeModelsClient);
  sub_22C8AEF98(v44, v38, type metadata accessor for ResponseGenerationGenerativeModelsClient);
  sub_22C8AEF98(v44, v39, type metadata accessor for ResponseGenerationGenerativeModelsClient);
  sub_22C8AEF98(v44, v137, type metadata accessor for ResponseGenerationGenerativeModelsClient);
  sub_22C8AEF98(v44, v139, type metadata accessor for ResponseGenerationGenerativeModelsClient);
  v45 = sub_22C9063CC();
  v46 = sub_22C90AABC();
  v140 = v45;
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v1 + 560);
  v49 = *(v1 + 496);
  v50 = *(v1 + 504);
  v52 = *(v1 + 472);
  v51 = *(v1 + 480);
  v136 = *(v1 + 464);
  v138 = *(v1 + 448);
  if (v47)
  {
    v53 = *(v1 + 432);
    v131 = v46;
    v129 = *(v1 + 456);
    v132 = *(v1 + 496);
    v54 = swift_slowAlloc();
    v142[0] = swift_slowAlloc();
    *v54 = 136316418;
    sub_22C50B118(&qword_27D9C1128, &qword_27D9BBBC0, &qword_22C92C1C0);
    v130 = v50;
    v55 = sub_22C90B47C();
    v57 = v56;
    v58 = sub_22C36BBCC();
    v59(v58);
    v60 = sub_22C36F9F4(v55, v57, v142);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2080;
    v61 = v51 + v53[8];
    v62 = *v61;
    LOBYTE(v61) = *(v61 + 4);
    *(v1 + 616) = v62;
    *(v1 + 620) = v61;
    sub_22C3A5908(&qword_27D9C1130, &unk_22C92C7C0);
    v63 = sub_22C90A1AC();
    v65 = v64;
    sub_22C8AEFF4(v51, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    v66 = sub_22C36F9F4(v63, v65, v142);

    *(v54 + 14) = v66;
    *(v54 + 22) = 2048;
    v67 = *(v52 + v53[9]);
    sub_22C8AEFF4(v52, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    *(v54 + 24) = v67;
    *(v54 + 32) = 2080;
    v68 = (v136 + v53[10]);
    v69 = *v68;
    v70 = v68[1];

    sub_22C8AEFF4(v136, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    v71 = sub_22C36F9F4(v69, v70, v142);

    *(v54 + 34) = v71;
    *(v54 + 42) = 2048;
    v72 = *(v129 + v53[11]);
    sub_22C8AEFF4(v129, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    *(v54 + 44) = v72;
    *(v54 + 52) = 2080;

    sub_22C8AEFF4(v138, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    v73 = sub_22C36BAFC();
    v76 = sub_22C36F9F4(v73, v74, v75);

    *(v54 + 54) = v76;
    _os_log_impl(&dword_22C366000, v140, v131, "Model configuration:\n  Bundle identifier: %s\n  Minimum reflection score: %s\n  Timeout: %f\n  Prompt version: %s\n  Max tokens: %ld\n  Response format: %s", v54, 0x3Eu);
    swift_arrayDestroy();
    v77 = sub_22C371B8C();
    MEMORY[0x2318B9880](v77);
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v78 = *(v130 + 8);
    v78(v48, v132);
  }

  else
  {
    sub_22C8AEFF4(*(v1 + 456), type metadata accessor for ResponseGenerationGenerativeModelsClient);

    sub_22C8AEFF4(v138, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    sub_22C8AEFF4(v136, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    sub_22C8AEFF4(v52, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    sub_22C8AEFF4(v51, type metadata accessor for ResponseGenerationGenerativeModelsClient);
    v79 = sub_22C36BBCC();
    v80(v79);
    v78 = v134;
    v134(v48, v49);
  }

  *(v1 + 584) = v78;
  v81 = *(v1 + 128);
  sub_22C90126C();
  v83 = v82;
  v84 = sub_22C36D264();
  v87 = sub_22C8AC4B8(v84, v85, v86, v83);

  if ((v87 & 1) == 0)
  {
    sub_22C90405C();
    v88 = sub_22C9063CC();
    sub_22C90AAEC();
    v89 = sub_22C370214();
    if (os_log_type_enabled(v89, v90))
    {
      sub_22C3720F4();
      v91 = swift_slowAlloc();
      sub_22C383878(v91);
      sub_22C382ABC();
      _os_log_impl(v92, v93, v94, v95, v81, 2u);
      v96 = sub_22C371B8C();
      MEMORY[0x2318B9880](v96);
    }

    v97 = sub_22C36BAFC();
    (v78)(v97);
  }

  v102 = v101;
  v103 = *(v1 + 544);
  sub_22C3A5908(&qword_27D9BAB38, &qword_22C92C1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = 0x746E65746E6F63;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v100;
  *(inited + 56) = v102;
  v105 = sub_22C909F0C();
  *(v1 + 592) = v105;
  sub_22C90405C();
  v106 = sub_22C9063CC();
  sub_22C90AABC();
  v107 = sub_22C370214();
  if (os_log_type_enabled(v107, v108))
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C383540();
    v135 = v78;
    v110 = swift_slowAlloc();
    v142[0] = v110;
    *v103 = 136315138;
    *(v103 + 4) = sub_22C36F9F4(0xD000000000000041, 0x800000022C92F1D0, v142);
    sub_22C37B3D4();
    _os_log_impl(v111, v112, v113, v114, v115, 0xCu);
    sub_22C36FF94(v110);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v116 = sub_22C371B8C();
    MEMORY[0x2318B9880](v116);

    v117 = sub_22C50B478();
    v135(v117);
  }

  else
  {

    v118 = sub_22C50B478();
    (v78)(v118);
  }

  v119 = *(v1 + 432);
  v120 = *(v1 + 128);
  sub_22C909F0C();
  v121 = sub_22C36BA00();
  (v133)(v121);
  sub_22C90442C();
  v122 = *(v120 + *(v119 + 36));
  v123 = *(v120 + *(v119 + 44));
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 600) = v124;
  *v124 = v125;
  v124[1] = sub_22C8AB0BC;
  v126 = *(v1 + 376);
  v127 = *(v1 + 352);
  v128 = MEMORY[0x277D84F90];

  return sub_22C8A88BC(v127, v126, v105, v141, v128, v123, v122);
}

uint64_t sub_22C8AB0BC()
{
  sub_22C369A30();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 608) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8AB1E8(uint64_t a1)
{
  v214 = v1;
  v2 = v1[38];
  v3 = sub_22C901A2C();
  sub_22C58B020(v3, v2);

  v4 = sub_22C901ABC();
  if (sub_22C370B74(v2, 1, v4) == 1)
  {
    sub_22C36DD28(v1[38], &qword_27D9BBC28, &qword_22C911298);
  }

  else
  {
    sub_22C901A9C();
    sub_22C36BBA8();
    v5 = sub_22C37170C();
    v6(v5);
    v7 = sub_22C36D39C();
    v9 = v8(v7);
    v10 = *MEMORY[0x277D71B68];
    v11 = sub_22C36D39C();
    v12(v11);
    if (v9 == v10)
    {
      v13 = v1[55];
      v14 = v1[16];
      sub_22C90405C();
      sub_22C3876AC();
      sub_22C8AEF98(v14, v13, v15);
      v16 = sub_22C9063CC();
      sub_22C90AADC();
      v17 = sub_22C370214();
      v19 = os_log_type_enabled(v17, v18);
      v20 = v1[55];
      if (v19)
      {
        v21 = v1[54];
        sub_22C36BED8();
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        v23 = *(v20 + *(v21 + 44));
        sub_22C36A5A4();
        sub_22C8AEFF4(v20, v24);
        *(v22 + 4) = v23;
        sub_22C376098();
        sub_22C5CA61C(v25, v26, v27, v28);
        _os_log_impl(v29, v30, v31, v32, v33, v34);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {
        sub_22C8AEFF4(v1[55], type metadata accessor for ResponseGenerationGenerativeModelsClient);
      }

      v174 = v1[73];
      v175 = v1[67];
      v176 = v1[62];
      v177 = v1[50];
      v204 = v1[49];
      v209 = v1[53];
      v178 = v1[46];
      v199 = v1[47];
      v196 = v1[45];
      v193 = v1[44];
      v179 = v1[42];
      v180 = v1[43];

      v174(v175, v176);
      sub_22C8AEE2C();
      sub_22C37A198();
      swift_allocError();
      *v181 = 4;
      swift_willThrow();

      (*(v180 + 8))(v193, v179);
      (*(v178 + 8))(v199, v196);
      (*(v177 + 8))(v209, v204);
      goto LABEL_48;
    }
  }

  v35 = v1[37];
  v36 = sub_22C901A2C();
  sub_22C58B020(v36, v35);

  v37 = sub_22C370B74(v35, 1, v4);
  v211 = v1;
  v38 = MEMORY[0x277D84F90];
  if (v37 == 1)
  {
    sub_22C36DD28(v1[37], &qword_27D9BBC28, &qword_22C911298);
LABEL_15:
    v45 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v39 = sub_22C901AAC();
  sub_22C36BBA8();
  v40 = sub_22C37170C();
  v41(v40);
  v42 = *(v39 + 16);
  if (!v42)
  {

    goto LABEL_15;
  }

  v43 = v1[33];
  v44 = v211[30];
  v212 = v38;
  sub_22C3B637C(0, v42, 0);
  v45 = v38;
  v46 = *(v44 + 16);
  v44 += 16;
  v47 = v39 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
  v200 = *(v44 + 56);
  v205 = v46;
  do
  {
    v205(v211[31], v47, v211[29]);
    sub_22C901A7C();
    v48 = sub_22C36FC2C();
    v49(v48);
    v212 = v45;
    v51 = *(v45 + 16);
    v50 = *(v45 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_22C3B637C(v50 > 1, v51 + 1, 1);
      v45 = v212;
    }

    v52 = v211[36];
    v53 = v211[32];
    *(v45 + 16) = v51 + 1;
    (*(v43 + 32))(v45 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v51, v52, v53);
    v47 += v200;
    --v42;
  }

  while (v42);

  v38 = MEMORY[0x277D84F90];
LABEL_16:
  v54 = *(v45 + 16);
  v55 = v211;
  if (v54)
  {
    v56 = v211[33];
    v57 = v211[27];
    v59 = *(v56 + 16);
    v56 += 16;
    v58 = v59;
    v60 = v45 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
    v206 = *(v56 + 56);
    v197 = (v56 - 8);
    v194 = *MEMORY[0x277D71C10];
    v190 = (v57 + 32);
    v191 = (v56 + 80);
    v189 = (v57 + 8);
    v192 = v59;
    do
    {
      v62 = v55[34];
      v61 = v55[35];
      v63 = v55[32];
      v58(v61, v60, v63);
      v58(v62, v61, v63);
      v64 = sub_22C36FC2C();
      v66 = v65(v64);
      v67 = v55[34];
      v68 = v55[35];
      v69 = v55[32];
      if (v66 == v194)
      {
        v70 = v55[28];
        v71 = v55[26];
        (*v191)(v55[34], v55[32]);
        (*v190)(v70, v67, v71);
        v55 = sub_22C901A3C();
        v73 = v72;
        v212 = 0;
        v213 = 0xE000000000000000;

        v74 = sub_22C38C560();
        MEMORY[0x2318B7850](v74, v73);

        v75 = v71;
        v58 = v192;
        (*v189)(v70, v75);
        (*v197)(v68, v69);
      }

      else
      {
        v76 = *v197;
        (*v197)(v55[35], v55[32]);
        v76(v67, v69);
      }

      v60 += v206;
      --v54;
    }

    while (v54);

    v38 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  if (*(v55[16] + *(v55[54] + 28)))
  {
    v77 = sub_22C89A0A0();
    *(v77 + 56) = 0;
    *(v77 + 64) = 0xE000000000000000;
  }

  sub_22C901A5C();
  v78 = sub_22C901A0C();
  v79 = sub_22C36BAFC();
  v80(v79);
  v85 = *(v78 + 16);
  if (v85)
  {
    v86 = v55[21];
    sub_22C3B5E2C(0, v85, 0, v81, v82, v83, v84);
    v88 = *(v86 + 16);
    v87 = v86 + 16;
    v89 = v78 + ((*(v87 + 64) + 32) & ~*(v87 + 64));
    v201 = *(v87 + 56);
    v207 = v88;
    do
    {
      v207(v55[22], v89, v55[20]);
      v90 = sub_22C9019EC();
      if (v91)
      {
        v92 = v90;
        v93 = v91;
        v212 = sub_22C9019DC();
        v213 = v94;
        MEMORY[0x2318B7850](10272, 0xE200000000000000);
        MEMORY[0x2318B7850](v92, v93);

        MEMORY[0x2318B7850](41, 0xE100000000000000);
        v95 = v212;
        v96 = v213;
      }

      else
      {
        v95 = sub_22C9019DC();
        v96 = v97;
      }

      (*(v87 - 8))(v55[22], v55[20]);
      v103 = *(v38 + 16);
      v102 = *(v38 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_22C3B5E2C(v102 > 1, v103 + 1, 1, v98, v99, v100, v101);
      }

      *(v38 + 16) = v103 + 1;
      v104 = v38 + 16 * v103;
      *(v104 + 32) = v95;
      *(v104 + 40) = v96;
      v89 += v201;
      --v85;
      v55 = v211;
    }

    while (v85);
  }

  v105 = v55[66];
  v55[12] = v38;
  v106 = sub_22C37170C();
  sub_22C3A5908(v106, v107);
  v108 = v211;
  sub_22C50B118(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0);
  v109 = sub_22C90A04C();
  v111 = v110;

  sub_22C90405C();

  v112 = sub_22C9063CC();
  v113 = sub_22C90AABC();

  v114 = os_log_type_enabled(v112, v113);
  v115 = v211[73];
  v208 = v111;
  if (v114)
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C383540();
    v108 = swift_slowAlloc();
    v212 = v108;
    *v105 = 136315138;
    *(v105 + 4) = sub_22C36F9F4(v109, v111, &v212);
    sub_22C37B3D4();
    _os_log_impl(v116, v117, v118, v119, v120, 0xCu);
    sub_22C36FF94(v108);
    sub_22C38C560();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v121 = sub_22C371B8C();
    MEMORY[0x2318B9880](v121);
  }

  v122 = sub_22C36FC2C();
  v115(v122);
  v210 = v109;
  sub_22C90405C();

  v123 = sub_22C9063CC();
  v124 = sub_22C90AABC();

  v125 = os_log_type_enabled(v123, v124);
  v126 = v108[73];
  if (v125)
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C383540();
    v108 = swift_slowAlloc();
    v212 = v108;
    *v105 = 136642819;
    *(v105 + 4) = sub_22C36F9F4(0, 0xE000000000000000, &v212);
    sub_22C37B3D4();
    _os_log_impl(v127, v128, v129, v130, v131, 0xCu);
    sub_22C36FF94(v108);
    sub_22C38C560();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v132 = sub_22C371B8C();
    MEMORY[0x2318B9880](v132);
  }

  v133 = sub_22C36FC2C();
  v126(v133);
  v134 = v108;
  v135 = v108[76];

  v136 = sub_22C36BBCC();
  v137 = sub_22C8A73CC(v136);
  if (v137 == 3)
  {
    v138 = 0;
  }

  else
  {
    v138 = v137;
  }

  v139 = sub_22C8A7474(0, 0xE000000000000000, v138);
  if (v135)
  {
    v202 = v134[53];
    v143 = v134[49];
    v142 = v134[50];
    v144 = v134[44];
    v146 = v134[42];
    v145 = v134[43];

    (*(v145 + 8))(v144, v146);
    v147 = sub_22C36CA88();
    v148(v147);
    (*(v142 + 8))(v202, v143);
  }

  else
  {
    v149 = v139;
    v150 = v140;
    v151 = v141;
    v152 = v134[54];
    v153 = v134[16];

    v154 = (v153 + *(v152 + 32));
    v155 = *v154;
    LOBYTE(v212) = *(v154 + 4);
    if (sub_22C8A7C70(v155 | (v212 << 32), v151))
    {
      v156 = v134[50];
      v187 = v134[49];
      v188 = v134[53];
      v157 = v134[46];
      v185 = v134[45];
      v186 = v134[47];
      v158 = v134[43];
      v183 = v134[42];
      v184 = v134[44];
      v134[10] = v149;
      v134[11] = v150;
      sub_22C8AF748();
      v160 = v134[18];
      v159 = v134[19];
      v161 = v134[17];
      v162 = v134[13];
      sub_22C8FFFEC();
      sub_22C3858B4();
      v163 = sub_22C90AD3C();
      v165 = v164;

      (*(v160 + 8))(v159, v161);

      (*(v158 + 8))(v184, v183);
      (*(v157 + 8))(v186, v185);
      (*(v156 + 8))(v188, v187);
      *v162 = v163;
      v162[1] = v165;
      v162[2] = v210;
      v162[3] = v208;

      sub_22C369A24();
      goto LABEL_49;
    }

    v167 = v134[50];
    v198 = v134[49];
    v203 = v134[53];
    v168 = v134[46];
    v195 = v134[47];
    v170 = v134[44];
    v169 = v134[45];
    v171 = v134[42];
    v172 = v134[43];

    sub_22C8AEE2C();
    sub_22C37A198();
    swift_allocError();
    *v173 = 2;
    swift_willThrow();

    (*(v172 + 8))(v170, v171);
    (*(v168 + 8))(v195, v169);
    (*(v167 + 8))(v203, v198);
  }

LABEL_48:
  sub_22C37F668();
  sub_22C37464C();
  sub_22C8AF748();

  sub_22C369A24();
LABEL_49:

  return v166();
}

uint64_t sub_22C8AC280()
{

  v0 = sub_22C36D264();
  v1(v0);
  v2 = sub_22C36BBCC();
  v3(v2);
  sub_22C37F668();
  sub_22C37464C();

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C8AC4B8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_22C9063DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = sub_22C90B21C();

  v16 = sub_22C8A7380(a3);
  if (v15 <= 1 && v16 != 3)
  {
    if (v16)
    {
      v25 = v16 == 1 ? 0x800000022C92F130 : 0x800000022C92F170;
      if (0x800000022C92F170 == v25)
      {

        return 1;
      }
    }

    v26 = sub_22C90B4FC();

    if (v26)
    {
      return 1;
    }

    sub_22C90405C();

    v28 = sub_22C9063CC();
    v29 = sub_22C90AADC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v36 = v8;
      v31 = v30;
      v35 = swift_slowAlloc();
      v37 = v35;
      *v31 = 136315650;
      *(v31 + 4) = sub_22C36F9F4(a1, a2, &v37);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_22C36F9F4(a3, a4, &v37);
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_22C36F9F4(0xD00000000000003FLL, 0x800000022C92F170, &v37);
      _os_log_impl(&dword_22C366000, v28, v29, "Non-standard configuration:\n  Prompt version: %s\n  Configured model bundle identifier: %s\n  Expected model bundle identifier: %s", v31, 0x20u);
      v32 = v35;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v32, -1, -1);
      MEMORY[0x2318B9880](v31, -1, -1);

      v23 = *(v9 + 8);
      v24 = v12;
      goto LABEL_19;
    }

    v23 = *(v9 + 8);
    v24 = v12;
LABEL_21:
    v33 = v8;
    goto LABEL_22;
  }

  sub_22C90405C();

  v18 = sub_22C9063CC();
  v19 = sub_22C90AADC();

  if (!os_log_type_enabled(v18, v19))
  {

    v23 = *(v9 + 8);
    v24 = v14;
    goto LABEL_21;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v36 = v8;
  v37 = v21;
  v22 = v21;
  *v20 = 136315394;
  *(v20 + 4) = sub_22C36F9F4(a1, a2, &v37);
  *(v20 + 12) = 2080;
  *(v20 + 14) = sub_22C36F9F4(a3, a4, &v37);
  _os_log_impl(&dword_22C366000, v18, v19, "Non-standard configuration:\n  Prompt version: %s\n  Model bundle identifier: %s", v20, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x2318B9880](v22, -1, -1);
  MEMORY[0x2318B9880](v20, -1, -1);

  v23 = *(v9 + 8);
  v24 = v14;
LABEL_19:
  v33 = v36;
LABEL_22:
  v23(v24, v33);
  return 0;
}

uint64_t sub_22C8AC900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8)
{
  *(v8 + 288) = a6;
  *(v8 + 296) = a7;
  *(v8 + 280) = a5;
  *(v8 + 272) = a8;
  *(v8 + 256) = a3;
  *(v8 + 264) = a4;
  *(v8 + 240) = a1;
  *(v8 + 248) = a2;
  *(v8 + 304) = *a7;
  v9 = sub_22C3A5908(&qword_27D9BBC68, &unk_22C9113B0);
  *(v8 + 312) = v9;
  *(v8 + 320) = *(v9 - 8);
  *(v8 + 328) = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBC70, &unk_22C92C210);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = sub_22C3A5908(&qword_27D9BBC78, &unk_22C9113C0);
  *(v8 + 352) = swift_task_alloc();
  v10 = sub_22C90322C();
  *(v8 + 360) = v10;
  *(v8 + 368) = *(v10 - 8);
  *(v8 + 376) = swift_task_alloc();
  v11 = sub_22C90323C();
  *(v8 + 384) = v11;
  *(v8 + 392) = *(v11 - 8);
  *(v8 + 400) = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBC80, &qword_22C92C220);
  *(v8 + 408) = swift_task_alloc();
  v12 = sub_22C90630C();
  *(v8 + 416) = v12;
  *(v8 + 424) = *(v12 - 8);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  v13 = sub_22C901C2C();
  *(v8 + 448) = v13;
  *(v8 + 456) = *(v13 - 8);
  *(v8 + 464) = swift_task_alloc();
  v14 = sub_22C901C1C();
  *(v8 + 472) = v14;
  *(v8 + 480) = *(v14 - 8);
  *(v8 + 488) = swift_task_alloc();
  v15 = sub_22C3A5908(&qword_27D9C1150, &qword_22C92C228);
  *(v8 + 496) = v15;
  *(v8 + 504) = *(v15 - 8);
  *(v8 + 512) = swift_task_alloc();
  v16 = sub_22C901D2C();
  *(v8 + 520) = v16;
  *(v8 + 528) = *(v16 - 8);
  *(v8 + 536) = swift_task_alloc();
  v17 = sub_22C901D1C();
  *(v8 + 544) = v17;
  *(v8 + 552) = *(v17 - 8);
  *(v8 + 560) = swift_task_alloc();
  v18 = sub_22C3A5908(&qword_27D9C1158, &unk_22C92C230);
  *(v8 + 568) = v18;
  *(v8 + 576) = *(v18 - 8);
  *(v8 + 584) = swift_task_alloc();
  v19 = sub_22C3A5908(&qword_27D9BBC30, &qword_22C9112B0);
  *(v8 + 592) = v19;
  *(v8 + 600) = *(v19 - 8);
  *(v8 + 608) = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BD638, &unk_22C92C240);
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  v20 = sub_22C3A5908(&qword_27D9BBC38, &qword_22C9112B8);
  *(v8 + 632) = v20;
  *(v8 + 640) = *(v20 - 8);
  *(v8 + 648) = swift_task_alloc();
  v21 = sub_22C909CCC();
  *(v8 + 656) = v21;
  *(v8 + 664) = *(v21 - 8);
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 680) = swift_task_alloc();
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8ACFC8, 0, 0);
}

uint64_t sub_22C8ACFC8()
{
  v58 = *(v0 + 712);
  v40 = *(v0 + 688);
  v41 = *(v0 + 696);
  v65 = *(v0 + 664);
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v38 = *(v0 + 632);
  v4 = *(v0 + 624);
  v37 = *(v0 + 616);
  v42 = *(v0 + 600);
  v43 = *(v0 + 608);
  v44 = *(v0 + 592);
  v51 = *(v0 + 584);
  v52 = *(v0 + 576);
  v53 = *(v0 + 568);
  v45 = *(v0 + 560);
  v46 = *(v0 + 552);
  v47 = *(v0 + 544);
  v48 = *(v0 + 536);
  v49 = *(v0 + 528);
  v50 = *(v0 + 520);
  v62 = *(v0 + 512);
  v63 = *(v0 + 504);
  v54 = *(v0 + 488);
  v55 = *(v0 + 480);
  v56 = *(v0 + 472);
  v57 = *(v0 + 464);
  v59 = *(v0 + 456);
  v60 = *(v0 + 448);
  v61 = *(v0 + 496);
  v64 = *(v0 + 408);
  v39 = *(v0 + 288);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  *(swift_task_alloc() + 16) = v5;
  sub_22C909CDC();

  sub_22C8A5BD4(v6);
  *(v0 + 728) = sub_22C8AF04C(&qword_27D9BBC48, MEMORY[0x277D42D40]);
  sub_22C36D39C();
  sub_22C909E7C();

  v7 = *(v65 + 8);
  *(v0 + 736) = v7;
  *(v0 + 744) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = sub_22C372164();
  v9(v8);
  sub_22C901ADC();
  v10 = sub_22C901AEC();
  *(v0 + 752) = v10;
  sub_22C36C640(v4, 0, 1, v10);
  sub_22C379DF8(v4, v37, &qword_27D9BD638, &unk_22C92C240);
  sub_22C381934();
  sub_22C901B2C();
  sub_22C901B1C();
  sub_22C901AFC();
  sub_22C901B0C();
  sub_22C36DD28(v4, &qword_27D9BD638, &unk_22C92C240);
  LODWORD(v37) = *MEMORY[0x277D0E548];
  *(v0 + 856) = *MEMORY[0x277D0E548];
  v11 = *(v3 + 104);
  *(v0 + 760) = v11;
  *(v0 + 768) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v2);
  sub_22C909E4C();
  v12 = *(v3 + 8);
  *(v0 + 776) = v12;
  *(v0 + 784) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v2, v38);
  v13 = sub_22C372164();
  v7(v13);
  sub_22C90065C();
  sub_22C909DDC();

  (v7)(v40, v1);
  *v43 = v39;
  v14 = *(v42 + 104);
  *(v0 + 792) = v14;
  *(v0 + 800) = (v42 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v43, v37, v44);

  sub_22C909E0C();
  v15 = *(v42 + 8);
  *(v0 + 808) = v15;
  *(v0 + 816) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v43, v44);
  (v7)(v41, v1);
  v16 = sub_22C901D3C();
  sub_22C374D84(v45, v17, v18, v16);
  (*(v46 + 104))(v45, *MEMORY[0x277D0E5C0], v47);
  v19 = sub_22C901D0C();
  sub_22C374D84(v48, v20, v21, v19);
  (*(v49 + 104))(v48, *MEMORY[0x277D0E5C8], v50);
  sub_22C36BA00();
  sub_22C901D4C();
  v22 = *MEMORY[0x277D0E550];
  (*(v52 + 104))(v51, v22, v53);
  sub_22C909DFC();
  (*(v52 + 8))(v51, v53);
  v23 = sub_22C372164();
  v7(v23);
  v24 = sub_22C901C4C();
  sub_22C374D84(v54, v25, v26, v24);
  (*(v55 + 104))(v54, *MEMORY[0x277D0E578], v56);
  v27 = sub_22C901BDC();
  sub_22C374D84(v57, v28, v29, v27);
  (*(v59 + 104))(v57, *MEMORY[0x277D0E580], v60);
  sub_22C36FC2C();
  sub_22C901C5C();
  (*(v63 + 104))(v62, v22, v61);
  sub_22C909E3C();
  (*(v63 + 8))(v62, v61);
  (v7)(v58, v1);
  v30 = sub_22C9062FC();
  sub_22C374D84(v64, v31, v32, v30);
  sub_22C9062EC();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 824) = v33;
  *v33 = v34;
  v33[1] = sub_22C8AD6DC;
  v35 = *(v0 + 336);

  return MEMORY[0x282166B58](v35);
}

uint64_t sub_22C8AD6DC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369A30();
  *v5 = v4;
  *(v6 + 832) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C8AD7DC()
{
  v1 = *(v0 + 336);
  v2 = sub_22C3A5908(&qword_27D9BBC88, &unk_22C9113D0);
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    sub_22C36DD28(v1, &qword_27D9BBC70, &unk_22C92C210);
  }

  else
  {
    v40 = *(v0 + 808);
    v39 = *(v0 + 792);
    v48 = *(v0 + 776);
    v46 = *(v0 + 760);
    v38 = *(v0 + 856);
    v43 = *(v0 + 752);
    v50 = *(v0 + 736);
    v49 = *(v0 + 720);
    v44 = *(v0 + 648);
    v45 = *(v0 + 632);
    v41 = *(v0 + 624);
    v42 = *(v0 + 616);
    v36 = *(v0 + 608);
    v37 = *(v0 + 592);
    v52 = *(v0 + 400);
    v47 = *(v0 + 392);
    v3 = *(v0 + 384);
    v33 = *(v2 + 48);
    v34 = *(v0 + 376);
    v4 = *(v0 + 368);
    v51 = *(v0 + 360);
    v5 = *(v0 + 344);
    v6 = *(v0 + 352);
    v35 = *(v0 + 288);
    v7 = *(v5 + 48);
    v8 = *(v47 + 32);
    v8(v6, v1, v3);
    v9 = *(v4 + 32);
    v9(v6 + v7, v1 + v33, v51);
    v10 = *(v5 + 48);
    v8(v52, v6, v3);
    v9(v34, v6 + v10, v51);
    sub_22C90321C();
    v11 = sub_22C36D39C();
    v12(v11);
    v13 = sub_22C36BAFC();
    v14(v13);
    sub_22C3A5908(&qword_27D9BBBB0, &qword_22C9110E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    strcpy((inited + 32), "promptTemplate");
    *(inited + 47) = -18;
    *(inited + 72) = sub_22C90444C();
    *(inited + 80) = sub_22C8AF04C(&qword_27D9BBC98, MEMORY[0x277D0E698]);
    sub_22C557D04((inited + 48));
    sub_22C36BBA8();
    (*(v16 + 16))();
    sub_22C3A5908(&qword_27D9BBBB8, &unk_22C9110F0);
    sub_22C909F0C();
    sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_22C90F870;
    *(v17 + 32) = 0xD00000000000003DLL;
    *(v17 + 40) = 0x800000022C939420;
    *v36 = v35;
    v39(v36, v38, v37);

    v18 = sub_22C901CCC();
    v19 = sub_22C36D264();
    v40(v19);
    v20 = sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    *(v17 + 48) = v18;
    *(v17 + 72) = v20;
    *(v17 + 80) = 0xD000000000000089;
    *(v17 + 88) = 0x800000022C939460;
    sub_22C901ADC();
    sub_22C36C640(v41, 0, 1, v43);
    sub_22C379DF8(v41, v42, &qword_27D9BD638, &unk_22C92C240);
    sub_22C381934();
    sub_22C901B2C();
    sub_22C901B1C();
    sub_22C901AFC();
    sub_22C901B0C();
    sub_22C36DD28(v41, &qword_27D9BD638, &unk_22C92C240);
    v46(v44, v38, v45);
    *(v17 + 120) = sub_22C901B3C();
    sub_22C557D04((v17 + 96));
    sub_22C901CEC();
    v48(v44, v45);
    sub_22C909F0C();
    sub_22C90320C();

    (*(v4 + 8))(v34, v51);
    (*(v47 + 8))(v52, v3);
    v21 = sub_22C38C560();
    v50(v21, v49);
    v22 = sub_22C36BBCC();
    v23(v22);
  }

  v24 = *(v0 + 736);
  v25 = *(v0 + 296);
  sub_22C909DCC();
  *(v0 + 232) = v25;
  sub_22C909E6C();
  v26 = sub_22C36D264();
  v24(v26);
  v27 = sub_22C901D8C();
  v28 = swift_task_alloc();
  *(v0 + 840) = v28;
  v29 = sub_22C8AF04C(&qword_27D9C1160, MEMORY[0x277D71A98]);
  *v28 = v0;
  v28[1] = sub_22C8ADEBC;
  v30 = *(v0 + 312);
  v31 = *(v0 + 240);

  return MEMORY[0x282165A68](v31, v27, v30, v29);
}

uint64_t sub_22C8ADEBC()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 848) = v0;

  (*(v2[40] + 8))(v2[41], v2[39]);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C8AE01C()
{
  v1 = v0[92];
  v2 = v0[90];
  v3 = v0[82];
  (*(v0[53] + 8))(v0[55], v0[52]);
  v1(v2, v3);

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C8AE20C()
{
  v2 = sub_22C370468();
  v3(v2);
  v4 = sub_22C36BBCC();
  v1(v4);
  sub_22C388AEC(*(v0 + 832));

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C8AE364()
{
  v2 = sub_22C370468();
  v3(v2);
  v4 = sub_22C36BBCC();
  v1(v4);
  sub_22C388AEC(*(v0 + 848));

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C8AE4BC(uint64_t a1)
{
  v2 = sub_22C909D9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90444C();
  v13[3] = v6;
  v13[4] = sub_22C8AF04C(&qword_27D9BBC98, MEMORY[0x277D0E698]);
  v7 = sub_22C557D04(v13);
  (*(*(v6 - 8) + 16))(v7, a1, v6);
  v8 = MEMORY[0x277D42E18];
  sub_22C909CFC();
  sub_22C36FF94(v13);
  sub_22C3A5908(&qword_27D9BBCA8, &qword_22C9113E0);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22C90F800;
  (*(v3 + 16))(v10 + v9, v5, v2);
  MEMORY[0x2318B71C0](v10, v2, v8);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22C8AE6D0(uint64_t a1)
{
  v2 = sub_22C8AF448();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8AE70C(uint64_t a1)
{
  v2 = sub_22C8AF448();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C8AE764()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C8AE814;

  return sub_22C8A9FBC();
}

uint64_t sub_22C8AE814()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369A30();
  *v2 = v1;

  sub_22C369A24();

  return v3();
}

unint64_t sub_22C8AE948()
{
  result = qword_27D9C1108;
  if (!qword_27D9C1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1108);
  }

  return result;
}

void sub_22C8AE9C4(uint64_t a1)
{
  sub_22C8AED8C(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t dispatch thunk of ResponseGenerationModelClient.generate(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(a5 + 8) + **(a5 + 8));
  swift_task_alloc();
  sub_22C36CC90();
  *(v5 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_22C8AE814;

  return v14(a1, a2, a3, a4, a5);
}

void sub_22C8AEBE4(uint64_t a1)
{
  sub_22C8AED8C(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
  if (v1 <= 0x3F)
  {
    sub_22C8AED28(319);
    if (v2 <= 0x3F)
    {
      sub_22C8AED8C(319, &qword_281435818, MEMORY[0x277D71A98]);
      if (v3 <= 0x3F)
      {
        sub_22C8AED8C(319, qword_281431888, type metadata accessor for ResponseGenerationBiomeRoot);
        if (v4 <= 0x3F)
        {
          sub_22C8AEDDC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C8AED28(uint64_t a1)
{
  if (!qword_281435828)
  {
    sub_22C3AC1A0(&qword_27D9BBBC0, &qword_22C92C1C0);
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_281435828);
    }
  }
}

void sub_22C8AED8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_22C37FDE8();
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22C8AEDDC()
{
  if (!qword_27D9C1118)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9C1118);
    }
  }
}

unint64_t sub_22C8AEE2C()
{
  result = qword_27D9C1120;
  if (!qword_27D9C1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1120);
  }

  return result;
}

unint64_t sub_22C8AEE80()
{
  result = qword_27D9C1138;
  if (!qword_27D9C1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1138);
  }

  return result;
}

unint64_t sub_22C8AEED4()
{
  result = qword_27D9C1140;
  if (!qword_27D9C1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1140);
  }

  return result;
}

unint64_t sub_22C8AEF44()
{
  result = qword_27D9C1170;
  if (!qword_27D9C1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1170);
  }

  return result;
}

uint64_t sub_22C8AEF98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

uint64_t sub_22C8AEFF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C8AF04C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C8AF090(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD050, &qword_22C917420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8AF100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.Label(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_22C8AF164(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_22C8AF178(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C8AF1B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationStructuredModelCompletion.ResponseGenerationModelResponseError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationGenerativeModelsClient.ModelClientError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C8AF398()
{
  result = qword_27D9C11B8;
  if (!qword_27D9C11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11B8);
  }

  return result;
}

unint64_t sub_22C8AF3F4()
{
  result = qword_27D9C11C0;
  if (!qword_27D9C11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11C0);
  }

  return result;
}

unint64_t sub_22C8AF448()
{
  result = qword_27D9C11C8;
  if (!qword_27D9C11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11C8);
  }

  return result;
}

unint64_t sub_22C8AF49C()
{
  result = qword_27D9C11D0;
  if (!qword_27D9C11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11D0);
  }

  return result;
}

unint64_t sub_22C8AF4F0()
{
  result = qword_27D9C11E0;
  if (!qword_27D9C11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11E0);
  }

  return result;
}

_BYTE *sub_22C8AF544(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_22C8AF624()
{
  result = qword_27D9C11F0;
  if (!qword_27D9C11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11F0);
  }

  return result;
}

unint64_t sub_22C8AF67C()
{
  result = qword_27D9C11F8;
  if (!qword_27D9C11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C11F8);
  }

  return result;
}

unint64_t sub_22C8AF6D4()
{
  result = qword_27D9C1200;
  if (!qword_27D9C1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1200);
  }

  return result;
}

uint64_t sub_22C8AF72C()
{

  return sub_22C8AEF98(v2, v1, v0);
}

void sub_22C8AF748()
{
  v2 = v0[28];
  *(v1 - 176) = v0[31];
  *(v1 - 168) = v2;
  v3 = v0[22];
  *(v1 - 160) = v0[25];
  *(v1 - 152) = v3;
}

uint64_t sub_22C8AF764()
{

  return sub_22C8AEFF4(v1, v0);
}

uint64_t sub_22C8AF77C()
{

  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime38ResponseGenerationOverrideInputMatcher_responseLocale;
  v2 = sub_22C90077C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_22C8AF7F4()
{
  sub_22C8AF77C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResponseGenerationOverrideInputMatcher(uint64_t a1)
{
  result = qword_281430000;
  if (!qword_281430000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C8AF8A0(uint64_t a1)
{
  result = sub_22C90077C();
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

uint64_t ResponseGenerationPreferences.responseCatalogSideLoad.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C376688();
  return v1;
}

uint64_t static Preferences.subscript.getter(void *a1)
{
  v1 = *(*a1 + *MEMORY[0x277D84DE8]);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - v3;
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0(&qword_2814357B8);
  }

  sub_22C37AA60(v1, qword_281437588);
  swift_beginAccess();
  v5 = sub_22C36BC58();
  sub_22C8B257C(v5, v6);
  swift_getAtKeyPath();
  return sub_22C8B25E0(v4);
}

uint64_t ResponseGenerationPreferences.generativeDialogEnabled.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C376688();
  return v1;
}

uint64_t ResponseGenerationPreferences.responseGenerationSideLoadPrebuiltOverrides.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C376688();
  return v1;
}

uint64_t ResponseGenerationPreferences.responseValidationRules.getter()
{
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C901EDC();
  return v1;
}

uint64_t ResponseGenerationPreferences.responseGenerationEnableOverrides.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C376688();
  return v1;
}

uint64_t ResponseGenerationPreferences.responseGenerationModelBundleIdentifier.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C37B27C();
  return v1;
}

unint64_t ResponseGenerationPreferences.responseGenerationMinimumReflectionScore.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
  sub_22C3798B4();
  return v1 | (v2 << 32);
}

double ResponseGenerationPreferences.responseGenerationModelTimeout.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
  sub_22C3798B4();
  return v1;
}

uint64_t ResponseGenerationPreferences.responseGenerationPromptVersion.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C37B27C();
  return v1;
}

uint64_t ResponseGenerationPreferences.responseGenerationMaxTokens.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
  sub_22C3798B4();
  return v1;
}

uint64_t ResponseGenerationPreferences.responseGenerationResponseFormat.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C37B27C();
  return v1;
}

uint64_t ResponseGenerationPreferences.$responseValidationRules.getter()
{
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);

  return sub_22C901EEC();
}

uint64_t ResponseGenerationPreferences.$responseValidationRules.setter()
{
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  sub_22C36BC58();
  sub_22C901EFC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseValidationRules.modify()
{
  v1 = sub_22C4DD390(0x30uLL);
  sub_22C38B9BC(v1);
  v2 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C373438(v2);
  *(v0 + 16) = v3;
  v5 = sub_22C4DD390(*(v4 + 64));
  v6 = sub_22C37F174(v5);
  v7 = sub_22C4DD390(v6);
  v8 = sub_22C37FD80(v7);
  *(v0 + 40) = sub_22C4DD390(v8);
  sub_22C901EEC();
  return sub_22C36D7C8();
}

void sub_22C8AFF68(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v9 = v3[1];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_22C901EFC();
    v10 = *(v8 + 8);
    v11 = sub_22C37B5F4();
    v10(v11);
    (v10)(v6, v9);
  }

  else
  {
    sub_22C37B5F4();
    sub_22C901EFC();
    (*(v8 + 8))(v6, v9);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v3);
}

uint64_t ResponseGenerationPreferences.$responseGenerationModelBundleIdentifier.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseGenerationModelBundleIdentifier.setter()
{
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseGenerationModelBundleIdentifier.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 20));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationModelTimeout.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseGenerationModelTimeout.setter()
{
  sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseGenerationModelTimeout.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 24));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationPromptVersion.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseGenerationPromptVersion.setter()
{
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseGenerationPromptVersion.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 28));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.responseGenerationPromptVersionI18n.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C37B27C();
  return v1;
}

uint64_t ResponseGenerationPreferences.$responseGenerationPromptVersionI18n.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseGenerationPromptVersionI18n.setter()
{
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseGenerationPromptVersionI18n.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 32));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationResponseFormat.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseGenerationResponseFormat.setter()
{
  sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseGenerationResponseFormat.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 36));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationMinimumReflectionScore.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseGenerationMinimumReflectionScore.setter()
{
  sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseGenerationMinimumReflectionScore.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 40));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationMaxTokens.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseGenerationMaxTokens.setter()
{
  sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseGenerationMaxTokens.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 44));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$generativeDialogEnabled.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$generativeDialogEnabled.setter()
{
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$generativeDialogEnabled.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 48));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationEnableOverrides.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseGenerationEnableOverrides.setter()
{
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseGenerationEnableOverrides.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 52));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseGenerationSideLoadPrebuiltOverrides.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseGenerationSideLoadPrebuiltOverrides.setter()
{
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseGenerationSideLoadPrebuiltOverrides.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 56));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.responseValidationRulesEnabled.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C3798B4();
  return v1;
}

uint64_t ResponseGenerationPreferences.$responseValidationRulesEnabled.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseValidationRulesEnabled.setter()
{
  sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseValidationRulesEnabled.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 60));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.responseValidationRulesDisabled.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C3798B4();
  return v1;
}

uint64_t ResponseGenerationPreferences.$responseValidationRulesDisabled.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseValidationRulesDisabled.setter()
{
  sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseValidationRulesDisabled.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 64));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.responseCatalog.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C376688();
  return v1;
}

uint64_t ResponseGenerationPreferences.$responseCatalog.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseCatalog.setter()
{
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseCatalog.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 68));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.$responseCatalogSideLoad.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  return sub_22C382FF4(v0);
}

uint64_t ResponseGenerationPreferences.$responseCatalogSideLoad.setter()
{
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$responseCatalogSideLoad.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 72));
  return sub_22C36D7C8();
}

uint64_t ResponseGenerationPreferences.forceLogCatalogParams.getter()
{
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C376688();
  return v1;
}

uint64_t ResponseGenerationPreferences.$forceLogCatalogParams.getter()
{
  sub_22C37FB94();
  v0 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  return sub_22C382FF4(v0);
}

uint64_t sub_22C8B1C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  sub_22C3A5908(a5, a6);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = sub_22C36BC58();
  v12(v11);
  return a7(v10);
}

uint64_t ResponseGenerationPreferences.$forceLogCatalogParams.setter()
{
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t ResponseGenerationPreferences.$forceLogCatalogParams.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C8B3A98(v10);
  sub_22C36BD9C(*(v11 + 76));
  return sub_22C36D7C8();
}

void sub_22C8B1E54(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v12 = v3[5];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[1];
  if (a2)
  {
    v4(v3[3], v5, v3[1]);
    sub_22C901EFC();
    v9 = *(v7 + 8);
    v10 = sub_22C37B5F4();
    v9(v10);
    v11 = v12;
    (v9)(v12, v8);
  }

  else
  {
    sub_22C37B5F4();
    sub_22C901EFC();
    v11 = v12;
    (*(v7 + 8))(v12, v8);
  }

  free(v11);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_22C8B1F7C()
{
  LOBYTE(v39[0]) = 0;
  v0 = sub_22C380768();
  sub_22C372538(0xD000000000000017, 0x800000022C92F2A0, sub_22C8B3858, 0, v39, sub_22C8B3A20);
  type metadata accessor for ResponseGenerationPreferences(0);
  v39[0] = 0xD00000000000003FLL;
  v39[1] = 0x800000022C92F170;
  v1 = MEMORY[0x277D837D0];
  sub_22C372538(0xD000000000000027, 0x800000022C939760, sub_22C8B3868, 0, v39, sub_22C8B3A20);
  v39[0] = 0x4020000000000000;
  sub_22C8B3AB4();
  sub_22C372538(v2, v3, v4, 0, v5, v6);
  sub_22C370B14(0xD00000000000001FLL, 0x800000022C9397B0, sub_22C8B3894, v7, v8, v1, v0, 14454, 0xE200000000000000);
  sub_22C370B14(0xD000000000000023, 0x800000022C9397D0, sub_22C8B38C0, v9, v10, v1, v0, 14198, 0xE200000000000000);
  sub_22C370B14(0xD000000000000020, 0x800000022C939800, sub_22C8B38EC, v11, v12, v1, v0, 0x6974616D6F747561, 0xE900000000000063);
  LODWORD(v39[0]) = 0;
  BYTE4(v39[0]) = 1;
  sub_22C3A5908(&qword_27D9C1130, &unk_22C92C7C0);
  sub_22C372538(0xD000000000000028, 0x800000022C939830, sub_22C8B3918, 0, v39, sub_22C8B3A20);
  v39[0] = 1024;
  sub_22C8B3AB4();
  sub_22C372538(v13, v14, v15, 0, v16, v17);
  LOBYTE(v39[0]) = 1;
  sub_22C8B3AB4();
  sub_22C38AC90(0xD000000000000017, v18, v19, v20, v21);
  LOBYTE(v39[0]) = 1;
  sub_22C38AC90(0xD000000000000021, 0x800000022C9398A0, sub_22C4DD364, v22, v39);
  LOBYTE(v39[0]) = 0;
  sub_22C8B3AB4();
  sub_22C38AC90(v23, v24, sub_22C4DD364, v25, v26);
  v27 = MEMORY[0x277D84F90];
  v39[0] = MEMORY[0x277D84F90];
  v28 = sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C372538(0xD00000000000001ELL, 0x800000022C939900, sub_22C8B398C, 0, v39, sub_22C8B3A20);
  sub_22C370B14(0xD00000000000001FLL, 0x800000022C939920, sub_22C8B399C, v29, v30, v28, v0, v27);
  LOBYTE(v39[0]) = 1;
  sub_22C901E6C();
  sub_22C372538(0x65736E6F70736552, 0xEF676F6C61746143, sub_22C3C5B8C, 0, v39, sub_22C3C0C48);
  LOBYTE(v39[0]) = 0;
  sub_22C8B3AB4();
  sub_22C38AC90(0xD000000000000017, v31, sub_22C3C5B8C, v32, v33);
  LOBYTE(v39[0]) = 0;
  sub_22C8B3AB4();
  return sub_22C38AC90(v34, v35, sub_22C3C5B8C, v36, v37);
}

uint64_t sub_22C8B2530()
{
  v0 = type metadata accessor for ResponseGenerationPreferences(0);
  sub_22C3F0160(v0, qword_281437588);
  sub_22C37AA60(v0, qword_281437588);
  return sub_22C8B1F7C();
}

uint64_t sub_22C8B257C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseGenerationPreferences(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8B25E0(uint64_t a1)
{
  v2 = type metadata accessor for ResponseGenerationPreferences(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Preferences.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0(&qword_2814357B8);
  }

  v4 = MEMORY[0x277D84308];
  sub_22C37AA60(*(v3 + *MEMORY[0x277D84308]), qword_281437588);
  swift_beginAccess();
  v5 = swift_readAtKeyPath();
  (*(*(*(v3 + *v4 + 8) - 8) + 16))(a2);
  v5(v7, 0);
  return swift_endAccess();
}

uint64_t sub_22C8B275C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v7 - v1;
  v4 = *v3;
  (*(v5 + 16))(&v7 - v1);

  return static Preferences.subscript.setter(v2, v4);
}

uint64_t static Preferences.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D84308];
  v5 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v6 = *(v5 - 8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0(&qword_2814357B8);
    v8 = *v4;
  }

  sub_22C37AA60(*(v3 + v8), qword_281437588);
  (*(v6 + 16))(v10, a1, v5);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();

  return (*(v6 + 8))(a1, v5);
}

void (*static Preferences.subscript.modify(void *a1, uint64_t *a2))(uint64_t ***a1, char a2)
{
  v4 = sub_22C4DD390(0x28uLL);
  *a1 = v4;
  *v4 = a2;
  v5 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  v4[3] = sub_22C4DD390(v7);
  v8 = sub_22C4DD390(v7);
  v4[4] = v8;
  static Preferences.subscript.getter(a2, v8);
  return sub_22C8B2AB4;
}

void sub_22C8B2AB4(uint64_t ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    v8 = sub_22C37170C();
    v9(v8);

    static Preferences.subscript.setter(v3, v7);
    (v6[1])(v4, v5);
  }

  else
  {
    v10 = *v2;

    static Preferences.subscript.setter(v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_22C8B2B7C()
{
  sub_22C4DDC04();
  result = sub_22C90AB0C();
  qword_281430188 = result;
  return result;
}

uint64_t static ResponseGenerationPreferencesDomain.userDefaultsContainer.getter()
{
  if (qword_281430180 != -1)
  {
    swift_once();
  }

  v0 = qword_281430188;
  v1 = qword_281430188;
  return v0;
}

void *sub_22C8B2C0C()
{
  result = sub_22C8B2C2C();
  qword_281430198 = result;
  return result;
}

void *sub_22C8B2C2C()
{
  v0 = sub_22C9063DC();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  sub_22C90046C();
  sub_22C369958();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = (v9 - v8);
  type metadata accessor for ResponseGenerationPreferencesDomain.ResponseGenerationPreferences();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_22C90A0EC();
  v14 = sub_22C8B39AC(v13, 0x7473696C70, 0xE500000000000000, v12);

  if (v14)
  {
    sub_22C9003DC();

    v15 = sub_22C37A508(v10);
    v16 = sub_22C36BC58();
    v17(v16);
  }

  else
  {
    sub_22C90405C();
    v18 = sub_22C9063CC();
    v19 = sub_22C90AADC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_22C36F9F4(0xD00000000000001DLL, 0x800000022C92C780, &v23);
      _os_log_impl(&dword_22C366000, v18, v19, "Error loading %s from bundle", v20, 0xCu);
      sub_22C36FF94(v21);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v2 + 8))(v6, v0);
    return 0;
  }

  return v15;
}

uint64_t static ResponseGenerationPreferencesDomain.bundleResource.getter()
{
  if (qword_281430190 != -1)
  {
    swift_once();
  }
}

unint64_t sub_22C8B2F10(uint64_t a1)
{
  v1 = sub_22C90B21C();

  if (v1 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_22C8B2F88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C8B2F10(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C8B2FB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C38AD44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C8B2FE4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C8B2F5C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C8B3018(uint64_t a1)
{
  v2 = sub_22C38A7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C8B3054(uint64_t a1)
{
  v2 = sub_22C38A7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C8B3090()
{
  if (!*(v0 + 112))
  {
    if (!*(v0 + 24) || ((sub_22C383550(), v5) ? (v5 = v4 == 0xE200000000000000) : (v5 = 0), !v5 && (sub_22C382AC8(v1, v2, v3, v4) & 1) == 0))
    {
      sub_22C381950();
    }
  }

  return sub_22C37170C();
}

uint64_t sub_22C8B3114()
{
  if (!*(v0 + 80))
  {
    if (!*(v0 + 24) || ((sub_22C383550(), v5) ? (v5 = v4 == 0xE200000000000000) : (v5 = 0), !v5 && (sub_22C382AC8(v1, v2, v3, v4) & 1) == 0))
    {
      sub_22C381950();
    }
  }

  return sub_22C37170C();
}

uint64_t sub_22C8B3188()
{
  if (!*(v0 + 96))
  {
    if (!*(v0 + 24) || ((sub_22C383550(), v5) ? (v5 = v4 == 0xE200000000000000) : (v5 = 0), !v5 && (sub_22C382AC8(v1, v2, v3, v4) & 1) == 0))
    {
      sub_22C381950();
    }
  }

  return sub_22C37170C();
}

uint64_t sub_22C8B31FC()
{
  if (!*(v0 + 128))
  {
    if (!*(v0 + 24) || ((sub_22C383550(), v5) ? (v5 = v4 == 0xE200000000000000) : (v5 = 0), !v5 && (sub_22C382AC8(v1, v2, v3, v4) & 1) == 0))
    {
      sub_22C381950();
    }
  }

  return sub_22C37170C();
}

uint64_t sub_22C8B3280()
{
  result = *(v0 + 153);
  if (result == 2)
  {
    if (*(v0 + 24) && ((sub_22C383550(), v6) ? (v6 = v5 == 0xE200000000000000) : (v6 = 0), v6 || (sub_22C382AC8(v2, v3, v4, v5) & 1) != 0))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_22C8B3318@<X0>(uint64_t *a1@<X8>)
{
  result = static ResponseGenerationPreferencesDomain.bundleResource.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22C8B3368(uint64_t a1)
{
  sub_22C8B3518(319, &qword_2814357E0, MEMORY[0x277D839B0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22C8B3518(319, &qword_2814357F0, MEMORY[0x277D837D0]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_22C8B3518(319, &qword_2814357D8, MEMORY[0x277D839F8]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_22C8B357C(319, &qword_2814357D0, &qword_27D9C1130, &unk_22C92C7C0);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_22C8B3518(319, &qword_2814357C8, MEMORY[0x277D83B88]);
      if (v9 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_22C8B357C(319, &qword_2814357E8, &qword_27D9BB5D0, &unk_22C9112A0);
        v2 = v10;
        if (v11 <= 0x3F)
        {
          sub_22C8B35EC(319);
          v2 = v12;
          if (v13 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_22C8B3518(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_22C380768();
    v4 = sub_22C901F2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22C8B357C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_22C3AC1A0(a3, a4);
    sub_22C380768();
    v5 = sub_22C901F2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22C8B35EC(uint64_t a1)
{
  if (!qword_2814357C0)
  {
    sub_22C901E6C();
    v1 = sub_22C901F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_2814357C0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationPreferencesDomain(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C8B3754()
{
  result = qword_27D9C1220;
  if (!qword_27D9C1220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1220);
  }

  return result;
}

unint64_t sub_22C8B37AC()
{
  result = qword_2814302A8;
  if (!qword_2814302A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814302A8);
  }

  return result;
}

unint64_t sub_22C8B3804()
{
  result = qword_2814302B0;
  if (!qword_2814302B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814302B0);
  }

  return result;
}

uint64_t sub_22C8B3868@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C8B3090();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C8B3894@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C8B3114();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C8B38C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C8B3188();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C8B38EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C8B31FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C8B3918@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 136);
  v3 = *(*result + 140);
  if (v3)
  {
    v2 = 0;
  }

  *(a2 + 4) = 0;
  *a2 = v2;
  *(a2 + 5) = v3;
  return result;
}

uint64_t sub_22C8B393C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 1024;
  if (!*(*result + 152))
  {
    v2 = *(*result + 144);
  }

  *a2 = v2;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C8B3960@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C8B3280();
  *a1 = result;
  return result;
}

id sub_22C8B39AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_22C90A0EC();

  v7 = [a4 URLForResource:a1 withExtension:v6];

  return v7;
}

uint64_t sub_22C8B3A20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C588FB8();
  *a1 = result;
  return result;
}

uint64_t sub_22C8B3A48@<X0>(uint64_t a1@<X8>)
{
  result = sub_22C3C0B2C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_22C8B3A98(uint64_t a1)
{
  *(v1 + 40) = a1;

  return type metadata accessor for ResponseGenerationPreferences(0);
}

uint64_t sub_22C8B3AC0()
{
  result = v1;
  *(v2 - 240) = v0;
  return result;
}

uint64_t sub_22C8B3AD4(char a1, void (*a2)(uint64_t *__return_ptr, char *, void *), uint64_t a3, uint64_t a4)
{
  v6 = a1;
  BYTE1(v12) = a1;
  v7 = *(a4 + 16);
  v8 = (a4 + 40);
  if (v7)
  {
    while (1)
    {
      v9 = *v8;
      v11[0] = *(v8 - 1);
      v11[1] = v9;

      a2(&v12, &v12 + 1, v11);
      if (v4)
      {
        break;
      }

      v6 = v12;
      BYTE1(v12) = v12;
      v8 += 2;
      if (!--v7)
      {
        return v6 & 1;
      }
    }
  }

  return v6 & 1;
}

unint64_t sub_22C8B3B8C()
{
  v1 = v0;
  v2 = sub_22C9026BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D1CBF0])
  {
    v7 = 0x73736563637573;
  }

  else if (v6 == *MEMORY[0x277D1CB98])
  {
    v7 = 0x5374657070696E73;
  }

  else if (v6 == *MEMORY[0x277D1CBA8] || v6 == *MEMORY[0x277D1CBB0])
  {
    v7 = 0xD000000000000012;
  }

  else if (v6 == *MEMORY[0x277D1CBB8])
  {
    v7 = 0xD000000000000013;
  }

  else if (v6 == *MEMORY[0x277D1CBD0])
  {
    v7 = 0xD000000000000015;
  }

  else if (v6 == *MEMORY[0x277D1CBD8])
  {
    v7 = 0xD000000000000017;
  }

  else if (v6 == *MEMORY[0x277D1CBC0])
  {
    v7 = 0xD000000000000013;
  }

  else if (v6 == *MEMORY[0x277D1CBE0])
  {
    v7 = 0xD00000000000001BLL;
  }

  else if (v6 == *MEMORY[0x277D1CBA0])
  {
    v7 = 0xD000000000000011;
  }

  else if (v6 == *MEMORY[0x277D1CBC8])
  {
    v7 = 0xD000000000000013;
  }

  else if (v6 == *MEMORY[0x277D1CBE8])
  {
    v7 = 0x6572756C696166;
  }

  else
  {
    v7 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return v7;
}

void *sub_22C8B3ECC()
{
  v47 = sub_22C9026BC();
  v0 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22C907DEC();
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22C906ECC();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22C907C5C();
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C90804C();
  v11 = *(v10 + 16);
  if (v11)
  {
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v33[1] = v10;
    v15 = v10 + v14;
    v39 = *(v12 + 56);
    v40 = v13;
    v37 = (v2 + 8);
    v38 = (v4 + 8);
    v35 = (v12 - 8);
    v36 = (v0 + 8);
    v16 = MEMORY[0x277D84F90];
    v34 = xmmword_22C90F800;
    v41 = v12;
    do
    {
      v17 = v43;
      v40(v9, v15, v43);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v18 = swift_allocObject();
      *(v18 + 16) = v34;
      sub_22C907C0C();
      v19 = v42;
      sub_22C906EBC();
      (*v38)(v6, v44);
      v20 = v46;
      sub_22C907DAC();
      (*v37)(v19, v45);
      v21 = sub_22C8B3B8C();
      v23 = v22;
      (*v36)(v20, v47);
      *(v18 + 32) = v21;
      *(v18 + 40) = v23;
      v48 = v18;
      sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      sub_22C3F035C();
      v24 = sub_22C90A04C();
      v26 = v25;
      (*v35)(v9, v17);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C590270(0, *(v16 + 16) + 1, 1, v16);
        v16 = v30;
      }

      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22C590270(v27 > 1, v28 + 1, 1, v16);
        v16 = v31;
      }

      *(v16 + 16) = v28 + 1;
      v29 = v16 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v15 += v39;
      --v11;
    }

    while (v11);
  }

  else
  {

    return &unk_283FB0A48;
  }

  return v16;
}

uint64_t sub_22C8B4338()
{
  v0 = sub_22C8B3ECC();
  v3[2] = &v4;
  v1 = sub_22C8B3AD4(1, sub_22C8B52F4, v3, v0);

  return v1 & 1;
}

uint64_t sub_22C8B43F8(uint64_t a1)
{
  v100 = a1;
  v91 = sub_22C90806C();
  sub_22C369824();
  v90 = v1;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v89 = v4 - v3;
  v96 = sub_22C9063DC();
  sub_22C369824();
  v95 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v93 = v7;
  v9 = MEMORY[0x28223BE20](v8);
  v92 = &v88 - v10;
  MEMORY[0x28223BE20](v9);
  v94 = &v88 - v11;
  v107 = sub_22C906ECC();
  sub_22C369824();
  v98 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  v17 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v88 - v18;
  v106 = sub_22C907C5C();
  sub_22C369824();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v25 = v24 - v23;
  v105 = sub_22C90634C();
  sub_22C369824();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  v103 = v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v88 - v31;
  v104 = sub_22C90636C();
  sub_22C369824();
  v102 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v37 = v36 - v35;
  sub_22C9036AC();
  sub_22C90633C();
  v38 = sub_22C90635C();
  v39 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v40 = swift_slowAlloc();
    LODWORD(v99) = v39;
    v41 = v40;
    *v40 = 0;
    v42 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v38, v99, v42, "ResponseGeneration.requestValidation", "", v41, 2u);
    sub_22C3699EC();
  }

  v43 = v105;
  (*(v27 + 16))(v103, v32, v105);
  sub_22C9063AC();
  swift_allocObject();
  v99 = sub_22C90639C();
  (*(v27 + 8))(v32, v43);
  (v102)[1](v37, v104);
  v44 = *(v101 + 64);
  if (v44)
  {
    sub_22C89A778();
    sub_22C89FC7C();
  }

  v97 = v44;
  result = sub_22C90804C();
  v46 = result;
  v47 = *(result + 16);
  if (v47)
  {
    v48 = 0;
    v105 = result + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v103 = v21 + 8;
    v104 = v21 + 16;
    v102 = (v98 + 8);
    while (v48 < *(v46 + 16))
    {
      v49 = v106;
      (*(v21 + 16))(v25, v105 + *(v21 + 72) * v48, v106);
      sub_22C907C0C();
      (*(v21 + 8))(v25, v49);
      sub_22C906E9C();
      (*v102)(v16, v107);
      v50 = sub_22C90769C();
      if (sub_22C370B74(v19, 1, v50) == 1)
      {
        result = sub_22C3770B0(v19, &qword_27D9BF330, &unk_22C923250);
      }

      else
      {
        v51 = sub_22C90768C();
        v53 = v52;
        v54 = *(*(v50 - 8) + 8);
        v55 = v50;
        v56 = v51;
        v54(v19, v55);
        v57 = v101;
        if (sub_22C5E935C(v56, v53, *(*(v101 + 56) + 16)))
        {
          v59 = v56;

          v60 = v94;
          sub_22C90405C();

          v61 = sub_22C9063CC();
          v62 = sub_22C90AAFC();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v110[0] = v64;
            *v63 = 136315138;
            v65 = sub_22C36F9F4(v59, v53, v110);

            *(v63 + 4) = v65;
            _os_log_impl(&dword_22C366000, v61, v62, "'%s' is in the NLG denylist.", v63, 0xCu);
            sub_22C36FF94(v64);
            sub_22C3699EC();
            sub_22C3699EC();
          }

          else
          {
          }

          (*(v95 + 8))(v60, v96);
          v77 = v99;
          if (v97)
          {
            v78 = sub_22C89A778();
            v79 = 1;
            goto LABEL_29;
          }

LABEL_30:
          sub_22C8B4EAC(v101, v77);
          v58 = 0;
          goto LABEL_31;
        }

        sub_22C374168((v57 + 16), *(v57 + 40));
        result = sub_22C8B4338();
        if ((result & 1) == 0)
        {

          sub_22C378A4C(v101 + 16, v110);
          sub_22C3A5908(&qword_27D9C1228, &qword_22C92CAB0);
          sub_22C3A5908(&qword_27D9C1230, &qword_22C92CAB8);
          if (swift_dynamicCast())
          {
            sub_22C3770B0(v108, &qword_27D9C1238, &unk_22C92CAC0);
            v66 = v92;
            sub_22C90405C();
            v67 = v90;
            v68 = v89;
            v69 = v91;
            (*(v90 + 16))(v89, v100, v91);
            v70 = sub_22C9063CC();
            v71 = sub_22C90AAFC();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v110[0] = v107;
              *v72 = 136315138;
              sub_22C8B3ECC();
              v73 = MEMORY[0x2318B7AD0]();
              v75 = v74;

              (*(v67 + 8))(v68, v69);
              v76 = sub_22C36F9F4(v73, v75, v110);

              *(v72 + 4) = v76;
              _os_log_impl(&dword_22C366000, v70, v71, "Request fingerprints: %s", v72, 0xCu);
              sub_22C36FF94(v107);
              sub_22C3699EC();
              sub_22C3699EC();
            }

            else
            {

              (*(v67 + 8))(v68, v69);
            }

            v81 = v95;
            v80 = v96;
            (*(v95 + 8))(v66, v96);
          }

          else
          {
            v109 = 0;
            memset(v108, 0, sizeof(v108));
            sub_22C3770B0(v108, &qword_27D9C1238, &unk_22C92CAC0);
            v80 = v96;
            v81 = v95;
          }

          v82 = v93;
          v77 = v99;
          sub_22C90405C();
          v83 = sub_22C9063CC();
          v84 = sub_22C90AAFC();
          v85 = os_log_type_enabled(v83, v84);
          v86 = v97;
          if (v85)
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&dword_22C366000, v83, v84, "Invalid request to ResponseGeneration", v87, 2u);
            sub_22C3699EC();
          }

          (*(v81 + 8))(v82, v80);
          if (v86)
          {
            v78 = sub_22C89A778();
            v79 = 3;
LABEL_29:
            *(v78 + 24) = v79;
          }

          goto LABEL_30;
        }
      }

      if (v47 == ++v48)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_22C8B4EAC(v101, v99);
    v58 = 1;
LABEL_31:

    return v58;
  }

  return result;
}

uint64_t sub_22C8B4EAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C90637C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22C90634C();
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22C90636C();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 64))
  {
    sub_22C89A778();
    sub_22C89FEB8();
  }

  sub_22C9036AC();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v25 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D85B00])
    {
      v14 = 0;
      v15 = 0;
      v24 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v24 = "%s";
      v15 = 2;
      v14 = 1;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = v15;
    *(v16 + 1) = v14;
    *(v16 + 2) = 2080;
    sub_22C90366C();
    v18 = sub_22C90AF7C();
    v20 = sub_22C36F9F4(v18, v19, &v28);

    *(v16 + 4) = v20;
    v21 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v25, v21, "ResponseGeneration.requestValidation", v24, v16, 0xCu);
    sub_22C36FF94(v17);
    MEMORY[0x2318B9880](v17, -1, -1);
    MEMORY[0x2318B9880](v16, -1, -1);
  }

  (*(v7 + 8))(v9, v27);
  return (*(v10 + 8))(v12, v26);
}

uint64_t sub_22C8B5228()
{
  sub_22C36FF94((v0 + 16));

  return v0;
}

uint64_t sub_22C8B5258()
{
  sub_22C8B5228();

  return swift_deallocClassInstance();
}

BOOL sub_22C8B52B0@<W0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_22C8B43B0(*a1, *a2, a2[1], *a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

BOOL sub_22C8B5310(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

void sub_22C8B5340()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    if (v3-- == 0)
    {
      break;
    }

    v6 = 0xE500000000000000;
    v7 = 0x454E4F4850;
    switch(*v4)
    {
      case 1:
        v6 = 0xE300000000000000;
        v7 = 4473168;
        break;
      case 2:
        v6 = 0xE800000000000000;
        v7 = 0x4E414D4553524F48;
        break;
      case 3:
        v6 = 0xE400000000000000;
        v7 = 1398097242;
        break;
      case 4:
        v7 = 0x4F454D4143;
        break;
      case 5:
        v7 = 0x4843544157;
        break;
      case 6:
        v6 = 0xE300000000000000;
        v7 = 5390659;
        break;
      case 7:
        v7 = 0x544952414752414DLL;
        v6 = 0xE900000000000041;
        break;
      case 8:
        v6 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v8 = 0xE500000000000000;
    v9 = 0x454E4F4850;
    switch(v1)
    {
      case 1:
        v8 = 0xE300000000000000;
        v9 = 4473168;
        break;
      case 2:
        v8 = 0xE800000000000000;
        v9 = 0x4E414D4553524F48;
        break;
      case 3:
        v8 = 0xE400000000000000;
        v9 = 1398097242;
        break;
      case 4:
        v9 = 0x4F454D4143;
        break;
      case 5:
        v9 = 0x4843544157;
        break;
      case 6:
        v8 = 0xE300000000000000;
        v9 = 5390659;
        break;
      case 7:
        v9 = 0x544952414752414DLL;
        v8 = 0xE900000000000041;
        break;
      case 8:
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {

      break;
    }

    v11 = sub_22C90B4FC();

    ++v4;
  }

  while ((v11 & 1) == 0);
  sub_22C36CC48();
}

BOOL sub_22C8B5564(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_22C8B5594(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_22C8B55C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 48;
    do
    {
      v2 += 24;
      sub_22C6A45F4();
      --v1;
    }

    while (v1);
  }
}

void sub_22C8B5628()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C90952C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v24 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v24 - v13;
  v15 = 0;
  v25 = v1;
  v16 = v1 + 56;
  sub_22C36D280();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v24[1] = v4 + 32;
  v24[2] = v4 + 16;
  v24[0] = v4 + 8;
  if ((v18 & v17) != 0)
  {
    do
    {
      v22 = v15;
LABEL_7:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v4 + 16))(v14, *(v25 + 48) + *(v4 + 72) * (v23 | (v22 << 6)), v2);
      (*(v4 + 32))(v8, v14, v2);
      sub_22C6A521C();
      (*(v4 + 8))(v12, v2);
    }

    while (v19);
  }

  while (1)
  {
    v22 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      sub_22C36CC48();
      return;
    }

    v19 = *(v16 + 8 * v22);
    ++v15;
    if (v19)
    {
      v15 = v22;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_22C8B58E8()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  v1 = sub_22C908EAC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  v11 = *(v0 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v19[1] = v0;
    v16 = v0 + v15;
    v17 = *(v12 + 56);
    do
    {
      v13(v7, v16, v1);
      sub_22C6A676C();
      (*(v12 - 8))(v10, v1);
      v16 += v17;
      --v11;
    }

    while (v11);

    sub_22C36CC48();
  }

  else
  {
    sub_22C36CC48();
  }
}

uint64_t sub_22C8B5B4C()
{
  sub_22C36986C();
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C37A198();
  swift_allocError();
  *v1 = v0;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_22C8B5BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

BOOL sub_22C8B5BF8(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_22C8B5C28()
{
  sub_22C36BA7C();
  v2 = v1;
  v33 = v3;
  v31 = sub_22C3A5908(&qword_27D9C1310, &qword_22C92D008);
  sub_22C36985C();
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v32 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = sub_22C9037DC();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = *(v12 + 16);
  v30 = v0;
  v20(v16, v0, v10);
  v21 = MEMORY[0x277D1ED48];
  v28 = sub_22C8C5F28(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
  sub_22C90AE1C();
  v22 = v21;
  v23 = v31;
  sub_22C8C5F28(&qword_27D9C1318, v22, MEMORY[0x277D1ED60]);
  v29 = v2;
  v24 = sub_22C90A0BC();
  v25 = *(v23 + 48);
  *v9 = (v24 & 1) == 0;
  if (v24)
  {
    (*(v12 + 32))(&v9[v25], v19, v10);
  }

  else
  {
    (*(v12 + 8))(v19, v10);
    v20(&v9[v25], v29, v10);
    v26 = sub_22C6AF810();
    (v20)(v26);
    sub_22C90AE2C();
  }

  v27 = v32;
  sub_22C407C2C();
  (*(v12 + 32))(v33, v27 + *(v23 + 48), v10);
  sub_22C36CC48();
}

void ResponseValidationContext.init(input:dialogValues:)()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for TypedValueFormatter(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C3A5908(&qword_27D9C1240, &qword_22C92CAD0);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22C36CD40();
  v16 = type metadata accessor for DialogValues(v15);
  sub_22C36985C();
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  sub_22C37B6BC();
  v18 = sub_22C90806C();
  sub_22C3699C8();
  v20 = v19;
  v21 = sub_22C36BA00();
  v22(v21);
  v25 = v3;
  sub_22C3A7214();
  if (sub_22C370B74(v1, 1, v16) == 1)
  {
    sub_22C907FFC();
    v23 = (v12 + *(v8 + 20));
    sub_22C9091CC();
    sub_22C3704C4();
    sub_22C9093BC();
    sub_22C8C5F28(&qword_27D9BF390, MEMORY[0x277D72900], MEMORY[0x277D72910]);
    *v23 = 0;
    v23[1] = 0;
    sub_22C909F0C();
    sub_22C880CD0();
    sub_22C3AC228(v25, &qword_27D9C1240, &qword_22C92CAD0);
    (*(v20 + 8))(v5, v18);
    if (sub_22C370B74(v1, 1, v16) != 1)
    {
      sub_22C3AC228(v1, &qword_27D9C1240, &qword_22C92CAD0);
    }
  }

  else
  {
    sub_22C3AC228(v3, &qword_27D9C1240, &qword_22C92CAD0);
    (*(v20 + 8))(v5, v18);
    sub_22C38588C();
    sub_22C8C5CFC(v1, v0);
  }

  type metadata accessor for ResponseValidationContext(0);
  sub_22C38588C();
  sub_22C8C5CFC(v0, v7 + v24);
  sub_22C36CC48();
}

uint64_t sub_22C8B61E4(uint64_t a1)
{
  v2 = sub_22C8C5BD4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8B6220(uint64_t a1)
{
  v2 = sub_22C8C5BD4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t ResponseValidationResult.ruleResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

uint64_t Unsafe.__allocating_init(_:)()
{
  sub_22C8C6114();
  swift_allocObject();
  sub_22C387194();
  Unsafe.init(_:)();
  return v0;
}

void Unsafe.init(_:)()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v23 = v2;
  v4 = sub_22C90077C();
  sub_22C369824();
  v6 = v5;
  v24 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v22 = v8;
  sub_22C36BA0C();
  v9 = sub_22C901CBC();
  v10 = sub_22C369914(v9);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  sub_22C36BA0C();
  v11 = sub_22C901BDC();
  v12 = sub_22C369914(v11);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v26 = sub_22C901C6C();
  sub_22C369824();
  v25 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe_locale;
  v19 = *(v6 + 16);
  v19(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe_locale, v3, v4);
  sub_22C909F0C();
  v20 = sub_22C369A48();
  type metadata accessor for Unsafe._ClientInfo(v20);
  sub_22C8C6144();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe__clientInfo) = sub_22C8B7350(0xD000000000000019, 0x800000022C939A30, 0, 1, v3);
  v19(v22, v1 + v18, v4);
  sub_22C3A5908(&qword_27D9C1250, &qword_22C92CAD8);
  sub_22C369A48();
  v21 = sub_22C901CAC();
  sub_22C3699B8(v21);
  *(swift_allocObject() + 16) = xmmword_22C90F870;
  sub_22C901C8C();
  sub_22C901C9C();
  sub_22C901C7C();
  sub_22C901BCC();
  sub_22C901BEC();
  (*(v24 + 8))(v23, v4);
  (*(v25 + 32))(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe_sanitizer, v17, v26);
  sub_22C36FB20();
}

uint64_t Unsafe.validate(text:context:)()
{
  sub_22C369980();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_22C9063DC();
  v1[9] = v5;
  sub_22C3699B8(v5);
  v1[10] = v6;
  v1[11] = sub_22C3699D4();
  v7 = type metadata accessor for ResponseGenerationPreferences(0);
  v1[12] = v7;
  sub_22C369914(v7);
  v1[13] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8B6784()
{
  sub_22C36FB38();
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0(&qword_2814357B8);
  }

  v1 = sub_22C37AA60(*(v0 + 96), qword_281437588);
  sub_22C36CA70(v1, v0 + 16);
  sub_22C388B88();
  v2 = sub_22C36BA00();
  sub_22C8C26E4(v2, v3);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C901EDC();
  v4 = *(v0 + 120);
  sub_22C3876D8();
  if (v4 == 1)
  {
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_22C8B6964;
    v6 = *(v0 + 56);
    v7 = *(v0 + 48);

    return sub_22C8B6B84(v7, v6);
  }

  else
  {
    sub_22C90405C();
    v9 = sub_22C9063CC();
    v10 = sub_22C90AABC();
    if (sub_22C37B204(v10))
    {
      v11 = sub_22C36D240();
      sub_22C36C890(v11);
      sub_22C36BB14(&dword_22C366000, v12, v13, "Rules based response validation skipped via default ResponseGenerationRules being set to false");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v14 = sub_22C36BAFC();
    v15(v14);
    v16 = *(v0 + 40);
    *v16 = 1;
    *(v16 + 8) = 0x656661736E55;
    *(v16 + 16) = 0xE600000000000000;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;

    sub_22C369C50();

    return v17();
  }
}

uint64_t sub_22C8B6964()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 121) = v3 & 1;
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_22C8B6AB0()
{
  sub_22C36D5EC();
  if (*(v0 + 121) == 1)
  {
    v1 = *(v0 + 40);
    sub_22C38C56C();
    v6 = v2 & 0xFFFFFFFFFFFFLL | 0x203A000000000000;
    MEMORY[0x2318B7850]();
    *v1 = 0;
    *(v1 + 8) = 0x656661736E55;
    *(v1 + 16) = 0xE600000000000000;
    *(v1 + 24) = v6;
    *(v1 + 32) = 0xE800000000000000;
  }

  else
  {
    v3 = *(v0 + 40);
    *v3 = 1;
    *(v3 + 8) = 0x656661736E55;
    *(v3 + 16) = 0xE600000000000000;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
  }

  sub_22C369C50();

  return v4();
}

uint64_t sub_22C8B6B84(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_22C9063DC();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_22C9062DC();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_22C901C0C();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8B6D0C, 0, 0);
}

uint64_t sub_22C8B6D0C()
{
  sub_22C36D5EC();
  v1 = [objc_opt_self() processInfo];
  [v1 processIdentifier];

  sub_22C901BFC();
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_22C8B6E24;
  v3 = v0[19];
  v5 = v0[7];
  v4 = v0[8];

  return MEMORY[0x2821669B8](v5, v4, v3);
}

uint64_t sub_22C8B6E24()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  v8[21] = v6;
  v8[22] = v7;
  v8[23] = v0;

  v9 = sub_22C36BAFC();
  v10(v9);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C8B6F80()
{
  sub_22C36FB38();
  if (v0[21] == v0[7] && v0[22] == v0[8])
  {

    v3 = 0;
  }

  else
  {
    v2 = sub_22C90B4FC();

    v3 = v2 ^ 1;
  }

  v4 = v0[1];

  return v4(v3 & 1);
}

uint64_t sub_22C8B704C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C372634();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 184);
  *(v22 + 40) = v25;
  v26 = v25;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C36BBCC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((*(*(v22 + 120) + 88))(*(v22 + 128), *(v22 + 112)) != *MEMORY[0x277D0DBC8])
  {
    (*(*(v22 + 120) + 8))(*(v22 + 128), *(v22 + 112));
LABEL_7:
    v36 = *(v22 + 184);

    sub_22C90405C();
    v37 = v36;
    v38 = sub_22C9063CC();
    v39 = sub_22C90AADC();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v22 + 184);
    v43 = *(v22 + 88);
    v42 = *(v22 + 96);
    v44 = *(v22 + 80);
    if (v40)
    {
      a10 = *(v22 + 96);
      sub_22C36BED8();
      v45 = swift_slowAlloc();
      sub_22C370220();
      v46 = swift_slowAlloc();
      a11 = v46;
      *v45 = 136315138;
      swift_getErrorValue();
      v47 = sub_22C90B57C();
      v49 = sub_22C36F9F4(v47, v48, &a11);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_22C366000, v38, v39, "Sanitizer failed: %s", v45, 0xCu);
      sub_22C36FF94(v46);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v43 + 8))(a10, v44);
    }

    else
    {

      (*(v43 + 8))(v42, v44);
    }

    goto LABEL_10;
  }

  sub_22C90405C();
  v27 = sub_22C9063CC();
  v28 = sub_22C90AADC();
  if (sub_22C37B204(v28))
  {
    v29 = sub_22C36D240();
    sub_22C36C890(v29);
    sub_22C36BB14(&dword_22C366000, v30, v31, "Sanitizer threw GenerativeErrors.SanitizerError.sanitizerRejected");
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v32 = sub_22C36ECB4();
  v33(v32);
  v34 = sub_22C36BAFC();
  v35(v34);

LABEL_10:

  sub_22C36D5F8();

  return v52(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

unsigned __int8 *sub_22C8B7350(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v59 = a4;
  v10 = sub_22C90197C();
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C901BBC();
  MEMORY[0x28223BE20](v12 - 8);
  v57 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C3A5908(&qword_27D9BBDA8, &qword_22C911848);
  v55 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v17 = sub_22C3A5908(&qword_27D9BBBC0, &qword_22C92C1C0);
  MEMORY[0x28223BE20](v17 - 8);
  v56 = &v54 - v18;
  v19 = sub_22C901D7C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_22C909F0C();
  sub_22C901D6C();
  (*(v20 + 32))(v6 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime6UnsafeP33_A90434656D6BFE77F87FBA93378A99E611_ClientInfo_trackingConfig, v22, v19);
  v23 = sub_22C6054B8(0xD000000000000015, 0x800000022C939F40, a5);
  v25 = v24;

  v60 = a1;
  if (!v25)
  {
    goto LABEL_66;
  }

  v27 = HIBYTE(v25) & 0xF;
  v28 = v23 & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v29 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
LABEL_65:

LABEL_66:
    sub_22C90194C();
    sub_22C90122C();
    sub_22C90126C();
    (*(v55 + 8))(v16, v14);
    sub_22C90127C();
    sub_22C8C5F28(&qword_281435820, MEMORY[0x277D29CE0], MEMORY[0x277D29CD8]);
    sub_22C90125C();
    sub_22C90196C();
    sub_22C901BAC();
    *(v6 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime6UnsafeP33_A90434656D6BFE77F87FBA93378A99E611_ClientInfo__model) = sub_22C90191C();
    return v6;
  }

  if ((v25 & 0x1000000000000000) != 0)
  {
    sub_22C5C96C4(v23, v25, 10);
    goto LABEL_65;
  }

  if ((v25 & 0x2000000000000000) == 0)
  {
    if ((v23 & 0x1000000000000000) != 0)
    {
      result = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_22C90AFCC();
    }

    v30 = *result;
    if (v30 == 43)
    {
      if (v28 >= 1)
      {
        v27 = v28 - 1;
        if (v28 != 1)
        {
          v39 = 0;
          if (result)
          {
            v40 = result + 1;
            while (1)
            {
              v41 = *v40 - 48;
              if (v41 > 9)
              {
                goto LABEL_63;
              }

              v42 = 10 * v39;
              if ((v39 * 10) >> 64 != (10 * v39) >> 63)
              {
                goto LABEL_63;
              }

              v39 = v42 + v41;
              if (__OFADD__(v42, v41))
              {
                goto LABEL_63;
              }

              ++v40;
              if (!--v27)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_72;
    }

    if (v30 != 45)
    {
      if (v28)
      {
        v47 = 0;
        if (result)
        {
          while (1)
          {
            v48 = *result - 48;
            if (v48 > 9)
            {
              goto LABEL_63;
            }

            v49 = 10 * v47;
            if ((v47 * 10) >> 64 != (10 * v47) >> 63)
            {
              goto LABEL_63;
            }

            v47 = v49 + v48;
            if (__OFADD__(v49, v48))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v28)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      LOBYTE(v27) = 1;
      goto LABEL_64;
    }

    if (v28 >= 1)
    {
      v27 = v28 - 1;
      if (v28 != 1)
      {
        v31 = 0;
        if (result)
        {
          v32 = result + 1;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              goto LABEL_63;
            }

            v34 = 10 * v31;
            if ((v31 * 10) >> 64 != (10 * v31) >> 63)
            {
              goto LABEL_63;
            }

            v31 = v34 - v33;
            if (__OFSUB__(v34, v33))
            {
              goto LABEL_63;
            }

            ++v32;
            if (!--v27)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v27) = 0;
LABEL_64:
        v62 = v27;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v61[0] = v23;
  v61[1] = v25 & 0xFFFFFFFFFFFFFFLL;
  if (v23 != 43)
  {
    if (v23 != 45)
    {
      if (v27)
      {
        v50 = 0;
        v51 = v61;
        while (1)
        {
          v52 = *v51 - 48;
          if (v52 > 9)
          {
            break;
          }

          v53 = 10 * v50;
          if ((v50 * 10) >> 64 != (10 * v50) >> 63)
          {
            break;
          }

          v50 = v53 + v52;
          if (__OFADD__(v53, v52))
          {
            break;
          }

          ++v51;
          if (!--v27)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v27)
    {
      if (--v27)
      {
        v35 = 0;
        v36 = v61 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v35;
          if ((v35 * 10) >> 64 != (10 * v35) >> 63)
          {
            break;
          }

          v35 = v38 - v37;
          if (__OFSUB__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v27)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v27)
  {
    if (--v27)
    {
      v43 = 0;
      v44 = v61 + 1;
      while (1)
      {
        v45 = *v44 - 48;
        if (v45 > 9)
        {
          break;
        }

        v46 = 10 * v43;
        if ((v43 * 10) >> 64 != (10 * v43) >> 63)
        {
          break;
        }

        v43 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          break;
        }

        ++v44;
        if (!--v27)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_22C8B7A24()
{

  v1 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime6UnsafeP33_A90434656D6BFE77F87FBA93378A99E611_ClientInfo_trackingConfig;
  v2 = sub_22C901D7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_22C8B7A9C()
{
  sub_22C8B7A24();

  return swift_deallocClassInstance();
}

uint64_t sub_22C8B7AF0()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_22C8B7B24@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime6UnsafeP33_A90434656D6BFE77F87FBA93378A99E611_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = sub_22C901D7C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_22C8B7BB0(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime6UnsafeP33_A90434656D6BFE77F87FBA93378A99E611_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = sub_22C901D7C();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t Unsafe.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe_locale;
  sub_22C90077C();
  sub_22C369848();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime6Unsafe_sanitizer;
  sub_22C901C6C();
  sub_22C369848();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_22C8B7D80@<X0>(uint64_t *a1@<X8>)
{
  result = Unsafe.__allocating_init(_:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22C8B7DAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return Unsafe.validate(text:context:)();
}

void Ungrounded.init(_:)()
{
  sub_22C370030();
  sub_22C8C61D0();
  v58 = v1;
  v59 = v3;
  v4 = sub_22C90077C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v49 = v8;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v56 = v10;
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v61 = v11;
  sub_22C36BA0C();
  sub_22C90075C();
  sub_22C369824();
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C370654();
  v13 = sub_22C3A5908(&qword_27D9BBC00, &unk_22C911240);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  sub_22C36DCB8();
  *v18 = v17;
  v18[1] = 0xEA00000000006465;
  v19 = (v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_errorMessage);
  *v19 = 0;
  v19[1] = 0;
  v53 = v19;
  v54 = v18;
  v20 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_dialogValues;
  type metadata accessor for DialogValues(0);
  v55 = v20;
  sub_22C36A748();
  sub_22C36C640(v21, v22, v23, v24);
  v50 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_stopWords;
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_stopWords) = &unk_283FB05E0;
  v51 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_disambiguationAllowlist;
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_disambiguationAllowlist) = &unk_283FB0610;
  v52 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_binaryWords;
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_binaryWords) = &unk_283FB0650;
  v60 = v6;
  v25 = *(v6 + 16);
  v48 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_locale;
  v63 = v4;
  v25(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_locale, v2, v4);
  v62 = v2;
  sub_22C90076C();
  sub_22C90074C();
  v26 = sub_22C36FC2C();
  v27(v26);
  v28 = sub_22C9006FC();
  if (sub_22C370B74(v16, 1, v28) == 1)
  {
    sub_22C3AC228(v16, &qword_27D9BBC00, &unk_22C911240);
    sub_22C90405C();
    v29 = v49;
    v30 = v62;
    v25(v49, v62, v63);
    v31 = sub_22C9063CC();
    v32 = sub_22C90AADC();
    if (os_log_type_enabled(v31, v32))
    {
      sub_22C36BED8();
      v33 = swift_slowAlloc();
      v47 = v33;
      sub_22C370220();
      v58 = swift_slowAlloc();
      *v33 = 136315138;
      sub_22C8C5F28(&qword_281435838, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v34 = sub_22C90B47C();
      v35 = *(v60 + 8);
      v36 = sub_22C36ECB4();
      v35(v36);
      v37 = sub_22C37B9B0();
      sub_22C36F9F4(v37, v38, v39);
      sub_22C387194();
      v30 = v62;

      v40 = v47;
      *(v47 + 1) = v34;
      _os_log_impl(&dword_22C366000, v31, v32, "Cannot extract language code from %s", v40, 0xCu);
      sub_22C36FF94(v58);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    else
    {

      v35 = *(v60 + 8);
      (v35)(v29, v63);
    }

    (*(v56 + 8))(v61, v57);
    sub_22C8C2690();
    sub_22C37A198();
    swift_allocError();
    sub_22C37E248(v44, 1);
    v45 = v63;
    (v35)(v30, v63);
    (v35)(v0 + v48, v45);

    sub_22C3AC228(v0 + v55, &qword_27D9C1240, &qword_22C92CAD0);

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_22C9006EC();
    sub_22C36BBA8();
    (*(v41 + 8))(v16, v28);
    v42 = sub_22C90A0EC();

    v43 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
    *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_tokenizer) = v43;
    [v43 setLanguage_];

    (*(v60 + 8))(v62, v63);
  }

  sub_22C36FB20();
}

uint64_t Ungrounded.validate(text:context:)()
{
  sub_22C369980();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_22C9063DC();
  v1[13] = v6;
  sub_22C3699B8(v6);
  v1[14] = v7;
  v1[15] = sub_22C3699D4();
  v8 = type metadata accessor for ResponseGenerationPreferences(0);
  v1[16] = v8;
  sub_22C369914(v8);
  v1[17] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9C1240, &qword_22C92CAD0);
  sub_22C369914(v9);
  v1[18] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C8B85D8()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = (v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_errorMessage);
  *v4 = 0;
  v4[1] = 0;

  v5 = type metadata accessor for ResponseValidationContext(0);
  sub_22C8C26E4(v3 + *(v5 + 20), v1);
  v6 = type metadata accessor for DialogValues(0);
  sub_22C36C640(v1, 0, 1, v6);
  v7 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_dialogValues;
  swift_beginAccess();
  sub_22C8C273C(v1, v2 + v7);
  swift_endAccess();
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0(&qword_2814357B8);
  }

  v8 = sub_22C37AA60(*(v0 + 128), qword_281437588);
  sub_22C36CA70(v8, v0 + 40);
  sub_22C388B88();
  v9 = sub_22C36BA00();
  sub_22C8C26E4(v9, v10);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C901EDC();
  v11 = *(v0 + 152);
  sub_22C3876D8();
  if (v11 != 1)
  {
    sub_22C90405C();
    v16 = sub_22C9063CC();
    v17 = sub_22C90AABC();
    if (sub_22C37B204(v17))
    {
      v18 = sub_22C36D240();
      sub_22C36C890(v18);
      sub_22C36BB14(&dword_22C366000, v19, v20, "Validation skipped via default ResponseGenerationRules being set to false");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v21 = sub_22C36BAFC();
    v22(v21);
    goto LABEL_9;
  }

  v12 = *(sub_22C90804C() + 16);

  if (!v12 || (v14 = *(v0 + 72), v13 = *(v0 + 80), v15 = sub_22C90804C(), v29 = sub_22C8B8910(v14, v13, v15), , (v29 & 1) == 0))
  {
LABEL_9:
    v23 = *(v0 + 64);
    v24 = (*(v0 + 96) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_name);
    v26 = *v24;
    v25 = v24[1];
    *v23 = 1;
    *(v23 + 8) = v26;
    *(v23 + 16) = v25;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;

    goto LABEL_10;
  }

  v31 = *(v0 + 72);
  v30 = *(v0 + 80);
  v32 = *(v0 + 64);
  v33 = (*(v0 + 96) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_name);
  v35 = *v33;
  v34 = v33[1];

  sub_22C90AF5C();

  sub_22C36DCB8();
  v37 = v36;
  MEMORY[0x2318B7850](v31, v30);
  MEMORY[0x2318B7850](34, 0xE100000000000000);
  *v32 = 0;
  *(v32 + 8) = v35;
  *(v32 + 16) = v34;
  *(v32 + 24) = v37;
  *(v32 + 32) = 0xED000022203A6465;
LABEL_10:

  sub_22C369C50();

  return v27();
}

uint64_t sub_22C8B8910(void (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v98 = sub_22C9020CC();
  v104 = *(v98 - 8);
  MEMORY[0x28223BE20](v98 - 8);
  v97 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9093BC();
  v94 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v96 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v76 - v14);
  MEMORY[0x28223BE20](v13);
  v85 = &v76 - v16;
  v84 = sub_22C9029AC();
  v93 = *(v84 - 8);
  MEMORY[0x28223BE20](v84 - 8);
  v83 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22C902A4C();
  v103 = *(v79 - 8);
  MEMORY[0x28223BE20](v79 - 8);
  v78 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C9026BC();
  v100 = *(v19 - 8);
  v101 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_22C907DEC();
  v108 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22C906ECC();
  v107 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v3;
  sub_22C3A4108(a1, a2, *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_tokenizer));
  v112 = a1;
  v113 = a2;
  v25 = sub_22C90AA3C();
  v26 = *(v25 + 16);
  v99 = v10;
  v90 = v15;
  v102 = v21;
  v92 = v23;
  if (v26)
  {
    v95 = a3;
    v106 = v4;
    v114 = MEMORY[0x277D84F90];
    sub_22C3B800C(0);
    v27 = v114;
    v91 = v25;
    v28 = v25 + 40;
    do
    {
      v29 = sub_22C90A4AC();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v114 = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_22C3B800C(v36 > 1);
        v27 = v114;
      }

      v28 += 16;
      *(v27 + 16) = v37 + 1;
      v38 = (v27 + 32 * v37);
      v38[4] = v29;
      v38[5] = v31;
      v38[6] = v33;
      v38[7] = v35;
      --v26;
    }

    while (v26);

    v5 = v106;
    v10 = v99;
    v21 = v102;
    v23 = v92;
    a3 = v95;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v39 = *(a3 + 16);
  v40 = v101;
  if (!v39)
  {
LABEL_28:

    v73 = 0;
    return v73 & 1;
  }

  v113 = v27;
  v41 = *(sub_22C907C5C() - 8);
  v42 = a3 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v112 = (v107 + 8);
  ++v108;
  v106 = (v100 + 11);
  LODWORD(v107) = *MEMORY[0x277D1CBF0];
  LODWORD(v95) = *MEMORY[0x277D1CBA8];
  v89 = *MEMORY[0x277D1CBD0];
  v82 = *MEMORY[0x277D1CBD8];
  v91 = v100 + 1;
  v100 += 12;
  v77 = (v103 + 4);
  v76 = (v103 + 1);
  v81 = (v93 + 4);
  v103 = (v94 + 1);
  v80 = v93 + 1;
  v88 = *MEMORY[0x277D729B8];
  v87 = *MEMORY[0x277D72A58];
  v86 = (v94 + 13);
  v93 = (v104 + 8);
  v94 = (v104 + 32);
  v104 = *(v41 + 72);
  while (1)
  {
    v43 = v109;
    sub_22C907C0C();
    sub_22C906EBC();
    (*v112)(v43, v110);
    sub_22C907DAC();
    (*v108)(v23, v111);
    v44 = (*v106)(v21, v40);
    if (v44 == v107)
    {
      (*v100)(v21, v40);
      v45 = v97;
      v46 = v21;
      v47 = v98;
      (*v94)(v97, v46, v98);
      v48 = v96;
      sub_22C90207C();
      v49 = sub_22C8B9864(v113, v48);
      if (v5)
      {

        (*v103)(v48, v99);
        (*v93)(v45, v47);
        return v73 & 1;
      }

      v50 = v49;
      v51 = v48;
      v10 = v99;
      (*v103)(v51, v99);
      (*v93)(v45, v47);
      v40 = v101;
      v21 = v102;
      if (v50)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (v44 == v95)
    {
      v52 = sub_22C90931C();
      v53 = swift_allocBox();
      *v54 = 0;
      v54[1] = 0xE000000000000000;
      (*(*(v52 - 8) + 104))(v54, v88, v52);
      v55 = v5;
      v56 = v10;
      v57 = v90;
      *v90 = v53;
      (*v86)(v57, v87, v56);
      v58 = sub_22C8B9864(v113, v57);
      if (v55)
      {

        (*v103)(v57, v56);
        (*v91)(v21, v40);
        return v73 & 1;
      }

      v59 = v58;
      (*v103)(v57, v56);
      (*v91)(v21, v40);
      v10 = v56;
      v5 = 0;
      if (v59)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (v44 != v89)
    {
      break;
    }

    v60 = v10;
    (*v100)(v21, v40);
    v61 = v83;
    v62 = v21;
    v63 = v84;
    (*v81)(v83, v62, v84);
    v64 = v85;
    sub_22C90299C();
    v65 = sub_22C8B9864(v113, v64);
    if (v5)
    {

      (*v103)(v64, v60);
      v74 = &v113;
      goto LABEL_34;
    }

    v66 = v65;
    (*v103)(v64, v60);
    v67 = v61;
    v10 = v60;
    (*v80)(v67, v63);
    v40 = v101;
    v21 = v102;
    v23 = v92;
    if (v66)
    {
      goto LABEL_29;
    }

LABEL_27:
    v42 += v104;
    if (!--v39)
    {
      goto LABEL_28;
    }
  }

  if (v44 != v82)
  {
    (*v91)(v21, v40);
    goto LABEL_27;
  }

  v68 = v10;
  (*v100)(v21, v40);
  v61 = v78;
  v69 = v21;
  v63 = v79;
  (*v77)(v78, v69, v79);
  v70 = sub_22C902A3C();
  v71 = sub_22C8B9518(v113, v70);
  if (!v5)
  {
    v72 = v71;

    (*v76)(v61, v63);
    v21 = v102;
    v10 = v68;
    v23 = v92;
    if (v72)
    {
LABEL_29:

      v73 = 1;
      return v73 & 1;
    }

    goto LABEL_27;
  }

  v74 = &v109;
LABEL_34:
  (**(v74 - 32))(v61, v63);
  return v73 & 1;
}

uint64_t sub_22C8B9518(uint64_t result, uint64_t a2)
{
  v4 = a2;
  v33 = 0;
  v5 = 0;
  v6 = *(a2 + 16);
  v32 = (v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_errorMessage);
  v31 = ") before personal name (";
  v38 = result;
  v34 = (result + 56);
  v35 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_disambiguationAllowlist;
  v36 = v6;
  v37 = a2;
LABEL_2:
  v7 = v5;
  while (1)
  {
    if (v7 == v6)
    {
      return v33 & 1;
    }

    if (v7 >= v6)
    {
      break;
    }

    v8 = sub_22C9093BC();
    v10 = *(v8 - 8);
    result = v8 - 8;
    v9 = v10;
    v5 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_36;
    }

    result = sub_22C8B9C98(v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7);
    if (v3)
    {
      return v33 & 1;
    }

    v12 = v11;
    ++v7;
    if (v11)
    {
      v13 = result;
      v44 = result;
      v45 = v11;
      MEMORY[0x28223BE20](result);
      v30 = &v44;
      if (sub_22C5EC08C(sub_22C3AC11C, &v29, v14))
      {
LABEL_31:

        goto LABEL_2;
      }

      v44 = v13;
      v45 = v12;
      sub_22C3858B4();
      result = sub_22C90AD9C();
      v15 = *(v38 + 16);
      v46 = result;
      v16 = *(result + 16);
      v41 = v15 - v16;
      if ((v15 - v16) >= 0)
      {
        v17 = 0;
        v18 = (v46 + 56);
        v19 = v34;
        v43 = v5;
        v39 = v46 + 56;
        v40 = v16;
        while (1)
        {
          v20 = v18;
          v21 = v17;
          v42 = v19;
          if (!v16)
          {
            break;
          }

          while (1)
          {
            if (v21 >= v15)
            {
              __break(1u);
              goto LABEL_35;
            }

            result = *(v19 - 1);
            v22 = result == *(v20 - 1) && *v19 == *v20;
            v23 = v22 && *(v19 - 3) >> 16 == *(v20 - 3) >> 16;
            if (!v23 || *(v19 - 2) >> 16 != *(v20 - 2) >> 16)
            {
              LOBYTE(v30) = 0;
              result = sub_22C90B46C();
              if ((result & 1) == 0)
              {
                break;
              }
            }

            v19 += 4;
            --v16;
            ++v21;
            v20 += 4;
            if (!v16)
            {
              goto LABEL_30;
            }
          }

          v16 = v40;
          v5 = v43;
          if (v17 == v41)
          {
            goto LABEL_32;
          }

          v19 = v42 + 4;
          v25 = __OFADD__(v17++, 1);
          v18 = v39;
          if (v25)
          {
            goto LABEL_37;
          }
        }

LABEL_30:

        v4 = v37;
        v6 = v36;
        v5 = v43;
        goto LABEL_31;
      }

LABEL_32:

      v44 = 0;
      v45 = 0xE000000000000000;
      sub_22C90AF5C();
      MEMORY[0x2318B7850](0xD00000000000002BLL, v31 | 0x8000000000000000);
      MEMORY[0x2318B7850](v13, v12);

      MEMORY[0x2318B7850](0x206E692022, 0xE500000000000000);
      v26 = MEMORY[0x2318B7AD0](v38, MEMORY[0x277D83E40]);
      MEMORY[0x2318B7850](v26);

      v27 = v45;
      v28 = v32;
      *v32 = v44;
      v28[1] = v27;

      v33 = 1;
      v4 = v37;
      v6 = v36;
      goto LABEL_2;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_22C8B9864(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = sub_22C9093BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C8BA898(a2);
  v12 = result;
  v38 = 0;
  v13 = 0;
  v14 = *(result + 16);
  v49 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_binaryWords;
  v37 = (v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_errorMessage);
  v51 = v8 + 16;
  v52 = (v8 + 8);
  v53 = v14;
  v36 = "isambiguation alternative ";
  v41 = v2;
  v42 = a1;
  v39 = (a1 + 56);
  v40 = v7;
  v46 = v10;
  v47 = v8;
  v45 = result;
  while (1)
  {
    if (v13 == v53)
    {
      goto LABEL_32;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    (*(v8 + 16))(v10, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v7);
    v15 = sub_22C8B9C98(v10);
    if (v4)
    {
      (*v52)(v10, v7);
LABEL_32:

      return v38 & 1;
    }

    v17 = v16;
    v57 = v15;
    ++v13;
    result = (*v52)(v10, v7);
    if (v17)
    {
      v54 = v13;
      v18 = v57;
      v55 = v57;
      v56 = v17;
      MEMORY[0x28223BE20](result);
      v35 = &v55;
      if (sub_22C5EC08C(sub_22C457404, (&v36 - 4), v19))
      {
        goto LABEL_29;
      }

      v48 = 0;
      v55 = v18;
      v56 = v17;
      sub_22C3858B4();
      result = sub_22C90AD9C();
      v20 = *(v42 + 16);
      v50 = result;
      v21 = *(result + 16);
      v44 = v20 - v21;
      if ((v20 - v21) < 0)
      {
LABEL_30:

        v55 = 0;
        v56 = 0xE000000000000000;
        sub_22C90AF5C();

        v55 = 0x222065756C6156;
        v56 = 0xE700000000000000;
        MEMORY[0x2318B7850](v57, v17);

        MEMORY[0x2318B7850](0xD000000000000011, v36 | 0x8000000000000000);
        v32 = MEMORY[0x2318B7AD0](v42, MEMORY[0x277D83E40]);
        MEMORY[0x2318B7850](v32);

        v33 = v56;
        v34 = v37;
        *v37 = v55;
        v34[1] = v33;

        v38 = 1;
        v4 = v48;
        v7 = v40;
        v13 = v54;
      }

      else
      {
        v22 = 0;
        v23 = (v50 + 56);
        v24 = v39;
        v43 = v21;
        while (1)
        {
          v25 = v23;
          v26 = v22;
          v27 = v24;
          if (!v21)
          {
            break;
          }

          while (1)
          {
            if (v26 >= v20)
            {
              __break(1u);
              goto LABEL_34;
            }

            result = *(v27 - 1);
            v28 = result == *(v25 - 1) && *v27 == *v25;
            v29 = v28 && *(v27 - 3) >> 16 == *(v25 - 3) >> 16;
            if (!v29 || *(v27 - 2) >> 16 != *(v25 - 2) >> 16)
            {
              LOBYTE(v35) = 0;
              result = sub_22C90B46C();
              if ((result & 1) == 0)
              {
                break;
              }
            }

            v27 += 4;
            --v21;
            ++v26;
            v25 += 4;
            if (!v21)
            {
              goto LABEL_28;
            }
          }

          v12 = v45;
          v10 = v46;
          v8 = v47;
          v21 = v43;
          if (v22 == v44)
          {
            goto LABEL_30;
          }

          v24 += 4;
          if (__OFADD__(v22++, 1))
          {
            goto LABEL_35;
          }
        }

LABEL_28:

        v8 = v47;
        v4 = v48;
        v7 = v40;
        v12 = v45;
        v10 = v46;
LABEL_29:

        v13 = v54;
      }
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_22C8B9C98(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v87 = *(v2 - 8);
  v88 = v2;
  MEMORY[0x28223BE20](v2);
  v86 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22C90000C();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v74 - v5;
  v91 = sub_22C3A5908(&qword_27D9C1300, &unk_22C92CFF8);
  v81 = *(v91 - 8);
  v6 = MEMORY[0x28223BE20](v91);
  v80 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v74 - v8;
  v89 = type metadata accessor for DialogValues(0);
  MEMORY[0x28223BE20](v89);
  v83 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9093BC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v85 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v74 - v14;
  v16 = sub_22C90931C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v74 - v21;
  v84 = *(v11 + 16);
  v84(v15, a1, v10);
  if ((*(v11 + 88))(v15, v10) == *MEMORY[0x277D72A58])
  {
    (*(v11 + 96))(v15, v10);
    v23 = swift_projectBox();
    (*(v17 + 16))(v22, v23, v16);

    (*(v17 + 32))(v20, v22, v16);
    v24 = (*(v17 + 88))(v20, v16);
    v25 = a1;
    if (v24 != *MEMORY[0x277D72978])
    {
      v26 = v24;
      if (v24 == *MEMORY[0x277D729B8])
      {
        (*(v17 + 8))(v20, v16);
      }

      else
      {
        v63 = *MEMORY[0x277D72980];
        (*(v17 + 8))(v20, v16);
        v64 = v26 == v63;
        v25 = a1;
        if (!v64)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    (*(v11 + 8))(v15, v10);
    v25 = a1;
  }

  v27 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_dialogValues;
  v28 = v90;
  swift_beginAccess();
  if (sub_22C370B74(v28 + v27, 1, v89))
  {
    goto LABEL_7;
  }

  v41 = v83;
  sub_22C8C26E4(v28 + v27, v83);
  v42 = v100;
  sub_22C881B80(v25, v43, v44, v45, v46, v47, v48, v49, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  v51 = v50;
  v53 = v52;
  result = sub_22C8C5ED8();
  if (v42)
  {
    return v41;
  }

  v100 = 0;
  if (!v53)
  {
LABEL_7:
    v29 = v86;
    sub_22C90405C();
    v30 = v85;
    v84(v85, v25, v10);
    v31 = sub_22C9063CC();
    v32 = sub_22C90AADC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v29;
      v35 = swift_slowAlloc();
      v98 = v35;
      *v33 = 136642819;
      v36 = sub_22C90938C();
      v37 = v30;
      v39 = v38;
      (*(v11 + 8))(v37, v10);
      v40 = sub_22C36F9F4(v36, v39, &v98);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_22C366000, v31, v32, "Failed to get formatForDialog(%{sensitive}s)", v33, 0xCu);
      sub_22C36FF94(v35);
      MEMORY[0x2318B9880](v35, -1, -1);
      MEMORY[0x2318B9880](v33, -1, -1);

      (*(v87 + 8))(v34, v88);
    }

    else
    {

      (*(v11 + 8))(v30, v10);
      (*(v87 + 8))(v29, v88);
    }

    return 0;
  }

  v55 = 0;
  v98 = v51;
  v99 = v53;
  v56 = *(v28 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_stopWords);
  v90 = *(v56 + 16);
  v89 = (v81 + 8);
  v57 = (v56 + 40);
  v58 = v82;
  while (v90 != v55)
  {
    if (v55 >= *(v56 + 16))
    {
      __break(1u);
      return result;
    }

    v60 = *(v57 - 1);
    v59 = *v57;
    v96 = 25180;
    v97 = 0xE200000000000000;

    v41 = &v96;
    MEMORY[0x2318B7850](v60, v59);

    MEMORY[0x2318B7850](25180, 0xE200000000000000);
    v61 = v100;
    sub_22C9030EC();
    v100 = v61;
    if (v61)
    {
      goto LABEL_23;
    }

    ++v55;
    v96 = 32;
    v97 = 0xE100000000000000;
    sub_22C471D70();
    sub_22C471DC4();
    sub_22C439EB0(&qword_27D9C1308, &qword_27D9C1300, &unk_22C92CFF8);
    v62 = v91;
    sub_22C90A9EC();
    result = (*v89)(v58, v62);
    v57 += 2;
  }

  sub_22C3A5908(&qword_27D9BC320, &unk_22C92CFE0);
  v65 = v77;
  sub_22C90306C();
  sub_22C471D70();
  sub_22C471DC4();
  sub_22C439EB0(&qword_27D9BC318, &qword_27D9BC308, &qword_22C912668);
  v41 = &v98;
  v66 = v79;
  v67 = v100;
  sub_22C90A9DC();
  (*(v78 + 8))(v65, v66);
  v94 = v98;
  v95 = v99;
  v68 = v80;
  sub_22C9030EC();
  if (v67)
  {
LABEL_23:

    return v41;
  }

  v92 = 32;
  v93 = 0xE100000000000000;
  sub_22C439EB0(&qword_27D9C1308, &qword_27D9C1300, &unk_22C92CFF8);
  v69 = v91;
  sub_22C90AA0C();
  (*v89)(v68, v69);

  v94 = v96;
  v95 = v97;
  v70 = v74;
  sub_22C8FFFEC();
  sub_22C3858B4();
  v41 = sub_22C90AD3C();
  v72 = v71;
  (*(v75 + 8))(v70, v76);

  v73 = HIBYTE(v72) & 0xF;
  if ((v72 & 0x2000000000000000) == 0)
  {
    v73 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v73)
  {

    return 0;
  }

  return v41;
}

uint64_t sub_22C8BA7E4@<X0>(uint64_t *a1@<X8>)
{
  sub_22C3A5908(&qword_27D9BC310, &unk_22C92CFD0);
  sub_22C9030CC();

  v2 = MEMORY[0x2318B76D0]();
  v4 = v3;

  MEMORY[0x2318B7850](v2, v4);

  *a1 = 32;
  a1[1] = v6;
  return result;
}

uint64_t sub_22C8BA898(uint64_t a1)
{
  v2 = sub_22C9093BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90906C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 16);
  v10(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D729E0])
  {
    (*(v3 + 96))(v5, v2);
    v11 = swift_projectBox();
    (*(v7 + 16))(v9, v11, v6);

    v12 = sub_22C90905C();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
    v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_22C90F800;
    v10((v12 + v13), a1, v2);
  }

  return v12;
}

uint64_t Ungrounded.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_locale;
  sub_22C90077C();
  sub_22C369848();
  (*(v2 + 8))(v0 + v1);

  sub_22C3AC228(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10Ungrounded_dialogValues, &qword_27D9C1240, &qword_22C92CAD0);

  return v0;
}

uint64_t sub_22C8BABF8(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_22C8BAC78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Ungrounded.__allocating_init(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C8BACA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return Ungrounded.validate(text:context:)();
}

uint64_t sub_22C8BADC0(uint64_t a1, void (*a2)(uint64_t))
{
  sub_22C8C6114();
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

void BadGrammar.init(_:)()
{
  sub_22C370030();
  v2 = v0;
  v4 = v3;
  v5 = sub_22C90075C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C3A5908(&qword_27D9BBC00, &unk_22C911240);
  sub_22C369914(v12);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C370654();
  v14 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10BadGrammar_locale;
  v15 = sub_22C90077C();
  sub_22C3699C8();
  (*(v16 + 16))(v2 + v14, v4, v15);
  sub_22C90076C();
  sub_22C90074C();
  (*(v7 + 8))(v11, v5);
  v17 = sub_22C9006FC();
  if (sub_22C370B74(v1, 1, v17) == 1)
  {
    sub_22C3AC228(v1, &qword_27D9BBC00, &unk_22C911240);
  }

  else
  {
    sub_22C9006EC();
    sub_22C36BBA8();
    v18 = sub_22C36FC2C();
    v19(v18);
  }

  v20 = sub_22C90A0EC();

  *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10BadGrammar_language) = v20;
  if (qword_27D9BA7F8 != -1)
  {
    swift_once();
  }

  v21 = *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10BadGrammar_language);
  v22 = sub_22C8C193C();

  if ((v22 & 1) == 0)
  {
    sub_22C8C2690();
    sub_22C37A198();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }

  v23 = sub_22C36ECB4();
  v24(v23);
  sub_22C36FB20();
}

uint64_t BadGrammar.validate(text:context:)()
{
  sub_22C369980();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_22C9063DC();
  v1[9] = v5;
  sub_22C3699B8(v5);
  v1[10] = v6;
  v1[11] = sub_22C3699D4();
  v7 = type metadata accessor for ResponseGenerationPreferences(0);
  v1[12] = v7;
  sub_22C369914(v7);
  v1[13] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C8BB1AC()
{
  sub_22C8C27AC();
  if (qword_27D9BA7E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  v4 = sub_22C8BB460(v3);
  sub_22C3A4108(v2, v1, v4);
  v5 = sub_22C90ABBC();
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0(&qword_2814357B8);
  }

  v6 = *(v0 + 104);
  v7 = sub_22C37AA60(*(v0 + 96), qword_281437588);
  sub_22C36CA70(v7, v0 + 16);
  sub_22C388B88();
  sub_22C8C26E4(v7, v6);
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C901EDC();
  LODWORD(v7) = *(v0 + 112);
  sub_22C3876D8();
  if (v7 == 1)
  {
    sub_22C8BB4D8(*(v0 + 48), *(v0 + 56), v4, v5);
    v9 = v8;
    v11 = v10;

    if (v11)
    {
      v12 = *(v0 + 40);

      *v12 = 0;
      *(v12 + 8) = 0x6D61724720646142;
      *(v12 + 16) = 0xEB0000000072616DLL;
      *(v12 + 24) = v9;
      *(v12 + 32) = v11;
      goto LABEL_12;
    }
  }

  else
  {

    sub_22C90405C();
    v13 = sub_22C9063CC();
    v14 = sub_22C90AABC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = sub_22C36D240();
      *v15 = 0;
      _os_log_impl(&dword_22C366000, v13, v14, "Rules based response validation skipped via default ResponseGenerationRules being set to false", v15, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 40);

  *v19 = 1;
  *(v19 + 8) = 0x6D61724720646142;
  *(v19 + 16) = 0xEB0000000072616DLL;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
LABEL_12:

  sub_22C369A24();

  return v20();
}

id sub_22C8BB460(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  v2 = sub_22C90A5DC();

  v3 = [v1 initWithTagSchemes_];

  return v3;
}

void sub_22C8BB4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_22C46BD18(1, a4);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  sub_22C862EFC(1, a4);
  v176 = v10 >> 1;
  v173 = v11 >> 1;
  v171 = a4;
  v12 = a4 + 96;
  v13 = v6 + 24 * v8 + 16;
  v16 = v14 + 24 * v15 + 8;
  v17 = 2;
  v177 = v8;
  v178 = v8 - (v10 >> 1);
  v174 = v15;
  v175 = v15 - (v11 >> 1);
  while (1)
  {
    if (v178 + v17 == 2)
    {
LABEL_136:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    v18 = v17 - 2;
    if (v17 - 2 + v177 >= v176)
    {
      break;
    }

    if (v175 + v17 == 2)
    {
      goto LABEL_136;
    }

    if (v18 + v174 >= v173)
    {
      goto LABEL_138;
    }

    if (__OFADD__(v18, 1))
    {
      goto LABEL_139;
    }

    v172 = v17 - 2;
    v19 = *(v13 - 16);
    v183 = v16;
    v184 = v13;
    v20 = *(v16 + 8);
    v186 = *(v16 - 8);
    v187 = v17;
    v188 = v186;
    v185 = v19;
    v189 = v19;
    v179 = sub_22C90A4AC();
    v180 = v21;
    v181 = v22;
    v182 = v23;
    v190 = sub_22C90A4AC();
    v191 = v24;
    v192 = v25;
    v193 = v26;
    v27 = sub_22C90A4AC();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = sub_22C90A4AC();
    if (v31 == v37 && v33 == v36 && v27 >> 16 == v34 >> 16 && v29 >> 16 == v35 >> 16)
    {
    }

    else
    {
      v41 = sub_22C90B46C();

      if ((v41 & 1) == 0)
      {
        v43 = v187;
        v42 = v188;
        v44 = v193;
        goto LABEL_21;
      }
    }

    sub_22C90AF5C();

    v194[0] = 0x6465746165706572;
    v194[1] = 0xEF206E656B6F7420;
    v44 = v193;
    v45 = MEMORY[0x2318B76D0](v190, v191, v192, v193);
    MEMORY[0x2318B7850](v45);

    v43 = v187;
    v42 = v188;
LABEL_21:
    v46 = v189;
    if (!v185)
    {

      goto LABEL_104;
    }

    v47 = sub_22C90A11C();
    v49 = v48;
    if (v47 == sub_22C90A11C() && v49 == v50)
    {
      v55 = v189;
      v56 = v42;

      if (!v186)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v52 = sub_22C90B4FC();
      v53 = v189;
      v54 = v42;

      v44 = v193;

      if ((v52 & 1) == 0 || !v186)
      {
        goto LABEL_36;
      }
    }

    v57 = sub_22C90A11C();
    v59 = v58;
    if (v57 == sub_22C90A11C() && v59 == v60)
    {

LABEL_57:

      sub_22C90AF5C();

      strcpy(v194, "determiner (");
      BYTE5(v194[1]) = 0;
      HIWORD(v194[1]) = -5120;
      v81 = MEMORY[0x2318B76D0](v179, v180, v181, v182);
      v82 = v42;
      v84 = v83;

      MEMORY[0x2318B7850](v81, v84);

      v85 = 0xD000000000000018;
      v86 = "two consecutive determiners: ";
      goto LABEL_102;
    }

    v62 = sub_22C90B4FC();

    if (v62)
    {
      goto LABEL_57;
    }

LABEL_36:
    v63 = sub_22C90A11C();
    v65 = v64;
    if (v63 == sub_22C90A11C() && v65 == v66)
    {

      if (!v186)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v68 = sub_22C90B4FC();

      if ((v68 & 1) == 0 || !v186)
      {
        goto LABEL_49;
      }
    }

    v69 = sub_22C90A11C();
    v71 = v70;
    if (v69 == sub_22C90A11C() && v71 == v72)
    {

LABEL_72:

      sub_22C90AF5C();

      v194[0] = 0xD00000000000001DLL;
      v194[1] = 0x800000022C939EB0;
      v99 = MEMORY[0x2318B76D0](v179, v180, v181, v182);
      v82 = v42;
      v101 = v100;

      MEMORY[0x2318B7850](v99, v101);

      v85 = 10272;
      v102 = 0xE200000000000000;
LABEL_103:
      MEMORY[0x2318B7850](v85, v102);
      v133 = MEMORY[0x2318B76D0](v190, v191, v192, v44);
      v135 = v134;

      MEMORY[0x2318B7850](v133, v135);

      MEMORY[0x2318B7850](41, 0xE100000000000000);

      goto LABEL_104;
    }

    v74 = sub_22C90B4FC();

    if (v74)
    {
      goto LABEL_72;
    }

LABEL_49:
    v75 = sub_22C90A11C();
    v77 = v76;
    if (v75 == sub_22C90A11C() && v77 == v78)
    {

      if (!v186)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v80 = sub_22C90B4FC();

      if ((v80 & 1) == 0 || !v186)
      {
        goto LABEL_64;
      }
    }

    v87 = sub_22C90A11C();
    v89 = v88;
    if (v87 == sub_22C90A11C() && v89 == v90)
    {

LABEL_87:

      v194[0] = 0;
      v194[1] = 0xE000000000000000;
      sub_22C90AF5C();
      MEMORY[0x2318B7850](0xD000000000000016, 0x800000022C939E70);
      v115 = MEMORY[0x2318B76D0](v179, v180, v181, v182);
      v82 = v42;
      v117 = v116;

      MEMORY[0x2318B7850](v115, v117);

      v85 = 0xD00000000000001ALL;
      v86 = "(possessive) pronoun (";
LABEL_102:
      v102 = v86 | 0x8000000000000000;
      goto LABEL_103;
    }

    v92 = sub_22C90B4FC();

    if (v92)
    {
      goto LABEL_87;
    }

LABEL_64:
    v93 = sub_22C90A11C();
    v95 = v94;
    if (v93 == sub_22C90A11C() && v95 == v96)
    {

      if (!v186)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v98 = sub_22C90B4FC();

      if ((v98 & 1) == 0 || !v186)
      {
        goto LABEL_79;
      }
    }

    v103 = sub_22C90A11C();
    v105 = v104;
    if (v103 == sub_22C90A11C() && v105 == v106)
    {

LABEL_101:

      v194[0] = 0;
      v194[1] = 0xE000000000000000;
      sub_22C90AF5C();
      MEMORY[0x2318B7850](0x6E696D7265746564, 0xEC00000028207265);
      v130 = MEMORY[0x2318B76D0](v179, v180, v181, v182);
      v82 = v42;
      v132 = v131;

      MEMORY[0x2318B7850](v130, v132);

      v85 = 0xD000000000000024;
      v86 = "ssessive singular name (";
      goto LABEL_102;
    }

    v108 = sub_22C90B4FC();

    if (v108)
    {
      goto LABEL_101;
    }

LABEL_79:
    v109 = sub_22C90A11C();
    v111 = v110;
    if (v109 == sub_22C90A11C() && v111 == v112)
    {

      if (!v186)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v114 = sub_22C90B4FC();

      if ((v114 & 1) == 0 || !v186)
      {
        goto LABEL_94;
      }
    }

    v118 = sub_22C90A11C();
    v120 = v119;
    if (v118 == sub_22C90A11C() && v120 == v121)
    {

LABEL_114:

      goto LABEL_117;
    }

    v123 = sub_22C90B4FC();

    if (v123)
    {
      goto LABEL_114;
    }

LABEL_94:
    v124 = sub_22C90A11C();
    v126 = v125;
    if (v124 == sub_22C90A11C() && v126 == v127)
    {
    }

    else
    {
      v129 = sub_22C90B4FC();
      v46 = v189;

      if ((v129 & 1) == 0)
      {

LABEL_130:
        goto LABEL_104;
      }
    }

    if (!v186)
    {

      goto LABEL_104;
    }

    v136 = sub_22C90A11C();
    v138 = v137;
    v140 = v136 == sub_22C90A11C() && v138 == v139;
    v46 = v189;
    if (v140)
    {
      v143 = v42;
    }

    else
    {
      v141 = sub_22C90B4FC();
      v142 = v42;

      if ((v141 & 1) == 0)
      {

        goto LABEL_130;
      }
    }

LABEL_117:
    v144 = sub_22C90ABAC();
    if (!v144)
    {

      goto LABEL_130;
    }

    v145 = v144;
    v146 = sub_22C90A11C();
    v148 = sub_22C5C9C48(v146, v147, v190, v191, v192, v44);

    if ((v148 & 1) == 0)
    {
      goto LABEL_129;
    }

    v149 = *(v171 + 16);
    if (v172 >= (v149 - 2))
    {
      goto LABEL_129;
    }

    if (v43 >= v149)
    {
      goto LABEL_140;
    }

    v150 = *(v12 - 16);
    if (!v150)
    {
LABEL_129:

      goto LABEL_130;
    }

    v151 = *(v12 - 8);
    v152 = sub_22C90A11C();
    v154 = v153;
    if (v152 == sub_22C90A11C() && v154 == v155)
    {
      v159 = v150;
    }

    else
    {
      v157 = sub_22C90B4FC();
      v158 = v150;

      if ((v157 & 1) == 0)
      {

        goto LABEL_104;
      }
    }

    if ((v151 ^ v20) >> 14 || (v160 = sub_22C90A4AC(), v164 = sub_22C8C4F74(v160, v161, v162, v163, 29479, 0xE200000000000000), , (v164 & 1) == 0))
    {
    }

    else
    {

      v194[0] = 0;
      v194[1] = 0xE000000000000000;
      sub_22C90AF5C();
      MEMORY[0x2318B7850](0x6E696D7265746564, 0xEC00000028207265);
      v165 = MEMORY[0x2318B76D0](v179, v180, v181, v182);
      v167 = v166;

      MEMORY[0x2318B7850](v165, v167);

      MEMORY[0x2318B7850](0xD000000000000028, 0x800000022C939E10);
      v168 = MEMORY[0x2318B76D0](v190, v191, v192, v193);
      v170 = v169;

      MEMORY[0x2318B7850](v168, v170);

      MEMORY[0x2318B7850](41, 0xE100000000000000);
    }

LABEL_104:
    v17 = v43 + 1;
    v12 += 24;
    v13 = v184 + 24;
    v16 = v183 + 24;
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

uint64_t BadGrammar.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10BadGrammar_locale;
  sub_22C90077C();
  sub_22C369848();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t BadGrammar.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime10BadGrammar_locale;
  sub_22C90077C();
  sub_22C369848();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_22C8BC604@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BadGrammar.__allocating_init(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C8BC630()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C588ED8;

  return BadGrammar.validate(text:context:)();
}

void sub_22C8BC6E4()
{
  sub_22C36BA7C();
  v75 = v0;
  v80 = v1;
  v3 = v2;
  v5 = v4;
  v79 = sub_22C3A5908(&qword_27D9BC310, &unk_22C92CFD0);
  sub_22C369824();
  v7 = v6;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  v11 = sub_22C3A5908(&qword_27D9BC308, &qword_22C912668);
  sub_22C369824();
  v13 = v12;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v16 = &v69 - v15;
  sub_22C3A5908(&qword_27D9BC320, &unk_22C92CFE0);
  sub_22C90306C();
  v81 = v5;
  v82 = v3;
  v83 = v5;
  v84 = v3;
  sub_22C3ECFB8();
  sub_22C439EB0(&qword_27D9BC318, &qword_27D9BC308, &qword_22C912668);
  v73 = v16;
  v17 = sub_22C90A03C();
  v18 = v17;
  v19 = *(v17 + 16);
  if (!v19)
  {
    v74 = MEMORY[0x277D84F90];
LABEL_45:

LABEL_47:
    (*(v13 + 8))(v73, v11);
    goto LABEL_48;
  }

  v20 = 0;
  v78 = v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v76 = v7 + 8;
  v77 = v7 + 16;
  v69 = v19 - 1;
  v74 = MEMORY[0x277D84F90];
  v71 = v13;
  v72 = v11;
LABEL_3:
  v21 = 0;
  v22 = v20;
LABEL_4:
  v70 = v21;
  v23 = 0;
  do
  {
    if (v22 >= *(v18 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v24 = v79;
    (*(v7 + 16))(v10, v78 + *(v7 + 72) * v22, v79);
    sub_22C9030BC();
    (*(v7 + 8))(v10, v24);
    sub_22C36BA00();
    v25 = sub_22C90A4AC();
    MEMORY[0x2318B76D0](v25);

    v26 = sub_22C90A1BC();
    v28 = v27;
    v29 = v80;

    if (*(v29 + 16) && (v30 = sub_22C36E2BC(v26, v28), (v31 & 1) != 0))
    {
      v32 = v30;

      v33 = *(*(v29 + 56) + 8 * v32);
      v34 = __OFADD__(v23, v33);
      v23 += v33;
      if (v34)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v35 = v26 == 0x646572646E7568 && v28 == 0xE700000000000000;
      if (!v35 && (sub_22C90B4FC() & 1) == 0)
      {
        if (*(v75 + 16))
        {
          v37 = sub_22C36E2BC(v26, v28);
          v39 = v38;

          if (v39)
          {
            v40 = *(*(v75 + 56) + 8 * v37);
            v41 = v23 * v40;
            if ((v23 * v40) >> 64 != (v23 * v40) >> 63)
            {
              goto LABEL_56;
            }

            v21 = v70 + v41;
            if (__OFADD__(v70, v41))
            {
              goto LABEL_57;
            }

            v35 = v69 == v22++;
            if (!v35)
            {
              goto LABEL_4;
            }

LABEL_52:
            v13 = v71;
            v11 = v72;
            goto LABEL_45;
          }
        }

        else
        {
        }

        if (v23 < 1)
        {
          goto LABEL_23;
        }

        v42 = v70 + v23;
        if (__OFADD__(v70, v23))
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          return;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_22C36D270();
          sub_22C590E18(v46, v47, v48, v49);
          v74 = v50;
        }

        v44 = *(v74 + 16);
        v43 = *(v74 + 24);
        if (v44 >= v43 >> 1)
        {
          v51 = sub_22C37090C(v43);
          sub_22C590E18(v51, v52, v53, v74);
          v74 = v54;
        }

        v20 = v22 + 1;
        v45 = v74;
        *(v74 + 16) = v44 + 1;
        *(v45 + 8 * v44 + 32) = v42;
        v35 = v69 == v22;
        v13 = v71;
        v11 = v72;
        if (v35)
        {
          goto LABEL_45;
        }

        goto LABEL_3;
      }

      v36 = (v23 * 100) >> 64;
      v23 *= 100;
      if (v36 != v23 >> 63)
      {
        goto LABEL_50;
      }
    }

LABEL_23:
    ++v22;
  }

  while (v19 != v22);

  if (v23 <= 0)
  {
    v13 = v71;
    v11 = v72;
    goto LABEL_47;
  }

  v55 = v71;
  v56 = v70 + v23;
  v57 = v72;
  if (__OFADD__(v70, v23))
  {
    __break(1u);
  }

  else
  {
    v22 = v74;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_41;
    }
  }

  v61 = sub_22C36D270();
  sub_22C590E18(v61, v62, v63, v22);
  v22 = v64;
LABEL_41:
  v58 = v73;
  v60 = *(v22 + 16);
  v59 = *(v22 + 24);
  if (v60 >= v59 >> 1)
  {
    v65 = sub_22C37090C(v59);
    sub_22C590E18(v65, v66, v67, v22);
    v22 = v68;
  }

  (*(v55 + 8))(v58, v57);
  *(v22 + 16) = v60 + 1;
  *(v22 + 8 * v60 + 32) = v56;
LABEL_48:
  sub_22C36CC48();
}

uint64_t SearchCountsMismatchRule.__allocating_init(_:)(uint64_t a1)
{
  swift_allocObject();
  sub_22C90077C();
  sub_22C369848();
  (*(v2 + 8))(a1);
  return sub_22C3884C8();
}

uint64_t SearchCountsMismatchRule.init(_:)(uint64_t a1)
{
  sub_22C90077C();
  sub_22C369848();
  (*(v2 + 8))(a1);
  return sub_22C3884C8();
}

uint64_t SearchCountsMismatchRule.validate(text:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C8BCD64()
{
  sub_22C36D5EC();
  sub_22C8BCE2C();
  v2 = v1;
  v5 = !*(v1 + 16) || (v3 = sub_22C8BDA48(), (v4 & 1) != 0) || sub_22C8B5594(v3, v2);
  v6 = v0[6];
  v7 = v0[2];

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  *v7 = v5;
  *(v7 + 8) = v9;
  *(v7 + 16) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v11 = v0[1];

  return v11();
}

void sub_22C8BCE2C()
{
  sub_22C36BA7C();
  sub_22C369A48();
  v2 = sub_22C90A17C();
  v3 = sub_22C369914(v2);
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v152 = v4;
  sub_22C36BA0C();
  v5 = sub_22C90277C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v155 = v9;
  v10 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C36CD40();
  v141 = sub_22C907DEC();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v140 = v15;
  sub_22C36BA0C();
  v139 = sub_22C906ECC();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C3698A8();
  v138 = v19;
  sub_22C36BA0C();
  v142 = sub_22C9026AC();
  sub_22C369824();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  v132 = v23;
  v137 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C369824();
  v25 = v24;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v26);
  v136 = v126 - v27;
  v28 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v28);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C370654();
  v151 = sub_22C907C5C();
  sub_22C369824();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_22C3698A8();
  v149 = v33;
  v34 = sub_22C90804C();
  v148 = *(v34 + 16);
  if (!v148)
  {
LABEL_115:

    sub_22C36CC48();
    return;
  }

  v35 = 0;
  v147 = v34 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v146 = v31 + 16;
  v135 = v25 + 8;
  v134 = v17 + 8;
  v133 = v13 + 8;
  v130 = v21 + 32;
  v156 = (v7 + 8);
  v126[1] = &v160 + 1;
  v129 = v21 + 8;
  v143 = (v31 + 8);
  v131 = MEMORY[0x277D84F90];
  v36 = v155;
  v37 = v151;
  v127 = v0;
  v150 = v1;
  v144 = v34;
  v145 = v31;
  v128 = v7 + 16;
  while (1)
  {
    if (v35 >= *(v34 + 16))
    {
      goto LABEL_117;
    }

    v38 = *(v31 + 72);
    v154 = v35;
    (*(v31 + 16))(v149, v147 + v38 * v35, v37);
    sub_22C907C3C();
    v39 = sub_22C908EAC();
    if (sub_22C370B74(v1, 1, v39) != 1)
    {
      break;
    }

    sub_22C3AC228(v1, &qword_27D9BC1E8, &qword_22C9123B0);
    v40 = sub_22C36EED4();
    v41(v40, v37);
LABEL_114:
    v35 = v154 + 1;
    v37 = v151;
    v34 = v144;
    v31 = v145;
    if (v154 + 1 == v148)
    {
      goto LABEL_115;
    }
  }

  v42 = sub_22C908E8C();
  v44 = v43;
  sub_22C36BBA8();
  (*(v45 + 8))(v1, v39);
  v160 = v42;
  v161 = v44;
  sub_22C90306C();
  sub_22C3ECFB8();
  sub_22C439EB0(&qword_27D9BC2F8, &qword_27D9BC170, &unk_22C912180);
  sub_22C90A01C();
  sub_22C36BA4C();
  v46 = sub_22C36FC2C();
  v47(v46);

  v48 = v138;
  sub_22C907C0C();
  v49 = v140;
  sub_22C906EBC();
  sub_22C36BA4C();
  v50(v48, v139);
  sub_22C907DDC();
  sub_22C36BA4C();
  v51(v49, v141);
  if (sub_22C370B74(v0, 1, v142) == 1)
  {
    v52 = sub_22C36EED4();
    v53(v52, v151);
    sub_22C3AC228(v0, &qword_27D9BF328, &qword_22C9225C0);
LABEL_113:
    v1 = v150;
    goto LABEL_114;
  }

  sub_22C36BA4C();
  v54 = sub_22C37B9B0();
  v56 = v55(v54);
  v57 = MEMORY[0x2318AFB10](v56);
  if (!v57)
  {
    sub_22C36BA4C();
    v122 = sub_22C36BBCC();
    v123(v122);
    v124 = sub_22C36EED4();
    v125(v124, v151);
    goto LABEL_113;
  }

  v1 = v150;
  v58 = v57;
  v158 = *(v57 + 16);
  if (!v158)
  {
LABEL_111:

    sub_22C36BA4C();
    v121(v132, v142);
    (*v143)(v149, v151);
    v0 = v127;
    goto LABEL_114;
  }

  v59 = 0;
  v157 = v57 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v153 = v57;
  while (v59 < *(v58 + 16))
  {
    (*(v7 + 16))(v36, v157 + *(v7 + 72) * v59, v5);
    sub_22C90275C();
    if (v60 >> 60 != 15)
    {
      sub_22C90A15C();
      sub_22C37493C();
      v62 = sub_22C90A13C();
      if (!v63)
      {
        v36 = v155;
        (*v156)(v155, v5);
        v71 = sub_22C37493C();
        sub_22C3C8114(v71, v72);
LABEL_30:
        v58 = v153;
        goto LABEL_31;
      }

      v64 = v62;
      v65 = v63;
      v66 = v7;
      v67 = v5;
      v69 = sub_22C90273C() == 0x726577736E61 && v68 == 0xE600000000000000;
      if (v69)
      {
      }

      else
      {
        v70 = sub_22C90B4FC();

        if ((v70 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v73 = v64 == 6647407 && v65 == 0xE300000000000000;
      if (v73 || (sub_22C6AF810(), (sub_22C90B4FC() & 1) != 0))
      {
LABEL_29:
        v36 = v155;
        v5 = v67;
        (*v156)(v155, v67);
        v74 = sub_22C37493C();
        sub_22C3C8114(v74, v75);

        v7 = v66;
        v1 = v150;
        goto LABEL_30;
      }

      v76 = HIBYTE(v65) & 0xF;
      v77 = v64 & 0xFFFFFFFFFFFFLL;
      if ((v65 & 0x2000000000000000) != 0)
      {
        v78 = HIBYTE(v65) & 0xF;
      }

      else
      {
        v78 = v64 & 0xFFFFFFFFFFFFLL;
      }

      v5 = v67;
      if (v78)
      {
        v7 = v66;
        if ((v65 & 0x1000000000000000) != 0)
        {
          v101 = sub_22C6AF810();
          v81 = sub_22C5C96C4(v101, v102, 10);
          v104 = v103;

          v1 = v150;
          if ((v104 & 1) == 0)
          {
LABEL_104:
            v105 = v131;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v113 = sub_22C36D270();
              sub_22C590E18(v113, v114, v115, v105);
              v105 = v116;
            }

            v107 = *(v105 + 16);
            v106 = *(v105 + 24);
            if (v107 >= v106 >> 1)
            {
              v117 = sub_22C37090C(v106);
              sub_22C590E18(v117, v118, v119, v105);
              v131 = v120;
            }

            else
            {
              v131 = v105;
            }

            v108 = sub_22C37493C();
            sub_22C3C8114(v108, v109);
            v110 = v155;
            (*v156)(v155, v5);
            v111 = v131;
            *(v131 + 16) = v107 + 1;
            v112 = v111 + 8 * v107;
            v36 = v110;
            *(v112 + 32) = v81;
            goto LABEL_30;
          }

          goto LABEL_100;
        }

        v1 = v150;
        if ((v65 & 0x2000000000000000) != 0)
        {
          v160 = v64;
          v161 = v65 & 0xFFFFFFFFFFFFFFLL;
          if (v64 == 43)
          {
            if (!v76)
            {
              goto LABEL_119;
            }

            if (v76 != 1)
            {
              while (1)
              {
                sub_22C38ACB0();
                if (!v69 & v82)
                {
                  break;
                }

                sub_22C38C2A4();
                if (!v69)
                {
                  break;
                }

                v81 = v91 + v90;
                if (__OFADD__(v91, v90))
                {
                  break;
                }

                sub_22C5CAA10();
                if (v69)
                {
                  goto LABEL_99;
                }
              }
            }
          }

          else if (v64 == 45)
          {
            if (!v76)
            {
              goto LABEL_120;
            }

            if (v76 != 1)
            {
              while (1)
              {
                sub_22C38ACB0();
                if (!v69 & v82)
                {
                  break;
                }

                sub_22C38C2A4();
                if (!v69)
                {
                  break;
                }

                v81 = v87 - v86;
                if (__OFSUB__(v87, v86))
                {
                  break;
                }

                sub_22C5CAA10();
                if (v69)
                {
                  goto LABEL_99;
                }
              }
            }
          }

          else if (v76)
          {
            while (1)
            {
              sub_22C38ACB0();
              if (!v69 & v82)
              {
                break;
              }

              sub_22C38C2A4();
              if (!v69)
              {
                break;
              }

              v81 = v95 + v94;
              if (__OFADD__(v95, v94))
              {
                break;
              }

              sub_22C5CAA10();
              if (v69)
              {
                goto LABEL_99;
              }
            }
          }
        }

        else
        {
          if ((v64 & 0x1000000000000000) != 0)
          {
            v79 = ((v65 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            sub_22C6AF810();
            v79 = sub_22C90AFCC();
          }

          v80 = *v79;
          if (v80 == 43)
          {
            if (v77 < 1)
            {
              goto LABEL_118;
            }

            if (v77 != 1)
            {
              v81 = 0;
              if (!v79)
              {
                goto LABEL_89;
              }

              while (1)
              {
                sub_22C38ACB0();
                if (!v69 & v82)
                {
                  break;
                }

                sub_22C38C2A4();
                if (!v69)
                {
                  break;
                }

                v81 = v89 + v88;
                if (__OFADD__(v89, v88))
                {
                  break;
                }

                sub_22C5CAA10();
                if (v69)
                {
                  goto LABEL_99;
                }
              }
            }
          }

          else if (v80 == 45)
          {
            if (v77 < 1)
            {
              goto LABEL_121;
            }

            if (v77 != 1)
            {
              v81 = 0;
              if (v79)
              {
                while (1)
                {
                  sub_22C38ACB0();
                  if (!v69 & v82)
                  {
                    goto LABEL_98;
                  }

                  sub_22C38C2A4();
                  if (!v69)
                  {
                    goto LABEL_98;
                  }

                  v81 = v84 - v83;
                  if (__OFSUB__(v84, v83))
                  {
                    goto LABEL_98;
                  }

                  sub_22C5CAA10();
                  if (v69)
                  {
                    goto LABEL_99;
                  }
                }
              }

LABEL_89:
              v85 = 0;
LABEL_99:
              v159 = v85;
              v96 = v85;

              if ((v96 & 1) == 0)
              {
                goto LABEL_104;
              }

LABEL_100:
              v97 = sub_22C37493C();
              sub_22C3C8114(v97, v98);
LABEL_101:
              v58 = v153;
              v36 = v155;
              v61 = v156;
              goto LABEL_14;
            }
          }

          else
          {
            if (!v77)
            {
              goto LABEL_98;
            }

            v81 = 0;
            if (!v79)
            {
              goto LABEL_89;
            }

            while (1)
            {
              v92 = *v79 - 48;
              if (v92 > 9)
              {
                break;
              }

              v93 = 10 * v81;
              if ((v81 * 10) >> 64 != (10 * v81) >> 63)
              {
                break;
              }

              v81 = v93 + v92;
              if (__OFADD__(v93, v92))
              {
                break;
              }

              ++v79;
              if (!--v77)
              {
                goto LABEL_89;
              }
            }
          }
        }

LABEL_98:
        v81 = 0;
        v85 = 1;
        goto LABEL_99;
      }

      v99 = sub_22C37493C();
      sub_22C3C8114(v99, v100);

      v7 = v66;
      v1 = v150;
      goto LABEL_101;
    }

    v61 = v156;
LABEL_14:
    (*v61)(v36, v5);
LABEL_31:
    if (++v59 == v158)
    {
      goto LABEL_111;
    }
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
}

uint64_t sub_22C8BDA48()
{
  sub_22C36986C();
  sub_22C909F0C();
  sub_22C909F0C();
  sub_22C36BBCC();
  sub_22C8BC6E4();
  v1 = v0;

  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SearchCountsMismatchRule.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22C8BDB94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SearchCountsMismatchRule.__allocating_init(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C8BDBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C8C6104;

  return SearchCountsMismatchRule.validate(text:context:)(a1, a2, a3, a4);
}

void ResponseGenerationResponseValidator.init(_:)()
{
  sub_22C370030();
  sub_22C8C61D0();
  v3 = sub_22C90077C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_locale;
  v11 = *(v5 + 16);
  v11(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_locale, v2, v3);
  v11(v9, v2, v3);
  type metadata accessor for ResponseValidationAssets();
  v12 = swift_allocObject();
  sub_22C8BFAE4(v9);
  if (v1)
  {
    v13 = *(v5 + 8);
    v14 = sub_22C36ECB4();
    v13(v14);
    (v13)(v0 + v10, v3);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = sub_22C36ECB4();
    v16(v15);
    *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_assets) = v12;
  }

  sub_22C36FB20();
}

uint64_t ResponseGenerationResponseValidator.__allocating_init()()
{
  v1 = sub_22C90077C();
  v2 = sub_22C369914(v1);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C9006AC();
  sub_22C8C6114();
  swift_allocObject();
  sub_22C387194();
  ResponseGenerationResponseValidator.init(_:)();
  return v0;
}

uint64_t ResponseGenerationResponseValidator.__allocating_init(locale:assets:)()
{
  sub_22C370250();
  sub_22C8C6114();
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_locale;
  sub_22C90077C();
  sub_22C36985C();
  (*(v4 + 32))(v2 + v3, v1);
  *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_assets) = v0;
  return v2;
}

uint64_t ResponseGenerationResponseValidator.init(locale:assets:)()
{
  sub_22C370250();
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_locale;
  sub_22C90077C();
  sub_22C36985C();
  (*(v4 + 32))(v1 + v3, v2);
  *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_assets) = v0;
  return v1;
}

uint64_t ResponseGenerationResponseValidator.ruleNames()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_assets) + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v26 = MEMORY[0x277D84F90];

    sub_22C3B5E2C(0, v2, 0, v4, v5, v6, v7);
    v3 = v26;
    v8 = v1 + 32;
    do
    {
      sub_22C378A4C(v8, v23);
      v9 = v24;
      v10 = v25;
      sub_22C374168(v23, v24);
      v11 = (*(v10 + 8))(v9, v10);
      v13 = v12;
      sub_22C36FF94(v23);
      v26 = v3;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = sub_22C369AB0(v14);
        sub_22C3B5E2C(v17, v15 + 1, 1, v18, v19, v20, v21);
        v3 = v26;
      }

      *(v3 + 16) = v15 + 1;
      v16 = v3 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v8 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void static ResponseGenerationResponseValidator.loadRules(locale:ruleNames:)()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C9063DC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v78 - v12;
  v14 = sub_22C90077C();
  v15 = MEMORY[0x28223BE20](v14);
  v78[2] = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v78[3] = v78 - v18;
  MEMORY[0x28223BE20](v17);
  v85 = v78 - v21;
  v22 = *(v1 + 16);
  if (v22)
  {
    v78[1] = v13;
    v88 = 0;
    v86 = v19 + 16;
    v83 = 0x800000022C939A70;
    v84 = (v6 + 8);
    v23 = (v1 + 40);
    v87 = MEMORY[0x277D84F90];
    *&v20 = 136315138;
    v79 = v20;
    v82 = xmmword_22C90F800;
    v80 = v14;
    while (1)
    {
      v89 = v22;
      isa = v23[-1].isa;
      v25 = v23->isa;
      sub_22C8C6124();
      v28 = isa == v27 && v25 == v26;
      if (v28 || (v29 = sub_22C37B13C(), (sub_22C3866EC(v29, v30) & 1) != 0))
      {
        v31 = sub_22C374660();
        v32(v31);
        v33 = type metadata accessor for BadGrammar(0);
        sub_22C8C6144();
        swift_allocObject();
        sub_22C8C61A4();
        v34 = v88;
        BadGrammar.init(_:)();
        if (!v34)
        {
          v88 = 0;

          v50 = &protocol witness table for BadGrammar;
LABEL_13:
          v91 = v33;
          v92 = v50;
          *&v90 = v1;
          sub_22C36C730(&v90, &v93);
          sub_22C378A4C(&v93, &v90);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C36D270();
            sub_22C597138();
            v87 = v76;
          }

          v1 = *(v87 + 16);
          v51 = *(v87 + 24);
          if (v1 >= v51 >> 1)
          {
            sub_22C37090C(v51);
            sub_22C597138();
            v87 = v77;
          }

          sub_22C36FF94(&v93);
          v52 = v87;
          *(v87 + 16) = v1 + 1;
          sub_22C36C730(&v90, v52 + 40 * v1 + 32);
          goto LABEL_18;
        }
      }

      else
      {
        sub_22C38C56C();
        v54 = isa == v53 && v25 == 0xE600000000000000;
        if (v54 || (v55 = sub_22C8B7D6C(), (sub_22C3866EC(v55, v56) & 1) != 0))
        {
          v57 = sub_22C374660();
          v58(v57);
          v33 = type metadata accessor for Unsafe(0);
          sub_22C8C6144();
          swift_allocObject();
          sub_22C8C61A4();
          v34 = v88;
          Unsafe.init(_:)();
          if (!v34)
          {
            v88 = 0;

            v50 = &protocol witness table for Unsafe;
            goto LABEL_13;
          }
        }

        else
        {
          sub_22C36DCB8();
          if (isa != v59 || v25 != 0xEA00000000006465)
          {
            v61 = sub_22C8C6150();
            if ((sub_22C3866EC(v61, v62) & 1) == 0)
            {

              sub_22C90405C();

              v1 = sub_22C9063CC();
              v65 = sub_22C90AADC();

              if (os_log_type_enabled(v1, v65))
              {
                sub_22C36BED8();
                v66 = swift_slowAlloc();
                sub_22C370220();
                v67 = swift_slowAlloc();
                v81 = v1;
                v1 = v67;
                *&v90 = v67;
                *v66 = v79;
                v68 = sub_22C441720();
                v71 = sub_22C36F9F4(v68, v69, v70);

                *(v66 + 4) = v71;
                v72 = v65;
                v73 = v81;
                _os_log_impl(&dword_22C366000, v81, v72, "Unknown rule: %s", v66, 0xCu);
                sub_22C36FF94(v1);
                sub_22C369B50();
                MEMORY[0x2318B9880]();
                sub_22C369B50();
                MEMORY[0x2318B9880]();
              }

              else
              {
              }

              v74 = sub_22C36ECB4();
              v75(v74);
              goto LABEL_18;
            }
          }

          v63 = sub_22C374660();
          v64(v63);
          v33 = type metadata accessor for Ungrounded(0);
          sub_22C8C6144();
          swift_allocObject();
          sub_22C8C61A4();
          v34 = v88;
          Ungrounded.init(_:)();
          if (!v34)
          {
            v88 = 0;

            v50 = &protocol witness table for Ungrounded;
            goto LABEL_13;
          }
        }
      }

      v88 = 0;
      sub_22C3A5908(&qword_27D9BAAE0, &qword_22C90D380);
      v35 = swift_allocObject();
      *(v35 + 16) = v82;
      v93 = 0;
      v94 = 0xE000000000000000;
      sub_22C90AF5C();

      v93 = 0xD000000000000016;
      v94 = v83;
      v36 = sub_22C441720();
      MEMORY[0x2318B7850](v36);
      v37 = v93;
      v38 = v94;
      *(v35 + 56) = MEMORY[0x277D837D0];
      *(v35 + 32) = v37;
      *(v35 + 40) = v38;
      sub_22C8C61E4(v35);

      sub_22C90405C();

      v1 = sub_22C9063CC();
      v39 = sub_22C90AADC();

      if (os_log_type_enabled(v1, v39))
      {
        sub_22C36BED8();
        v40 = swift_slowAlloc();
        v81 = v34;
        v41 = v4;
        v42 = v3;
        v43 = v40;
        sub_22C370220();
        v44 = v10;
        v45 = swift_slowAlloc();
        v93 = v45;
        *v43 = v79;
        v46 = sub_22C441720();
        v49 = sub_22C36F9F4(v46, v47, v48);

        *(v43 + 4) = v49;
        _os_log_impl(&dword_22C366000, v1, v39, "Failed to create rule %s", v43, 0xCu);
        sub_22C36FF94(v45);
        v10 = v44;
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v3 = v42;
        v4 = v41;
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        (*v84)(v44, v41);
      }

      else
      {

        (*v84)(v10, v4);
      }

LABEL_18:
      v23 += 2;
      v22 = (v89 - 1);
      if (v89 == 1)
      {
        goto LABEL_39;
      }
    }
  }

  v87 = MEMORY[0x277D84F90];
LABEL_39:
  sub_22C36CC48();
}

uint64_t ResponseGenerationResponseValidator.validation(text:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_22C36A77C();
}

uint64_t sub_22C8BE850()
{
  sub_22C36FB38();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_22C3A5908(&qword_27D9C1270, &qword_22C92CB28);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v4[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v4[2].i64[0] = v2;
  v4[2].i64[1] = v1;
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 64) = v5;
  *v5 = v6;
  v5[1] = sub_22C8BE95C;

  return MEMORY[0x282200740](v0 + 16, &type metadata for ResponseValidationResult, v3, 0, 0, &unk_22C92CB38, v4, &type metadata for ResponseValidationResult);
}

uint64_t sub_22C8BE95C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C8BEA7C()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C8BEAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[28] = a3;
  v6[29] = a4;
  v6[26] = a1;
  v6[27] = a2;
  v7 = sub_22C3A5908(&qword_27D9C12F0, &qword_22C92CFB0);
  v6[32] = v7;
  v6[33] = *(v7 - 8);
  v6[34] = swift_task_alloc();
  v8 = *(type metadata accessor for ResponseValidationContext(0) - 8);
  v6[35] = v8;
  v6[36] = *(v8 + 64);
  v6[37] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8BEC50, 0, 0);
}

uint64_t sub_22C8BEC50()
{
  v1 = *(*(*(v0 + 224) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_assets) + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = *(v0 + 280);
    v26 = **(v0 + 216);
    v3 = v1 + 32;
    v4 = sub_22C90A75C();

    do
    {
      v29 = v2;
      v5 = *(v0 + 304);
      v6 = *(v0 + 296);
      v8 = *(v0 + 240);
      v7 = *(v0 + 248);
      v9 = *(v0 + 232);
      sub_22C36A748();
      sub_22C36C640(v10, v11, v12, v4);
      v28 = v3;
      sub_22C378A4C(v3, v0 + 64);
      sub_22C8C26E4(v9, v6);
      v13 = v4;
      v14 = (*(v27 + 80) + 88) & ~*(v27 + 80);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      sub_22C36C730((v0 + 64), (v15 + 4));
      v15[9] = v8;
      v15[10] = v7;
      v16 = v15 + v14;
      v4 = v13;
      sub_22C8C5CFC(v6, v16);
      sub_22C3A7214();
      LODWORD(v5) = sub_22C370B74(v5, 1, v13);

      v17 = *(v0 + 304);
      if (v5 == 1)
      {
        sub_22C3AC228(*(v0 + 304), &qword_27D9BBB48, &qword_22C910F00);
      }

      else
      {
        sub_22C90A74C();
        (*(*(v13 - 8) + 8))(v17, v13);
      }

      if (v15[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_22C90A6DC();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      if (v20 | v18)
      {
        v21 = v0 + 144;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = v18;
        *(v0 + 168) = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v0 + 312);
      *(v0 + 176) = 1;
      *(v0 + 184) = v21;
      *(v0 + 192) = v26;
      swift_task_create();

      sub_22C3AC228(v22, &qword_27D9BBB48, &qword_22C910F00);
      v3 = v28 + 40;
      v2 = v29 - 1;
    }

    while (v29 != 1);
  }

  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C90A81C();
  *(v0 + 320) = MEMORY[0x277D84F90];
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 328) = v23;
  *v23 = v24;
  sub_22C3777BC(v23);
  sub_22C36BB08();

  return MEMORY[0x2822004E8]();
}

uint64_t sub_22C8BEFE8()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C8BF0E8()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = *(v0 + 16) & 1;
    *(v0 + 104) = *(v0 + 16) & 1;
    *(v0 + 112) = v2;
    *(v0 + 120) = v1;
    *(v0 + 128) = v3;
    v19 = v4;
    *(v0 + 136) = v4;

    sub_22C8BF800();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 320);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C36D270();
      sub_22C5971F8();
      v7 = v16;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_22C369AB0(v8);
      sub_22C5971F8();
      v7 = v17;
    }

    *(v7 + 16) = v9 + 1;
    v10 = v7 + 48 * v9;
    *(v10 + 32) = v5;
    *(v10 + 40) = v2;
    *(v10 + 48) = v1;
    *(v10 + 56) = v3;
    *(v10 + 64) = v19;
    *(v0 + 320) = v7;
    swift_task_alloc();
    sub_22C36CC90();
    *(v0 + 328) = v11;
    *v11 = v12;
    sub_22C3777BC(v11);
    sub_22C36BB08();

    return MEMORY[0x2822004E8]();
  }

  else
  {
    v13 = *(v0 + 320);
    v14 = *(v0 + 208);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    *v14 = v13;

    sub_22C369C50();

    return v15();
  }
}

uint64_t sub_22C8BF2EC()
{
  sub_22C36D5EC();
  (*(v0[33] + 8))(v0[34], v0[32]);

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C8BF394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  v8 = sub_22C909B2C();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8BF468, 0, 0);
}

uint64_t sub_22C8BF468()
{
  sub_22C36D5EC();
  v1 = v0[8];
  sub_22C909B1C();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = sub_22C36BBCC();
  sub_22C374168(v4, v5);
  sub_22C38B598(v3);
  v13 = (v6 + *v6);
  swift_task_alloc();
  sub_22C36CC90();
  v0[16] = v7;
  *v7 = v8;
  v7[1] = sub_22C8BF590;
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[9];

  return (v13)(v0 + 2, v11, v9, v10, v2, v3);
}

uint64_t sub_22C8BF590()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C8BF68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  v15 = *(v14 + 112);
  v16 = *(v14 + 96);
  v17 = *(v14 + 104);
  HIDWORD(a11) = *(v14 + 16);
  v18 = *(v14 + 32);
  v35 = *(v14 + 24);
  v19 = *(v14 + 40);
  v20 = *(v14 + 48);
  sub_22C909B1C();
  v21 = sub_22C909B0C();
  v22 = *(v17 + 8);
  v22(v15, v16);
  v23 = sub_22C909B0C();
  v24 = sub_22C36BAFC();
  result = (v22)(v24);
  if (v21 < v23)
  {
    __break(1u);
  }

  else
  {
    v26 = *(v14 + 56);
    *v26 = BYTE4(a11);
    *(v26 + 8) = v35;
    *(v26 + 16) = v18;
    *(v26 + 24) = v19;
    *(v26 + 32) = v20;
    *(v26 + 40) = v21 - v23;

    sub_22C369C50();
    sub_22C36D5F8();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v35, a11, a12, a13, a14);
  }

  return result;
}

uint64_t sub_22C8BF780()
{
  sub_22C369980();
  (*(v0[13] + 8))(v0[15], v0[12]);

  sub_22C369A24();

  return v1();
}

void sub_22C8BF800()
{
  sub_22C36BA7C();
  v1 = v0;
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  if ((*v1 & 1) == 0)
  {
    v3 = *(v1 + 24);
    sub_22C90405C();

    v4 = sub_22C9063CC();
    v5 = sub_22C90AADC();

    if (os_log_type_enabled(v4, v5))
    {
      swift_slowAlloc();
      sub_22C8C6188();
      *v3 = 136315394;
      v6 = sub_22C36FC2C();
      *(v3 + 4) = sub_22C36F9F4(v6, v7, v8);
      *(v3 + 12) = 2080;

      v9 = sub_22C36FC2C();
      v12 = sub_22C36F9F4(v9, v10, v11);

      *(v3 + 14) = v12;
      _os_log_impl(&dword_22C366000, v4, v5, "%s error: %s", v3, 0x16u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v13 = sub_22C36BBCC();
    v14(v13);
  }

  sub_22C36CC48();
}

uint64_t ResponseGenerationResponseValidator.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_locale;
  sub_22C90077C();
  sub_22C369848();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t ResponseGenerationResponseValidator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime35ResponseGenerationResponseValidator_locale;
  sub_22C90077C();
  sub_22C369848();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_22C8BFAE4(uint64_t a1)
{
  type metadata accessor for ResponseValidationAssets();
  sub_22C8BFBBC();
  if (v2)
  {
    sub_22C90077C();
    sub_22C369848();
    (*(v5 + 8))(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v6 = v4;
    sub_22C90077C();
    sub_22C369848();
    (*(v7 + 8))(a1);
    *(v1 + 16) = v6;
  }

  return v1;
}

void sub_22C8BFBBC()
{
  sub_22C370030();
  v122 = v0;
  v2 = v1;
  v129 = *MEMORY[0x277D85DE8];
  sub_22C9063DC();
  sub_22C369824();
  v123 = v4;
  v124 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v121 = (&v116 - v10);
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v120 = v11;
  v12 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v13 = sub_22C369914(v12);
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v116 - v18;
  v20 = sub_22C90046C();
  sub_22C369824();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_22C369ABC();
  v26 = v24 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v116 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v116 - v32;
  MEMORY[0x28223BE20](v31);
  sub_22C36BA64();
  v125 = v34;
  v119 = v2;
  sub_22C8C0FCC();
  sub_22C381514();
  if (sub_22C370B74(v35, v36, v37) == 1)
  {
    v38 = v22;
    sub_22C8C164C(v19);
    sub_22C381514();
    if (sub_22C370B74(v39, v40, v41) != 1)
    {
      sub_22C3AC228(v16, &qword_27D9BB138, &qword_22C90DB70);
    }
  }

  else
  {
    v38 = v22;
    (*(v22 + 32))(v19, v16, v20);
    sub_22C36C640(v19, 0, 1, v20);
  }

  sub_22C381514();
  if (sub_22C370B74(v42, v43, v44) == 1)
  {
    sub_22C3AC228(v19, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C8C5E40();
    sub_22C37A198();
    swift_allocError();
    *v45 = 0;
    swift_willThrow();
  }

  else
  {
    v46 = v38;
    v47 = v125;
    (*(v38 + 32))(v125, v19, v20);
    v48 = v122;
    v49 = sub_22C9004AC();
    if (v48)
    {

      sub_22C90405C();
      v51 = sub_22C441720();
      v52(v51);
      v53 = sub_22C9063CC();
      v54 = sub_22C90AADC();
      if (os_log_type_enabled(v53, v54))
      {
        sub_22C36BED8();
        v55 = v46;
        v56 = swift_slowAlloc();
        v121 = v56;
        sub_22C370220();
        v122 = swift_slowAlloc();
        *&v127 = v122;
        *v56 = 136315138;
        sub_22C36C5DC();
        sub_22C8C5F28(v57, v58, MEMORY[0x277CC9290]);
        LODWORD(v120) = v54;
        v59 = sub_22C90B47C();
        v61 = v60;
        v62 = *(v55 + 8);
        v62(v26, v20);
        v63 = sub_22C36F9F4(v59, v61, &v127);

        v64 = v121;
        *(v121 + 1) = v63;
        v65 = v62;
        _os_log_impl(&dword_22C366000, v53, v120, "Cannot load %s", v64, 0xCu);
        sub_22C36FF94(v122);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {

        v65 = *(v46 + 8);
        v65(v26, v20);
      }

      (*(v123 + 8))(v7, v124);
      sub_22C8C5E40();
      sub_22C37A198();
      swift_allocError();
      sub_22C37E248(v90, 1);
      v91 = sub_22C6AF810();
      (v65)(v91);
    }

    else
    {
      v122 = v38;
      v66 = v49;
      v67 = v50;
      v68 = objc_opt_self();
      v117 = v66;
      v118 = v67;
      v69 = sub_22C90050C();
      *&v127 = 0;
      v70 = [v68 propertyListWithData:v69 options:0 format:0 error:&v127];

      if (v70)
      {
        v71 = v127;
        sub_22C90ADDC();
        swift_unknownObjectRelease();
        v72 = sub_22C3A5908(&qword_27D9BAB50, &qword_22C90D3F0);
        if (sub_22C8C6204(v72, v73, v74, v72))
        {
          v121 = v126;
          v75 = v120;
          sub_22C90405C();
          v76 = v122;
          (v122[2])(v33, v47, v20);
          v77 = sub_22C9063CC();
          v78 = sub_22C90AABC();
          if (os_log_type_enabled(v77, v78))
          {
            sub_22C36BED8();
            v79 = swift_slowAlloc();
            v116 = v79;
            sub_22C370220();
            v80 = swift_slowAlloc();
            *&v127 = v80;
            *v79 = 136315138;
            sub_22C36C5DC();
            sub_22C8C5F28(v81, v82, MEMORY[0x277CC9290]);
            v83 = sub_22C90B47C();
            v84 = v76[1];
            v84(v33, v20);
            v85 = sub_22C37B9B0();
            sub_22C36F9F4(v85, v86, v87);
            sub_22C387194();

            v88 = v116;
            *(v116 + 1) = v83;
            _os_log_impl(&dword_22C366000, v77, v78, "Loading response validation rules from %s", v88, 0xCu);
            sub_22C36FF94(v80);
            sub_22C369B50();
            MEMORY[0x2318B9880]();
            sub_22C369B50();
            MEMORY[0x2318B9880]();

            v89 = v84;
            (*(v123 + 8))(v120, v124);
          }

          else
          {

            v89 = v76[1];
            v89(v33, v20);
            (*(v123 + 8))(v75, v124);
          }

          sub_22C605DE8(v121, &v127);

          if (v128)
          {
            v110 = sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
            if (sub_22C8C6204(v110, v111, v112, v110))
            {
              sub_22C8C06E4();
              sub_22C38B120(v117, v118);

              v113 = sub_22C8C61BC();
              (v89)(v113);
              goto LABEL_27;
            }
          }

          else
          {
            sub_22C3AC228(&v127, &qword_27D9BD5D8, &qword_22C918510);
          }

          sub_22C8C5E40();
          sub_22C37A198();
          swift_allocError();
          sub_22C37E248(v114, 3);
          sub_22C38B120(v117, v118);
          v115 = sub_22C8C61BC();
          (v89)(v115);
          goto LABEL_27;
        }
      }

      else
      {
        v92 = v127;
        sub_22C387194();
        v93 = sub_22C90030C();

        swift_willThrow();
      }

      v94 = v121;
      sub_22C90405C();
      v95 = v122;
      (v122[2])(v30, v47, v20);
      v96 = sub_22C9063CC();
      v97 = sub_22C90AADC();
      if (os_log_type_enabled(v96, v97))
      {
        sub_22C36BED8();
        v98 = v95;
        v99 = swift_slowAlloc();
        sub_22C370220();
        v120 = swift_slowAlloc();
        *&v127 = v120;
        *v99 = 136315138;
        sub_22C36C5DC();
        sub_22C8C5F28(v100, v101, MEMORY[0x277CC9290]);
        v102 = sub_22C90B47C();
        v104 = v103;
        v105 = v98[1];
        LODWORD(v122) = v97;
        v105(v30, v20);
        v106 = v105;
        v107 = sub_22C36F9F4(v102, v104, &v127);

        *(v99 + 4) = v107;
        _os_log_impl(&dword_22C366000, v96, v122, "Cannot read propery list from %s", v99, 0xCu);
        sub_22C36FF94(v120);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        (*(v123 + 8))(v121, v124);
      }

      else
      {

        v106 = v95[1];
        v106(v30, v20);
        (*(v123 + 8))(v94, v124);
      }

      sub_22C8C5E40();
      sub_22C37A198();
      swift_allocError();
      sub_22C37E248(v108, 2);
      sub_22C38B120(v117, v118);
      v109 = sub_22C6AF810();
      (v106)(v109);
    }
  }

LABEL_27:
  sub_22C36FB20();
}

uint64_t ResponseValidationAssets.__allocating_init(locale:ruleNames:)()
{
  sub_22C370250();
  v0 = swift_allocObject();
  ResponseValidationAssets.init(locale:ruleNames:)();
  return v0;
}

uint64_t ResponseValidationAssets.init(locale:ruleNames:)()
{
  sub_22C370250();
  type metadata accessor for ResponseValidationAssets();
  sub_22C8C06E4();
  v3 = v2;

  sub_22C90077C();
  sub_22C369848();
  (*(v4 + 8))(v1);
  *(v0 + 16) = v3;
  return v0;
}

void sub_22C8C06E4()
{
  sub_22C36BA7C();
  v0 = sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v1);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v2);
  sub_22C36BA64();
  v63 = v3;
  sub_22C36BA0C();
  sub_22C90077C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v5);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v6);
  sub_22C36BA64();
  v7 = sub_22C36BA0C();
  v8 = type metadata accessor for ResponseGenerationPreferences(v7);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;

  v70 = sub_22C3AD928(v13);
  if (qword_2814357B8 != -1)
  {
LABEL_41:
    sub_22C371ED0(&qword_2814357B8);
  }

  v14 = sub_22C37AA60(v8, qword_281437588);
  sub_22C36CA70(v14, &v69);
  sub_22C8C26E4(v14, v12);
  sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
  sub_22C901EDC();
  v15 = v68[0];
  sub_22C8C5ED8();
  v16 = sub_22C3AD928(v15);
  sub_22C8B5A44(v16);
  sub_22C8C26E4(v14, v12);
  sub_22C901EDC();
  v17 = v68[0];
  sub_22C8C5ED8();
  v18 = sub_22C3AD928(v17);
  v19 = &v70;
  sub_22C8C27F0(v18);

  v12 = 0;
  v20 = v70 + 56;
  v64 = v70;
  v21 = 1 << *(v70 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v8 = v22 & *(v70 + 56);
  v23 = (v21 + 63) >> 6;
  v60 = MEMORY[0x277D84F90];
  v61 = v23;
  v62 = v70 + 56;
LABEL_5:
  v24 = v63;
  if (v8)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_6:
    v25 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v25 >= v23)
    {
      break;
    }

    v8 = *(v20 + 8 * v25);
    ++v12;
    if (v8)
    {
      v12 = v25;
      while (1)
      {
LABEL_10:
        v26 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v27 = (*(v64 + 48) + ((v12 << 10) | (16 * v26)));
        v28 = *v27;
        v29 = v27[1];
        sub_22C8C6124();
        v32 = v28 == v31 && v29 == v30;
        if (v32 || (v33 = sub_22C37B13C(), (sub_22C8C616C(v33, v34) & 1) != 0))
        {
          sub_22C36BA4C();
          v35 = sub_22C36FF80();
          v36(v35);
          v37 = type metadata accessor for BadGrammar(0);
          sub_22C8C6144();
          swift_allocObject();
          sub_22C8C61A4();
          BadGrammar.init(_:)();

          v55 = &protocol witness table for BadGrammar;
          goto LABEL_34;
        }

        sub_22C38C56C();
        v39 = v28 == v38 && v29 == 0xE600000000000000;
        if (v39 || (v40 = sub_22C8B7D6C(), (sub_22C8C616C(v40, v41) & 1) != 0))
        {
          sub_22C36BA4C();
          v42 = sub_22C36FF80();
          v43(v42);
          v37 = type metadata accessor for Unsafe(0);
          sub_22C8C6144();
          swift_allocObject();
          sub_22C8C61A4();
          Unsafe.init(_:)();

          v55 = &protocol witness table for Unsafe;
          goto LABEL_34;
        }

        sub_22C36DCB8();
        if (v28 == v44 && v29 == 0xEA00000000006465)
        {
          break;
        }

        v46 = sub_22C8C6150();
        if (sub_22C8C616C(v46, v47))
        {
          break;
        }

        sub_22C90405C();

        v19 = sub_22C9063CC();
        v50 = sub_22C90AADC();

        if (os_log_type_enabled(v19, v50))
        {
          sub_22C36BED8();
          v51 = swift_slowAlloc();
          sub_22C370220();
          v52 = swift_slowAlloc();
          *&v65 = v52;
          *v51 = 136315138;
          v53 = sub_22C36F9F4(v28, v29, &v65);

          *(v51 + 4) = v53;
          _os_log_impl(&dword_22C366000, v19, v50, "Unknown rule: %s", v51, 0xCu);
          sub_22C36FF94(v52);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          v24 = v63;
          sub_22C369B50();
          MEMORY[0x2318B9880]();
        }

        else
        {
        }

        sub_22C36BA4C();
        v54(v24, v0);
        v23 = v61;
        v20 = v62;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      sub_22C36BA4C();
      v48 = sub_22C36FF80();
      v49(v48);
      v37 = type metadata accessor for Ungrounded(0);
      sub_22C8C6144();
      swift_allocObject();
      sub_22C8C61A4();
      Ungrounded.init(_:)();

      v55 = &protocol witness table for Ungrounded;
LABEL_34:
      v66 = v37;
      v67 = v55;
      *&v65 = v19;
      sub_22C36C730(&v65, v68);
      sub_22C378A4C(v68, &v65);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C597138();
        v60 = v58;
      }

      v57 = *(v60 + 16);
      v56 = *(v60 + 24);
      v19 = (v57 + 1);
      if (v57 >= v56 >> 1)
      {
        sub_22C369AB0(v56);
        sub_22C597138();
        v60 = v59;
      }

      sub_22C36FF94(v68);
      *(v60 + 16) = v19;
      sub_22C36C730(&v65, v60 + 40 * v57 + 32);
      v23 = v61;
      v20 = v62;
      goto LABEL_5;
    }
  }

  sub_22C36CC48();
}

void sub_22C8C0FCC()
{
  sub_22C36BA7C();
  v72 = v2;
  sub_22C9063DC();
  sub_22C369824();
  v64 = v4;
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v63 = v5;
  sub_22C36BA0C();
  sub_22C90035C();
  sub_22C369824();
  v61 = v7;
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v60 = v8;
  v9 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v9);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v71 = &v57 - v11;
  sub_22C36BA0C();
  v70 = sub_22C90046C();
  sub_22C369824();
  v59 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  v58 = v14;
  sub_22C36BA0C();
  v15 = sub_22C90070C();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  sub_22C370654();
  v19 = sub_22C901DDC();
  sub_22C369824();
  v21 = v20;
  v66 = v22;
  v67 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  sub_22C37B6BC();
  sub_22C90210C();
  sub_22C369824();
  v68 = v24;
  v69 = v23;
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v27 = v26 - v25;
  v28 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  v29 = sub_22C369914(v28);
  MEMORY[0x28223BE20](v29);
  sub_22C369ABC();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v57 - v34;
  sub_22C9020FC();
  (*(v21 + 104))(v0, *MEMORY[0x277D1C250], v19);
  (*(v17 + 104))(v1, *MEMORY[0x277CC9668], v15);
  sub_22C9006BC();
  sub_22C9006CC();

  (*(v17 + 8))(v1, v15);
  sub_22C9020EC();

  (*(v67 + 8))(v0, v66);
  (*(v68 + 8))(v27, v69);
  sub_22C37493C();
  sub_22C3A7214();
  v36 = sub_22C902D7C();
  sub_22C381514();
  if (sub_22C370B74(v37, v38, v39) == 1)
  {
    sub_22C3AC228(v32, &qword_27D9BD698, &qword_22C9187B0);
    v41 = v70;
    v40 = v71;
    sub_22C36A748();
    sub_22C36C640(v42, v43, v44, v41);
  }

  else
  {
    v40 = v71;
    sub_22C902D5C();
    sub_22C36BBA8();
    (*(v45 + 8))(v32, v36);
    v41 = v70;
    if (sub_22C370B74(v40, 1, v70) != 1)
    {
      (*(v59 + 32))(v58, v40, v41);
      v73 = 0xD00000000000002ALL;
      v74 = 0x800000022C939DE0;
      v53 = v60;
      v52 = v61;
      v54 = v62;
      (*(v61 + 104))(v60, *MEMORY[0x277CC91D8], v62);
      sub_22C3858B4();
      v51 = v72;
      sub_22C90043C();
      (*(v52 + 8))(v53, v54);
      v55 = sub_22C37B9B0();
      v56(v55);
      sub_22C3AC228(v35, &qword_27D9BD698, &qword_22C9187B0);
      v50 = 0;
      goto LABEL_8;
    }
  }

  sub_22C3AC228(v40, &qword_27D9BB138, &qword_22C90DB70);
  v46 = v63;
  sub_22C90405C();
  v47 = sub_22C9063CC();
  v48 = sub_22C90AABC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = sub_22C36D240();
    sub_22C36C890(v49);
    _os_log_impl(&dword_22C366000, v47, v48, "ResponseValidation OTA assets not available, will use built in asset.", v40, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v64 + 8))(v46, v65);
  sub_22C3AC228(v35, &qword_27D9BD698, &qword_22C9187B0);
  v50 = 1;
  v51 = v72;
LABEL_8:
  sub_22C36C640(v51, v50, 1, v41);
  sub_22C36CC48();
}

uint64_t sub_22C8C164C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C9063DC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  type metadata accessor for ResponseValidationAssets();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_22C8C4FE8(0xD000000000000024, 0x800000022C939DB0, 0x7473696C70, 0xE500000000000000, v10);

  if (v11)
  {
    sub_22C9003DC();

    v12 = sub_22C90046C();

    return sub_22C36C640(a1, 0, 1, v12);
  }

  else
  {
    sub_22C90405C();
    v14 = sub_22C9063CC();
    v15 = sub_22C90AADC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_22C36D240();
      *v16 = 0;
      _os_log_impl(&dword_22C366000, v14, v15, "Failed to load built in ResponseGenerationResponseValidation.plist", v16, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v4 + 8))(v8, v2);
    sub_22C90046C();
    sub_22C36A748();
    return sub_22C36C640(v17, v18, v19, v20);
  }
}

id sub_22C8C1874(uint64_t a1, uint64_t *a2)
{
  sub_22C3A5908(&qword_27D9BE348, &qword_22C92CFF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22C90F870;
  v4 = *MEMORY[0x277CD8970];
  v8 = *MEMORY[0x277CD8958];
  v5 = *MEMORY[0x277CD8958];
  *(v3 + 32) = *MEMORY[0x277CD8970];
  *(v3 + 40) = v5;
  *a2 = v3;
  v6 = v4;

  return v8;
}

uint64_t sub_22C8C1904()
{
  type metadata accessor for NLTaggerAssets();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84FA0];
  qword_27D9E40C8 = result;
  return result;
}

uint64_t sub_22C8C1BC8()
{
  sub_22C36986C();
  v2 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  sub_22C37B6BC();
  sub_22C90A75C();
  sub_22C36A748();
  sub_22C36C640(v4, v5, v6, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v0;
  v9 = v1;
  v10 = v0;
  sub_22C5809B8();
}

uint64_t sub_22C8C1C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = sub_22C9063DC();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8C1D74, 0, 0);
}

uint64_t sub_22C8C1D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22C372634();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[19];
  v26 = v22[20];
  sub_22C90405C();
  v27 = v25;
  v28 = v26;
  v29 = sub_22C9063CC();
  v30 = sub_22C90AAFC();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v22[25];
  v34 = v22[21];
  v33 = v22[22];
  if (v31)
  {
    swift_slowAlloc();
    a11 = sub_22C8C6188();
    *v32 = 136315394;
    v35 = sub_22C90A11C();
    sub_22C36F9F4(v35, v36, &a11);

    v37 = sub_22C8C6224();
    v39 = sub_22C36F9F4(v37, v38, &a11);

    *(v32 + 14) = v39;
    _os_log_impl(&dword_22C366000, v29, v30, "Missing NL asset %s/%s", v32, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v40 = *(v33 + 8);
  v40(v32, v34);
  v22[26] = v40;
  v42 = v22[19];
  v41 = v22[20];
  v43 = objc_opt_self();
  v22[2] = v22;
  v22[7] = v22 + 18;
  v22[3] = sub_22C8C1FE4;
  v44 = swift_continuation_init();
  v22[17] = sub_22C3A5908(&qword_27D9C12E8, &unk_22C92CFA0);
  v22[10] = MEMORY[0x277D85DD0];
  v22[11] = 1107296256;
  v22[12] = sub_22C8C2560;
  v22[13] = &unk_283FC3688;
  v22[14] = v44;
  [v43 requestAssetsForLanguage:v42 tagScheme:v41 completionHandler:v22 + 10];
  sub_22C36D5F8();

  return MEMORY[0x282200938](v45);
}

uint64_t sub_22C8C1FE4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8C20E4(uint64_t a1)
{
  v21 = v1;
  v2 = v1[19];
  v3 = v1[20];
  v4 = v1[18];
  sub_22C90405C();
  v5 = v2;
  v6 = v3;
  v7 = sub_22C9063CC();
  v8 = sub_22C90AADC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[26];
  v11 = v1[24];
  v12 = v1[21];
  if (v9)
  {
    sub_22C370220();
    swift_slowAlloc();
    v20 = sub_22C8C6188();
    *v10 = 136315650;
    v13 = sub_22C90A11C();
    sub_22C36F9F4(v13, v14, &v20);

    v15 = sub_22C8C6224();
    v17 = sub_22C36F9F4(v15, v16, &v20);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2048;
    *(v10 + 24) = v4;
    _os_log_impl(&dword_22C366000, v7, v8, "NLTagger.requestedAsset(%s, %s) -> %ld", v10, 0x20u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (v10)(v11, v12);
  }

  else
  {

    (v10)(v11, v12);
  }

  sub_22C369A24();

  return v18();
}

uint64_t sub_22C8C22DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = v4;
  v5 = v4[27];
  v7 = v4[19];
  v6 = v4[20];
  swift_willThrow();
  sub_22C90405C();
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = sub_22C9063CC();
  v12 = sub_22C90AADC();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v4[26];
  v15 = v4[27];
  v16 = v4[23];
  v17 = v4[21];
  if (v13)
  {
    v32 = v4[26];
    sub_22C370220();
    v31 = v17;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v18 = 136315650;
    v20 = sub_22C90A11C();
    v30 = v16;
    v22 = sub_22C36F9F4(v20, v21, v33);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = sub_22C90A11C();
    v25 = sub_22C36F9F4(v23, v24, v33);

    *(v18 + 14) = v25;
    *(v18 + 22) = 2112;
    v26 = v15;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v27;
    *v19 = v27;
    _os_log_impl(&dword_22C366000, v11, v12, "Failed to requestAssets(%s,%s): %@", v18, 0x20u);
    sub_22C3AC228(v19, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v32(v30, v31);
  }

  else
  {

    v14(v16, v17);
  }

  sub_22C369A24();

  return v28();
}

uint64_t sub_22C8C2560(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_22C374168((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    return sub_22C8B5B4C();
  }

  else
  {
    v8 = *v5;

    return sub_22C8B5BD0(v8, a2);
  }
}

uint64_t sub_22C8C25FC(uint64_t a1)
{
  v2 = sub_22C8C60A8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8C2638(uint64_t a1)
{
  v2 = sub_22C8C60A8();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C8C2690()
{
  result = qword_27D9C1260;
  if (!qword_27D9C1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1260);
  }

  return result;
}

uint64_t sub_22C8C26E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C8C273C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C1240, &qword_22C92CAD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C8C27AC()
{
  result = qword_27D9C1268;
  if (!qword_27D9C1268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9C1268);
  }

  return result;
}

uint64_t sub_22C8C27F0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    sub_22C36D280();
    v6 = v5 & v4;
    v8 = (v7 + 63) >> 6;

    v9 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }

    do
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(v2 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      sub_22C8C2ACC(v13, v14);
    }

    while (v6);
    while (1)
    {
LABEL_4:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }
  }

  return result;
}

void sub_22C8C2908()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9BCF20, &unk_22C922830);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22C37B6BC();
  v7 = type metadata accessor for PromptTreeIdentifier.Label(v6);
  v8 = sub_22C3699B8(v7);
  v10 = v9;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v13 = v12 - v11;
  if (*(*v0 + 16))
  {
    sub_22C36D280();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;

    v19 = 0;
    if (!v16)
    {
      goto LABEL_4;
    }

    do
    {
      v20 = v19;
LABEL_8:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      sub_22C8C26E4(*(v3 + 48) + *(v10 + 72) * (v21 | (v20 << 6)), v13);
      sub_22C8C2BF4(v13, v1);
      sub_22C8C5ED8();
      sub_22C3AC228(v1, &qword_27D9BCF20, &unk_22C922830);
    }

    while (v16);
LABEL_4:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        goto LABEL_11;
      }

      v16 = *(v3 + 56 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    sub_22C36CC48();
  }
}

uint64_t sub_22C8C2ACC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22C90B62C();
  sub_22C909FFC();
  v6 = sub_22C90B66C();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_22C90B4FC() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C5E274C();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_22C8C3BC0(v8);
  *v2 = v15;
  return v13;
}

uint64_t sub_22C8C2BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v68 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  MEMORY[0x28223BE20](v68);
  v74 = (&v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_22C90430C();
  v5 = *(v80 - 8);
  v6 = MEMORY[0x28223BE20](v80);
  v79 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v66 - v8;
  v67 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  MEMORY[0x28223BE20](v67);
  v88 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = sub_22C902D0C();
  v95 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v71 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - v13;
  v97 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v94 = *(v97 - 8);
  v15 = MEMORY[0x28223BE20](v97);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v90 = (&v66 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v86 = &v66 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v66 - v22;
  v66 = v2;
  v24 = *v2;
  sub_22C90B62C();
  sub_22C48640C();
  v25 = sub_22C90B66C();
  v26 = -1 << *(v24 + 32);
  v27 = v25 & ~v26;
  v96 = v24 + 56;
  if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_60:
    v61 = 1;
    v62 = v69;
    return sub_22C36C640(v62, v61, 1, v97);
  }

  v93 = ~v26;
  v73 = v5 + 16;
  v94 = *(v94 + 72);
  v77 = (v5 + 8);
  v82 = (v95 + 8);
  v70 = (v95 + 32);
  v95 = v12;
  v81 = v17;
  v89 = v24;
  v72 = a1;
  v78 = v5;
  v91 = v9;
  while (1)
  {
    v28 = *(v24 + 48);
    v92 = v94 * v27;
    sub_22C8C26E4(v28 + v94 * v27, v23);
    v29 = *(v95 + 48);
    sub_22C8C26E4(v23, v14);
    sub_22C8C26E4(a1, &v14[v29]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v49 = v86;
      sub_22C8C26E4(v14, v86);
      if (!swift_getEnumCaseMultiPayload())
      {
        v52 = a1;
        v53 = v71;
        v54 = v87;
        (*v70)(v71, &v14[v29], v87);
        LODWORD(v85) = sub_22C902CFC();
        v55 = *v82;
        (*v82)(v53, v54);
        sub_22C8C5ED8();
        v55(v49, v54);
        if (v85)
        {
          goto LABEL_62;
        }

        sub_22C8C5ED8();
        v17 = v81;
        v24 = v89;
        a1 = v52;
        goto LABEL_59;
      }

      sub_22C8C5ED8();
      (*v82)(v49, v87);
      v24 = v89;
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    v31 = a1;
    v32 = v90;
    sub_22C8C26E4(v14, v90);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22C8C5ED8();
      sub_22C8C5ED8();
      a1 = v31;
LABEL_25:
      sub_22C3AC228(v14, &qword_27D9BCBA0, &unk_22C9166D0);
      goto LABEL_59;
    }

    v33 = v88;
    sub_22C8C5CFC(&v14[v29], v88);
    v34 = sub_22C48819C(*v32, *v33);
    v35 = v91;
    if ((v34 & 1) != 0 && (v36 = v88[1], v85 = v90[1], v37 = *(v85 + 16), v84 = v36, v38 = *(v36 + 16), v83 = v37, v37 == v38))
    {
      if (v83 && v85 != v84)
      {
        v39 = 0;
        v40 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v76 = v85 + v40;
        v75 = v84 + v40;
        while (v39 < *(v85 + 16))
        {
          v41 = *(v78 + 72) * v39;
          v42 = *(v78 + 16);
          v43 = v80;
          v42(v35, v76 + v41, v80);
          if (v39 >= *(v84 + 16))
          {
            goto LABEL_65;
          }

          v44 = v79;
          v42(v79, v75 + v41, v43);
          sub_22C8C5F28(&qword_27D9BC808, MEMORY[0x277D85578], MEMORY[0x277D85590]);
          v45 = sub_22C90A0BC();
          v46 = *v77;
          v47 = v44;
          v35 = v91;
          (*v77)(v47, v43);
          v46(v35, v43);
          if ((v45 & 1) == 0)
          {
            goto LABEL_26;
          }

          if (v83 == ++v39)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

LABEL_15:
      v48 = sub_22C90962C();
      sub_22C8C5ED8();
      v17 = v81;
      if (v48)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_26:
      sub_22C8C5ED8();
      v17 = v81;
    }

    sub_22C8C5ED8();
    sub_22C8C5ED8();
    sub_22C8C5ED8();
    a1 = v72;
    v24 = v89;
LABEL_59:
    v27 = (v27 + 1) & v93;
    if (((*(v96 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  sub_22C8C26E4(v14, v17);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_22C8C5ED8();
    sub_22C8C5ED8();
    goto LABEL_25;
  }

  v50 = v74;
  sub_22C8C5CFC(&v14[v29], v74);
  v51 = *v50;
  switch(*v17)
  {
    case 3u:
      if (v51 == 3)
      {
        goto LABEL_40;
      }

      goto LABEL_57;
    case 4u:
      if (v51 != 4)
      {
        goto LABEL_57;
      }

      goto LABEL_40;
    case 5u:
      if (v51 != 5)
      {
        goto LABEL_57;
      }

      goto LABEL_40;
    case 6u:
      if (v51 != 6)
      {
        goto LABEL_57;
      }

      goto LABEL_40;
    default:
      if (*v17 != v51 || (v51 - 7) >= 0xFFFFFFFC)
      {
        goto LABEL_57;
      }

LABEL_40:
      v57 = *(v17 + 1) == v50[1] && *(v17 + 2) == v50[2];
      if (!v57 && (sub_22C90B4FC() & 1) == 0 || (*(v17 + 3) == v50[3] ? (v58 = *(v17 + 4) == v50[4]) : (v58 = 0), !v58 && (sub_22C90B4FC() & 1) == 0 || (*(v17 + 5) == v50[5] ? (v59 = *(v17 + 6) == v50[6]) : (v59 = 0), !v59 && (sub_22C90B4FC() & 1) == 0)))
      {
LABEL_57:
        sub_22C8C5ED8();
        goto LABEL_58;
      }

      v60 = sub_22C90067C();
      sub_22C8C5ED8();
      if ((v60 & 1) == 0)
      {
LABEL_58:
        sub_22C8C5ED8();
        sub_22C8C5ED8();
        sub_22C8C5ED8();
        goto LABEL_59;
      }

LABEL_16:
      sub_22C8C5ED8();
      sub_22C8C5ED8();
LABEL_62:
      sub_22C8C5ED8();
      v35 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = *v35;
      v98 = *v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_66:
        sub_22C5E28CC();
        v65 = v98;
      }

      v62 = v69;
      sub_22C8C5CFC(*(v65 + 48) + v92, v69);
      sub_22C8C3D78(v27);
      v61 = 0;
      *v35 = v98;
      return sub_22C36C640(v62, v61, 1, v97);
  }
}

uint64_t sub_22C8C3880()
{
  v1 = *v0;
  sub_22C90B62C();
  sub_22C7F3AA8();
  v2 = sub_22C90B66C();
  v3 = ~(-1 << *(v1 + 32));
  while (1)
  {
    v4 = v2 & v3;
    if (((*(v1 + 56 + (((v2 & v3) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v2 & v3)) & 1) == 0)
    {
      return 0;
    }

    sub_22C74B664();
    v6 = v5;

    if (v6)
    {
      break;
    }

    v2 = v4 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  v11 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C5E2DB4();
    v9 = v11;
  }

  v7 = *(*(v9 + 48) + 8 * v4);
  sub_22C8C44D0(v4);
  *v0 = v11;
  return v7;
}

void sub_22C8C3990()
{
  sub_22C36BA7C();
  v24 = v1;
  v2 = sub_22C901FAC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v23 = v0;
  v9 = *v0;
  sub_22C37FBAC();
  sub_22C8C5F28(v10, v11, MEMORY[0x277D1C348]);
  v12 = sub_22C909F7C();
  v13 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v14 = v12 & v13;
    if (((*(v9 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {
      v18 = 1;
      v19 = v24;
      goto LABEL_9;
    }

    v15 = *(v4 + 72) * v14;
    (*(v4 + 16))(v8, *(v9 + 48) + v15, v2);
    sub_22C37FBAC();
    sub_22C8C5F28(&qword_27D9BAA28, v16, MEMORY[0x277D1C358]);
    v17 = sub_22C90A0BC();
    (*(v4 + 8))(v8, v2);
    if (v17)
    {
      break;
    }

    v12 = v14 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v23;
  v25 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C5E2A38();
    v21 = v25;
  }

  v22 = *(v21 + 48) + v15;
  v19 = v24;
  (*(v4 + 32))(v24, v22, v2);
  sub_22C8C4C68(v14);
  v18 = 0;
  *v23 = v25;
LABEL_9:
  sub_22C36C640(v19, v18, 1, v2);
  sub_22C36CC48();
}

unint64_t sub_22C8C3BC0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22C90AE6C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22C90B62C();

        sub_22C909FFC();
        v10 = sub_22C90B66C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22C8C3D78(int64_t a1)
{
  v50 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  MEMORY[0x28223BE20](v50);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  MEMORY[0x28223BE20](v49);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_22C902D0C();
  v55 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v8 = MEMORY[0x28223BE20](v56);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v14 = &v44 - v13;
  v15 = *v1;
  v16 = *v1 + 56;
  v17 = -1 << *(*v1 + 32);
  v18 = (a1 + 1) & ~v17;
  if (((1 << v18) & *(v16 + 8 * (v18 >> 6))) != 0)
  {
    v57 = v12;
    v52 = v6;
    v19 = ~v17;

    v20 = sub_22C90AE6C();
    if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) != 0)
    {
      v53 = (v20 + 1) & v19;
      v57 = *(v57 + 72);
      v45 = (v55 + 32);
      v44 = (v55 + 8);
      v54 = v19;
      v55 = v16;
      v46 = v15;
      while (1)
      {
        v21 = v57 * v18;
        sub_22C8C26E4(*(v15 + 48) + v57 * v18, v14);
        sub_22C90B62C();
        sub_22C8C26E4(v14, v10);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v51 = a1;
            v23 = v52;
            sub_22C8C5CFC(v10, v52);
            MEMORY[0x2318B8B10](1);
            sub_22C48A9B4(v58, *v23);
            v24 = v23[1];
            v25 = *(v24 + 16);
            MEMORY[0x2318B8B10](v25);
            if (v25)
            {
              v26 = *(sub_22C90430C() - 8);
              v27 = v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
              v28 = *(v26 + 72);
              sub_22C8C5F28(&qword_27D9BC810, MEMORY[0x277D85578], MEMORY[0x277D85588]);
              do
              {
                sub_22C909F8C();
                v27 += v28;
                --v25;
              }

              while (v25);
            }

            sub_22C90963C();
            sub_22C8C5F28(&qword_27D9BC850, MEMORY[0x277D72E18], MEMORY[0x277D72E20]);
            sub_22C909F8C();
            sub_22C8C5ED8();
            a1 = v51;
            v15 = v46;
          }

          else
          {
            sub_22C8C5CFC(v10, v4);
            MEMORY[0x2318B8B10](2);
            v31 = *v4;
            if ((v31 - 3) >= 4u)
            {
              MEMORY[0x2318B8B10](1);
            }

            else
            {
              v31 = qword_22C92D120[(v31 - 3)];
            }

            MEMORY[0x2318B8B10](v31);
            sub_22C909FFC();
            sub_22C909FFC();
            sub_22C909FFC();
            sub_22C90069C();
            sub_22C8C5F28(&qword_27D9BC858, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
            sub_22C909F8C();
            sub_22C8C5ED8();
          }
        }

        else
        {
          v30 = v47;
          v29 = v48;
          (*v45)(v47, v10, v48);
          MEMORY[0x2318B8B10](0);
          sub_22C8C5F28(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
          sub_22C909F8C();
          (*v44)(v30, v29);
        }

        v32 = sub_22C90B66C();
        sub_22C8C5ED8();
        v33 = v32 & v54;
        v34 = v54;
        if (a1 >= v53)
        {
          v35 = v33 < v53 || a1 < v33;
        }

        else
        {
          v35 = v33 < v53 && a1 < v33;
        }

        v16 = v55;
        if (v35)
        {
          goto LABEL_32;
        }

        v36 = *(v15 + 48);
        v37 = v57 * a1;
        v38 = v36 + v57 * a1;
        v39 = v36 + v21 + v57;
        if (v57 * a1 < v21 || v38 >= v39)
        {
          break;
        }

        a1 = v18;
        if (v37 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_31;
        }

LABEL_32:
        v18 = (v18 + 1) & v34;
        if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      swift_arrayInitWithTakeFrontToBack();
LABEL_31:
      a1 = v18;
      goto LABEL_32;
    }

LABEL_33:

    *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v41 = *(v15 + 16);
  v42 = __OFSUB__(v41, 1);
  v43 = v41 - 1;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v43;
    ++*(v15 + 36);
  }

  return result;
}

void sub_22C8C44D0(unint64_t a1)
{
  v74 = sub_22C908C5C();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v84 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22C9069BC();
  v72 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BF108, &unk_22C921F70);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v80 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v61 - v8;
  v10 = *v1;
  v11 = *v1 + 56;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;

    v15 = sub_22C90AE6C();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v70 = v72 + 16;
      v69 = v73 + 16;
      v16 = (v72 + 32);
      v81 = (v73 + 32);
      v77 = (v72 + 8);
      v76 = (v73 + 8);
      v71 = v9;
      v68 = (v72 + 32);
      v65 = v10;
      v64 = v11;
      v63 = v14;
      v62 = (v15 + 1) & v14;
      while (2)
      {
        v67 = a1;
        v17 = *(v10 + 48);
        v66 = v13;
        v18 = *(v17 + 8 * v13);
        sub_22C90B62C();
        v19 = v18 + 64;
        v20 = 1 << *(v18 + 32);
        if (v20 < 64)
        {
          v21 = ~(-1 << v20);
        }

        else
        {
          v21 = -1;
        }

        v22 = v21 & *(v18 + 64);
        v79 = (v20 + 63) >> 6;
        v75 = v18;
        swift_bridgeObjectRetain_n();
        v23 = 0;
        v24 = 0;
        v25 = v74;
        for (i = v18 + 64; ; v19 = i)
        {
          v85 = v23;
          if (!v22)
          {
            v27 = v80;
            while (1)
            {
              v26 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                break;
              }

              if (v26 >= v79)
              {
                v48 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
                sub_22C36C640(v27, 1, 1, v48);
                v22 = 0;
                goto LABEL_16;
              }

              v22 = *(v19 + 8 * v26);
              ++v24;
              if (v22)
              {
                v24 = v26;
                goto LABEL_15;
              }
            }

            __break(1u);
            goto LABEL_39;
          }

          v26 = v24;
LABEL_15:
          v28 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v29 = v28 | (v26 << 6);
          v30 = v75;
          v31 = v72;
          v32 = v82;
          v33 = v83;
          (*(v72 + 16))(v82, *(v75 + 48) + *(v72 + 72) * v29, v83);
          v34 = *(v30 + 56);
          v35 = v73;
          v36 = v84;
          (*(v73 + 16))(v84, v34 + *(v73 + 72) * v29, v25);
          v37 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
          v38 = *(v37 + 48);
          v39 = *(v31 + 32);
          v40 = v80;
          v41 = v33;
          v16 = v68;
          v39(v80, v32, v41);
          v42 = v40 + v38;
          v25 = v74;
          (*(v35 + 32))(v42, v36, v74);
          sub_22C36C640(v40, 0, 1, v37);
          v9 = v71;
LABEL_16:
          sub_22C407C2C();
          v43 = sub_22C3A5908(&qword_27D9BF110, &unk_22C922580);
          if (sub_22C370B74(v9, 1, v43) == 1)
          {
            break;
          }

          v44 = *(v43 + 48);
          v45 = v82;
          v46 = v83;
          (*v16)(v82, v9, v83);
          v47 = v84;
          (*v81)(v84, &v9[v44], v25);
          memcpy(__dst, __src, sizeof(__dst));
          sub_22C8C5F28(&qword_27D9BAA98, MEMORY[0x277D1DCF0], MEMORY[0x277D1DCF8]);
          sub_22C909F8C();
          (*v77)(v45, v46);
          sub_22C8C5F28(&qword_27D9BAA90, MEMORY[0x277D1E968], MEMORY[0x277D1E970]);
          sub_22C909F8C();
          (*v76)(v47, v25);
          v23 = sub_22C90B66C() ^ v85;
        }

        MEMORY[0x2318B8B10](v85);

        v49 = sub_22C90B66C();
        v50 = v63;
        v51 = v49 & v63;
        a1 = v67;
        if (v67 >= v62)
        {
          v52 = v51 < v62 || v67 < v51;
        }

        else
        {
          v52 = v51 < v62 && v67 < v51;
        }

        v10 = v65;
        v11 = v64;
        v53 = v66;
        if (!v52)
        {
          v54 = *(v65 + 48);
          v55 = (v54 + 8 * v67);
          v56 = (v54 + 8 * v66);
          if (v67 != v66 || v55 >= v56 + 1)
          {
            *v55 = *v56;
            a1 = v53;
          }
        }

        v13 = (v53 + 1) & v50;
        if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          continue;
        }

        break;
      }
    }

    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v58 = *(v10 + 16);
  v59 = __OFSUB__(v58, 1);
  v60 = v58 - 1;
  if (v59)
  {
LABEL_39:
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v60;
    ++*(v10 + 36);
  }
}

uint64_t sub_22C8C4C68(int64_t a1)
{
  v3 = sub_22C901FAC();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_22C90AE6C();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v37 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v36 = v15;
      v16 = *(v14 + 56);
      v38 = v14;
      v39 = v16;
      v17 = v12;
      v18 = (v14 - 8);
      v19 = v8;
      while (1)
      {
        v20 = v9;
        v21 = v39 * v11;
        v22 = v17;
        v36(v7, *(v19 + 48) + v39 * v11, v3);
        v23 = v19;
        sub_22C8C5F28(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
        v24 = sub_22C909F7C();
        (*v18)(v7, v3);
        v17 = v22;
        v25 = v24 & v22;
        if (a1 >= v37)
        {
          if (v25 < v37 || a1 < v25)
          {
LABEL_20:
            v19 = v23;
            goto LABEL_24;
          }
        }

        else if (v25 < v37 && a1 < v25)
        {
          goto LABEL_20;
        }

        v19 = v23;
        v27 = *(v23 + 48);
        v28 = v39 * a1;
        v29 = v27 + v39 * a1;
        v30 = v27 + v21 + v39;
        if (v39 * a1 < v21 || v29 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v17 = v22;
          a1 = v11;
          goto LABEL_24;
        }

        a1 = v11;
        if (v28 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v11 = (v11 + 1) & v17;
        v9 = v20;
        if (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v8;
LABEL_28:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v8;
  }

  v33 = *(v19 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v35;
    ++*(v19 + 36);
  }

  return result;
}

uint64_t sub_22C8C4F74(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v7 = a3 == a5 && a4 == a6;
  if (v7 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_22C90B46C() & 1;
  }
}

id sub_22C8C4FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_22C90A0EC();

  v7 = sub_22C90A0EC();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_22C8C5100()
{
  sub_22C36D5EC();
  sub_22C370250();
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_22C36D860(v7);
  *v8 = v9;
  v8[1] = sub_22C46BC08;

  return sub_22C8BEAD8(v2, v0, v3, v4, v6, v5);
}

uint64_t sub_22C8C51B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C8C51F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C8C5250(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C8C5290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C8C5314(uint64_t a1)
{
  result = sub_22C90806C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DialogValues(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ResponseValidationRule.validate(text:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22C38B598(a6);
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = sub_22C36D860(v13);
  *v14 = v15;
  v14[1] = sub_22C46BC08;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22C8C5514(uint64_t a1)
{
  result = sub_22C90077C();
  if (v2 <= 0x3F)
  {
    result = sub_22C901C6C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C8C5634(uint64_t a1)
{
  result = sub_22C901D7C();
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

void sub_22C8C56E4(uint64_t a1)
{
  sub_22C90077C();
  if (v1 <= 0x3F)
  {
    sub_22C8C581C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22C8C581C(uint64_t a1)
{
  if (!qword_27D9C12C0)
  {
    type metadata accessor for DialogValues(255);
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9C12C0);
    }
  }
}

uint64_t sub_22C8C5964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22C90077C();
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseValidationError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_22C8C5B80()
{
  result = qword_27D9C12D8;
  if (!qword_27D9C12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C12D8);
  }

  return result;
}

unint64_t sub_22C8C5BD4()
{
  result = qword_27D9C12E0;
  if (!qword_27D9C12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C12E0);
  }

  return result;
}

uint64_t sub_22C8C5C28()
{
  sub_22C36D5EC();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  v4[1] = sub_22C382AF4;
  v6 = sub_22C36DBB4();

  return sub_22C8C1C9C(v6, v7, v8, v2, v1);
}

uint64_t sub_22C8C5CFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C8C5D54()
{
  v1 = sub_22C3704C4();
  v2 = type metadata accessor for ResponseValidationContext(v1);
  sub_22C369914(v2);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = swift_task_alloc();
  v6 = sub_22C36D860(v5);
  *v6 = v7;
  v6[1] = sub_22C382AF4;
  v8 = sub_22C36DBB4();

  return sub_22C8BF394(v8, v9, v10, v11, v3, v4, v12);
}

unint64_t sub_22C8C5E40()
{
  result = qword_27D9C12F8;
  if (!qword_27D9C12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C12F8);
  }

  return result;
}

uint64_t sub_22C8C5ED8()
{
  v1 = sub_22C3704C4();
  v2(v1);
  sub_22C369848();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C8C5F28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ResponseValidationAssets.responseValidationAssetsInitError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_22C8C6054()
{
  result = qword_27D9C1320;
  if (!qword_27D9C1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1320);
  }

  return result;
}

unint64_t sub_22C8C60A8()
{
  result = qword_27D9C1328;
  if (!qword_27D9C1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1328);
  }

  return result;
}

uint64_t sub_22C8C616C(uint64_t a1, uint64_t a2)
{

  return sub_22C90B4FC();
}

uint64_t sub_22C8C6188()
{

  return swift_slowAlloc();
}

uint64_t sub_22C8C61A4()
{
}

uint64_t sub_22C8C61E4(uint64_t a1)
{

  return sub_22C90B5FC();
}

uint64_t sub_22C8C6204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_22C8C6224()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return sub_22C90A11C();
}

void *sub_22C8C6244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_defaultActor_initialize();
  v6[14] = 0xD000000000000023;
  v6[15] = 0x800000022C93A020;
  v6[16] = 0xD00000000000001FLL;
  v6[17] = 0x800000022C93A050;
  v6[18] = 0xD000000000000010;
  v6[19] = 0x800000022C93A070;
  v6[20] = a1;
  v6[21] = a2;
  v6[22] = a3;
  v6[23] = a4;
  v6[24] = a5;
  v6[25] = a6;
  return v6;
}

uint64_t sub_22C8C62F4()
{
  v1 = v0;
  sub_22C90AF5C();
  v2 = v0[14];

  sub_22C373CFC();
  MEMORY[0x2318B7850](v1[20], v1[21]);
  sub_22C38C2BC();
  MEMORY[0x2318B7850](v1[16], v1[17]);
  sub_22C373CFC();
  MEMORY[0x2318B7850](v1[22], v1[23]);
  sub_22C38C2BC();
  MEMORY[0x2318B7850](v1[18], v1[19]);
  sub_22C373CFC();
  MEMORY[0x2318B7850](v1[24], v1[25]);
  return v2;
}

id sub_22C8C63A8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  result = rankingPrefetchedAttributesArray();
  if (result)
  {
    v2 = result;
    [v0 setFetchAttributes_];

    v3 = sub_22C8C62F4();
    v5 = v4;
    v6 = objc_allocWithZone(MEMORY[0x277CC3498]);
    return sub_22C8C72B8(v3, v5, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C8C6448(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22C90AA7C();
  v3[6] = v4;
  sub_22C3699B8(v4);
  v3[7] = v5;
  v3[8] = sub_22C3699D4();
  v6 = sub_22C9063DC();
  v3[9] = v6;
  sub_22C3699B8(v6);
  v3[10] = v7;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9C1330, &qword_22C92D1C8);
  v3[14] = sub_22C3699D4();
  v8 = sub_22C90AA9C();
  v3[15] = v8;
  sub_22C3699B8(v8);
  v3[16] = v9;
  v3[17] = sub_22C3699D4();
  v10 = sub_22C90AA8C();
  v3[18] = v10;
  sub_22C3699B8(v10);
  v3[19] = v11;
  v3[20] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C8C6630, v2, 0);
}

uint64_t sub_22C8C6630()
{
  v30 = v0;
  v1 = sub_22C8C63A8();
  v0[21] = v1;
  if (v1)
  {
    sub_22C90AAAC();
    sub_22C90AA5C();
    v2 = sub_22C36D264();
    v3(v2);
    v0[22] = sub_22C8C731C(&qword_27D9C1338, v4, type metadata accessor for ResponseGenerationSearchableItem, &unk_22C92D1A0);
    sub_22C8C731C(&qword_27D9C1340, 255, MEMORY[0x277CC21E8], MEMORY[0x277CC21F0]);
    v5 = swift_task_alloc();
    v0[23] = v5;
    *v5 = v0;
    v5[1] = sub_22C8C6900;
    v6 = v0[14];

    return MEMORY[0x282200308](v6);
  }

  else
  {
    sub_22C90405C();

    v7 = sub_22C9063CC();
    v8 = sub_22C90AADC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29 = v10;
      *v9 = 136642819;
      v11 = sub_22C8C62F4();
      v13 = sub_22C36F9F4(v11, v12, &v29);

      *(v9 + 4) = v13;
      sub_22C36BE40(&dword_22C366000, v14, v15, "Error creating CSSearchQuery for entity with query string: %{sensitive}s");
      sub_22C36FF94(v10);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    v16 = sub_22C36D264();
    v18 = v17(v16);
    sub_22C8C7444(v18, v19, v20, v21, v22, v23, v24, v25);

    v26 = sub_22C3789C0();

    return v27(v26);
  }
}

uint64_t sub_22C8C6900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v9;
  *(*v9 + 192) = v8;

  if (v8)
  {
    if (*(v10 + 40))
    {
      swift_getObjectType();
      v11 = sub_22C90A6DC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = sub_22C8C6EC4;
    v15 = v11;
  }

  else
  {
    v14 = sub_22C8C6A6C;
    v15 = *(v10 + 40);
    v13 = 0;
  }

  return MEMORY[0x2822009F8](v14, v15, v13);
}

uint64_t sub_22C8C6A6C()
{
  v54 = v0;
  v1 = v0[14];
  v2 = v0[6];
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    v3 = sub_22C36D264();
    v4(v3);
    sub_22C90405C();

    v5 = sub_22C9063CC();
    v6 = sub_22C90AACC();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[21];
    v9 = v0[12];
    v10 = v0[9];
    v11 = v0[10];
    if (v7)
    {
      v52 = v0[12];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v53 = v13;
      *v12 = 136642819;
      v14 = sub_22C8C62F4();
      v16 = sub_22C36F9F4(v14, v15, &v53);

      *(v12 + 4) = v16;
      sub_22C36BE40(&dword_22C366000, v17, v18, "No CSSearchableItem found for entity with query string: %{sensitive}s");
      sub_22C36FF94(v13);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v11 + 8))(v52, v10);
    }

    else
    {

      (*(v11 + 8))(v9, v10);
    }
  }

  else
  {
    v20 = v0[7];
    v19 = v0[8];
    (*(v20 + 32))(v19, v1, v2);
    v21 = sub_22C90AA6C();
    (*(v20 + 8))(v19, v2);
    v22 = sub_22C36D264();
    v23(v22);
    v24 = sub_22C878D84();
    if (sub_22C8C7364(v24))
    {
      v25 = sub_22C36E2B8();

      if (v25 == 1)
      {
        v26 = sub_22C8C7364(v24);
        if (v26)
        {
          v27 = v26;
          if (sub_22C36E2B8())
          {
            sub_22C633A2C();
            if ((v27 & 0xC000000000000001) != 0)
            {
              v28 = MEMORY[0x2318B8460](0, v27);
            }

            else
            {
              v28 = *(v27 + 32);
            }

            v29 = v28;

            objc_opt_self();
            v30 = swift_dynamicCastObjCClass();
            if (v30)
            {
              v31 = v30;
              v32 = [v30 title];
              if (!v32)
              {
                goto LABEL_16;
              }

              v33 = sub_22C8C73D4(v32);
              if (!v34)
              {
                goto LABEL_16;
              }

              v35 = v33;
              v36 = v34;

              v37 = HIBYTE(v36) & 0xF;
              if ((v36 & 0x2000000000000000) == 0)
              {
                v37 = v35 & 0xFFFFFFFFFFFFLL;
              }

              if (!v37)
              {
LABEL_16:
                v38 = v0[4];
                if (v38)
                {
                  v39 = v0[3];
                }

                else
                {
                  v39 = 0;
                }

                if (v38)
                {
                  v40 = v0[4];
                }

                else
                {
                  v40 = 0xE000000000000000;
                }

                sub_22C36E278(0, &qword_27D9C1348, 0x277D4C598);

                v41 = sub_22C8C71A8(v39, v40);
                [v31 setTitle_];
              }
            }
          }

          else
          {
          }
        }
      }
    }

    v42 = [objc_allocWithZone(MEMORY[0x277D4C728]) initWithFacade_];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 data];

      v45 = v0[21];
      if (v44)
      {
        v46 = sub_22C90051C();
        v48 = v47;

        goto LABEL_33;
      }
    }

    else
    {
      v49 = v0[21];
    }
  }

  v46 = 0;
  v48 = 0xF000000000000000;
LABEL_33:

  v50 = v0[1];

  return v50(v46, v48);
}

uint64_t sub_22C8C6EC4()
{
  v1 = v0[5];
  v0[2] = v0[24];
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_22C8C6F5C, v1, 0);
}

uint64_t sub_22C8C6F5C()
{
  v34 = v0;
  v1 = v0[24];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_22C90405C();

  v2 = v1;
  v3 = sub_22C9063CC();
  v4 = sub_22C90AADC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[13];
  v9 = v0[9];
  v10 = v0[10];
  if (v5)
  {
    v32 = v0[13];
    v31 = v0[21];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v11 = 136643075;
    v14 = sub_22C8C62F4();
    v30 = v9;
    v16 = sub_22C36F9F4(v14, v15, &v33);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = v6;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_22C366000, v3, v4, "Error searching for entity with query string: %{sensitive}s: %@", v11, 0x16u);
    sub_22C5AB9D0(v12);
    sub_22C3699EC();
    sub_22C36FF94(v13);
    sub_22C3699EC();
    sub_22C3699EC();

    v19 = (*(v10 + 8))(v32, v30);
  }

  else
  {

    v19 = (*(v10 + 8))(v8, v9);
  }

  sub_22C8C7444(v19, v20, v21, v22, v23, v24, v25, v26);

  v27 = sub_22C3789C0();

  return v28(v27);
}

id sub_22C8C71A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_22C90A0EC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString_];

  return v3;
}

uint64_t sub_22C8C7218()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22C8C7268()
{
  sub_22C8C7218();

  return MEMORY[0x282200960](v0);
}

id sub_22C8C72B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_22C90A0EC();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

uint64_t sub_22C8C731C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22C8C7364(void *a1)
{
  v1 = [a1 cardSections];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22C36E278(0, &qword_27D9C0C98, 0x277D4C238);
  v3 = sub_22C90A5EC();

  return v3;
}

uint64_t sub_22C8C73D4(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90A11C();

  return v3;
}

uint64_t sub_22C8C7444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

uint64_t sub_22C8C7468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22C8C748C, 0, 0);
}

uint64_t sub_22C8C748C()
{
  sub_22C36FB38();
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  v0[7] = 0;
  v0[8] = v4;
  v0[6] = v3;
  if (v3)
  {
    v5 = sub_22C906ECC();
    sub_22C369914(v5);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v13 = (v2 + *v2);
    swift_task_alloc();
    sub_22C36CC90();
    v0[9] = v8;
    *v8 = v9;
    sub_22C37EE90(v8);

    return (v13)(v0 + 2, v1 + v7);
  }

  else
  {
    sub_22C36D5E0();
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_22C8C75F8()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {

    v7 = sub_22C7778DC;
  }

  else
  {
    v7 = sub_22C8C76FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22C8C76FC()
{
  sub_22C3743E4();
  v1 = v0[2];
  result = v0[8];
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[8];
  if (!isUniquelyReferenced_nonNull_native || v4 + v3 > *(v6 + 24) >> 1)
  {
    sub_22C5972AC();
    v6 = v7;
  }

  if (*(v1 + 16))
  {
    v8 = (*(v6 + 24) >> 1) - *(v6 + 16);
    result = sub_22C9023BC();
    if (v8 >= v3)
    {
      swift_arrayInitWithCopy();

      if (!v3)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 16);
      v10 = __OFADD__(v9, v3);
      v11 = v9 + v3;
      if (!v10)
      {
        *(v6 + 16) = v11;
        goto LABEL_11;
      }

LABEL_21:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_11:
  v12 = v0[6];
  v13 = v0[7] + 1;
  v0[7] = v13;
  v0[8] = v6;
  if (v13 == v12)
  {
    sub_22C36D5E0();

    return v14(v6);
  }

  else
  {
    v15 = v0[5];
    v16 = v0[3];
    v17 = sub_22C906ECC();
    sub_22C3699B8(v17);
    v20 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v19 + 72) * v13;
    v23 = (v16 + *v16);
    swift_task_alloc();
    sub_22C36CC90();
    v0[9] = v21;
    *v21 = v22;
    sub_22C37EE90(v21);

    return (v23)(v0 + 2, v20);
  }
}

uint64_t sub_22C8C7988()
{
  type metadata accessor for PrescribedPlanGenerator(0);
  sub_22C3A5908(&qword_27D9C1418, &qword_22C92D5F8);
  v0 = sub_22C3A5908(&qword_27D9C1420, &qword_22C92D600);
  return sub_22C8D520C(v0);
}

uint64_t sub_22C8C79DC()
{
  type metadata accessor for ModularQueryDecorationService();
  sub_22C3A5908(&qword_27D9C13E8, &qword_22C92D5C8);
  v0 = sub_22C3A5908(&qword_27D9C13F0, &qword_22C92D5D0);
  return sub_22C8D520C(v0);
}

uint64_t sub_22C8C7A30()
{
  type metadata accessor for SuggestedInvocationPlanGenerator(0);
  sub_22C3A5908(&qword_27D9C1408, &qword_22C92D5E8);
  v0 = sub_22C3A5908(&qword_27D9C1410, &qword_22C92D5F0);
  return sub_22C8D520C(v0);
}

uint64_t sub_22C8C7A84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C901DEC();
  *a1 = result & 1;
  return result;
}

uint64_t ResponseGenerationService.init(toolboxResources:toolExecutionSession:identityChain:featureStoreService:)()
{
  sub_22C37DAA8();
  sub_22C36D1E4(v1, *(v1 + 24));
  sub_22C8D51E8();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v4 = sub_22C8D51D0(v3);
  v5(v4);
  sub_22C8D5150();
  v6 = sub_22C37BB14();
  sub_22C36FF94(v6);
  return v0;
}

uint64_t sub_22C8C7BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  (*(v12[11] + 8))(v12[12], v12[10]);
  v13 = sub_22C36CA88();
  v14(v13);
  v15 = sub_22C36D264();
  v16(v15);
  v17 = sub_22C36BBCC();
  v18(v17);
  v28 = v12[28];
  sub_22C36CDAC();

  sub_22C369A24();
  sub_22C372034();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

uint64_t sub_22C8C7CEC()
{
  sub_22C369980();
  v1[15] = v2;
  v1[16] = v0;
  v3 = sub_22C9063DC();
  v1[17] = v3;
  sub_22C3699B8(v3);
  v1[18] = v4;
  v1[19] = sub_22C3856B8();
  v1[20] = swift_task_alloc();
  v5 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v5);
  v1[21] = sub_22C3699D4();
  v6 = sub_22C9073DC();
  sub_22C369914(v6);
  v7 = sub_22C3699D4();
  sub_22C8D525C(v7);
  v8 = sub_22C9087BC();
  v1[23] = v8;
  sub_22C3699B8(v8);
  v1[24] = v9;
  v1[25] = *(v10 + 64);
  v1[26] = sub_22C3699D4();
  v11 = sub_22C90640C();
  v1[27] = v11;
  sub_22C3699B8(v11);
  v1[28] = v12;
  v1[29] = sub_22C3699D4();
  v13 = sub_22C9084EC();
  v1[30] = v13;
  sub_22C3699B8(v13);
  v1[31] = v14;
  v1[32] = sub_22C3699D4();
  v15 = sub_22C9025AC();
  v1[33] = v15;
  sub_22C3699B8(v15);
  v1[34] = v16;
  v1[35] = sub_22C3699D4();
  v17 = sub_22C90806C();
  v1[36] = v17;
  sub_22C3699B8(v17);
  v1[37] = v18;
  v1[38] = *(v19 + 64);
  v1[39] = sub_22C3856B8();
  v1[40] = swift_task_alloc();
  v20 = sub_22C9089DC();
  v1[41] = v20;
  sub_22C3699B8(v20);
  v1[42] = v21;
  v1[43] = sub_22C3856B8();
  v1[44] = swift_task_alloc();
  v22 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v22);
  v1[45] = sub_22C3699D4();
  v23 = sub_22C90880C();
  v1[46] = v23;
  sub_22C3699B8(v23);
  v1[47] = v24;
  v1[48] = sub_22C3856B8();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v25 = sub_22C908A0C();
  v1[51] = v25;
  sub_22C3699B8(v25);
  v1[52] = v26;
  v1[53] = sub_22C3856B8();
  v1[54] = swift_task_alloc();
  v27 = sub_22C90069C();
  v1[55] = v27;
  sub_22C3699B8(v27);
  v1[56] = v28;
  v1[57] = *(v29 + 64);
  v1[58] = sub_22C3856B8();
  v1[59] = swift_task_alloc();
  v30 = sub_22C90634C();
  v1[60] = v30;
  sub_22C3699B8(v30);
  v1[61] = v31;
  v1[62] = sub_22C3856B8();
  v1[63] = swift_task_alloc();
  v32 = sub_22C90636C();
  v1[64] = v32;
  sub_22C3699B8(v32);
  v1[65] = v33;
  v1[66] = sub_22C3699D4();
  v34 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_22C8C81C0(uint64_t a1)
{
  sub_22C9036AC();
  sub_22C90633C();
  v2 = sub_22C90635C();
  v3 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v4 = sub_22C36D240();
    *v4 = 0;
    v5 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v2, v3, v5, "ResponseGeneration.overall", "", v4, 2u);
    sub_22C3699EC();
  }

  v6 = *(v1 + 520);
  v7 = *(v1 + 504);
  v119 = *(v1 + 512);
  v121 = *(v1 + 528);
  v8 = *(v1 + 488);
  v9 = *(v1 + 480);
  v117 = *(v1 + 472);
  v10 = *(v1 + 400);
  v127 = *(v1 + 408);
  v11 = *(v1 + 376);
  v124 = *(v1 + 368);
  v115 = *(v1 + 120);

  v12 = sub_22C37170C();
  v13(v12);
  sub_22C9063AC();
  swift_allocObject();
  sub_22C3707B4();
  v14 = sub_22C90639C();
  *(v1 + 536) = v14;
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v121, v119);
  sub_22C90068C();
  sub_22C90878C();
  sub_22C36D484();
  sub_22C3A9540();
  v15 = *(v11 + 8);
  v15(v10, v124);
  v16 = sub_22C37EF1C();
  sub_22C36D0A8(v16, v17, v127);
  if (v18)
  {
    sub_22C36DD28(*(v1 + 360), &qword_27D9BA808, &qword_22C90C6E0);
LABEL_12:
    sub_22C90405C();
    v45 = sub_22C9063CC();
    v46 = sub_22C90AADC();
    if (sub_22C370048(v46))
    {
      *sub_22C36D240() = 0;
      sub_22C372114();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      sub_22C3699EC();
    }

    v53 = *(v1 + 144);
    v52 = *(v1 + 152);
    v54 = *(v1 + 136);

    (*(v53 + 8))(v52, v54);
    v55 = sub_22C8D420C();
    sub_22C36FBE4(&type metadata for ResponseGenerationService.ResponseGenerationServiceError, v55);
    *v56 = 1;
    swift_willThrow();
    v57 = sub_22C36ECB4();
    v58(v57);
    goto LABEL_15;
  }

  v19 = *(v1 + 432);
  v20 = *(v1 + 408);
  v21 = *(v1 + 416);
  v22 = *(v1 + 360);
  v23 = *(v21 + 32);
  *(v1 + 544) = v23;
  *(v1 + 552) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v23(v19, v22, v20);
  sub_22C9089EC();
  v24 = sub_22C36D264();
  if (v25(v24) != *MEMORY[0x277D1E838])
  {
    (*(*(v1 + 416) + 8))(*(v1 + 432), *(v1 + 408));
    v43 = sub_22C37170C();
    v44(v43);
    goto LABEL_12;
  }

  v26 = *(v1 + 352);
  v27 = *(v1 + 328);
  v28 = *(v1 + 336);
  v29 = *(v1 + 128);
  v30 = *(v28 + 8);
  *(v1 + 560) = v30;
  *(v1 + 568) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v26, v27);
  if (*(v29 + 376))
  {
    v31 = *(v1 + 392);

    sub_22C899F90();

    sub_22C90878C();
    sub_22C89DA74(v31, v32, v33, v34, v35, v36, v37, v38, v101, v102, v104, v106, v108, v110, v111, v113, v115, v117, v119, v121);

    v39 = sub_22C36D264();
    (v15)(v39);
  }

  v40 = *(v1 + 128);
  sub_22C36CA70(v40 + 248, v1 + 96);
  sub_22C6AEA50(v40 + 248, v1 + 56, &qword_27D9C1360, &qword_22C92D218);
  if (*(v1 + 80))
  {
    v41 = *(v1 + 384);
    v42 = *(v1 + 320);
    sub_22C36C730((v1 + 56), v1 + 16);
    sub_22C374168((v1 + 16), *(v1 + 40));
    sub_22C90878C();
    sub_22C894DCC(v41, v42);
    v125 = *(v1 + 472);
    v128 = *(v1 + 464);
    v114 = *(v1 + 456);
    v79 = *(v1 + 448);
    v81 = *(v1 + 312);
    v80 = *(v1 + 320);
    v82 = *(v1 + 296);
    v83 = *(v1 + 288);
    v120 = *(v1 + 208);
    v123 = *(v1 + 440);
    v84 = *(v1 + 192);
    v109 = *(v1 + 304);
    v85 = *(v1 + 184);
    v112 = *(v1 + 128);
    v103 = *(v1 + 120);
    v105 = v85;
    v15(*(v1 + 384), *(v1 + 368));
    v86 = sub_22C90801C();
    v116 = v87;
    v118 = v86;
    *(v1 + 576) = v87;
    v88 = *(v82 + 16);
    v107 = v83;
    v88(v81, v80, v83);
    sub_22C9084DC();
    v88(v81, v80, v83);
    v89 = *(v79 + 16);
    *(v1 + 584) = v89;
    *(v1 + 592) = (v79 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v89(v128, v125, v123);
    (*(v84 + 16))(v120, v103, v85);
    v90 = (*(v82 + 80) + 24) & ~*(v82 + 80);
    v91 = (v109 + *(v79 + 80) + v90) & ~*(v79 + 80);
    v92 = (v114 + *(v84 + 80) + v91) & ~*(v84 + 80);
    v93 = swift_allocObject();
    *(v1 + 600) = v93;
    *(v93 + 16) = v112;
    (*(v82 + 32))(v93 + v90, v81, v107);
    (*(v79 + 32))(v93 + v91, v128, v123);
    (*(v84 + 32))(v93 + v92, v120, v105);

    v94 = swift_task_alloc();
    *(v1 + 608) = v94;
    v95 = MEMORY[0x277D1E508];
    sub_22C38B5F0(&qword_27D9C1380, MEMORY[0x277D1E508], MEMORY[0x277D1E518]);
    sub_22C38B5F0(&qword_27D9C1388, v95, MEMORY[0x277D1E510]);
    v96 = MEMORY[0x277D1D840];
    sub_22C38B5F0(&qword_27D9C1390, MEMORY[0x277D1D840], MEMORY[0x277D1D850]);
    sub_22C38B5F0(&qword_27D9C1398, v96, MEMORY[0x277D1D848]);
    *v94 = v1;
    v94[1] = sub_22C8C8BB8;
    v97 = *(v1 + 256);
    v98 = *(v1 + 240);
    v99 = *(v1 + 216);
    v100 = *(v1 + 232);

    return MEMORY[0x28215E710](v100, v118, v116, v97, &unk_22C92D248, v93, v98, v99);
  }

  sub_22C36DD28(v1 + 56, &qword_27D9C1360, &qword_22C92D218);
  sub_22C90405C();
  v61 = sub_22C9063CC();
  v62 = sub_22C90AADC();
  if (sub_22C370048(v62))
  {
    *sub_22C36D240() = 0;
    sub_22C372114();
    _os_log_impl(v63, v64, v65, v66, v67, 2u);
    sub_22C3699EC();
  }

  v68 = *(v1 + 448);
  v122 = *(v1 + 440);
  v126 = *(v1 + 472);
  v69 = *(v1 + 160);
  v71 = *(v1 + 136);
  v70 = *(v1 + 144);

  (*(v70 + 8))(v69, v71);
  v72 = sub_22C8D420C();
  v73 = sub_22C36FBE4(&type metadata for ResponseGenerationService.ResponseGenerationServiceError, v72);
  sub_22C8D5224(v73, v74, v75, v76);
  v77 = sub_22C36FC2C();
  v78(v77);
  (*(v68 + 8))(v126, v122);
LABEL_15:
  sub_22C8C9338(v14);

  sub_22C8D5294();

  sub_22C369A24();

  return v59();
}

uint64_t sub_22C8C8BB8()
{
  sub_22C36D5EC();
  v2 = *v1;
  sub_22C36D994();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 616) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {

    v6 = sub_22C8C912C;
  }

  else
  {

    v6 = sub_22C8C8D2C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22C8C8D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_22C60243C();
  sub_22C8D52C8();
  v97 = v40[73];
  v106 = v40[70];
  v41 = v40[58];
  v91 = v40[55];
  v93 = v40[59];
  v43 = v40[42];
  v42 = v40[43];
  v100 = v40[41];
  v44 = v40[34];
  v45 = v40[35];
  v95 = v40[33];
  v46 = v40[31];
  v86 = v40[30];
  v88 = v40[32];
  v48 = v40[28];
  v47 = v40[29];
  v49 = v40[27];
  v102 = v40[16];
  sub_22C9063EC();
  (*(v48 + 8))(v47, v49);
  (*(v46 + 8))(v88, v86);
  v97(v41, v93, v91);
  MEMORY[0x2318B4890](v41);
  (*(v44 + 16))(v42, v45, v95);
  (*(v43 + 104))(v42, *MEMORY[0x277D1E820], v100);
  sub_22C36BBCC();
  sub_22C90892C();
  v50 = sub_22C36D39C();
  v106(v50);
  if (*(v102 + 376))
  {
    v51 = v40[55];
    v49 = v40[21];

    sub_22C899F90();

    sub_22C9087FC();
    sub_22C36BECC();
    sub_22C36C640(v52, v53, v54, v51);
    sub_22C36CA88();
    sub_22C89E380();

    sub_22C36DD28(v49, &qword_27D9BB190, qword_22C90DD90);
  }

  v75 = v40[68];
  v76 = v40[69];
  v80 = v40[67];
  v81 = v40[66];
  v82 = v40[63];
  v83 = v40[62];
  v55 = v40[56];
  v78 = v40[55];
  v79 = v40[59];
  v56 = v40[53];
  v77 = v40[54];
  v57 = v40[51];
  v84 = v40[58];
  v85 = v40[50];
  v87 = v40[49];
  v89 = v40[48];
  v90 = v40[45];
  v92 = v40[44];
  v94 = v40[43];
  v96 = v40[39];
  v58 = v40[37];
  v73 = v40[36];
  v74 = v40[40];
  v59 = v40[34];
  v60 = v40[35];
  v61 = v40[33];
  v99 = v40[32];
  v101 = v40[29];
  v103 = v40[26];
  v104 = v40[22];
  v105 = v40[21];
  v107 = v40[20];
  v108 = v40[19];
  sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
  sub_22C8D52A8();
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_22C90F800;
  v75(v98 + v49, v56, v57);
  (*(v59 + 8))(v60, v61);
  (*(v58 + 8))(v74, v73);
  v62 = sub_22C36ECB4();
  v63(v62);
  (*(v55 + 8))(v79, v78);
  sub_22C36FF94(v40 + 2);
  sub_22C8C9338(v80);

  sub_22C36D5E0();
  sub_22C37BEB8();

  return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v87, v89, v90, v92, v94, v96, v98, v99, v101, v103, v104, v105, v107, v108, a37, a38, a39, a40);
}

uint64_t sub_22C8C912C()
{
  v1 = v0[67];
  v10 = v0[59];
  v2 = v0[55];
  v3 = v0[56];
  (*(v0[31] + 8))(v0[32], v0[30]);
  v4 = sub_22C36FC2C();
  v5(v4);
  v6 = sub_22C36ECB4();
  v7(v6);
  (*(v3 + 8))(v10, v2);
  sub_22C36FF94(v0 + 2);
  sub_22C8C9338(v1);

  sub_22C8D5294();

  sub_22C382AE4();

  return v8();
}

uint64_t sub_22C8C9338(uint64_t a1)
{
  v29 = sub_22C90637C();
  v27 = *(v29 - 1);
  MEMORY[0x28223BE20](v29);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9036AC();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v28 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v24 = v8;
    v25 = v7;
    v26 = v3;

    sub_22C9063BC();

    v12 = v27;
    v13 = v29;
    if ((*(v27 + 88))(v2, v29) == *MEMORY[0x277D85B00])
    {
      v14 = 0;
      v15 = 0;
      v29 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v2, v13);
      v29 = "%s";
      v15 = 2;
      v14 = 1;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = v15;
    *(v17 + 1) = v14;
    *(v17 + 2) = 2080;
    sub_22C90366C();
    v19 = sub_22C90AF7C();
    v21 = sub_22C36F9F4(v19, v20, &v30);

    *(v17 + 4) = v21;
    v22 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v28, v22, "ResponseGeneration.overall", v29, v17, 0xCu);
    sub_22C36FF94(v18);
    MEMORY[0x2318B9880](v18, -1, -1);
    MEMORY[0x2318B9880](v17, -1, -1);

    (*(v4 + 8))(v6, v26);
    return (*(v24 + 8))(v10, v25);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_22C8C96DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a1;
  sub_22C3A5908(&qword_27D9C10D0, &qword_22C92BFA0);
  v6[7] = swift_task_alloc();
  v8 = sub_22C9025AC();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8C97EC, a3, 0);
}

uint64_t sub_22C8C97EC()
{
  sub_22C369980();
  sub_22C90878C();
  sub_22C90880C();
  sub_22C36BECC();
  sub_22C36C640(v1, v2, v3, v4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 96) = v5;
  *v5 = v6;
  v5[1] = sub_22C8C98A8;

  return sub_22C8CA098();
}

uint64_t sub_22C8C98A8()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v4 = v3;
  v5 = *(v1 + 56);
  *v4 = *v2;
  *(v3 + 104) = v0;

  sub_22C36DD28(v5, &qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C6343B0();
  sub_22C37E810();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C8C99E8()
{
  sub_22C36D5EC();
  v0 = sub_22C36BA00();
  v1(v0);
  sub_22C9063FC();
  v2 = sub_22C37170C();
  v3(v2);

  sub_22C369C50();

  return v4();
}

uint64_t sub_22C8C9AAC()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C8C9B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C9026BC();
  v7 = sub_22C369914(v6);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v76 = v9 - v8;
  sub_22C36BA0C();
  v75 = sub_22C907DEC();
  sub_22C369824();
  v71 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v74 = v13 - v12;
  v14 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v15 = sub_22C369914(v14);
  MEMORY[0x28223BE20](v15);
  v77 = v65 - v16;
  sub_22C36BA0C();
  v17 = sub_22C901FAC();
  v18 = sub_22C369914(v17);
  MEMORY[0x28223BE20](v18);
  sub_22C369ABC();
  v81 = v19 - v20;
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  v80 = v65 - v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  v79 = v24;
  v25 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v26 = sub_22C369914(v25);
  MEMORY[0x28223BE20](v26);
  v78 = v65 - v27;
  sub_22C36BA0C();
  v28 = sub_22C906ECC();
  sub_22C369824();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v34 = v33 - v32;
  v73 = sub_22C902B3C();
  sub_22C369824();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  sub_22C369838();
  v72 = v39 - v38;
  v40 = sub_22C36D39C();
  v42 = sub_22C3A5908(v40, v41);
  v43 = sub_22C369914(v42);
  MEMORY[0x28223BE20](v43);
  v45 = v65 - v44;
  v46 = a2;
  sub_22C6AEA50(a1, v65 - v44, &qword_27D9BC428, &unk_22C912FD0);
  v47 = *(a2 + 16);
  if (v47)
  {
    v65[1] = v45;
    v65[2] = a3;
    v82 = MEMORY[0x277D84F90];
    sub_22C3B6A1C(0, v47, 0);
    v48 = v82;
    v49 = v30 + 16;
    sub_22C36BA94();
    v51 = v46 + v50;
    v68 = *(v49 + 56);
    v69 = v52;
    v66 = (v49 - 8);
    v67 = (v71 + 8);
    v53 = v36;
    v65[3] = v36 + 32;
    v54 = v77;
    v70 = v53;
    v71 = v49;
    do
    {
      v69(v34, v51, v28);
      sub_22C906E5C();
      sub_22C906E1C();
      sub_22C906DFC();
      sub_22C906DEC();
      sub_22C906E9C();
      v55 = sub_22C90769C();
      sub_22C36D0A8(v54, 1, v55);
      if (v56)
      {
        sub_22C36DD28(v54, &qword_27D9BF330, &unk_22C923250);
      }

      else
      {
        sub_22C90768C();
        sub_22C36BBA8();
        (*(v57 + 8))(v54, v55);
      }

      v58 = v74;
      sub_22C906EBC();
      sub_22C36D484();
      sub_22C907DAC();
      (*v67)(v58, v75);
      v59 = v72;
      sub_22C902B0C();
      (*v66)(v34, v28);
      v82 = v48;
      v61 = *(v48 + 16);
      v60 = *(v48 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_22C3B6A1C(v60 > 1, v61 + 1, 1);
        v48 = v82;
      }

      *(v48 + 16) = v61 + 1;
      v62 = v70;
      sub_22C36BA94();
      (*(v62 + 32))(v48 + v63 + *(v62 + 72) * v61, v59, v73);
      v51 += v68;
      --v47;
      v54 = v77;
    }

    while (v47);
  }

  return sub_22C90257C();
}

uint64_t sub_22C8CA098()
{
  sub_22C369980();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_22C90454C();
  v1[13] = v6;
  sub_22C3699B8(v6);
  v1[14] = v7;
  v1[15] = sub_22C3699D4();
  v8 = sub_22C90240C();
  v1[16] = v8;
  sub_22C3699B8(v8);
  v1[17] = v9;
  v1[18] = sub_22C3699D4();
  v10 = sub_22C9063DC();
  v1[19] = v10;
  sub_22C3699B8(v10);
  v1[20] = v11;
  v1[21] = sub_22C3856B8();
  v12 = swift_task_alloc();
  sub_22C8D525C(v12);
  v13 = sub_22C901FAC();
  v1[23] = v13;
  sub_22C3699B8(v13);
  v1[24] = v14;
  v1[25] = sub_22C3699D4();
  v15 = type metadata accessor for ResponseGenerationTriageReport(0);
  sub_22C369914(v15);
  v1[26] = sub_22C3856B8();
  v1[27] = swift_task_alloc();
  v16 = sub_22C3A5908(&qword_27D9BC428, &unk_22C912FD0);
  sub_22C369914(v16);
  v1[28] = sub_22C3699D4();
  v17 = sub_22C9025AC();
  v1[29] = v17;
  sub_22C3699B8(v17);
  v1[30] = v18;
  v1[31] = sub_22C3699D4();
  v19 = sub_22C9023DC();
  sub_22C369914(v19);
  v1[32] = sub_22C3699D4();
  v20 = sub_22C3A5908(&qword_27D9BC430, &qword_22C92BFD0);
  sub_22C369914(v20);
  v1[33] = sub_22C3856B8();
  v1[34] = swift_task_alloc();
  v21 = sub_22C90241C();
  v1[35] = v21;
  sub_22C3699B8(v21);
  v1[36] = v22;
  v1[37] = sub_22C3699D4();
  v23 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  sub_22C369914(v23);
  v1[38] = sub_22C3699D4();
  v24 = sub_22C90243C();
  v1[39] = v24;
  sub_22C3699B8(v24);
  v1[40] = v25;
  v1[41] = sub_22C3699D4();
  v26 = sub_22C907DEC();
  v1[42] = v26;
  sub_22C3699B8(v26);
  v1[43] = v27;
  v1[44] = sub_22C3856B8();
  v1[45] = swift_task_alloc();
  v28 = sub_22C906ECC();
  v1[46] = v28;
  sub_22C3699B8(v28);
  v1[47] = v29;
  v1[48] = sub_22C3856B8();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v30 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v30);
  v1[51] = sub_22C3856B8();
  v1[52] = swift_task_alloc();
  v31 = sub_22C3A5908(&qword_27D9BF850, &qword_22C92D260);
  sub_22C369914(v31);
  v1[53] = sub_22C3699D4();
  v32 = sub_22C3A5908(&qword_27D9C13A0, &qword_22C92D268);
  sub_22C369914(v32);
  v1[54] = sub_22C3856B8();
  v1[55] = swift_task_alloc();
  v33 = sub_22C90077C();
  v1[56] = v33;
  sub_22C3699B8(v33);
  v1[57] = v34;
  v1[58] = sub_22C3699D4();
  v35 = sub_22C3A5908(&qword_27D9C13A8, &unk_22C92D270);
  sub_22C369914(v35);
  v1[59] = sub_22C3856B8();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v36 = sub_22C3A5908(&qword_27D9C0F60, &qword_22C92B9A0);
  sub_22C369914(v36);
  v1[67] = sub_22C3699D4();
  v37 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

uint64_t sub_22C8CA640()
{
  sub_22C36D5EC();
  v2 = v0[12];
  if (v2[47])
  {
    v3 = v0[67];

    sub_22C899F90();
    sub_22C8D5138();
    v4 = sub_22C90806C();
    sub_22C36985C();
    v5 = sub_22C36BAFC();
    v6(v5);
    sub_22C36BECC();
    sub_22C36C640(v7, v8, v9, v4);
    v10 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_input;
    sub_22C79D0C0(v1 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_input, (v0 + 2));
    sub_22C8D4400(v3, v1 + v10, &qword_27D9C0F60, &qword_22C92B9A0);
    swift_endAccess();

    v2 = v0[12];
  }

  v11 = v2[25];
  sub_22C374168(v2 + 21, v2[24]);
  v12 = sub_22C90801C();
  (*(v11 + 8))(v12);

  swift_task_alloc();
  sub_22C36CC90();
  v0[68] = v13;
  *v13 = v14;
  v13[1] = sub_22C8CA7E0;

  return sub_22C8CBAA4();
}

uint64_t sub_22C8CA7E0()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 552) = v0;

  sub_22C6343B0();
  sub_22C37E810();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8CA8F4()
{
  sub_22C36FB38();
  sub_22C6AE8BC(v0[65], v0[66], &qword_27D9C13A8, &unk_22C92D270);
  v1 = sub_22C3A5908(&qword_27D9BE320, &qword_22C91D8A0);
  v2 = sub_22C37B150(v1);
  v0[70] = v2;
  *(v2 + 16) = xmmword_22C90F800;
  sub_22C90802C();
  sub_22C907FFC();
  v3 = swift_task_alloc();
  v0[71] = v3;
  *v3 = v0;
  sub_22C8D4FC0(v3);

  return sub_22C8CDE78();
}

uint64_t sub_22C8CA9CC()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v2 = *(v1 + 96);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;
  *(v6 + 576) = v5;

  v7 = sub_22C36BBCC();
  v8(v7);

  return MEMORY[0x2822009F8](sub_22C8CAB2C, v2, 0);
}

uint64_t sub_22C8CAB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_22C60243C();
  a47 = v49;
  a48 = v50;
  sub_22C8D52C8();
  a46 = v48;
  v51 = *(v48 + 416);
  sub_22C8CECDC(*(v48 + 560), *(v48 + 440));
  sub_22C90802C();
  sub_22C906EBC();
  v52 = sub_22C36D39C();
  v220 = v53;
  v53(v52);
  sub_22C907DDC();
  v54 = sub_22C36CA88();
  v215 = v55;
  v55(v54);
  v56 = sub_22C9026AC();
  sub_22C369A54(v51);
  if (v57)
  {
    v58 = *(v48 + 416);
    v59 = &qword_27D9BF328;
    v60 = &qword_22C9225C0;
LABEL_6:
    sub_22C36DD28(v58, v59, v60);
    goto LABEL_8;
  }

  sub_22C90269C();
  sub_22C36BBA8();
  v61 = sub_22C36BBCC();
  v62(v61);
  v63 = sub_22C90256C();
  v64 = sub_22C37EF1C();
  v66 = sub_22C370B74(v64, v65, v63);
  if (v66 == 1)
  {
    v59 = &qword_27D9BF850;
    v60 = &qword_22C92D260;
    v58 = *(v48 + 424);
    goto LABEL_6;
  }

  sub_22C90255C();
  sub_22C36BBA8();
  v67 = sub_22C37170C();
  v68(v67);
  sub_22C90242C();
  v69 = sub_22C36ECB4();
  v70(v69);
LABEL_8:
  sub_22C90802C();
  sub_22C906EBC();
  v71 = sub_22C36CA88();
  v220(v71);
  sub_22C907DDC();
  v72 = sub_22C3726C4();
  v215(v72);
  v73 = sub_22C37EF1C();
  v75 = sub_22C370B74(v73, v74, v56);
  v76 = *(v48 + 408);
  if (v75 == 1)
  {
    v77 = &qword_27D9BF328;
    v78 = &qword_22C9225C0;
LABEL_12:
    sub_22C36DD28(v76, v77, v78);
    goto LABEL_14;
  }

  sub_22C90268C();
  sub_22C36BBA8();
  v79 = sub_22C36BBCC();
  v80(v79);
  v81 = sub_22C90234C();
  v82 = sub_22C37EF1C();
  v84 = sub_22C370B74(v82, v83, v81);
  v76 = *(v48 + 304);
  if (v84 == 1)
  {
    v77 = &qword_27D9BAB60;
    v78 = &unk_22C90D400;
    goto LABEL_12;
  }

  sub_22C9022CC();
  sub_22C36BBA8();
  v85 = sub_22C36BBCC();
  v86(v85);
LABEL_14:
  sub_22C6AEA50(*(v48 + 528), *(v48 + 512), &qword_27D9C13A8, &unk_22C92D270);
  v87 = type metadata accessor for DialogOutput(0);
  v88 = sub_22C3707B4();
  if (sub_22C370B74(v88, v89, v87) == 1)
  {
    sub_22C36DD28(*(v48 + 512), &qword_27D9C13A8, &unk_22C92D270);
    v90 = 1;
  }

  else
  {
    (*(*(v48 + 136) + 16))(*(v48 + 272), *(v48 + 512), *(v48 + 128));
    sub_22C370B38();
    v90 = 0;
  }

  v91 = *(v48 + 528);
  v92 = *(v48 + 504);
  sub_22C36C640(*(v48 + 272), v90, 1, *(v48 + 128));
  sub_22C6AEA50(v91, v92, &qword_27D9C13A8, &unk_22C92D270);
  v93 = sub_22C370B74(v92, 1, v87);
  v94 = *(v48 + 504);
  v216 = v87;
  if (v93 == 1)
  {
    sub_22C36DD28(v94, &qword_27D9C13A8, &unk_22C92D270);
    v95 = 1;
  }

  else
  {
    (*(*(v48 + 136) + 16))(*(v48 + 264), v94 + *(v87 + 20), *(v48 + 128));
    sub_22C370B38();
    v95 = 0;
  }

  v96 = *(v48 + 560);
  v98 = *(v48 + 432);
  v97 = *(v48 + 440);
  v99 = *(v48 + 376);
  v100 = *(v48 + 384);
  v101 = *(v48 + 368);
  v102 = (*(v48 + 584) + 32) & ~*(v48 + 584);
  sub_22C36C640(*(v48 + 264), v95, 1, *(v48 + 128));
  sub_22C6AEA50(v97, v98, &qword_27D9C13A0, &qword_22C92D268);
  a36 = MEMORY[0x277D84F90];
  sub_22C3B6EDC();
  v103 = a36;
  (*(v99 + 16))(v100, v96 + v102, v101);
  sub_22C906E1C();
  v104 = sub_22C3726C4();
  v220(v104);
  v105 = *(v103 + 16);
  v106 = v105 + 1;
  if (v105 >= *(v103 + 24) >> 1)
  {
    sub_22C3B6EDC();
    v106 = v105 + 1;
    v103 = a36;
  }

  v211 = *(v48 + 560);
  v107 = *(v48 + 288);
  v108 = *(v48 + 296);
  v109 = *(v48 + 280);
  v204 = *(v48 + 248);
  v110 = *(v48 + 224);
  v112 = *(v48 + 192);
  v111 = *(v48 + 200);
  v113 = *(v48 + 184);
  v221 = *(v48 + 96);
  *(v103 + 16) = v106;
  (*(v112 + 32))(v103 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v105, v111, v113);
  sub_22C9023CC();
  sub_22C37275C();
  sub_22C9023EC();
  (*(v107 + 16))(v110, v108, v109);
  sub_22C36BECC();
  sub_22C36C640(v114, v115, v116, v109);
  sub_22C8C9B1C(v110, v211, v204);

  sub_22C36DD28(v110, &qword_27D9BC428, &unk_22C912FD0);
  if (*(v221 + 376))
  {
    v117 = *(v48 + 216);
    v118 = *(v48 + 96);

    sub_22C89CA2C();

    v119 = sub_22C36BAFC();
    sub_22C8D4F1C(v119, v120);
    v121 = v118[25];
    sub_22C374168(v118 + 21, v118[24]);
    v122 = sub_22C90801C();
    (*(v121 + 16))(v122);

    sub_22C8D4D04(v117, type metadata accessor for ResponseGenerationTriageReport);
  }

  sub_22C90405C();
  v123 = sub_22C36BBCC();
  sub_22C6AEA50(v123, v124, &qword_27D9C13A8, &unk_22C92D270);
  v125 = sub_22C37170C();
  sub_22C6AEA50(v125, v126, &qword_27D9C13A8, &unk_22C92D270);

  v127 = sub_22C9063CC();
  v128 = sub_22C90AABC();

  if (os_log_type_enabled(v127, v128))
  {
    v212 = v128;
    v129 = swift_slowAlloc();
    a36 = swift_slowAlloc();
    *v129 = 136643331;
    v130 = sub_22C36BBCC();
    sub_22C6AEA50(v130, v131, v132, v133);
    v134 = sub_22C36CCF8();
    v222 = v127;
    if (sub_22C370B74(v134, v135, v216) == 1)
    {
      sub_22C36DD28(*(v48 + 480), &qword_27D9C13A8, &unk_22C92D270);
      v136 = 0xE300000000000000;
      v137 = 7104878;
    }

    else
    {
      v147 = *(v48 + 136);
      v146 = *(v48 + 144);
      v148 = *(v48 + 128);
      v149 = sub_22C36BA00();
      v150(v149);
      sub_22C370B38();
      v137 = sub_22C9023FC();
      v136 = v151;
      (*(v147 + 8))(v146, v148);
    }

    v152 = *(v48 + 488);
    v153 = *(v48 + 472);
    sub_22C36DD28(*(v48 + 496), &qword_27D9C13A8, &unk_22C92D270);
    v154 = sub_22C36F9F4(v137, v136, &a36);

    *(v129 + 4) = v154;
    *(v129 + 12) = 2085;
    sub_22C6AEA50(v152, v153, &qword_27D9C13A8, &unk_22C92D270);
    if (sub_22C370B74(v153, 1, v216) == 1)
    {
      sub_22C36DD28(*(v48 + 472), &qword_27D9C13A8, &unk_22C92D270);
    }

    else
    {
      (*(*(v48 + 136) + 16))(*(v48 + 144), *(v48 + 472) + *(v216 + 20), *(v48 + 128));
      sub_22C370B38();
      sub_22C9023FC();
      v155 = sub_22C36CA88();
      v156(v155);
    }

    v157 = *(v48 + 96);
    sub_22C36DD28(*(v48 + 488), &qword_27D9C13A8, &unk_22C92D270);
    v158 = sub_22C36BA00();
    v161 = sub_22C36F9F4(v158, v159, v160);

    *(v129 + 14) = v161;
    *(v129 + 22) = 2080;
    if (*(v157 + 376))
    {
      v163 = *(v48 + 112);
      v162 = *(v48 + 120);
      v164 = *(v48 + 104);

      v165 = sub_22C899F90();

      v166 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
      sub_22C36CA70(v165 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source, v48 + 40);
      (*(v163 + 16))(v162, v165 + v166, v164);

      v167 = sub_22C90453C();
      v169 = v168;
      (*(v163 + 8))(v162, v164);
    }

    else
    {
      v169 = 0xE300000000000000;
      v167 = 7104878;
    }

    v218 = *(v48 + 528);
    v170 = *(v48 + 288);
    v206 = *(v48 + 296);
    v208 = *(v48 + 440);
    v171 = *(v48 + 280);
    v172 = *(v48 + 176);
    v174 = *(v48 + 152);
    v173 = *(v48 + 160);
    v175 = sub_22C36F9F4(v167, v169, &a36);

    *(v129 + 24) = v175;
    _os_log_impl(&dword_22C366000, v222, v212, "Returning system response with dialog response\nprint: %{sensitive}s\nspeak: %{sensitive}s\nsource: %s", v129, 0x20u);
    swift_arrayDestroy();
    sub_22C36BAE0();
    sub_22C3699EC();

    (*(v173 + 8))(v172, v174);
    (*(v170 + 8))(v206, v171);
    sub_22C36DD28(v208, &qword_27D9C13A0, &qword_22C92D268);
    v145 = v218;
  }

  else
  {
    v138 = v127;
    v140 = *(v48 + 488);
    v139 = *(v48 + 496);
    v213 = *(v48 + 440);
    v217 = *(v48 + 528);

    sub_22C36DD28(v140, &qword_27D9C13A8, &unk_22C92D270);
    sub_22C36DD28(v139, &qword_27D9C13A8, &unk_22C92D270);
    v141 = sub_22C3726C4();
    v142(v141);
    v143 = sub_22C36CA88();
    v144(v143);
    sub_22C36DD28(v213, &qword_27D9C13A0, &qword_22C92D268);
    v145 = v217;
  }

  sub_22C36DD28(v145, &qword_27D9C13A8, &unk_22C92D270);
  v185 = *(v48 + 464);
  v186 = *(v48 + 440);
  v187 = *(v48 + 432);
  v188 = *(v48 + 424);
  v189 = *(v48 + 416);
  v190 = *(v48 + 408);
  v191 = *(v48 + 400);
  v192 = *(v48 + 392);
  v193 = *(v48 + 384);
  v194 = *(v48 + 360);
  v195 = *(v48 + 352);
  v196 = *(v48 + 328);
  v198 = *(v48 + 304);
  v199 = *(v48 + 296);
  v200 = *(v48 + 272);
  v201 = *(v48 + 264);
  v197 = *(v48 + 248);
  v202 = *(v48 + 256);
  v203 = *(v48 + 224);
  v205 = *(v48 + 216);
  v207 = *(v48 + 208);
  v209 = *(v48 + 200);
  v210 = *(v48 + 176);
  v214 = *(v48 + 168);
  v219 = *(v48 + 144);
  v223 = *(v48 + 120);
  (*(*(v48 + 240) + 32))(*(v48 + 64));

  sub_22C369C50();
  sub_22C37BEB8();

  return v177(v176, v177, v178, v179, v180, v181, v182, v183, a9, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v205, v207, v209, v210, v214, v219, v223, a36, a37, a38, a39, a40);
}

uint64_t sub_22C8CB884()
{
  sub_22C36D5EC();
  v1 = v0[69];
  sub_22C90405C();
  v2 = v1;
  v3 = sub_22C9063CC();
  v4 = sub_22C90AADC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[69];
  if (v5)
  {
    v7 = sub_22C36FB44();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    sub_22C372114();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_22C36DD28(v8, &qword_27D9BB158, qword_22C910FD0);
    sub_22C36BAE0();
    sub_22C3699EC();
  }

  else
  {
  }

  v16 = v0[66];
  v17 = v0[16];
  v18 = v0[17];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v19 = *MEMORY[0x277D1C9F0];
  v20 = *(v18 + 104);
  v20(v16, v19, v17);
  v21 = type metadata accessor for DialogOutput(0);
  v20(v16 + *(v21 + 20), v19, v17);
  sub_22C36BECC();
  sub_22C36C640(v22, v23, v24, v21);
  v25 = sub_22C3A5908(&qword_27D9BE320, &qword_22C91D8A0);
  v26 = sub_22C37B150(v25);
  v0[70] = v26;
  *(v26 + 16) = xmmword_22C90F800;
  sub_22C90802C();
  sub_22C907FFC();
  v27 = swift_task_alloc();
  v0[71] = v27;
  *v27 = v0;
  sub_22C8D4FC0(v27);

  return sub_22C8CDE78();
}

uint64_t sub_22C8CBAA4()
{
  sub_22C369980();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v5 = sub_22C90806C();
  v1[49] = v5;
  sub_22C3699B8(v5);
  v1[50] = v6;
  v1[51] = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9C13A8, &unk_22C92D270);
  sub_22C369914(v7);
  v1[52] = sub_22C3699D4();
  v8 = type metadata accessor for DialogOutput(0);
  v1[53] = v8;
  sub_22C369914(v8);
  v1[54] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9C1450, &qword_22C92D668);
  sub_22C369914(v9);
  v1[55] = sub_22C3699D4();
  v10 = sub_22C907C5C();
  v1[56] = v10;
  sub_22C3699B8(v10);
  v1[57] = v11;
  v1[58] = sub_22C3699D4();
  v12 = sub_22C9026BC();
  v1[59] = v12;
  sub_22C3699B8(v12);
  v1[60] = v13;
  v1[61] = sub_22C3699D4();
  v14 = sub_22C90687C();
  v1[62] = v14;
  sub_22C3699B8(v14);
  v1[63] = v15;
  v1[64] = sub_22C3699D4();
  v16 = sub_22C90454C();
  v1[65] = v16;
  sub_22C3699B8(v16);
  v1[66] = v17;
  v1[67] = sub_22C3856B8();
  v1[68] = swift_task_alloc();
  v18 = sub_22C90077C();
  v1[69] = v18;
  sub_22C3699B8(v18);
  v1[70] = v19;
  v1[71] = sub_22C3699D4();
  v20 = sub_22C9063DC();
  v1[72] = v20;
  sub_22C3699B8(v20);
  v1[73] = v21;
  v1[74] = sub_22C3856B8();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v22 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  sub_22C369914(v22);
  v1[78] = sub_22C3699D4();
  v23 = sub_22C90234C();
  v1[79] = v23;
  sub_22C3699B8(v23);
  v1[80] = v24;
  v1[81] = sub_22C3856B8();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v25 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v25);
  v1[84] = sub_22C3856B8();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v26 = sub_22C907DEC();
  v1[87] = v26;
  sub_22C3699B8(v26);
  v1[88] = v27;
  v1[89] = sub_22C3856B8();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v28 = sub_22C906ECC();
  v1[93] = v28;
  sub_22C3699B8(v28);
  v1[94] = v29;
  v1[95] = sub_22C3856B8();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v30 = sub_22C9026AC();
  v1[99] = v30;
  sub_22C3699B8(v30);
  v1[100] = v31;
  v1[101] = sub_22C3699D4();
  v32 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_22C8CBFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (**a23)(void, void), uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void (*a29)(uint64_t), uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40)
{
  sub_22C36CAD0();
  a39 = v41;
  a40 = v42;
  sub_22C37B668();
  a38 = v40;
  v43 = v40[94];
  v44 = v40[88];
  v45 = v40[86];
  sub_22C90802C();
  sub_22C906EBC();
  v46 = sub_22C36D264();
  v219 = v43 + 8;
  v217 = v47;
  (v47)(v46);
  sub_22C907DDC();
  v48 = sub_22C36CA88();
  v218 = v44 + 8;
  v216 = v49;
  v49(v48);
  sub_22C369A54(v45);
  if (v69)
  {
    sub_22C36DD28(v40[86], &qword_27D9BF328, &qword_22C9225C0);
  }

  else
  {
    (*(v40[100] + 32))(v40[101], v40[86], v40[99]);
    sub_22C87A000();
    v51 = v50;
    v52 = sub_22C36BAFC();
    v53(v52);
    if (v51)
    {
      v54 = v40[53];

      sub_22C36A748();
      v58 = v54;
      goto LABEL_50;
    }
  }

  v59 = v40[85];
  sub_22C90802C();
  sub_22C906EBC();
  v60 = sub_22C36D264();
  (v217)(v60);
  sub_22C907DDC();
  v61 = sub_22C36CA88();
  v216(v61);
  sub_22C369A54(v59);
  if (v69)
  {
    v62 = v40[79];
    sub_22C36DD28(v40[85], &qword_27D9BF328, &qword_22C9225C0);
    sub_22C36A748();
    sub_22C36C640(v63, v64, v65, v62);
  }

  else
  {
    v66 = v40[78];
    sub_22C90268C();
    v67 = sub_22C36BBCC();
    v68(v67);
    sub_22C376738(v66);
    if (!v69)
    {
      (*(v40[80] + 32))(v40[83], v40[78], v40[79]);
      sub_22C90405C();
      v104 = sub_22C9063CC();
      v105 = sub_22C90AACC();
      if (sub_22C36FBB4(v105))
      {
        v217 = v40[73];
        v218 = v40[72];
        v219 = v40[77];
        v107 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        a29 = v216;
        *v107 = 136643587;
        sub_22C37E200(v216, (v40 + 33));
        v108 = sub_22C9022FC();
        v110 = v109;
        swift_endAccess();
        v111 = sub_22C36F9F4(v108, v110, &a29);

        *(v107 + 4) = v111;
        v113 = 2085;
        *(v107 + 12) = 2085;
        sub_22C37E200(v112, (v40 + 36));
        v114 = sub_22C90231C();
        v116 = v115;
        swift_endAccess();
        if (v116)
        {
          v117 = v114;
        }

        else
        {
          v117 = 7104878;
        }

        if (v116)
        {
          v118 = v116;
        }

        else
        {
          v118 = 0xE300000000000000;
        }

        v119 = sub_22C36F9F4(v117, v118, &a29);

        *(v107 + 14) = v119;
        *(v107 + 22) = 2085;
        sub_22C37E200(v120, (v40 + 39));
        v121 = sub_22C90228C();
        v123 = v122;
        swift_endAccess();
        if (v123)
        {
          v124 = v121;
        }

        else
        {
          v124 = 7104878;
        }

        if (v123)
        {
          v125 = v123;
        }

        else
        {
          v125 = 0xE300000000000000;
        }

        v126 = sub_22C36F9F4(v124, v125, &a29);

        *(v107 + 24) = v126;
        *(v107 + 32) = 2085;
        sub_22C37E200(v127, (v40 + 42));
        v128 = sub_22C9022AC();
        v130 = v129;
        swift_endAccess();
        if (v130)
        {
          v131 = v128;
        }

        else
        {
          v131 = 7104878;
        }

        if (v130)
        {
          v132 = v130;
        }

        else
        {
          v132 = 0xE300000000000000;
        }

        v133 = sub_22C36F9F4(v131, v132, &a29);

        *(v107 + 34) = v133;
        _os_log_impl(&dword_22C366000, v104, v105, "Passing through dialog\nfullPrint: %{sensitive}s\nfullSpeak: %{sensitive}s\nsupportingPrint: %{sensitive}s\nsupportingSpeak: %{sensitive}s", v107, 0x2Au);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C36BAE0();

        v217[1](v219, v218);
      }

      else
      {
        sub_22C8D52BC();

        v113 = v66 + 8;
        v134 = sub_22C37170C();
        v135(v134);
      }

      if ((_AFSupportPreferencesBoolForKeyWithDefault() & 1) == 0)
      {
        v136 = v40[83];
        sub_22C8D517C();
        sub_22C36CA70(v136, (v40 + 18));
        sub_22C907FFC();
        sub_22C9006BC();
        v137 = sub_22C36CA88();
        v138(v137);
        v139 = sub_22C379FC8();
        sub_22C8CDA9C(v139);

        swift_beginAccess();
        v140 = sub_22C36BAFC();
        v141(v140);
      }

      v142 = v40[48];
      if (*(v142 + 376))
      {
        v143 = v40[68];
        v144 = v40[66];
        v145 = v40[65];

        sub_22C899F90();
        sub_22C8D5138();
        (*(v144 + 104))(v143, *MEMORY[0x277D1FAC8], v145);
        sub_22C79D0C0(v113 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source, (v40 + 24));
        sub_22C37275C();
        v146();
        swift_endAccess();

        if (*(v142 + 376))
        {
          v147 = v40[83];

          sub_22C899F90();
          sub_22C3815C0();
          swift_beginAccess();
          sub_22C9022CC();
          sub_22C8D5288();
          swift_endAccess();
          v148 = (v145 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_catId);
          *v148 = v147;
          v148[1] = v147;
        }
      }

      v149 = v40[53];
      v150 = v40[45];
      sub_22C36CA70(v40[83], (v40 + 30));
      sub_22C907FDC();
      sub_22C87E5A8(v150);
      v151 = sub_22C36ECB4();
      v152(v151);
      sub_22C36BECC();
      sub_22C36C640(v153, v154, v155, v149);
      v156 = sub_22C36BAFC();
      v157(v156);
      goto LABEL_51;
    }
  }

  sub_22C36DD28(v40[78], &qword_27D9BAB60, &unk_22C90D400);
  sub_22C90802C();
  sub_22C906EBC();
  v70 = sub_22C36BAFC();
  (v217)(v70);
  sub_22C907DAC();
  v71 = sub_22C36ECB4();
  v216(v71);
  v72 = sub_22C36FC2C();
  v74 = v73(v72);
  v75 = *MEMORY[0x277D1CB98];
  v76 = sub_22C36FC2C();
  v77(v76);
  if (v74 == v75)
  {
    v78 = v40[53];
    v79 = v40[45];
    v80 = *MEMORY[0x277D1C9F0];
    v81 = sub_22C90240C();
    sub_22C36985C();
    v83 = *(v82 + 104);
    v83(v79, v80, v81);
    v83(v79 + *(v78 + 20), v80, v81);
    sub_22C36BECC();
    v58 = v78;
  }

  else
  {
    v84 = v40[100];
    v85 = v40[57];
    result = sub_22C90804C();
    v87 = 0;
    a20 = v84 + 8;
    a21 = v85 + 16;
    a22 = v85;
    a23 = (v85 + 8);
    a24 = *(result + 16);
    while (a24 != v87)
    {
      if (v87 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v88 = v40[84];
      v89 = v40[58];
      sub_22C36BA94();
      v91 = v90;
      (*(v93 + 16))(v89, v90 + v92 + *(v93 + 72) * v87);
      sub_22C907C0C();
      sub_22C906EBC();
      v94 = sub_22C36ECB4();
      (v217)(v94);
      sub_22C907DDC();
      v95 = sub_22C36FC2C();
      v216(v95);
      sub_22C376738(v88);
      if (v69)
      {
        v186 = v40[84];
        v187 = &qword_27D9BF328;
        v188 = &qword_22C9225C0;
LABEL_56:
        sub_22C36DD28(v186, v187, v188);
        (*a23)(v40[58], v40[56]);
LABEL_57:
        v189 = v40[48];

        sub_22C36CA70(v189 + 208, (v40 + 12));
        sub_22C6AEA50(v189 + 208, (v40 + 2), &qword_27D9C1368, &qword_22C92D220);
        if (v40[5])
        {
          sub_22C8D4E6C((v40 + 2), (v40 + 7));
          sub_22C36DD28((v40 + 2), &qword_27D9C1368, &qword_22C92D220);
          swift_task_alloc();
          sub_22C36CC90();
          v40[102] = v190;
          *v190 = v191;
          v190[1] = sub_22C8CCDB8;
          sub_22C37F7CC();

          return sub_22C892588(v192, v193);
        }

        else
        {
          v195 = v40[53];
          sub_22C36DD28((v40 + 2), &qword_27D9C1368, &qword_22C92D220);
          sub_22C36A748();
          sub_22C36C640(v196, v197, v198, v195);
          sub_22C36DD28(v40[52], &qword_27D9C13A8, &unk_22C92D270);
          sub_22C90405C();
          v199 = sub_22C36D39C();
          v200(v199);
          v201 = sub_22C9063CC();
          v202 = sub_22C90AACC();
          if (sub_22C36FBB4(v202))
          {
            v203 = sub_22C36FB44();
            *v203 = 134217984;
            v204 = *(sub_22C90804C() + 16);

            v205 = sub_22C8D50F8();
            v206(v205);
            *(v203 + 4) = v204;
            sub_22C8D52F4(&dword_22C366000, v207, v208, "Generating dialog for %ld tool results");
            sub_22C36BAE0();
          }

          else
          {
            v209 = sub_22C8D50F8();
            v210(v209);
          }

          sub_22C8D52BC();

          v211 = sub_22C37170C();
          v212(v211);
          swift_task_alloc();
          sub_22C36CC90();
          v40[104] = v213;
          *v213 = v214;
          sub_22C8D4FF8(v213);
          sub_22C37F7CC();

          return sub_22C8CF428();
        }
      }

      v96 = v40[55];
      sub_22C90266C();
      v97 = sub_22C37170C();
      v98(v97);
      sub_22C90262C();
      sub_22C376738(v96);
      if (v69)
      {
        v186 = v40[55];
        v187 = &qword_27D9C1450;
        v188 = &qword_22C92D668;
        goto LABEL_56;
      }

      v99 = sub_22C90242C();
      sub_22C36BBA8();
      v100 = sub_22C37170C();
      v101(v100);
      v102 = sub_22C36ECB4();
      v103(v102);
      ++v87;
      result = v91;
      if ((v99 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    sub_22C90405C();
    v165 = sub_22C9063CC();
    v166 = sub_22C90AACC();
    if (sub_22C37B204(v166))
    {
      v167 = sub_22C36D240();
      sub_22C36C890(v167);
      sub_22C36BB14(&dword_22C366000, v168, v169, "Dialog suppression requested");
      sub_22C372FB0();
    }

    v170 = v40[53];
    v171 = v40[45];

    v172 = sub_22C36BAFC();
    v173(v172);
    v174 = *MEMORY[0x277D1C9E8];
    v175 = sub_22C90240C();
    sub_22C36985C();
    v177 = *(v176 + 104);
    v177(v171, v174, v175);
    v177(v171 + *(v170 + 20), v174, v175);
    sub_22C36BECC();
    v58 = v170;
  }

LABEL_50:
  sub_22C36C640(v55, v56, v57, v58);
LABEL_51:
  sub_22C389378(v40[101], v158, v159, v160, v161, v162, v163, v164);

  sub_22C369C50();
  sub_22C37F7CC();

  return v179(v178, v179, v180, v181, v182, v183, v184, v185, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v216, v217, v218, v219, a29, a30, a31, a32);
}

uint64_t sub_22C8CCDB8()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 824) = v0;

  sub_22C8D4EC8(v3 + 56);
  v7 = *(v3 + 384);
  if (v0)
  {
    v8 = sub_22C8CD7B4;
  }

  else
  {
    v8 = sub_22C8CCEC0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22C8CCEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v33 = v32[52];
  v34 = sub_22C3707B4();
  sub_22C36D0A8(v34, v35, v36);
  if (v37)
  {
    sub_22C36DD28(v33, &qword_27D9C13A8, &unk_22C92D270);
    sub_22C90405C();
    v38 = sub_22C36D29C();
    v39(v38);
    v40 = sub_22C9063CC();
    v41 = sub_22C90AACC();
    if (sub_22C36FBB4(v41))
    {
      v42 = sub_22C36FB44();
      *v42 = 134217984;
      v43 = *(sub_22C90804C() + 16);

      v44 = sub_22C8D50F8();
      v45(v44);
      *(v42 + 4) = v43;
      sub_22C8D52F4(&dword_22C366000, v46, v47, "Generating dialog for %ld tool results");
      sub_22C36BAE0();
    }

    else
    {
      v91 = sub_22C8D50F8();
      v92(v91);
    }

    sub_22C8D52BC();

    v93 = sub_22C37170C();
    v94(v93);
    swift_task_alloc();
    sub_22C36CC90();
    v32[104] = v95;
    *v95 = v96;
    sub_22C8D4FF8(v95);
    sub_22C37F7CC();

    return sub_22C8CF428();
  }

  else
  {
    sub_22C8D5098();
    sub_22C8D4F1C(v33, v48);
    sub_22C90405C();
    v49 = sub_22C9063CC();
    v50 = sub_22C90AABC();
    if (sub_22C37B204(v50))
    {
      v52 = sub_22C36D240();
      sub_22C36C890(v52);
      sub_22C36BB14(&dword_22C366000, v53, v54, "In-app response policy triggered.");
      sub_22C372FB0();
    }

    sub_22C8D52BC();
    v55 = v32[48];

    v56 = sub_22C36BAFC();
    v57(v56);
    if (*(v55 + 376))
    {
      v58 = v32[67];
      v59 = v32[66];
      v60 = v32[65];

      v61 = sub_22C899F90();

      v62 = sub_22C9023FC();
      v64 = v63;

      v65 = HIBYTE(v64) & 0xF;
      if ((v64 & 0x2000000000000000) == 0)
      {
        v65 = v62 & 0xFFFFFFFFFFFFLL;
      }

      if (v65)
      {
        v66 = MEMORY[0x277D1FAC0];
      }

      else
      {
        v66 = MEMORY[0x277D1FAD0];
      }

      (*(v59 + 104))(v58, *v66, v60);
      sub_22C79D0C0(v61 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source, (v32 + 15));
      sub_22C37275C();
      v67();
      swift_endAccess();
    }

    v68 = v32[53];
    v69 = v32[45];
    sub_22C8D5098();
    sub_22C8D4F1C(v70, v69);
    sub_22C36BECC();
    sub_22C36C640(v71, v72, v73, v68);
    v74 = sub_22C3777E4();
    sub_22C37B890(v74, v75, v76, v77, v78, v79, v80, v81);

    sub_22C369C50();
    sub_22C37F7CC();

    return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
  }
}

uint64_t sub_22C8CD2BC()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 840) = v0;

  sub_22C6343B0();
  sub_22C37E810();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8CD3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  if (*(v33[48] + 376))
  {

    sub_22C899F90();
    sub_22C3815C0();
    v36 = sub_22C9022CC();
    v37 = (v32 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_catId);
    *v37 = v36;
    v37[1] = v38;
  }

  if ((_AFSupportPreferencesBoolForKeyWithDefault() & 1) == 0)
  {
    v39 = v33[82];
    v40 = v33[81];
    sub_22C8D517C();
    sub_22C907FFC();
    sub_22C9006BC();
    v41 = sub_22C36CA88();
    v42(v41);
    v43 = sub_22C379FC8();
    sub_22C8CDA9C(v43);

    v44 = sub_22C36D264();
    v45(v44);
    (*(v35 + 32))(v40, v39, v34);
  }

  v46 = sub_22C9022CC();
  v47 = v33[81];
  v48 = v33[80];
  v98 = v33[79];
  v49 = v33[63];
  v50 = v33[45];
  if (v51)
  {

    sub_22C8D535C(v52);
    sub_22C380248();
    v53 = sub_22C87E3C8();
    v96 = v54;
    v97 = v53;
    v55 = *(v49 + 8);
    v56 = sub_22C36CA88();
    v57 = v55(v56);
    sub_22C8D535C(v57);
    sub_22C380248();
    v95 = sub_22C87E4B8();
    v59 = v58;
    v60 = sub_22C36CA88();
    v55(v60);
    (*(v48 + 8))(v47, v98);
    *v50 = v97;
    v50[1] = v96;
    v61 = MEMORY[0x277D1C9D8];
  }

  else
  {
    sub_22C8D535C(v46);
    sub_22C380248();
    v62 = sub_22C87E3C8();
    v96 = v63;
    v97 = v62;
    v64 = *(v49 + 8);
    v65 = sub_22C36CA88();
    v66 = v64(v65);
    sub_22C8D535C(v66);
    sub_22C380248();
    v95 = sub_22C87E4B8();
    v59 = v67;
    v68 = sub_22C36CA88();
    v64(v68);
    (*(v48 + 8))(v47, v98);
    *v50 = v97;
    v50[1] = v96;
    v61 = MEMORY[0x277D1CA00];
  }

  v69 = *v61;
  v70 = sub_22C90240C();
  sub_22C36985C();
  v72 = *(v71 + 104);
  v72(v50, v69, v70);
  v73 = v33[53];
  v74 = (v33[45] + *(v73 + 20));
  if (v59)
  {
    *v74 = v95;
    v74[1] = v59;
    v73 = v33[53];
  }

  else
  {
    v69 = *MEMORY[0x277D1C9F0];
  }

  v72(v74, v69, v70);
  sub_22C36BECC();
  sub_22C36C640(v75, v76, v77, v73);
  v78 = sub_22C3777E4();
  sub_22C37B890(v78, v79, v80, v81, v82, v83, v84, v85);

  sub_22C369C50();
  sub_22C37F7CC();

  return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v95, v96, v97, v98, a30, a31, a32);
}

uint64_t sub_22C8CD7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v49 = *(v32 + 824);
  sub_22C389378(*(v32 + 808), v33, v34, v35, v36, v37, v38, v39);

  sub_22C382AE4();
  sub_22C37F7CC();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v49, a30, a31, a32);
}

uint64_t sub_22C8CD928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v49 = *(v32 + 840);
  sub_22C389378(*(v32 + 808), v33, v34, v35, v36, v37, v38, v39);

  sub_22C382AE4();
  sub_22C37F7CC();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v49, a30, a31, a32);
}

uint64_t sub_22C8CDA9C(uint64_t a1)
{
  v2 = sub_22C902FBC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C90231C();
  if (v9)
  {
    sub_22C8D5288();
    v10 = objc_opt_self();
    sub_22C36BBCC();
    sub_22C90A0EC();
    sub_22C37BB14();

    v11 = sub_22C90A0EC();
    v12 = [v10 filterProfanity:v1 locale:v11];

    sub_22C90A11C();
    sub_22C36BA00();
    sub_22C902F7C();
    sub_22C902FAC();
    (*(v4 + 8))(v8, v2);
  }

  sub_22C90228C();
  if (v13)
  {
    sub_22C8D5288();
    v14 = objc_opt_self();
    sub_22C36BBCC();
    sub_22C90A0EC();
    sub_22C37BB14();

    v15 = sub_22C90A0EC();
    v16 = [v14 filterProfanity:v1 locale:v15];

    sub_22C90A11C();
    sub_22C36BA00();
    sub_22C902F7C();
    sub_22C902F9C();
    (*(v4 + 8))(v8, v2);
  }

  v17 = v2;
  sub_22C9022AC();
  if (v18)
  {
    v19 = objc_opt_self();
    v20 = sub_22C90A0EC();

    sub_22C36D29C();
    v21 = sub_22C90A0EC();
    v22 = [v19 filterProfanity:v20 locale:v21];

    sub_22C90A11C();
    sub_22C379FC8();
    sub_22C902F7C();
    sub_22C902FAC();
    v23 = v4;
    (*(v4 + 8))(v8, v17);
  }

  else
  {
    v23 = v4;
  }

  v24 = objc_opt_self();
  sub_22C9022FC();
  v25 = sub_22C90A0EC();

  sub_22C36D29C();
  v26 = sub_22C90A0EC();
  v27 = [v24 filterProfanity:v25 locale:v26];

  sub_22C90A11C();
  sub_22C902F7C();
  sub_22C902F9C();
  (*(v23 + 8))(v8, v17);
  return sub_22C9022EC();
}

uint64_t sub_22C8CDE78()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_22C908AEC();
  v1[6] = v5;
  sub_22C3699B8(v5);
  v1[7] = v6;
  v1[8] = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v7);
  v1[9] = sub_22C3699D4();
  v8 = sub_22C907DEC();
  v1[10] = v8;
  sub_22C3699B8(v8);
  v1[11] = v9;
  v1[12] = sub_22C3699D4();
  v10 = sub_22C9026AC();
  v1[13] = v10;
  sub_22C3699B8(v10);
  v1[14] = v11;
  v1[15] = sub_22C3699D4();
  v12 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  sub_22C369914(v12);
  v1[16] = sub_22C3699D4();
  v13 = sub_22C906ECC();
  v1[17] = v13;
  sub_22C3699B8(v13);
  v1[18] = v14;
  v1[19] = sub_22C3699D4();
  v15 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C8CE05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[3];
  if (*(v13 + 16) != 1)
  {
    goto LABEL_9;
  }

  v14 = v12[17];
  sub_22C58BAF4(v13, v12[16]);
  v15 = sub_22C36CCF8();
  sub_22C36D0A8(v15, v16, v14);
  if (v23)
  {
    v17 = v12[16];
    v18 = &qword_27D9BC0A0;
    v19 = &unk_22C922F30;
LABEL_8:
    sub_22C36DD28(v17, v18, v19);
    goto LABEL_9;
  }

  v20 = v12[9];
  (*(v12[18] + 32))(v12[19], v12[16], v12[17]);
  sub_22C906EBC();
  sub_22C907DDC();
  v21 = sub_22C36D264();
  v22(v21);
  sub_22C369A54(v20);
  if (v23)
  {
    v24 = v12[9];
    (*(v12[18] + 8))(v12[19], v12[17]);
    v18 = &qword_27D9BF328;
    v19 = &qword_22C9225C0;
    v17 = v24;
    goto LABEL_8;
  }

  (*(v12[14] + 32))(v12[15], v12[9], v12[13]);
  sub_22C87A000();
  if (v39)
  {
    sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
    sub_22C369A48();
    v40 = sub_22C9023BC();
    sub_22C369824();
    v42 = v41;
    v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_22C90F800;
    sub_22C36ECB4();
    sub_22C90237C();
    (*(v42 + 104))(v44 + v43, *MEMORY[0x277D1C988], v40);
    v45 = sub_22C36BAFC();
    v46(v45);
    (*(v12[18] + 8))(v12[19], v12[17]);

    sub_22C36D5E0();
    sub_22C372034();

    return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
  }

  (*(v12[14] + 8))(v12[15], v12[13]);
  v55 = sub_22C36BBCC();
  v56(v55);
LABEL_9:
  v25 = v12[8];
  v26 = v12[4];
  v27 = v12[2];
  (*(v12[7] + 16))(v25, *(v12[5] + 112) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox, v12[6]);
  v28 = swift_task_alloc();
  v12[20] = v28;
  v28[2] = v27;
  v28[3] = v25;
  v28[4] = v26;
  v29 = swift_task_alloc();
  v12[21] = v29;
  *v29 = v12;
  v29[1] = sub_22C8CE404;
  sub_22C372034();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37, sub_22C8C7468, a10, a11, a12);
}

void sub_22C8CE404()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v5 + 40);
    *(v5 + 176) = v3;

    MEMORY[0x2822009F8](sub_22C8CE534, v9, 0);
  }
}

uint64_t sub_22C8CE534()
{
  sub_22C3743E4();
  v1 = v0[22];
  (*(v0[7] + 8))(v0[8], v0[6]);

  sub_22C36D5E0();

  return v2(v1);
}

uint64_t sub_22C8CE5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22C907DEC();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BF850, &qword_22C92D260);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = sub_22C9063DC();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8CE7B4, 0, 0);
}

uint64_t sub_22C8CE7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C90405C();
  v14 = sub_22C9063CC();
  v15 = sub_22C90AACC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_22C36D240();
    sub_22C36C890(v16);
    _os_log_impl(&dword_22C366000, v14, v15, "Building visuals using tool metadata and tool Provided Views.", v12, 2u);
    sub_22C372FB0();
  }

  v17 = v13[12];
  v18 = v13[8];

  v19 = sub_22C36BAFC();
  v20(v19);
  sub_22C906EBC();
  sub_22C36D484();
  sub_22C907DDC();
  v21 = *(v18 + 8);
  v22 = sub_22C36CA88();
  v21(v22);
  sub_22C9026AC();
  sub_22C376738(v17);
  if (v23)
  {
    v24 = v13[12];
    v25 = &qword_27D9BF328;
    v26 = &qword_22C9225C0;
LABEL_8:
    sub_22C36DD28(v24, v25, v26);
    v34 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  sub_22C90269C();
  sub_22C36BBA8();
  v27 = sub_22C37170C();
  v28(v27);
  v29 = sub_22C90256C();
  v30 = sub_22C36CCF8();
  v32 = sub_22C370B74(v30, v31, v29);
  v33 = v13[14];
  if (v32 == 1)
  {
    v25 = &qword_27D9BF850;
    v26 = &qword_22C92D260;
    v24 = v13[14];
    goto LABEL_8;
  }

  v34 = MEMORY[0x2318AF920]();
  sub_22C36BBA8();
  (*(v35 + 8))(v33, v29);
LABEL_10:
  v13[18] = v34;
  v36 = v13[11];
  sub_22C906EBC();
  sub_22C36D484();
  sub_22C907DDC();
  v37 = sub_22C36CA88();
  v21(v37);
  sub_22C376738(v36);
  if (v23)
  {
    v38 = v13[11];
    v39 = &qword_27D9BF328;
    v40 = &qword_22C9225C0;
LABEL_15:
    sub_22C36DD28(v38, v39, v40);
    v48 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  sub_22C90269C();
  sub_22C36BBA8();
  v41 = sub_22C37170C();
  v42(v41);
  v43 = sub_22C90256C();
  v44 = sub_22C37EF1C();
  v46 = sub_22C370B74(v44, v45, v43);
  v47 = v13[13];
  if (v46 == 1)
  {
    v39 = &qword_27D9BF850;
    v40 = &qword_22C92D260;
    v38 = v13[13];
    goto LABEL_15;
  }

  v48 = sub_22C90250C();
  sub_22C36BBA8();
  (*(v49 + 8))(v47, v43);
LABEL_17:
  v13[19] = v48;
  v50 = swift_task_alloc();
  v13[20] = v50;
  *v50 = v13;
  v50[1] = sub_22C8CEB00;
  sub_22C372034();

  return sub_22C8D6008();
}

uint64_t sub_22C8CEB00()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;
  *(v4 + 168) = v3;

  return MEMORY[0x2822009F8](sub_22C8CEC2C, 0, 0);
}

uint64_t sub_22C8CEC2C()
{
  sub_22C36D5EC();
  **(v0 + 16) = *(v0 + 168);

  sub_22C369C50();

  return v1();
}

uint64_t sub_22C8CECDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v95 = sub_22C9024FC();
  sub_22C369824();
  v91 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v90 = v6 - v5;
  v7 = sub_22C3A5908(&qword_27D9BE300, &qword_22C92D630);
  v8 = sub_22C3699B8(v7);
  v92 = v9;
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v94 = v10 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v93 = v13;
  sub_22C36BA0C();
  v108 = sub_22C907DEC();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v107 = v18 - v17;
  sub_22C36BA0C();
  v19 = sub_22C9026AC();
  sub_22C369824();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22C369ABC();
  v106 = v23 - v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  v96 = v26;
  sub_22C36BA0C();
  v105 = sub_22C906ECC();
  sub_22C369824();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v32 = v31 - v30;
  v33 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  v34 = sub_22C369914(v33);
  MEMORY[0x28223BE20](v34);
  sub_22C369ABC();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v97 = &v89 - v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA64();
  v99 = v41;
  v100 = v21;
  v42 = *(a1 + 16);
  v109 = v19;
  if (v42)
  {
    v43 = v28 + 16;
    sub_22C36BA94();
    v45 = a1 + v44;
    v102 = *(v43 + 56);
    v103 = v46;
    v47 = (v15 + 8);
    v104 = v43;
    v48 = (v43 - 8);
    v101 = (v21 + 32);
    v49 = MEMORY[0x277D84F90];
    do
    {
      v50 = v105;
      v103(v32, v45, v105);
      v51 = v107;
      sub_22C906EBC();
      sub_22C907DDC();
      (*v47)(v51, v108);
      (*v48)(v32, v50);
      v52 = v109;
      sub_22C36D0A8(v37, 1, v109);
      if (v77)
      {
        sub_22C36DD28(v37, &qword_27D9BF328, &qword_22C9225C0);
      }

      else
      {
        v53 = *v101;
        (*v101)(v106, v37, v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C38B2EC();
          sub_22C59743C();
          v49 = v58;
        }

        v55 = *(v49 + 16);
        if (v55 >= *(v49 + 24) >> 1)
        {
          sub_22C59743C();
          v49 = v59;
        }

        *(v49 + 16) = v55 + 1;
        sub_22C36BA94();
        v53(v49 + v56 + *(v57 + 72) * v55, v106, v109);
      }

      v45 += v102;
      --v42;
    }

    while (v42);
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
  }

  v60 = v99;
  sub_22C58BB0C(v49, v99);

  v61 = v97;
  sub_22C6AEA50(v60, v97, &qword_27D9BF328, &qword_22C9225C0);
  v62 = v109;
  sub_22C36D0A8(v61, 1, v109);
  if (v77)
  {
    sub_22C36DD28(v60, &qword_27D9BF328, &qword_22C9225C0);
    sub_22C36DD28(v61, &qword_27D9BF328, &qword_22C9225C0);
    sub_22C9023BC();
    sub_22C36A748();
    return sub_22C36C640(v63, v64, v65, v66);
  }

  else
  {
    v68 = v100;
    v69 = v96;
    (*(v100 + 32))(v96, v61, v62);
    sub_22C3A5908(&qword_27D9C1448, &unk_22C92D638);
    v70 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_22C90F800;
    sub_22C90264C();
    v72 = v71 + v70;
    v73 = v93;
    sub_22C6AEA50(v72, v93, &qword_27D9BE300, &qword_22C92D630);
    v74 = v73;
    v75 = v94;
    sub_22C6AE8BC(v74, v94, &qword_27D9BE300, &qword_22C92D630);
    v76 = v95;
    sub_22C36D0A8(v75, 1, v95);
    if (v77)
    {
      sub_22C36DD28(v75, &qword_27D9BE300, &qword_22C92D630);
    }

    else
    {
      v79 = v90;
      v78 = v91;
      v80 = *(v91 + 32);
      v80(v90, v75, v76);
      v81 = MEMORY[0x277D84F90];
      v82 = swift_isUniquelyReferenced_nonNull_native();
      if ((v82 & 1) == 0)
      {
        sub_22C38B2EC();
        sub_22C597374();
        v81 = v87;
      }

      v83 = *(v81 + 16);
      if (v83 >= *(v81 + 24) >> 1)
      {
        sub_22C597374();
        v81 = v88;
      }

      *(v81 + 16) = v83 + 1;
      sub_22C36BA94();
      v80(v81 + v84 + *(v78 + 72) * v83, v79, v76);
      v62 = v109;
      v69 = v96;
      v60 = v99;
    }

    swift_setDeallocating();
    sub_22C5901A0();
    sub_22C8DAEE4();
    v86 = v85;

    sub_22C58BB24(v86, v98);

    (*(v68 + 8))(v69, v62);
    return sub_22C36DD28(v60, &qword_27D9BF328, &qword_22C9225C0);
  }
}

uint64_t sub_22C8CF428()
{
  sub_22C369980();
  v1[37] = v2;
  v1[38] = v0;
  v1[35] = v3;
  v1[36] = v4;
  v5 = sub_22C90454C();
  v1[39] = v5;
  sub_22C3699B8(v5);
  v1[40] = v6;
  v1[41] = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  sub_22C369914(v7);
  v1[42] = sub_22C3699D4();
  v8 = sub_22C90234C();
  v1[43] = v8;
  sub_22C3699B8(v8);
  v1[44] = v9;
  v1[45] = sub_22C3699D4();
  v10 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v10);
  v1[46] = sub_22C3699D4();
  v11 = sub_22C90806C();
  v1[47] = v11;
  sub_22C3699B8(v11);
  v1[48] = v12;
  v1[49] = sub_22C3699D4();
  v13 = type metadata accessor for ResponseCatalogMatcher(0);
  v1[50] = v13;
  sub_22C369914(v13);
  v1[51] = sub_22C3856B8();
  v1[52] = swift_task_alloc();
  v14 = sub_22C907C5C();
  v1[53] = v14;
  sub_22C3699B8(v14);
  v1[54] = v15;
  v1[55] = sub_22C3699D4();
  v16 = sub_22C90474C();
  v1[56] = v16;
  sub_22C3699B8(v16);
  v1[57] = v17;
  v1[58] = sub_22C3699D4();
  v18 = type metadata accessor for ResponseGenerationPreferences(0);
  v1[59] = v18;
  sub_22C369914(v18);
  v1[60] = sub_22C3699D4();
  v19 = sub_22C3A5908(&qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C369914(v19);
  v1[61] = sub_22C3856B8();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v20 = sub_22C9063DC();
  v1[66] = v20;
  sub_22C3699B8(v20);
  v1[67] = v21;
  v1[68] = sub_22C3856B8();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v22 = sub_22C90363C();
  v1[78] = v22;
  sub_22C3699B8(v22);
  v1[79] = v23;
  v1[80] = sub_22C3699D4();
  v24 = type metadata accessor for DialogValues(0);
  sub_22C369914(v24);
  v1[81] = sub_22C3699D4();
  v25 = type metadata accessor for TypedValueFormatter(0);
  v1[82] = v25;
  sub_22C369914(v25);
  v1[83] = sub_22C3699D4();
  v26 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_22C8CF850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C37B668();
  v33 = *(v32 + 304);
  sub_22C36CA70(v33 + 288, v32 + 176);
  sub_22C6AEA50(v33 + 288, v32 + 56, &qword_27D9C1370, &qword_22C92D228);
  if (*(v32 + 80))
  {
    v34 = *(v32 + 304);
    sub_22C36C730((v32 + 56), v32 + 16);
    sub_22C36CA70(v34 + 328, v32 + 200);
    sub_22C6AEA50(v34 + 328, v32 + 136, &qword_27D9C1370, &qword_22C92D228);
    if (*(v32 + 160))
    {
      v35 = *(v32 + 664);
      v36 = *(v32 + 656);
      sub_22C36C730((v32 + 136), v32 + 96);
      sub_22C907FFC();
      v37 = (v35 + *(v36 + 20));
      *v37 = 0;
      v37[1] = 0;
      swift_task_alloc();
      sub_22C36CC90();
      *(v32 + 672) = v38;
      *v38 = v39;
      v38[1] = sub_22C8CFC48;
      sub_22C37F7CC();

      return sub_22C8D370C();
    }

    sub_22C36DD28(v32 + 136, &qword_27D9C1370, &qword_22C92D228);
    sub_22C90405C();
    v54 = sub_22C9063CC();
    v55 = sub_22C90AADC();
    if (sub_22C37B204(v55))
    {
      v56 = sub_22C36D240();
      sub_22C36C890(v56);
      sub_22C36BB14(&dword_22C366000, v57, v58, "No fallback dialog generator");
      sub_22C372FB0();
    }

    v59 = sub_22C36BAFC();
    v60(v59);
    v61 = sub_22C8D420C();
    v62 = sub_22C36FBE4(&type metadata for ResponseGenerationService.ResponseGenerationServiceError, v61);
    sub_22C8D5224(v62, v63, v64, v65);
    sub_22C36FF94((v32 + 16));
  }

  else
  {
    sub_22C36DD28(v32 + 56, &qword_27D9C1370, &qword_22C92D228);
    sub_22C90405C();
    v42 = sub_22C9063CC();
    v43 = sub_22C90AADC();
    if (sub_22C37B204(v43))
    {
      v44 = sub_22C36D240();
      sub_22C36C890(v44);
      sub_22C36BB14(&dword_22C366000, v45, v46, "No response dialog generator");
      sub_22C372FB0();
    }

    v47 = sub_22C36BAFC();
    v48(v47);
    v49 = sub_22C8D420C();
    v50 = sub_22C36FBE4(&type metadata for ResponseGenerationService.ResponseGenerationServiceError, v49);
    sub_22C8D5224(v50, v51, v52, v53);
  }

  sub_22C38C2DC();
  v74 = *(v32 + 560);
  v75 = *(v32 + 552);
  v76 = *(v32 + 544);
  v77 = *(v32 + 520);
  v78 = *(v32 + 512);
  v79 = *(v32 + 504);
  v80 = *(v32 + 496);
  v81 = *(v32 + 488);
  v82 = *(v32 + 480);
  v83 = *(v32 + 464);
  v84 = *(v32 + 440);
  v85 = *(v32 + 416);
  v86 = *(v32 + 408);
  v87 = *(v32 + 392);
  v88 = *(v32 + 368);
  v89 = *(v32 + 360);
  v90 = *(v32 + 336);
  v91 = *(v32 + 328);

  sub_22C369A24();
  sub_22C37F7CC();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, a28, a29, a30, a31, a32);
}

uint64_t sub_22C8CFC48()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 680) = v0;

  sub_22C6343B0();
  sub_22C37E810();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8CFD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, Swift::String a28, __int128 a29, __int128 a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  sub_22C60243C();
  a43 = v45;
  a44 = v46;
  sub_22C8D52C8();
  a42 = v44;
  (*(*(v44 + 632) + 104))(*(v44 + 640), *MEMORY[0x277D1EBE8], *(v44 + 624));
  v47 = sub_22C90362C();
  v48 = sub_22C36BBCC();
  v49(v48);
  if ((v47 & 1) == 0 || (sub_22C903E8C() & 1) == 0)
  {
    sub_22C90405C();
    v64 = sub_22C9063CC();
    v65 = sub_22C90AABC();
    if (sub_22C37B204(v65))
    {
      v66 = sub_22C36D240();
      sub_22C36C890(v66);
      sub_22C36BB14(&dword_22C366000, v67, v68, "ResponseGeneration: Is disabled for this request, going to fallback dialog");
      sub_22C372FB0();
    }

    v69 = sub_22C376B4C();
    v70(v69);
    sub_22C375EAC((v44 + 96));
    sub_22C90880C();
    sub_22C36A748();
    sub_22C36C640(v71, v72, v73, v74);
    sub_22C8D4FA8();
    v201 = v75 + *v75;
    swift_task_alloc();
    sub_22C36CC90();
    *(v44 + 688) = v76;
    *v76 = v77;
    sub_22C8D5044(v76);
    goto LABEL_12;
  }

  v50 = *(*(v44 + 304) + 368);
  *(v44 + 704) = v50;
  if (!v50)
  {
    sub_22C90405C();
    v88 = sub_22C9063CC();
    v89 = sub_22C90AADC();
    if (sub_22C37B204(v89))
    {
      v90 = sub_22C36D240();
      sub_22C36C890(v90);
      sub_22C36BB14(&dword_22C366000, v91, v92, "No input validator");
      sub_22C372FB0();
    }

    v93 = *(v44 + 664);
    v94 = *(v44 + 648);

    v95 = sub_22C36D29C();
    v96(v95);
    v97 = sub_22C8D420C();
    v98 = sub_22C36FBE4(&type metadata for ResponseGenerationService.ResponseGenerationServiceError, v97);
    *v99 = 0;
    v200 = v98;
    swift_willThrow();
    sub_22C373D1C();
    sub_22C8D4D04(v94, v100);
    sub_22C36B890();
    v63 = v93;
    goto LABEL_18;
  }

  v51 = qword_2814357B8;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = sub_22C37AA60(*(v44 + 472), qword_281437588);
  sub_22C36CA70(v52, v44 + 224);
  sub_22C37AE04();
  v53 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C901EDC();
  v54 = *(v44 + 848);
  sub_22C8D50B0();
  if (v54)
  {
    v55 = *(v44 + 680);
    sub_22C90803C();
    v56 = sub_22C8EBCC4();
    *(v44 + 744) = v56;
    if (v55)
    {
      v57 = *(v44 + 664);
      v58 = *(v44 + 648);
      v200 = v55;

      v59 = sub_22C36ECB4();
      v60(v59);
      sub_22C373D1C();
      sub_22C8D4D04(v58, v61);
      sub_22C36B890();
      v63 = v57;
LABEL_18:
      sub_22C8D4D04(v63, v62);
      sub_22C8D506C();
      sub_22C388DF8();
      sub_22C38C2DC();
      sub_22C36A5BC();
      v196 = *(v44 + 368);
      v197 = *(v44 + 360);
      v198 = *(v44 + 336);
      v199 = *(v44 + 328);

      sub_22C369A24();
      sub_22C37BEB8();

      return v102(v101, v102, v103, v104, v105, v106, v107, v108, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v196, v197, v198, v199, v200, a28._countAndFlagsBits, a28._object, a29, *(&a29 + 1), a30, *(&a30 + 1), a31, *(&a31 + 1), a32, a33, a34, a35, a36);
    }

    a24 = v53;
    a25 = v56;
    v122 = *(v44 + 384);
    v121 = *(v44 + 392);
    v123 = *(v44 + 376);
    v124 = *(v44 + 304);
    v125 = *(v44 + 288);
    (*(*(v44 + 432) + 8))(*(v44 + 440), *(v44 + 424));
    (*(v122 + 16))(v121, v125, v123);
    sub_22C90046C();
    sub_22C36A748();
    sub_22C36C640(v126, v127, v128, v129);
    sub_22C86D1D0();
    a26 = v124;
    if (*(v124 + 376))
    {

      sub_22C89A7F8();
      sub_22C3815C0();
      sub_22C8A0D04();
    }

    sub_22C90405C();
    v130 = sub_22C36D264();
    sub_22C8D4CB0(v130, v131);
    v132 = sub_22C9063CC();
    v133 = sub_22C90AABC();
    v134 = os_log_type_enabled(v132, v133);
    v135 = *(v44 + 608);
    v136 = *(v44 + 536);
    v202 = *(v44 + 528);
    v137 = &unk_22C90D000;
    v138 = *(v44 + 408);
    if (v134)
    {
      a23 = *(v44 + 608);
      v139 = *(v44 + 400);
      v140 = sub_22C36FB44();
      v141 = swift_slowAlloc();
      a28._countAndFlagsBits = v141;
      *v140 = 136315138;
      v142 = (v138 + *(v139 + 24));
      v143 = v142[1];
      a22 = *v142;

      sub_22C8D4F78();
      sub_22C8D4D04(v138, v144);
      v145 = sub_22C36F9F4(a22, v143, &a28._countAndFlagsBits);

      *(v140 + 4) = v145;
      _os_log_impl(&dword_22C366000, v132, v133, "Response Catalog: using asset version: %s", v140, 0xCu);
      sub_22C36FF94(v141);
      sub_22C372FB0();
      v137 = &unk_22C90D000;
      sub_22C3699EC();

      v146 = *(v136 + 8);
      v146(a23, v202);
    }

    else
    {

      sub_22C8D4F78();
      sub_22C8D4D04(v138, v147);
      v146 = *(v136 + 8);
      v146(v135, v202);
    }

    *(v44 + 752) = v146;
    v148 = sub_22C86E25C();
    v149 = 0;
    *(v44 + 760) = v148;
    v150 = v148;
    if (a26[47])
    {

      sub_22C89A7F8();
      sub_22C3815C0();
      sub_22C8A0F40();
    }

    sub_22C37AE04();
    sub_22C901EDC();
    v151 = *(v44 + 849);
    sub_22C8D50B0();
    if (v151 == 1)
    {
      sub_22C86F24C();
      v153 = v152;
      sub_22C90405C();

      v151 = sub_22C9063CC();
      v50 = sub_22C90AABC();

      v154 = os_log_type_enabled(v151, v50);
      v149 = *(v44 + 528);
      if (v154)
      {
        v203 = *(v44 + 600);
        v155 = sub_22C36FB44();
        a26 = v149;
        v149 = swift_slowAlloc();
        a28._countAndFlagsBits = v149;
        *v155 = v137[4];
        *(v44 + 272) = v153;
        sub_22C3A5908(&qword_27D9C13B8, &qword_22C92D5A0);
        v156 = sub_22C90A1AC();
        v158 = sub_22C36F9F4(v156, v157, &a28._countAndFlagsBits);

        *(v155 + 4) = v158;
        _os_log_impl(&dword_22C366000, v151, v50, "Force Logging Catalog Params: %s", v155, 0xCu);
        sub_22C36FF94(v149);
        sub_22C3699EC();
        sub_22C36BAE0();

        v160 = a26;
        v159 = v203;
      }

      else
      {

        v159 = sub_22C36CA88();
      }

      v146(v159, v160);
    }

    if (v150)
    {

      swift_task_alloc();
      sub_22C36CC90();
      *(v44 + 768) = v161;
      *v161 = v162;
      sub_22C8D5044(v161);
      sub_22C37BEB8();

      return sub_22C86E748(v163, v164, v165);
    }

    swift_getKeyPath();
    sub_22C8D5344();

    sub_22C8D5268();
    if (!v167)
    {

LABEL_48:
      if (sub_22C8D532C())
      {
        sub_22C375EAC((v44 + 16));
        sub_22C8D4FA8();
        v201 = v172 + *v172;
        swift_task_alloc();
        sub_22C36CC90();
        *(v44 + 832) = v173;
        *v173 = v174;
        sub_22C387700();
        goto LABEL_23;
      }

      sub_22C8D5200();
      if (v151)
      {
        sub_22C8D5028();
        sub_22C899F90();
        sub_22C8D5138();
        v175 = sub_22C375194();
        v176(v175);
        sub_22C8D5198();

        v177 = sub_22C376B4C();
        v178(v177);
      }

      v179 = sub_22C3800E8();
      a26 = sub_22C3789D4(v179);
      sub_22C369B5C();
      v201 = v180 + *v180;
      swift_task_alloc();
      sub_22C36CC90();
      *(v44 + 816) = v181;
      *v181 = v182;
      sub_22C36C5F4(v181);
LABEL_25:
      sub_22C8D50D8();
      goto LABEL_12;
    }

    if (qword_27D9BA7C8 != -1)
    {
      sub_22C37F67C(&qword_27D9BA7C8);
    }

    sub_22C3868E0();
    if (v169)
    {
      v151 = qword_27D9C0C20;
      a28._countAndFlagsBits = *v168;
      a28._object = v169;
      v170 = *(v168 + 32);
      a29 = *(v168 + 16);
      a30 = v170;
      a31 = *(v168 + 48);
      sub_22C874CDC(v50, &a28);
      v171 = sub_22C3743B4();
      if (v151)
      {
        goto LABEL_48;
      }
    }

    else
    {
    }

    sub_22C8D5314(v171);
    sub_22C9063CC();
    v183 = sub_22C90AABC();
    if (sub_22C37B204(v183))
    {
      v184 = sub_22C36D240();
      sub_22C36C890(v184);
      sub_22C36BB14(&dword_22C366000, v185, v186, "ResponseValidator did not find valid argument pattern. To prevent hallucination, going to fallback.");
      sub_22C372FB0();
    }

    sub_22C380694();
    v187 = sub_22C36BAFC();
    (v146)(v187);
    if (v149[47])
    {
      sub_22C8D5028();
      sub_22C899F90();
      sub_22C8D5138();
      *v50 = 0;
      v188 = sub_22C375194();
      v189(v188);
      sub_22C8D5198();

      v190 = sub_22C376B4C();
      v191(v190);
    }

    v192 = sub_22C3800E8();
    a26 = sub_22C3789D4(v192);
    sub_22C369B5C();
    v201 = v193 + *v193;
    swift_task_alloc();
    sub_22C36CC90();
    *(v44 + 800) = v194;
    *v194 = v195;
    sub_22C372F38(v194);
    goto LABEL_25;
  }

  if ((sub_22C8B43F8(*(v44 + 288)) & 1) == 0)
  {
    sub_22C8D5200();
    sub_22C8D5028();
    sub_22C899F90();
    sub_22C8D5138();
    v113 = sub_22C375194();
    v114(v113);
    sub_22C8D5198();

    v115 = sub_22C376B4C();
    v116(v115);
    v117 = sub_22C3800E8();
    a26 = sub_22C3789D4(v117);
    sub_22C369B5C();
    v201 = v118 + *v118;
    swift_task_alloc();
    sub_22C36CC90();
    *(v44 + 712) = v119;
    *v119 = v120;
    sub_22C8D5044(v119);
    goto LABEL_25;
  }

  sub_22C375EAC((v44 + 16));
  sub_22C8D4FA8();
  v201 = v109 + *v109;
  swift_task_alloc();
  sub_22C36CC90();
  *(v44 + 728) = v110;
  *v110 = v111;
  v112 = sub_22C8D114C;
LABEL_23:
  v110[1] = v112;
LABEL_12:
  sub_22C387DC4();
  sub_22C37BEB8();

  return v84(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v201, a28._countAndFlagsBits, a28._object, a29, *(&a29 + 1), a30, *(&a30 + 1), a31, *(&a31 + 1), a32, a33, a34, a35, a36);
}

uint64_t sub_22C8D0C2C()
{
  sub_22C36FB38();
  sub_22C386504();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 696) = v0;

  sub_22C36D1D8();
  sub_22C36DD28(*(v4 + 520), &qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C8D50E8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C8D0D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  v31 = *(v30 + 664);
  sub_22C373D1C();
  sub_22C8D4D04(v32, v33);
  sub_22C36B890();
  sub_22C8D4D04(v31, v34);
  sub_22C371F90();
  sub_22C388BA0();

  sub_22C369C50();
  sub_22C5CAD40();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_22C8D0EBC()
{
  sub_22C36FB38();
  sub_22C386504();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 720) = v0;

  sub_22C36D1D8();
  sub_22C36DD28(*(v4 + 512), &qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C8D50E8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C8D0FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C8D5240();
  sub_22C373D1C();
  sub_22C8D4D04(v30, v32);
  sub_22C36B890();
  sub_22C8D4D04(v31, v33);
  sub_22C371F90();
  sub_22C388BA0();

  sub_22C369C50();
  sub_22C5CAD40();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_22C8D114C()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 736) = v0;

  sub_22C6343B0();
  sub_22C37E810();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8D1260()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 776) = v0;

  sub_22C6343B0();
  sub_22C37E810();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8D1374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, Swift::String a29, __int128 a30, __int128 a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44)
{
  sub_22C60243C();
  a43 = v45;
  a44 = v46;
  sub_22C8D52C8();
  a42 = v44;
  v48 = v44[42];
  v47 = v44[43];
  v49 = sub_22C3707B4();
  sub_22C36D0A8(v49, v50, v47);
  if (v51)
  {
    sub_22C36DD28(v48, &qword_27D9BAB60, &unk_22C90D400);
    sub_22C90405C();
    v52 = sub_22C9063CC();
    v53 = sub_22C90AABC();
    if (sub_22C37B204(v53))
    {
      v54 = sub_22C36D240();
      sub_22C36C890(v54);
      sub_22C36BB14(&dword_22C366000, v55, v56, "CatalogMatcher did not find valid catalog. To prevent hallucination, going to fallback.");
      sub_22C372FB0();
    }

    v57 = v44[94];
    v58 = v44[73];
    v59 = v44[38];

    v60 = sub_22C36BAFC();
    v57(v60);
    if (*(v59 + 376))
    {
      sub_22C8D5028();
      sub_22C899F90();
      sub_22C8D5138();
      *v58 = 0;
      v61 = sub_22C375194();
      v62(v61);
      sub_22C8D5198();

      v63 = sub_22C376B4C();
      v64(v63);
    }

    v65 = sub_22C3800E8();
    v166 = sub_22C3789D4(v65);
    sub_22C369B5C();
    v169 = v66 + *v66;
    swift_task_alloc();
    sub_22C36CC90();
    v44[98] = v67;
    *v67 = v68;
    sub_22C8D5044(v67);
    goto LABEL_8;
  }

  v79 = *(v44[44] + 32);
  v80 = sub_22C8D51C0();
  v79(v80);
  sub_22C90226C();
  if (v81)
  {
    v82 = sub_22C90A43C();

    if (v82)
    {
      sub_22C90405C();
      v83 = sub_22C9063CC();
      v84 = sub_22C90AABC();
      v85 = sub_22C370048(v84);
      v86 = v44[95];
      v87 = v44[94];
      v88 = v44[74];
      v89 = v44[67];
      v170 = v44[66];
      if (v85)
      {
        v90 = sub_22C36D240();
        *v90 = 0;
        _os_log_impl(&dword_22C366000, v83, v84, "Got '-RGPASS' dialog ID from RG catalog, continuing to model.", v90, 2u);
        sub_22C3699EC();
      }

      else
      {
      }

      v87(v88, v170);
      v117 = sub_22C36D29C();
      v118(v117);
      swift_getKeyPath();
      sub_22C8D5344();

      sub_22C8D5268();
      if (!v51)
      {

LABEL_29:
        if (sub_22C8D532C())
        {
          v123 = v44[6];
          sub_22C375EAC(v44 + 2);
          v166 = v123 + 8;
          sub_22C369B5C();
          v169 = v124 + *v124;
          swift_task_alloc();
          sub_22C36CC90();
          v44[104] = v125;
          *v125 = v126;
          sub_22C387700();
          sub_22C8D5044(v127);
          sub_22C8D51B0();
          goto LABEL_9;
        }

        sub_22C8D5200();
        if (v83)
        {
          sub_22C8D5028();
          sub_22C899F90();
          sub_22C8D5138();
          v128 = sub_22C375194();
          v129(v128);
          sub_22C8D5198();

          v130 = sub_22C376B4C();
          v131(v130);
        }

        v132 = sub_22C3800E8();
        v166 = sub_22C3789D4(v132);
        sub_22C369B5C();
        v169 = v133 + *v133;
        swift_task_alloc();
        sub_22C36CC90();
        v44[102] = v134;
        *v134 = v135;
        sub_22C36C5F4(v134);
LABEL_8:
        sub_22C8D50D8();
LABEL_9:
        sub_22C387DC4();
        sub_22C37BEB8();

        return v75(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v166, v169, a29._countAndFlagsBits, a29._object, a30, *(&a30 + 1), a31, *(&a31 + 1), a32, *(&a32 + 1), a33, a34, a35, a36);
      }

      if (qword_27D9BA7C8 != -1)
      {
        sub_22C37F67C(&qword_27D9BA7C8);
      }

      sub_22C3868E0();
      if (v120)
      {
        v83 = qword_27D9C0C20;
        a29._countAndFlagsBits = *v119;
        a29._object = v120;
        v121 = *(v119 + 32);
        a30 = *(v119 + 16);
        a31 = v121;
        a32 = *(v119 + 48);
        sub_22C874CDC(v89, &a29);
        v122 = sub_22C3743B4();
        if (v83)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      sub_22C8D5314(v122);
      sub_22C9063CC();
      v136 = sub_22C90AABC();
      if (sub_22C37B204(v136))
      {
        v137 = sub_22C36D240();
        sub_22C36C890(v137);
        sub_22C36BB14(&dword_22C366000, v138, v139, "ResponseValidator did not find valid argument pattern. To prevent hallucination, going to fallback.");
        sub_22C372FB0();
      }

      sub_22C380694();
      v140 = sub_22C36BAFC();
      v88(v140);
      if (*(v86 + 376))
      {
        sub_22C8D5028();
        sub_22C899F90();
        sub_22C8D5138();
        *v89 = 0;
        v141 = sub_22C375194();
        v142(v141);
        sub_22C8D5198();

        v143 = sub_22C376B4C();
        v144(v143);
      }

      v145 = sub_22C3800E8();
      v166 = sub_22C3789D4(v145);
      sub_22C369B5C();
      v169 = v146 + *v146;
      swift_task_alloc();
      sub_22C36CC90();
      v44[100] = v147;
      *v147 = v148;
      sub_22C372F38(v147);
      goto LABEL_8;
    }
  }

  v91 = v44[38];

  v92 = v44[83];
  v93 = v44[81];
  if (*(v91 + 376))
  {
    v94 = v44[40];
    v167 = v44[41];
    v171 = v79;
    v95 = v44[39];

    v96 = sub_22C899F90();

    sub_22C373D1C();
    sub_22C8D4D04(v93, v97);
    sub_22C36B890();
    sub_22C8D4D04(v92, v98);
    (*(v94 + 104))(v167, *MEMORY[0x277D1FAB8], v95);
    v99 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source;
    v100 = sub_22C79D0C0(v96 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime27ResponseGenerationBiomeRoot10Generation_source, (v44 + 31));
    v101 = v95;
    v79 = v171;
    (*(v94 + 40))(v96 + v99, v167, v101, v100);
    swift_endAccess();
  }

  else
  {

    sub_22C373D1C();
    sub_22C8D4D04(v93, v102);
    sub_22C36B890();
    sub_22C8D4D04(v92, v103);
  }

  sub_22C8D4F78();
  sub_22C8D4D04(v104, v105);
  v106 = sub_22C8D51C0();
  v79(v106);
  sub_22C371F90();
  v149 = v108;
  v150 = v107;
  v151 = v44[69];
  v152 = v44[68];
  v153 = v44[65];
  v154 = v44[64];
  v155 = v44[63];
  v156 = v44[62];
  v157 = v44[61];
  v158 = v44[60];
  v159 = v44[58];
  v160 = v44[55];
  v161 = v44[52];
  v162 = v44[51];
  v163 = v44[49];
  v164 = v44[46];
  v165 = v44[45];
  v168 = v44[42];
  v172 = v44[41];
  sub_22C8D506C();

  sub_22C369C50();
  sub_22C37BEB8();

  return v110(v109, v110, v111, v112, v113, v114, v115, v116, a9, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v168, v172, a29._countAndFlagsBits, a29._object, a30, *(&a30 + 1), a31, *(&a31 + 1), a32, *(&a32 + 1), a33, a34, a35, a36);
}

uint64_t sub_22C8D1CB0()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v3[99] = v0;

  if (v0)
  {
    v7 = v3[38];
    sub_22C36DD28(v3[63], &qword_27D9C10D0, &qword_22C92BFA0);
    v8 = sub_22C8D2A3C;
    v9 = v7;
  }

  else
  {
    v10 = v3[63];
    v11 = v3[38];

    sub_22C36DD28(v10, &qword_27D9C10D0, &qword_22C92BFA0);
    v8 = sub_22C8D1E0C;
    v9 = v11;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22C8D1E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  v31 = v30[83];
  v32 = v30[81];
  v33 = v30[52];

  sub_22C373D1C();
  sub_22C8D4D04(v32, v34);
  sub_22C36B890();
  sub_22C8D4D04(v31, v35);
  sub_22C8D4F78();
  sub_22C8D4D04(v33, v36);
  sub_22C371F90();
  sub_22C388BA0();

  sub_22C369C50();
  sub_22C5CAD40();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_22C8D1F88()
{
  sub_22C36FB38();
  sub_22C386504();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 808) = v0;

  sub_22C36D1D8();
  sub_22C36DD28(*(v4 + 496), &qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C8D50E8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C8D20C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C381C90();

  sub_22C373D1C();
  sub_22C8D4D04(v31, v33);
  sub_22C36B890();
  sub_22C8D4D04(v30, v34);
  sub_22C8D4F78();
  sub_22C8D4D04(v32, v35);
  sub_22C371F90();
  sub_22C388BA0();

  sub_22C369C50();
  sub_22C5CAD40();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_22C8D222C()
{
  sub_22C36FB38();
  sub_22C386504();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 824) = v0;

  sub_22C36D1D8();
  sub_22C36DD28(*(v4 + 488), &qword_27D9C10D0, &qword_22C92BFA0);
  sub_22C8D50E8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C8D2368()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 840) = v0;

  sub_22C6343B0();
  sub_22C37E810();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8D247C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C36B890();
  sub_22C8D4D04(v31, v32);
  sub_22C8D506C();
  v50 = *(v30 + 680);
  sub_22C388DF8();
  sub_22C38C2DC();
  sub_22C36A5BC();
  sub_22C37FBC4(v33, v34, v35, v36, v37, v38, v39, v40);

  sub_22C382AE4();
  sub_22C5CAD40();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v50, a28, a29, a30);
}

uint64_t sub_22C8D25E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  v31 = *(v30 + 664);
  sub_22C373D1C();
  sub_22C8D4D04(v32, v33);
  sub_22C36B890();
  sub_22C8D4D04(v31, v34);
  sub_22C8D506C();
  v52 = *(v30 + 696);
  sub_22C388DF8();
  sub_22C38C2DC();
  sub_22C36A5BC();
  sub_22C37FBC4(v35, v36, v37, v38, v39, v40, v41, v42);

  sub_22C382AE4();
  sub_22C5CAD40();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v52, a28, a29, a30);
}

uint64_t sub_22C8D2754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C8D5240();
  sub_22C373D1C();
  sub_22C8D4D04(v30, v33);
  sub_22C36B890();
  sub_22C8D4D04(v31, v34);
  sub_22C8D506C();
  v52 = *(v32 + 720);
  sub_22C388DF8();
  sub_22C38C2DC();
  sub_22C36A5BC();
  sub_22C37FBC4(v35, v36, v37, v38, v39, v40, v41, v42);

  sub_22C382AE4();
  sub_22C5CAD40();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v52, a28, a29, a30);
}

uint64_t sub_22C8D28C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C8D5240();
  sub_22C373D1C();
  sub_22C8D4D04(v30, v33);
  sub_22C36B890();
  sub_22C8D4D04(v31, v34);
  sub_22C8D506C();
  v52 = *(v32 + 736);
  sub_22C388DF8();
  sub_22C38C2DC();
  sub_22C36A5BC();
  sub_22C37FBC4(v35, v36, v37, v38, v39, v40, v41, v42);

  sub_22C382AE4();
  sub_22C5CAD40();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v52, a28, a29, a30);
}

uint64_t sub_22C8D2A3C(uint64_t a1)
{
  v4 = v1[99];
  sub_22C90405C();
  v5 = sub_22C9063CC();
  v6 = sub_22C90AABC();
  sub_22C370048(v6);
  sub_22C36D36C();
  if (v7)
  {
    *sub_22C36D240() = 0;
    sub_22C8D52D4(&dword_22C366000, v8, v9, "Error executing RG catalog CAT, continuing to model.");
    sub_22C3699EC();
  }

  v10 = sub_22C36D264();
  v3(v10);
  swift_getKeyPath();
  sub_22C8D5344();

  sub_22C8D5268();
  if (v11)
  {
    if (qword_27D9BA7C8 != -1)
    {
      sub_22C37F67C(&qword_27D9BA7C8);
    }

    sub_22C3868E0();
    if (v13)
    {
      v5 = qword_27D9C0C20;
      sub_22C8D5108(v12, v41, v42, v43, v45, v46, v47, v48);
      v14 = sub_22C3743B4();
      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    sub_22C8D5314(v14);
    sub_22C9063CC();
    v27 = sub_22C90AABC();
    if (sub_22C37B204(v27))
    {
      v28 = sub_22C36D240();
      sub_22C36C890(v28);
      sub_22C36BB14(&dword_22C366000, v29, v30, "ResponseValidator did not find valid argument pattern. To prevent hallucination, going to fallback.");
      sub_22C372FB0();
    }

    sub_22C380694();
    v31 = sub_22C36BAFC();
    v2(v31);
    if (*(v6 + 376))
    {
      sub_22C8D5028();
      sub_22C899F90();
      sub_22C8D5138();
      *v4 = 0;
      v32 = sub_22C375194();
      v33(v32);
      sub_22C8D5198();

      v34 = sub_22C376B4C();
      v35(v34);
    }

    v36 = sub_22C3800E8();
    sub_22C3789D4(v36);
    sub_22C369B5C();
    v44 = (v37 + *v37);
    swift_task_alloc();
    sub_22C36CC90();
    v1[100] = v38;
    *v38 = v39;
    sub_22C372F38(v38);
    goto LABEL_20;
  }

LABEL_9:
  if (sub_22C8D532C())
  {
    sub_22C375EAC(v1 + 2);
    sub_22C8D4F90();
    v44 = (v15 + *v15);
    swift_task_alloc();
    sub_22C36CC90();
    v1[104] = v16;
    *v16 = v17;
    sub_22C387700();
    sub_22C8D5044(v18);
    sub_22C8D51B0();
    goto LABEL_21;
  }

  sub_22C8D5200();
  if (v5)
  {
    sub_22C8D5028();
    sub_22C899F90();
    sub_22C8D5138();
    v19 = sub_22C375194();
    v20(v19);
    sub_22C8D5198();

    v21 = sub_22C376B4C();
    v22(v21);
  }

  v23 = sub_22C3800E8();
  sub_22C3789D4(v23);
  sub_22C369B5C();
  v44 = (v24 + *v24);
  swift_task_alloc();
  sub_22C36CC90();
  v1[102] = v25;
  *v25 = v26;
  sub_22C36C5F4(v25);
LABEL_20:
  sub_22C8D50D8();
LABEL_21:
  sub_22C387DC4();

  return v44();
}

uint64_t sub_22C8D2E58(uint64_t a1)
{
  v4 = v1[97];
  sub_22C90405C();
  v5 = sub_22C9063CC();
  v6 = sub_22C90AABC();
  sub_22C370048(v6);
  sub_22C36D36C();
  if (v7)
  {
    *sub_22C36D240() = 0;
    sub_22C8D52D4(&dword_22C366000, v8, v9, "Error executing RG catalog CAT, continuing to model.");
    sub_22C3699EC();
  }

  v10 = sub_22C36D264();
  v3(v10);
  swift_getKeyPath();
  sub_22C8D5344();

  sub_22C8D5268();
  if (v11)
  {
    if (qword_27D9BA7C8 != -1)
    {
      sub_22C37F67C(&qword_27D9BA7C8);
    }

    sub_22C3868E0();
    if (v13)
    {
      v5 = qword_27D9C0C20;
      sub_22C8D5108(v12, v41, v42, v43, v45, v46, v47, v48);
      v14 = sub_22C3743B4();
      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    sub_22C8D5314(v14);
    sub_22C9063CC();
    v27 = sub_22C90AABC();
    if (sub_22C37B204(v27))
    {
      v28 = sub_22C36D240();
      sub_22C36C890(v28);
      sub_22C36BB14(&dword_22C366000, v29, v30, "ResponseValidator did not find valid argument pattern. To prevent hallucination, going to fallback.");
      sub_22C372FB0();
    }

    sub_22C380694();
    v31 = sub_22C36BAFC();
    v2(v31);
    if (*(v6 + 376))
    {
      sub_22C8D5028();
      sub_22C899F90();
      sub_22C8D5138();
      *v4 = 0;
      v32 = sub_22C375194();
      v33(v32);
      sub_22C8D5198();

      v34 = sub_22C376B4C();
      v35(v34);
    }

    v36 = sub_22C3800E8();
    sub_22C3789D4(v36);
    sub_22C369B5C();
    v44 = (v37 + *v37);
    swift_task_alloc();
    sub_22C36CC90();
    v1[100] = v38;
    *v38 = v39;
    sub_22C372F38(v38);
    goto LABEL_20;
  }

LABEL_9:
  if (sub_22C8D532C())
  {
    sub_22C375EAC(v1 + 2);
    sub_22C8D4F90();
    v44 = (v15 + *v15);
    swift_task_alloc();
    sub_22C36CC90();
    v1[104] = v16;
    *v16 = v17;
    sub_22C387700();
    sub_22C8D5044(v18);
    sub_22C8D51B0();
    goto LABEL_21;
  }

  sub_22C8D5200();
  if (v5)
  {
    sub_22C8D5028();
    sub_22C899F90();
    sub_22C8D5138();
    v19 = sub_22C375194();
    v20(v19);
    sub_22C8D5198();

    v21 = sub_22C376B4C();
    v22(v21);
  }

  v23 = sub_22C3800E8();
  sub_22C3789D4(v23);
  sub_22C369B5C();
  v44 = (v24 + *v24);
  swift_task_alloc();
  sub_22C36CC90();
  v1[102] = v25;
  *v25 = v26;
  sub_22C36C5F4(v25);
LABEL_20:
  sub_22C8D50D8();
LABEL_21:
  sub_22C387DC4();

  return v44();
}

uint64_t sub_22C8D3274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C381C90();

  sub_22C373D1C();
  sub_22C8D4D04(v31, v34);
  sub_22C36B890();
  sub_22C8D4D04(v30, v35);
  sub_22C8D4F78();
  sub_22C8D4D04(v33, v36);
  sub_22C8D506C();
  v54 = *(v32 + 808);
  sub_22C388DF8();
  sub_22C38C2DC();
  sub_22C36A5BC();
  sub_22C37FBC4(v37, v38, v39, v40, v41, v42, v43, v44);

  sub_22C382AE4();
  sub_22C5CAD40();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v54, a28, a29, a30);
}

uint64_t sub_22C8D33FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C381C90();

  sub_22C373D1C();
  sub_22C8D4D04(v31, v34);
  sub_22C36B890();
  sub_22C8D4D04(v30, v35);
  sub_22C8D4F78();
  sub_22C8D4D04(v33, v36);
  sub_22C8D506C();
  v54 = *(v32 + 824);
  sub_22C388DF8();
  sub_22C38C2DC();
  sub_22C36A5BC();
  sub_22C37FBC4(v37, v38, v39, v40, v41, v42, v43, v44);

  sub_22C382AE4();
  sub_22C5CAD40();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v54, a28, a29, a30);
}

uint64_t sub_22C8D3584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C8D5050();
  sub_22C382E74();
  sub_22C381C90();

  sub_22C373D1C();
  sub_22C8D4D04(v31, v34);
  sub_22C36B890();
  sub_22C8D4D04(v30, v35);
  sub_22C8D4F78();
  sub_22C8D4D04(v33, v36);
  sub_22C8D506C();
  v54 = *(v32 + 840);
  sub_22C388DF8();
  sub_22C38C2DC();
  sub_22C36A5BC();
  sub_22C37FBC4(v37, v38, v39, v40, v41, v42, v43, v44);

  sub_22C382AE4();
  sub_22C5CAD40();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v54, a28, a29, a30);
}

uint64_t sub_22C8D370C()
{
  sub_22C369980();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_22C9020CC();
  v1[11] = v5;
  sub_22C3699B8(v5);
  v1[12] = v6;
  v1[13] = sub_22C3699D4();
  v7 = sub_22C9026BC();
  v1[14] = v7;
  sub_22C3699B8(v7);
  v1[15] = v8;
  v1[16] = sub_22C3699D4();
  v9 = sub_22C907DEC();
  v1[17] = v9;
  sub_22C3699B8(v9);
  v1[18] = v10;
  v1[19] = sub_22C3699D4();
  v11 = sub_22C906ECC();
  v1[20] = v11;
  sub_22C3699B8(v11);
  v1[21] = v12;
  v13 = sub_22C3699D4();
  sub_22C8D525C(v13);
  v14 = sub_22C907C5C();
  v1[23] = v14;
  sub_22C3699B8(v14);
  v1[24] = v15;
  v1[25] = sub_22C3699D4();
  v16 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C8D38E0(uint64_t a1)
{
  v2 = sub_22C90804C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1[24];
    v5 = *(v4 + 16);
    v4 += 16;
    v42 = v5;
    v6 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v39 = *(v4 + 56);
    v41 = (v1[18] + 8);
    v40 = *MEMORY[0x277D1CBF0];
    v7 = MEMORY[0x277D84F90];
    v38 = (v1[12] + 8);
    while (1)
    {
      v43 = v3;
      v8 = v1[19];
      v9 = v1[17];
      v42(v1[25], v6, v1[23]);
      sub_22C907C0C();
      sub_22C906EBC();
      v10 = sub_22C3726C4();
      v11(v10);
      sub_22C907DAC();
      (*v41)(v8, v9);
      v12 = sub_22C36CA88();
      if (v13(v12) == v40)
      {
        v14 = v1[13];
        v15 = v1[11];
        v16 = sub_22C379FC8();
        v17(v16);
        v18 = sub_22C36BA00();
        v19(v18);
        sub_22C3A5908(&qword_27D9BACF0, &unk_22C90D590);
        sub_22C369A48();
        v20 = sub_22C9093BC();
        sub_22C3699B8(v20);
        sub_22C8D52A8();
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_22C90F800;
        sub_22C90207C();
        (*v38)(v14, v15);
        v22 = sub_22C8D5274();
        result = v23(v22);
      }

      else
      {
        v25 = sub_22C8D5274();
        v26(v25);
        v27 = sub_22C379FC8();
        result = v28(v27);
        v21 = MEMORY[0x277D84F90];
      }

      v29 = *(v21 + 16);
      v30 = *(v7 + 16);
      if (__OFADD__(v30, v29))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v30 + v29 > *(v7 + 24) >> 1)
      {
        sub_22C5903C0();
        v7 = v31;
      }

      if (*(v21 + 16))
      {
        v32 = (*(v7 + 24) >> 1) - *(v7 + 16);
        result = sub_22C9093BC();
        if (v32 < v29)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v29)
        {
          v33 = *(v7 + 16);
          v34 = __OFADD__(v33, v29);
          v35 = v33 + v29;
          if (v34)
          {
            goto LABEL_25;
          }

          *(v7 + 16) = v35;
        }
      }

      else
      {

        if (v29)
        {
          goto LABEL_23;
        }
      }

      v6 += v39;
      v3 = v43 - 1;
      if (v43 == 1)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_19:
    v1[26] = v7;
    sub_22C378A4C(v1[10] + 120, (v1 + 2));
    swift_task_alloc();
    sub_22C36CC90();
    v1[27] = v36;
    *v36 = v37;
    v36[1] = sub_22C8D3D44;

    return sub_22C883B68();
  }

  return result;
}

uint64_t sub_22C8D3D44()
{
  sub_22C36FB38();
  sub_22C3864E0();
  sub_22C36D994();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  sub_22C6343B0();
  sub_22C37E810();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8D3E74()
{
  sub_22C36D5EC();
  sub_22C36CDAC();
  sub_22C8D4C5C(v0 + 16);

  sub_22C369C50();

  return v1();
}

uint64_t sub_22C8D3F10()
{
  sub_22C36D5EC();
  sub_22C36CDAC();
  sub_22C8D4C5C(v0 + 16);

  sub_22C369A24();

  return v1();
}

uint64_t ResponseGenerationService.ResponseGenerationServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v1);
  return sub_22C90B66C();
}

uint64_t sub_22C8D4068(uint64_t a1)
{
  sub_22C90B62C();
  ResponseGenerationService.ResponseGenerationServiceError.hash(into:)();
  return sub_22C90B66C();
}

uint64_t sub_22C8D40B0(uint64_t a1)
{
  v2 = sub_22C8D4D5C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8D40EC(uint64_t a1)
{
  v2 = sub_22C8D4D5C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C8D4174()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3C0980;

  return sub_22C8C7CEC();
}

unint64_t sub_22C8D420C()
{
  result = qword_27D9C1378;
  if (!qword_27D9C1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1378);
  }

  return result;
}

uint64_t sub_22C8D4260()
{
  sub_22C3743E4();
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v7 = sub_22C90806C();
  sub_22C3699B8(v7);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_22C90069C();
  sub_22C3699B8(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  v17 = sub_22C9087BC();
  sub_22C369914(v17);
  v19 = (v14 + v16 + *(v18 + 80)) & ~*(v18 + 80);
  v20 = *(v0 + 16);
  v21 = swift_task_alloc();
  *(v4 + 16) = v21;
  *v21 = v4;
  v21[1] = sub_22C46BC08;

  return sub_22C8C96DC(v6, v3, v20, v0 + v9, v0 + v14, v0 + v19);
}

uint64_t sub_22C8D4400(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return v4;
}

unint64_t sub_22C8D444C()
{
  result = qword_27D9C13B0;
  if (!qword_27D9C13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C13B0);
  }

  return result;
}

uint64_t sub_22C8D44A4(uint64_t a1)
{
  result = sub_22C38B5F0(&qword_2814320E0, type metadata accessor for ResponseGenerationService, &protocol conformance descriptor for ResponseGenerationService);
  *(a1 + 8) = result;
  return result;
}

void sub_22C8D4504(uint64_t a1)
{
  sub_22C8D4B1C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ResponseGenerationService.setup(sessionState:)()
{
  sub_22C36FB38();
  v2 = v1;
  sub_22C36C89C();
  v6 = (*(v3 + 352) + **(v3 + 352));
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_22C46BC08;

  return v6(v2);
}

uint64_t dispatch thunk of ResponseGenerationService.setup(responseLocale:sessionIdentityToken:interactionId:sessionWideOriginatingDeviceIDSId:genderSettings:)()
{
  sub_22C3749D8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_22C36C89C();
  v16 = (*(v13 + 360) + **(v13 + 360));
  v14 = swift_task_alloc();
  *(v0 + 16) = v14;
  *v14 = v0;
  v14[1] = sub_22C46BC08;

  return v16(v12, v10, v8, v6, v4, v2);
}

uint64_t dispatch thunk of ResponseGenerationService.handle(_:plannerServiceContext:)()
{
  sub_22C36D5EC();
  v2 = v1;
  v4 = v3;
  sub_22C36C89C();
  v8 = (*(v5 + 376) + **(v5 + 376));
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_22C7D8F18;

  return v8(v4, v2);
}

uint64_t dispatch thunk of ResponseGenerationService.handle(_:sessionEventId:transcript:)()
{
  sub_22C3743E4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_22C36C89C();
  v13 = (*(v9 + 392) + **(v9 + 392));
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_22C46BC08;

  return v13(v8, v6, v4, v2);
}

void sub_22C8D4B1C(uint64_t a1)
{
  if (!qword_2814357A0)
  {
    sub_22C3AC1A0(&qword_27D9BB570, &qword_22C92D210);
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_2814357A0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationService.ResponseGenerationServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        break;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C8D4CB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C8D4D04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_22C8D4D5C()
{
  result = qword_27D9C13D0;
  if (!qword_27D9C13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C13D0);
  }

  return result;
}

uint64_t sub_22C8D4DB0()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_22C382AF4;

  return sub_22C8CE5FC(v5, v3, v6, v7, v8);
}

uint64_t sub_22C8D4F1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C8D5028()
{
}

uint64_t sub_22C8D506C()
{
  sub_22C36FF94((v0 + 96));

  return sub_22C36FF94((v0 + 16));
}

uint64_t sub_22C8D50B0()
{

  return sub_22C8D4D04(v0, type metadata accessor for ResponseGenerationPreferences);
}

uint64_t sub_22C8D5108@<X0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, Swift::String a5, __int128 a6, __int128 a7, __int128 a8)
{
  a5._countAndFlagsBits = v9;
  a5._object = v8;
  v12 = a1[2];
  a6 = a1[1];
  a7 = v12;
  a8 = a1[3];

  return sub_22C874CDC(v10, &a5);
}

uint64_t sub_22C8D5138()
{
}

void *sub_22C8D5150()
{

  return sub_22C36CECC(v3, v2, v1, v6, v0, v4, v5);
}

uint64_t sub_22C8D5198()
{

  return sub_22C89F34C();
}

uint64_t sub_22C8D520C(uint64_t a1, ...)
{

  return sub_22C90A1AC();
}

uint64_t sub_22C8D5224(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *a2 = 0;
  *(v4 - 88) = a1;

  return swift_willThrow();
}

uint64_t sub_22C8D5240()
{
}

void sub_22C8D52D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_22C8D52F4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C8D5314(uint64_t a1)
{

  return sub_22C90405C();
}

uint64_t sub_22C8D532C()
{
  v2 = *(v0 + 288);

  return sub_22C8B43F8(v2);
}

void *sub_22C8D5344()
{

  return sub_22C901F3C();
}

uint64_t sub_22C8D535C(uint64_t a1)
{

  return sub_22C907FDC();
}

void sub_22C8D5374()
{
  sub_22C36BA7C();
  sub_22C3A5908(&qword_27D9BAE70, &unk_22C90FA90);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  sub_22C36FF70();
  sub_22C3A5908(&qword_27D9BAE60, &unk_22C911F20);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  sub_22C38ACC0();
  if (v0)
  {
    v3 = sub_22C8E6474();
    sub_22C3B6E9C(v3, v4, v5);
    sub_22C8E63D8();
    do
    {
      v6 = sub_22C37F370();
      sub_22C4E719C(v6, v7, &qword_27D9BAE70, &unk_22C90FA90);
      sub_22C37A4D4();
      sub_22C37F69C();
      if (v8)
      {
        sub_22C8E64A4();
        sub_22C3B6E9C(v12, v13, v14);
      }

      v9 = sub_22C371FC0();
      sub_22C4E7208(v9, v10, &qword_27D9BAE60, &unk_22C911F20);
      sub_22C8E65D8();
    }

    while (!v11);
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C8D54F4()
{
  sub_22C36BA7C();
  sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  sub_22C36FF70();
  sub_22C3A5908(&qword_27D9BAF28, &unk_22C90D7D0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  sub_22C38ACC0();
  if (v0)
  {
    v3 = sub_22C8E6474();
    sub_22C3B7098(v3, v4, v5);
    sub_22C8E63D8();
    do
    {
      v6 = sub_22C37F370();
      sub_22C4E719C(v6, v7, &qword_27D9BAF30, &unk_22C90FAA0);
      sub_22C37A4D4();
      sub_22C37F69C();
      if (v8)
      {
        sub_22C8E64A4();
        sub_22C3B7098(v12, v13, v14);
      }

      v9 = sub_22C371FC0();
      sub_22C4E7208(v9, v10, &qword_27D9BAF28, &unk_22C90D7D0);
      sub_22C8E65D8();
    }

    while (!v11);
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C8D5674()
{
  sub_22C36BA7C();
  sub_22C3A5908(&qword_27D9BB6D0, &qword_22C90FAE0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  sub_22C36FF70();
  sub_22C3A5908(&qword_27D9BB100, &qword_22C90D9A0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  sub_22C38ACC0();
  if (v0)
  {
    v3 = sub_22C8E6474();
    sub_22C3B733C(v3, v4, v5);
    sub_22C8E63D8();
    do
    {
      v6 = sub_22C37F370();
      sub_22C4E719C(v6, v7, &qword_27D9BB6D0, &qword_22C90FAE0);
      sub_22C37A4D4();
      sub_22C37F69C();
      if (v8)
      {
        sub_22C8E64A4();
        sub_22C3B733C(v12, v13, v14);
      }

      v9 = sub_22C371FC0();
      sub_22C4E7208(v9, v10, &qword_27D9BB100, &qword_22C90D9A0);
      sub_22C8E65D8();
    }

    while (!v11);
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

uint64_t sub_22C8D57F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v19 = MEMORY[0x277D84F90];
    sub_22C3B739C(0, v1, 0);
    v2 = v19;
    v4 = a1 + 80;
    do
    {
      v5 = *(v4 - 24);
      v6 = *(v4 - 16);
      v7 = *(v4 - 8);

      sub_22C456C94(v5, v6, v7);
      sub_22C3A5908(&qword_27D9BE4C8, &qword_22C91DB28);
      sub_22C3A5908(&qword_27D9BAFD0, &qword_22C90D870);
      swift_dynamicCast();
      v8 = v15;
      v9 = v17;
      v10 = v18;
      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22C3B739C(v11 > 1, v12 + 1, 1);
        v10 = v18;
        v9 = v17;
        v8 = v15;
      }

      *(v19 + 16) = v12 + 1;
      v13 = v19 + 56 * v12;
      *(v13 + 32) = v8;
      *(v13 + 48) = v16;
      *(v13 + 56) = v9;
      *(v13 + 72) = v10;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_22C8D5980()
{
  sub_22C36BA7C();
  sub_22C3A5908(&qword_27D9BB6C0, &qword_22C91A3D0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  sub_22C36FF70();
  sub_22C3A5908(&qword_27D9BB028, &unk_22C90FAD0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  sub_22C38ACC0();
  if (v0)
  {
    v3 = sub_22C8E6474();
    sub_22C3B73DC(v3, v4, v5);
    sub_22C8E63D8();
    do
    {
      v6 = sub_22C37F370();
      sub_22C4E719C(v6, v7, &qword_27D9BB6C0, &qword_22C91A3D0);
      sub_22C37A4D4();
      sub_22C37F69C();
      if (v8)
      {
        sub_22C8E64A4();
        sub_22C3B73DC(v12, v13, v14);
      }

      v9 = sub_22C371FC0();
      sub_22C4E7208(v9, v10, &qword_27D9BB028, &unk_22C90FAD0);
      sub_22C8E65D8();
    }

    while (!v11);
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

uint64_t sub_22C8D5B00(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22C90B1BC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    result = sub_22C90B01C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2318B8460](v4, a1);
        }

        else
        {
        }

        ++v4;
        type metadata accessor for PayloadLayout(0);
        v5 = sub_22C36ECB4();
        sub_22C3A5908(v5, v6);
        swift_dynamicCast();
        sub_22C90AFEC();
        sub_22C90B02C();
        sub_22C90B03C();
        sub_22C90AFFC();
      }

      while (v2 != v4);
      return v7;
    }
  }

  return result;
}

void sub_22C8D5C44()
{
  sub_22C36BA7C();
  sub_22C3A5908(&qword_27D9BAD60, &qword_22C91D9D0);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  sub_22C36FF70();
  sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  sub_22C38ACC0();
  if (v0)
  {
    v3 = sub_22C8E6474();
    sub_22C3B7BB0(v3, v4, v5);
    sub_22C8E63D8();
    do
    {
      v6 = sub_22C37F370();
      sub_22C4E719C(v6, v7, &qword_27D9BAD60, &qword_22C91D9D0);
      sub_22C37A4D4();
      sub_22C37F69C();
      if (v8)
      {
        sub_22C8E64A4();
        sub_22C3B7BB0(v12, v13, v14);
      }

      v9 = sub_22C371FC0();
      sub_22C4E7208(v9, v10, &qword_27D9BA910, &unk_22C90C960);
      sub_22C8E65D8();
    }

    while (!v11);
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

uint64_t sub_22C8D5DC4(uint64_t a1)
{
  v2 = sub_22C902A7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C3A5908(&qword_27D9BAC60, &qword_22C90D500);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_22C3B8058(0, v9, 0);
    v10 = v20;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22C3B8058((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v15 + 1;
      sub_22C4E7208(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, &qword_27D9BAC60, &qword_22C90D500);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_22C8D6008()
{
  sub_22C369980();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = sub_22C90225C();
  v0[8] = v7;
  sub_22C3699B8(v7);
  v0[9] = v8;
  v0[10] = sub_22C3699D4();
  v9 = sub_22C906ECC();
  v0[11] = v9;
  sub_22C3699B8(v9);
  v0[12] = v10;
  v0[13] = sub_22C3699D4();
  v11 = sub_22C9063DC();
  v0[14] = v11;
  sub_22C3699B8(v11);
  v0[15] = v12;
  v0[16] = sub_22C36D0D4();
  v0[17] = swift_task_alloc();
  v13 = sub_22C9020CC();
  v0[18] = v13;
  sub_22C3699B8(v13);
  v0[19] = v14;
  v0[20] = sub_22C3699D4();
  v15 = sub_22C3A5908(&qword_27D9C1460, &qword_22C92D678);
  sub_22C369914(v15);
  v0[21] = sub_22C3699D4();
  v16 = sub_22C3A5908(&qword_27D9C1468, &qword_22C92D680);
  sub_22C369914(v16);
  v0[22] = sub_22C3699D4();
  v17 = sub_22C3A5908(&qword_27D9BF498, &unk_22C922750);
  sub_22C369914(v17);
  v0[23] = sub_22C36D0D4();
  v0[24] = swift_task_alloc();
  v18 = sub_22C90944C();
  v0[25] = v18;
  sub_22C3699B8(v18);
  v0[26] = v19;
  v0[27] = sub_22C36D0D4();
  v0[28] = swift_task_alloc();
  v20 = sub_22C902A7C();
  v0[29] = v20;
  sub_22C3699B8(v20);
  v0[30] = v21;
  v0[31] = sub_22C3699D4();
  v22 = sub_22C902ADC();
  v0[32] = v22;
  sub_22C3699B8(v22);
  v0[33] = v23;
  v0[34] = sub_22C3699D4();
  v24 = sub_22C90281C();
  v0[35] = v24;
  sub_22C3699B8(v24);
  v0[36] = v25;
  v0[37] = sub_22C3699D4();
  v26 = sub_22C9028FC();
  v0[38] = v26;
  sub_22C3699B8(v26);
  v0[39] = v27;
  v0[40] = sub_22C3699D4();
  v28 = sub_22C902BDC();
  v0[41] = v28;
  sub_22C3699B8(v28);
  v0[42] = v29;
  v0[43] = sub_22C3699D4();
  v30 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v30);
  v0[44] = sub_22C3699D4();
  v31 = sub_22C9029AC();
  v0[45] = v31;
  sub_22C3699B8(v31);
  v0[46] = v32;
  v0[47] = sub_22C3699D4();
  v33 = sub_22C9093BC();
  v0[48] = v33;
  sub_22C3699B8(v33);
  v0[49] = v34;
  v0[50] = sub_22C36D0D4();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v35 = sub_22C9029DC();
  v0[54] = v35;
  sub_22C3699B8(v35);
  v0[55] = v36;
  v0[56] = sub_22C36D0D4();
  v0[57] = swift_task_alloc();
  v37 = sub_22C902A4C();
  v0[58] = v37;
  sub_22C3699B8(v37);
  v0[59] = v38;
  v0[60] = sub_22C3699D4();
  v39 = sub_22C90214C();
  v0[61] = v39;
  sub_22C3699B8(v39);
  v0[62] = v40;
  v0[63] = sub_22C36D0D4();
  v0[64] = swift_task_alloc();
  v41 = sub_22C90033C();
  v0[65] = v41;
  sub_22C369914(v41);
  v0[66] = sub_22C36D0D4();
  v0[67] = swift_task_alloc();
  v42 = sub_22C901FAC();
  sub_22C369914(v42);
  v0[68] = sub_22C36D0D4();
  v0[69] = swift_task_alloc();
  v0[70] = swift_task_alloc();
  v43 = sub_22C90069C();
  v0[71] = v43;
  sub_22C3699B8(v43);
  v0[72] = v44;
  v0[73] = sub_22C36D0D4();
  v0[74] = swift_task_alloc();
  v0[75] = swift_task_alloc();
  v0[76] = swift_task_alloc();
  v0[77] = swift_task_alloc();
  v0[78] = swift_task_alloc();
  v0[79] = swift_task_alloc();
  v45 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v45);
  v0[80] = sub_22C36D0D4();
  v0[81] = swift_task_alloc();
  v0[82] = swift_task_alloc();
  v0[83] = swift_task_alloc();
  v0[84] = swift_task_alloc();
  v46 = sub_22C902ABC();
  v0[85] = v46;
  sub_22C3699B8(v46);
  v0[86] = v47;
  v0[87] = sub_22C3699D4();
  v48 = sub_22C908D6C();
  v0[88] = v48;
  sub_22C3699B8(v48);
  v0[89] = v49;
  v0[90] = sub_22C36D0D4();
  v0[91] = swift_task_alloc();
  v50 = sub_22C90077C();
  v0[92] = v50;
  sub_22C3699B8(v50);
  v0[93] = v51;
  v0[94] = sub_22C3699D4();
  v52 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v52);
  v0[95] = sub_22C3699D4();
  v53 = sub_22C908EAC();
  v0[96] = v53;
  sub_22C3699B8(v53);
  v0[97] = v54;
  v0[98] = sub_22C36D0D4();
  v0[99] = swift_task_alloc();
  v55 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v55);
  v0[100] = sub_22C36D0D4();
  v0[101] = swift_task_alloc();
  v0[102] = swift_task_alloc();
  v56 = sub_22C90769C();
  v0[103] = v56;
  sub_22C3699B8(v56);
  v0[104] = v57;
  v0[105] = sub_22C36D0D4();
  v0[106] = swift_task_alloc();
  v58 = sub_22C9027EC();
  v0[107] = v58;
  sub_22C3699B8(v58);
  v0[108] = v59;
  v0[109] = sub_22C3699D4();
  v60 = sub_22C907DEC();
  v0[110] = v60;
  sub_22C3699B8(v60);
  v0[111] = v61;
  v0[112] = sub_22C3699D4();
  v62 = sub_22C9026BC();
  v0[113] = v62;
  sub_22C3699B8(v62);
  v0[114] = v63;
  v0[115] = sub_22C36D0D4();
  v0[116] = swift_task_alloc();
  v0[117] = swift_task_alloc();
  v0[118] = swift_task_alloc();
  v0[119] = swift_task_alloc();
  v64 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v64, v65, v66);
}

void sub_22C8D6A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 912);
  v14 = *(v12 + 896);
  v15 = *(v12 + 888);
  v16 = *(v12 + 880);
  sub_22C906EBC();
  sub_22C907DAC();
  (*(v15 + 8))(v14, v16);
  sub_22C8DAEE4();
  v18 = v17;
  *(v12 + 960) = v17;
  v19 = *(v13 + 16);
  *(v12 + 968) = v19;
  *(v12 + 976) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20 = sub_22C370018();
  v19(v20);
  v22 = *(v13 + 88);
  v21 = v13 + 88;
  *(v12 + 984) = v22;
  *(v12 + 992) = v21 & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v23 = sub_22C36ECB4();
  v25 = v24(v23);
  v26 = *MEMORY[0x277D1CBF0];
  *(v12 + 1264) = *MEMORY[0x277D1CBF0];
  if (v25 == v26)
  {
    sub_22C37B90C();
    v28 = *(v12 + 152);
    v27 = *(v12 + 160);
    v29 = *(v12 + 144);
    v30 = sub_22C37EBDC();
    v31(v30);
    v32 = v28 + 32;
    v33 = sub_22C37EF10();
    v34(v33);
    v35 = v27;
    if (sub_22C9020BC())
    {
      v36 = *(v12 + 824);
      sub_22C906E9C();
      v37 = sub_22C37EF1C();
      sub_22C36D0A8(v37, v38, v36);
      if (v39)
      {
        v40 = *(v12 + 808);

        v41 = &qword_27D9BF330;
        v42 = &unk_22C923250;
LABEL_24:
        sub_22C36DD28(v40, v41, v42);
        v101 = *(v12 + 96);
        v100 = *(v12 + 104);
        v102 = *(v12 + 88);
        v103 = *(v12 + 24);
        sub_22C90405C();
        (*(v101 + 16))(v100, v103, v102);
        v104 = sub_22C9063CC();
        v105 = sub_22C90AADC();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = *(v12 + 824);
          v107 = sub_22C36FB44();
          v108 = sub_22C370060();
          v315[0] = v108;
          *v107 = 136315138;
          sub_22C906E9C();
          v109 = sub_22C374568();
          sub_22C36D0A8(v109, v110, v106);
          if (v39)
          {
            sub_22C36DD28(*(v12 + 800), &qword_27D9BF330, &unk_22C923250);
            v177 = 0;
            v179 = 0xE000000000000000;
          }

          else
          {
            v174 = *(v12 + 832);
            v175 = *(v12 + 824);
            v176 = *(v12 + 800);
            v177 = sub_22C90768C();
            v179 = v178;
            (*(v174 + 8))(v176, v175);
          }

          v180 = *(v12 + 136);
          v181 = *(v12 + 112);
          v182 = *(v12 + 120);
          (*(*(v12 + 96) + 8))(*(v12 + 104), *(v12 + 88));
          v183 = sub_22C36F9F4(v177, v179, v315);

          *(v107 + 4) = v183;
          _os_log_impl(&dword_22C366000, v104, v105, "The tool has provided an inAppResponse but we are unable to infer the bundleId. toolId: %s", v107, 0xCu);
          sub_22C36FF94(v108);
          sub_22C3699EC();
          sub_22C3699EC();

          (*(v182 + 8))(v180, v181);
        }

        else
        {

          v125 = sub_22C36ECB4();
          v126(v125);
          v127 = sub_22C37170C();
          v128(v127);
        }

        v312 = *(v12 + 952);
        v184 = *(v12 + 912);
        v185 = *(v12 + 904);
        sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
        v186 = sub_22C9023BC();
        sub_22C369824();
        v188 = v187;
        v189 = (*(v187 + 80) + 32) & ~*(v187 + 80);
        v190 = swift_allocObject();
        *(v190 + 16) = xmmword_22C90F800;
        sub_22C90237C();
        (*(v188 + 104))(v190 + v189, *MEMORY[0x277D1C988], v186);
        v191 = sub_22C36D264();
        v192(v191);
        (*(v184 + 8))(v312, v185);
        goto LABEL_58;
      }

      v94 = *(v12 + 200);
      v95 = *(v12 + 184);
      (*(*(v12 + 832) + 32))(*(v12 + 840), *(v12 + 808), *(v12 + 824));
      sub_22C87ACCC(v95);
      v96 = sub_22C37EF1C();
      v98 = sub_22C370B74(v96, v97, v94);
      v99 = *(v12 + 832);
      if (v98 == 1)
      {
        v40 = *(v12 + 184);
        (*(v99 + 8))(*(v12 + 840), *(v12 + 824));

        v41 = &qword_27D9BF498;
        v42 = &unk_22C922750;
        goto LABEL_24;
      }

      v129 = *(v12 + 208);
      v35 = *(v12 + 216);
      v300 = *(v12 + 200);
      v304 = *(v12 + 840);
      v309 = *(v12 + 824);
      v130 = *(v12 + 152);
      v311 = *(v12 + 144);
      v313 = *(v12 + 160);
      (*(v129 + 32))(v35, *(v12 + 184));
      sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
      v131 = sub_22C9023BC();
      sub_22C369824();
      v133 = v132;
      v27 = (*(v132 + 80) + 32) & ~*(v132 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_22C90F800;
      sub_22C90943C();
      sub_22C90237C();
      (*(v133 + 104))(v51 + v27, *MEMORY[0x277D1C988], v131);
      v134 = *(v129 + 8);
      v32 = v129 + 8;
      v134(v35, v300);
      v135 = *(v99 + 8);
      v29 = (v99 + 8);
      v135(v304, v309);
      (*(v130 + 8))(v313, v311);
LABEL_49:
      v167 = sub_22C373D34();
      v168(v167);
      v169 = sub_22C36BBCC();
      if ((v32)(v169) == v27)
      {
        v170 = sub_22C8E63B8();
        v29(v170);
      }

      else
      {
        sub_22C372F60();
        if (v39)
        {
          v315[0] = v35;
          sub_22C3CF7C8(v51);
          v171 = sub_22C36A608();
          v29(v171);
LABEL_55:
          v173 = sub_22C386708();
          v29(v173);
LABEL_58:
          sub_22C381440();

          sub_22C372034();

          v195(v193, v194, v195, v196, v197, v198, v199, v200, a9, a10, a11, a12);
          return;
        }

        v172 = sub_22C36A608();
        v29(v172);
      }

      goto LABEL_55;
    }

    if (*(v18 + 16))
    {
      (*(*(v12 + 152) + 8))(*(v12 + 160), *(v12 + 144));
      v51 = MEMORY[0x277D84F90];
      goto LABEL_49;
    }

    sub_22C90207C();
    v121 = swift_task_alloc();
    *(v12 + 1216) = v121;
    *v121 = v12;
    v121[1] = sub_22C8DA3A0;
    v122 = *(v12 + 400);
    goto LABEL_34;
  }

  if (v25 != *MEMORY[0x277D1CBA8])
  {
    v52 = MEMORY[0x277D84F90];
    if (v25 == *MEMORY[0x277D1CBB0])
    {
      sub_22C37B90C();
      v53 = sub_22C37EBDC();
      v54(v53);
      v55 = sub_22C36BA00();
      v57 = v56(v55);
      v58 = MEMORY[0x2318AFCE0](v57);
      v59 = *(v58 + 16);
      if (v59)
      {
        v60 = *(v12 + 776);
        v61 = *(v12 + 208);
        v315[0] = v52;
        sub_22C3B8078(0, v59, 0);
        v62 = v52;
        v60 += 16;
        sub_22C36BA94();
        v64 = v58 + v63;
        v303 = *(v60 + 56);
        v308 = v65;
        v294 = (v61 + 8);
        v295 = (v61 + 32);
        v299 = (v60 - 8);
        do
        {
          v67 = *(v12 + 192);
          v66 = *(v12 + 200);
          v308(*(v12 + 784), v64, *(v12 + 768));
          sub_22C908E1C();
          sub_22C36D0A8(v67, 1, v66);
          if (v39)
          {
            v68 = *(v12 + 536);
            v69 = *(v12 + 520);
            v71 = *(v12 + 168);
            v70 = *(v12 + 176);
            sub_22C36DD28(*(v12 + 192), &qword_27D9BF498, &unk_22C922750);
            sub_22C908E8C();
            sub_22C90031C();
            sub_22C36A748();
            sub_22C36C640(v72, v73, v74, v69);
            sub_22C90989C();
            sub_22C36A748();
            sub_22C36C640(v75, v76, v77, v78);
            sub_22C8E6500(v68, v70, v71);
          }

          else
          {
            v79 = *(v12 + 520);
            v80 = *(v12 + 224);
            v81 = *(v12 + 200);
            (*v295)(v80, *(v12 + 192), v81);
            sub_22C90942C();
            sub_22C90031C();
            sub_22C36A748();
            sub_22C36C640(v82, v83, v84, v79);
            sub_22C90989C();
            sub_22C36A748();
            sub_22C36C640(v85, v86, v87, v88);
            sub_22C90943C();
            sub_22C902A5C();
            (*v294)(v80, v81);
          }

          (*v299)(*(v12 + 784), *(v12 + 768));
          v315[0] = v62;
          v90 = *(v62 + 16);
          v89 = *(v62 + 24);
          if (v90 >= v89 >> 1)
          {
            v93 = sub_22C369AB0(v89);
            sub_22C3B8078(v93, v90 + 1, 1);
            v62 = v315[0];
          }

          *(v62 + 16) = v90 + 1;
          sub_22C37054C();
          (*(v92 + 32))(v62 + v91 + *(v92 + 72) * v90);
          v64 += v303;
          --v59;
        }

        while (v59);
      }

      v147 = *(v12 + 648);
      v148 = *(v12 + 568);
      sub_22C906E5C();
      v149 = sub_22C370B74(v147, 1, v148);
      v150 = *(v12 + 648);
      if (v149 == 1)
      {
        v151 = *(v12 + 568);
        sub_22C90068C();
        sub_22C36D0A8(v150, 1, v151);
        if (!v39)
        {
          sub_22C36DD28(*(v12 + 648), &qword_27D9BB190, qword_22C90DD90);
        }
      }

      else
      {
        sub_22C376B5C();
        v152();
      }

      v153 = *(v12 + 632);
      v29 = *(v12 + 592);
      sub_22C8E6540();
      v154 = *(v12 + 496);
      v296 = *(v12 + 512);
      v297 = *(v12 + 488);
      v305 = *(v12 + 504);
      v155 = *(v12 + 272);
      v157 = *(v12 + 256);
      v156 = *(v12 + 264);
      v301 = v156;
      sub_22C8E662C();
      v158(v153);
      sub_22C906E1C();
      sub_22C370018();
      sub_22C902ACC();
      v159 = *(v156 + 16);
      v32 = v296;
      v159(v296, v155, v157);
      (*(v154 + 104))(v296, *MEMORY[0x277D1C4F8], v297);
      sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
      v160 = sub_22C8E666C();
      sub_22C369824();
      v27 = v161;
      sub_22C36DCCC();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_22C90F800;
      (*(v154 + 16))(v305, v296, v297);
      sub_22C90239C();
      v162 = *(v27 + 104);
      LODWORD(v27) = v27 + 104;
      v162(v29 + v35, *MEMORY[0x277D1C9A0], v160);
      v163 = sub_22C36CDBC();
      v164(v163, v297);
      (*(v301 + 8))(v155, v157);
      v51 = v35;
      goto LABEL_48;
    }

    if (v25 == *MEMORY[0x277D1CBD0])
    {
      sub_22C37B90C();
      v114 = *(v12 + 384);
      v115 = *(v12 + 352);
      v116 = sub_22C37EBDC();
      v117(v116);
      v118 = sub_22C37EF10();
      v119(v118);
      sub_22C90296C();
      if (sub_22C370B74(v115, 1, v114) == 1)
      {
        v120 = *(v12 + 352);
        sub_22C90299C();
        sub_22C369A54(v120);
        if (!v39)
        {
          sub_22C36DD28(*(v12 + 352), &qword_27D9BB908, &qword_22C910960);
        }
      }

      else
      {
        (*(*(v12 + 392) + 32))(*(v12 + 416), *(v12 + 352), *(v12 + 384));
      }

      v223 = swift_task_alloc();
      *(v12 + 1112) = v223;
      *v223 = v12;
      v223[1] = sub_22C8D9500;
      sub_22C386674(*(v12 + 952));
      goto LABEL_67;
    }

    if (v25 == *MEMORY[0x277D1CBD8])
    {
      v136 = *(v12 + 944);
      sub_22C37B90C();
      v137 = *(v12 + 568);
      v138 = *(v12 + 464);
      v139 = sub_22C8E6578();
      v140(v139);
      v141 = sub_22C37E5D0();
      v142(v141);
      sub_22C906E5C();
      v143 = sub_22C36CCF8();
      v145 = sub_22C370B74(v143, v144, v137);
      v146 = *(v12 + 664);
      if (v145 == 1)
      {
        sub_22C90068C();
        sub_22C369A54(v146);
        if (!v39)
        {
          sub_22C36DD28(*(v12 + 664), &qword_27D9BB190, qword_22C90DD90);
        }
      }

      else
      {
        sub_22C376B5C();
        v236();
      }

      sub_22C8E6540();
      v237 = *(v12 + 552);
      v238 = *(v12 + 480);
      sub_22C8E662C();
      v239();
      sub_22C906E1C();
      v240 = v238;
      v241 = sub_22C902A3C();
      *(v12 + 1064) = v241;
      v242 = *(v241 + 16);
      *(v12 + 1072) = v242;
      *(v12 + 1088) = v52;
      *(v12 + 1080) = 0;
      if (v242)
      {
        if (!*(v241 + 16))
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        v243 = sub_22C36EEE4(*(v12 + 424));
        v244(v243);
        v245 = swift_task_alloc();
        *(v12 + 1096) = v245;
        *v245 = v12;
        sub_22C375C88(v245);
LABEL_34:
        sub_22C386674(v122);
        sub_22C372034();

        sub_22C8DB640(v123);
        return;
      }

      sub_22C8E6588();
      while (v136 != v138)
      {
        if (v138 >= *(v52 + 16))
        {
          goto LABEL_118;
        }

        sub_22C8E65C0();
        if (v260)
        {
          goto LABEL_119;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v21 > *(v240 + 24) >> 1)
        {
          sub_22C383560();
          sub_22C597504();
          v240 = v261;
        }

        if (*(v237 + 16))
        {
          sub_22C386D40();
          if (v262 != v260)
          {
            goto LABEL_121;
          }

          sub_22C37BEE8();
          sub_22C8E6608();

          if (v238)
          {
            v263 = *(v240 + 16);
            v260 = __OFADD__(v263, v238);
            v264 = v263 + v238;
            if (v260)
            {
              goto LABEL_125;
            }

            *(v240 + 16) = v264;
          }
        }

        else
        {

          if (v238)
          {
            goto LABEL_120;
          }
        }

        ++v138;
      }

      v265 = *(v12 + 512);
      v266 = *(v12 + 496);
      v307 = *(v12 + 488);
      v29 = *(v12 + 456);
      v27 = *(v12 + 432);
      v267 = *(v12 + 440);
    }

    else
    {
      if (v25 != *MEMORY[0x277D1CBC8])
      {
        sub_22C90405C();
        v246 = sub_22C36BA00();
        v19(v246);
        v247 = sub_22C9063CC();
        v248 = sub_22C90AACC();
        v249 = os_log_type_enabled(v247, v248);
        v27 = *(v12 + 936);
        if (v249)
        {
          v250 = *(v12 + 928);
          v306 = v248;
          v251 = *(v12 + 912);
          v252 = *(v12 + 904);
          v32 = sub_22C36FB44();
          v302 = sub_22C370060();
          v315[0] = v302;
          *v32 = 136315138;
          (v19)(v250, v27, v252);
          v253 = sub_22C90A1AC();
          v255 = v254;
          v256 = *(v251 + 8);
          v298 = v247;
          v29 = ((v251 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v256(v27, v252);
          v257 = sub_22C36F9F4(v253, v255, v315);

          *(v32 + 4) = v257;
          _os_log_impl(&dword_22C366000, v298, v306, "Not building a result model for statement outcome %s", v32, 0xCu);
          v35 = v302;
          sub_22C36FF94(v302);
          sub_22C3699EC();
          sub_22C3699EC();

          v258 = sub_22C3884E0();
          v259(v258);
        }

        else
        {
          v278 = *(v12 + 912);
          v279 = *(v12 + 904);
          v32 = *(v12 + 128);

          v280 = *(v278 + 8);
          v35 = v278 + 8;
          v256 = v280;
          v29 = (v35 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v280(v27, v279);
          v281 = sub_22C36CA88();
          v282(v281);
        }

        v256(*(v12 + 944), *(v12 + 904));
        v51 = MEMORY[0x277D84F90];
        goto LABEL_49;
      }

      v225 = *(v12 + 944);
      sub_22C37B90C();
      v226 = *(v12 + 568);
      v227 = *(v12 + 304);
      v228 = sub_22C8E6578();
      v229(v228);
      v230 = sub_22C37E5D0();
      v231(v230);
      sub_22C906E5C();
      v232 = sub_22C36CCF8();
      v234 = sub_22C370B74(v232, v233, v226);
      v235 = *(v12 + 656);
      if (v234 == 1)
      {
        sub_22C90068C();
        sub_22C369A54(v235);
        if (!v39)
        {
          sub_22C36DD28(*(v12 + 656), &qword_27D9BB190, qword_22C90DD90);
        }
      }

      else
      {
        sub_22C376B5C();
        v268();
      }

      sub_22C8E6540();
      v269 = *(v12 + 544);
      v270 = *(v12 + 320);
      sub_22C8E662C();
      v271();
      sub_22C906E1C();
      v272 = v270;
      v273 = sub_22C9028EC();
      *(v12 + 1168) = v273;
      v274 = *(v273 + 16);
      *(v12 + 1176) = v274;
      *(v12 + 1192) = v52;
      *(v12 + 1184) = 0;
      if (v274)
      {
        if (!*(v273 + 16))
        {
LABEL_129:
          __break(1u);
          return;
        }

        v275 = sub_22C36EEE4(*(v12 + 408));
        v276(v275);
        v277 = swift_task_alloc();
        *(v12 + 1200) = v277;
        *v277 = v12;
        sub_22C38195C(v277);
        goto LABEL_34;
      }

      sub_22C8E6588();
      while (v225 != v227)
      {
        if (v227 >= *(v52 + 16))
        {
          goto LABEL_122;
        }

        sub_22C8E65C0();
        if (v260)
        {
          goto LABEL_123;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v21 > *(v272 + 24) >> 1)
        {
          sub_22C383560();
          sub_22C597504();
          v272 = v283;
        }

        if (*(v269 + 16))
        {
          sub_22C386D40();
          if (v262 != v260)
          {
            goto LABEL_126;
          }

          sub_22C37BEE8();
          sub_22C8E6608();

          if (v270)
          {
            v284 = *(v272 + 16);
            v260 = __OFADD__(v284, v270);
            v285 = v284 + v270;
            if (v260)
            {
              goto LABEL_127;
            }

            *(v272 + 16) = v285;
          }
        }

        else
        {

          if (v270)
          {
            goto LABEL_124;
          }
        }

        ++v227;
      }

      v265 = *(v12 + 512);
      v266 = *(v12 + 496);
      v267 = *(v12 + 440);
      v29 = *(v12 + 448);
      v27 = *(v12 + 432);
      v307 = *(v12 + 488);
    }

    sub_22C9029CC();
    sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
    v286 = sub_22C8E666C();
    sub_22C369824();
    v288 = v287;
    v289 = (*(v287 + 80) + 32) & ~*(v287 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_22C90F800;
    (*(v267 + 16))(v265, v29, v27);
    v290 = *(v266 + 104);
    v32 = v266 + 104;
    v290(v265, *MEMORY[0x277D1C4E8], v307);
    sub_22C90239C();
    v291 = v35 + v289;
    v51 = v35;
    (*(v288 + 104))(v291, *MEMORY[0x277D1C9A0], v286);
    v292 = sub_22C370018();
    v293(v292);
LABEL_48:
    v165 = sub_22C3884E0();
    v166(v165);
    goto LABEL_49;
  }

  v43 = *(v12 + 944);
  sub_22C37B90C();
  v44 = *(v12 + 872);
  v45 = *(v12 + 864);
  v46 = *(v12 + 856);
  v47 = *(v12 + 824);
  v48 = *(v12 + 816);
  v49 = sub_22C8E6578();
  v50(v49);
  (*(v45 + 32))(v44, v43, v46);
  sub_22C906E9C();
  sub_22C36D0A8(v48, 1, v47);
  if (!v39)
  {
    v111 = (*(*(v12 + 832) + 32))(*(v12 + 848), *(v12 + 816), *(v12 + 824));
    MEMORY[0x2318B5FE0](v111);
    sub_22C370018();
    sub_22C908AFC();
    v201 = *(v12 + 768);
    v202 = *(v12 + 712);
    (*(*(v12 + 744) + 8))(*(v12 + 752), *(v12 + 736));
    sub_22C36BECC();
    sub_22C36C640(v203, v204, v205, v201);
    v206 = sub_22C37170C();
    v207(v206);
    v208 = sub_22C908DEC();
    v209 = 0;
    v314 = *(v208 + 16);
    v310 = *MEMORY[0x277D72130];
    while (1)
    {
      v112 = v314 != v209;
      if (v314 == v209)
      {
LABEL_64:

        v219 = sub_22C36CA88();
        v220(v219);
        v221 = sub_22C36D264();
        v222(v221);
        goto LABEL_28;
      }

      if (v209 >= *(v208 + 16))
      {
        break;
      }

      v210 = *(v12 + 728);
      v211 = *(v12 + 720);
      v212 = *(v12 + 704);
      sub_22C36BA94();
      v215 = v214;
      (*(v202 + 16))(v210, v214 + v213 + *(v202 + 72) * v209++, v212);
      (*(v202 + 104))(v211, v310, v212);
      sub_22C36ECB4();
      v216 = sub_22C908D5C();
      v217 = *(v202 + 8);
      v218 = sub_22C36CA88();
      v217(v218);
      (v217)(v210, v212);
      v208 = v215;
      if (v216)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  sub_22C36DD28(*(v12 + 816), &qword_27D9BF330, &unk_22C923250);
  v112 = 0;
LABEL_28:
  *(v12 + 1268) = v112;
  v113 = swift_task_alloc();
  *(v12 + 1000) = v113;
  *v113 = v12;
  v113[1] = sub_22C8D866C;
  sub_22C386674(*(v12 + 952));
LABEL_67:
  sub_22C372034();

  sub_22C87B6F8();
}

uint64_t sub_22C8D866C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  *v2 = *v0;
  v1[126] = v3;
  v1[127] = v4;
  v1[128] = v5;
  v1[129] = v6;

  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C8D8760(uint64_t a1)
{
  sub_22C906E5C();
  v2 = sub_22C37F370();
  v3(v2);
  sub_22C906E1C();
  sub_22C90031C();
  v4 = sub_22C90031C();
  v5 = MEMORY[0x2318AFCB0](v4);
  *(v1 + 1040) = v5;
  v6 = swift_task_alloc();
  *(v1 + 1048) = v6;
  *v6 = v1;
  v6[1] = sub_22C8D88A0;

  return sub_22C8DB1B8(v5);
}

uint64_t sub_22C8D88A0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;
  *(v6 + 1056) = v5;

  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22C8D89A0()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  sub_22C8E65A8();
  v5 = v0[64];
  v6 = v0[62];
  v34 = v0[61];
  sub_22C902AAC();
  sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
  v7 = sub_22C9023BC();
  sub_22C369824();
  v9 = v8;
  sub_22C36DCCC();
  v10 = swift_allocObject();
  v11 = sub_22C37B180(v10, xmmword_22C90F800);
  v12(v11);
  (*(v6 + 104))(v5, *MEMORY[0x277D1C4F0], v34);
  sub_22C90239C();
  (*(v9 + 104))(&v1[v10], *MEMORY[0x277D1C9A0], v7);
  (*(v3 + 8))(v2, v4);
  v13 = sub_22C8E6520();
  v14(v13);
  v15 = sub_22C373D34();
  v16(v15);
  v17 = sub_22C36BBCC();
  if (v5(v17) == v2)
  {
    v18 = sub_22C8E63B8();
    (v1)(v18);
  }

  else
  {
    sub_22C372F60();
    if (v19)
    {
      sub_22C8E64F4();
      sub_22C3CF7C8(v10);
      v20 = sub_22C36A608();
      (v1)(v20);
      goto LABEL_7;
    }

    v21 = sub_22C36A608();
    (v1)(v21);
  }

LABEL_7:
  v22 = sub_22C386708();
  (v1)(v22);
  v23 = sub_22C38C2F4();
  sub_22C36B8A8(v23, v24, v25, v26, v27, v28, v29, v30, v33);

  sub_22C3893F8();
  sub_22C372034();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22C8D8DE8()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;
  *(v6 + 1104) = v5;

  v7 = sub_22C36BBCC();
  v8(v7);
  v9 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8D8F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v13[136];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    sub_22C8E6598();
    if (v19)
    {
      sub_22C369AB0(v18);
      sub_22C3827B4();
      sub_22C597698();
      v17 = v69;
    }

    sub_22C3860CC(v13[138]);
    v20 = v13[135] + 1;
    v13[136] = v17;
    v13[135] = v20;
    result = v13[133];
    if (v20 != v13[134])
    {
      break;
    }

    v22 = 0;
    v23 = *(v17 + 16);
    v24 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v23 == v22)
      {
        v36 = v13[69];
        v37 = v13[64];
        v38 = v13[62];
        v71 = v13[61];
        v39 = v13[57];

        sub_22C8E65E4();
        sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
        v40 = sub_22C8E666C();
        sub_22C369824();
        v42 = v41;
        sub_22C36DCCC();
        v43 = swift_allocObject();
        v44 = sub_22C386EBC(v43, xmmword_22C90F800);
        v45(v44);
        (*(v38 + 104))(v37, *MEMORY[0x277D1C4E8], v71);
        sub_22C90239C();
        (*(v42 + 104))(&v36[v43], *MEMORY[0x277D1C9A0], v40);
        v46 = sub_22C36CDBC();
        v47(v46, v17);
        v48 = sub_22C8E6520();
        v49(v48);
        v50 = sub_22C373D34();
        v51(v50);
        v52 = sub_22C36BBCC();
        if (v39(v52) == v42 + 104)
        {
          v53 = sub_22C8E63B8();
          (v36)(v53);
          goto LABEL_28;
        }

        sub_22C372F60();
        if (v54)
        {
          sub_22C8E64F4();
          sub_22C3CF7C8(v43);
          v55 = sub_22C36A608();
          (v36)(v55);
        }

        else
        {
          v56 = sub_22C36A608();
          (v36)(v56);
LABEL_28:
        }

        v57 = sub_22C386708();
        (v36)(v57);
        v58 = sub_22C38C2F4();
        sub_22C36B8A8(v58, v59, v60, v61, v62, v63, v64, v65, v70);

        sub_22C3893F8();
        sub_22C372034();

        __asm { BRAA            X2, X16 }
      }

      if (v22 >= *(v17 + 16))
      {
        break;
      }

      sub_22C8E648C();
      if (v25)
      {
        goto LABEL_33;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v15 > *(v24 + 24) >> 1)
      {
        sub_22C383560();
        sub_22C597504();
        v24 = v26;
      }

      if (*(v14 + 16))
      {
        sub_22C37EEB4();
        if (v27 != v25)
        {
          goto LABEL_35;
        }

        sub_22C377818();

        if (v12)
        {
          v28 = *(v24 + 16);
          v25 = __OFADD__(v28, v12);
          v29 = v28 + v12;
          if (v25)
          {
            goto LABEL_36;
          }

          *(v24 + 16) = v29;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_34;
        }
      }

      ++v22;
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
    sub_22C36C44C();
    sub_22C597698();
    v17 = v68;
  }

  if (v20 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v30 = sub_22C38C57C(v13[53]);
    v31(v30);
    v32 = swift_task_alloc();
    v13[137] = v32;
    *v32 = v13;
    sub_22C375C88(v32);
    sub_22C386674(v33);
    sub_22C372034();

    return sub_22C8DB640(v34);
  }

  return result;
}

uint64_t sub_22C8D9500()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  *v2 = *v0;
  v1[140] = v3;
  v1[141] = v4;
  v1[142] = v5;
  v1[143] = v6;

  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C8D95F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[79];
  v14 = v12[72];
  v15 = v12[71];
  v16 = v12[2];
  sub_22C906E5C();
  (*(v14 + 16))(v13, v16, v15);
  sub_22C906E1C();
  sub_22C90031C();
  sub_22C90031C();
  v17 = swift_task_alloc();
  v12[144] = v17;
  *v17 = v12;
  v17[1] = sub_22C8D9714;
  sub_22C386674(v12[52]);
  sub_22C36D5F8();

  return sub_22C8DB640(v18);
}

uint64_t sub_22C8D9714()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1160) = v3;

  v4 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_22C8D97FC()
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C8E65A8();
  v1 = v0[64];
  v2 = v0[62];
  v34 = v0[61];
  v35 = v0[49];
  v36 = v0[48];
  v37 = v0[52];
  v3 = v0[42];
  v4 = v0[43];
  v33 = v0[41];
  sub_22C902BCC();
  sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
  v5 = sub_22C9023BC();
  sub_22C369824();
  v7 = v6;
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22C90F800;
  (*(v3 + 16))(v1, v4, v33);
  (*(v2 + 104))(v1, *MEMORY[0x277D1C500], v34);
  sub_22C90239C();
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277D1C9A0], v5);
  v11 = *(v3 + 8);
  v10 = (v3 + 8);
  v11(v4, v33);
  (*(v35 + 8))(v37, v36);
  v12 = sub_22C8E6520();
  v13(v12);
  v14 = sub_22C373D34();
  v15(v14);
  v16 = sub_22C36BBCC();
  if (v4(v16) == v1)
  {
    v17 = sub_22C8E63B8();
    v10(v17);
  }

  else
  {
    sub_22C372F60();
    if (v18)
    {
      sub_22C8E64F4();
      sub_22C3CF7C8(v9);
      v19 = sub_22C36A608();
      v10(v19);
      goto LABEL_7;
    }

    v20 = sub_22C36A608();
    v10(v20);
  }

LABEL_7:
  v21 = sub_22C386708();
  v10(v21);
  v22 = sub_22C38C2F4();
  sub_22C36B8A8(v22, v23, v24, v25, v26, v27, v28, v29, v32);

  sub_22C3893F8();
  sub_22C372034();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22C8D9C84()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;
  *(v6 + 1208) = v5;

  v7 = sub_22C36BBCC();
  v8(v7);
  v9 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8D9DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v13[149];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    sub_22C8E6598();
    if (v19)
    {
      sub_22C369AB0(v18);
      sub_22C3827B4();
      sub_22C597698();
      v17 = v69;
    }

    sub_22C3860CC(v13[151]);
    v20 = v13[148] + 1;
    v13[149] = v17;
    v13[148] = v20;
    result = v13[146];
    if (v20 != v13[147])
    {
      break;
    }

    v22 = 0;
    v23 = *(v17 + 16);
    v24 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v23 == v22)
      {
        v36 = v13[68];
        v37 = v13[64];
        v38 = v13[62];
        v39 = v13[56];
        v71 = v13[61];

        sub_22C8E65E4();
        sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
        v40 = sub_22C8E666C();
        sub_22C369824();
        v42 = v41;
        sub_22C36DCCC();
        v43 = swift_allocObject();
        v44 = sub_22C386EBC(v43, xmmword_22C90F800);
        v45(v44);
        (*(v38 + 104))(v37, *MEMORY[0x277D1C4E8], v71);
        sub_22C90239C();
        (*(v42 + 104))(&v36[v43], *MEMORY[0x277D1C9A0], v40);
        v46 = sub_22C36CDBC();
        v47(v46, v17);
        v48 = sub_22C8E6520();
        v49(v48);
        v50 = sub_22C373D34();
        v51(v50);
        v52 = sub_22C36BBCC();
        if (v39(v52) == v42 + 104)
        {
          v53 = sub_22C8E63B8();
          (v36)(v53);
          goto LABEL_28;
        }

        sub_22C372F60();
        if (v54)
        {
          sub_22C8E64F4();
          sub_22C3CF7C8(v43);
          v55 = sub_22C36A608();
          (v36)(v55);
        }

        else
        {
          v56 = sub_22C36A608();
          (v36)(v56);
LABEL_28:
        }

        v57 = sub_22C386708();
        (v36)(v57);
        v58 = sub_22C38C2F4();
        sub_22C36B8A8(v58, v59, v60, v61, v62, v63, v64, v65, v70);

        sub_22C3893F8();
        sub_22C372034();

        __asm { BRAA            X2, X16 }
      }

      if (v22 >= *(v17 + 16))
      {
        break;
      }

      sub_22C8E648C();
      if (v25)
      {
        goto LABEL_33;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v15 > *(v24 + 24) >> 1)
      {
        sub_22C383560();
        sub_22C597504();
        v24 = v26;
      }

      if (*(v14 + 16))
      {
        sub_22C37EEB4();
        if (v27 != v25)
        {
          goto LABEL_35;
        }

        sub_22C377818();

        if (v12)
        {
          v28 = *(v24 + 16);
          v25 = __OFADD__(v28, v12);
          v29 = v28 + v12;
          if (v25)
          {
            goto LABEL_36;
          }

          *(v24 + 16) = v29;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_34;
        }
      }

      ++v22;
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
    sub_22C36C44C();
    sub_22C597698();
    v17 = v68;
  }

  if (v20 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v30 = sub_22C38C57C(v13[51]);
    v31(v30);
    v32 = swift_task_alloc();
    v13[150] = v32;
    *v32 = v13;
    sub_22C38195C(v32);
    sub_22C386674(v33);
    sub_22C372034();

    return sub_22C8DB640(v34);
  }

  return result;
}

uint64_t sub_22C8DA3A0()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v2 = v1;
  v3 = v1[50];
  v4 = v1[49];
  v5 = v1[48];
  v6 = *v0;
  sub_22C369970();
  *v7 = v6;
  v2[153] = v8;

  v9 = *(v4 + 8);
  v2[154] = v9;
  v2[155] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v5);
  v10 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C8DA4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v16 = *(v13[153] + 16);

  if (!v16)
  {
    (*(v13[19] + 8))(v13[20], v13[18]);
    v23 = sub_22C373D34();
    v24(v23);
    v25 = sub_22C36BBCC();
    if (v15(v25) == v12)
    {
      v26 = sub_22C8E63B8();
      v14(v26);
    }

    else
    {
      sub_22C372F60();
      if (v22)
      {
        sub_22C3CF7C8(MEMORY[0x277D84F90]);
        v33 = sub_22C36A608();
        v14(v33);
        goto LABEL_15;
      }

      v34 = sub_22C36A608();
      v14(v34);
    }

LABEL_15:
    v35 = sub_22C386708();
    v14(v35);
    v36 = sub_22C381440();
    sub_22C36B8A8(v36, v37, v38, v39, v40, v41, v42, v43, v46);

    sub_22C3893F8();
    sub_22C372034();

    __asm { BRAA            X2, X16 }
  }

  v17 = v13[71];
  sub_22C906E5C();
  v18 = sub_22C36CCF8();
  v20 = sub_22C370B74(v18, v19, v17);
  v21 = v13[80];
  if (v20 == 1)
  {
    sub_22C90068C();
    sub_22C369A54(v21);
    if (!v22)
    {
      sub_22C36DD28(v13[80], &qword_27D9BB190, qword_22C90DD90);
    }
  }

  else
  {
    sub_22C376B5C();
    v27();
  }

  sub_22C8E6540();
  sub_22C8E662C();
  v28();
  sub_22C906E1C();
  sub_22C90207C();
  v29 = swift_task_alloc();
  v13[156] = v29;
  *v29 = v13;
  v29[1] = sub_22C8DA954;
  sub_22C386674(v13[50]);
  sub_22C372034();

  return sub_22C8DB640(v30);
}

uint64_t sub_22C8DA954()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = *(v3 + 1232);
  v5 = *v0;
  sub_22C369970();
  *v6 = v5;
  *(v8 + 1256) = v7;

  v9 = sub_22C36BBCC();
  v4(v9);
  v10 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_22C8DAA98()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v2 = v0[64];
  v3 = v0[62];
  v34 = v0[61];
  v4 = v0[9];
  v5 = v0[10];
  v33 = v0[8];
  sub_22C90224C();
  sub_22C3A5908(&qword_27D9BE2F8, &qword_22C91D870);
  v6 = sub_22C9023BC();
  sub_22C369824();
  v8 = v7;
  sub_22C36DCCC();
  v9 = swift_allocObject();
  v10 = sub_22C37B180(v9, xmmword_22C90F800);
  v11(v10);
  (*(v3 + 104))(v2, *MEMORY[0x277D1C508], v34);
  sub_22C90239C();
  (*(v8 + 104))(&v1[v9], *MEMORY[0x277D1C9A0], v6);
  (*(v4 + 8))(v5, v33);
  v12 = sub_22C3884E0();
  v13(v12);
  v14 = sub_22C373D34();
  v15(v14);
  v16 = sub_22C36BBCC();
  if (v2(v16) == v5)
  {
    v17 = sub_22C8E63B8();
    (v1)(v17);
  }

  else
  {
    sub_22C372F60();
    if (v18)
    {
      sub_22C8E64F4();
      sub_22C3CF7C8(v9);
      v19 = sub_22C36A608();
      (v1)(v19);
      goto LABEL_7;
    }

    v20 = sub_22C36A608();
    (v1)(v20);
  }

LABEL_7:
  v21 = sub_22C386708();
  (v1)(v21);
  v22 = sub_22C38C2F4();
  sub_22C36B8A8(v22, v23, v24, v25, v26, v27, v28, v29, v32);

  sub_22C3893F8();
  sub_22C372034();

  __asm { BRAA            X2, X16 }
}

void sub_22C8DAEE4()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C3A5908(&qword_27D9C13A0, &qword_22C92D268);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v6 = sub_22C9023BC();
  sub_22C369824();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v37 - v11;
  v42 = v12;
  v13 = 0;
  v14 = *(v1 + 16);
  v15 = (v12 + 32);
  v43 = MEMORY[0x277D84F90];
  while (v14 != v13)
  {
    v16 = sub_22C9024FC();
    sub_22C3699B8(v16);
    sub_22C8DDB04(v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v18 + 72) * v13, v5);
    v19 = sub_22C37EF1C();
    sub_22C36D0A8(v19, v20, v6);
    if (v21)
    {
      sub_22C36DD28(v5, &qword_27D9C13A0, &qword_22C92D268);
      ++v13;
    }

    else
    {
      v22 = *v15;
      v23 = v15;
      v24 = v41;
      sub_22C6AF0E8();
      v22();
      v39 = v22;
      v40 = v10;
      v25 = v24;
      v15 = v23;
      (v22)(v10, v25, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C5972AC();
        v43 = v34;
      }

      v28 = *(v43 + 16);
      v27 = *(v43 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_22C369AB0(v27);
        v38 = v35;
        sub_22C5972AC();
        v29 = v38;
        v43 = v36;
      }

      ++v13;
      *(v43 + 16) = v29;
      sub_22C37054C();
      v33 = v31 + v30 + *(v32 + 72) * v28;
      v10 = v40;
      (v39)(v33, v40, v6);
    }
  }

  sub_22C36CC48();
}

uint64_t sub_22C8DB190()
{
  result = sub_22C3AD928(&unk_283FB0DA0);
  qword_27D9C1458 = result;
  return result;
}

uint64_t sub_22C8DB1B8(uint64_t a1)
{
  v1[2] = a1;
  sub_22C3A5908(&qword_27D9C1470, &qword_22C92D698);
  v1[3] = swift_task_alloc();
  v2 = sub_22C9093BC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8DB2BC, 0, 0);
}

uint64_t sub_22C8DB2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24 = v12;
  v23 = sub_22C878FDC(*(v12 + 16));

  sub_22C8E1694(&v23);
  v13 = *(v12 + 24);

  sub_22C58BB3C(v23, v13);

  sub_22C90221C();
  sub_22C369A54(v13);
  if (v14)
  {
    sub_22C36DD28(*(v12 + 24), &qword_27D9C1470, &qword_22C92D698);

    v15 = *(v12 + 8);

    return v15(0);
  }

  else
  {
    sub_22C90207C();
    v17 = sub_22C36BBCC();
    v18(v17);
    v19 = sub_22C36D264();
    v20(v19);
    v21 = swift_task_alloc();
    *(v12 + 64) = v21;
    *v21 = v12;
    v21[1] = sub_22C8DB4C8;
    v22 = sub_22C386674(*(v12 + 56));

    return sub_22C8DB640(v22);
  }
}

uint64_t sub_22C8DB4C8()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C8DB5B0()
{
  sub_22C36FB38();
  (*(v0[5] + 8))(v0[7], v0[4]);

  v1 = sub_22C385830();

  return v2(v1);
}

uint64_t sub_22C8DB640(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_22C902A7C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_22C90906C();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = sub_22C9063DC();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v5 = sub_22C9092DC();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9C1460, &qword_22C92D678);
  v1[18] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9C1468, &qword_22C92D680);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v6 = sub_22C90033C();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v7 = sub_22C90931C();
  v1[25] = v7;
  v1[26] = *(v7 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v8 = sub_22C90910C();
  v1[31] = v8;
  v1[32] = *(v8 - 8);
  v1[33] = swift_task_alloc();
  v9 = sub_22C90919C();
  v1[34] = v9;
  v1[35] = *(v9 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = *(sub_22C3A5908(&qword_27D9BAC60, &qword_22C90D500) - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v10 = sub_22C9090BC();
  v1[46] = v10;
  v1[47] = *(v10 - 8);
  v1[48] = swift_task_alloc();
  v11 = sub_22C9093BC();
  v1[49] = v11;
  v1[50] = *(v11 - 8);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8DBBDC, 0, 0);
}

uint64_t sub_22C8DBBDC()
{
  v268 = v0;
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v3 = v0 + 2;
  v4 = v0[54];
  v5 = v0[49];
  v7 = v0[3];
  v6 = v0[50];
  v8 = *(v6 + 16);
  v0[55] = v8;
  v0[56] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  v9 = sub_22C37170C();
  v11 = v10(v9);
  v12 = v0[49];
  v266 = v0;
  if (v11 == *MEMORY[0x277D72A58])
  {
    v14 = v0[29];
    v13 = v0[30];
    v15 = v0[25];
    v16 = v0[26];
    v17 = sub_22C37EF10();
    v18(v17);
    v19 = swift_projectBox();
    v20 = *(v16 + 16);
    v20(v13, v19, v15);
    v20(v14, v13, v15);
    v21 = sub_22C36CA88();
    v23 = v22(v21);
    if (v23 == *MEMORY[0x277D729B8])
    {
      v24 = v1[29];
      v25 = v1[25];
      v26 = v1[26];
      v27 = v1[24];
      v29 = v1[20];
      v28 = v1[21];
      v30 = v1[18];
      v31 = v1[4];
      (*(v26 + 96))(v24, v25);
      sub_22C90031C();
      sub_22C36A748();
      sub_22C36C640(v32, v33, v34, v28);
      sub_22C90989C();
      sub_22C36A748();
      sub_22C36C640(v35, v36, v37, v38);
      sub_22C8E6500(v27, v29, v30);
      sub_22C36BECC();
      sub_22C36C640(v39, v40, v41, v31);
      sub_22C3760A4();
      v43 = v42;
      v45 = *(v42 + 16);
      v44 = *(v42 + 24);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        goto LABEL_72;
      }

      goto LABEL_4;
    }

    if (v23 == *MEMORY[0x277D729B0])
    {
      v64 = v1[29];
      v65 = v1[19];
      v67 = v1[16];
      v66 = v1[17];
      v68 = v1[15];
      (*(v1[26] + 96))(v64, v1[25]);
      (*(v67 + 32))(v66, v64, v68);
      v69 = sub_22C9092CC();
      v70 = [v69 displayName];

      sub_22C90A11C();
      sub_22C90031C();
      sub_22C8DF638(v65);
      v71 = sub_22C9092CC();
      v72 = [v71 image];

      if (!v72 || (v73 = sub_22C8E6344(v72), v74 >> 60 == 15))
      {
        v76 = v1[19];
        v75 = v1[20];
        v77 = v1[18];
        v78 = v1[4];
        (*(v1[22] + 16))(v1[24], v1[23], v1[21]);
        sub_22C4E719C(v76, v75, &qword_27D9C1468, &qword_22C92D680);
        sub_22C90989C();
        sub_22C36A748();
        sub_22C36C640(v79, v80, v81, v82);
        v83 = sub_22C36ECB4();
        sub_22C8E6500(v83, v84, v77);
        sub_22C36BECC();
        sub_22C36C640(v85, v86, v87, v78);
        sub_22C3760A4();
        v89 = v88;
        v91 = *(v88 + 16);
        v90 = *(v88 + 24);
        v257 = v91 + 1;
        v262 = v91;
        if (v91 >= v90 >> 1)
        {
          sub_22C369AB0(v90);
          sub_22C3827B4();
          sub_22C5975CC();
          v89 = v239;
        }

        v248 = v1[30];
        v92 = v1[26];
        v245 = v1[25];
        v93 = v1[22];
        v94 = v1[23];
        v95 = v1[21];
        sub_22C36DD28(v1[19], &qword_27D9C1468, &qword_22C92D680);
        (*(v93 + 8))(v94, v95);
        v96 = sub_22C36D264();
        v97(v96);
        (*(v92 + 8))(v248, v245);
        *(v89 + 16) = v257;
        sub_22C37520C();
        sub_22C4E7208(v100, v98 + v99 * v262, &qword_27D9BAC60, &qword_22C90D500);

        v1[2] = v89;
        goto LABEL_54;
      }

      v153 = v73;
      v46 = v74;
      v154 = v1[23];
      v155 = v1[24];
      v156 = v1[21];
      v157 = v1[22];
      v158 = v1[19];
      v159 = v1[20];
      v160 = v1;
      v161 = v1[18];
      v260 = v160[4];
      (*(v157 + 16))(v155, v154, v156);
      sub_22C4E719C(v158, v159, &qword_27D9C1468, &qword_22C92D680);
      *v161 = v153;
      v161[1] = v46;
      v162 = *MEMORY[0x277D73208];
      v163 = sub_22C90989C();
      sub_22C36985C();
      (*(v164 + 104))(v161, v162, v163);
      sub_22C36BECC();
      sub_22C36C640(v165, v166, v167, v163);
      sub_22C3C832C(v153, v46);
      sub_22C8E6500(v155, v159, v161);
      sub_22C36BECC();
      sub_22C36C640(v168, v169, v170, v260);
      sub_22C3760A4();
      v172 = v171;
      v173 = *(v171 + 16);
      v134 = *(v171 + 24);
      v256 = v173;
      v261 = v153;
      v253 = v173 + 1;
      if (v173 < v134 >> 1)
      {
LABEL_35:
        v174 = v266[26];
        loga = v266[25];
        v247 = v266[30];
        v175 = v266[22];
        v176 = v266[23];
        v177 = v266[21];
        v178 = v266[19];
        v179 = v266[16];
        v241 = v266[15];
        v242 = v266[17];
        sub_22C3C8114(v261, v46);
        sub_22C36DD28(v178, &qword_27D9C1468, &qword_22C92D680);
        (*(v175 + 8))(v176, v177);
        (*(v179 + 8))(v242, v241);
        (*(v174 + 8))(v247, loga);
        *(v172 + 16) = v253;
        sub_22C37054C();
        sub_22C4E7208(v182, v172 + v180 + *(v181 + 72) * v256, &qword_27D9BAC60, &qword_22C90D500);

        v266[2] = v172;
        goto LABEL_54;
      }

LABEL_74:
      sub_22C369AB0(v134);
      sub_22C5975CC();
      v172 = v240;
      goto LABEL_35;
    }

    sub_22C90405C();
    v109 = sub_22C37EF10();
    (v20)(v109);
    v110 = sub_22C9063CC();
    v111 = sub_22C90AADC();
    v112 = os_log_type_enabled(v110, v111);
    v263 = v1[30];
    v113 = v1[28];
    if (v112)
    {
      v114 = v1[27];
      log = v1[26];
      v249 = v111;
      v115 = v1[25];
      v258 = v1[14];
      v251 = v1[12];
      v254 = v1[11];
      v116 = v1;
      v117 = sub_22C36FB44();
      v246 = sub_22C370060();
      v267[0] = v246;
      *v117 = 136642819;
      v20(v114, v113, v115);
      sub_22C37EF10();
      v118 = sub_22C90A1AC();
      v120 = v119;
      isa = log[1].isa;
      isa(v113, v115);
      v122 = sub_22C36F9F4(v118, v120, v267);

      *(v117 + 4) = v122;
      _os_log_impl(&dword_22C366000, v110, v249, "Unsupported primitive %{sensitive}s", v117, 0xCu);
      sub_22C36FF94(v246);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v251 + 8))(v258, v254);
      isa(v263, v115);
    }

    else
    {
      v140 = v1[25];
      v141 = v1[26];
      v259 = v1[14];
      v116 = v1;
      v142 = v1[12];
      v143 = v116[11];

      isa = *(v141 + 8);
      isa(v113, v140);
      (*(v142 + 8))(v259, v143);
      isa(v263, v140);
    }

    isa(v116[29], v116[25]);
LABEL_29:

    goto LABEL_54;
  }

  if (v11 == *MEMORY[0x277D729E8])
  {
    v50 = v0[47];
    v51 = v1[48];
    v53 = v1[45];
    v52 = v1[46];
    v54 = sub_22C37EF10();
    v55(v54);
    v56 = swift_projectBox();
    (*(v50 + 16))(v51, v56, v52);
    sub_22C8DE738(v51, v53);
    sub_22C3760A4();
    v58 = v57;
    v60 = *(v57 + 16);
    v59 = *(v57 + 24);
    if (v60 >= v59 >> 1)
    {
      sub_22C369AB0(v59);
      sub_22C5975CC();
      v58 = v238;
    }

    v61 = v1[45];
    v62 = v1[37];
    (*(v1[47] + 8))(v1[48], v1[46]);
    *(v58 + 16) = v60 + 1;
    sub_22C36BA94();
    sub_22C4E7208(v61, v58 + v63 + *(v62 + 72) * v60, &qword_27D9BAC60, &qword_22C90D500);

    v1[2] = v58;
    goto LABEL_54;
  }

  if (v11 == *MEMORY[0x277D72A38])
  {
    v101 = v0[54];
    v102 = sub_22C36BA00();
    v103(v102);
    v0[57] = *v101;
    swift_projectBox();
    v104 = sub_22C383CAC();
    v105(v104);
    v106 = swift_task_alloc();
    v0[58] = v106;
    *v106 = v0;
    v106[1] = sub_22C8DCE34;
    sub_22C36FCB0();

    return sub_22C8DEB74();
  }

  else if (v11 == *MEMORY[0x277D729E0])
  {
    v123 = v0[54];
    v124 = v0[9];
    v46 = v0[10];
    v126 = v0[7];
    v125 = v0[8];
    v127 = sub_22C37EF10();
    v128(v127);
    v1[61] = *v123;
    v129 = swift_projectBox();
    (*(v125 + 16))(v46, v129, v126);
    sub_22C3ACC84(v124);
    v130 = sub_22C90905C();
    v1[62] = v130;
    v1[63] = *(v125 + 8);
    v1[64] = (v125 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v131 = sub_22C36CA88();
    v132(v131);
    v133 = *(v130 + 16);
    v1[65] = v133;
    v1[67] = v2;
    v1[66] = 0;
    if (!v133)
    {
      v45 = v1[5];

      sub_22C8E6588();
      while (v126 != v124)
      {
        v44 = *(v2 + 16);
        if (v124 >= v44)
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          sub_22C369AB0(v44);
          sub_22C3827B4();
          sub_22C5975CC();
          v43 = v237;
LABEL_4:
          v47 = v266[42];
          v48 = v266[37];
          (*(v266[26] + 8))(v266[30], v266[25]);
          *(v43 + 16) = v46;
          sub_22C36BA94();
          sub_22C4E7208(v47, v43 + v49 + *(v48 + 72) * v45, &qword_27D9BAC60, &qword_22C90D500);

          v266[2] = v43;
LABEL_54:
          v214 = *(*v3 + 16);
          if (v214)
          {
            sub_22C37BEE8();
            v217 = v215 + v216;
            v265 = *(v218 + 72);
            v220 = (v219 + 32);
            v221 = MEMORY[0x277D84F90];
            do
            {
              v222 = v266[39];
              v223 = v266[4];
              sub_22C4E719C(v217, v222, &qword_27D9BAC60, &qword_22C90D500);
              sub_22C8E64D4();
              v224 = sub_22C374568();
              if (sub_22C370B74(v224, v225, v223) == 1)
              {
                sub_22C6AF0E8();
                sub_22C36DD28(v226, v227, v228);
              }

              else
              {
                v229 = *v220;
                (*v220)(v266[6], v266[38], v266[4]);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_22C36C44C();
                  sub_22C597504();
                  v221 = v233;
                }

                sub_22C8E6530();
                if (v230)
                {
                  sub_22C3827B4();
                  sub_22C597504();
                  v221 = v234;
                }

                *(v221 + 16) = v222;
                sub_22C37520C();
                v229(v231 + v232 * v223);
              }

              v217 += v265;
              --v214;
            }

            while (v214);
          }

          sub_22C385830();
          sub_22C36FCB0();

          __asm { BRAA            X2, X16 }
        }

        v44 = v2 + 8 * v124;
        v46 = *(v44 + 32);
        v200 = *(v46 + 16);
        v201 = *(v130 + 16);
        if (__OFADD__(v201, v200))
        {
          goto LABEL_68;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v201 + v200 > *(v130 + 24) >> 1)
        {
          sub_22C383560();
          sub_22C597504();
          v130 = v202;
        }

        v1 = v266;
        if (*(v46 + 16))
        {
          sub_22C37EEB4();
          if (v203 != v204)
          {
            goto LABEL_70;
          }

          sub_22C37BEE8();
          swift_arrayInitWithCopy();

          if (v200)
          {
            v205 = *(v130 + 16);
            v204 = __OFADD__(v205, v200);
            v44 = v205 + v200;
            if (v204)
            {
              goto LABEL_71;
            }

            *(v130 + 16) = v44;
          }
        }

        else
        {

          if (v200)
          {
            goto LABEL_69;
          }
        }

        ++v124;
      }

      v206 = v1[63];

      v207 = sub_22C8D5DC4(v130);

      sub_22C3CF8FC(v207);
      v208 = sub_22C36ECB4();
      v206(v208);
      goto LABEL_29;
    }

    v134 = *(v1[62] + 16);
    if (!v134)
    {
      __break(1u);
      goto LABEL_74;
    }

    v135 = sub_22C36EEE4(v1[53]);
    v136(v135);
    v137 = swift_task_alloc();
    v1[68] = v137;
    *v137 = v1;
    sub_22C8E64B4(v137);
    sub_22C386674(v1[53]);
    sub_22C36FCB0();

    return sub_22C8DB640(v138);
  }

  else
  {
    if (v11 != *MEMORY[0x277D729F8])
    {
      v183 = v0[52];
      v184 = v0[3];
      sub_22C90405C();
      v8(v183, v184, v12);
      v185 = sub_22C9063CC();
      v186 = sub_22C90AADC();
      v187 = os_log_type_enabled(v185, v186);
      v188 = v0[52];
      if (v187)
      {
        v190 = v0[50];
        v189 = v0[51];
        v255 = v186;
        v191 = v0[49];
        v192 = sub_22C36FB44();
        v252 = sub_22C370060();
        v267[0] = v252;
        *v192 = 136642819;
        v8(v189, v188, v191);
        sub_22C370018();
        v250 = sub_22C90A1AC();
        v194 = v193;
        v195 = *(v190 + 8);
        v196 = sub_22C37F370();
        v195(v196);
        v197 = sub_22C36F9F4(v250, v194, v267);

        *(v192 + 4) = v197;
        _os_log_impl(&dword_22C366000, v185, v255, "Unsupported item type %{sensitive}s", v192, 0xCu);
        sub_22C36FF94(v252);
        sub_22C3699EC();
        sub_22C3699EC();

        v198 = sub_22C3884E0();
        v199(v198);
        (v195)(v0[54], v0[49]);
      }

      else
      {
        v209 = v0[50];
        v210 = v0[12];
        v264 = v0[13];
        v211 = v0[11];

        v212 = *(v209 + 8);
        v213 = sub_22C37F370();
        v212(v213);
        (*(v210 + 8))(v264, v211);
        (v212)(v1[54], v1[49]);
      }

      goto LABEL_54;
    }

    v144 = v0[54];
    v145 = sub_22C36BA00();
    v146(v145);
    v0[59] = *v144;
    swift_projectBox();
    v147 = sub_22C383CAC();
    v148(v147);
    v149 = swift_task_alloc();
    v0[60] = v149;
    *v149 = v0;
    v149[1] = sub_22C8DD1DC;
    sub_22C36FCB0();

    return sub_22C8DEF4C(v150, v151);
  }
}

uint64_t sub_22C8DCE34()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C8DCF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C3760A4();
  sub_22C3730F8();
  if (v39)
  {
    sub_22C369AB0(v38);
    sub_22C5975CC();
    v35 = v75;
  }

  v40 = v34[44];
  v41 = v34[37];
  (*(v34[35] + 8))(v34[36], v34[34]);
  *(v35 + 16) = v33;
  sub_22C36BA94();
  sub_22C4E7208(v40, v35 + v42 + *(v41 + 72) * v32, &qword_27D9BAC60, &qword_22C90D500);

  v34[2] = v35;
  if (*(v35 + 16))
  {
    sub_22C37BD3C();
    a27 = v35;
    a28 = v43;
    sub_22C388E04(v44);
    v45 = MEMORY[0x277D84F90];
    do
    {
      sub_22C37B4AC();
      sub_22C8E64D4();
      v46 = sub_22C374568();
      sub_22C8E664C(v46, v47);
      if (v48)
      {
        sub_22C6AF0E8();
        sub_22C36DD28(v49, v50, v51);
      }

      else
      {
        v52 = sub_22C8E6568();
        v36(v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C36C44C();
          sub_22C597504();
          v45 = v56;
        }

        sub_22C8E6530();
        if (v39)
        {
          sub_22C3827B4();
          sub_22C597504();
          v45 = v57;
        }

        *(v45 + 16) = v35;
        sub_22C37520C();
        v36(v54 + v55 * v37);
      }

      sub_22C38A16C();
    }

    while (!v48);
  }

  sub_22C8E63F4(v58, v59, v60, v61, v62, v63, v64, v65);

  sub_22C385830();
  sub_22C37F7CC();

  return v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C8DD1DC()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C8DD2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  sub_22C3760A4();
  sub_22C3730F8();
  if (v39)
  {
    sub_22C369AB0(v38);
    sub_22C5975CC();
    v35 = v75;
  }

  v40 = v34[43];
  v41 = v34[37];
  (*(v34[32] + 8))(v34[33], v34[31]);
  *(v35 + 16) = v33;
  sub_22C36BA94();
  sub_22C4E7208(v40, v35 + v42 + *(v41 + 72) * v32, &qword_27D9BAC60, &qword_22C90D500);

  v34[2] = v35;
  if (*(v35 + 16))
  {
    sub_22C37BD3C();
    a27 = v35;
    a28 = v43;
    sub_22C388E04(v44);
    v45 = MEMORY[0x277D84F90];
    do
    {
      sub_22C37B4AC();
      sub_22C8E64D4();
      v46 = sub_22C374568();
      sub_22C8E664C(v46, v47);
      if (v48)
      {
        sub_22C6AF0E8();
        sub_22C36DD28(v49, v50, v51);
      }

      else
      {
        v52 = sub_22C8E6568();
        v36(v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C36C44C();
          sub_22C597504();
          v45 = v56;
        }

        sub_22C8E6530();
        if (v39)
        {
          sub_22C3827B4();
          sub_22C597504();
          v45 = v57;
        }

        *(v45 + 16) = v35;
        sub_22C37520C();
        v36(v54 + v55 * v37);
      }

      sub_22C38A16C();
    }

    while (!v48);
  }

  sub_22C8E63F4(v58, v59, v60, v61, v62, v63, v64, v65);

  sub_22C385830();
  sub_22C37F7CC();

  return v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_22C8DD588()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;
  *(v6 + 552) = v5;

  v7 = sub_22C36BBCC();
  v8(v7);
  v9 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8DD6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22C36CAD0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v33 + 536);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_43:
    sub_22C36C44C();
    sub_22C597698();
    v37 = v89;
  }

  sub_22C8E6598();
  if (v39)
  {
    sub_22C369AB0(v38);
    sub_22C3827B4();
    sub_22C597698();
    v37 = v90;
  }

  sub_22C3860CC(*(v33 + 552));
  v40 = *(v33 + 528) + 1;
  *(v33 + 536) = v37;
  *(v33 + 528) = v40;
  result = *(v33 + 496);
  if (v40 == *(v33 + 520))
  {

    v42 = 0;
    v43 = *(v37 + 16);
    v44 = MEMORY[0x277D84F90];
    while (v43 != v42)
    {
      if (v42 >= *(v37 + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      sub_22C8E648C();
      if (v45)
      {
        goto LABEL_39;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v35 > *(v44 + 24) >> 1)
      {
        sub_22C383560();
        sub_22C597504();
        v44 = v46;
      }

      if (*(v34 + 16))
      {
        sub_22C37EEB4();
        if (v47 != v45)
        {
          goto LABEL_41;
        }

        sub_22C377818();

        if (v32)
        {
          v48 = *(v44 + 16);
          v45 = __OFADD__(v48, v32);
          v49 = v48 + v32;
          if (v45)
          {
            goto LABEL_42;
          }

          *(v44 + 16) = v49;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_40;
        }
      }

      ++v42;
    }

    v54 = *(v33 + 504);
    v53 = *(v33 + 512);

    v55 = sub_22C8D5DC4(v44);

    sub_22C3CF8FC(v55);
    v56 = sub_22C36ECB4();
    v54(v56);

    if (*(*(v33 + 16) + 16))
    {
      sub_22C37BD3C();
      a27 = v57;
      a28 = v58;
      sub_22C388E04(v59);
      v60 = MEMORY[0x277D84F90];
      do
      {
        sub_22C37B4AC();
        sub_22C8E64D4();
        v61 = sub_22C374568();
        sub_22C8E664C(v61, v62);
        if (v63)
        {
          sub_22C6AF0E8();
          sub_22C36DD28(v64, v65, v66);
        }

        else
        {
          v67 = sub_22C8E6568();
          v53(v67);
          v68 = swift_isUniquelyReferenced_nonNull_native();
          if ((v68 & 1) == 0)
          {
            sub_22C36C44C();
            sub_22C597504();
            v60 = v71;
          }

          sub_22C8E6530();
          if (v39)
          {
            sub_22C3827B4();
            sub_22C597504();
            v60 = v72;
          }

          *(v60 + 16) = v55;
          sub_22C37520C();
          v53(v69 + v70 * v54);
        }

        sub_22C38A16C();
      }

      while (!v63);
    }

    sub_22C8E63F4(v73, v74, v75, v76, v77, v78, v79, v80);

    sub_22C385830();
    sub_22C37F7CC();

    return v83(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
  }

  else if (v40 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v33 + 440))(*(v33 + 424), result + ((*(*(v33 + 400) + 80) + 32) & ~*(*(v33 + 400) + 80)) + *(*(v33 + 400) + 72) * v40, *(v33 + 392));
    v50 = swift_task_alloc();
    *(v33 + 544) = v50;
    *v50 = v33;
    sub_22C8E64B4(v50);
    sub_22C386674(*(v33 + 424));
    sub_22C37F7CC();

    return sub_22C8DB640(v51);
  }

  return result;
}

uint64_t sub_22C8DDB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = sub_22C90958C();
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C90223C();
  v90 = *(v5 - 8);
  v91 = v5;
  MEMORY[0x28223BE20](v5);
  v88 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22C90246C();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C9024BC();
  v94 = *(v8 - 8);
  v95 = v8;
  MEMORY[0x28223BE20](v8);
  v93 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22C9024EC();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C90214C();
  v102 = *(v11 - 1);
  v103 = v11;
  MEMORY[0x28223BE20](v11);
  v101 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9026FC();
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x28223BE20](v13);
  v98 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C9063DC();
  v96 = *(v15 - 8);
  v97 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v84 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v92 = &v79 - v18;
  v19 = sub_22C90249C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22C9024FC();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v79 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v80 = &v79 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v79 - v29;
  v31 = *(v24 + 16);
  v31(&v79 - v29, a1, v23);
  v32 = (*(v24 + 88))(v30, v23);
  if (v32 == *MEMORY[0x277D1CA20])
  {
    (*(v24 + 96))(v30, v23);
    (*(v20 + 32))(v22, v30, v19);
    sub_22C90247C();
    if (!v33)
    {
      v56 = v92;
      sub_22C90405C();
      v57 = sub_22C9063CC();
      v58 = sub_22C90AADC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_22C366000, v57, v58, "No target bundle ID in archived view", v59, 2u);
        MEMORY[0x2318B9880](v59, -1, -1);
      }

      (*(v96 + 8))(v56, v97);
      (*(v20 + 8))(v22, v19);
      v54 = sub_22C9023BC();
      v52 = v104;
      v53 = 1;
      return sub_22C36C640(v52, v53, 1, v54);
    }

    sub_22C90248C();
    v34 = v98;
    sub_22C9026EC();
    v36 = v99;
    v35 = v100;
    v37 = v101;
    (*(v99 + 16))(v101, v34, v100);
    (*(v102 + 104))(v37, *MEMORY[0x277D1C520], v103);
    v38 = v104;
    sub_22C90239C();
    (*(v36 + 8))(v34, v35);
    (*(v20 + 8))(v22, v19);
    goto LABEL_8;
  }

  if (v32 == *MEMORY[0x277D1CA28])
  {
    (*(v24 + 96))(v30, v23);
    v39 = v93;
    v40 = v94;
    v41 = v95;
    (*(v94 + 32))(v93, v30, v95);
    sub_22C9024AC();
    v38 = v104;
    sub_22C90237C();
    (*(v40 + 8))(v39, v41);
    v42 = MEMORY[0x277D1C990];
LABEL_9:
    v50 = *v42;
    v51 = sub_22C9023BC();
    (*(*(v51 - 8) + 104))(v38, v50, v51);
    v52 = v38;
LABEL_10:
    v53 = 0;
    v54 = v51;
    return sub_22C36C640(v52, v53, 1, v54);
  }

  if (v32 == *MEMORY[0x277D1CA80])
  {
    (*(v24 + 96))(v30, v23);
    v43 = v87;
    v44 = v85;
    v45 = v89;
    (*(v87 + 32))(v85, v30, v89);
    sub_22C90245C();
    v46 = v88;
    sub_22C90222C();
    v48 = v90;
    v47 = v91;
    v49 = v101;
    (*(v90 + 16))(v101, v46, v91);
    (*(v102 + 104))(v49, *MEMORY[0x277D1C538], v103);
    v38 = v104;
    sub_22C90239C();
    (*(v48 + 8))(v46, v47);
    (*(v43 + 8))(v44, v45);
LABEL_8:
    v42 = MEMORY[0x277D1C9A0];
    goto LABEL_9;
  }

  if (v32 == *MEMORY[0x277D1CA30])
  {
    (*(v24 + 96))(v30, v23);
    v60 = v82;
    v61 = v81;
    v62 = v83;
    (*(v82 + 32))(v81, v30, v83);
    sub_22C9024CC();
    sub_22C9024DC();
    v63 = v104;
    sub_22C90238C();
    (*(v60 + 8))(v61, v62);
    v64 = *MEMORY[0x277D1C998];
    v51 = sub_22C9023BC();
    (*(*(v51 - 8) + 104))(v63, v64, v51);
    v52 = v63;
    goto LABEL_10;
  }

  v65 = v84;
  sub_22C90405C();
  v66 = v80;
  v31(v80, a1, v23);
  v67 = sub_22C9063CC();
  v68 = sub_22C90AADC();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v105 = v103;
    *v69 = 136315138;
    LODWORD(v102) = v68;
    v31(v79, v66, v23);
    v70 = sub_22C90A1AC();
    v71 = v66;
    v72 = v70;
    v74 = v73;
    v75 = *(v24 + 8);
    v75(v71, v23);
    v76 = sub_22C36F9F4(v72, v74, &v105);

    *(v69 + 4) = v76;
    _os_log_impl(&dword_22C366000, v67, v102, "Unsupported view type: %s", v69, 0xCu);
    v77 = v103;
    sub_22C36FF94(v103);
    MEMORY[0x2318B9880](v77, -1, -1);
    MEMORY[0x2318B9880](v69, -1, -1);

    (*(v96 + 8))(v84, v97);
  }

  else
  {

    v75 = *(v24 + 8);
    v75(v66, v23);
    (*(v96 + 8))(v65, v97);
  }

  v78 = sub_22C9023BC();
  sub_22C36C640(v104, 1, 1, v78);
  return (v75)(v30, v23);
}

uint64_t sub_22C8DE738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9090BC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = sub_22C9063DC();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - v14;
  v16 = sub_22C90993C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90907C();
  if (sub_22C370B74(v15, 1, v16) == 1)
  {
    v33 = a2;
    sub_22C36DD28(v15, &qword_27D9BC390, &qword_22C912AC0);
    sub_22C90405C();
    v20 = *(v5 + 16);
    v20(v9, a1, v4);
    v21 = sub_22C9063CC();
    v22 = sub_22C90AADC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v23 = 136642819;
      v20(v34, v9, v4);
      v24 = sub_22C90A1AC();
      v26 = v25;
      (*(v5 + 8))(v9, v4);
      v27 = sub_22C36F9F4(v24, v26, &v37);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_22C366000, v21, v22, "No display representation on %{sensitive}s", v23, 0xCu);
      v28 = v32;
      sub_22C36FF94(v32);
      MEMORY[0x2318B9880](v28, -1, -1);
      MEMORY[0x2318B9880](v23, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    (*(v35 + 8))(v12, v36);
    v30 = v33;
    v31 = sub_22C902A7C();
    return sub_22C36C640(v30, 1, 1, v31);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_22C8DF6D4(v19, 0, 0, a2);
    return (*(v17 + 8))(v19, v16);
  }
}

uint64_t sub_22C8DEB74()
{
  sub_22C369980();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_22C90919C();
  v0[4] = v3;
  sub_22C3699B8(v3);
  v0[5] = v4;
  v0[6] = sub_22C36D0D4();
  v0[7] = swift_task_alloc();
  v5 = sub_22C9063DC();
  v0[8] = v5;
  sub_22C3699B8(v5);
  v0[9] = v6;
  v0[10] = sub_22C3699D4();
  v7 = sub_22C90952C();
  v0[11] = v7;
  sub_22C3699B8(v7);
  v0[12] = v8;
  v0[13] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v9);
  v0[14] = sub_22C3699D4();
  v10 = sub_22C3A5908(&qword_27D9BAC60, &qword_22C90D500);
  sub_22C369914(v10);
  v0[15] = sub_22C3699D4();
  v11 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C8DED14()
{
  sub_22C36FB38();
  sub_22C90915C();
  v1 = sub_22C90908C();
  sub_22C8E6638(v1, v2);
  sub_22C9090AC();
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v4 = sub_22C8E654C(v3);

  return sub_22C8E0140(v4, v5, v6, v7, v8);
}

uint64_t sub_22C8DEDBC()
{
  sub_22C369A3C();
  v2 = *(v1 + 112);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = sub_22C36D264();
  v6(v5);
  sub_22C36DD28(v2, &qword_27D9BC390, &qword_22C912AC0);
  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C8DEF4C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22C90910C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_22C9063DC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_22C90952C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v2[14] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BAC60, &qword_22C90D500);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8DF140, 0, 0);
}

uint64_t sub_22C8DF140()
{
  sub_22C36FB38();
  sub_22C9090DC();
  v1 = sub_22C90908C();
  sub_22C8E6638(v1, v2);
  sub_22C9090AC();
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v4 = sub_22C8E654C(v3);

  return sub_22C8E0140(v4, v5, v6, v7, v8);
}

uint64_t sub_22C8DF1E8()
{
  sub_22C369A3C();
  v2 = *(v1 + 112);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = sub_22C36D264();
  v6(v5);
  sub_22C36DD28(v2, &qword_27D9BC390, &qword_22C912AC0);
  v7 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C8DF378()
{
  v33 = v0;
  v1 = v0[15];
  v2 = sub_22C902A7C();
  sub_22C369A54(v1);
  if (v3)
  {
    v4 = v0[5];
    sub_22C36DD28(v1, &qword_27D9BAC60, &qword_22C90D500);
    sub_22C90405C();
    v5 = *(v4 + 16);
    v6 = sub_22C37E5D0();
    v5(v6);
    v7 = sub_22C9063CC();
    v8 = sub_22C90AADC();
    log = v7;
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    if (v9)
    {
      v28 = v8;
      v30 = v0[10];
      v15 = v0[5];
      v14 = v0[6];
      v16 = v0[4];
      v29 = v0[8];
      v17 = sub_22C36FB44();
      v27 = sub_22C370060();
      v32 = v27;
      *v17 = 136642819;
      (v5)(v14, v13, v16);
      sub_22C37EF10();
      v18 = sub_22C90A1AC();
      v20 = v19;
      (*(v15 + 8))(v13, v16);
      v21 = sub_22C36F9F4(v18, v20, &v32);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_22C366000, log, v28, "No display representation on %{sensitive}s", v17, 0xCu);
      sub_22C36FF94(v27);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v11 + 8))(v30, v29);
    }

    else
    {
      v23 = v0[4];
      v24 = v0[5];

      (*(v24 + 8))(v13, v23);
      (*(v11 + 8))(v10, v12);
    }

    v22 = 1;
  }

  else
  {
    (*(*(v2 - 8) + 32))(v0[2], v1, v2);
    v22 = 0;
  }

  sub_22C36C640(v0[2], v22, 1, v2);

  v25 = v0[1];

  return v25();
}

uint64_t sub_22C8DF638@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22C9092CC();
  v4 = [v3 personHandle];

  if (v4 && (sub_22C8E62D8(v4), v5))
  {
    sub_22C90031C();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_22C90033C();

  return sub_22C36C640(a2, v6, 1, v7);
}

uint64_t sub_22C8DF6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a2;
  v89 = a3;
  v95 = a4;
  v5 = sub_22C90993C();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v79 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v78 - v8;
  v9 = sub_22C9063DC();
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x28223BE20](v9);
  v85 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9C1478, &qword_22C92D6B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v78 - v12;
  v94 = sub_22C90986C();
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9C1480, &qword_22C92D6B8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v78 - v16;
  v18 = sub_22C3A5908(&qword_27D9C1460, &qword_22C92D678);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v93 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v78 - v21;
  v23 = sub_22C3A5908(&qword_27D9BFFD8, &qword_22C925C90);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v78 - v24;
  v26 = sub_22C3A5908(&qword_27D9C1468, &qword_22C92D680);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v87 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v92 = &v78 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v78 - v31;
  v96 = sub_22C90033C();
  v33 = *(v96 - 8);
  v34 = MEMORY[0x28223BE20](v96);
  v86 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v78 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v78 - v39;
  sub_22C9098BC();
  sub_22C90031C();
  sub_22C90992C();
  sub_22C8E0BBC(v25, v32);
  sub_22C36DD28(v25, &qword_27D9BFFD8, &qword_22C925C90);
  sub_22C9098AC();
  v97 = v22;
  sub_22C8E1180(v17, v22);
  v41 = v17;
  v42 = v94;
  sub_22C36DD28(v41, &qword_27D9C1480, &qword_22C92D6B8);
  sub_22C90988C();
  if (sub_22C370B74(v13, 1, v42) == 1)
  {
    v91 = v38;
    v43 = v93;
    v94 = v40;
    sub_22C36DD28(v13, &qword_27D9C1478, &qword_22C92D6B0);
    v44 = v96;
    if (sub_22C370B74(v32, 1, v96) == 1)
    {
      v45 = 0;
      v46 = v33;
      v47 = v94;
    }

    else
    {
      v52 = v87;
      sub_22C4E719C(v32, v87, &qword_27D9C1468, &qword_22C92D680);
      v46 = v33;
      if (sub_22C370B74(v52, 1, v44) == 1)
      {
        sub_22C90031C();
        v53 = sub_22C370B74(v52, 1, v44);
        v47 = v94;
        if (v53 != 1)
        {
          sub_22C36DD28(v52, &qword_27D9C1468, &qword_22C92D680);
        }
      }

      else
      {
        (*(v33 + 32))(v86, v52, v44);
        v47 = v94;
      }

      v54 = sub_22C90A18C();
      v56 = v55;

      v57 = HIBYTE(v56) & 0xF;
      if ((v56 & 0x2000000000000000) == 0)
      {
        v57 = v54 & 0xFFFFFFFFFFFFLL;
      }

      v45 = v57 != 0;
    }

    v58 = sub_22C9098BC();
    v60 = v59;

    v61 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v61 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v61 || v45 || (v62 = sub_22C90989C(), sub_22C370B74(v97, 1, v62) != 1))
    {
      (*(v46 + 16))(v91, v47, v44);
      sub_22C4E719C(v32, v92, &qword_27D9C1468, &qword_22C92D680);
      sub_22C4E719C(v97, v43, &qword_27D9C1460, &qword_22C92D678);

      v50 = v95;
      sub_22C902A5C();
      (*(v46 + 8))(v47, v44);
      v51 = 0;
    }

    else
    {
      v63 = v85;
      sub_22C90405C();
      v64 = v80;
      v65 = v81;
      v66 = *(v81 + 16);
      v67 = v82;
      v66(v80, a1, v82);
      v68 = sub_22C9063CC();
      LODWORD(v93) = sub_22C90AADC();
      if (os_log_type_enabled(v68, v93))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v92 = v46;
        v71 = v70;
        v98 = v70;
        *v69 = 136642819;
        v66(v79, v64, v67);
        v72 = sub_22C90A1AC();
        v74 = v73;
        (*(v65 + 8))(v64, v67);
        v75 = sub_22C36F9F4(v72, v74, &v98);

        *(v69 + 4) = v75;
        _os_log_impl(&dword_22C366000, v68, v93, "Unsupported display representation: %{sensitive}s", v69, 0xCu);
        sub_22C36FF94(v71);
        MEMORY[0x2318B9880](v71, -1, -1);
        MEMORY[0x2318B9880](v69, -1, -1);

        (*(v83 + 8))(v85, v84);
        (*(v92 + 8))(v94, v96);
      }

      else
      {

        (*(v65 + 8))(v64, v67);
        (*(v83 + 8))(v63, v84);
        (*(v46 + 8))(v94, v44);
      }

      v51 = 1;
      v50 = v95;
    }
  }

  else
  {
    v48 = v90;
    v49 = v91;
    (*(v91 + 4))(v90, v13, v42);
    (*(v33 + 16))(v38, v40, v96);
    v78 = v32;
    sub_22C4E719C(v32, v92, &qword_27D9C1468, &qword_22C92D680);
    sub_22C4E719C(v97, v93, &qword_27D9C1460, &qword_22C92D678);
    v89 = sub_22C90984C();
    sub_22C90985C();
    v50 = v95;
    sub_22C902A5C();
    (*(v49 + 1))(v48, v42);
    (*(v33 + 8))(v40, v96);
    v51 = 0;
    v32 = v78;
  }

  v76 = sub_22C902A7C();
  sub_22C36C640(v50, v51, 1, v76);
  sub_22C36DD28(v97, &qword_27D9C1460, &qword_22C92D678);
  return sub_22C36DD28(v32, &qword_27D9C1468, &qword_22C92D680);
}

uint64_t sub_22C8E0140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_22C90952C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9C1478, &qword_22C92D6B0);
  v5[13] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v7 = sub_22C90993C();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8E02F8, 0, 0);
}

uint64_t sub_22C8E02F8()
{
  v1 = v0[17];
  sub_22C4E719C(v0[6], v0[16], &qword_27D9BC390, &qword_22C912AC0);
  v2 = sub_22C36CCF8();
  sub_22C36D0A8(v2, v3, v1);
  if (v4)
  {
    v5 = v0[16];
    v6 = &qword_27D9BC390;
    v7 = &qword_22C912AC0;
  }

  else
  {
    (*(v0[18] + 32))(v0[20], v0[16], v0[17]);
    sub_22C90988C();
    sub_22C90986C();
    v8 = sub_22C36CCF8();
    v11 = sub_22C370B74(v8, v9, v10);
    v12 = v0[20];
    v13 = v0[13];
    if (v11 != 1)
    {
      v42 = v0[5];
      sub_22C36DD28(v0[13], &qword_27D9C1478, &qword_22C92D6B0);
      sub_22C8DF6D4(v12, 0, 0, v42);
      v43 = sub_22C36BBCC();
      v34 = v44(v43);
LABEL_13:
      sub_22C38B304(v34, v35, v36, v37, v38, v39, v40, v41);

      sub_22C36D5F8();

      __asm { BRAA            X1, X16 }
    }

    v14 = sub_22C36BBCC();
    v15(v14);
    v6 = &qword_27D9C1478;
    v7 = &qword_22C92D6B0;
    v5 = v13;
  }

  sub_22C36DD28(v5, v6, v7);
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v16);
  v19 = (*(v17 + 88))(v16, v18);
  if (v19 == *MEMORY[0x277D72D50] || v19 == *MEMORY[0x277D72D30] || (v47 = v0[12], v19 != *MEMORY[0x277D72D28]))
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    v20 = 0;
    v21 = 0;
    goto LABEL_9;
  }

  v48 = sub_22C37EBDC();
  v49(v48);
  v50 = *v47;
  v20 = *(*v47 + 16);
  v0[21] = v20;
  v21 = v50[3];
  v0[22] = v21;
  v52 = v50[4];
  v51 = v50[5];
  v53 = qword_27D9BA800;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = sub_22C36BA00();
  if (sub_22C5E935C(v54, v55, v56))
  {

LABEL_9:
    v22 = v0[17];
    sub_22C4E719C(v0[6], v0[14], &qword_27D9BC390, &qword_22C912AC0);
    v23 = sub_22C37EF1C();
    sub_22C36D0A8(v23, v24, v22);
    if (v4)
    {
      v25 = v0[14];

      sub_22C36DD28(v25, &qword_27D9BC390, &qword_22C912AC0);
      sub_22C902A7C();
      sub_22C36A748();
      v34 = sub_22C36C640(v26, v27, v28, v29);
    }

    else
    {
      v30 = v0[19];
      v31 = v0[5];
      (*(v0[18] + 32))(v30, v0[14], v0[17]);
      sub_22C8DF6D4(v30, v20, v21, v31);

      v32 = sub_22C36D264();
      v34 = v33(v32);
    }

    goto LABEL_13;
  }

  v57 = v0[15];
  v59 = v0[7];
  v58 = v0[8];
  v73 = v0[6];
  v74 = v0[17];
  type metadata accessor for ResponseGenerationSearchableItem();
  swift_allocObject();

  v0[23] = sub_22C8C6244(v59, v58, v52, v51, v20, v21);

  sub_22C4E719C(v73, v57, &qword_27D9BC390, &qword_22C912AC0);
  v60 = sub_22C374568();
  v62 = sub_22C370B74(v60, v61, v74);

  if (v62 == 1)
  {
    sub_22C36DD28(v0[15], &qword_27D9BC390, &qword_22C912AC0);
    v63 = 0;
  }

  else
  {
    v64 = v0[17];
    sub_22C9098BC();
    v63 = v65;
    v66 = sub_22C36CDBC();
    v67(v66, v64);
  }

  v0[24] = v63;
  v68 = swift_task_alloc();
  v0[25] = v68;
  *v68 = v0;
  v68[1] = sub_22C8E0810;
  sub_22C37170C();
  sub_22C36D5F8();

  return sub_22C8C6448(v69, v70);
}

uint64_t sub_22C8E0810()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = *v0;
  sub_22C369970();
  *v6 = v5;
  *(v8 + 208) = v7;

  v9 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C8E0914()
{
  if (v0[26] >> 60 == 15)
  {

    v1 = v0[22];
    v2 = v0[17];
    v3 = v0[14];
    sub_22C4E719C(v0[6], v3, &qword_27D9BC390, &qword_22C912AC0);
    sub_22C36D0A8(v3, 1, v2);
    if (!v4)
    {
      (*(v0[18] + 32))(v0[19], v0[14], v0[17]);
      v10 = sub_22C370018();
      sub_22C8DF6D4(v10, v11, v1, v12);

      v13 = sub_22C36ECB4();
      v15 = v14(v13);
      goto LABEL_7;
    }

    v5 = v0[14];

    sub_22C36DD28(v5, &qword_27D9BC390, &qword_22C912AC0);
    sub_22C902A7C();
    v6 = sub_22C37EF1C();
  }

  else
  {
    v9 = v0[5];

    sub_22C36BA00();
    sub_22C902A6C();

    v8 = sub_22C902A7C();
    v6 = v9;
    v7 = 0;
  }

  v15 = sub_22C36C640(v6, v7, 1, v8);
LABEL_7:
  sub_22C38B304(v15, v16, v17, v18, v19, v20, v21, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_22C8E0B04()
{
  v0 = sub_22C8798C0();
  if (((v0 ^ sub_22C8798C0()) & 1) == 0)
  {
    v1 = sub_22C8794D0();
    v3 = v2;
    if (v1 == sub_22C8794D0() && v3 == v4)
    {
      LOBYTE(v0) = 0;
    }

    else
    {
      LOBYTE(v0) = sub_22C90B4FC();
    }
  }

  return v0 & 1;
}

uint64_t sub_22C8E0BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9063DC();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22C90991C();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22C3A5908(&qword_27D9BFFD8, &qword_22C925C90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43[-v10];
  v12 = sub_22C3A5908(&qword_27D9BFFE0, &qword_22C925C98);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v43[-v17];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v43[-v20];
  MEMORY[0x28223BE20](v19);
  v52 = &v43[-v22];
  sub_22C4E719C(a1, v11, &qword_27D9BFFD8, &qword_22C925C90);
  if (sub_22C370B74(v11, 1, v12) == 1)
  {
    sub_22C36DD28(v11, &qword_27D9BFFD8, &qword_22C925C90);
    v23 = sub_22C90033C();
    v24 = a2;
    v25 = 1;
    return sub_22C36C640(v24, v25, 1, v23);
  }

  v45 = a2;
  v26 = v52;
  (*(v13 + 32))(v52, v11, v12);
  v27 = *(v13 + 16);
  v27(v21, v26, v12);
  if ((*(v13 + 88))(v21, v12) == *MEMORY[0x277D731E0])
  {
    (*(v13 + 96))(v21, v12);
    v29 = v47;
    v28 = v48;
    (v47[4])(v8, v21, v48);
    sub_22C9098EC();
    v30 = v45;
    sub_22C90031C();
    (v29[1])(v8, v28);
    (*(v13 + 8))(v52, v12);
    v23 = sub_22C90033C();
    v24 = v30;
    v25 = 0;
    return sub_22C36C640(v24, v25, 1, v23);
  }

  v48 = v21;
  v32 = v51;
  sub_22C90405C();
  v27(v18, v52, v12);
  v33 = sub_22C9063CC();
  v34 = sub_22C90AADC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v53 = v47;
    *v35 = 136642819;
    v44 = v34;
    v27(v46, v18, v12);
    v36 = sub_22C90A1AC();
    v38 = v37;
    v39 = *(v13 + 8);
    v39(v18, v12);
    v40 = sub_22C36F9F4(v36, v38, &v53);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_22C366000, v33, v44, "Unsupported display value %{sensitive}s", v35, 0xCu);
    v41 = v47;
    sub_22C36FF94(v47);
    MEMORY[0x2318B9880](v41, -1, -1);
    MEMORY[0x2318B9880](v35, -1, -1);

    (*(v49 + 8))(v51, v50);
  }

  else
  {

    v39 = *(v13 + 8);
    v39(v18, v12);
    (*(v49 + 8))(v32, v50);
  }

  v39(v52, v12);
  v42 = sub_22C90033C();
  sub_22C36C640(v45, 1, 1, v42);
  return (v39)(v48, v12);
}

uint64_t sub_22C8E1180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_22C9063DC();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9C1480, &qword_22C92D6B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_22C3A5908(&qword_27D9C1488, &qword_22C92D6C0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v38 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  sub_22C4E719C(a1, v7, &qword_27D9C1480, &qword_22C92D6B8);
  if (sub_22C370B74(v7, 1, v8) == 1)
  {
    sub_22C36DD28(v7, &qword_27D9C1480, &qword_22C92D6B8);
    v21 = sub_22C90989C();
    v22 = v44;
    v23 = 1;
    return sub_22C36C640(v22, v23, 1, v21);
  }

  (*(v9 + 32))(v20, v7, v8);
  v24 = *(v9 + 16);
  v24(v18, v20, v8);
  v25 = v18;
  if ((*(v9 + 88))(v18, v8) == *MEMORY[0x277D731E0])
  {
    (*(v9 + 8))(v20, v8);
    (*(v9 + 96))(v18, v8);
    v26 = sub_22C90989C();
    v27 = v44;
    (*(*(v26 - 8) + 32))(v44, v25, v26);
    v22 = v27;
    v23 = 0;
    v21 = v26;
    return sub_22C36C640(v22, v23, 1, v21);
  }

  v40 = v18;
  sub_22C90405C();
  v24(v15, v20, v8);
  v29 = sub_22C9063CC();
  v30 = sub_22C90AADC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v31 = 136642819;
    v24(v12, v15, v8);
    v38 = sub_22C90A1AC();
    v33 = v32;
    v34 = *(v9 + 8);
    v34(v15, v8);
    v35 = sub_22C36F9F4(v38, v33, &v45);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_22C366000, v29, v30, "Unsupported display value %{sensitive}s", v31, 0xCu);
    v36 = v39;
    sub_22C36FF94(v39);
    MEMORY[0x2318B9880](v36, -1, -1);
    MEMORY[0x2318B9880](v31, -1, -1);
  }

  else
  {

    v34 = *(v9 + 8);
    v34(v15, v8);
  }

  (*(v41 + 8))(v43, v42);
  v34(v20, v8);
  v37 = sub_22C90989C();
  sub_22C36C640(v44, 1, 1, v37);
  return (v34)(v40, v8);
}

uint64_t sub_22C8E1694(uint64_t *a1)
{
  v2 = *(sub_22C90221C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C598();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C8E173C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C8E173C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C90221C();
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C90221C() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_22C8E2ADC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C8E186C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C8E186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v159 = a1;
  v137 = sub_22C90934C();
  v7 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v136 = v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_22C90910C();
  v9 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v141 = v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_22C90919C();
  v11 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v152 = v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_22C9093BC();
  v13 = *(v160 - 8);
  v14 = MEMORY[0x28223BE20](v160);
  v171 = v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v170 = v134 - v17;
  MEMORY[0x28223BE20](v16);
  v187 = v134 - v18;
  v176 = sub_22C90952C();
  v19 = *(v176 - 8);
  v20 = MEMORY[0x28223BE20](v176 - 8);
  v172 = v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v175 = v134 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v189 = v134 - v25;
  MEMORY[0x28223BE20](v24);
  v188 = v134 - v26;
  v27 = sub_22C90221C();
  v28 = MEMORY[0x28223BE20](v27);
  v158 = v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v192 = v134 - v31;
  result = MEMORY[0x28223BE20](v30);
  v143 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v35 = v134 - v33;
  v180 = *a4;
  v165 = *(v34 + 16);
  v191 = (v13 + 8);
  v186 = (v19 + 16);
  v185 = (v19 + 88);
  v184 = *MEMORY[0x277D72D50];
  v183 = *MEMORY[0x277D72D30];
  v174 = *MEMORY[0x277D72D28];
  v151 = *MEMORY[0x277D72D18];
  v182 = (v19 + 8);
  v156 = (v19 + 96);
  v164 = (v13 + 88);
  v163 = *MEMORY[0x277D72A58];
  v162 = *MEMORY[0x277D729E8];
  v155 = *MEMORY[0x277D72A38];
  v154 = (v13 + 96);
  v150 = *MEMORY[0x277D729E0];
  v135 = (v7 + 16);
  v134[1] = v7 + 8;
  v140 = (v9 + 16);
  v149 = *MEMORY[0x277D72A30];
  v139 = v9 + 8;
  v148 = (v11 + 16);
  v147 = v11 + 8;
  v146 = *MEMORY[0x277D72A40];
  v169 = (v34 + 8);
  v157 = (v34 + 32);
  v144 = *MEMORY[0x277D729F8];
  v138 = *MEMORY[0x277D72A60];
  v167 = v34 + 16;
  v161 = *(v34 + 72);
  v166 = v134 - v33;
  v168 = v27;
  while (2)
  {
    v145 = a3;
    v36 = v160;
    v37 = v172;
    while (1)
    {
      v38 = v180;
      v39 = v161;
      v178 = v180 + v161 * a3;
      v40 = v165;
      v165(v35);
      v179 = a3 - 1;
      v177 = v38 + (a3 - 1) * v39;
      v40(v192);
      v41 = v187;
      sub_22C90207C();
      v42 = v188;
      sub_22C90935C();
      v43 = *v191;
      (*v191)(v41, v36);
      v44 = *v186;
      v45 = v189;
      v46 = v176;
      (*v186)(v189, v42, v176);
      v47 = *v185;
      v48 = (*v185)(v45, v46);
      v49 = v48 == v184 || v48 == v183;
      v181 = v44;
      if (v49 || v48 != v174)
      {
        v67 = *v182;
        (*v182)(v188, v46);
        v67(v189, v46);
        LODWORD(v190) = 0;
      }

      else
      {
        v173 = v43;
        v50 = v189;
        (*v156)(v189, v46);
        v52 = *(*v50 + 16);
        v51 = *(*v50 + 24);
        v54 = *(*v50 + 32);
        v53 = *(*v50 + 40);
        if (qword_27D9BA7D8 != -1)
        {
          swift_once();
        }

        v55 = off_27D9C0CA8;
        if (*(off_27D9C0CA8 + 2) && (v56 = sub_22C36E2BC(v52, v51), (v57 & 1) != 0) && (v58 = *(v55[7] + 8 * v56), *(v58 + 16)))
        {
          sub_22C90B62C();

          sub_22C909FFC();
          v59 = sub_22C90B66C();
          v60 = ~(-1 << *(v58 + 32));
          do
          {
            v61 = v59 & v60;
            v62 = (1 << (v59 & v60)) & *(v58 + 56 + (((v59 & v60) >> 3) & 0xFFFFFFFFFFFFFF8));
            v63 = v62 != 0;
            if (!v62)
            {
              break;
            }

            v64 = (*(v58 + 48) + 16 * v61);
            if (*v64 == v54 && v64[1] == v53)
            {
              break;
            }

            v66 = sub_22C90B4FC();
            v59 = v61 + 1;
          }

          while ((v66 & 1) == 0);
        }

        else
        {
          v63 = 0;
        }

        LODWORD(v190) = v63;
        v67 = *v182;
        v46 = v176;
        (*v182)(v188, v176);

        v36 = v160;
        v37 = v172;
        v43 = v173;
      }

      v68 = v187;
      sub_22C90207C();
      v69 = v175;
      sub_22C90935C();
      v43(v68, v36);
      v181(v37, v69, v46);
      v70 = v47(v37, v46);
      v71 = v70 == v184 || v70 == v183;
      if (!v71 && v70 == v174)
      {
        break;
      }

      v67(v69, v46);
      v67(v37, v46);
      v73 = v168;
      v35 = v166;
      if ((v190 & 1) == 0)
      {
        goto LABEL_51;
      }

      v74 = *v169;
      (*v169)(v192, v168);
      result = (v74)(v35, v73);
LABEL_75:
      if (!v180)
      {
        __break(1u);
        return result;
      }

      v118 = *v157;
      v119 = v158;
      (*v157)(v158, v178, v73);
      v120 = v177;
      swift_arrayInitWithTakeFrontToBack();
      result = (v118)(v120, v119, v73);
      a3 = v179;
      if (v179 == v159)
      {
        goto LABEL_101;
      }
    }

    v173 = v43;
    (*v156)(v37, v46);
    v76 = *(*v37 + 16);
    v75 = *(*v37 + 24);
    v78 = *(*v37 + 32);
    v77 = *(*v37 + 40);
    v79 = v190;
    if (qword_27D9BA7D8 != -1)
    {
      swift_once();
    }

    v80 = off_27D9C0CA8;
    if (*(off_27D9C0CA8 + 2) && (v81 = sub_22C36E2BC(v76, v75), (v82 & 1) != 0) && (v83 = *(v80[7] + 8 * v81), *(v83 + 16)))
    {
      sub_22C90B62C();

      sub_22C909FFC();
      v84 = sub_22C90B66C();
      v85 = ~(-1 << *(v83 + 32));
      do
      {
        v86 = v84 & v85;
        v87 = (1 << (v84 & v85)) & *(v83 + 56 + (((v84 & v85) >> 3) & 0xFFFFFFFFFFFFFF8));
        v88 = v87 != 0;
        if (!v87)
        {
          break;
        }

        v89 = (*(v83 + 48) + 16 * v86);
        if (*v89 == v78 && v89[1] == v77)
        {
          break;
        }

        v91 = sub_22C90B4FC();
        v84 = v86 + 1;
      }

      while ((v91 & 1) == 0);

      v79 = v190;
    }

    else
    {
      v88 = 0;
    }

    v67(v175, v176);

    v36 = v160;
    v37 = v172;
    v73 = v168;
    v35 = v166;
    v43 = v173;
    if (v79 != v88)
    {
LABEL_74:
      v117 = *v169;
      (*v169)(v192, v73);
      result = (v117)(v35, v73);
      if ((v79 & 1) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_75;
    }

LABEL_51:
    v92 = v170;
    sub_22C90207C();
    v93 = *v164;
    v94 = (*v164)(v92, v36);
    if (v94 == v163 || v94 == v162)
    {
      goto LABEL_56;
    }

    if (v94 != v155)
    {
      if (v94 != v150 && v94 != v149 && v94 != v146)
      {
        if (v94 == v144)
        {
          (*v154)(v170, v36);
          v123 = swift_projectBox();
          v98 = v141;
          v99 = v35;
          v100 = v142;
          (*v140)(v141, v123, v142);
          v190 = sub_22C90908C();
          v96 = v124;
          v102 = &v173;
          goto LABEL_59;
        }

        if (v94 == v138)
        {
          (*v154)(v170, v36);
          v129 = swift_projectBox();
          v98 = v136;
          v99 = v35;
          v100 = v137;
          (*v135)(v136, v129, v137);
          v190 = sub_22C90932C();
          v96 = v130;
          v102 = &v168;
          goto LABEL_59;
        }
      }

LABEL_56:
      v43(v170, v36);
      v190 = 0;
      v96 = 0xE000000000000000;
      goto LABEL_60;
    }

    (*v154)(v170, v36);
    v97 = swift_projectBox();
    v98 = v152;
    v99 = v35;
    v100 = v153;
    (*v148)(v152, v97, v153);
    v190 = sub_22C90908C();
    v96 = v101;
    v102 = &v181;
LABEL_59:
    v103 = v100;
    v35 = v99;
    (**(v102 - 32))(v98, v103);

LABEL_60:
    v104 = v171;
    sub_22C90207C();
    v105 = v36;
    v106 = v93(v104, v36);
    if (v106 == v163 || v106 == v162)
    {
      goto LABEL_65;
    }

    if (v106 != v155)
    {
      if (v106 != v150 && v106 != v149 && v106 != v146)
      {
        if (v106 == v144)
        {
          (*v154)(v171, v36);
          v110 = v35;
          v127 = swift_projectBox();
          v112 = v141;
          v113 = v142;
          (*v140)(v141, v127, v142);
          v108 = sub_22C90908C();
          v109 = v128;
          v115 = &v173;
          goto LABEL_68;
        }

        if (v106 == v138)
        {
          (*v154)(v171, v36);
          v110 = v35;
          v131 = swift_projectBox();
          v112 = v136;
          v113 = v137;
          (*v135)(v136, v131, v137);
          v108 = sub_22C90932C();
          v109 = v132;
          v115 = &v168;
          goto LABEL_68;
        }
      }

LABEL_65:
      v43(v171, v36);
      v108 = 0;
      v109 = 0xE000000000000000;
      goto LABEL_69;
    }

    (*v154)(v171, v36);
    v110 = v35;
    v111 = swift_projectBox();
    v112 = v152;
    v113 = v153;
    (*v148)(v152, v111, v153);
    v108 = sub_22C90908C();
    v109 = v114;
    v115 = &v181;
LABEL_68:
    v105 = v160;
    (**(v115 - 32))(v112, v113);
    v35 = v110;

LABEL_69:
    if (v190 != v108 || v96 != v109)
    {
      LOBYTE(v79) = sub_22C90B4FC();

      v37 = v172;
      v36 = v105;
      goto LABEL_74;
    }

    v133 = *v169;
    (*v169)(v192, v73);
    result = (v133)(v35, v73);
LABEL_101:
    a3 = v145 + 1;
    if (v145 + 1 != v143)
    {
      continue;
    }

    return result;
  }
}

void sub_22C8E2ADC(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v343 = a4;
  v337 = a1;
  v341 = sub_22C90934C();
  v5 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v340 = &v334 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = sub_22C90910C();
  v7 = *(v350 - 8);
  MEMORY[0x28223BE20](v350);
  v349 = &v334 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = sub_22C90919C();
  v9 = *(v367 - 8);
  MEMORY[0x28223BE20](v367);
  v366 = &v334 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v410 = sub_22C9093BC();
  v11 = *(v410 - 8);
  v12 = MEMORY[0x28223BE20](v410);
  v380 = &v334 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v379 = &v334 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v353 = &v334 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v352 = &v334 - v19;
  MEMORY[0x28223BE20](v18);
  v405 = &v334 - v20;
  v389 = sub_22C90952C();
  v21 = *(v389 - 8);
  v22 = MEMORY[0x28223BE20](v389);
  v381 = &v334 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v334 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v398 = &v334 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v399 = &v334 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v351 = &v334 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v356 = &v334 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v358 = &v334 - v36;
  MEMORY[0x28223BE20](v35);
  v359 = &v334 - v37;
  v390 = sub_22C90221C();
  v38 = MEMORY[0x28223BE20](v390);
  v348 = &v334 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v376 = &v334 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v409 = &v334 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v407 = &v334 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v371 = &v334 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v368 = &v334 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  MEMORY[0x28223BE20](v50);
  v54 = &v334 - v53;
  v357 = a3;
  v55 = a3[1];
  v355 = v51;
  if (v55 < 1)
  {
    v57 = MEMORY[0x277D84F90];
LABEL_296:
    v163 = *v337;
    if (!*v337)
    {
      goto LABEL_338;
    }

    v323 = v57;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_298;
    }

    goto LABEL_332;
  }

  v336 = v54;
  v56 = 0;
  v387 = v51 + 16;
  v388 = (v51 + 8);
  v404 = *MEMORY[0x277D72D50];
  v408 = (v11 + 8);
  v403 = (v21 + 16);
  v402 = (v21 + 88);
  v401 = *MEMORY[0x277D72D30];
  v393 = *MEMORY[0x277D72D28];
  v365 = *MEMORY[0x277D72D18];
  v400 = (v21 + 8);
  v375 = (v21 + 96);
  v386 = (v11 + 88);
  v385 = *MEMORY[0x277D72A58];
  v384 = *MEMORY[0x277D729E8];
  v373 = *MEMORY[0x277D72A38];
  v369 = (v11 + 96);
  v364 = *MEMORY[0x277D729E0];
  v339 = (v5 + 16);
  v338 = v5 + 8;
  v347 = (v7 + 16);
  v363 = *MEMORY[0x277D72A30];
  v346 = v7 + 8;
  v362 = (v9 + 16);
  v361 = v9 + 8;
  v360 = *MEMORY[0x277D72A40];
  v383 = (v51 + 32);
  v354 = *MEMORY[0x277D729F8];
  v345 = *MEMORY[0x277D72A60];
  v57 = MEMORY[0x277D84F90];
  v58 = v389;
  v392 = v26;
  v335 = v52;
  while (1)
  {
    v342 = v57;
    v59 = v56;
    v60 = v56 + 1;
    v382 = v56;
    if (v56 + 1 >= v55)
    {
      v149 = (v56 + 1);
      v162 = v343;
      v64 = v390;
      v163 = v59;
      goto LABEL_126;
    }

    v394 = v55;
    v61 = *v357;
    v62 = *(v355 + 72);
    v63 = *(v355 + 16);
    v64 = v390;
    v63(v336, &(*v357)[v62 * v60], v390);
    v395 = v62;
    v378 = v61;
    v65 = &v61[v62 * v59];
    v66 = v335;
    v377 = v63;
    v63(v335, v65, v64);
    v67 = v336;
    v68 = v66;
    v69 = v370;
    LODWORD(v391) = sub_22C8E0B04();
    v370 = v69;
    if (v69)
    {
      v333 = *v388;
      (*v388)(v66, v64);
      v333(v67, v64);
LABEL_306:

      return;
    }

    v70 = *v388;
    (*v388)(v68, v64);
    v374 = v70;
    v70(v67, v64);
    v71 = v59 + 2;
    v72 = v394;
    v58 = v389;
    while (1)
    {
      v73 = v71;
      if (v60 + 1 >= v72)
      {
        break;
      }

      v406 = v71;
      v372 = v60 + 1;
      v74 = v395;
      v75 = v378;
      v76 = v377;
      v377(v368, &v378[(v60 + 1) * v395], v64);
      v76(v371, &v75[v60 * v74], v64);
      v77 = v405;
      sub_22C90207C();
      v78 = v359;
      sub_22C90935C();
      v79 = *v408;
      (*v408)(v77, v410);
      v80 = *v403;
      v81 = v358;
      (*v403)(v358, v78, v58);
      v82 = *v402;
      v83 = (*v402)(v81, v58);
      v84 = v83 == v404 || v83 == v401;
      v396 = v79;
      v397 = v80;
      if (v84 || v83 != v393)
      {
        v102 = *v400;
        (*v400)(v359, v58);
        v102(v358, v58);
        v98 = 0;
      }

      else
      {
        v85 = v358;
        (*v375)(v358, v58);
        v87 = *(*v85 + 16);
        v86 = *(*v85 + 24);
        v88 = *(*v85 + 32);
        v89 = *(*v85 + 40);
        if (qword_27D9BA7D8 != -1)
        {
          swift_once();
        }

        v90 = off_27D9C0CA8;
        if (*(off_27D9C0CA8 + 2) && (v91 = sub_22C36E2BC(v87, v86), (v92 & 1) != 0) && (v93 = *(v90[7] + 8 * v91), *(v93 + 16)))
        {
          sub_22C90B62C();

          sub_22C909FFC();
          v94 = sub_22C90B66C();
          v95 = ~(-1 << *(v93 + 32));
          do
          {
            v96 = v94 & v95;
            v97 = (1 << (v94 & v95)) & *(v93 + 56 + (((v94 & v95) >> 3) & 0xFFFFFFFFFFFFFF8));
            v98 = v97 != 0;
            if (!v97)
            {
              break;
            }

            v99 = (*(v93 + 48) + 16 * v96);
            if (*v99 == v88 && v99[1] == v89)
            {
              break;
            }

            v101 = sub_22C90B4FC();
            v94 = v96 + 1;
          }

          while ((v101 & 1) == 0);
        }

        else
        {
          v98 = 0;
        }

        v102 = *v400;
        v58 = v389;
        (*v400)(v359, v389);

        v79 = v396;
      }

      v103 = v405;
      sub_22C90207C();
      v104 = v356;
      sub_22C90935C();
      v79(v103, v410);
      v105 = v351;
      (v397)(v351, v104, v58);
      v106 = v82(v105, v58);
      if (v106 != v404 && v106 != v401 && v106 == v393)
      {
        v397 = v102;
        (*v375)(v105, v58);
        v110 = *(*v105 + 16);
        v109 = *(*v105 + 24);
        v111 = *(*v105 + 32);
        v112 = *(*v105 + 40);
        if (qword_27D9BA7D8 != -1)
        {
          swift_once();
        }

        v113 = off_27D9C0CA8;
        if (*(off_27D9C0CA8 + 2) && (v114 = sub_22C36E2BC(v110, v109), (v115 & 1) != 0) && (v116 = *(v113[7] + 8 * v114), *(v116 + 16)))
        {
          sub_22C90B62C();

          sub_22C909FFC();
          v117 = sub_22C90B66C();
          v118 = ~(-1 << *(v116 + 32));
          do
          {
            v119 = v117 & v118;
            v120 = (1 << (v117 & v118)) & *(v116 + 56 + (((v117 & v118) >> 3) & 0xFFFFFFFFFFFFFF8));
            v121 = v120 != 0;
            if (!v120)
            {
              break;
            }

            v122 = (*(v116 + 48) + 16 * v119);
            if (*v122 == v111 && v122[1] == v112)
            {
              break;
            }

            v124 = sub_22C90B4FC();
            v117 = v119 + 1;
          }

          while ((v124 & 1) == 0);
        }

        else
        {
          v121 = 0;
        }

        (v397)(v356, v389);

        if (v98 != v121)
        {
          goto LABEL_79;
        }

LABEL_54:
        v125 = v352;
        sub_22C90207C();
        v126 = *v386;
        v127 = (*v386)(v125, v410);
        v128 = v127 == v385 || v127 == v384;
        v129 = v396;
        if (v128)
        {
          goto LABEL_59;
        }

        if (v127 == v373)
        {
          (*v369)(v352, v410);
          v132 = swift_projectBox();
          v133 = v366;
          v134 = v367;
          (*v362)(v366, v132, v367);
          v130 = sub_22C90908C();
          v131 = v135;
          v136 = &v395;
          goto LABEL_62;
        }

        v150 = v127 == v364 || v127 == v363;
        if (v150 || v127 == v360)
        {
          goto LABEL_59;
        }

        if (v127 == v354)
        {
          (*v369)(v352, v410);
          v152 = swift_projectBox();
          v133 = v349;
          v134 = v350;
          (*v347)(v349, v152, v350);
          v130 = sub_22C90908C();
          v131 = v153;
          v136 = &v379;
          goto LABEL_62;
        }

        if (v127 != v345)
        {
LABEL_59:
          (v396)(v352, v410);
          v130 = 0;
          v131 = 0xE000000000000000;
        }

        else
        {
          (*v369)(v352, v410);
          v158 = swift_projectBox();
          v133 = v340;
          v134 = v341;
          (*v339)(v340, v158, v341);
          v130 = sub_22C90932C();
          v131 = v159;
          v136 = &v371;
LABEL_62:
          (**(v136 - 32))(v133, v134);
        }

        v137 = v353;
        sub_22C90207C();
        v138 = v126(v137, v410);
        if (v138 == v385 || v138 == v384)
        {
          goto LABEL_68;
        }

        if (v138 == v373)
        {
          (*v369)(v353, v410);
          v142 = swift_projectBox();
          v143 = v366;
          v144 = v367;
          (*v362)(v366, v142, v367);
          v140 = sub_22C90908C();
          v141 = v145;
          v146 = &v395;
          goto LABEL_71;
        }

        v154 = v138 == v364 || v138 == v363;
        if (v154 || v138 == v360)
        {
          goto LABEL_68;
        }

        if (v138 == v354)
        {
          (*v369)(v353, v410);
          v156 = swift_projectBox();
          v143 = v349;
          v144 = v350;
          (*v347)(v349, v156, v350);
          v140 = sub_22C90908C();
          v141 = v157;
          v146 = &v379;
          goto LABEL_71;
        }

        if (v138 != v345)
        {
LABEL_68:
          (v129)(v353, v410);
          v140 = 0;
          v141 = 0xE000000000000000;
        }

        else
        {
          (*v369)(v353, v410);
          v160 = swift_projectBox();
          v143 = v340;
          v144 = v341;
          (*v339)(v340, v160, v341);
          v140 = sub_22C90932C();
          v141 = v161;
          v146 = &v371;
LABEL_71:
          (**(v146 - 32))(v143, v144);
        }

        if (v130 == v140 && v131 == v141)
        {
          v98 = 0;
        }

        else
        {
          v98 = sub_22C90B4FC();
        }

        goto LABEL_79;
      }

      v102(v104, v58);
      v102(v105, v58);
      if ((v98 & 1) == 0)
      {
        goto LABEL_54;
      }

      v98 = 1;
LABEL_79:
      v64 = v390;
      v148 = v374;
      v374(v371, v390);
      v148(v368, v64);
      v73 = v406;
      v71 = v406 + 1;
      v149 = v372;
      v60 = v372;
      v58 = v389;
      v72 = v394;
      if ((v391 ^ v98))
      {
        goto LABEL_105;
      }
    }

    v149 = v72;
LABEL_105:
    if ((v391 & 1) == 0)
    {
      v162 = v343;
      v163 = v382;
      goto LABEL_126;
    }

    v163 = v382;
    v162 = v343;
    if (v149 < v382)
    {
      goto LABEL_331;
    }

    if (v382 < v149)
    {
      if (v72 >= v73)
      {
        v164 = v73;
      }

      else
      {
        v164 = v72;
      }

      v165 = v395 * (v164 - 1);
      v166 = v395 * v164;
      v167 = v382 * v395;
      v168 = v149;
      v169 = v382;
      v372 = v149;
      do
      {
        if (v169 != --v168)
        {
          v170 = *v357;
          if (!*v357)
          {
            goto LABEL_336;
          }

          v171 = *v383;
          v172 = v390;
          (*v383)(v348, &v170[v167], v390);
          if (v167 < v165 || &v170[v167] >= &v170[v166])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v167 != v165)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v171(&v170[v165], v348, v172);
          v162 = v343;
          v149 = v372;
          v163 = v382;
        }

        ++v169;
        v165 -= v395;
        v166 -= v395;
        v167 += v395;
      }

      while (v169 < v168);
      v58 = v389;
      v64 = v390;
    }

LABEL_126:
    v174 = v357[1];
    if (v149 < v174)
    {
      if (__OFSUB__(v149, v163))
      {
        goto LABEL_328;
      }

      if (&v149[-v163] < v162)
      {
        break;
      }
    }

LABEL_239:
    if (v149 < v163)
    {
      goto LABEL_327;
    }

    v372 = v149;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v57 = v342;
    }

    else
    {
      sub_22C590218(0, *(v342 + 2) + 1, 1, v342);
      v57 = v321;
    }

    v277 = *(v57 + 2);
    v276 = *(v57 + 3);
    v278 = v277 + 1;
    if (v277 >= v276 >> 1)
    {
      sub_22C590218(v276 > 1, v277 + 1, 1, v57);
      v57 = v322;
    }

    *(v57 + 2) = v278;
    v279 = v57 + 32;
    v280 = &v57[16 * v277 + 32];
    v281 = v372;
    *v280 = v163;
    v280[1] = v281;
    v282 = *v337;
    if (!*v337)
    {
      goto LABEL_337;
    }

    if (v277)
    {
      v58 = v389;
      v163 = v57;
      while (1)
      {
        v283 = v278 - 1;
        v284 = &v279[2 * v278 - 2];
        v285 = &v57[16 * v278];
        if (v278 >= 4)
        {
          break;
        }

        if (v278 == 3)
        {
          v286 = *(v57 + 4);
          v287 = *(v57 + 5);
          v296 = __OFSUB__(v287, v286);
          v288 = v287 - v286;
          v289 = v296;
LABEL_260:
          if (v289)
          {
            goto LABEL_314;
          }

          v301 = *v285;
          v300 = *(v285 + 1);
          v302 = __OFSUB__(v300, v301);
          v303 = v300 - v301;
          v304 = v302;
          if (v302)
          {
            goto LABEL_317;
          }

          v305 = v284[1];
          v306 = v305 - *v284;
          if (__OFSUB__(v305, *v284))
          {
            goto LABEL_320;
          }

          if (__OFADD__(v303, v306))
          {
            goto LABEL_322;
          }

          if (v303 + v306 >= v288)
          {
            if (v288 < v306)
            {
              v283 = v278 - 2;
            }

            goto LABEL_282;
          }

          goto LABEL_275;
        }

        if (v278 < 2)
        {
          goto LABEL_316;
        }

        v308 = *v285;
        v307 = *(v285 + 1);
        v296 = __OFSUB__(v307, v308);
        v303 = v307 - v308;
        v304 = v296;
LABEL_275:
        if (v304)
        {
          goto LABEL_319;
        }

        v310 = *v284;
        v309 = v284[1];
        v296 = __OFSUB__(v309, v310);
        v311 = v309 - v310;
        if (v296)
        {
          goto LABEL_321;
        }

        if (v311 < v303)
        {
          v57 = v163;
          goto LABEL_291;
        }

LABEL_282:
        if (v283 - 1 >= v278)
        {
          __break(1u);
LABEL_309:
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
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
          goto LABEL_330;
        }

        if (!*v357)
        {
          goto LABEL_334;
        }

        v315 = &v279[2 * v283 - 2];
        v316 = *v315;
        v317 = &v279[2 * v283];
        v318 = *(v317 + 1);
        v319 = v370;
        sub_22C8E5188(&(*v357)[*(v355 + 72) * *v315], &(*v357)[*(v355 + 72) * *v317], &(*v357)[*(v355 + 72) * v318], v282);
        v370 = v319;
        if (v319)
        {
          goto LABEL_306;
        }

        if (v318 < v316)
        {
          goto LABEL_309;
        }

        v320 = *(v163 + 16);
        if (v283 > v320)
        {
          goto LABEL_310;
        }

        *v315 = v316;
        v315[1] = v318;
        if (v283 >= v320)
        {
          goto LABEL_311;
        }

        v278 = v320 - 1;
        sub_22C56BFF0(v317 + 16, v320 - 1 - v283, &v279[2 * v283]);
        v57 = v163;
        *(v163 + 16) = v320 - 1;
        v58 = v389;
        if (v320 <= 2)
        {
          goto LABEL_291;
        }
      }

      v290 = &v279[2 * v278];
      v291 = *(v290 - 8);
      v292 = *(v290 - 7);
      v296 = __OFSUB__(v292, v291);
      v293 = v292 - v291;
      if (v296)
      {
        goto LABEL_312;
      }

      v295 = *(v290 - 6);
      v294 = *(v290 - 5);
      v296 = __OFSUB__(v294, v295);
      v288 = v294 - v295;
      v289 = v296;
      if (v296)
      {
        goto LABEL_313;
      }

      v297 = *(v285 + 1);
      v298 = v297 - *v285;
      if (__OFSUB__(v297, *v285))
      {
        goto LABEL_315;
      }

      v296 = __OFADD__(v288, v298);
      v299 = v288 + v298;
      if (v296)
      {
        goto LABEL_318;
      }

      if (v299 >= v293)
      {
        v313 = *v284;
        v312 = v284[1];
        v296 = __OFSUB__(v312, v313);
        v314 = v312 - v313;
        if (v296)
        {
          goto LABEL_326;
        }

        if (v288 < v314)
        {
          v283 = v278 - 2;
        }

        goto LABEL_282;
      }

      goto LABEL_260;
    }

    v58 = v389;
LABEL_291:
    v55 = v357[1];
    v56 = v372;
    if (v372 >= v55)
    {
      goto LABEL_296;
    }
  }

  v175 = (v163 + v162);
  if (__OFADD__(v163, v162))
  {
    goto LABEL_329;
  }

  if (v175 >= v174)
  {
    v175 = v357[1];
  }

  if (v175 < v163)
  {
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    v323 = sub_22C56BFD8();
LABEL_298:
    v324 = v323 + 16;
    v325 = *(v323 + 2);
    while (v325 >= 2)
    {
      if (!*v357)
      {
        goto LABEL_335;
      }

      v326 = v323;
      v327 = &v323[16 * v325];
      v328 = *v327;
      v329 = &v324[2 * v325];
      v330 = *(v329 + 1);
      v331 = v370;
      sub_22C8E5188(&(*v357)[*(v355 + 72) * *v327], &(*v357)[*(v355 + 72) * *v329], &(*v357)[*(v355 + 72) * v330], v163);
      v370 = v331;
      if (v331)
      {
        break;
      }

      if (v330 < v328)
      {
        goto LABEL_323;
      }

      if (v325 - 2 >= *v324)
      {
        goto LABEL_324;
      }

      *v327 = v328;
      *(v327 + 1) = v330;
      v332 = *v324 - v325;
      if (*v324 < v325)
      {
        goto LABEL_325;
      }

      v325 = *v324 - 1;
      sub_22C56BFF0(v329 + 16, v332, v329);
      *v324 = v325;
      v323 = v326;
    }

    goto LABEL_306;
  }

  if (v149 == v175)
  {
    goto LABEL_239;
  }

  v397 = *v357;
  v378 = *(v355 + 72);
  v377 = *(v355 + 16);
  v344 = v175;
  while (2)
  {
    v372 = v149;
    v176 = v149;
LABEL_136:
    v177 = v58;
    v178 = v176 - 1;
    v179 = v397;
    v180 = v378;
    v395 = &v397[v378 * v176];
    v181 = v377;
    (v377)(v407);
    v396 = v178;
    v182 = &v179[v178 * v180];
    v183 = v410;
    v184 = v405;
    v181(v409, v182, v64);
    sub_22C90207C();
    v185 = v399;
    sub_22C90935C();
    v186 = v183;
    v58 = v177;
    v187 = *v408;
    (*v408)(v184, v186);
    v188 = *v403;
    v189 = v398;
    (*v403)(v398, v185, v58);
    v190 = *v402;
    v191 = (*v402)(v189, v58);
    v192 = v191 == v404 || v191 == v401;
    v394 = v182;
    if (v192)
    {
      v193 = *v400;
      goto LABEL_142;
    }

    if (v191 != v393)
    {
      v193 = *v400;
      if (v191 != v365)
      {
        v193(v399, v58);
        v193(v398, v58);
        LODWORD(v406) = 0;
        v194 = v381;
        v195 = v392;
        goto LABEL_163;
      }

LABEL_142:
      v194 = v381;
      v195 = v392;
      v193(v399, v58);
      v193(v398, v58);
      LODWORD(v406) = 0;
      goto LABEL_163;
    }

    v391 = v187;
    v196 = v398;
    (*v375)(v398, v58);
    v198 = *(*v196 + 16);
    v197 = *(*v196 + 24);
    v199 = *(*v196 + 32);
    v200 = *(*v196 + 40);
    if (qword_27D9BA7D8 != -1)
    {
      swift_once();
    }

    v201 = off_27D9C0CA8;
    if (*(off_27D9C0CA8 + 2) && (v202 = sub_22C36E2BC(v198, v197), (v203 & 1) != 0))
    {
      v204 = *(v201[7] + 8 * v202);
      v205 = v389;
      if (*(v204 + 16))
      {
        sub_22C90B62C();

        sub_22C909FFC();
        v206 = sub_22C90B66C();
        v374 = (v204 + 56);
        v207 = ~(-1 << *(v204 + 32));
        do
        {
          v208 = v206 & v207;
          v209 = (1 << (v206 & v207)) & *(v374 + (((v206 & v207) >> 3) & 0xFFFFFFFFFFFFFF8));
          LODWORD(v406) = v209 != 0;
          if (!v209)
          {
            break;
          }

          v210 = (*(v204 + 48) + 16 * v208);
          if (*v210 == v199 && v210[1] == v200)
          {
            break;
          }

          v212 = sub_22C90B4FC();
          v206 = v208 + 1;
        }

        while ((v212 & 1) == 0);
      }

      else
      {
        LODWORD(v406) = 0;
      }

      v58 = v205;
    }

    else
    {
      LODWORD(v406) = 0;
      v58 = v389;
    }

    v193 = *v400;
    (*v400)(v399, v58);

    v194 = v381;
    v195 = v392;
    v187 = v391;
LABEL_163:
    v213 = v405;
    sub_22C90207C();
    sub_22C90935C();
    v187(v213, v410);
    (v188)(v194, v195, v58);
    v214 = v190(v194, v58);
    if (v214 != v404 && v214 != v401 && v214 == v393)
    {
      v391 = v187;
      v218 = v58;
      (*v375)(v194, v58);
      v219 = *v194;
      v220 = v219[2];
      v221 = v219[3];
      v222 = v219[4];
      v223 = v219[5];
      if (qword_27D9BA7D8 != -1)
      {
        swift_once();
      }

      v224 = off_27D9C0CA8;
      if (*(off_27D9C0CA8 + 2) && (v225 = sub_22C36E2BC(v220, v221), (v226 & 1) != 0) && (v227 = *(v224[7] + 8 * v225), *(v227 + 16)))
      {
        sub_22C90B62C();

        sub_22C909FFC();
        v228 = sub_22C90B66C();
        v229 = ~(-1 << *(v227 + 32));
        do
        {
          v230 = v228 & v229;
          v231 = (1 << (v228 & v229)) & *(v227 + 56 + (((v228 & v229) >> 3) & 0xFFFFFFFFFFFFFF8));
          v232 = v231 != 0;
          if (!v231)
          {
            break;
          }

          v233 = (*(v227 + 48) + 16 * v230);
          if (*v233 == v222 && v233[1] == v223)
          {
            break;
          }

          v235 = sub_22C90B4FC();
          v228 = v230 + 1;
        }

        while ((v235 & 1) == 0);

        v58 = v389;
      }

      else
      {
        v232 = 0;
        v58 = v218;
      }

      v193(v392, v58);

      v236 = v406;
      v187 = v391;
      if (v406 == v232)
      {
        goto LABEL_187;
      }
    }

    else
    {
      v193(v195, v58);
      v193(v194, v58);
      v64 = v390;
      if (v406)
      {
        v217 = *v388;
        (*v388)(v409, v390);
        v217(v407, v64);
        goto LABEL_211;
      }

LABEL_187:
      v237 = v379;
      sub_22C90207C();
      v238 = *v386;
      v239 = (*v386)(v237, v410);
      if (v239 == v385 || v239 == v384)
      {
        goto LABEL_192;
      }

      if (v239 == v373)
      {
        (*v369)(v379, v410);
        v243 = swift_projectBox();
        v244 = v366;
        v245 = v367;
        (*v362)(v366, v243, v367);
        v241 = sub_22C90908C();
        v242 = v246;
        v247 = &v395;
        goto LABEL_195;
      }

      v263 = v239 == v364 || v239 == v363;
      if (v263 || v239 == v360)
      {
        goto LABEL_192;
      }

      if (v239 == v354)
      {
        (*v369)(v379, v410);
        v265 = swift_projectBox();
        v244 = v349;
        v245 = v350;
        (*v347)(v349, v265, v350);
        v241 = sub_22C90908C();
        v242 = v266;
        v247 = &v379;
        goto LABEL_195;
      }

      if (v239 != v345)
      {
LABEL_192:
        v187(v379, v410);
        v241 = 0;
        v242 = 0xE000000000000000;
      }

      else
      {
        (*v369)(v379, v410);
        v271 = swift_projectBox();
        v244 = v340;
        v245 = v341;
        (*v339)(v340, v271, v341);
        v241 = sub_22C90932C();
        v242 = v272;
        v247 = &v371;
LABEL_195:
        (**(v247 - 32))(v244, v245);
      }

      v248 = v380;
      sub_22C90207C();
      v249 = v238(v248, v410);
      if (v249 == v385 || v249 == v384)
      {
        goto LABEL_201;
      }

      if (v249 == v373)
      {
        (*v369)(v380, v410);
        v253 = swift_projectBox();
        v254 = v366;
        v255 = v367;
        (*v362)(v366, v253, v367);
        v251 = sub_22C90908C();
        v252 = v256;
        v257 = &v395;
        goto LABEL_204;
      }

      v267 = v249 == v364 || v249 == v363;
      if (v267 || v249 == v360)
      {
        goto LABEL_201;
      }

      if (v249 == v354)
      {
        (*v369)(v380, v410);
        v269 = swift_projectBox();
        v254 = v349;
        v255 = v350;
        (*v347)(v349, v269, v350);
        v251 = sub_22C90908C();
        v252 = v270;
        v257 = &v379;
        goto LABEL_204;
      }

      if (v249 != v345)
      {
LABEL_201:
        v187(v380, v410);
        v251 = 0;
        v252 = 0xE000000000000000;
      }

      else
      {
        (*v369)(v380, v410);
        v273 = swift_projectBox();
        v254 = v340;
        v255 = v341;
        (*v339)(v340, v273, v341);
        v251 = sub_22C90932C();
        v252 = v274;
        v257 = &v371;
LABEL_204:
        (**(v257 - 32))(v254, v255);
      }

      if (v241 == v251 && v242 == v252)
      {

        v275 = *v388;
        v64 = v390;
        (*v388)(v409, v390);
        v275(v407, v64);
        v58 = v389;
LABEL_237:
        v149 = (v372 + 1);
        if ((v372 + 1) == v344)
        {
          v149 = v344;
          v163 = v382;
          goto LABEL_239;
        }

        continue;
      }

      v236 = sub_22C90B4FC();

      v58 = v389;
    }

    break;
  }

  v259 = *v388;
  v64 = v390;
  (*v388)(v409, v390);
  v259(v407, v64);
  if ((v236 & 1) == 0)
  {
    goto LABEL_237;
  }

LABEL_211:
  if (v397)
  {
    v260 = *v383;
    v261 = v376;
    (*v383)(v376, v395, v64);
    v262 = v394;
    swift_arrayInitWithTakeFrontToBack();
    v260(v262, v261, v64);
    v176 = v396;
    if (v396 == v382)
    {
      goto LABEL_237;
    }

    goto LABEL_136;
  }

  __break(1u);
LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:
  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  __break(1u);
}

uint64_t sub_22C8E5188(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v181 = a3;
  v200 = sub_22C9093BC();
  v7 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v199 = v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90952C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v175 = v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v170 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v187 = v170 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v182 = v170 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v179 = v170 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v185 = v170 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v190 = v170 - v25;
  MEMORY[0x28223BE20](v24);
  v189 = v170 - v26;
  v27 = sub_22C90221C();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v170 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v188 = v170 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v201 = v170 - v34;
  result = MEMORY[0x28223BE20](v33);
  v39 = *(v38 + 72);
  if (!v39)
  {
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    return result;
  }

  v40 = a2 - a1 == 0x8000000000000000 && v39 == -1;
  if (v40)
  {
    goto LABEL_137;
  }

  v41 = v181 - a2;
  if (v181 - a2 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_138;
  }

  v191 = v170 - v37;
  v176 = v30;
  v178 = v15;
  v186 = result;
  v43 = (a2 - a1) / v39;
  v204 = a1;
  v203 = a4;
  v184 = (v36 + 16);
  v196 = (v10 + 16);
  v197 = (v7 + 8);
  v195 = (v10 + 88);
  v198 = (v10 + 8);
  v180 = (v10 + 96);
  v183 = (v36 + 8);
  v44 = MEMORY[0x277D72D50];
  v45 = MEMORY[0x277D72D30];
  v46 = a4;
  v47 = v41 / v39;
  if (v43 < v41 / v39)
  {
    sub_22C3D7C8C(a1, (a2 - a1) / v39, v46);
    v178 = v46 + v43 * v39;
    v202 = v178;
    LODWORD(v188) = *v44;
    LODWORD(v187) = *v45;
    LODWORD(v182) = *MEMORY[0x277D72D28];
    LODWORD(v176) = *MEMORY[0x277D72D18];
    v48 = v46;
    v49 = v186;
    v50 = v201;
    v177 = v39;
    while (1)
    {
      if (v48 >= v178 || a2 >= v181)
      {
        goto LABEL_135;
      }

      v193 = a1;
      v52 = *v184;
      (*v184)(v191, a2, v49);
      v192 = v48;
      v52(v50, v48, v49);
      v53 = v199;
      sub_22C90207C();
      v54 = v189;
      sub_22C90935C();
      v55 = *v197;
      (*v197)(v53, v200);
      v56 = *v196;
      v57 = v190;
      (*v196)(v190, v54, v9);
      v58 = *v195;
      v59 = (*v195)(v57, v9);
      v60 = v59 == v188 || v59 == v187;
      v194 = a2;
      if (v60)
      {
        break;
      }

      if (v59 != v182)
      {
        v61 = *v198;
        goto LABEL_29;
      }

      v62 = v190;
      (*v180)(v190, v9);
      v63 = *v62;
      v64 = *(*v62 + 16);
      v65 = v63[3];
      v67 = v63[4];
      v66 = v63[5];
      if (qword_27D9BA7D8 != -1)
      {
        v102 = v63[5];
        swift_once();
        v66 = v102;
      }

      v68 = off_27D9C0CA8;
      if (*(off_27D9C0CA8 + 2) && (v175 = v66, v69 = sub_22C36E2BC(v64, v65), (v70 & 1) != 0))
      {
        v71 = *(v68[7] + 8 * v69);

        v72 = sub_22C5E935C(v67, v175, v71);
      }

      else
      {
        v72 = 0;
      }

      v61 = *v198;
      (*v198)(v189, v9);

      v73 = v185;
LABEL_32:
      v74 = v199;
      sub_22C90207C();
      sub_22C90935C();
      v55(v74, v200);
      v75 = v179;
      v56(v179, v73, v9);
      v76 = v58(v75, v9);
      if (v76 != v188 && v76 != v187 && v76 == v182)
      {
        (*v180)(v75, v9);
        v83 = *(*v75 + 16);
        v82 = *(*v75 + 24);
        v85 = *(*v75 + 32);
        v84 = *(*v75 + 40);
        if (qword_27D9BA7D8 != -1)
        {
          swift_once();
        }

        v86 = off_27D9C0CA8;
        if (*(off_27D9C0CA8 + 2) && (v87 = sub_22C36E2BC(v83, v82), (v88 & 1) != 0))
        {
          v89 = *(v86[7] + 8 * v87);

          v90 = sub_22C5E935C(v85, v84, v89);
        }

        else
        {
          v90 = 0;
        }

        v79 = v193;
        v80 = v177;
        v61(v185, v9);

        a2 = v194;
        if ((v72 ^ v90))
        {
          goto LABEL_53;
        }
      }

      else
      {
        v61(v73, v9);
        v61(v75, v9);
        v79 = v193;
        a2 = v194;
        v80 = v177;
        if (v72)
        {
          v81 = *v183;
          v49 = v186;
          (*v183)(v201, v186);
          (v81)(v191, v49);
          v48 = v192;
LABEL_54:
          if (v79 < a2 || v79 >= a2 + v80)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v80;
            v50 = v201;
          }

          else
          {
            v50 = v201;
            if (v79 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v80;
          }

          goto LABEL_73;
        }
      }

      v91 = v191;
      v92 = sub_22C8794D0();
      v94 = v93;
      v95 = v201;
      if (v92 == sub_22C8794D0() && v94 == v96)
      {

        v100 = *v183;
        v49 = v186;
        (*v183)(v95, v186);
        (v100)(v91, v49);
        v48 = v192;
        goto LABEL_61;
      }

      LOBYTE(v72) = sub_22C90B4FC();

LABEL_53:
      v98 = *v183;
      v49 = v186;
      (*v183)(v201, v186);
      (v98)(v191, v49);
      v48 = v192;
      if (v72)
      {
        goto LABEL_54;
      }

LABEL_61:
      if (v79 < v48 || v79 >= v48 + v80)
      {
        swift_arrayInitWithTakeFrontToBack();
        v50 = v201;
      }

      else
      {
        v50 = v201;
        if (v79 != v48)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v203 = v48 + v80;
      v48 += v80;
LABEL_73:
      a1 = v79 + v80;
      v204 = a1;
    }

    v61 = *v198;
LABEL_29:
    v73 = v185;
    v61(v189, v9);
    v61(v190, v9);
    v72 = 0;
    goto LABEL_32;
  }

  sub_22C3D7C8C(a2, v41 / v39, v46);
  v103 = (v46 + v47 * v39);
  v104 = -v39;
  LODWORD(v191) = *v44;
  v105 = a2;
  LODWORD(v190) = *v45;
  LODWORD(v179) = *MEMORY[0x277D72D28];
  v171 = *MEMORY[0x277D72D18];
  v106 = v103;
  v107 = v46;
  v108 = v186;
  v109 = v181;
  v110 = v176;
  v192 = v46;
  v193 = a1;
  v201 = v104;
LABEL_75:
  v111 = v105 + v104;
  v112 = v109;
  v170[0] = v106;
  v113 = v106;
  v194 = v105;
  v177 = v105 + v104;
  while (1)
  {
    if (v103 <= v107)
    {
      v204 = v194;
      v202 = v113;
      goto LABEL_135;
    }

    if (v194 <= a1)
    {
      break;
    }

    v185 = v112;
    v174 = v113;
    v189 = v103;
    v114 = *v184;
    v181 = &v103[v104];
    (v114)(v188);
    v114(v110, v111, v108);
    v115 = v199;
    sub_22C90207C();
    v116 = v182;
    sub_22C90935C();
    v117 = *v197;
    (*v197)(v115, v200);
    v118 = *v196;
    v119 = v187;
    (*v196)(v187, v116, v9);
    v120 = *v195;
    v121 = (*v195)(v119, v9);
    v122 = v121 == v191 || v121 == v190;
    if (v122 || v121 != v179)
    {
      v134 = *v198;
      (*v198)(v182, v9);
      v134(v187, v9);
      v133 = 0;
    }

    else
    {
      v123 = v187;
      (*v180)(v187, v9);
      v124 = *v123;
      v126 = v124[2];
      v125 = v124[3];
      v127 = v124[4];
      v128 = v124[5];
      if (qword_27D9BA7D8 != -1)
      {
        v173 = v124[5];
        v165 = v127;
        swift_once();
        v128 = v173;
        v127 = v165;
      }

      v129 = off_27D9C0CA8;
      if (*(off_27D9C0CA8 + 2) && (v173 = v128, v172 = v127, v130 = sub_22C36E2BC(v126, v125), (v131 & 1) != 0))
      {
        v132 = *(v129[7] + 8 * v130);

        v133 = sub_22C5E935C(v172, v173, v132);
      }

      else
      {
        v133 = 0;
      }

      v134 = *v198;
      (*v198)(v182, v9);
    }

    v135 = v199;
    sub_22C90207C();
    v136 = v178;
    sub_22C90935C();
    v117(v135, v200);
    v137 = v175;
    v118(v175, v136, v9);
    v138 = v120(v137, v9);
    if (v138 == v191 || v138 == v190 || v138 != v179)
    {
      v134(v136, v9);
      v134(v137, v9);
      a1 = v193;
      v108 = v186;
      v141 = v176;
      if (v133)
      {
        LOBYTE(v133) = 1;
        goto LABEL_116;
      }

LABEL_109:
      v151 = sub_22C8794D0();
      v153 = v152;
      if (v151 == sub_22C8794D0() && v153 == v154)
      {
        LOBYTE(v133) = 0;
      }

      else
      {
        LOBYTE(v133) = sub_22C90B4FC();
      }

      goto LABEL_116;
    }

    (*v180)(v137, v9);
    v143 = *(*v137 + 16);
    v142 = *(*v137 + 24);
    v144 = *(*v137 + 32);
    v145 = *(*v137 + 40);
    v108 = v186;
    if (qword_27D9BA7D8 != -1)
    {
      v163 = *(*v137 + 40);
      v164 = *(*v137 + 32);
      swift_once();
      v145 = v163;
      v144 = v164;
    }

    v146 = off_27D9C0CA8;
    v141 = v176;
    if (*(off_27D9C0CA8 + 2) && (v172 = v145, v173 = v144, v147 = sub_22C36E2BC(v143, v142), (v148 & 1) != 0))
    {
      v149 = *(v146[7] + 8 * v147);

      v150 = sub_22C5E935C(v173, v172, v149);
    }

    else
    {
      v150 = 0;
    }

    a1 = v193;
    v134(v178, v9);

    if (((v133 ^ v150) & 1) == 0)
    {
      goto LABEL_109;
    }

LABEL_116:
    v156 = v141;
    v157 = v185;
    v109 = &v201[v185];
    v158 = *v183;
    v159 = v156;
    (*v183)();
    (v158)(v188, v108);
    v107 = v192;
    if (v133)
    {
      if (v157 < v194 || v109 >= v194)
      {
        v167 = v177;
        swift_arrayInitWithTakeFrontToBack();
        v105 = v167;
        v106 = v174;
        v104 = v201;
        v103 = v189;
        v110 = v159;
      }

      else
      {
        v106 = v174;
        v40 = v157 == v194;
        v168 = v177;
        v105 = v177;
        v104 = v201;
        v103 = v189;
        v110 = v159;
        if (!v40)
        {
          v169 = v174;
          swift_arrayInitWithTakeBackToFront();
          v103 = v189;
          v105 = v168;
          v106 = v169;
        }
      }

      goto LABEL_75;
    }

    if (v157 < v189 || v109 >= v189)
    {
      v161 = v181;
      swift_arrayInitWithTakeFrontToBack();
      v112 = v109;
      v103 = v161;
      v113 = v161;
      v104 = v201;
      v111 = v177;
      v110 = v159;
    }

    else
    {
      v113 = v181;
      v40 = v189 == v157;
      v112 = v109;
      v103 = v181;
      v104 = v201;
      v111 = v177;
      v110 = v159;
      if (!v40)
      {
        v162 = v181;
        swift_arrayInitWithTakeBackToFront();
        v112 = v109;
        v103 = v162;
        v113 = v162;
      }
    }
  }

  v204 = v194;
  v202 = v170[0];
LABEL_135:
  sub_22C838358(&v204, &v203, &v202);
  return 1;
}

uint64_t sub_22C8E62D8(void *a1)
{
  v2 = [a1 value];

  if (v2)
  {
    sub_22C90A11C();
  }

  return sub_22C37170C();
}

uint64_t sub_22C8E6344(void *a1)
{
  v2 = [a1 _imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90051C();

  return v3;
}

uint64_t sub_22C8E63F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8[13];
  *(v9 - 112) = v8[14];
  *(v9 - 104) = v11;
  v12 = v8[9];
  *(v9 - 96) = v8[10];
  *(v9 - 88) = v12;
  *(v9 - 80) = v8[6];
}

uint64_t sub_22C8E64D4()
{

  return sub_22C4E7208(v2, v3, v0, v1);
}

uint64_t sub_22C8E6500(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C902A5C();
}

uint64_t sub_22C8E65E4()
{

  return sub_22C9029CC();
}

uint64_t sub_22C8E6608()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_22C8E666C()
{

  return sub_22C9023BC();
}

uint64_t sub_22C8E6684(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22C90A33C();
    v3 = sub_22C90A4AC();

    return v3;
  }

  return result;
}

void sub_22C8E6744()
{
  sub_22C370030();
  v57 = v2;
  v58 = v3;
  v56 = type metadata accessor for StructuredParameter(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = (v6 - v5);
  v8 = sub_22C90302C();
  sub_22C369824();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v60 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v55 = v0;
  v19 = sub_22C90275C();
  if (v20 >> 60 == 15)
  {
    (*(v10 + 104))(v18, *MEMORY[0x277D55C98], v8);
    v21 = v10;
  }

  else
  {
    v22 = v19;
    v23 = v20;
    sub_22C8FFECC();
    swift_allocObject();
    sub_22C8FFEBC();
    sub_22C8E9F60();
    sub_22C8E9A60(v24, v25, MEMORY[0x277D55CD0]);
    sub_22C8FFEAC();
    sub_22C3C8114(v22, v23);

    if (v1)
    {
      goto LABEL_13;
    }

    v21 = v10;
    (*(v10 + 32))(v18, v16, v8);
  }

  v26 = sub_22C90274C();
  if (!v27)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = sub_22C8E87B8(v26, v27);
  v29 = sub_22C90273C();
  v61 = v30;
  v31 = *(v21 + 16);
  v53 = v18;
  v31(v60, v18, v8);
  v54 = v1;
  v59 = v8;
  v51 = v28;
  v32 = v21;
  if (v28 == 16)
  {
    v52 = 0xEC00000065707974;
    v33 = 0x5F6E776F6E6B6E75;
  }

  else
  {
    sub_22C8E8E2C(v28);
    sub_22C8E8C4C(v28);
    v33 = v34;
    v52 = v35;
    sub_22C8E8BD0(v28);
  }

  v36 = sub_22C90276C();
  v50 = v37;
  v38 = sub_22C90272C();
  v39 = v56;
  v40 = *(v56 + 32);
  v41 = (v7 + *(v56 + 28));
  v55 = v29;
  *v7 = v29;
  v7[1] = v61;
  (*(v32 + 32))(v7 + *(v39 + 20), v60, v59);
  v42 = (v7 + *(v39 + 24));
  v60 = v33;
  v43 = v52;
  *v42 = v33;
  v42[1] = v43;
  v44 = v43;
  v45 = v50;
  *v41 = v36;
  v41[1] = v45;
  *(v7 + v40) = v38;
  sub_22C3A5908(&qword_27D9BAAD8, &unk_22C92D6D0);
  sub_22C902FBC();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_22C90F800;

  sub_22C90301C();
  sub_22C90301C();
  sub_22C902F8C();
  v47 = sub_22C8E6C00(v57);
  sub_22C8E8BD0(v51);
  (*(v32 + 8))(v53, v59);
  if (v47)
  {

    v46 = v47;
  }

  v48 = v58;
  sub_22C8E8BF0(v7);
  *v48 = v55;
  v48[1] = v61;
  v48[2] = v60;
  v48[3] = v44;
  v48[4] = v46;
LABEL_13:
  sub_22C36FB20();
}

uint64_t type metadata accessor for StructuredParameter(uint64_t a1)
{
  result = qword_27D9C14A0;
  if (!qword_27D9C14A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C8E6C00(void *a1)
{
  v46 = a1;
  v2 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43 - v3;
  v47 = sub_22C902FBC();
  v5 = *(v47 - 8);
  v6 = MEMORY[0x28223BE20](v47);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v43 - v9;
  v10 = type metadata accessor for StructuredParameter(0);
  v11 = (v1 + *(v10 + 24));
  v12 = *v11;
  v13 = v11[1];
  if (*v11 == 0x5F6E776F6E6B6E75 && v13 == 0xEC00000065707974)
  {
    return 0;
  }

  v15 = v10;
  if (sub_22C90B4FC())
  {
    return 0;
  }

  sub_22C8E7288(v1 + *(v15 + 20), v52);
  v16 = (v1 + *(v15 + 28));
  v17 = v16[1];
  if (!v17 || ((v18 = *v16, *v16 == 0x676E697274536F74) ? (v19 = v17 == 0xE800000000000000) : (v19 = 0), v19 || (sub_22C90B4FC() & 1) != 0))
  {
    v18 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
  }

  v20 = sub_22C90A43C();
  v21 = v12;
  v22 = v13;
  v44 = v18;
  if (v20)
  {

    v23 = sub_22C8E6684(2, v12, v13);
    v43 = v4;
    v21 = MEMORY[0x2318B76D0](v23);
    v22 = v24;
    v4 = v43;
    v18 = v44;
  }

  v25 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v25 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25 && (sub_22C8E76B0() & 1) == 0)
  {

    if (v21 == 0x432E676F6C616964 && v22 == 0xEF7261646E656C61)
    {
    }

    else
    {
      v42 = sub_22C90B4FC();

      if ((v42 & 1) == 0)
      {
        v44 = 0x676E697274536F74;
        goto LABEL_20;
      }
    }

    v44 = 0xD000000000000013;
    goto LABEL_20;
  }

LABEL_20:
  v26 = v46;
  if (v46)
  {
    v27 = v46;
  }

  else
  {
    sub_22C902F2C();
    v27 = sub_22C902F1C();
  }

  sub_22C902F6C();
  v28 = v26;
  sub_22C902F5C();

  sub_22C8E8E3C(v51, v49);
  if (v50)
  {
    v29 = v47;
    v30 = swift_dynamicCast();
    sub_22C36C640(v4, v30 ^ 1u, 1, v29);
    if (sub_22C370B74(v4, 1, v29) != 1)
    {
      v31 = *(v5 + 32);
      v32 = v45;
      v31(v45, v4, v29);
      sub_22C3A5908(&qword_27D9BAAD8, &unk_22C92D6D0);
      v33 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_22C90F800;
      v31((v34 + v33), v32, v29);
LABEL_46:
      sub_22C36DD28(v51, &qword_27D9BD5D8, &qword_22C918510);
      sub_22C36FF94(v52);
      return v34;
    }
  }

  else
  {
    sub_22C36DD28(v49, &qword_27D9BD5D8, &qword_22C918510);
    v29 = v47;
    sub_22C36C640(v4, 1, 1, v47);
  }

  sub_22C36DD28(v4, &qword_27D9C0AB8, &qword_22C92A190);
  sub_22C8E8E3C(v51, v49);
  if (v50)
  {
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    if (swift_dynamicCast())
    {
      v35 = v48;
      v36 = *(v48 + 16);
      if (!v36)
      {

        sub_22C36DD28(v51, &qword_27D9BD5D8, &qword_22C918510);
        sub_22C36FF94(v52);
        return MEMORY[0x277D84F90];
      }

      v49[0] = MEMORY[0x277D84F90];
      sub_22C3B7F6C(0, v36, 0);
      v34 = v49[0];
      v37 = v35 + 40;
      do
      {

        sub_22C902F7C();
        v49[0] = v34;
        v39 = *(v34 + 16);
        v38 = *(v34 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_22C3B7F6C(v38 > 1, v39 + 1, 1);
          v34 = v49[0];
        }

        *(v34 + 16) = v39 + 1;
        (*(v5 + 32))(v34 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v39, v8, v29);
        v37 += 16;
        --v36;
      }

      while (v36);

      goto LABEL_46;
    }

    sub_22C36DD28(v51, &qword_27D9BD5D8, &qword_22C918510);
    sub_22C36FF94(v52);
  }

  else
  {
    sub_22C36DD28(v51, &qword_27D9BD5D8, &qword_22C918510);
    sub_22C36FF94(v52);
    sub_22C36DD28(v49, &qword_27D9BD5D8, &qword_22C918510);
  }

  return 0;
}

uint64_t sub_22C8E7288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22C90302C();
  sub_22C369824();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v39 - v11);
  v13 = *(v6 + 16);
  v13(&v39 - v11, a1, v4);
  result = (*(v6 + 88))(v12, v4);
  if (result == *MEMORY[0x277D55CB8])
  {
    v15 = sub_22C36C61C();
    result = v16(v15);
    v17 = *v12;
    v18 = v12[1];
    a2[3] = MEMORY[0x277D837D0];
    *a2 = v17;
    a2[1] = v18;
  }

  else if (result == *MEMORY[0x277D55C88])
  {
    v19 = sub_22C36C61C();
    v20(v19);
    v21 = sub_22C902FBC();
    a2[3] = v21;
    v22 = sub_22C36D548(a2);
    return (*(*(v21 - 8) + 32))(v22, v12, v21);
  }

  else if (result == *MEMORY[0x277D55CA8])
  {
    v23 = sub_22C36C61C();
    result = v24(v23);
    v25 = *v12;
    a2[3] = MEMORY[0x277D839F8];
    *a2 = v25;
  }

  else if (result == *MEMORY[0x277D55CB0])
  {
    v26 = sub_22C36C61C();
    v27(v26);
    v28 = sub_22C909EFC();

    result = sub_22C3A5908(&qword_27D9BAB50, &qword_22C90D3F0);
    a2[3] = result;
    *a2 = v28;
  }

  else if (result == *MEMORY[0x277D55CA0])
  {
    (*(v6 + 96))(v12, v4);
    v29 = *v12;
    v30 = *(*v12 + 16);
    if (v30)
    {
      v40 = a2;
      v43 = MEMORY[0x277D84F90];
      sub_22C3B7118(0);
      v31 = v43;
      v32 = *(v6 + 80);
      v39 = v29;
      v33 = v29 + ((v32 + 32) & ~v32);
      v41 = *(v6 + 72);
      do
      {
        v13(v10, v33, v4);
        sub_22C8E7288(v10, v42);
        (*(v6 + 8))(v10, v4);
        v43 = v31;
        v35 = *(v31 + 16);
        v34 = *(v31 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_22C3B7118(v34 > 1);
          v31 = v43;
        }

        *(v31 + 16) = v35 + 1;
        sub_22C456E34(v42, (v31 + 32 * v35 + 32));
        v33 += v41;
        --v30;
      }

      while (v30);

      a2 = v40;
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
    }

    result = sub_22C3A5908(&qword_27D9C1498, qword_22C92D6E0);
    a2[3] = result;
    *a2 = v31;
  }

  else if (result == *MEMORY[0x277D55C90])
  {
    v36 = sub_22C36C61C();
    result = v37(v36);
    v38 = *v12;
    a2[3] = MEMORY[0x277D839B0];
    *a2 = v38;
  }

  else if (result == *MEMORY[0x277D55C98])
  {
    a2[3] = MEMORY[0x277D837D0];
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }

  else
  {
    result = sub_22C90B4EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22C8E76B0()
{
  v1 = (v0 + *(type metadata accessor for StructuredParameter(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  if (*v1 == 0x532E676F6C616964 && v3 == 0xED0000676E697274)
  {
    return 1;
  }

  sub_22C36BA00();
  if (sub_22C90B4FC())
  {
    return 1;
  }

  if (v2 == 0x4E2E676F6C616964 && v3 == 0xED00007265626D75)
  {
    return 1;
  }

  sub_22C36BA00();
  if (sub_22C90B4FC())
  {
    return 1;
  }

  if (v2 == 0x422E676F6C616964 && v3 == 0xEE006E61656C6F6FLL)
  {
    return 1;
  }

  sub_22C36BA00();

  return sub_22C90B4FC();
}

uint64_t sub_22C8E77C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_22C90B4FC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
        if (v8 || (sub_22C90B4FC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x74696E61666F7270 && a2 == 0xEF7265746C694679)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C90B4FC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_22C8E7960(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x74616D726F66;
      break;
    case 4:
      result = 0x74696E61666F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C8E79F0(void *a1)
{
  v3 = sub_22C3A5908(&qword_27D9C14F8, &qword_22C92D878);
  sub_22C369824();
  v5 = v4;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  sub_22C374168(a1, a1[3]);
  v9 = sub_22C8E99A8();
  sub_22C38ACD4(&type metadata for StructuredParameter.CodingKeys, v10, v9);
  v14[15] = 0;
  sub_22C375224();
  sub_22C90B3CC();
  if (!v1)
  {
    type metadata accessor for StructuredParameter(0);
    sub_22C3890C8();
    sub_22C90302C();
    sub_22C8E9F60();
    sub_22C8E9A60(v11, v12, MEMORY[0x277D55CC8]);
    sub_22C90B41C();
    v14[13] = 2;
    sub_22C375224();
    sub_22C90B3CC();
    v14[12] = 3;
    sub_22C375224();
    sub_22C90B37C();
    v14[11] = 4;
    sub_22C90B38C();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_22C8E7BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C370030();
  v64 = v26;
  v28 = v27;
  v59 = v29;
  v30 = sub_22C90302C();
  sub_22C369824();
  v60 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v35 = v34 - v33;
  v63 = sub_22C3A5908(&qword_27D9C14E8, &qword_22C92D870);
  sub_22C369824();
  v61 = v36;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  v39 = v58 - v38;
  v40 = type metadata accessor for StructuredParameter(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  v44 = (v43 - v42);
  sub_22C374168(v28, v28[3]);
  sub_22C8E99A8();
  v62 = v39;
  v45 = v64;
  sub_22C90B6BC();
  if (v45)
  {
    sub_22C36FF94(v28);
  }

  else
  {
    v46 = v60;
    *v44 = sub_22C90B2DC();
    v44[1] = v47;
    v64 = v47;
    sub_22C3890C8();
    sub_22C8E9F60();
    sub_22C8E9A60(v48, v49, MEMORY[0x277D55CD0]);
    sub_22C90B32C();
    v58[1] = v44;
    (*(v46 + 32))(v44 + v40[5], v35, v30);
    v58[0] = 0;
    v50 = sub_22C90B2DC();
    v51 = (v44 + v40[6]);
    *v51 = v50;
    v51[1] = v52;
    v53 = sub_22C90B26C();
    v54 = (v44 + v40[7]);
    *v54 = v53;
    v54[1] = v55;
    v56 = sub_22C90B27C();
    v57 = v40[8];
    (*(v61 + 8))(v62, v63);
    *(v44 + v57) = v56;
    sub_22C8E99FC(v44, v59);
    sub_22C36FF94(v28);
    sub_22C8E8BF0(v44);
  }

  sub_22C36FB20();
}

uint64_t sub_22C8E7FF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676F6C616964 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22C8E80FC(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x676F6C616964;
}

uint64_t sub_22C8E8140(void *a1)
{
  v3 = v1;
  v5 = sub_22C3A5908(&qword_27D9C14D8, &qword_22C92D868);
  sub_22C369824();
  v7 = v6;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  sub_22C374168(a1, a1[3]);
  v11 = sub_22C8E98B8();
  sub_22C38ACD4(&type metadata for FormattedParameter.CodingKeys, v12, v11);
  v16 = 0;
  sub_22C90B3CC();
  if (!v2)
  {
    sub_22C3890C8();
    sub_22C90B3CC();
    v15 = *(v3 + 32);
    v14[15] = 2;
    sub_22C3A5908(&qword_27D9C14C8, &qword_22C92D860);
    sub_22C8E990C(&qword_27D9C14E0, &qword_27D9C0AE0, MEMORY[0x277D55C50], MEMORY[0x277D83948]);
    sub_22C90B41C();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_22C8E830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C370030();
  v26 = v25;
  v28 = v27;
  sub_22C3A5908(&qword_27D9C14B8, &qword_22C92D858);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C374168(v26, v26[3]);
  sub_22C8E98B8();
  sub_22C90B6BC();
  if (v24)
  {
    sub_22C36FF94(v26);
  }

  else
  {
    v30 = sub_22C90B2DC();
    v32 = v31;
    v38 = v30;
    sub_22C3890C8();
    v36 = sub_22C90B2DC();
    v37 = v33;
    sub_22C3A5908(&qword_27D9C14C8, &qword_22C92D860);
    sub_22C8E990C(&qword_27D9C14D0, &qword_27D9C0AD0, MEMORY[0x277D55C60], MEMORY[0x277D83978]);
    sub_22C90B32C();
    v34 = sub_22C370818();
    v35(v34);
    sub_22C36FF94(v26);
    *v28 = v38;
    v28[1] = v32;
    v28[2] = v36;
    v28[3] = v37;
    v28[4] = v39;
  }

  sub_22C36FB20();
}

uint64_t sub_22C8E8594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C8E77C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C8E85BC(uint64_t a1)
{
  v2 = sub_22C8E99A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C8E85F8(uint64_t a1)
{
  v2 = sub_22C8E99A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C8E8664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C8E86B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C8E7FF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C8E86E0(uint64_t a1)
{
  v2 = sub_22C8E98B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C8E871C(uint64_t a1)
{
  v2 = sub_22C8E98B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C8E87B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242306 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C371FE4(1819242306, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C62756F44 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C371FE4(0x656C62756F44, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69727453 && a2 == 0xE600000000000000;
      if (v7 || (sub_22C371FE4(0x676E69727453, 0xE600000000000000) & 1) != 0)
      {

        return 3;
      }

      else
      {
        sub_22C36EE00();
        v9 = a1 == 0xD000000000000010 && v8 == a2;
        if (v9 || (sub_22C371FE4(0xD000000000000010, v8) & 1) != 0)
        {

          return 4;
        }

        else
        {
          v10 = a1 == 0x6D6563616C504C43 && a2 == 0xEB000000006B7261;
          if (v10 || (sub_22C371FE4(0x6D6563616C504C43, 0xEB000000006B7261) & 1) != 0)
          {

            return 5;
          }

          else
          {
            v11 = a1 == 1702125892 && a2 == 0xE400000000000000;
            if (v11 || (sub_22C371FE4(1702125892, 0xE400000000000000) & 1) != 0)
            {

              return 6;
            }

            else
            {
              v12 = sub_22C8E9F78();
              v14 = a1 == v12 && a2 == v13;
              if (v14 || (sub_22C371FE4(v12, v13) & 1) != 0)
              {

                return 7;
              }

              else
              {
                sub_22C36EE00();
                v16 = a1 == 0xD000000000000014 && v15 == a2;
                if (v16 || (sub_22C371FE4(0xD000000000000014, v15) & 1) != 0)
                {

                  return 8;
                }

                else
                {
                  v17 = sub_22C38771C();
                  v19 = a1 == v17 && a2 == v18;
                  if (v19 || (sub_22C371FE4(v17, v18) & 1) != 0)
                  {

                    return 9;
                  }

                  else
                  {
                    sub_22C36EE00();
                    v21 = a1 == 0xD000000000000019 && v20 == a2;
                    if (v21 || (sub_22C371FE4(0xD000000000000019, v20) & 1) != 0)
                    {

                      return 10;
                    }

                    else
                    {
                      sub_22C36EE00();
                      v23 = a1 == 0xD000000000000017 && v22 == a2;
                      if (v23 || (sub_22C371FE4(0xD000000000000017, v22) & 1) != 0)
                      {

                        return 11;
                      }

                      else
                      {
                        sub_22C36EE00();
                        v25 = a1 == 0xD00000000000001ELL && v24 == a2;
                        if (v25 || (sub_22C371FE4(0xD00000000000001ELL, v24) & 1) != 0)
                        {

                          return 12;
                        }

                        else
                        {
                          sub_22C36EE00();
                          v27 = a1 == 0xD000000000000018 && v26 == a2;
                          if (v27 || (sub_22C371FE4(0xD000000000000018, v26) & 1) != 0)
                          {

                            return 13;
                          }

                          else
                          {
                            sub_22C36EE00();
                            v29 = a1 == 0xD00000000000001BLL && v28 == a2;
                            if (v29 || (sub_22C371FE4(0xD00000000000001BLL, v28) & 1) != 0)
                            {

                              return 14;
                            }

                            else
                            {
                              v30 = a1 == 5001813 && a2 == 0xE300000000000000;
                              if (v30 || (sub_22C371FE4(5001813, 0xE300000000000000) & 1) != 0)
                              {

                                return 15;
                              }

                              else
                              {
                                sub_22C3ECFB8();
                                sub_22C3ED00C();
                                if (sub_22C90A02C())
                                {
                                  v35 = swift_allocObject();
                                  v31 = sub_22C8E953C(a1, a2);
                                  v33 = v32;

                                  if (v33)
                                  {
                                    v34 = sub_22C8E9094(v31, v33);
                                  }

                                  else
                                  {
                                    v34 = 16;
                                  }

                                  result = v35;
                                  *(v35 + 16) = v34;
                                }

                                else
                                {

                                  return 16;
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
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C8E8BD0(uint64_t result)
{
  if (result != 16)
  {
    return sub_22C8E8BE0(result);
  }

  return result;
}

unint64_t sub_22C8E8BE0(unint64_t result)
{
  if (result >= 0x10)
  {
  }

  return result;
}

uint64_t sub_22C8E8BF0(uint64_t a1)
{
  v2 = type metadata accessor for StructuredParameter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22C8E8C4C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 8:
    case 13:
    case 14:
    case 15:
      sub_22C36A620();
      break;
    case 6:
    case 7:
      sub_22C36A620();
      sub_22C370B60();
      break;
    case 9:
    case 10:
    case 11:
      sub_22C36B9D4();
      break;
    case 12:
      sub_22C36EE00();
      break;
    default:
      v1 = *(a1 + 16);
      if (v1 != 16)
      {
        sub_22C8E8E2C(*(a1 + 16));
        sub_22C8E8C4C(v1);
        MEMORY[0x2318B7850](23899, 0xE200000000000000);
        sub_22C8E8BD0(v1);
      }

      break;
  }
}

unint64_t sub_22C8E8E2C(unint64_t result)
{
  if (result >= 0x10)
  {
  }

  return result;
}

uint64_t sub_22C8E8E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD5D8, &qword_22C918510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C8E8EAC()
{
  sub_22C370030();
  v2 = v1;
  v3 = sub_22C90277C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = 0;
  v18 = v2;
  v22 = *(v2 + 16);
  v11 = (v5 + 8);
  v12 = MEMORY[0x277D84F90];
  while (v22 != v10)
  {
    (*(v5 + 16))(v9, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v3);
    sub_22C8E6744();
    if (v0)
    {
      (*v11)(v9, v3);

      break;
    }

    (*v11)(v9, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C592454(0, *(v12 + 16) + 1, 1, v12);
      v12 = v16;
    }

    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_22C592454(v13 > 1, v14 + 1, 1, v12);
      v12 = v17;
    }

    *(v12 + 16) = v14 + 1;
    v15 = v12 + 40 * v14;
    *(v15 + 64) = v21;
    *(v15 + 32) = v19;
    *(v15 + 48) = v20;
    ++v10;
  }

  sub_22C36FB20();
}

uint64_t sub_22C8E9094(uint64_t a1, uint64_t a2)
{
  if (a1 == 1819242306 && a2 == 0xE400000000000000)
  {
    return 0;
  }

  if (sub_22C378A00(1819242306, 0xE400000000000000))
  {
    return 0;
  }

  v5 = sub_22C36A620() & 0xFFFFFFFFFFFFLL | 0x422E000000000000;
  v7 = a1 == v5 && a2 == v6;
  if (v7 || (sub_22C378A00(v5, v6) & 1) != 0)
  {
    return 0;
  }

  v9 = a1 == 0x656C62756F44 && a2 == 0xE600000000000000;
  if (v9 || (sub_22C378A00(0x656C62756F44, 0xE600000000000000) & 1) != 0)
  {
    return 1;
  }

  v10 = sub_22C36B9D4() & 0xFFFFFFFFFFFFLL | 0x4E2E000000000000;
  v12 = a1 == v10 && a2 == v11;
  if (v12 || (sub_22C378A00(v10, v11) & 1) != 0)
  {
    return 1;
  }

  v13 = a1 == 7630409 && a2 == 0xE300000000000000;
  if (v13 || (sub_22C378A00(7630409, 0xE300000000000000) & 1) != 0)
  {
    return 2;
  }

  v14 = a1 == 0x676E69727453 && a2 == 0xE600000000000000;
  if (v14 || (sub_22C378A00(0x676E69727453, 0xE600000000000000) & 1) != 0)
  {
    return 3;
  }

  v15 = sub_22C36B9D4() & 0xFFFFFFFFFFFFLL | 0x532E000000000000;
  v17 = a1 == v15 && a2 == v16;
  if (v17 || (sub_22C378A00(v15, v16) & 1) != 0)
  {
    return 3;
  }

  sub_22C36EE00();
  v19 = a1 == 0xD000000000000010 && v18 == a2;
  if (v19 || (sub_22C378A00(0xD000000000000010, v18) & 1) != 0)
  {
    return 4;
  }

  v20 = a1 == 1702125892 && a2 == 0xE400000000000000;
  if (v20 || (sub_22C378A00(1702125892, 0xE400000000000000) & 1) != 0)
  {
    return 6;
  }

  sub_22C370B60();
  v22 = a1 == 0x432E676F6C616964 && a2 == v21;
  if (v22 || (sub_22C378A00(0x432E676F6C616964, v21) & 1) != 0)
  {
    return 6;
  }

  v23 = sub_22C8E9F78();
  v25 = a1 == v23 && a2 == v24;
  if (v25 || (sub_22C378A00(v23, v24) & 1) != 0)
  {
    return 7;
  }

  sub_22C36EE00();
  if (a1 == 0xD000000000000014 && v26 == a2)
  {
    return 8;
  }

  v28 = sub_22C378A00(0xD000000000000014, v26);
  v30 = a1 == 0x432E676F6C616964 && a2 == 0xEF79636E65727275;
  result = 8;
  if ((v28 & 1) == 0 && !v30)
  {
    if (sub_22C378A00(0x432E676F6C616964, 0xEF79636E65727275))
    {
      return 8;
    }

    v31 = sub_22C38771C();
    v33 = a1 == v31 && a2 == v32;
    if (v33 || (sub_22C378A00(v31, v32) & 1) != 0)
    {
      return 9;
    }

    v34 = sub_22C36B9D4() & 0xFFFFFFFFFFFFLL | 0x502E000000000000;
    v36 = a1 == v34 && a2 == v35;
    if (v36 || (sub_22C378A00(v34, v35) & 1) != 0)
    {
      return 9;
    }

    sub_22C36EE00();
    v38 = a1 == 0xD000000000000019 && v37 == a2;
    if (v38 || (sub_22C378A00(0xD000000000000019, v37) & 1) != 0)
    {
      return 10;
    }

    v39 = sub_22C36B9D4() & 0xFFFFFFFFFFFFLL | 0x4C2E000000000000;
    v41 = a1 == v39 && a2 == v40;
    if (v41 || (sub_22C378A00(v39, v40) & 1) != 0)
    {
      return 10;
    }

    sub_22C36EE00();
    v43 = a1 == 0xD000000000000017 && v42 == a2;
    if (v43 || (sub_22C378A00(0xD000000000000017, v42) & 1) != 0)
    {
      return 11;
    }

    v44 = sub_22C36B9D4() & 0xFFFFFFFFFFFFLL | 0x572E000000000000;
    v46 = a1 == v44 && a2 == v45;
    if (v46 || (sub_22C378A00(v44, v45) & 1) != 0)
    {
      return 11;
    }

    sub_22C36EE00();
    v48 = a1 == 0xD00000000000001ELL && v47 == a2;
    if (v48 || (sub_22C378A00(0xD00000000000001ELL, v47) & 1) != 0)
    {
      return 12;
    }

    sub_22C36EE00();
    v50 = a1 == 0xD000000000000012 && v49 == a2;
    if (v50 || (sub_22C378A00(0xD000000000000012, v49) & 1) != 0)
    {
      return 12;
    }

    sub_22C36EE00();
    if (a1 == 0xD000000000000018 && v51 == a2)
    {
      return 13;
    }

    v53 = sub_22C378A00(0xD000000000000018, v51);
    v55 = a1 == 0x532E676F6C616964 && a2 == 0xEC00000064656570;
    result = 13;
    if ((v53 & 1) == 0 && !v55)
    {
      v56 = sub_22C36A620();
      if (sub_22C378A00(v56 & 0xFFFFFFFFFFFFLL | 0x532E000000000000, v57))
      {
        return 13;
      }

      sub_22C36EE00();
      v59 = a1 == 0xD00000000000001BLL && v58 == a2;
      if (v59 || (sub_22C378A00(0xD00000000000001BLL, v58) & 1) != 0)
      {
        return 14;
      }

      v60 = sub_22C36A620() & 0xFFFFFFFFFFFFLL | 0x442E000000000000;
      if (a1 == v60 && a2 == v61)
      {
        return 14;
      }

      else if (sub_22C378A00(v60, v61))
      {
        return 14;
      }

      else
      {
        return 16;
      }
    }
  }

  return result;
}

uint64_t sub_22C8E953C(uint64_t a1, uint64_t a2)
{
  sub_22C3858B4();
  v2 = sub_22C90AD0C();
  v3 = sub_22C3A5968(v2);
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    v7 = *(v2 + 16);

    if (v7 == 2)
    {
      v8 = sub_22C46BDFC(1, v6, v5);
      MEMORY[0x2318B76D0](v8);
    }
  }

  return sub_22C36BA00();
}

BOOL sub_22C8E9610(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
    case 3:
      return a2 == 3;
    case 4:
      return a2 == 4;
    case 5:
      return a2 == 5;
    case 6:
      return a2 == 6;
    case 7:
      return a2 == 7;
    case 8:
      return a2 == 8;
    case 9:
      return a2 == 9;
    case 10:
      return a2 == 10;
    case 11:
      return a2 == 11;
    case 12:
      return a2 == 12;
    case 13:
      return a2 == 13;
    case 14:
      return a2 == 14;
    case 15:
      return a2 == 15;
    default:
      if (a2 < 0x10)
      {
        return 0;
      }

      v3 = *(a1 + 16);
      v4 = *(a2 + 16);
      if (v3 != 16)
      {
        if (v4 == 16)
        {
          return 0;
        }

        sub_22C8E9F50(*(a2 + 16));
        sub_22C8E9F50(v3);
        v5 = sub_22C36BA00();
        v7 = sub_22C8E9610(v5, v6);
        sub_22C8E8BD0(v4);
        sub_22C8E8BD0(v3);
        return v7;
      }

      return v4 == 16;
  }
}

void sub_22C8E97D8(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_22C90302C();
  if (v2 <= 0x3F)
  {
    sub_22C430E9C(319, &qword_28142FA20, v1);
    if (v3 <= 0x3F)
    {
      sub_22C430E9C(319, &qword_27D9C14B0, MEMORY[0x277D839B0]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C8E98A0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22C8E98B8()
{
  result = qword_27D9C14C0;
  if (!qword_27D9C14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C14C0);
  }

  return result;
}

uint64_t sub_22C8E990C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9C14C8, &qword_22C92D860);
    sub_22C8E9A60(a2, MEMORY[0x277D55C48], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C8E99A8()
{
  result = qword_27D9C14F0;
  if (!qword_27D9C14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C14F0);
  }

  return result;
}

uint64_t sub_22C8E99FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StructuredParameter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8E9A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for StructuredParameter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FormattedParameter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C8E9C60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF0 && *(a1 + 8))
  {
    return (*a1 + 2147483632);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 15;
  if (v4 >= 0x11)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C8E9CB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFEF)
  {
    *result = 0;
    *result = a2 - 2147483632;
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 15;
    }
  }

  return result;
}

void *sub_22C8E9D10(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_22C8E9D44()
{
  result = qword_27D9C1508;
  if (!qword_27D9C1508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1508);
  }

  return result;
}

unint64_t sub_22C8E9D9C()
{
  result = qword_27D9C1510;
  if (!qword_27D9C1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1510);
  }

  return result;
}

unint64_t sub_22C8E9DF4()
{
  result = qword_27D9C1518;
  if (!qword_27D9C1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1518);
  }

  return result;
}

unint64_t sub_22C8E9E4C()
{
  result = qword_27D9C1520;
  if (!qword_27D9C1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1520);
  }

  return result;
}

unint64_t sub_22C8E9EA4()
{
  result = qword_27D9C1528;
  if (!qword_27D9C1528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1528);
  }

  return result;
}

unint64_t sub_22C8E9EFC()
{
  result = qword_27D9C1530;
  if (!qword_27D9C1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1530);
  }

  return result;
}

unint64_t sub_22C8E9F50(unint64_t result)
{
  if (result != 16)
  {
    return sub_22C8E8E2C(result);
  }

  return result;
}

uint64_t sub_22C8E9F9C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a1;
  v7 = sub_22C3A5908(&qword_27D9BF9F0, &unk_22C92DAD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v33 - v8;
  v10 = sub_22C907C5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C90804C();
  v14 = *(v13 + 16);
  if (v14)
  {
    v33[2] = a3;
    v34 = a2;
    v35 = v4;
    v43 = MEMORY[0x277D84F90];
    sub_22C3B626C(0, v14, 0);
    v15 = v43;
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v18 = *(v16 + 64);
    v33[1] = v13;
    v19 = v13 + ((v18 + 32) & ~v18);
    v38 = *(v16 + 56);
    v39 = v17;
    v37 = (v16 - 8);
    v40 = v16;
    do
    {
      v39(v42, v19, v10);
      sub_22C907C4C();
      v20 = sub_22C9086FC();
      if (sub_22C370B74(v9, 1, v20) == 1)
      {
        sub_22C3770B0(v9, &qword_27D9BF9F0, &unk_22C92DAD0);
        type metadata accessor for DialogValue(0);
        v21 = sub_22C909F0C();
      }

      else
      {
        v22 = sub_22C9086DC();
        (*(*(v20 - 8) + 8))(v9, v20);
        v23 = v41;
        v21 = sub_22C8EB168(v22);
        v41 = v23;
      }

      v24 = v10;
      (*v37)(v42, v10);
      v43 = v15;
      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_22C3B626C(v25 > 1, v26 + 1, 1);
        v15 = v43;
      }

      *(v15 + 16) = v26 + 1;
      *(v15 + 8 * v26 + 32) = v21;
      v19 += v38;
      --v14;
      v10 = v24;
    }

    while (v14);

    a2 = v34;
    v4 = v35;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  sub_22C90805C();
  v27 = v4;
  v28 = v41;
  v29 = sub_22C8EA340(v15);
  if (v28)
  {
  }

  else
  {
    v30 = v29;

    sub_22C8EA41C(v36, a2, v30);
    v27 = v31;
  }

  return v27;
}

uint64_t sub_22C8EA340(uint64_t a1)
{
  v1 = *(a1 + 16);
  for (i = a1 + 32; v1; --v1)
  {
    i += 8;

    sub_22C3CC610();
  }

  MEMORY[0x28223BE20](a1);
  sub_22C79265C();
  v4 = v3;

  return v4;
}

void sub_22C8EA41C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  MEMORY[0x28223BE20](v8 - 8);
  v78 = &v61 - v9;
  v77 = sub_22C9063DC();
  v10 = *(v77 - 8);
  v11 = MEMORY[0x28223BE20](v77);
  v67 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  v69 = type metadata accessor for DialogValue(0);
  v15 = *(v69 - 8);
  v16 = MEMORY[0x28223BE20](v69);
  v68 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v61 - v21;
  v83 = a1;
  v84 = a2;
  v66 = *(a3 + 16);
  if (v66)
  {
    v74 = *(type metadata accessor for ResponseRedactor(0) + 24);
    v23 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v24 = (v10 + 8);
    v25 = *(v15 + 72);

    v26 = 0;
    *&v27 = 136315138;
    v65 = v27;
    v76 = v22;
    v72 = v24;
    v73 = v14;
    v64 = v20;
    v63 = v23;
    v62 = v25;
    while (2)
    {
      sub_22C8EB020(v23 + v25 * v26, v22);
      sub_22C90405C();
      sub_22C8EB020(v22, v20);
      v28 = sub_22C9063CC();
      v29 = sub_22C90AACC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v81 = v31;
        *v30 = v65;
        sub_22C8EB020(v20, v68);
        v32 = sub_22C90A1AC();
        v33 = v20;
        v35 = v34;
        sub_22C891D88(v33);
        v36 = sub_22C36F9F4(v32, v35, &v81);

        *(v30 + 4) = v36;
        v22 = v76;
        _os_log_impl(&dword_22C366000, v28, v29, "redacting %s", v30, 0xCu);
        sub_22C36FF94(v31);
        MEMORY[0x2318B9880](v31, -1, -1);
        MEMORY[0x2318B9880](v30, -1, -1);

        v37 = *v24;
        (*v24)(v73, v77);
      }

      else
      {

        sub_22C891D88(v20);
        v37 = *v24;
        (*v24)(v14, v77);
      }

      sub_22C880300();
      if (v4)
      {
        sub_22C891D88(v22);
      }

      else
      {
        v39 = v38;
        v75 = 0;
        v70 = v26 + 1;
        v71 = v37;
        v40 = v38 + 40;
        v85 = -*(v38 + 16);
        v41 = -1;
        do
        {
          if (v85 + v41 == -1)
          {

            v51 = v76;
            sub_22C8806A0();
            v81 = 91;
            v82 = 0xE100000000000000;
            MEMORY[0x2318B7850]();

            MEMORY[0x2318B7850](93, 0xE100000000000000);

            v52 = v81;
            v53 = v82;
            v54 = v67;
            sub_22C90405C();

            v55 = sub_22C9063CC();
            v56 = sub_22C90AADC();

            v57 = os_log_type_enabled(v55, v56);
            v58 = v71;
            if (v57)
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v81 = v60;
              *v59 = v65;
              *(v59 + 4) = sub_22C36F9F4(v52, v53, &v81);
              _os_log_impl(&dword_22C366000, v55, v56, "failed to redact %s", v59, 0xCu);
              sub_22C36FF94(v60);
              MEMORY[0x2318B9880](v60, -1, -1);
              MEMORY[0x2318B9880](v59, -1, -1);
            }

            v58(v54, v77);
            sub_22C8EAB84(v52, v53);

            sub_22C891D88(v51);
            return;
          }

          if (++v41 >= *(v39 + 16))
          {
            __break(1u);
            return;
          }

          v42 = v40 + 16;
          v45 = v40 - 8;
          v43 = *(v40 - 8);
          v44 = *(v45 + 8);
          v81 = v83;
          v82 = v84;
          v79 = v43;
          v80 = v44;
          v46 = sub_22C90077C();
          v47 = v78;
          sub_22C36C640(v78, 1, 1, v46);
          sub_22C3858B4();

          sub_22C90AD6C();
          v49 = v48;
          sub_22C3770B0(v47, &qword_27D9BD820, &unk_22C9195C0);

          v40 = v42;
        }

        while ((v49 & 1) != 0);

        v50 = v76;
        sub_22C8806A0();
        v81 = 91;
        v82 = 0xE100000000000000;
        MEMORY[0x2318B7850]();

        MEMORY[0x2318B7850](93, 0xE100000000000000);

        sub_22C471DC4();
        v22 = v50;
        sub_22C90A21C();

        sub_22C891D88(v50);
        v26 = v70;
        v4 = v75;
        v24 = v72;
        v14 = v73;
        v20 = v64;
        v23 = v63;
        v25 = v62;
        if (v70 != v66)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
  }
}

unint64_t sub_22C8EAB84(uint64_t a1, uint64_t a2)
{
  sub_22C90AF5C();

  MEMORY[0x2318B7850](a1, a2);
  MEMORY[0x2318B7850](62, 0xE100000000000000);
  return 0xD000000000000013;
}

void sub_22C8EAC14(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v40 = a3;
  v44 = a2;
  v7 = sub_22C9063DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  type metadata accessor for ResponseRedactor(0);
  v14 = a1;
  sub_22C880300();
  if (!v4)
  {
    v16 = v15;
    v35 = v10;
    v36 = v8;
    v37 = v7;
    v38 = 0;
    v39 = a4;
    v17 = 0;
    v18 = *(v15 + 16);
    for (i = (v15 + 40); ; i += 2)
    {
      if (v18 == v17)
      {

        v25 = v39;
        sub_22C8EB020(v14, v39);
        v26 = 0;
LABEL_12:
        v34 = type metadata accessor for DialogValue(0);
        sub_22C36C640(v25, v26, 1, v34);
        return;
      }

      if (v17 >= *(v16 + 16))
      {
        break;
      }

      v20 = *(i - 1);
      v21 = *i;
      v43[0] = v44;
      v43[1] = v40;
      v41 = v20;
      v42 = v21;
      v22 = sub_22C90077C();
      sub_22C36C640(v13, 1, 1, v22);
      sub_22C3858B4();

      sub_22C90AD6C();
      v24 = v23;
      sub_22C3770B0(v13, &qword_27D9BD820, &unk_22C9195C0);
      if ((v24 & 1) == 0)
      {

        v27 = v35;
        sub_22C90405C();

        v28 = v40;

        v29 = sub_22C9063CC();
        v30 = sub_22C90AACC();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v43[0] = v32;
          *v31 = 136315394;
          v33 = sub_22C36F9F4(v20, v21, v43);

          *(v31 + 4) = v33;
          *(v31 + 12) = 2080;
          *(v31 + 14) = sub_22C36F9F4(v44, v28, v43);
          _os_log_impl(&dword_22C366000, v29, v30, "Filtering safe parameter %s found in utterance %s", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318B9880](v32, -1, -1);
          MEMORY[0x2318B9880](v31, -1, -1);
        }

        else
        {
        }

        (*(v36 + 8))(v27, v37);
        v26 = 1;
        v25 = v39;
        goto LABEL_12;
      }

      ++v17;
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for ResponseRedactor(uint64_t a1)
{
  result = qword_27D9C1538;
  if (!qword_27D9C1538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C8EB020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C8EB0CC(uint64_t a1)
{
  result = sub_22C56DE2C();
  if (v2 <= 0x3F)
  {
    result = sub_22C9007EC();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TypedValueFormatter(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C8EB168(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C3A5908(&qword_27D9BB608, &qword_22C92DB40);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - v6;
  v74 = type metadata accessor for DialogValue(0);
  sub_22C369824();
  v67 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v69 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v68 = v12;
  v76 = sub_22C3A5908(&qword_27D9BF450, &qword_22C922710);
  sub_22C36985C();
  MEMORY[0x28223BE20](v13);
  sub_22C3698E4();
  v70 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  v79 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA64();
  v75 = v18;
  v71 = MEMORY[0x277D84F98];
  v80 = MEMORY[0x277D84F98];
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;
  v77 = a1;

  v25 = 0;
  while (1)
  {
    v26 = v25;
    if (!v22)
    {
      while (1)
      {
        v25 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v25 >= v23)
        {

          return v71;
        }

        v22 = *(v19 + 8 * v25);
        ++v26;
        if (v22)
        {
          v27 = v7;
          v78 = v2;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v27 = v7;
    v78 = v2;
LABEL_11:
    v28 = __clz(__rbit64(v22)) | (v25 << 6);
    v29 = *(v77 + 56);
    v30 = (*(v77 + 48) + 16 * v28);
    v32 = *v30;
    v31 = v30[1];
    sub_22C9086BC();
    sub_22C369824();
    v34 = v29 + *(v33 + 72) * v28;
    v36 = v75;
    v35 = v76;
    v37 = *(v76 + 48);
    v72 = v39;
    v73 = v38;
    (*(v39 + 16))(v75 + v37, v34);
    *v36 = v32;
    v36[1] = v31;
    v40 = v79;
    sub_22C4E7208(v36, v79, &qword_27D9BF450, &qword_22C922710);
    v41 = *(v35 + 48);

    v42 = v40 + v41;
    v7 = v27;
    v43 = v78;
    sub_22C8F0584(v42, v27);
    v2 = v43;
    if (v43)
    {
      break;
    }

    v22 &= v22 - 1;
    v44 = sub_22C36EEF8();
    sub_22C36D0A8(v44, v45, v74);
    if (v46)
    {
      sub_22C36DD28(v79, &qword_27D9BF450, &qword_22C922710);
      result = sub_22C36DD28(v27, &qword_27D9BB608, &qword_22C92DB40);
    }

    else
    {
      v47 = v68;
      sub_22C8F117C(v27, v68);
      sub_22C4E7208(v79, v70, &qword_27D9BF450, &qword_22C922710);
      sub_22C8F117C(v47, v69);
      v48 = v71[2];
      if (v71[3] <= v48)
      {
        sub_22C88BEC4(v48 + 1, 1);
      }

      v49 = v80;
      v51 = *v70;
      v50 = v70[1];
      sub_22C90B62C();
      v78 = v50;
      sub_22C909FFC();
      result = sub_22C90B66C();
      v52 = v49 + 64;
      v71 = v49;
      v53 = -1 << *(v49 + 32);
      v54 = result & ~v53;
      v55 = v54 >> 6;
      if (((-1 << v54) & ~*(v49 + 64 + 8 * (v54 >> 6))) == 0)
      {
        v57 = 0;
        v58 = (63 - v53) >> 6;
        while (++v55 != v58 || (v57 & 1) == 0)
        {
          v59 = v55 == v58;
          if (v55 == v58)
          {
            v55 = 0;
          }

          v57 |= v59;
          v60 = *(v52 + 8 * v55);
          if (v60 != -1)
          {
            v56 = __clz(__rbit64(~v60)) + (v55 << 6);
            goto LABEL_26;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v56 = __clz(__rbit64((-1 << v54) & ~*(v49 + 64 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      v61 = *(v76 + 48);
      *(v52 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      v62 = v71;
      v63 = (v71[6] + 16 * v56);
      v64 = v78;
      *v63 = v51;
      v63[1] = v64;
      sub_22C8F117C(v69, v62[7] + *(v67 + 72) * v56);
      ++v62[2];
      result = (*(v72 + 8))(v70 + v61, v73);
    }
  }

  sub_22C36DD28(v79, &qword_27D9BF450, &qword_22C922710);
  v65 = v71;

  return v65;
}

uint64_t sub_22C8EB68C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9C0E28, &qword_22C92B4C0);
    v3 = sub_22C90B1EC();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_22C8F1250(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_22C8EB724(uint64_t a1)
{
  v75 = sub_22C907DEC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v74 = v5;
  sub_22C36BA0C();
  v73 = sub_22C906ECC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v72 = v9;
  v10 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  v14 = sub_22C907C5C();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  v77 = *(v21 - 8);
  MEMORY[0x28223BE20](v21 - 8);
  sub_22C369ABC();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  v76 = v26;
  v27 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v65 = v24;
    v66 = v14;
    v79 = MEMORY[0x277D84F90];
    sub_22C3B7F2C(0, v27, 0);
    v29 = v7;
    v30 = v66;
    v31 = v79;
    v33 = *(v16 + 16);
    v32 = v16 + 16;
    v34 = a1 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v70 = (v29 + 8);
    v71 = v33;
    v68 = v32 - 8;
    v69 = (v3 + 8);
    v67 = *(v32 + 56);
    do
    {
      v35 = v32;
      v71(v20, v34, v30);
      v36 = v72;
      sub_22C907C0C();
      v37 = v74;
      sub_22C906EBC();
      (*v70)(v36, v73);
      sub_22C907DDC();
      (*v69)(v37, v75);
      v38 = sub_22C9026AC();
      if (sub_22C370B74(v13, 1, v38) == 1)
      {
        v39 = sub_22C3760C0();
        v40(v39);
        sub_22C36DD28(v13, &qword_27D9BF328, &qword_22C9225C0);
        v41 = sub_22C90234C();
        sub_22C36C640(v76, 1, 1, v41);
      }

      else
      {
        sub_22C90268C();
        v42 = sub_22C3760C0();
        v43(v42);
        sub_22C36BBA8();
        (*(v44 + 8))(v13, v38);
      }

      v79 = v31;
      v46 = *(v31 + 16);
      v45 = *(v31 + 24);
      if (v46 >= v45 >> 1)
      {
        v50 = sub_22C8F1C84(v45);
        sub_22C3B7F2C(v50, v51, v52);
        v30 = v66;
        v31 = v79;
      }

      *(v31 + 16) = v46 + 1;
      sub_22C37054C();
      sub_22C4E7208(v49, v31 + v47 + *(v48 + 72) * v46, &qword_27D9BAB60, &unk_22C90D400);
      v34 += v67;
      --v27;
      v32 = v35;
    }

    while (v27);
    v24 = v65;
    v28 = MEMORY[0x277D84F90];
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v53 = *(v31 + 16);
  if (v53)
  {
    v79 = v28;
    sub_22C3B7F0C(0, v53, 0);
    v54 = 0;
    v55 = v79;
    v76 = v31 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v56 = &qword_27D9BAB60;
    while (v54 < *(v31 + 16))
    {
      sub_22C4E719C(v76 + *(v77 + 72) * v54, v24, v56, &unk_22C90D400);
      sub_22C8F0DBC(v24, &v78);
      v57 = v56;
      sub_22C36DD28(v24, v56, &unk_22C90D400);
      v58 = v78;
      v79 = v55;
      v60 = *(v55 + 16);
      v59 = *(v55 + 24);
      if (v60 >= v59 >> 1)
      {
        v61 = sub_22C8F1C84(v59);
        sub_22C3B7F0C(v61, v62, v63);
        v55 = v79;
      }

      ++v54;
      *(v55 + 16) = v60 + 1;
      *(v55 + 8 * v60 + 32) = v58;
      v56 = v57;
      if (v53 == v54)
      {

        return v55;
      }
    }

    __break(1u);
    sub_22C36DD28(v24, &qword_27D9BAB60, &unk_22C90D400);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22C8EBCC4()
{
  v0 = sub_22C3A5908(&qword_27D9BF9F0, &unk_22C92DAD0);
  sub_22C369914(v0);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - v2;
  sub_22C907C4C();
  v4 = sub_22C9086FC();
  v5 = sub_22C36E638();
  sub_22C36D0A8(v5, v6, v4);
  if (v7)
  {
    sub_22C36DD28(v3, &qword_27D9BF9F0, &unk_22C92DAD0);
    type metadata accessor for DialogValue(0);
    return sub_22C909F0C();
  }

  else
  {
    v8 = sub_22C9086DC();
    sub_22C36BBA8();
    v9 = sub_22C36FBFC();
    v10(v9);
    v11 = sub_22C8EB168(v8);
  }

  return v11;
}

uint64_t sub_22C8EBE00()
{
  v1 = sub_22C901FBC();
  v2 = sub_22C36A7A4(v1, &v680);
  v661 = v3;
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  sub_22C3698F8(v4);
  v5 = sub_22C901FDC();
  v6 = sub_22C36A7A4(v5, v678);
  v656 = v7;
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  sub_22C3698F8(v8);
  v9 = sub_22C90201C();
  v10 = sub_22C36A7A4(v9, v684);
  v668 = v11;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  sub_22C3698F8(v12);
  v13 = sub_22C9026DC();
  v14 = sub_22C36A7A4(v13, &v693);
  v673 = v15;
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  sub_22C3698F8(v16);
  v17 = sub_22C902BBC();
  v18 = sub_22C36A7A4(v17, &v695);
  v675 = v19;
  MEMORY[0x28223BE20](v18);
  sub_22C3698A8();
  sub_22C3698F8(v20);
  v21 = sub_22C90289C();
  v22 = sub_22C36A7A4(v21, &v699);
  v677 = v23;
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  sub_22C3698F8(v24);
  v744 = sub_22C90977C();
  sub_22C369824();
  v690 = v25;
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  sub_22C36D234(v27);
  v28 = sub_22C3A5908(&qword_27D9BC908, &qword_22C915090);
  v29 = sub_22C369914(v28);
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA64();
  v738 = v32;
  sub_22C36BA0C();
  v736 = sub_22C908EAC();
  sub_22C369824();
  v734 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22C3698A8();
  v735 = v35;
  sub_22C36BA0C();
  v36 = sub_22C90281C();
  v37 = sub_22C36A7A4(v36, &v724);
  v698 = v38;
  MEMORY[0x28223BE20](v37);
  sub_22C3698A8();
  sub_22C3698F8(v39);
  v40 = sub_22C9028FC();
  v41 = sub_22C36A7A4(v40, v681);
  v665 = v42;
  MEMORY[0x28223BE20](v41);
  sub_22C3698A8();
  sub_22C3698F8(v43);
  v44 = sub_22C902A4C();
  v45 = sub_22C36A7A4(v44, &v704);
  v679 = v46;
  MEMORY[0x28223BE20](v45);
  sub_22C3698A8();
  sub_22C3698F8(v47);
  v48 = sub_22C9029AC();
  v49 = sub_22C36A7A4(v48, v710);
  v682 = v50;
  MEMORY[0x28223BE20](v49);
  sub_22C3698A8();
  sub_22C3698F8(v51);
  v52 = sub_22C9063DC();
  v53 = sub_22C36A7A4(v52, &v715);
  v692 = v54;
  MEMORY[0x28223BE20](v53);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA64();
  sub_22C36D234(v61);
  v62 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v63 = sub_22C369914(v62);
  MEMORY[0x28223BE20](v63);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v66);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v68);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v69);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v70);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA64();
  sub_22C36D234(v72);
  v73 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  v74 = sub_22C369914(v73);
  MEMORY[0x28223BE20](v74);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v75);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v78);
  sub_22C36BA64();
  sub_22C3698F8(v79);
  v80 = sub_22C90286C();
  v81 = sub_22C36A7A4(v80, v712);
  v686 = v82;
  MEMORY[0x28223BE20](v81);
  sub_22C3698A8();
  sub_22C3698F8(v83);
  v84 = sub_22C90221C();
  v85 = sub_22C36A7A4(v84, &v726);
  v721 = v86;
  MEMORY[0x28223BE20](v85);
  sub_22C3698A8();
  sub_22C3698F8(v87);
  v88 = sub_22C9027EC();
  v89 = sub_22C36A7A4(v88, &v733);
  v704 = v90;
  MEMORY[0x28223BE20](v89);
  sub_22C3698A8();
  sub_22C3698F8(v91);
  v92 = sub_22C90931C();
  v93 = sub_22C36A7A4(v92, &v728);
  v700 = v94;
  MEMORY[0x28223BE20](v93);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v95);
  sub_22C36BA64();
  v97 = sub_22C3698F8(v96);
  v745 = type metadata accessor for DialogValue(v97);
  sub_22C369824();
  v717 = v98;
  MEMORY[0x28223BE20](v99);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v100);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v101);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v102);
  sub_22C36BA64();
  sub_22C36D234(v103);
  v104 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v105 = sub_22C369914(v104);
  MEMORY[0x28223BE20](v105);
  sub_22C3698E4();
  v733 = v106;
  sub_22C369930();
  MEMORY[0x28223BE20](v107);
  sub_22C36BA64();
  sub_22C3698F8(v108);
  v109 = sub_22C90906C();
  v110 = sub_22C36A7A4(v109, &v737);
  v719 = v111;
  MEMORY[0x28223BE20](v110);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v112);
  sub_22C36BA64();
  sub_22C3698F8(v113);
  v743 = sub_22C9093BC();
  sub_22C369824();
  v722 = v114;
  MEMORY[0x28223BE20](v115);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v116);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v117);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v118);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v119);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v120);
  sub_22C36BA64();
  sub_22C3698F8(v121);
  v740 = sub_22C90277C();
  sub_22C369824();
  v695 = v122;
  MEMORY[0x28223BE20](v123);
  sub_22C3698A8();
  v739 = v124;
  sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390);
  sub_22C369824();
  v741 = v126;
  v742 = v125;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v127);
  sub_22C36D234(v654 - v128);
  v129 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v129);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v130);
  sub_22C36D234(v654 - v131);
  v132 = sub_22C3A5908(&qword_27D9C0E00, &unk_22C92B4A0);
  sub_22C369914(v132);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v133);
  sub_22C3698F8(v654 - v134);
  sub_22C9020CC();
  sub_22C369824();
  v727 = v136;
  v728 = v135;
  MEMORY[0x28223BE20](v135);
  sub_22C3698A8();
  v729 = v137;
  sub_22C36BA0C();
  v732 = sub_22C907DEC();
  sub_22C369824();
  v139 = v138;
  MEMORY[0x28223BE20](v140);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v141);
  v143 = v654 - v142;
  v144 = sub_22C906ECC();
  sub_22C369824();
  v146 = v145;
  MEMORY[0x28223BE20](v147);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v148);
  v150 = v654 - v149;
  v151 = sub_22C9026BC();
  sub_22C369824();
  v737 = v152;
  MEMORY[0x28223BE20](v153);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v154);
  sub_22C36BA58();
  sub_22C3698D4();
  v156 = MEMORY[0x28223BE20](v155);
  v158 = v654 - v157;
  MEMORY[0x28223BE20](v156);
  v160 = v654 - v159;
  v726 = v0;
  sub_22C907C0C();
  sub_22C906EBC();
  v161 = *(v146 + 8);
  v711 = v144;
  v710[3] = v146 + 8;
  v710[0] = v161;
  v161(v150, v144);
  sub_22C907DAC();
  v164 = *(v139 + 8);
  v163 = v139 + 8;
  v162 = v164;
  v713 = v163;
  (v164)(v143, v732);
  v165 = v737;
  v166 = v737 + 16;
  v167 = *(v737 + 16);
  v725 = v160;
  v168 = v160;
  v169 = v158;
  (v167)(v158, v168, v151);
  v170 = (*(v165 + 88))(v158, v151);
  v171 = *MEMORY[0x277D1CBF0];
  v730 = v151;
  if (v170 == v171)
  {
    v744 = v162;
    (*(v737 + 96))(v158, v151);
    (*(v727 + 32))(v729, v158, v728);
    sub_22C37205C();
    sub_22C907C1C();
    v172 = sub_22C906A7C();
    sub_22C3788A4(v163);
    if (v351)
    {
      sub_22C36DD28(v163, &qword_27D9C0E00, &unk_22C92B4A0);
      v179 = 0;
    }

    else
    {
      v178 = *(v172 - 8);
      v179 = (*(v178 + 88))(v163, v172) == *MEMORY[0x277D1DD48];
      v180 = *(v178 + 8);
      v166 = v178 + 8;
      v180(v163, v172);
    }

    v181 = v722;
    v182 = v719;
    v183 = v714;
    v184 = v710[2];
    sub_22C37443C();
    sub_22C907C0C();
    sub_22C374490();
    sub_22C906EBC();
    (v710[0])(v167, v711);
    sub_22C907DDC();
    v185 = sub_22C3720DC();
    v744(v185);
    v186 = sub_22C9026AC();
    v187 = sub_22C36EEF8();
    v189 = sub_22C36D0A8(v187, v188, v186);
    if (v351)
    {
      sub_22C36DD28(v183, &qword_27D9BF328, &qword_22C9225C0);
      v190 = v718;
      v191 = v743;
    }

    else
    {
      v229 = MEMORY[0x2318AFB10](v189);
      sub_22C36BBA8();
      (*(v230 + 8))(v183, v186);
      v190 = v718;
      v191 = v743;
      if (v229)
      {
        LODWORD(v738) = v179;
        v231 = *(v229 + 16);
        if (v231)
        {
          v746 = MEMORY[0x277D84F90];
          sub_22C3B7F4C(0, v231, 0);
          v232 = v746;
          v233 = *(v695 + 16);
          v234 = *(v695 + 80);
          v736 = v229;
          v235 = v229 + ((v234 + 32) & ~v234);
          v743 = *(v695 + 72);
          v744 = v233;
          v236 = (v695 + 32);
          do
          {
            v237 = v739;
            v238 = v740;
            (v744)(v739, v235, v740);
            v239 = *(v742 + 48);
            *v184 = sub_22C90273C();
            v184[1] = v240;
            (*v236)(v184 + v239, v237, v238);
            swift_storeEnumTagMultiPayload();
            v746 = v232;
            v242 = *(v232 + 16);
            v241 = *(v232 + 24);
            if (v242 >= v241 >> 1)
            {
              sub_22C3B7F4C((v241 > 1), v242 + 1, 1);
              v232 = v746;
            }

            *(v232 + 16) = v242 + 1;
            sub_22C37054C();
            sub_22C4E7208(v184, v232 + v243 + *(v244 + 72) * v242, &qword_27D9BAAF0, &qword_22C90D390);
            v235 += v743;
            --v231;
          }

          while (v231);
        }

        else
        {

          v232 = MEMORY[0x277D84F90];
        }

        v325 = v731;
        sub_22C8EB68C(v232);
        v731 = v325;
        sub_22C8F09D8();
        sub_22C386130();
        (*(v727 + 8))(v729, v728);
        v326 = sub_22C36FBFC();
        v327(v326);
        return sub_22C36BA00();
      }
    }

    sub_22C90207C();
    v245 = *(v181 + 88);
    if (v245(v190, v191) == *MEMORY[0x277D729E0])
    {
      sub_22C383988();
      (*(v181 + 96))(v190, v191);
      v246 = *v190;
      v247 = swift_projectBox();
      v248 = v702;
      v249 = v709;
      (*(v182 + 16))(v702, v247, v709);
      v250 = *(sub_22C90905C() + 16);

      if (v250 == 1)
      {
        sub_22C90905C();
        sub_22C3759C4();
        sub_22C58B008(v251, v252);
        v253 = v246;

        v254 = sub_22C36EEF8();
        v255 = v743;
        sub_22C36D0A8(v254, v256, v743);
        if (!v351)
        {
          v328 = v688;
          (*(v181 + 32))(v688, v253, v255);
          v329 = v707;
          (*(v181 + 16))(v707, v328, v255);
          swift_storeEnumTagMultiPayload();
          sub_22C8F1CA8(v329);
          swift_isUniquelyReferenced_nonNull_native();
          sub_22C386C30();
          sub_22C37AE30();
          sub_22C8F1D0C();
          sub_22C62F094();
          (*(v181 + 8))(v328, v255);
          (*(v182 + 8))(v248, v709);
LABEL_70:

          v264 = v730;
          goto LABEL_71;
        }

        sub_22C36DD28(v246, &qword_27D9BB908, &qword_22C910960);
        sub_22C383988();
      }

      v257 = sub_22C90905C();
      v258 = v707;
      *v707 = v257;
      swift_storeEnumTagMultiPayload();
      sub_22C8F1CA8(v258);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C386C30();
      sub_22C62F094();
      (*(v182 + 8))(v248, v249);
      goto LABEL_70;
    }

    sub_22C374490();
    sub_22C90207C();
    if (v245(v166, v191) == *MEMORY[0x277D72A58])
    {
      (*(v181 + 96))(v166, v191);
      swift_projectBox();
      sub_22C3759C4();
      v260 = v693;
      v261 = v701;
      (*(v259 + 16))(v693);

      v262 = v694;
      (*(v190 + 32))(v694, v260, v261);
      v263 = (*(v190 + 88))(v262, v261);
      LODWORD(v260) = *MEMORY[0x277D729A0];
      (*(v190 + 8))(v262, v261);
      v190 = v718;
      v264 = v730;
      if (v263 == v260)
      {
        goto LABEL_60;
      }
    }

    else
    {
      (*(v181 + 8))(v166, v191);
      v264 = v730;
    }

    v305 = v707;
    sub_22C90207C();
    swift_storeEnumTagMultiPayload();
    sub_22C8F117C(v305, v708);
    v306 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v746 = v306;
    sub_22C8F1D0C();
    sub_22C37AE30();
    sub_22C62F094();
LABEL_60:
    (*(v181 + 8))(v190, v743);
LABEL_71:
    v330 = v725;
    sub_22C8F09D8();
    sub_22C386130();
    (*(v727 + 8))(v729, v728);
    (*(v737 + 8))(v330, v264);
    return sub_22C36BA00();
  }

  if (v170 == *MEMORY[0x277D1CB98])
  {
    v173 = v737;
    v174 = v725;
    sub_22C8F09D8();
    sub_22C386130();
    sub_22C909F0C();
    v175 = *(v173 + 8);
    v176 = v174;
    v177 = v730;
    v175(v176, v730);
    v175(v158, v177);
    return sub_22C36BA00();
  }

  if (v170 == *MEMORY[0x277D1CBA8])
  {
    v192 = sub_22C372000();
    v193(v192);
    sub_22C3722F4();
    v195 = v194(v703, v158, v705);
    v196 = MEMORY[0x2318AFCB0](v195);
    sub_22C3A5908(&qword_27D9C0E28, &qword_22C92B4C0);
    v197 = sub_22C90B1CC();
    v198 = 0;
    v200 = v196 + 64;
    v199 = *(v196 + 64);
    v740 = v196;
    v201 = 1 << *(v196 + 32);
    v202 = -1;
    if (v201 < 64)
    {
      v202 = ~(-1 << v201);
    }

    v203 = v202 & v199;
    v151 = (v201 + 63) >> 6;
    v739 = v721 + 16;
    v738 = (v722 + 88);
    LODWORD(v736) = *MEMORY[0x277D729E0];
    v735 = v721 + 8;
    v732 = (v722 + 8);
    v729 = (v722 + 96);
    v726 = (v719 + 8);
    v727 = v719 + 16;
    v728 = v197;
    v734 = v197 + 64;
    v204 = v699;
    while (1)
    {
      v169 = v720;
      v205 = v723;
      if (!v203)
      {
        break;
      }

      v206 = __clz(__rbit64(v203));
      v741 = (v203 - 1) & v203;
LABEL_21:
      v167 = v206 | (v198 << 6);
      v209 = *(v740 + 56);
      v210 = (*(v740 + 48) + 16 * v167);
      v211 = v210[1];
      v742 = *v210;
      (*(v721 + 16))(v720, v209 + *(v721 + 72) * v167, v204);
      v744 = v211;

      v212 = v204;
      sub_22C90207C();
      v213 = v743;
      v214 = (*v738)(v205, v743);
      if (v214 == v736)
      {
        (*v729)(v205, v213);
        v733 = *v205;
        v215 = swift_projectBox();
        v216 = v706;
        v217 = v709;
        (*v727)(v706, v215, v709);
        v218 = sub_22C90905C();
        (*v726)(v216, v217);
        v219 = sub_22C36EBF0();
        v220(v219);
        v205 = v716;
        *v716 = v218;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_22C3759C4();
        sub_22C90207C();
        v221 = sub_22C36EBF0();
        v222(v221);
        swift_storeEnumTagMultiPayload();
        (*v732)(v723, v213);
      }

      v204 = v212;
      v163 = v715;
      sub_22C8F117C(v205, v715);
      *(v734 + ((v167 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v167;
      v223 = v728;
      v224 = (*(v728 + 48) + 16 * v167);
      v225 = v744;
      *v224 = v742;
      v224[1] = v225;
      sub_22C8F117C(v163, *(v223 + 56) + *(v717 + 72) * v167);
      v226 = *(v223 + 16);
      v227 = __OFADD__(v226, 1);
      v228 = v226 + 1;
      if (v227)
      {
        __break(1u);
        goto LABEL_144;
      }

      *(v223 + 16) = v228;
      v203 = v741;
    }

    v207 = v198;
    v163 = v730;
    while (1)
    {
      v198 = v207 + 1;
      if (__OFADD__(v207, 1))
      {
        break;
      }

      if (v198 >= v151)
      {

        sub_22C8F09D8();
        sub_22C386130();
        (*(v704 + 8))(v703, v705);
        v303 = sub_22C36EBF0();
        v304(v303);
        return sub_22C36BA00();
      }

      v208 = *(v200 + 8 * v198);
      ++v207;
      if (v208)
      {
        v206 = __clz(__rbit64(v208));
        v741 = (v208 - 1) & v208;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_110;
  }

  if (v170 == *MEMORY[0x277D1CBB0])
  {
    v200 = 0x6574656D61726170;
    v265 = sub_22C372000();
    v266(v265);
    sub_22C3722F4();
    v267 = sub_22C36FBFC();
    v268(v267);
    sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
    *(swift_allocObject() + 16) = xmmword_22C90F800;
    sub_22C8F1C3C();
    *v269 = 0x6574656D61726170;
    v269[1] = v270;
    sub_22C8F0480(7368769, 0xE300000000000000, (v269 + v271));
    v728 = sub_22C909F0C();
    v163 = MEMORY[0x2318AFCE0]();
    v272 = 0;
    v273 = *(v163 + 16);
    v741 = v734 + 16;
    v742 = v273;
    v740 = v690 + 8;
    LODWORD(v739) = *MEMORY[0x277D729B8];
    v732 = (v700 + 104);
    v274 = (v722 + 104);
    v275 = (v734 + 8);
    v726 = (v722 + 32);
    v727 = MEMORY[0x277D84F90];
    LODWORD(v729) = *MEMORY[0x277D72A58];
    v276 = v736;
    v277 = v701;
LABEL_44:
    v151 = v735;
    while (v742 != v272)
    {
      if (v272 >= *(v163 + 16))
      {
        __break(1u);
        goto LABEL_127;
      }

      sub_22C37054C();
      v200 = v163;
      (*(v279 + 16))(v151, v163 + v278 + *(v279 + 72) * v272, v276);
      v280 = v738;
      sub_22C908E3C();
      v281 = v280;
      if (sub_22C370B74(v280, 1, v744) == 1)
      {
        sub_22C36DD28(v738, &qword_27D9BC908, &qword_22C915090);
        v282 = v724;
        sub_22C908DDC();
        v281 = v282;
      }

      v283 = sub_22C90971C();
      v285 = v284;
      (*v740)(v281, v744);
      v286 = swift_allocBox();
      *v287 = v283;
      v287[1] = v285;
      v151 = v735;
      (*v732)(v287, v739, v277);
      v288 = v733;
      *v733 = v286;
      v289 = v743;
      (*v274)(v288, v729, v743);
      sub_22C36C640(v288, 0, 1, v289);
      v276 = v736;
      (*v275)(v151, v736);
      v290 = sub_22C36E638();
      sub_22C36D0A8(v290, v291, v289);
      if (!v351)
      {
        v292 = *v726;
        (*v726)(v696, v288, v289);
        v292(v697, v696, v289);
        v293 = v292;
        v294 = v727;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C5903C0();
          v294 = v301;
        }

        v163 = v200;
        v297 = *(v294 + 16);
        v296 = *(v294 + 24);
        v727 = v294;
        if (v297 >= v296 >> 1)
        {
          sub_22C5903C0();
          v727 = v302;
        }

        ++v272;
        *(v727 + 16) = v297 + 1;
        sub_22C37054C();
        v293(v299 + v298 + *(v300 + 72) * v297, v697, v743);
        v276 = v736;
        goto LABEL_44;
      }

      sub_22C36DD28(v288, &qword_27D9BB908, &qword_22C910960);
      ++v272;
      v163 = v200;
    }

    v318 = v727;
    v319 = *(v727 + 16);
    v320 = *(MEMORY[0x2318AFCE0](v317) + 16);

    if (v319 == v320)
    {
      v321 = v707;
      *v707 = v318;
      swift_storeEnumTagMultiPayload();
      sub_22C8F117C(v321, v708);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C386C30();
      sub_22C62F094();
      v322 = sub_22C383570();
      v324 = &v724;
    }

    else
    {

      sub_22C37443C();
      sub_22C90405C();
      v339 = sub_22C9063CC();
      v340 = sub_22C90AADC();
      if (sub_22C369E90(v340))
      {
        v341 = sub_22C36D240();
        sub_22C36D944(v341);
        sub_22C36AD70(&dword_22C366000, v342, v343, "DefaultFallbackDialogGenerator.generateFallback: some disambiguation values cannot be represented");
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      sub_22C8F1C50();
      v344(v275, v691);
      v322 = sub_22C383570();
      v324 = &v724;
    }

    goto LABEL_67;
  }

  v200 = v736;
  if (v170 != *MEMORY[0x277D1CBB8])
  {
    if (v170 == *MEMORY[0x277D1CBD0])
    {
      v331 = sub_22C372000();
      v332(v331);
      sub_22C3759C4();
      v333 = sub_22C37FBE8();
      v334 = v683;
      v335(v333);
      sub_22C37205C();
      sub_22C907C3C();
      sub_22C3788A4(v163);
      if (v351)
      {
        v336 = &qword_27D9BC1E8;
        v337 = &qword_22C9123B0;
        v338 = v163;
      }

      else
      {
        sub_22C908DCC();
        v374 = sub_22C375234();
        v375(v374);
        sub_22C8F1C9C();
        MEMORY[0x28223BE20](v376);
        sub_22C37F6B0();
        v377 = v678[3];
        sub_22C8F1CC4(sub_22C8F1A5C, v378);
        sub_22C8F1CF4();
        sub_22C8F1C60();
        v379 = sub_22C90981C();
        sub_22C36D0A8(v377, 1, v379);
        if (!v380)
        {
          v744 = sub_22C9097EC();
          v445 = v444;
          sub_22C36BBA8();
          (*(v446 + 8))(v377, v379);
          sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
          sub_22C38773C();
          v449 = v448 & ~v447;
          v450 = swift_allocObject();
          *(v450 + 16) = xmmword_22C90F870;
          v451 = (v450 + v449);
          v452 = v151;
          v453 = *(v742 + 48);
          sub_22C370488();
          sub_22C38ACF4();
          *v451 = v455;
          v451[1] = v454;
          v456 = sub_22C90283C();
          sub_22C8F0480(v456, v457, (v451 + v453));

          sub_22C8F1C3C();
          *v458 = 0x6574656D61726170;
          v458[1] = v459;
          sub_22C8F0480(v744, v445, (v458 + v460));

          v461 = sub_22C909F0C();
          sub_22C37443C();
          sub_22C90299C();
          swift_storeEnumTagMultiPayload();
          sub_22C8F1CA8(v451);
          swift_isUniquelyReferenced_nonNull_native();
          v746 = v461;
          sub_22C62F094();
          (*(v158 + 1))(v452, v683);
          goto LABEL_113;
        }

        v336 = &qword_27D9BC0C0;
        v337 = &unk_22C911FA0;
        v338 = v377;
      }

      v381 = sub_22C36DD28(v338, v336, v337);
      sub_22C3868F0(v381);
      v382 = sub_22C9063CC();
      v383 = sub_22C90AADC();
      if (sub_22C369E90(v383))
      {
        v384 = sub_22C36D240();
        sub_22C36D944(v384);
        sub_22C36AD70(&dword_22C366000, v385, v386, "DefaultFallbackDialogGenerator.generateFallback: no parameter name");
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v387 = sub_22C8F1C20();
      v388(v387);
      v389 = sub_22C8F196C();
      v390 = sub_22C36FBE4(&type metadata for ToolResultError, v389);
      sub_22C8F1CDC(v390, v391, v392, v393);
      v394 = sub_22C3858A4();
      v395(v394, v730);
      (*(v158 + 1))(v151, v334);
      return sub_22C36BA00();
    }

    if (v170 == *MEMORY[0x277D1CBD8])
    {
      v367 = sub_22C372000();
      v368(v367);
      sub_22C37443C();
      v369 = sub_22C37FBE8();
      v370 = v680;
      v371(v369);
      sub_22C37205C();
      sub_22C907C3C();
      sub_22C3788A4(v163);
      if (v351)
      {
        v372 = &qword_27D9BC1E8;
        v373 = &qword_22C9123B0;
      }

      else
      {
        sub_22C908DCC();
        v420 = sub_22C375234();
        v421(v420);
        sub_22C8F1C9C();
        MEMORY[0x28223BE20](v422);
        sub_22C37F6B0();
        sub_22C37205C();
        sub_22C8F1CC4(v423, v424);
        sub_22C8F1CF4();
        sub_22C8F1C60();
        v425 = sub_22C90981C();
        v426 = sub_22C36E638();
        sub_22C36D0A8(v426, v427, v425);
        if (!v428)
        {
          v744 = sub_22C9097EC();
          sub_22C36BBA8();
          v474 = sub_22C36FBFC();
          v475(v474);
          sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
          sub_22C38773C();
          v476 = sub_22C8F1D2C();
          *(v476 + 16) = xmmword_22C90FB40;
          v477 = (v476 + v163);
          v478 = v742;
          v479 = *(v742 + 48);
          sub_22C38ACF4();
          *v477 = 0x6574656D61726170;
          v477[1] = v480;
          v481 = sub_22C902A0C();
          sub_22C8F0480(v481, v482, (v477 + v479));

          sub_22C8F1C3C();
          sub_22C386EDC(v483);

          v484 = (v477 + 2 * v200);
          v485 = *(v478 + 48);
          sub_22C379C18();
          *v484 = 0x6574656D61726170;
          v484[1] = v486 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
          *(v484 + v485) = sub_22C902A3C();
          swift_storeEnumTagMultiPayload();
          sub_22C909F0C();
          (*(v679 + 8))(v151, v680);
          goto LABEL_113;
        }

        v372 = &qword_27D9BC0C0;
        v373 = &unk_22C911FA0;
      }

      v429 = sub_22C36DD28(v163, v372, v373);
      sub_22C3868F0(v429);
      v430 = sub_22C9063CC();
      v431 = sub_22C90AADC();
      if (sub_22C369E90(v431))
      {
        v432 = sub_22C36D240();
        sub_22C36D944(v432);
        sub_22C36AD70(&dword_22C366000, v433, v434, "DefaultFallbackDialogGenerator.generateFallback: no parameter name");
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v435 = sub_22C8F1C20();
      v436(v435);
      v437 = sub_22C8F196C();
      v438 = sub_22C36FBE4(&type metadata for ToolResultError, v437);
      sub_22C8F1CDC(v438, v439, v440, v441);
      v442 = sub_22C3858A4();
      v443(v442, v730);
      (*(v167 + 8))(v151, v370);
      return sub_22C36BA00();
    }

    if (v170 == *MEMORY[0x277D1CBC0])
    {
      v414 = sub_22C372000();
      v415(v414);
      sub_22C37443C();
      v416 = sub_22C37FBE8();
      v205 = v678[0];
      v417(v416);
      sub_22C37205C();
      sub_22C907C3C();
      sub_22C3788A4(v163);
      if (!v351)
      {
LABEL_110:
        sub_22C908DCC();
        v466 = sub_22C375234();
        v467(v466);
        sub_22C8F1C9C();
        MEMORY[0x28223BE20](v468);
        sub_22C37F6B0();
        sub_22C37205C();
        sub_22C8F1CC4(v469, v470);
        sub_22C8F1CF4();
        sub_22C8F1C60();
        v471 = sub_22C90981C();
        v472 = sub_22C36E638();
        sub_22C36D0A8(v472, v473, v471);
        if (!v351)
        {
          sub_22C9097EC();
          sub_22C36BBA8();
          (*(v521 + 8))();
          sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
          v522 = *(v741 + 72);
          v523 = *(v741 + 80);
          v731 = v200;
          v524 = (v523 + 32) & ~v523;
          v525 = swift_allocObject();
          *(v525 + 16) = xmmword_22C90FB40;
          v526 = (v525 + v524);
          v527 = v151;
          v528 = v742;
          sub_22C382E80();
          *v526 = v530;
          v526[1] = v529;
          v531 = v530;
          v532 = sub_22C3720DC();
          sub_22C8F0480(v532, v533, v534);

          v535 = (v526 + v522);
          v536 = v167;
          v537 = *(v528 + 48);
          sub_22C38ACF4();
          *v535 = v531;
          v535[1] = v538;
          v539 = sub_22C90283C();
          sub_22C8F0480(v539, v540, (v526 + v522 + v537));

          v541 = (v526 + 2 * v522);
          sub_22C379C18();
          sub_22C370488();
          *v541 = v543;
          v541[1] = v542;
          sub_22C90288C();
          swift_storeEnumTagMultiPayload();
          sub_22C909F0C();
          (*(v536 + 8))(v527, v678[0]);
          goto LABEL_113;
        }

        v418 = &qword_27D9BC0C0;
        v419 = &unk_22C911FA0;
        goto LABEL_121;
      }

      v418 = &qword_27D9BC1E8;
      v419 = &qword_22C9123B0;
LABEL_121:
      v506 = sub_22C36DD28(v163, v418, v419);
      sub_22C3868F0(v506);
      v507 = sub_22C9063CC();
      v508 = sub_22C90AADC();
      if (sub_22C369E90(v508))
      {
        v509 = sub_22C36D240();
        sub_22C36D944(v509);
        sub_22C36AD70(&dword_22C366000, v510, v511, "DefaultFallbackDialogGenerator.generateFallback: no parameter name");
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v512 = sub_22C8F1C20();
      v513(v512);
      v514 = sub_22C8F196C();
      v515 = sub_22C36FBE4(&type metadata for ToolResultError, v514);
      sub_22C8F1CDC(v515, v516, v517, v518);
      v519 = sub_22C3858A4();
      v520(v519, v730);
      (*(v167 + 8))(v151, v205);
      return sub_22C36BA00();
    }

    if (v170 == *MEMORY[0x277D1CBE0])
    {
      v462 = sub_22C372000();
      v463(v462);
      sub_22C37443C();
      v464 = sub_22C37FBE8();
      v205 = v676;
      v465(v464);
      sub_22C37205C();
      sub_22C907C3C();
      sub_22C3788A4(v163);
      if (v351)
      {
        v418 = &qword_27D9BC1E8;
        v419 = &qword_22C9123B0;
      }

      else
      {
        sub_22C908DCC();
        v497 = sub_22C375234();
        v498(v497);
        sub_22C8F1C9C();
        MEMORY[0x28223BE20](v499);
        sub_22C37F6B0();
        sub_22C37205C();
        sub_22C8F1CC4(v500, v501);
        sub_22C8F1CF4();
        sub_22C8F1C60();
        v502 = sub_22C90981C();
        v503 = sub_22C36E638();
        sub_22C36D0A8(v503, v504, v502);
        if (!v505)
        {
LABEL_127:
          v744 = sub_22C9097EC();
          sub_22C36BBA8();
          v560 = sub_22C36FBFC();
          v561(v560);
          sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
          sub_22C38773C();
          v562 = sub_22C8F1D2C();
          *(v562 + 16) = xmmword_22C90FB40;
          v563 = (v562 + v163);
          v564 = *(v742 + 48);
          sub_22C38ACF4();
          *v563 = 0x6574656D61726170;
          v563[1] = v565;
          v566 = sub_22C90283C();
          sub_22C8F0480(v566, v567, (v563 + v564));

          sub_22C8F1C3C();
          sub_22C386EDC(v568);

          v569 = (v563 + 2 * v200);
          sub_22C379C18();
          *v569 = 0x6574656D61726170;
          v569[1] = v570 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          sub_22C902BAC();
          swift_storeEnumTagMultiPayload();
          sub_22C909F0C();
          (*(v675 + 8))(v151, v676);
          goto LABEL_113;
        }

        v418 = &qword_27D9BC0C0;
        v419 = &unk_22C911FA0;
      }

      goto LABEL_121;
    }

    if (v170 == *MEMORY[0x277D1CBA0])
    {
      v489 = sub_22C372000();
      v490(v489);
      sub_22C3722F4();
      v491(v672, v158, v674);
      sub_22C909F0C();
      sub_22C8EFD58();
      if (v492)
      {
        sub_22C3759C4();
        sub_22C8F0480(v493, v494, v495);

        sub_22C381464();
        sub_22C8F117C(v496, v158);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C8F1D20();
        sub_22C62F094();
      }

      else
      {
        sub_22C381464();
        v158 = v707;
      }

      v581 = v671;
      v582 = v670;
      sub_22C37205C();
      sub_22C907C3C();
      sub_22C3788A4(v163);
      if (v351)
      {
        v583 = &qword_27D9BC1E8;
        v584 = &qword_22C9123B0;
        v585 = v163;
      }

      else
      {
        sub_22C908E3C();
        (*(v734 + 8))(v163, v200);
        sub_22C36D0A8(v581, 1, v744);
        if (!v586)
        {
          goto LABEL_141;
        }

        v583 = &qword_27D9BC908;
        v584 = &qword_22C915090;
        v585 = v581;
      }

      sub_22C36DD28(v585, v583, v584);
      sub_22C907C3C();
      sub_22C3788A4(v582);
      if (v351)
      {
        sub_22C36DD28(v582, &qword_27D9BC1E8, &qword_22C9123B0);
LABEL_142:
        v595 = static MobileGestalt.answerProductKey.getter();
        sub_22C8F0480(v595, v596, v158);

        v597 = sub_22C388EF4();
        sub_22C8F117C(v597, v598);
        swift_isUniquelyReferenced_nonNull_native();
        sub_22C8F1D20();
        sub_22C62F094();
        (*(v673 + 8))(v672, v674);
        goto LABEL_113;
      }

      sub_22C374490();
      sub_22C908DDC();
      (*(v734 + 8))(v582, v200);
LABEL_141:
      v587 = sub_22C90971C();
      v589 = v588;
      v590 = sub_22C383570();
      v591(v590, v744);
      sub_22C8F0480(v587, v589, v158);

      v592 = sub_22C388EF4();
      sub_22C8F117C(v592, v593);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C8F1D20();
      sub_22C381980(v594, 0x6D614E707061);
      goto LABEL_142;
    }

    if (v170 == *MEMORY[0x277D1CBC8])
    {
      v544 = sub_22C372000();
      v545(v544);
      v546 = v665;
      v547 = v664;
      v548 = v158;
      v549 = v666;
      (*(v665 + 32))(v664, v548, v666);
      sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
      v550 = *(v741 + 72);
      v551 = (*(v741 + 80) + 32) & ~*(v741 + 80);
      v552 = swift_allocObject();
      *(v552 + 16) = xmmword_22C90F870;
      v553 = (v552 + v551);
      v554 = v742;
      sub_22C382E80();
      *v553 = 0x6574656D61726170;
      v553[1] = v555;
      sub_22C8F0480(0x726577736E41, 0xE600000000000000, (v553 + v556));
      v557 = (v553 + v550);
      v558 = *(v554 + 48);
      sub_22C379C18();
      *v557 = 0x6574656D61726170;
      v557[1] = v559 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
      *(v557 + v558) = sub_22C9028EC();
      swift_storeEnumTagMultiPayload();
      sub_22C909F0C();
      (*(v546 + 8))(v547, v549);
      goto LABEL_113;
    }

    if (v170 != *MEMORY[0x277D1CBE8])
    {
LABEL_144:
      sub_22C37205C();
      sub_22C90405C();
      v599 = v658;
      (v167)(v658, v725, v730);
      v600 = v163;
      v601 = sub_22C9063CC();
      v602 = sub_22C90AADC();
      if (sub_22C369E90(v602))
      {
        v603 = swift_slowAlloc();
        v604 = swift_slowAlloc();
        v605 = v737;
        v745 = v169;
        v606 = v604;
        v746 = v604;
        *v603 = 136315138;
        LODWORD(v744) = v600;
        v607 = v730;
        (v167)(v654[1], v599, v730);
        v608 = sub_22C90A1AC();
        v609 = v599;
        v610 = v608;
        v612 = v611;
        v613 = *(v605 + 8);
        v613(v609, v607);
        v614 = sub_22C36F9F4(v610, v612, &v746);

        *(v603 + 4) = v614;
        _os_log_impl(&dword_22C366000, v601, v744, "ToolResult.getOutputKeyValues: no fallback for unknown outcome %s", v603, 0xCu);
        sub_22C36FF94(v606);
        v169 = v745;
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        sub_22C369B50();
        MEMORY[0x2318B9880]();

        sub_22C8F1C50();
        v616 = v663;
      }

      else
      {

        v613 = *(v737 + 8);
        v613(v599, v730);
        sub_22C8F1C50();
        v616 = v163;
      }

      v615(v616, v691);
      v617 = sub_22C8F196C();
      v618 = sub_22C36FBE4(&type metadata for ToolResultError, v617);
      sub_22C8F1CDC(v618, v619, v620, v621);
      v622 = v730;
      v613(v725, v730);
      v613(v169, v622);
      return sub_22C36BA00();
    }

    v571 = sub_22C372000();
    v572(v571);
    sub_22C3722F4();
    v573(v667, v158, v669);
    v574 = sub_22C909F0C();
    sub_22C8F02F8();
    if (v575)
    {
      sub_22C3759C4();
      sub_22C8F0480(v576, v577, v578);

      sub_22C381464();
      sub_22C8F117C(v579, v158);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C8F1D20();
      sub_22C381980(v580, 0x72756C696166);
      v728 = v746;
    }

    else
    {
      v728 = v574;
      sub_22C381464();
      v158 = v707;
    }

    v623 = v662;
    v624 = v661;
    v625 = v659;
    v626 = v660;
    sub_22C90200C();
    v627 = sub_22C3720DC();
    if (v628(v627) == *MEMORY[0x277D1C3F0])
    {
      v629 = sub_22C3720DC();
      v630(v629);
      sub_22C374490();
      v632 = v655;
      v623 = v657;
      (*(v631 + 32))(v655);
      v745 = "<REDACTION FAILED: ";
      v633 = sub_22C901FCC();
      sub_22C8F0480(v633, v634, v158);

      v635 = sub_22C388EF4();
      sub_22C8F117C(v635, v636);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C386C30();
      sub_22C62F094();
      v728 = v746;
      (*(v626 + 8))(v632, v623);
    }

    else
    {
      v632 = v624 + 8;
      v637 = sub_22C3720DC();
      v638(v637);
    }

    sub_22C907C3C();
    sub_22C3788A4(v625);
    if (v351)
    {
      v639 = &qword_27D9BC1E8;
      v640 = &qword_22C9123B0;
      v641 = v625;
    }

    else
    {
      sub_22C37205C();
      sub_22C908E3C();
      (*(v734 + 8))(v625, v200);
      v642 = sub_22C36E638();
      sub_22C36D0A8(v642, v643, v744);
      if (!v644)
      {
        v645 = v690;
        goto LABEL_161;
      }

      v639 = &qword_27D9BC908;
      v640 = &qword_22C915090;
      v641 = v623;
    }

    sub_22C36DD28(v641, v639, v640);
    sub_22C37443C();
    sub_22C907C3C();
    sub_22C3788A4(v632);
    if (v351)
    {
      sub_22C36DD28(v632, &qword_27D9BC1E8, &qword_22C9123B0);
      v322 = sub_22C383570();
      v324 = v684;
LABEL_67:
      v323(v322, *(v324 - 32));
LABEL_113:
      v487 = v725;
      sub_22C8F09D8();
      sub_22C386130();
      (*(v737 + 8))(v487, v730);
      return sub_22C36BA00();
    }

    sub_22C908DDC();
    (*(v734 + 8))(v632, v200);
    v645 = v690;
LABEL_161:
    sub_22C90971C();
    sub_22C386130();
    (*(v645 + 8))(v646, v744);
    v647 = sub_22C36BA00();
    sub_22C8F0480(v647, v648, v649);

    v650 = sub_22C388EF4();
    sub_22C8F117C(v650, v651);
    v652 = v728;
    v653 = swift_isUniquelyReferenced_nonNull_native();
    v746 = v652;
    sub_22C381980(v653, 0x6D614E707061);
    v322 = sub_22C383570();
    v324 = v684;
    goto LABEL_67;
  }

  v307 = v730;
  (*(v737 + 96))(v158, v730);
  v308 = v686;
  v309 = v689;
  v310 = sub_22C36FBFC();
  v311 = v687;
  v312(v310);
  v313 = v685;
  sub_22C907C3C();
  sub_22C3788A4(v313);
  if (v351)
  {
    v314 = &qword_27D9BC1E8;
    v315 = &qword_22C9123B0;
    v316 = v313;
  }

  else
  {
    sub_22C908DCC();
    (*(v734 + 8))(v313, v200);
    sub_22C8F1C9C();
    MEMORY[0x28223BE20](v345);
    v654[-2] = v309;
    sub_22C3759C4();
    sub_22C8F1CC4(v346, v347);
    sub_22C8F1CF4();
    sub_22C8F1C60();
    v348 = sub_22C90981C();
    v349 = sub_22C36EEF8();
    sub_22C36D0A8(v349, v350, v348);
    if (!v351)
    {
      v396 = sub_22C9097EC();
      v743 = v397;
      v744 = v396;
      sub_22C36BBA8();
      v398 = sub_22C388EF4();
      v399(v398);
      sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
      sub_22C38773C();
      v402 = v401 & ~v400;
      v403 = swift_allocObject();
      *(v403 + 16) = xmmword_22C90F870;
      v404 = (v403 + v402);
      v405 = v311;
      v406 = *(v742 + 48);
      sub_22C370488();
      sub_22C38ACF4();
      *v404 = v408;
      v404[1] = v407;
      v409 = sub_22C90283C();
      sub_22C8F0480(v409, v410, (v404 + v406));

      sub_22C8F1C3C();
      *v411 = 0x6574656D61726170;
      v411[1] = v412;
      sub_22C8F0480(v744, v743, (v411 + v413));

      sub_22C909F0C();
      (*(v308 + 8))(v309, v405);
      goto LABEL_113;
    }

    v314 = &qword_27D9BC0C0;
    v315 = &unk_22C911FA0;
    v316 = v158;
  }

  v352 = sub_22C36DD28(v316, v314, v315);
  sub_22C3868F0(v352);
  v353 = sub_22C9063CC();
  v354 = sub_22C90AADC();
  if (sub_22C369E90(v354))
  {
    v355 = sub_22C36D240();
    sub_22C36D944(v355);
    sub_22C36AD70(&dword_22C366000, v356, v357, "DefaultFallbackDialogGenerator.generateFallback: no parameter name");
    v309 = v689;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v358 = sub_22C8F1C20();
  v359(v358);
  v360 = sub_22C8F196C();
  v361 = sub_22C36FBE4(&type metadata for ToolResultError, v360);
  sub_22C8F1CDC(v361, v362, v363, v364);
  v365 = sub_22C3858A4();
  v366(v365, v307);
  (*(v308 + 8))(v309, v311);
  return sub_22C36BA00();
}

uint64_t sub_22C8EF95C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  type metadata accessor for DialogValue(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v9);
  v11 = (&v28 - v10);
  sub_22C3A5908(&qword_27D9BAAE8, &qword_22C90D388);
  v12 = (sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22C90F800;
  v15 = (v14 + v13);
  v16 = v12[14];
  *v15 = 0x656D6F6374756FLL;
  v15[1] = 0xE700000000000000;
  sub_22C8F0480(a1, a2, (v14 + v13 + v16));
  v17 = sub_22C909F0C();
  sub_22C90931C();
  v18 = swift_allocBox();
  *v19 = a3;
  sub_22C36BBA8();
  (*(v20 + 104))();
  *v11 = v18;
  v21 = *MEMORY[0x277D72A58];
  sub_22C9093BC();
  sub_22C36985C();
  (*(v22 + 104))(v11, v21);
  swift_storeEnumTagMultiPayload();
  v23 = sub_22C36BC58();
  sub_22C8F117C(v23, v24);
  swift_isUniquelyReferenced_nonNull_native();
  v29 = v17;
  sub_22C62F094();
  v25 = v29;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v25;
  sub_22C8F15BC(a4, sub_22C8F11E0, 0, isUniquelyReferenced_nonNull_native, &v29);
  return v29;
}

uint64_t static MobileGestalt.answerProductKey.getter()
{
  if (qword_27D9BA6D8 != -1)
  {
    swift_once();
  }

  result = 0x656E6F687069;
  switch(byte_27D9E3FC8)
  {
    case 1:
      result = 1684107369;
      break;
    case 2:
      result = 0x646F70656D6F68;
      break;
    case 3:
      result = 0x76745F656C707061;
      break;
    case 4:
      result = 6513005;
      break;
    case 5:
      result = 0x61775F656C707061;
      break;
    case 6:
      result = 0x79616C705F726163;
      break;
    case 7:
      result = 0x5F7974696C616572;
      break;
    case 8:
      result = 0x746375646F7270;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22C8EFD58()
{
  v1 = v0;
  sub_22C9063DC();
  sub_22C369824();
  v66 = v3;
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  v68 = v4;
  sub_22C36BA0C();
  sub_22C9029BC();
  sub_22C369824();
  v70 = v6;
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v69 = v7;
  sub_22C36BA0C();
  sub_22C90217C();
  sub_22C369824();
  v72 = v9;
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C9027BC();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  sub_22C8F1C60();
  v20 = sub_22C9026DC();
  sub_22C369824();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_22C3698E4();
  v63 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA58();
  v64 = v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  v29 = &v63 - v28;
  v31 = (v22 + 16);
  v30 = *(v22 + 16);
  v65 = v1;
  v30(&v63 - v28, v1, v20);
  v32 = sub_22C36BC58();
  v34 = v33(v32);
  if (v34 == *MEMORY[0x277D1CC20])
  {
    v35 = sub_22C36BC58();
    v36(v35);
    (*(v15 + 32))(v19, v29, v13);
    v37 = sub_22C869504();
    (*(v15 + 8))(v19, v13);
  }

  else if (v34 == *MEMORY[0x277D1CC18])
  {
    v38 = sub_22C36BC58();
    v39(v38);
    v40 = v72;
    v41 = v29;
    v42 = v73;
    (*(v72 + 4))(v12, v41, v73);
    v37 = sub_22C869898();
    (*(v40 + 1))(v12, v42);
  }

  else if (v34 == *MEMORY[0x277D1CC10])
  {
    v43 = sub_22C36BC58();
    v44(v43);
    v45 = v69;
    v46 = v70;
    v47 = v29;
    v48 = v71;
    (*(v70 + 32))(v69, v47, v71);
    v37 = sub_22C869B6C();
    (*(v46 + 8))(v45, v48);
  }

  else if (v34 == *MEMORY[0x277D1CC28])
  {
    return 0x726F707075736E75;
  }

  else
  {
    v50 = v68;
    sub_22C90405C();
    v51 = v64;
    v30(v64, v65, v20);
    v52 = sub_22C9063CC();
    v53 = sub_22C90AADC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v72 = v54;
      v73 = swift_slowAlloc();
      v74 = v73;
      *v54 = 136315138;
      v30(v63, v51, v20);
      v55 = sub_22C90A1AC();
      v57 = v56;
      v58 = sub_22C8F1C6C();
      v31(v58);
      v59 = sub_22C36F9F4(v55, v57, &v74);

      v60 = v72;
      *(v72 + 1) = v59;
      _os_log_impl(&dword_22C366000, v52, v53, "Unknown actionRequirement when converting to string %s", v60, 0xCu);
      sub_22C36FF94(v73);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v66 + 8))(v68, v67);
    }

    else
    {

      v61 = sub_22C8F1C6C();
      v31(v61);
      (*(v66 + 8))(v50, v67);
    }

    v62 = sub_22C36BC58();
    v31(v62);
    return 0;
  }

  return v37;
}

unint64_t sub_22C8F02F8()
{
  v0 = sub_22C901FBC();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  sub_22C90200C();
  if ((*(v2 + 88))(v9, v0) == *MEMORY[0x277D1C3F0])
  {
    v10 = 0xD000000000000015;
    (*(v2 + 8))(v9, v0);
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_22C90200C();
    sub_22C90B12C();
    v11 = *(v2 + 8);
    v11(v6, v0);
    v10 = v13[0];
    v11(v9, v0);
  }

  return v10;
}

uint64_t sub_22C8F0480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C90931C();
  v7 = swift_allocBox();
  *v8 = a1;
  v8[1] = a2;
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D729B8], v6);
  *a3 = v7;
  v9 = *MEMORY[0x277D72A58];
  v10 = sub_22C9093BC();
  (*(*(v10 - 8) + 104))(a3, v9, v10);
  type metadata accessor for DialogValue(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_22C8F0584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_22C9086BC();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22C9063DC();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22C9074CC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v30[-v13];
  sub_22C9086AC();
  if ((*(v11 + 88))(v14, v10) == *MEMORY[0x277D1E040])
  {
    (*(v11 + 96))(v14, v10);
    v15 = sub_22C9093BC();
    (*(*(v15 - 8) + 32))(a2, v14, v15);
    v16 = type metadata accessor for DialogValue(0);
    swift_storeEnumTagMultiPayload();
    return sub_22C36C640(a2, 0, 1, v16);
  }

  else
  {
    v34 = a2;
    sub_22C90405C();
    (*(v4 + 16))(v6, a1, v37);
    v18 = sub_22C9063CC();
    v19 = sub_22C90AADC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v9;
      v21 = v4;
      v22 = v20;
      v33 = swift_slowAlloc();
      v38 = v33;
      *v22 = 136642819;
      v31 = v19;
      sub_22C9086AC();
      v23 = sub_22C90A1AC();
      v25 = v24;
      (*(v21 + 8))(v6, v37);
      v26 = sub_22C36F9F4(v23, v25, &v38);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22C366000, v18, v31, "Unsupported parameter value, not including in input key values\n%{sensitive}s", v22, 0xCu);
      v27 = v33;
      sub_22C36FF94(v33);
      MEMORY[0x2318B9880](v27, -1, -1);
      MEMORY[0x2318B9880](v22, -1, -1);

      (*(v35 + 8))(v32, v36);
    }

    else
    {

      (*(v4 + 8))(v6, v37);
      (*(v35 + 8))(v9, v36);
    }

    v28 = v34;
    v29 = type metadata accessor for DialogValue(0);
    sub_22C36C640(v28, 1, 1, v29);
    return (*(v11 + 8))(v14, v10);
  }
}

unint64_t sub_22C8F09D8()
{
  v1 = v0;
  v2 = sub_22C9026BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D1CBF0])
  {
    v7 = 0x73736563637573;
LABEL_8:
    (*(v3 + 8))(v5, v2);
    return v7;
  }

  if (v6 == *MEMORY[0x277D1CB98])
  {
    v7 = 0x5374657070696E73;
    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x277D1CBA8] || v6 == *MEMORY[0x277D1CBB0])
  {
    v7 = 0xD000000000000012;
    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x277D1CBB8])
  {
    v7 = 0xD000000000000013;
    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x277D1CBD0])
  {
    v7 = 0xD000000000000015;
    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x277D1CBD8])
  {
    v7 = 0xD000000000000017;
    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x277D1CBC0])
  {
    v7 = 0xD000000000000013;
    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x277D1CBE0])
  {
    v7 = 0xD00000000000001BLL;
    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x277D1CBA0])
  {
    v7 = 0xD000000000000011;
    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x277D1CBC8])
  {
    v7 = 0xD000000000000013;
    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x277D1CBE8])
  {
    v7 = 0x6572756C696166;
    goto LABEL_8;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C8F0D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_22C9097DC();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    sub_22C36EBF0();
    v9 = sub_22C90B4FC();
  }

  return v9 & 1;
}

uint64_t sub_22C8F0DBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BAB60, &unk_22C90D400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  v7 = sub_22C90234C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C4E719C(a1, v6, &qword_27D9BAB60, &unk_22C90D400);
  if (sub_22C370B74(v6, 1, v7) == 1)
  {
    result = sub_22C36DD28(v6, &qword_27D9BAB60, &unk_22C90D400);
    v12 = MEMORY[0x277D84F98];
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = sub_22C9022FC();
    v14 = MEMORY[0x277D837D0];
    v25 = MEMORY[0x277D837D0];
    *&v24 = v13;
    *(&v24 + 1) = v15;
    sub_22C456E34(&v24, v23);
    v16 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v26 = v16;
    sub_22C62F20C();
    v12 = v26;
    v17 = sub_22C90231C();
    if (v18)
    {
      v25 = v14;
      *&v24 = v17;
      *(&v24 + 1) = v18;
      sub_22C456E34(&v24, v23);
      swift_isUniquelyReferenced_nonNull_native();
      v26 = v12;
      sub_22C62F20C();
      v12 = v26;
    }

    v19 = sub_22C90228C();
    if (v20)
    {
      v25 = v14;
      *&v24 = v19;
      *(&v24 + 1) = v20;
      sub_22C456E34(&v24, v23);
      swift_isUniquelyReferenced_nonNull_native();
      v26 = v12;
      sub_22C62F20C();
      v12 = v26;
    }

    v21 = sub_22C9022AC();
    if (v22)
    {
      v25 = v14;
      *&v24 = v21;
      *(&v24 + 1) = v22;
      sub_22C456E34(&v24, v23);
      swift_isUniquelyReferenced_nonNull_native();
      v26 = v12;
      sub_22C62F20C();
      v12 = v26;
    }

    result = (*(v8 + 8))(v10, v7);
  }

  *a2 = v12;
  return result;
}

uint64_t sub_22C8F10E0(uint64_t a1)
{
  v2 = sub_22C8F1BCC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8F111C(uint64_t a1)
{
  v2 = sub_22C8F1BCC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C8F117C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8F11E0@<X0>(uint64_t *a1@<X8>)
{
  sub_22C3A5908(&qword_27D9C0E30, &qword_22C92B4C8);
  sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390);
  result = sub_22C88FF90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C8F1250(uint64_t a1, char a2, void *a3)
{
  v44 = a3;
  v5 = type metadata accessor for DialogValue(0);
  v42 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v10 = sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390);
  v11 = MEMORY[0x28223BE20](v10);
  v43 = (&v36 - v13);
  v41 = *(a1 + 16);
  if (!v41)
  {
  }

  v14 = 0;
  v15 = *(v11 + 48);
  v39 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v40 = v15;
  v38 = v12;
  while (v14 < *(a1 + 16))
  {
    v16 = v43;
    sub_22C4E719C(v39 + *(v12 + 72) * v14, v43, &qword_27D9BAAF0, &qword_22C90D390);
    v17 = *v16;
    v18 = v16[1];
    v19 = v9;
    sub_22C8F117C(v16 + v40, v9);
    v20 = *v44;
    v22 = sub_22C36E2BC(v17, v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_18;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF3A0, &qword_22C922660);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88BEC4(v25, a2 & 1);
      v27 = sub_22C36E2BC(v17, v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_20;
      }

      v22 = v27;
    }

    v29 = *v44;
    if (v26)
    {
      v9 = v19;
      v30 = v37;
      sub_22C8EB020(v19, v37);
      sub_22C891D88(v19);

      sub_22C8F1908(v30, v29[7] + *(v42 + 72) * v22);
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v31 = (v29[6] + 16 * v22);
      *v31 = v17;
      v31[1] = v18;
      v9 = v19;
      sub_22C8F117C(v19, v29[7] + *(v42 + 72) * v22);
      v32 = v29[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_19;
      }

      v29[2] = v34;
    }

    ++v14;
    a2 = 1;
    v12 = v38;
    if (v41 == v14)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C8F15BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = type metadata accessor for DialogValue(0);
  v47 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v38 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v37 - v12;
  v14 = sub_22C3A5908(&qword_27D9C1548, &unk_22C92DB30);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (v37 - v15);
  sub_22C8920A0();
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  v37[1] = a1;

  v37[0] = a3;

  while (1)
  {
    sub_22C891A14();
    v17 = sub_22C3A5908(&qword_27D9BAAF0, &qword_22C90D390);
    if (sub_22C370B74(v16, 1, v17) == 1)
    {
      sub_22C878D80(v39);
    }

    v18 = *(v17 + 48);
    v20 = *v16;
    v19 = v16[1];
    sub_22C8F117C(v16 + v18, v13);
    v21 = *a5;
    v23 = sub_22C36E2BC(v20, v19);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BF3A0, &qword_22C922660);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88BEC4(v26, a4 & 1);
      v28 = sub_22C36E2BC(v20, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_16;
      }

      v23 = v28;
    }

    v30 = *a5;
    if (v27)
    {
      v31 = v38;
      sub_22C8EB020(v13, v38);
      sub_22C891D88(v13);

      sub_22C8F1908(v31, v30[7] + *(v47 + 72) * v23);
      a4 = 1;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v32 = (v30[6] + 16 * v23);
      *v32 = v20;
      v32[1] = v19;
      sub_22C8F117C(v13, v30[7] + *(v47 + 72) * v23);
      v33 = v30[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_15;
      }

      v30[2] = v35;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C8F1908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C8F196C()
{
  result = qword_27D9C1550;
  if (!qword_27D9C1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1550);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolResultError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C8F1B78()
{
  result = qword_27D9C1558;
  if (!qword_27D9C1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1558);
  }

  return result;
}

unint64_t sub_22C8F1BCC()
{
  result = qword_27D9C1560;
  if (!qword_27D9C1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1560);
  }

  return result;
}

uint64_t sub_22C8F1CA8(uint64_t a1)
{
  v3 = *(v1 - 424);

  return sub_22C8F117C(a1, v3);
}

void sub_22C8F1CC4(uint64_t a1, uint64_t a2)
{

  sub_22C6B0844(a1, a2, v2);
}

uint64_t sub_22C8F1CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 208) = a1;

  return swift_willThrow();
}

uint64_t sub_22C8F1CF4()
{
}

uint64_t sub_22C8F1D2C()
{

  return swift_allocObject();
}

uint64_t sub_22C8F1D4C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(a2, a3);
    v7 = sub_22C90B1EC();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

uint64_t sub_22C8F1DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C902FBC();
  sub_22C369824();
  v92 = v6;
  v93 = v7;
  MEMORY[0x28223BE20](v6);
  v73 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22C3A5908(&qword_27D9C1568, &qword_22C92DC50);
  v9 = MEMORY[0x28223BE20](v84);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v82 = &v73 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v81 = &v73 - v14;
  if (!MEMORY[0x2318AFB10](v13))
  {
    v16 = sub_22C909F0C();
    a3 = sub_22C8F31CC(v16);

    return a3;
  }

  v15 = sub_22C8F2C44(a2, a3);
  if (v3)
  {
    return a3;
  }

  v17 = v15;
  v79 = 0;
  v18 = sub_22C909F0C();
  v78 = *(v17 + 16);
  if (!v78)
  {
LABEL_34:

    a3 = sub_22C8F31CC(v18);

    return a3;
  }

  v19 = 0;
  v77 = v17 + 32;
  v85 = v93 + 8;
  v86 = v93 + 16;
  v80 = v93 + 32;
  v76 = v17;
  v20 = v82;
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v21 = (v77 + 40 * v19);
    v22 = v21[1];
    v94 = *v21;
    v23 = v21[4];
    v24 = *(v23 + 16);
    if (v24 >= 2)
    {
      break;
    }

    v47 = v18;
    if (v24)
    {
      v48 = v93;
      v49 = v23 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v50 = v73;
      v51 = v92;
      (*(v93 + 16))(v73, v49, v92);

      v52 = sub_22C902F9C();
      v54 = v53;
      (*(v48 + 8))(v50, v51);
    }

    else
    {

      v52 = 0;
      v54 = 0;
    }

    sub_22C36A83C();
    v56 = swift_allocObject();
    *(v56 + 16) = v52;
    *(v56 + 24) = v54;
    swift_isUniquelyReferenced_nonNull_native();
    v98 = v47;
    v57 = sub_22C36E2BC(v94, v22);
    if (__OFADD__(v47[2], (v58 & 1) == 0))
    {
      goto LABEL_39;
    }

    v59 = v57;
    v60 = v58;
    sub_22C3A5908(&qword_27D9C1570, qword_22C92DC58);
    if (sub_22C90B15C())
    {
      v61 = sub_22C36E2BC(v94, v22);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_42;
      }

      v59 = v61;
    }

    if (v60)
    {

      v18 = v98;
      sub_22C36B9E8((*(v98 + 56) + 16 * v59));
    }

    else
    {
      v18 = v98;
      *(v98 + 8 * (v59 >> 6) + 64) |= 1 << v59;
      v63 = (v18[6] + 16 * v59);
      *v63 = v94;
      v63[1] = v22;
      sub_22C36B9E8((v18[7] + 16 * v59));
      v64 = v18[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_40;
      }

      v18[2] = v66;
    }

    v17 = v76;
LABEL_33:
    if (++v19 == v78)
    {
      goto LABEL_34;
    }
  }

  v74 = v18;
  v75 = v19;
  v100 = MEMORY[0x277D84F90];

  sub_22C3B6DD0(0, v24, 0);
  v25 = 0;
  v26 = v100;
  v27 = *(v23 + 16);
  v90 = v22;
  v91 = v27;
  v87 = v23 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
  v88 = v24;
  v89 = v23;
  do
  {
    if (v91 == v25)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v25 >= *(v23 + 16))
    {
      goto LABEL_37;
    }

    v28 = v84;
    v29 = *(v84 + 48);
    v96 = v26;
    v31 = v92;
    v30 = v93;
    v32 = v81;
    (*(v93 + 16))(&v81[v29], v87 + *(v93 + 72) * v25, v92);
    *v20 = v25;
    (*(v30 + 32))(&v20[*(v28 + 48)], &v32[v29], v31);
    v98 = v94;
    v99 = v22;

    MEMORY[0x2318B7850](91, 0xE100000000000000);
    v97 = v25;
    v33 = sub_22C90B47C();
    MEMORY[0x2318B7850](v33);

    MEMORY[0x2318B7850](93, 0xE100000000000000);
    v34 = v98;
    v95 = v99;
    v35 = v83;
    sub_22C8F4280(v20, v83);
    v36 = *(v28 + 48);
    v37 = sub_22C902F9C();
    v39 = v38;
    sub_22C8F42F0(v20);
    v40 = *(v30 + 8);
    v26 = v96;
    v40(v35 + v36, v31);
    sub_22C36A83C();
    v41 = swift_allocObject();
    *(v41 + 16) = v37;
    *(v41 + 24) = v39;
    v100 = v26;
    v43 = *(v26 + 16);
    v42 = *(v26 + 24);
    if (v43 >= v42 >> 1)
    {
      v46 = sub_22C373290(v42);
      sub_22C3B6DD0(v46, v43 + 1, 1);
      v26 = v100;
    }

    *(v26 + 16) = v43 + 1;
    v44 = (v26 + 32 * v43);
    v45 = v95;
    v44[4] = v34;
    v44[5] = v45;
    v44[6] = sub_22C8F4358;
    v44[7] = v41;
    ++v25;
    v23 = v89;
    v22 = v90;
  }

  while (v88 != v25);

  if (*(v26 + 16))
  {
    sub_22C3A5908(&qword_27D9C0E40, &qword_22C92B4E0);
    v55 = sub_22C90B1EC();
  }

  else
  {
    v55 = MEMORY[0x277D84F98];
  }

  v17 = v76;
  v98 = v55;

  v68 = v79;
  sub_22C8F3710(v67, 1, &v98);
  if (!v68)
  {

    v69 = v98;
    v70 = v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v70;
    sub_22C8F3A04(v69, sub_22C8F421C, 0, isUniquelyReferenced_nonNull_native, &v98);
    v79 = 0;
    v18 = v98;
    v19 = v75;
    goto LABEL_33;
  }

LABEL_41:
  swift_unexpectedError();
  __break(1u);
LABEL_42:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C8F256C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22C90981C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9086DC();
  v106 = a2;
  sub_22C888F24();
  v13 = v12;
  v14 = v2;

  if (v2)
  {
    return v3;
  }

  v15 = *(a1 + 16);
  v98 = v13;
  if (v15)
  {
    v102 = v11;
    v97 = 0;
    v107 = MEMORY[0x277D84F90];
    sub_22C3B7168(0, v15, 0);
    v16 = v107;
    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v100 = *(v17 + 56);
    v101 = v18;
    v99 = (v17 - 8);
    v103 = v17;
    v104 = v6;
    do
    {
      v20 = v102;
      (v101)(v102, v19, v6);
      v21 = sub_22C9097DC();
      v105 = v22;
      v23 = sub_22C9097EC();
      v25 = v24;
      (*v99)(v20, v6);
      v107 = v16;
      v27 = *(v16 + 16);
      v26 = *(v16 + 24);
      if (v27 >= v26 >> 1)
      {
        v30 = sub_22C373290(v26);
        sub_22C3B7168(v30, v27 + 1, 1);
        v16 = v107;
      }

      *(v16 + 16) = v27 + 1;
      v28 = (v16 + 32 * v27);
      v6 = v104;
      v29 = v105;
      v28[4] = v21;
      v28[5] = v29;
      v28[6] = v23;
      v28[7] = v25;
      v19 += v100;
      --v15;
    }

    while (v15);
    v14 = v97;
    v13 = v98;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v31 = sub_22C8F1D4C(v16, &qword_27D9BC3C0, qword_22C912B08, sub_22C8F3FF0);
  v3 = v14;
  v32 = *(v13 + 16);
  if (v32)
  {
    v95 = v14;
    v107 = MEMORY[0x277D84F90];
    v97 = v31;
    sub_22C3B7168(0, v32, 0);
    v33 = v97;
    v105 = v107;
    result = sub_22C6339F8();
    v37 = result;
    v38 = 0;
    v104 = v13 + 64;
    v96 = v13 + 72;
    v99 = v32;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v37 < 1 << *(v13 + 32))
      {
        v39 = v37 >> 6;
        if ((*(v104 + 8 * (v37 >> 6)) & (1 << v37)) == 0)
        {
          goto LABEL_52;
        }

        if (*(v13 + 36) != v35)
        {
          goto LABEL_53;
        }

        LODWORD(v100) = v36;
        v101 = v38;
        v40 = (*(v13 + 48) + 16 * v37);
        v41 = *v40;
        v42 = v40[1];
        v43 = (*(v13 + 56) + 16 * v37);
        v44 = v43[1];
        v102 = *v43;
        v103 = v35;
        v45 = *(v33 + 16);

        if (v45)
        {

          v46 = sub_22C36E2BC(v41, v42);
          v48 = v47;

          if (v48)
          {
            v49 = (*(v33 + 56) + 16 * v46);
            v41 = *v49;
            v50 = v49[1];

            v42 = v50;
          }
        }

        else
        {
        }

        v51 = v105;
        v52 = v103;
        v107 = v105;
        v54 = v105[2];
        v53 = v105[3];
        if (v54 >= v53 >> 1)
        {
          v66 = sub_22C373290(v53);
          result = sub_22C3B7168(v66, v54 + 1, 1);
          v52 = v103;
          v33 = v97;
          v51 = v107;
        }

        v51[2] = v54 + 1;
        v55 = &v51[4 * v54];
        v55[4] = v41;
        v55[5] = v42;
        v55[6] = v102;
        v55[7] = v44;
        v13 = v98;
        v56 = 1 << *(v98 + 32);
        if (v37 >= v56)
        {
          goto LABEL_54;
        }

        v57 = *(v104 + 8 * v39);
        if ((v57 & (1 << v37)) == 0)
        {
          goto LABEL_55;
        }

        v105 = v51;
        if (*(v98 + 36) != v52)
        {
          goto LABEL_56;
        }

        v58 = v57 & (-2 << (v37 & 0x3F));
        if (v58)
        {
          v56 = __clz(__rbit64(v58)) | v37 & 0x7FFFFFFFFFFFFFC0;
          v59 = v99;
          v60 = v101;
        }

        else
        {
          v61 = v39 << 6;
          v62 = v39 + 1;
          v63 = (v96 + 8 * v39);
          v59 = v99;
          v60 = v101;
          while (v62 < (v56 + 63) >> 6)
          {
            v65 = *v63++;
            v64 = v65;
            v61 += 64;
            ++v62;
            if (v65)
            {
              result = sub_22C3A5038(v37, v52, v100 & 1);
              v56 = __clz(__rbit64(v64)) + v61;
              goto LABEL_30;
            }
          }

          result = sub_22C3A5038(v37, v52, v100 & 1);
LABEL_30:
          v33 = v97;
        }

        v38 = v60 + 1;
        if (v38 == v59)
        {

          v3 = v95;
          v67 = v105;
          goto LABEL_36;
        }

        v36 = 0;
        v35 = *(v13 + 36);
        v37 = v56;
        if (v56 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v67 = MEMORY[0x277D84F90];
LABEL_36:
  v68 = sub_22C8F1D4C(v67, &qword_27D9BC3C0, qword_22C912B08, sub_22C8F3CE8);
  if (v3)
  {
    return v3;
  }

  v69 = v68;
  v97 = 0;
  sub_22C3A5908(&qword_27D9C0E40, &qword_22C92B4E0);
  result = sub_22C90B1CC();
  v70 = 0;
  v71 = v69 + 64;
  v72 = 1 << *(v69 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & *(v69 + 64);
  v75 = (v72 + 63) >> 6;
  v105 = result;
  v103 = result + 64;
  if (v74)
  {
    do
    {
      v76 = __clz(__rbit64(v74));
      v104 = (v74 - 1) & v74;
LABEL_47:
      v79 = v76 | (v70 << 6);
      v80 = *(v69 + 56);
      v81 = v69;
      v82 = (*(v69 + 48) + 16 * v79);
      v84 = *v82;
      v83 = v82[1];
      v85 = (v80 + 16 * v79);
      v86 = *v85;
      v87 = v85[1];
      sub_22C36A83C();
      result = swift_allocObject();
      *(result + 16) = v86;
      *(result + 24) = v87;
      *(v103 + ((v79 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v79;
      v88 = v105;
      v89 = (v105[6] + 16 * v79);
      *v89 = v84;
      v89[1] = v83;
      v90 = (v88[7] + 16 * v79);
      *v90 = sub_22C8F4404;
      v90[1] = result;
      v91 = v88[2];
      v92 = __OFADD__(v91, 1);
      v93 = v91 + 1;
      if (v92)
      {
        goto LABEL_58;
      }

      v105[2] = v93;

      v69 = v81;
      v74 = v104;
    }

    while (v104);
  }

  v77 = v70;
  while (1)
  {
    v70 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v70 >= v75)
    {

      v3 = sub_22C8F31CC(v105);

      return v3;
    }

    v78 = *(v71 + 8 * v70);
    ++v77;
    if (v78)
    {
      v76 = __clz(__rbit64(v78));
      v104 = (v78 - 1) & v78;
      goto LABEL_47;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_22C8F2C44(uint64_t a1, uint64_t a2)
{
  if (!MEMORY[0x2318AFB10]())
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C902F2C();

  v2 = sub_22C902EBC();
  sub_22C8E8EAC();
  v4 = v3;

  return v4;
}

uint64_t sub_22C8F2CFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v46 = a3;
  v43 = a2;
  v4 = sub_22C9086BC();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9063DC();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9093BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9074CC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  sub_22C9086AC();
  if ((*(v14 + 88))(v17, v13) == *MEMORY[0x277D1E040])
  {
    (*(v14 + 96))(v17, v13);
    (*(v10 + 32))(v12, v17, v9);
    v18 = v47;
    sub_22C881B80(v12, v19, v20, v21, v22, v23, v24, v25, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52[0], v52[1], v52[2]);
    if (v18)
    {
      return (*(v10 + 8))(v12, v9);
    }

    v38 = v26;
    v39 = v27;
    result = (*(v10 + 8))(v12, v9);
    if (v39)
    {
      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        v41 = v46;
        *v46 = v38;
        v41[1] = v39;
        return result;
      }
    }

    v42 = v46;
    *v46 = 0;
    v42[1] = 0;
  }

  else
  {
    sub_22C90405C();
    (*(v48 + 16))(v6, a1, v49);
    v29 = sub_22C9063CC();
    v30 = sub_22C90AADC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52[0] = v43;
      *v31 = 136642819;
      sub_22C9086AC();
      v32 = sub_22C90A1AC();
      v34 = v33;
      (*(v48 + 8))(v6, v49);
      v35 = sub_22C36F9F4(v32, v34, v52);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_22C366000, v29, v30, "Unhandled tool parameter value: %{sensitive}s", v31, 0xCu);
      v36 = v43;
      sub_22C36FF94(v43);
      MEMORY[0x2318B9880](v36, -1, -1);
      MEMORY[0x2318B9880](v31, -1, -1);
    }

    else
    {

      (*(v48 + 8))(v6, v49);
    }

    (*(v44 + 8))(v50, v45);
    v37 = v46;
    *v46 = 0;
    v37[1] = 0;
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

uint64_t sub_22C8F31CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return sub_22C8F1D4C(v2, &qword_27D9C0E40, &qword_22C92B4E0, sub_22C8F3518);
  }

  v29 = MEMORY[0x277D84F90];
  sub_22C3B6DD0(0, v1, 0);
  v2 = v29;
  result = sub_22C6339F8();
  v7 = result;
  v8 = 0;
  v9 = a1 + 64;
  v25 = v1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_24;
      }

      v26 = v6;
      v27 = v5;
      v28 = *(*(a1 + 56) + 16 * v7);

      v11 = sub_22C90A2EC();
      v13 = v12;

      v15 = *(v29 + 16);
      v14 = *(v29 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_22C3B6DD0((v14 > 1), v15 + 1, 1);
      }

      *(v29 + 16) = v15 + 1;
      v16 = v29 + 32 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      *(v16 + 48) = v28;
      v17 = 1 << *(a1 + 32);
      if (v7 >= v17)
      {
        goto LABEL_25;
      }

      v9 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v27)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (a1 + 72 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_22C3A5038(v7, v27, v26 & 1);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_18;
          }
        }

        result = sub_22C3A5038(v7, v27, v26 & 1);
      }

LABEL_18:
      if (++v8 == v25)
      {
        return sub_22C8F1D4C(v2, &qword_27D9C0E40, &qword_22C92B4E0, sub_22C8F3518);
      }

      v6 = 0;
      v5 = *(a1 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
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
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22C8F3518(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v22 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 2)
  {
    if (v22 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v24 = *i;
    v8 = *a3;

    v10 = sub_22C36E2BC(v7, v6);
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_17;
    }

    v13 = v9;
    if (v8[3] >= v11 + v12)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9C1570, qword_22C92DC58);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88D830();
      v14 = sub_22C36E2BC(v7, v6);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

      v10 = v14;
    }

    v16 = *a3;
    if (v13)
    {
      v25 = *(v16[7] + 16 * v10);

      *(v16[7] + 16 * v10) = v25;
    }

    else
    {
      v16[(v10 >> 6) + 8] |= 1 << v10;
      v17 = (v16[6] + 16 * v10);
      *v17 = v7;
      v17[1] = v6;
      *(v16[7] + 16 * v10) = v24;
      v18 = v16[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_18;
      }

      v16[2] = v20;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C8F3710(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v23 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 2)
  {
    if (v23 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_22C90B54C();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v26 = *i;
    v8 = *a3;

    v10 = sub_22C36E2BC(v7, v6);
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_19;
    }

    v13 = v9;
    if (v8[3] < v11 + v12)
    {
      break;
    }

    if (a2)
    {
      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22C3A5908(&qword_27D9C1570, qword_22C92DC58);
      sub_22C90B16C();
      if (v13)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v16 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v17 = (v16[6] + 16 * v10);
    *v17 = v7;
    v17[1] = v6;
    *(v16[7] + 16 * v10) = v26;
    v18 = v16[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_20;
    }

    v16[2] = v20;
    ++v4;
    a2 = 1;
  }

  sub_22C88D830();
  v14 = sub_22C36E2BC(v7, v6);
  if ((v13 & 1) != (v15 & 1))
  {
    goto LABEL_21;
  }

  v10 = v14;
  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v21 = swift_allocError();
  swift_willThrow();
  v22 = v21;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000001BLL, 0x800000022C9305A0);
  sub_22C90B12C();
  MEMORY[0x2318B7850](39, 0xE100000000000000);
  sub_22C90B1AC();
  __break(1u);
}

uint64_t sub_22C8F3A04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  sub_22C8920A0();
  v6 = v43;
  v7 = v45;
  v8 = v46;
  v32 = v47;
  v33 = v42;
  v9 = (v44 + 64) >> 6;

  if (v46)
  {
    while (1)
    {
      v34 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = *(v33 + 56);
      v14 = (*(v33 + 48) + v12);
      v15 = v14[1];
      v40[0] = *v14;
      v40[1] = v15;
      v41 = *(v13 + v12);

      v32(&v37, v40);

      v16 = v37;
      v17 = v38;
      v36 = v39;
      v18 = *v48;
      v20 = sub_22C36E2BC(v37, v38);
      v21 = v18[2];
      v22 = (v19 & 1) == 0;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v23 = v19;
      if (v18[3] >= v21 + v22)
      {
        if ((v34 & 1) == 0)
        {
          sub_22C3A5908(&qword_27D9C1570, qword_22C92DC58);
          sub_22C90B16C();
        }
      }

      else
      {
        sub_22C88D830();
        v24 = sub_22C36E2BC(v16, v17);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_24;
        }

        v20 = v24;
      }

      v8 &= v8 - 1;
      v26 = *v48;
      if (v23)
      {
        v35 = *(v26[7] + 16 * v20);

        *(v26[7] + 16 * v20) = v35;
      }

      else
      {
        v26[(v20 >> 6) + 8] |= 1 << v20;
        v27 = (v26[6] + 16 * v20);
        *v27 = v16;
        v27[1] = v17;
        *(v26[7] + 16 * v20) = v36;
        v28 = v26[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_23;
        }

        v26[2] = v30;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_22C36A674(v33);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v34 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C8F3CE8(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v30 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v30 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      sub_22C90B54C();
      __break(1u);
      goto LABEL_20;
    }

    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_22C36E2BC(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v15 = v11;
    if (v10[3] >= v13 + v14)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88E938();
      v16 = sub_22C36E2BC(v7, v6);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v12 = v16;
    }

    v18 = *a3;
    if (v15)
    {
      break;
    }

    v18[(v12 >> 6) + 8] |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v7;
    v19[1] = v6;
    v20 = (v18[7] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    v21 = v18[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_18;
    }

    v18[2] = v23;
    ++v4;
    a2 = 1;
  }

  v24 = (v18[7] + 16 * v12);
  v25 = *v24;
  v26 = v24[1];
  sub_22C8F4390();
  v27 = swift_allocError();
  *v28 = v25;
  v28[1] = v26;
  swift_willThrow();

  v29 = v27;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_20:
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000001BLL, 0x800000022C9305A0);
  sub_22C90B12C();
  MEMORY[0x2318B7850](39, 0xE100000000000000);
  sub_22C90B1AC();
  __break(1u);
}

uint64_t sub_22C8F3FF0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v29 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v31 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_22C36E2BC(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v15 = v11;
    if (v10[3] >= v13 + v14)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88E938();
      v16 = sub_22C36E2BC(v7, v6);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v12 = v16;
    }

    v18 = *a3;
    if (v15)
    {
      v19 = (v18[7] + 16 * v12);
      v21 = *v19;
      v20 = v19[1];

      v22 = (v18[7] + 16 * v12);
      *v22 = v21;
      v22[1] = v20;
    }

    else
    {
      v18[(v12 >> 6) + 8] |= 1 << v12;
      v23 = (v18[6] + 16 * v12);
      *v23 = v7;
      v23[1] = v6;
      v24 = (v18[7] + 16 * v12);
      *v24 = v8;
      v24[1] = v9;
      v25 = v18[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v18[2] = v27;
    }

    v4 = v31 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

__n128 sub_22C8F421C@<Q0>(__n128 *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = sub_22C88FCE4(&v6, *a2, a2[1], a2[2], a2[3]);
  result = v6;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v5;
  a1[1] = result;
  return result;
}

uint64_t sub_22C8F4280(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9C1568, &qword_22C92DC50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8F42F0(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9C1568, &qword_22C92DC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C8F4390()
{
  result = qword_27D9C1578;
  if (!qword_27D9C1578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C1578);
  }

  return result;
}

void sub_22C8F4464(uint64_t a1)
{
  sub_22C90077C();
  if (v1 <= 0x3F)
  {
    sub_22C436620();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C8F44E8(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v19 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  while (v19 != v5)
  {
    v7 = *(sub_22C9093BC() - 8);
    a1(&v20, a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v3)
    {

      return;
    }

    v8 = v20;
    v9 = *(v20 + 16);
    v10 = *(v6 + 16);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v11 > *(v6 + 24) >> 1)
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      sub_22C590270(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      v6 = v14;
    }

    if (*(v8 + 16))
    {
      if ((*(v6 + 24) >> 1) - *(v6 + 16) < v9)
      {
        goto LABEL_22;
      }

      swift_arrayInitWithCopy();

      if (v9)
      {
        v15 = *(v6 + 16);
        v16 = __OFADD__(v15, v9);
        v17 = v15 + v9;
        if (v16)
        {
          goto LABEL_23;
        }

        *(v6 + 16) = v17;
      }
    }

    else
    {

      if (v9)
      {
        goto LABEL_21;
      }
    }

    ++v5;
  }
}

uint64_t sub_22C8F46F4(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    v8 = sub_22C90941C();
    sub_22C3699B8(v8);
    a1(&v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * v6);
    if (v3)
    {
      break;
    }

    ++v6;
    sub_22C3CD230();
  }
}

void *sub_22C8F4848(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v20 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v20 == v5)
    {
      return v6;
    }

    v7 = type metadata accessor for DynamicEnumeration(0);
    sub_22C3699B8(v7);
    result = a1(&v21, a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v9 + 72) * v5);
    if (v3)
    {

      return v6;
    }

    v11 = v21;
    v12 = *(v21 + 16);
    v13 = *(v6 + 16);
    if (__OFADD__(v13, v12))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > *(v6 + 24) >> 1)
    {
      sub_22C592FD0();
      v6 = v14;
    }

    if (*(v11 + 16))
    {
      v15 = (*(v6 + 24) >> 1) - *(v6 + 16);
      result = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
      if (v15 < v12)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v16 = *(v6 + 16);
        v17 = __OFADD__(v16, v12);
        v18 = v16 + v12;
        if (v17)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v18;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_18;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_22C8F4B38(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v8 = 0;
  v25 = *(a3 + 16);
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v25 == v8)
    {
      return v9;
    }

    v10 = (a4)(0, a2);
    sub_22C3699B8(v10);
    result = a1(&v26, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v12 + 72) * v8);
    if (v6)
    {

      return v9;
    }

    v14 = v26;
    v15 = *(v26 + 16);
    v16 = *(v9 + 16);
    if (__OFADD__(v16, v15))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v16 + v15 > *(v9 + 24) >> 1)
    {
      v9 = a5();
    }

    if (*(v14 + 16))
    {
      v17 = (*(v9 + 24) >> 1) - *(v9 + 16);
      result = a6(0);
      if (v17 < v15)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v18 = *(v9 + 16);
        v19 = __OFADD__(v18, v15);
        v20 = v18 + v15;
        if (v19)
        {
          goto LABEL_20;
        }

        *(v9 + 16) = v20;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_18;
      }
    }

    ++v8;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

char *sub_22C8F4D3C(char *a1)
{
  v231 = a1;
  v204 = sub_22C9001BC();
  sub_22C36985C();
  MEMORY[0x28223BE20](v1);
  sub_22C3698A8();
  sub_22C3698F8(v2);
  v203 = sub_22C90021C();
  sub_22C369824();
  v202 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  sub_22C3698F8(v5);
  sub_22C9063DC();
  sub_22C369824();
  v225 = v7;
  v226 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v227 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  sub_22C3698F8(v11);
  sub_22C9007EC();
  sub_22C369824();
  v213 = v13;
  v214 = v12;
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v211 = v14;
  sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C36D5B4();
  v212 = v16;
  sub_22C36BA0C();
  v218 = sub_22C90014C();
  sub_22C369824();
  v215 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  v217 = v20;
  sub_22C36BA0C();
  sub_22C90063C();
  sub_22C369824();
  v219 = v22;
  v220 = v21;
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  v216 = v24;
  sub_22C36BA0C();
  v207 = sub_22C90046C();
  sub_22C369824();
  v206 = v25;
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  v205 = v27;
  v201 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  sub_22C369824();
  v200 = v28;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C36D5B4();
  sub_22C3698F8(v30);
  v199 = sub_22C90922C();
  sub_22C369824();
  v198 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22C3698A8();
  sub_22C3698F8(v33);
  v197 = sub_22C90930C();
  sub_22C369824();
  v196 = v34;
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  sub_22C3698F8(v36);
  v193[4] = sub_22C9092DC();
  sub_22C369824();
  v193[3] = v37;
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  sub_22C3698F8(v39);
  v40 = sub_22C90931C();
  sub_22C369824();
  v228 = v41;
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C3698D4();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = v193 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = v193 - v48;
  sub_22C90906C();
  sub_22C369824();
  v222 = v51;
  v223 = v50;
  MEMORY[0x28223BE20](v50);
  sub_22C369838();
  v54 = v53 - v52;
  v55 = sub_22C9093BC();
  sub_22C369824();
  v57 = v56;
  MEMORY[0x28223BE20](v58);
  sub_22C3698E4();
  v221 = v59;
  sub_22C369930();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = v193 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = (v193 - v64);
  v229 = *(v57 + 16);
  v229(v193 - v64, v231, v55);
  v66 = sub_22C37F8AC();
  v68 = v67(v66);
  if (v68 == *MEMORY[0x277D72A58])
  {
    v69 = sub_22C37F8AC();
    v70(v69);
    v71 = *v65;
    v72 = swift_projectBox();
    v73 = v228;
    v74 = *(v228 + 16);
    v74(v49, v72, v40);
    v74(v47, v49, v40);
    v75 = (*(v73 + 88))(v47, v40);
    v76 = v40;
    if (v75 == *MEMORY[0x277D72978])
    {
      v77 = sub_22C36A630();
      v78(v77);
      v79 = *v47;
      v80 = sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v47 = sub_22C38AD04(v80);
      *(v47 + 1) = xmmword_22C90F800;
      v232 = v79;
      v81 = sub_22C90B47C();
LABEL_10:
      *(v47 + 4) = v81;
      *(v47 + 5) = v82;
LABEL_11:
      (*(v73 + 8))(v49, v76);
LABEL_12:

      return v47;
    }

    if (v75 == *MEMORY[0x277D729A8])
    {
      v91 = sub_22C36A630();
      v92(v91);
      v93 = sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v47 = sub_22C38AD04(v93);
      *(v47 + 1) = xmmword_22C90F800;
      v81 = sub_22C90A84C();
      goto LABEL_10;
    }

    if (v75 == *MEMORY[0x277D729C0])
    {
      v104 = sub_22C36A630();
      v105(v104);
      v106 = sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v47 = sub_22C38AD04(v106);
      *(v47 + 1) = xmmword_22C90F800;
      *(v47 + 4) = sub_22C90AC1C();
      *(v47 + 5) = v107;
      (*(v73 + 8))(v49, v40);
      goto LABEL_12;
    }

    if (v75 == *MEMORY[0x277D729B8])
    {
      v115 = sub_22C36A630();
      v116(v115);
      v117 = *v47;
      v118 = *(v47 + 1);
      v119 = sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v47 = sub_22C38AD04(v119);
      *(v47 + 1) = xmmword_22C90F800;
      *(v47 + 4) = v117;
      *(v47 + 5) = v118;
      goto LABEL_11;
    }

    if (v75 == *MEMORY[0x277D72990])
    {
      v120 = sub_22C36A630();
      v121(v120);
      (*(v219 + 32))(v216, v47, v220);
      v122 = sub_22C8F87F4();
LABEL_24:
      v47 = v122;
LABEL_25:
      v123 = sub_22C36BBCC();
      v124(v123);
      goto LABEL_11;
    }

    if (v75 == *MEMORY[0x277D72958])
    {
      v125 = sub_22C36A630();
      v126(v125);
      v127 = v215;
      v128 = v218;
      (*(v215 + 32))(v217, v47, v218);
      v129 = v211;
      sub_22C9007BC();
      v130 = v212;
      sub_22C90078C();
      (*(v213 + 8))(v129, v214);
      v131 = v220;
      if (sub_22C370B74(v130, 1, v220) != 1)
      {
        v155 = v219;
        v156 = v127;
        v157 = v208;
        (*(v219 + 32))(v208, v130, v131);
        v47 = sub_22C8F87F4();
        (*(v155 + 8))(v157, v220);
        (*(v156 + 8))(v217, v218);
        goto LABEL_11;
      }

      v231 = v49;
      sub_22C36DD28(v130, &qword_27D9BF2C0, &qword_22C925300);
      v132 = v210;
      sub_22C90405C();
      v133 = v209;
      v134 = sub_22C379ED8();
      v135(v134);
      v136 = sub_22C9063CC();
      v137 = sub_22C90AACC();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = sub_22C36FB44();
        v229 = v71;
        v139 = v138;
        v140 = sub_22C370060();
        v227 = v76;
        v141 = v140;
        v232 = v140;
        *v139 = 136315138;
        sub_22C8F8E40(&qword_27D9BFEC0, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
        v142 = sub_22C90B47C();
        v143 = v132;
        v145 = v144;
        v146 = sub_22C383580();
        v133(v146, v218);
        v147 = sub_22C36F9F4(v142, v145, &v232);

        *(v139 + 4) = v147;
        _os_log_impl(&dword_22C366000, v136, v137, "Cannot make Date from date components: %s", v139, 0xCu);
        sub_22C36FF94(v141);
        v76 = v227;
        sub_22C3699EC();
        sub_22C3699EC();

        sub_22C8F90B8();
        v149 = v143;
        v128 = v218;
      }

      else
      {

        v163 = sub_22C383580();
        v133(v163, v128);
        sub_22C8F90B8();
        v149 = v132;
      }

      v148(v149, v226);
      v133(v217, v128);
      (*(v228 + 8))(v231, v76);

      return MEMORY[0x277D84F90];
    }

    else
    {
      if (v75 == *MEMORY[0x277D72980])
      {
        v150 = sub_22C36A630();
        v151(v150);
        sub_22C388C2C();
        sub_22C372BEC();
        sub_22C8F90AC();
        v152();
        sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
        v47 = swift_allocObject();
        *(v47 + 1) = xmmword_22C90F870;
        *(v47 + 4) = sub_22C90036C();
        *(v47 + 5) = v153;
        *(v47 + 6) = sub_22C90037C();
        *(v47 + 7) = v154;
        goto LABEL_25;
      }

      if (v75 == *MEMORY[0x277D72968])
      {
        v158 = sub_22C36A630();
        v159(v158);
        sub_22C388C2C();
        sub_22C372BEC();
        sub_22C8F90AC();
        v160();
        v161 = sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
        v47 = sub_22C38AD04(v161);
        *(v47 + 1) = xmmword_22C90F800;
        sub_22C90019C();
        sub_22C8F8E40(&qword_27D9BFF78, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
        *(v47 + 4) = sub_22C90A48C();
        *(v47 + 5) = v162;
        goto LABEL_25;
      }

      if (v75 == *MEMORY[0x277D72940])
      {
        v164 = sub_22C36A630();
        v165(v164);
        sub_22C388C2C();
        sub_22C372BEC();
        sub_22C8F90AC();
        v166();
        v122 = sub_22C8F85BC();
        goto LABEL_24;
      }

      if (v75 == *MEMORY[0x277D72950])
      {
        v167 = sub_22C36A630();
        v168(v167);
        sub_22C388C2C();
        sub_22C372BEC();
        sub_22C8F90AC();
        v169();
        v122 = sub_22C8F8194();
        goto LABEL_24;
      }

      if (v75 == *MEMORY[0x277D729D0])
      {
        v170 = sub_22C36A630();
        v171(v170);
        sub_22C388C2C();
        sub_22C372BEC();
        sub_22C8F90AC();
        v172();
        v122 = sub_22C8F7E3C();
        goto LABEL_24;
      }

      if (v75 == *MEMORY[0x277D729B0])
      {
        v173 = sub_22C36A630();
        v174(v173);
        sub_22C388C2C();
        sub_22C372BEC();
        sub_22C8F90AC();
        v175();
        v122 = sub_22C8F7710();
        goto LABEL_24;
      }

      v229 = v71;
      v230 = v47;
      v47 = v195;
      sub_22C90405C();
      v176 = v194;
      v74(v194, v49, v76);
      v177 = sub_22C9063CC();
      LODWORD(v227) = sub_22C90AABC();
      if (os_log_type_enabled(v177, v227))
      {
        v178 = v73;
        v179 = sub_22C36FB44();
        v224 = sub_22C370060();
        v232 = v224;
        *v179 = 136315138;
        v74(v193[1], v176, v76);
        v180 = sub_22C90A1AC();
        v231 = v49;
        v182 = v181;
        v183 = v176;
        v184 = v76;
        v228 = *(v178 + 8);
        (v228)(v183, v76);
        v47 = sub_22C36F9F4(v180, v182, &v232);
        v49 = v231;

        *(v179 + 4) = v47;
        _os_log_impl(&dword_22C366000, v177, v227, "unhandled primitive value: %s", v179, 0xCu);
        sub_22C36FF94(v224);
        sub_22C3699EC();
        sub_22C3699EC();

        sub_22C8F90B8();
        v186 = v195;
      }

      else
      {

        v187 = v176;
        v184 = v76;
        v228 = *(v73 + 8);
        (v228)(v187, v76);
        sub_22C8F90B8();
        v186 = v47;
      }

      v185(v186, v226);
      type metadata accessor for TypedValueFormatterError(0);
      sub_22C378A1C();
      sub_22C8F8E40(v188, v189, &unk_22C92DDCC);
      swift_allocError();
      v74(v190, v49, v184);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v191 = sub_22C379ED8();
      v192 = v228;
      (v228)(v191);
      v192(v230, v184);
    }
  }

  else if (v68 == *MEMORY[0x277D729E0])
  {
    v83 = sub_22C37F8AC();
    v84(v83);
    v85 = swift_projectBox();
    (*(v222 + 16))(v54, v85, v223);
    v86 = sub_22C90905C();
    MEMORY[0x28223BE20](v86);
    v193[-2] = v224;
    v87 = v230;
    sub_22C8F44E8(sub_22C8F8E88, &v193[-4], v86);
    if (!v87)
    {
      v47 = v88;
    }

    v89 = sub_22C36BBCC();
    v90(v89);
  }

  else
  {
    v94 = v227;
    sub_22C90405C();
    v229(v63, v231, v55);
    v95 = sub_22C9063CC();
    v96 = sub_22C90AABC();
    if (os_log_type_enabled(v95, v96))
    {
      v47 = sub_22C36FB44();
      v224 = v47;
      v230 = sub_22C370060();
      v232 = v230;
      *v47 = 136315138;
      LODWORD(v228) = v96;
      v229(v221, v63, v55);
      v223 = sub_22C90A1AC();
      v98 = v97;
      v99 = sub_22C37F6C4();
      (v47)(v99);
      v100 = sub_22C36F9F4(v223, v98, &v232);

      v101 = v224;
      *(v224 + 4) = v100;
      _os_log_impl(&dword_22C366000, v95, v228, "Unsupported type %s", v101, 0xCu);
      sub_22C36FF94(v230);
      sub_22C3699EC();
      sub_22C3699EC();

      sub_22C8F90B8();
      v103 = v227;
    }

    else
    {

      v108 = sub_22C37F6C4();
      (v47)(v108);
      sub_22C8F90B8();
      v103 = v94;
    }

    v102(v103, v226);
    type metadata accessor for TypedValueFormatterError(0);
    sub_22C378A1C();
    v111 = sub_22C8F8E40(v109, v110, &unk_22C92DDCC);
    sub_22C370620(v111);
    v229(v112, v231, v55);
    sub_22C36BBCC();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v113 = sub_22C37F8AC();
    (v47)(v113);
  }

  return v47;
}

uint64_t *sub_22C8F6208(uint64_t a1)
{
  sub_22C9063DC();
  sub_22C369824();
  v161 = v3;
  v162 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  v163 = v4;
  sub_22C36BA0C();
  v145 = sub_22C90922C();
  sub_22C369824();
  v144 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v143 = v7;
  v147 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  sub_22C369824();
  v155 = v8;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D5B4();
  sub_22C3698F8(v10);
  v142 = sub_22C9092DC();
  sub_22C369824();
  v141 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  sub_22C3698F8(v13);
  v160 = sub_22C90063C();
  sub_22C369824();
  v157 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v156 = v16;
  sub_22C3A5908(&qword_27D9BFE38, &qword_22C92B200);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  sub_22C36D5B4();
  v154 = v18;
  sub_22C36BA0C();
  sub_22C9001BC();
  sub_22C369824();
  v152 = v20;
  v153 = v19;
  MEMORY[0x28223BE20](v19);
  sub_22C3698A8();
  sub_22C3698F8(v21);
  v151 = sub_22C90021C();
  sub_22C369824();
  v150 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C3698A8();
  sub_22C3698F8(v24);
  sub_22C90931C();
  sub_22C369824();
  v165 = v26;
  v166 = v25;
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  v167 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v168 = v29;
  sub_22C36BA0C();
  v30 = sub_22C90906C();
  sub_22C369824();
  v159 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v35 = v34 - v33;
  v36 = sub_22C9093BC();
  sub_22C369824();
  v38 = v37;
  v40 = MEMORY[0x28223BE20](v39);
  v42 = v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v158 = v140 - v43;
  sub_22C369930();
  MEMORY[0x28223BE20](v44);
  isa = (v140 - v45);
  sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v47);
  v49 = v140 - v48;
  sub_22C90939C();
  v50 = sub_22C90993C();
  if (sub_22C370B74(v49, 1, v50) == 1)
  {
    sub_22C36DD28(v49, &qword_27D9BC390, &qword_22C912AC0);
    v140[0] = *(v38 + 16);
    (v140[0])(isa, a1, v36);
    v51 = sub_22C37BD80();
    v53 = v52(v51);
    v54 = a1;
    if (v53 == *MEMORY[0x277D72A58])
    {
      v163 = v38 + 16;
      v55 = sub_22C37BD80();
      v56(v55);
      v57 = *isa;
      v58 = swift_projectBox();
      v59 = v165;
      isa = v166;
      v60 = *(v165 + 16);
      v61 = v168;
      v60(v168, v58, v166);
      v62 = v167;
      v60(v167, v61, isa);
      v63 = (*(v59 + 88))(v62, isa);
      if (v63 == *MEMORY[0x277D729B8])
      {
        (*(v59 + 8))(v61, isa);
        (*(v59 + 96))(v62, isa);
        isa = v62->isa;
LABEL_30:

        return isa;
      }

      if (v63 == *MEMORY[0x277D72990])
      {
        v71 = sub_22C36C62C();
        v72(v71);
        v74 = v156;
        v73 = v157;
        v75 = sub_22C379ED8();
        v76(v75);
        v77 = type metadata accessor for TypedValueFormatter(0);
        sub_22C8F71F4(v164, *(v164 + *(v77 + 20)), *(v164 + *(v77 + 20) + 8));
        sub_22C8F90C4();
        (*(v73 + 8))(v74, v160);
        (*(v59 + 8))(v61, isa);
        goto LABEL_30;
      }

      if (v63 == *MEMORY[0x277D72968])
      {
        v92 = sub_22C36C62C();
        v93(v92);
        v94 = v150;
        v95 = *(v150 + 32);
        v96 = v148;
        v164 = v57;
        v97 = v151;
        v95(v148, v62, v151);
        v98 = v149;
        sub_22C90019C();
        v99 = v154;
        sub_22C87F748();
        (*(v152 + 8))(v98, v153);
        sub_22C90A19C();
        sub_22C376B70();
        (*(v94 + 8))(v96, v97);
        (*(v59 + 8))(v99, v59);
        goto LABEL_30;
      }

      if (v63 == *MEMORY[0x277D72940])
      {
        v109 = sub_22C36C62C();
        v110(v109);
        v111 = v146;
        v112 = v147;
        (*(v155 + 32))();
        v113 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
        [v113 setUnitOptions_];
        [v113 setUnitStyle_];
        v114 = v59;
        v115 = v111;
        v116 = sub_22C8FFF9C();
        v117 = [v113 stringFromUnit_];

        v167 = sub_22C90A11C();
        v119 = v118;

        sub_22C8FFFBC();
        v170[0] = sub_22C8F8D38();
        v170[1] = v120;
        MEMORY[0x2318B7850](32, 0xE100000000000000);
        MEMORY[0x2318B7850](v167, v119);

        v121 = isa;
        isa = v170[0];
        (*(v155 + 8))(v115, v112);
        (*(v114 + 8))(v168, v121);
        goto LABEL_30;
      }

      if (v63 == *MEMORY[0x277D72950])
      {
        v122 = sub_22C36C62C();
        v123(v122);
        v124 = v144;
        v125 = v143;
        v126 = sub_22C379ED8();
        v127 = v145;
        v128(v126);
        sub_22C8F7434(v164);
        sub_22C376B70();
        (*(v124 + 8))(v125, v127);
        (*(v59 + 8))(v62, v59);
        goto LABEL_30;
      }

      v164 = v57;
      if (v63 == *MEMORY[0x277D729B0])
      {
        v129 = sub_22C36C62C();
        v130(v129);
        v131 = v141;
        v132 = v140[1];
        v133 = sub_22C36BBCC();
        v134 = v142;
        v135(v133);
        v136 = sub_22C9092CC();
        v137 = [v136 displayName];

        sub_22C90A11C();
        sub_22C8F90C4();

        (*(v131 + 8))(v132, v134);
        (*(v59 + 8))(v168, isa);
        goto LABEL_30;
      }

      if (v63 != *MEMORY[0x277D729A0])
      {
        sub_22C90937C();
        if (!v138)
        {
          (v140[0])(v158, v54, v36);
          sub_22C90A1AC();
        }

        sub_22C8F90C4();
        v139 = *(v59 + 8);
        v139(v168, isa);
        v139(v167, isa);
        goto LABEL_30;
      }

      (*(v59 + 8))(v168, isa);

      return 0;
    }

    else if (v53 == *MEMORY[0x277D729E0])
    {
      v64 = sub_22C37BD80();
      v65(v64);
      v66 = swift_projectBox();
      v67 = v159;
      (*(v159 + 16))(v35, v66, v30);
      v68 = sub_22C90905C();
      MEMORY[0x28223BE20](v68);
      v140[-2] = v164;
      v69 = v169;
      sub_22C7928B0();
      if (v69)
      {
        (*(v67 + 8))(v35, v30);
      }

      else
      {
        v108 = v70;

        v170[0] = v108;
        sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
        sub_22C3F035C();
        isa = sub_22C90A04C();

        (*(v67 + 8))(v35, v30);
      }
    }

    else
    {
      v78 = v163;
      sub_22C90405C();
      v169 = v54;
      v79 = v140[0];
      (v140[0])(v42, v54, v36);
      v80 = sub_22C9063CC();
      v81 = sub_22C90AADC();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = sub_22C36FB44();
        v167 = v80;
        v83 = v82;
        v168 = sub_22C370060();
        v170[0] = v168;
        *v83 = 136642819;
        LODWORD(v166) = v81;
        v79(v158, v42, v36);
        v165 = sub_22C90A1AC();
        v85 = v84;
        v86 = *(v38 + 8);
        v87 = sub_22C372550();
        v86(v87);
        v88 = v86;
        v89 = sub_22C36F9F4(v165, v85, v170);

        v90 = v83;
        *(v83 + 4) = v89;
        v91 = v167;
        _os_log_impl(&dword_22C366000, v167, v166, "Unsupported type %{sensitive}s", v90, 0xCu);
        sub_22C36FF94(v168);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v161 + 8))(v163, v162);
      }

      else
      {

        v100 = *(v38 + 8);
        v101 = sub_22C372550();
        v100(v101);
        v88 = v100;
        (*(v161 + 8))(v78, v162);
      }

      type metadata accessor for TypedValueFormatterError(0);
      sub_22C378A1C();
      v104 = sub_22C8F8E40(v102, v103, &unk_22C92DDCC);
      sub_22C370620(v104);
      (v140[0])(v105, v169, v36);
      sub_22C36BBCC();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v106 = sub_22C37BD80();
      v88(v106);
    }
  }

  else
  {
    sub_22C9098BC();
    sub_22C8F90C4();
    (*(*(v50 - 8) + 8))(v49, v50);
  }

  return isa;
}

void *sub_22C8F71C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_22C8F6208(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_22C8F71F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  sub_22C902E6C();
  swift_allocObject();
  sub_22C902E5C();
  sub_22C9005DC();
  sub_22C902E2C();
  if (a3)
  {

    sub_22C902F8C();
    v10 = sub_22C902FBC();
    sub_22C36C640(v9, 0, 1, v10);
    sub_22C902E4C();
  }

  sub_22C902E3C();
  sub_22C902F2C();
  sub_22C9006BC();
  sub_22C902EBC();
  sub_22C902E0C();
  sub_22C902E1C();
  v11 = sub_22C902FBC();
  if (sub_22C370B74(v7, 1, v11) == 1)
  {

    sub_22C36DD28(v7, &qword_27D9C0AB8, &qword_22C92A190);
    return 0;
  }

  else
  {
    v12 = sub_22C902F9C();

    (*(*(v11 - 8) + 8))(v7, v11);
  }

  return v12;
}

uint64_t sub_22C8F7434(uint64_t a1)
{
  v21[2] = a1;
  v1 = sub_22C3A5908(&qword_27D9C0AB8, &qword_22C92A190);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  sub_22C902E8C();
  swift_allocObject();
  v21[0] = sub_22C902E7C();
  v4 = sub_22C90921C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = HIDWORD(v4);
  v11 = HIWORD(v4);
  v12 = v6 >> 16;
  v13 = HIDWORD(v6);
  v14 = HIWORD(v6);
  v15 = HIWORD(v8);
  v16 = objc_allocWithZone(MEMORY[0x277CCA980]);
  v22 = v5;
  v23 = v10;
  v24 = v11;
  v25 = v7;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v9;
  v30 = v15;
  v17 = [v16 initWithDecimal_];
  [v17 doubleValue];

  sub_22C902DFC();

  sub_22C9091FC();
  sub_22C902DEC();

  sub_22C902DDC();

  sub_22C902F2C();
  sub_22C9006BC();

  sub_22C902EBC();
  sub_22C902DCC();

  sub_22C902E9C();
  v18 = sub_22C902FBC();
  if (sub_22C370B74(v3, 1, v18) == 1)
  {

    sub_22C36DD28(v3, &qword_27D9C0AB8, &qword_22C92A190);
    return 0;
  }

  else
  {
    v19 = sub_22C902F9C();

    (*(*(v18 - 8) + 8))(v3, v18);
  }

  return v19;
}

char *sub_22C8F76E0@<X0>(char *a1@<X0>, char **a2@<X8>)
{
  result = sub_22C8F4D3C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C8F7710()
{
  v1 = sub_22C9092DC();
  v83 = *(v1 - 8);
  v84 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v82 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v81 - v4;
  v6 = sub_22C9063DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v86 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9002EC();
  v87 = *(v9 - 1);
  v88 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v81 - v13;
  v15 = sub_22C90993C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v0;
  sub_22C90927C();
  v19 = sub_22C370B74(v14, 1, v15);
  v85 = v7;
  if (v19 == 1)
  {
    sub_22C36DD28(v14, &qword_27D9BC390, &qword_22C912AC0);
    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v81 = v5;
    v21 = v6;
    (*(v16 + 32))(v18, v14, v15);
    v22 = sub_22C9098BC();
    v24 = v23;
    sub_22C590270(0, 1, 1, MEMORY[0x277D84F90]);
    v20 = v25;
    v27 = *(v25 + 16);
    v26 = *(v25 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_22C590270(v26 > 1, v27 + 1, 1, v25);
      v20 = v77;
    }

    (*(v16 + 8))(v18, v15);
    *(v20 + 16) = v27 + 1;
    v28 = v20 + 16 * v27;
    *(v28 + 32) = v22;
    *(v28 + 40) = v24;
    v6 = v21;
    v5 = v81;
  }

  v29 = sub_22C9092CC();
  v30 = [v29 displayName];
  v31 = sub_22C90A11C();
  v33 = v32;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C590270(0, *(v20 + 16) + 1, 1, v20);
    v20 = v75;
  }

  v35 = *(v20 + 16);
  v34 = *(v20 + 24);
  if (v35 >= v34 >> 1)
  {
    sub_22C590270(v34 > 1, v35 + 1, 1, v20);
    v20 = v76;
  }

  *(v20 + 16) = v35 + 1;
  v36 = v20 + 16 * v35;
  *(v36 + 32) = v31;
  *(v36 + 40) = v33;
  v37 = [v29 nameComponents];
  if (v37)
  {
    v38 = v37;
    sub_22C9002CC();

    v39 = sub_22C9002AC();
    if (v40)
    {
      v41 = v39;
      v42 = v40;
      v44 = *(v20 + 16);
      v43 = *(v20 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_22C590270(v43 > 1, v44 + 1, 1, v20);
        v20 = v78;
      }

      *(v20 + 16) = v44 + 1;
      v45 = v20 + 16 * v44;
      *(v45 + 32) = v41;
      *(v45 + 40) = v42;
    }

    v46 = sub_22C9002BC();
    if (v47)
    {
      v48 = v46;
      v49 = v47;
      v51 = *(v20 + 16);
      v50 = *(v20 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_22C590270(v50 > 1, v51 + 1, 1, v20);
        v20 = v79;
      }

      *(v20 + 16) = v51 + 1;
      v52 = v20 + 16 * v51;
      *(v52 + 32) = v48;
      *(v52 + 40) = v49;
    }

    v53 = sub_22C9002DC();
    if (v54)
    {
      v55 = v53;
      v56 = v54;
      v58 = *(v20 + 16);
      v57 = *(v20 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_22C590270(v57 > 1, v58 + 1, 1, v20);
        v20 = v80;
      }

      (*(v87 + 8))(v11, v88);
      *(v20 + 16) = v58 + 1;
      v59 = v20 + 16 * v58;
      *(v59 + 32) = v55;
      *(v59 + 40) = v56;
    }

    else
    {
      (*(v87 + 8))(v11, v88);
    }
  }

  else
  {

    v60 = v86;
    sub_22C90405C();
    v61 = v83;
    v62 = v84;
    v63 = *(v83 + 16);
    v63(v5, v89, v84);
    v64 = sub_22C9063CC();
    v65 = sub_22C90AADC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v89 = v6;
      v67 = v66;
      v88 = swift_slowAlloc();
      v90 = v88;
      *v67 = 136315138;
      v63(v82, v5, v62);
      v68 = sub_22C90A1AC();
      v69 = v62;
      v71 = v70;
      (*(v61 + 8))(v5, v69);
      v72 = sub_22C36F9F4(v68, v71, &v90);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_22C366000, v64, v65, "No name components for %s?", v67, 0xCu);
      v73 = v88;
      sub_22C36FF94(v88);
      MEMORY[0x2318B9880](v73, -1, -1);
      MEMORY[0x2318B9880](v67, -1, -1);

      (*(v85 + 8))(v86, v89);
    }

    else
    {

      (*(v61 + 8))(v5, v62);
      (*(v85 + 8))(v60, v6);
    }

    return MEMORY[0x277D84F90];
  }

  return v20;
}

uint64_t sub_22C8F7E3C()
{
  v0 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v39 - v1;
  v3 = sub_22C90993C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90927C();
  if (sub_22C370B74(v2, 1, v3) == 1)
  {
    sub_22C36DD28(v2, &qword_27D9BC390, &qword_22C912AC0);
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = sub_22C9098BC();
    v10 = v9;
    sub_22C590270(0, 1, 1, MEMORY[0x277D84F90]);
    v7 = v11;
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_22C590270(v12 > 1, v13 + 1, 1, v11);
      v7 = v38;
    }

    (*(v4 + 8))(v6, v3);
    *(v7 + 16) = v13 + 1;
    v14 = v7 + 16 * v13;
    *(v14 + 32) = v8;
    *(v14 + 40) = v10;
  }

  v15 = sub_22C9092FC();
  v16 = sub_22C8F8EA4(v15);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590270(0, *(v7 + 16) + 1, 1, v7);
      v7 = v34;
    }

    v21 = *(v7 + 16);
    v20 = *(v7 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_22C590270(v20 > 1, v21 + 1, 1, v7);
      v7 = v35;
    }

    *(v7 + 16) = v21 + 1;
    v22 = v7 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
  }

  v23 = [v15 postalAddress];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
    v26 = [v25 stringFromPostalAddress_];
    v27 = sub_22C90A11C();
    v29 = v28;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590270(0, *(v7 + 16) + 1, 1, v7);
      v7 = v36;
    }

    v31 = *(v7 + 16);
    v30 = *(v7 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_22C590270(v30 > 1, v31 + 1, 1, v7);
      v7 = v37;
    }

    *(v7 + 16) = v31 + 1;
    v32 = v7 + 16 * v31;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
  }

  else
  {
  }

  return v7;
}

uint64_t sub_22C8F8194()
{
  v0 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v53 - v1;
  v3 = sub_22C90993C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90920C();
  if (sub_22C370B74(v2, 1, v3) == 1)
  {
    sub_22C36DD28(v2, &qword_27D9BC390, &qword_22C912AC0);
    v53 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = sub_22C9098BC();
    v9 = v8;
    sub_22C590270(0, 1, 1, MEMORY[0x277D84F90]);
    v11 = v10;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_22C590270(v12 > 1, v13 + 1, 1, v10);
      v11 = v52;
    }

    (*(v4 + 8))(v6, v3);
    *(v11 + 16) = v13 + 1;
    v53 = v11;
    v14 = v11 + 16 * v13;
    *(v14 + 32) = v7;
    *(v14 + 40) = v9;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v15 setNumberStyle_];
  [v15 setMinimumFractionDigits_];
  [v15 setMaximumFractionDigits_];
  v16 = sub_22C90921C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = HIDWORD(v16);
  v23 = HIWORD(v16);
  v24 = v18 >> 16;
  v25 = HIDWORD(v18);
  v26 = HIWORD(v18);
  v27 = HIWORD(v20);
  v28 = objc_allocWithZone(MEMORY[0x277CCA980]);
  v54 = v17;
  v55 = v22;
  v56 = v23;
  v57 = v19;
  v58 = v24;
  v59 = v25;
  v60 = v26;
  v61 = v21;
  v62 = v27;
  v29 = [v28 initWithDecimal_];
  v30 = [v15 stringFromNumber_];
  if (v30)
  {
    v31 = v30;
    v32 = sub_22C90A11C();
    v34 = v33;

    v35 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590270(0, *(v35 + 16) + 1, 1, v35);
      v35 = v48;
    }

    v37 = *(v35 + 16);
    v36 = *(v35 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_22C590270(v36 > 1, v37 + 1, 1, v35);
      v35 = v49;
    }

    *(v35 + 16) = v37 + 1;
    v38 = v35 + 16 * v37;
    *(v38 + 32) = v32;
    *(v38 + 40) = v34;
  }

  else
  {
    v35 = v53;
  }

  [v15 setNumberStyle_];
  v39 = [v15 stringFromNumber_];
  if (v39)
  {
    v40 = v39;
    v41 = sub_22C90A11C();
    v43 = v42;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590270(0, *(v35 + 16) + 1, 1, v35);
      v35 = v50;
    }

    v45 = *(v35 + 16);
    v44 = *(v35 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_22C590270(v44 > 1, v45 + 1, 1, v35);
      v35 = v51;
    }

    *(v35 + 16) = v45 + 1;
    v46 = v35 + 16 * v45;
    *(v46 + 32) = v41;
    *(v46 + 40) = v43;
  }

  else
  {
  }

  return v35;
}

uint64_t sub_22C8F85BC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v0 setUnitStyle_];
  sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  v1 = sub_22C8FFF7C();
  v2 = [v0 stringFromMeasurement_];

  v3 = sub_22C90A11C();
  v5 = v4;

  sub_22C590270(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = v6;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_22C590270(v8 > 1, v9 + 1, 1, v6);
    v7 = v28;
  }

  *(v7 + 16) = v9 + 1;
  v10 = v7 + 16 * v9;
  *(v10 + 32) = v3;
  *(v10 + 40) = v5;
  [v0 setUnitStyle_];
  v11 = sub_22C8FFF7C();
  v12 = [v0 stringFromMeasurement_];

  v13 = sub_22C90A11C();
  v15 = v14;

  v17 = *(v7 + 16);
  v16 = *(v7 + 24);
  if (v17 >= v16 >> 1)
  {
    sub_22C590270(v16 > 1, v17 + 1, 1, v7);
    v7 = v29;
  }

  *(v7 + 16) = v17 + 1;
  v18 = v7 + 16 * v17;
  *(v18 + 32) = v13;
  *(v18 + 40) = v15;
  [v0 setUnitStyle_];
  v19 = sub_22C8FFF7C();
  v20 = [v0 stringFromMeasurement_];

  v21 = sub_22C90A11C();
  v23 = v22;

  v25 = *(v7 + 16);
  v24 = *(v7 + 24);
  if (v25 >= v24 >> 1)
  {
    sub_22C590270(v24 > 1, v25 + 1, 1, v7);
    v7 = v30;
  }

  *(v7 + 16) = v25 + 1;
  v26 = v7 + 16 * v25;
  *(v26 + 32) = v21;
  *(v26 + 40) = v23;

  return v7;
}

uint64_t sub_22C8F87F4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  v1 = sub_22C9005AC();
  v2 = [v0 stringFromDate_];

  v3 = sub_22C90A11C();
  v5 = v4;

  sub_22C590270(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = v6;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_22C590270(v8 > 1, v9 + 1, 1, v6);
    v7 = v45;
  }

  *(v7 + 16) = v9 + 1;
  v10 = v7 + 16 * v9;
  *(v10 + 32) = v3;
  *(v10 + 40) = v5;
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v11 setDateStyle_];
  v12 = sub_22C9005AC();
  v13 = [v11 stringFromDate_];

  v14 = sub_22C90A11C();
  v16 = v15;

  v18 = *(v7 + 16);
  v17 = *(v7 + 24);
  if (v18 >= v17 >> 1)
  {
    sub_22C590270(v17 > 1, v18 + 1, 1, v7);
    v7 = v46;
  }

  *(v7 + 16) = v18 + 1;
  v19 = v7 + 16 * v18;
  *(v19 + 32) = v14;
  *(v19 + 40) = v16;
  v20 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v20 setDateStyle_];
  v21 = sub_22C9005AC();
  v22 = [v20 stringFromDate_];

  v23 = sub_22C90A11C();
  v25 = v24;

  v27 = *(v7 + 16);
  v26 = *(v7 + 24);
  if (v27 >= v26 >> 1)
  {
    sub_22C590270(v26 > 1, v27 + 1, 1, v7);
    v7 = v47;
  }

  *(v7 + 16) = v27 + 1;
  v28 = v7 + 16 * v27;
  *(v28 + 32) = v23;
  *(v28 + 40) = v25;
  v29 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v29 setDateStyle_];
  v30 = sub_22C9005AC();
  v31 = [v29 stringFromDate_];

  v32 = sub_22C90A11C();
  v34 = v33;

  v36 = *(v7 + 16);
  v35 = *(v7 + 24);
  if (v36 >= v35 >> 1)
  {
    sub_22C590270(v35 > 1, v36 + 1, 1, v7);
    v7 = v48;
  }

  *(v7 + 16) = v36 + 1;
  v37 = v7 + 16 * v36;
  *(v37 + 32) = v32;
  *(v37 + 40) = v34;
  sub_22C90063C();
  sub_22C8F8E40(&qword_27D9C1598, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v38 = sub_22C90B47C();
  v40 = v39;
  v42 = *(v7 + 16);
  v41 = *(v7 + 24);
  if (v42 >= v41 >> 1)
  {
    sub_22C590270(v41 > 1, v42 + 1, 1, v7);
    v7 = v49;
  }

  *(v7 + 16) = v42 + 1;
  v43 = v7 + 16 * v42;
  *(v43 + 32) = v38;
  *(v43 + 40) = v40;
  return v7;
}

uint64_t sub_22C8F8B6C()
{
  type metadata accessor for TypedValueFormatterError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v0);
  sub_22C369838();
  v3 = v2 - v1;
  v4 = sub_22C36BBCC();
  sub_22C8F9048(v4, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_22C90931C();
    v7 = 1;
  }

  else
  {
    v6 = sub_22C9093BC();
    v7 = 0;
  }

  (*(*(v6 - 8) + 8))(v3);
  return v7;
}

uint64_t sub_22C8F8C40(uint64_t a1)
{
  v2 = sub_22C8F8E40(&qword_27D9C15C0, type metadata accessor for TypedValueFormatterError, &unk_22C92DD8C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C8F8CAC(uint64_t a1)
{
  v2 = sub_22C8F8E40(&qword_27D9C15C0, type metadata accessor for TypedValueFormatterError, &unk_22C92DD8C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C8F8D38()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setMinimumFractionDigits_];
  [v0 setMaximumFractionDigits_];
  [v0 setNumberStyle_];
  v1 = sub_22C90A83C();
  v2 = [v0 stringFromNumber_];

  if (v2)
  {
    v3 = sub_22C90A11C();
  }

  else
  {

    return 6369134;
  }

  return v3;
}

uint64_t sub_22C8F8E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C8F8EA4(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22C90A11C();

  return v3;
}

void sub_22C8F8F08(uint64_t a1)
{
  sub_22C8F8FB4(319, &qword_27D9C15B0, MEMORY[0x277D72A78]);
  if (v1 <= 0x3F)
  {
    sub_22C8F8FB4(319, &qword_27D9C15B8, MEMORY[0x277D729D8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C8F8FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22C8F9048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypedValueFormatterError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8F90D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22C90931C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C90919C();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  v17 = sub_22C9093BC();
  sub_22C369824();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  (*(v19 + 16))(v22 - v21, a1, v17);
  v23 = sub_22C37493C();
  v25 = v24(v23);
  if (v25 == *MEMORY[0x277D72A58])
  {
    v26 = sub_22C37493C();
    v27(v26);
    v28 = swift_projectBox();
    (*(v5 + 16))(v9, v28, v3);
    v29 = (*(v5 + 88))(v9, v3);
    v30 = *MEMORY[0x277D729A0];
    type metadata accessor for TypedValueSalientContent(0);
    swift_storeEnumTagMultiPayload();
    if (v29 != v30)
    {
      (*(v5 + 8))(v9, v3);
    }
  }

  if (v25 == *MEMORY[0x277D72A38])
  {
    v31 = sub_22C37493C();
    v32(v31);
    v33 = swift_projectBox();
    (*(v12 + 16))(v16, v33, v10);
    sub_22C8F9454(v16, MEMORY[0x277D84F90], a2);
    (*(v12 + 8))(v16, v10);
  }

  type metadata accessor for TypedValueSalientContent(0);
  swift_storeEnumTagMultiPayload();
  v35 = sub_22C37493C();
  return v36(v35);
}

uint64_t type metadata accessor for TypedValueSalientContent(uint64_t a1)
{
  result = qword_27D9C15C8;
  if (!qword_27D9C15C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C8F9454@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v96 = a2;
  v105 = a3;
  sub_22C9063DC();
  sub_22C369824();
  v101 = v5;
  v102 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v98 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v95 = &v92 - v9;
  v10 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v92 - v11;
  v13 = sub_22C90993C();
  sub_22C369824();
  v100 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v99 = (v17 - v16);
  sub_22C90919C();
  sub_22C369824();
  v103 = v19;
  v104 = v18;
  MEMORY[0x28223BE20](v18);
  sub_22C369ABC();
  v22 = v20 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v97 = &v92 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v94 = &v92 - v27;
  MEMORY[0x28223BE20](v26);
  v93 = &v92 - v28;
  v29 = sub_22C3A5908(&qword_27D9BFFB0, &qword_22C925C40);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v92 - v30;
  v32 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  MEMORY[0x28223BE20](v32);
  sub_22C369ABC();
  v35 = (v33 - v34);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v92 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v92 - v40;
  v42 = *(sub_22C90914C() + 16);

  if (v42 == 1)
  {
    v43 = sub_22C90914C();
    sub_22C58B9B4(v43, v31);

    if (sub_22C370B74(v31, 1, v32) != 1)
    {
      sub_22C8F9EC8(v31, v41);
      sub_22C8F9F38(v41, v39);

      v61 = *(v32 + 48);
      v62 = sub_22C9093BC();
      v63 = *(v62 - 8);
      if ((*(v63 + 88))(&v39[v61], v62) == *MEMORY[0x277D72A38])
      {
        (*(v63 + 96))(&v39[v61], v62);
        v64 = swift_projectBox();
        v65 = v93;
        (*(v103 + 16))(v93, v64, v104);

        sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22C90F800;
        sub_22C8F9F38(v41, v35);
        v67 = *(v35 + 1);
        v68 = *(v32 + 48);
        *(inited + 32) = *v35;
        *(inited + 40) = v67;
        (*(v63 + 8))(&v35[v68], v62);
        v106[0] = v96;

        sub_22C3CC46C(inited);
        sub_22C8F9454(v65, v106[0], v105);

        v69 = sub_22C37493C();
        v70(v69);
        return sub_22C3770B0(v41, &qword_27D9BADA0, &unk_22C90FA80);
      }

      v84 = *(v63 + 8);
      v84(&v39[v61], v62);
      v104 = *(sub_22C3A5908(&qword_27D9C0D58, &unk_22C92B1E0) + 48);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v85 = swift_initStackObject();
      *(v85 + 16) = xmmword_22C90F800;
      sub_22C8F9F38(v41, v35);
      v86 = *(v35 + 1);
      v87 = *(v32 + 48);
      *(v85 + 32) = *v35;
      *(v85 + 40) = v86;
      v84(&v35[v87], v62);
      v106[0] = v96;

      sub_22C3CC46C(v85);
      sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      sub_22C3F035C();
      v88 = sub_22C90A04C();
      v90 = v89;

      v91 = v105;
      *v105 = v88;
      v91[1] = v90;
      sub_22C8F9EC8(v41, v35);

      (*(v63 + 32))(v91 + v104, &v35[*(v32 + 48)], v62);
      type metadata accessor for TypedValueSalientContent(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_22C3770B0(v31, &qword_27D9BFFB0, &qword_22C925C40);
  }

  sub_22C90915C();
  if (sub_22C370B74(v12, 1, v13) == 1)
  {
    sub_22C3770B0(v12, &qword_27D9BC390, &qword_22C912AC0);
    v44 = v98;
    sub_22C90405C();
    v46 = v103;
    v45 = v104;
    v47 = *(v103 + 16);
    v47(v22, a1, v104);
    v48 = sub_22C9063CC();
    v49 = sub_22C90AACC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v106[0] = v100;
      *v50 = 136642819;
      v47(v97, v22, v45);
      v51 = sub_22C90A1AC();
      v53 = v52;
      (*(v46 + 8))(v22, v45);
      v54 = sub_22C36F9F4(v51, v53, v106);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_22C366000, v48, v49, "Entity %{sensitive}s does not have a display representation", v50, 0xCu);
      sub_22C36FF94(v100);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v46 + 8))(v22, v45);
    }

    (*(v101 + 8))(v44, v102);
LABEL_20:
    type metadata accessor for TypedValueSalientContent(0);
    return swift_storeEnumTagMultiPayload();
  }

  v55 = v99;
  v56 = v100[4];
  v56(v99, v12, v13);
  v57 = sub_22C9098BC();
  v59 = v58;

  v60 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v60 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v60)
  {
    v98 = v13;
    v72 = v95;
    sub_22C90405C();
    v74 = v103;
    v73 = v104;
    v75 = *(v103 + 16);
    v76 = v94;
    v75(v94, a1, v104);
    v77 = sub_22C9063CC();
    v78 = sub_22C90AACC();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v106[0] = v96;
      *v79 = 136642819;
      v75(v97, v76, v73);
      v80 = sub_22C90A1AC();
      v82 = v81;
      (*(v74 + 8))(v76, v73);
      v83 = sub_22C36F9F4(v80, v82, v106);

      *(v79 + 4) = v83;
      _os_log_impl(&dword_22C366000, v77, v78, "Entity %{sensitive}s has an empty display representation title", v79, 0xCu);
      sub_22C36FF94(v96);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      (*(v74 + 8))(v76, v73);
    }

    (*(v101 + 8))(v72, v102);
    (v100[1])(v99, v98);
    goto LABEL_20;
  }

  v56(v105, v55, v13);
  type metadata accessor for TypedValueSalientContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22C8F9EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8F9F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C8F9FA8(uint64_t a1)
{
  sub_22C90993C();
  if (v1 <= 0x3F)
  {
    sub_22C8FA01C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C8FA01C(uint64_t a1)
{
  if (!qword_27D9C15D8[0])
  {
    sub_22C9093BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_27D9C15D8);
    }
  }
}

uint64_t Bool.init(level:)(void *a1)
{
  if ([a1 levelOneOfCase] == 10)
  {
    v2 = [a1 BOOLeanValue];
  }

  else
  {

    return 2;
  }

  return v2;
}

uint64_t sub_22C8FA0E4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Bool.init(level:)(a1);
  *a2 = result;
  return result;
}

uint64_t Int.init(level:)(void *a1)
{
  if ([a1 levelOneOfCase] == 13)
  {
    v2 = [a1 longValue];
  }

  else if ([a1 levelOneOfCase] == 12)
  {
    LODWORD(v2) = [a1 intValue];

    return v2;
  }

  else
  {

    return 0;
  }

  return v2;
}

id sub_22C8FA1A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = Int.init(level:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t Float.init(level:)(void *a1)
{
  if ([a1 levelOneOfCase] == 15)
  {
    [a1 doubleValue];
    v3 = v2;

    v4 = v3;
  }

  else
  {
    if ([a1 levelOneOfCase] != 14)
    {

      v7 = 0;
      v6 = 1;
      return v7 | (v6 << 32);
    }

    [a1 floatValue];
    v4 = v5;
  }

  v6 = 0;
  v7 = LODWORD(v4);
  return v7 | (v6 << 32);
}

unint64_t sub_22C8FA29C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = Float.init(level:)(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_22C8FA2E0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C8FA360(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_22C370B74((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_22C8FA4E0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 16] & ~v10;

            sub_22C36C640(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_22C8FA744(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[8];
  sub_22C374168(v1 + 4, v1[7]);
  v5 = v1[3];
  v23 = v1[2];
  v6 = (*(v4 + 24))();
  v7 = v6;
  if (v6)
  {
    v22 = [v6 deploymentId];

    v8 = [v7 experimentId];
    v9 = sub_22C90A11C();
    v20 = v10;
    v21 = v9;

    v11 = [v7 treatmentId];
    v12 = sub_22C90A11C();
    v14 = v13;

    v15 = v7;
  }

  else
  {

    v15 = 0;
    v12 = 0;
    v14 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  v16 = v7 == 0;
  v18 = v2[7];
  v17 = v2[8];
  sub_22C374168(v2 + 4, v18);
  v19 = (*(v17 + 32))(v23, v5, v18, v17);

  *a1 = v23;
  *(a1 + 8) = v5;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = v22;
  *(a1 + 56) = v16;
  *(a1 + 60) = v19;
}

id sub_22C8FA924(uint64_t a1)
{
  v2 = sub_22C90A0EC();
  v3 = [v1 experimentIdentifiersWithNamespaceName_];

  return v3;
}

uint64_t sub_22C8FA994(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_22C8FA9E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_22C8FAA5C(uint64_t a1)
{
  v2 = sub_22C90A0EC();
  v3 = [v1 compatibilityVersionWithNamespaceName_];

  return v3;
}

uint64_t sub_22C8FAAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_22C7FB53C(a3, v24 - v10);
  v12 = sub_22C90A75C();
  v13 = sub_22C370B74(v11, 1, v12);

  if (v13 == 1)
  {
    sub_22C3FC848(v11);
  }

  else
  {
    sub_22C90A74C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22C90A6DC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22C90A1EC() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t static AutoBugCaptureHelper.snapshot(caseType:subType:subTypeContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  sub_22C90A73C();
  v15 = sub_22C90A75C();
  sub_22C36C640(v14, 0, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  v16[8] = a5;
  v16[9] = a6;

  sub_22C8FAAA0(0, 0, v14, &unk_22C92DF70, v16);

  return sub_22C3FC848(v14);
}

uint64_t sub_22C8FAE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_22C9063DC();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C8FAF34, 0, 0);
}

uint64_t sub_22C8FAF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v52 = v14;
  v16 = v14[6];
  v15 = v14[7];
  v18 = v14[4];
  v17 = v14[5];
  v20 = v14[2];
  v19 = v14[3];
  v51[0] = 0;
  v51[1] = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD000000000000012, 0x800000022C93A440);
  MEMORY[0x2318B7850](0xD000000000000010, 0x800000022C93A400);
  MEMORY[0x2318B7850](0x3D6570797420, 0xE600000000000000);
  MEMORY[0x2318B7850](v20, v19);
  MEMORY[0x2318B7850](0x6570795462757320, 0xE90000000000003DLL);
  MEMORY[0x2318B7850](v18, v17);
  MEMORY[0x2318B7850](0xD000000000000010, 0x800000022C93A460);
  MEMORY[0x2318B7850](v16, v15);
  MEMORY[0x2318B7850](46, 0xE100000000000000);
  v14[12] = 0xE000000000000000;
  v21 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v14[13] = v21;
  sub_22C9040AC();

  v22 = sub_22C9063CC();
  LOBYTE(v19) = sub_22C90AACC();

  v23 = os_log_type_enabled(v22, v19);
  v24 = v14[11];
  v26 = v14[8];
  v25 = v14[9];
  if (v23)
  {
    swift_slowAlloc();
    v27 = sub_22C372014();
    v51[0] = v27;
    *v21 = 136315138;
    *(v21 + 4) = sub_22C36F9F4(0, 0xE000000000000000, v51);
    sub_22C36CB64(&dword_22C366000, v28, v29, "Taking an AutoBugCapture snapshot for %s");
    sub_22C36FF94(v27);
    sub_22C3699EC();
    v21 = v49;
    sub_22C3699EC();
  }

  v30 = *(v25 + 8);
  v30(v24, v26);
  v31 = sub_22C8FBDB8(0xD000000000000010, 0x800000022C93A400, v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], 0xD000000000000011, 0x800000022C93A420, 0, v21);
  if (v31 && (v32 = v31, v51[0] = 0, sub_22C909EBC(), v32, v33 = v51[0], v14[14] = v51[0], v33))
  {
    v34 = swift_task_alloc();
    v14[15] = v34;
    v34[2] = v21;
    v34[3] = v33;
    v34[4] = 0x4000000000000000;
    v34[5] = 0;
    v34[6] = 0xE000000000000000;
    v35 = swift_task_alloc();
    v14[16] = v35;
    *v35 = v14;
    v35[1] = sub_22C8FB438;
    v36 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v35, 0, 0, 0xD00000000000002ALL, 0x800000022C93A480, sub_22C8FBEB4, v34, v36, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_22C9040AC();

    v37 = sub_22C9063CC();
    v38 = sub_22C90AADC();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v14[10];
    v41 = v14[8];
    if (v39)
    {
      swift_slowAlloc();
      v50 = v30;
      v42 = sub_22C372014();
      v51[0] = v42;
      *v21 = 136315138;
      v43 = v40;
      v44 = sub_22C36F9F4(0, 0xE000000000000000, v51);

      *(v21 + 4) = v44;
      sub_22C36CB64(&dword_22C366000, v45, v46, "Failed to create AutoBugCapture signature for %s");
      sub_22C36FF94(v42);
      sub_22C3699EC();
      sub_22C3699EC();

      v50(v43, v41);
    }

    else
    {

      v30(v40, v41);
    }

    sub_22C369A24();

    return v47();
  }
}

uint64_t sub_22C8FB438()
{
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_22C8FB588, 0, 0);
}

uint64_t sub_22C8FB588()
{

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C8FB5F4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  v11 = sub_22C36D860(v10);
  *v11 = v12;
  v11[1] = sub_22C889794;

  return sub_22C8FAE58(a1, v3, v4, v5, v6, v7, v8, v9);
}

_BYTE *storeEnumTagSinglePayload for AutoBugCaptureHelper(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_22C8FB784(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = sub_22C3A5908(&qword_27D9BBB28, &qword_22C910DF0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = aBlock - v14;
  (*(v13 + 16))(aBlock - v14, a1, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  (*(v13 + 32))(v17 + v16, v15, v12);
  aBlock[4] = sub_22C8FBEC4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22C8FBC90;
  aBlock[3] = &unk_283FC3F38;
  v18 = _Block_copy(aBlock);

  sub_22C8FBF5C(a3, 0, 0, v18, a2, a6);
  _Block_release(v18);
}

uint64_t sub_22C8FB96C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[1] = a4;
  v7 = sub_22C9063DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  sub_22C9040AC();

  v14 = sub_22C9063CC();
  v15 = sub_22C90AACC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29[0] = v8;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_22C36F9F4(a2, a3, &v30);
    _os_log_impl(&dword_22C366000, v14, v15, "Done with AutoBugCapture for %s.", v17, 0xCu);
    sub_22C36FF94(v18);
    MEMORY[0x2318B9880](v18, -1, -1);
    v19 = v17;
    v8 = v29[0];
    MEMORY[0x2318B9880](v19, -1, -1);
  }

  v20 = *(v8 + 8);
  v20(v13, v7);
  sub_22C9040AC();

  v21 = sub_22C9063CC();
  v22 = sub_22C90AACC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29[2] = a1;
    v30 = v24;
    *v23 = 136315138;

    sub_22C3A5908(&qword_27D9C1668, &unk_22C92DFB0);
    v25 = sub_22C90A1AC();
    v27 = sub_22C36F9F4(v25, v26, &v30);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_22C366000, v21, v22, "AutoBugCapture Response: %s", v23, 0xCu);
    sub_22C36FF94(v24);
    MEMORY[0x2318B9880](v24, -1, -1);
    MEMORY[0x2318B9880](v23, -1, -1);
  }

  v20(v11, v7);
  sub_22C3A5908(&qword_27D9BBB28, &qword_22C910DF0);
  return sub_22C90A6EC();
}

uint64_t sub_22C8FBC90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_22C909ECC();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_22C8FBD20()
{
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36AC74(v1);

  return v4(v3);
}

id sub_22C8FBDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v12 = sub_22C90A0EC();
  v13 = sub_22C90A0EC();
  v14 = sub_22C90A0EC();
  v15 = sub_22C90A0EC();
  v16 = sub_22C90A0EC();
  v17 = [a12 signatureWithDomain:v12 type:v13 subType:v14 subtypeContext:v15 detectedProcess:v16 triggerThresholdValues:a11];

  return v17;
}

uint64_t sub_22C8FBEC4(uint64_t a1)
{
  v3 = *(sub_22C3A5908(&qword_27D9BBB28, &qword_22C910DF0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_22C8FB96C(a1, v4, v5, v6);
}

uint64_t sub_22C8FBF44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_22C8FBF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v11 = sub_22C909EAC();
  v12 = [a5 snapshotWithSignature:v11 duration:a2 event:a3 payload:a4 reply:a6];

  return v12;
}

uint64_t sub_22C8FBFF8()
{
  v0 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22C90064C();

  return sub_22C90623C();
}

uint64_t sub_22C8FC0C0(int a1, uint64_t a2, _OWORD *a3)
{
  v120 = a1;
  v126 = sub_22C9063DC();
  sub_22C369824();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  sub_22C36D234(&v103 - v11);
  v12 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  sub_22C369914(v12);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36D234(&v103 - v14);
  v15 = sub_22C3A5908(&qword_27D9C1670, &qword_22C92DFE8);
  sub_22C369914(v15);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C36D234(&v103 - v17);
  v18 = sub_22C3A5908(&qword_27D9BFD68, &qword_22C9254F0);
  sub_22C369914(v18);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v19);
  v21 = &v103 - v20;
  v109 = sub_22C90531C();
  sub_22C369824();
  v108 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C3698A8();
  sub_22C36D234(v24);
  v110 = sub_22C904D9C();
  sub_22C369824();
  v116 = v25;
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  sub_22C36D234(v27);
  v115 = sub_22C90504C();
  sub_22C369824();
  v114 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  sub_22C36D234(v30);
  v31 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v31);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v32);
  v33 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v33);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  sub_22C36D234(&v103 - v35);
  v113 = sub_22C904FBC();
  sub_22C369824();
  v112 = v36;
  MEMORY[0x28223BE20](v37);
  sub_22C3698A8();
  sub_22C36D234(v38);
  swift_beginAccess();
  v39 = sub_22C633A20();
  swift_endAccess();
  if (!v39)
  {
    goto LABEL_8;
  }

  v40 = sub_22C8FCE1C(v39);
  if (!v41)
  {
    goto LABEL_8;
  }

  *&v123[0] = v40;
  *(&v123[0] + 1) = v41;
  v42 = "82AEB74E-8E20-4755-94E3-1005E5DD68B0";
  if (v120)
  {
    v42 = "5F32C9B8-AF70-6965-A282-A9BA8D882D77";
  }

  v104 = a3;
  v43 = v6;
  v44 = v21;
  v45 = (v42 - 32) | 0x8000000000000000;
  v121[0] = 0xD000000000000024;
  v121[1] = v45;
  sub_22C3858B4();
  v46 = sub_22C90AD8C();

  v103 = v45;
  v47 = v44;
  v6 = v43;
  v48 = v104;

  if (v46)
  {
    v49 = v48[6];
    v123[0] = v48[5];
    v123[1] = v49;
    v50 = v48[8];
    v124 = v48[7];
    v125 = v50;
    sub_22C9061CC();
    sub_22C8FCE8C(v123, v121);
    sub_22C760A9C();
    sub_22C90620C();
    if (v3)
    {
      return sub_22C8FCEFC(v123);
    }

    else
    {
      v55 = v118;
      sub_22C904FAC();
      v56 = v105;
      sub_22C90068C();
      v57 = sub_22C90069C();
      sub_22C36C640(v56, 0, 1, v57);
      sub_22C904F9C();
      v58 = sub_22C90625C();
      MEMORY[0x28223BE20](v58);
      sub_22C369920();
      *(v59 - 16) = v60;
      sub_22C36A644(v61, v62);
      v63 = sub_22C8FCFC8();
      sub_22C36C640(v63, v64, v65, v58);
      sub_22C904F8C();
      sub_22C90503C();
      sub_22C372F88();
      sub_22C904D8C();
      LOBYTE(v121[0]) = *(&v123[0] + 1) == 1;
      sub_22C904D7C();
      sub_22C904D4C();
      if (*(&v123[0] + 1) != 1)
      {
      }

      sub_22C904D5C();
      v66 = v110;
      if (*(&v123[0] + 1) != 1)
      {
      }

      v67 = sub_22C904D6C();
      if (*(&v123[0] + 1) != 1)
      {
        v55 = *(&v124 + 1);
        v68 = v124;

        v69 = sub_22C8FCEFC(v123);
        if (v55)
        {
          MEMORY[0x28223BE20](v69);
          sub_22C369920();
          *(v70 - 16) = v68;
          *(v70 - 8) = v55;
          sub_22C36A644(v71, v72);

          v66 = v110;
          v73 = sub_22C8FCFC8();
          sub_22C36C640(v73, v74, v75, v58);
          sub_22C372F88();
          v67 = sub_22C904D3C();
        }

        else
        {
          sub_22C372F88();
        }
      }

      MEMORY[0x28223BE20](v67);
      sub_22C369920();
      *(v76 - 16) = v120 & 1;
      sub_22C36A644(v77, v78);
      v79 = sub_22C8FCFC8();
      sub_22C36C640(v79, v80, v81, v58);
      v82 = v119;
      sub_22C90502C();
      sub_22C3A5908(&qword_27D9C1678, qword_22C92DFF0);
      v83 = v116;
      v84 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_22C90F800;
      (*(v83 + 16))(v85 + v84, v55, v66);
      sub_22C90501C();
      sub_22C90530C();
      v86 = v113;
      (*(v112 + 16))(v47, v118, v113);
      sub_22C36C640(v47, 0, 1, v86);
      sub_22C904C8C();
      v87 = v115;
      (*(v114 + 16))(v106, v82, v115);
      v88 = sub_22C8FCFC8();
      sub_22C36C640(v88, v89, v90, v87);
      sub_22C90509C();
      v91 = v107;
      sub_22C90621C();
      v92 = sub_22C90622C();
      sub_22C36C640(v91, 0, 1, v92);
      sub_22C9052FC();
      v93 = v111;
      sub_22C903FAC();
      v94 = sub_22C9063CC();
      v95 = sub_22C90AACC();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v121[0] = v97;
        *v96 = 136315138;
        v55 = sub_22C36F9F4(0xD000000000000024, v103, v121);

        *(v96 + 4) = v55;
        sub_22C372F88();
        _os_log_impl(&dword_22C366000, v94, v95, "Emitting triggered log for codepathid %s", v96, 0xCu);
        sub_22C36FF94(v97);
        MEMORY[0x2318B9880](v97, -1, -1);
        MEMORY[0x2318B9880](v96, -1, -1);

        (*(v6 + 8))(v111, v126);
      }

      else
      {

        (*(v6 + 8))(v93, v126);
      }

      sub_22C374168(v122, v122[3]);
      v98 = v117;
      sub_22C9062BC();
      sub_22C36FB04();
      v99(v98, v109);
      sub_22C36FB04();
      v100(v55, v66);
      sub_22C36FB04();
      v101(v119, v115);
      sub_22C36FB04();
      v102(v118, v113);
      return sub_22C36FF94(v122);
    }
  }

  else
  {
LABEL_8:
    sub_22C903FAC();
    v52 = sub_22C9063CC();
    v53 = sub_22C90AACC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_22C366000, v52, v53, "Not emitting triggered log as the device is not enrolled in an experiment with the necessary codepathid", v54, 2u);
      MEMORY[0x2318B9880](v54, -1, -1);
    }

    return (*(v6 + 8))(v10, v126);
  }
}

uint64_t sub_22C8FCC84(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_22C90069C();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  sub_22C36C640(v5, 0, 1, v6);
  return sub_22C90623C();
}

uint64_t sub_22C8FCD70(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22C90064C();
  return sub_22C90623C();
}

uint64_t sub_22C8FCE1C(void *a1)
{
  v2 = [a1 stringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90A11C();

  return v3;
}

uint64_t sub_22C8FCE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BFA68, &unk_22C923C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C8FCEFC(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BFA68, &unk_22C923C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlannerServiceContext.init(contextId:planCycleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C90069C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for PlannerServiceContext(0) + 20);

  return sub_22C3CB76C(a2, v7);
}

uint64_t type metadata accessor for PlannerServiceContext(uint64_t a1)
{
  result = qword_27D9C1680;
  if (!qword_27D9C1680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlannerService.description.getter()
{
  swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  return sub_22C90A1AC();
}

uint64_t PlannerServiceContext.contextId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C90069C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlannerServiceContext.planCycleId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PlannerServiceContext(0) + 20);

  return sub_22C59F604(v3, a1);
}

uint64_t dispatch thunk of PlannerService.handle(_:plannerServiceContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C3CC1B8;

  return v11(a1, a2, a3, a4);
}

void sub_22C8FD2F4(uint64_t a1)
{
  sub_22C90069C();
  if (v1 <= 0x3F)
  {
    sub_22C7AC60C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t ToolboxResources.makeQueryableToolbox(toolkitCache:)(uint64_t a1)
{
  v16[1] = a1;
  v1 = sub_22C908AEC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v5 = v4 - v3;
  v6 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  type metadata accessor for FullPlannerToolboxDelegate(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  sub_22C90647C();
  sub_22C36985C();
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C9071BC();
  sub_22C90646C();
  FullPlannerPreferences.init()(v12);
  v14 = sub_22C90046C();
  sub_22C36C640(v8, 1, 1, v14);
  (*(v2 + 16))(v5, v16[0] + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox, v1);
  sub_22C8FD5AC();

  return sub_22C90719C();
}

unint64_t sub_22C8FD5AC()
{
  result = qword_281435170[0];
  if (!qword_281435170[0])
  {
    type metadata accessor for FullPlannerToolboxDelegate(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281435170);
  }

  return result;
}

uint64_t ToolboxResources.init(toolbox:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  sub_22C908AEC();
  sub_22C36985C();
  (*(v4 + 32))(v1 + v3, a1);
  return v1;
}

uint64_t ToolboxResources.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  sub_22C908AEC();
  sub_22C36985C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_22C8FD6CC(uint64_t a1)
{
  result = sub_22C908AEC();
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

id sub_22C8FD800(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x73656C707574 && a2 == 0xE600000000000000;
  if (v3 || (sub_22C90B4FC() & 1) != 0)
  {
    v6 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v8 = a1 == 0x6F43656369766564 && a2 == 0xED0000747865746ELL;
  if (v8 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  sub_22C8FE71C();
  v10 = a1 == 0xD000000000000015 && v9 == a2;
  if (v10 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 32;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  sub_22C8FE71C();
  v12 = a1 == 0xD00000000000001CLL && v11 == a2;
  if (v12 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 40;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  sub_22C8FE71C();
  v14 = a1 == 0xD00000000000001BLL && v13 == a2;
  if (v14 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 48;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  sub_22C8FE71C();
  v16 = a1 == 0xD000000000000010 && v15 == a2;
  if (v16 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 56;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v17 = a1 == 0x6576654C6B736972 && a2 == 0xE90000000000006CLL;
  if (v17 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 64;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v18 = a1 == 0x74616469646E6163 && a2 == 0xEE006B7369725F65;
  if (v18 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 72;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  sub_22C8FE71C();
  v20 = a1 == 0xD000000000000010 && v19 == a2;
  if (v20 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 80;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v21 = a1 == 0x6574656D61726170 && a2 == 0xED0000656D614E72;
  if (v21 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 88;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v22 = a1 == 0x5079646165726C61 && a2 == 0xEF646574706D6F72;
  if (v22 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 96;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v23 = a1 == 0x766C6F7365527369 && a2 == 0xEA00000000006465;
  if (v23 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 104;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v24 = a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074;
  if (v24 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {
    v6 = 112;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_22C8FDB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  *(v11 + 64) = a7;
  *(v11 + 72) = a8;
  *(v11 + 80) = a9;
  *(v11 + 96) = a10;
  *(v11 + 112) = a11;
  return v11;
}

uint64_t sub_22C8FDC40()
{
  sub_22C8FDBC0();

  return swift_deallocClassInstance();
}

void sub_22C8FDCAC()
{
  v0 = sub_22C90A0EC();
  v1 = sub_22C378A34(v0, sel_featureValueForName_);

  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = [v1 multiArrayValue];

  if (!v2)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_22C8FDD60()
{
  v0 = sub_22C90A0EC();
  v1 = sub_22C378A34(v0, sel_featureValueForName_);

  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = [v1 multiArrayValue];

  if (!v2)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_22C8FDE20()
{
  v0 = sub_22C90A0EC();
  v1 = sub_22C378A34(v0, sel_featureValueForName_);

  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = [v1 multiArrayValue];

  if (!v2)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_22C8FDED0(uint64_t a1)
{
  v1 = sub_22C90A0EC();
  v2 = sub_22C378A34(v1, sel_featureValueForName_);

  if (!v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = [v2 multiArrayValue];

  if (!v3)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_22C8FDFB4()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_22C90A8BC();

  return v2;
}

id sub_22C8FE00C(uint64_t a1)
{
  v1 = sub_22C90A0EC();
  v2 = sub_22C378A34(v1, sel_featureValueForName_);

  return v2;
}

id sub_22C8FE06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_22C90A11C();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_22C8FE0E8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C92E0F0;
  *(inited + 32) = 0x64496E6F69746361;
  *(inited + 40) = 0xE800000000000000;
  v38 = a1;
  v15 = [objc_opt_self() featureValueWithMultiArray_];
  v16 = sub_22C8FE6D8();
  *(inited + 48) = v15;
  *(inited + 72) = v16;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000022C93A720;
  v17 = sub_22C36A668();
  *(inited + 96) = [v17 v18];
  *(inited + 120) = v16;
  strcpy((inited + 128), "shadowActionId");
  *(inited + 143) = -18;
  v19 = sub_22C36A668();
  *(inited + 144) = [v19 v20];
  *(inited + 168) = v16;
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x800000022C93A700;
  v21 = sub_22C36A668();
  *(inited + 192) = [v21 v22];
  *(inited + 216) = v16;
  *(inited + 224) = 0x73676E696B6E6172;
  *(inited + 232) = 0xE800000000000000;
  v23 = sub_22C36A668();
  *(inited + 240) = [v23 v24];
  *(inited + 264) = v16;
  *(inited + 272) = 0x74736F6E67616964;
  *(inited + 280) = 0xEA00000000006369;
  v25 = sub_22C36A668();
  *(inited + 288) = [v25 v26];
  *(inited + 312) = v16;
  *(inited + 320) = 0xD000000000000011;
  *(inited + 328) = 0x800000022C93A6E0;
  v27 = sub_22C36A668();
  *(inited + 336) = [v27 v28];
  *(inited + 360) = v16;
  strcpy((inited + 368), "forcedPrompt");
  *(inited + 381) = 0;
  *(inited + 382) = -5120;
  v29 = sub_22C36A668();
  v31 = [v29 v30];
  *(inited + 408) = v16;
  *(inited + 384) = v31;
  v32 = sub_22C909F0C();
  v33 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v34 = sub_22C8FE5F0(v32);

  result = v39;
  *(v39 + 16) = v34;
  return result;
}

uint64_t sub_22C8FE450(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
  v3 = sub_22C8FE4BC(a1, v2);

  return v3;
}

uint64_t sub_22C8FE4BC(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for PlanResolutionModelOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_22C90030C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_22C8FE594()
{

  return swift_deallocClassInstance();
}

id sub_22C8FE5F0(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22C909EAC();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_22C90030C();

    swift_willThrow();
  }

  return v3;
}

unint64_t sub_22C8FE6D8()
{
  result = qword_28142F9C8;
  if (!qword_28142F9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28142F9C8);
  }

  return result;
}

uint64_t *sub_22C8FE808(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x2318B8E40](v7, 0x1000C8077774924);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x2318B8E40](v4 - 8, 0x10C80436913F5);
  }

  return a1;
}

void sub_22C8FE988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  marisa::Agent::~Agent(&a9);

  _Unwind_Resume(a1);
}

void *sub_22C8FED7C(void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22C8FEE2C();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void sub_22C8FEE3C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_22C8FEE90(exception);
  __cxa_throw(exception, off_278729320, MEMORY[0x277D825F0]);
}

std::logic_error *sub_22C8FEE90(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_22C8FF0E4(_Unwind_Exception *a1, void *a2, void *a3, void *a4, void *a5, ...)
{
  va_start(va, a5);

  marisa::Agent::~Agent(va);
  _Unwind_Resume(a1);
}

void sub_22C8FF400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  marisa::Agent::~Agent(&v24);

  _Unwind_Resume(a1);
}

void sub_22C8FF6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  marisa::Agent::~Agent(&v24);

  _Unwind_Resume(a1);
}

void sub_22C8FF904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22C8FFC9C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_22C8FFD68()
{
  qword_281435858 = os_log_create("com.apple.intelligenceflow", "PlanOverrides");

  return MEMORY[0x2821F96F8]();
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}