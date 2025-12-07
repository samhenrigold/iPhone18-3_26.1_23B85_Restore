uint64_t sub_22C7D38D0()
{
  sub_22C3743E4();
  v15 = v0;
  sub_22C90407C();
  v1 = sub_22C9063CC();
  v2 = sub_22C90AACC();
  v3 = sub_22C370048(v2);
  v4 = v0[23];
  if (v3)
  {
    v5 = sub_22C36FB44();
    v6 = sub_22C370060();
    v14 = v6;
    *v5 = 136315138;
    sub_22C36EE00();
    *(v5 + 4) = sub_22C36F9F4(0xD000000000000017, v7, &v14);
    sub_22C7E4DDC(&dword_22C366000, v8, v9, "ToolCandidateRanker %s has started");
    sub_22C36FF94(v6);
    sub_22C370510();
    sub_22C3699EC();
  }

  v10 = *(v4 + 8);
  v11 = sub_22C36BAFC();
  v10(v11);
  v0[26] = v10;
  v12 = swift_task_alloc();
  v0[27] = v12;
  *v12 = v0;
  v12[1] = sub_22C7D3A30;

  return sub_22C7C01B4();
}

uint64_t sub_22C7D3A30()
{
  sub_22C36D5EC();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  v7 = *(v3 + 32);
  *(v3 + 232) = *(v3 + 16);
  *(v3 + 224) = v0;
  *(v3 + 248) = v7;
  *(v3 + 264) = *(v3 + 48);

  if (v0)
  {

    sub_22C369A24();
    sub_22C7E4ED0();

    __asm { BRAA            X1, X16 }
  }

  sub_22C36BB08();
  sub_22C7E4ED0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_22C7D3B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = v8;
  v9 = *(v8 + 248);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v12 = *(v8 + 256);
    v11 = *(v8 + 264);
    v13 = *(v8 + 224);
    *(v8 + 64) = *(v8 + 232);
    *(v8 + 80) = v9;
    *(v8 + 88) = v12;
    *(v8 + 96) = v11;
    v14 = sub_22C745950(0);
    if (v13)
    {

      sub_22C369A24();
      sub_22C36EC40();

      __asm { BRAA            X1, X16 }
    }

    v19 = v14;

    sub_22C90407C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();
    v22 = sub_22C370048(v21);
    v23 = *(v8 + 208);
    v24 = *(v8 + 192);
    v25 = *(v8 + 176);
    if (v22)
    {
      v50 = *(v8 + 208);
      v26 = sub_22C36FB44();
      v48 = v24;
      v27 = sub_22C370060();
      v51[0] = v27;
      *v26 = 136315138;
      sub_22C36EE00();
      *(v26 + 4) = sub_22C36F9F4(0xD000000000000017, v28, v51);
      _os_log_impl(&dword_22C366000, v20, v21, "%s sorting tuples", v26, 0xCu);
      sub_22C36FF94(v27);
      sub_22C3699EC();
      sub_22C37B09C();

      v50(v48, v25);
    }

    else
    {

      v23(v24, v25);
    }

    v29 = *(v8 + 112);

    v51[0] = sub_22C7E3A84(v29);
    sub_22C7DDA08(v51, v19);

    v30 = v51[0];
    v31 = *(v51[0] + 16);
    if (v31)
    {
      v32 = *(v8 + 136);
      v51[0] = v10;
      sub_22C3B7CE8(0, v31, 0);
      v33 = v51[0];
      sub_22C36BA94();
      v35 = v30 + v34;
      v49 = *(v32 + 72);
      do
      {
        v36 = *(v8 + 168);
        v37 = *(v8 + 144);
        sub_22C4E719C(v35, *(v8 + 152), &qword_27D9BABD8, &unk_22C90FA30);
        v38 = sub_22C36CC9C();
        sub_22C4E7208(v38, v39, &qword_27D9BABD8, &unk_22C90FA30);
        sub_22C38B26C();
        sub_22C7E4260(v37 + v40, v36);
        v51[0] = v33;
        v42 = *(v33 + 16);
        v41 = *(v33 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_22C369AB0(v41);
          sub_22C379C28();
          sub_22C3B7CE8(v45, v46, v47);
          v33 = v51[0];
        }

        *(v33 + 16) = v42 + 1;
        sub_22C36BA94();
        sub_22C38B26C();
        sub_22C7E4260(v43, v44);
        v35 += v49;
        --v31;
      }

      while (v31);
    }
  }

  sub_22C36BA00();
  sub_22C36EC40();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_22C7D3F98()
{
  sub_22C36D5EC();
  sub_22C7E4CB4();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  sub_22C7E47E4();
  sub_22C7E4ED0();

  return sub_22C7C9088(v3, v4, v5, v6, v7);
}

uint64_t sub_22C7D4038()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  v8 = sub_22C36D860(v7);
  *v8 = v9;
  v8[1] = sub_22C46BC08;
  v10 = sub_22C7E47E4();

  return sub_22C7C9568(v10, v11, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_22C7D4114(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_22C7D4160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C7E4DA4();
  v9 = v3;
  sub_22C7E4A08();
  v12 = v3[1];
  v10 = v3 + 1;
  v11 = v12;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_22C7E43A4();
    sub_22C3B5E2C(v14, v15, v16, v17, v18, v19, v20);
    v11 = *v10;
  }

  sub_22C3745CC();
  if (v21)
  {
    sub_22C37AD30();
    sub_22C3B5E2C(v26, v27, v28, v29, v30, v31, v32);
    v11 = *v10;
  }

  *(v11 + 16) = v5;
  v22 = v11 + 16 * v8;
  *(v22 + 32) = v7;
  *(v22 + 40) = v6;
  sub_22C36CB84();
  if (!v10)
  {
    if (v8 <= 0xE)
    {
      goto LABEL_17;
    }

LABEL_15:
    MEMORY[0x2318B0670](v5);
    sub_22C7E4494();
    sub_22C7D6000();
    goto LABEL_17;
  }

  sub_22C386B50(v23);
  sub_22C7E4878();
  if (v24 <= v8)
  {
    sub_22C38C4C8();
    if (!v25 & v21)
    {
      v25 = 0;
    }

    else
    {
      v25 = v4 == 0;
    }

    if (v25)
    {

      *v9 = 0;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_22C7D5DC0();
  if (*v9)
  {
    sub_22C37FAE8(*v9);
LABEL_17:
    sub_22C7E4A78();
    return;
  }

  __break(1u);
}

void sub_22C7D4268()
{
  sub_22C36BA7C();
  sub_22C385800();
  sub_22C90644C();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C377578();
  v7 = sub_22C7E44A4();
  v8(v7);
  v9 = sub_22C7E457C();
  *v1 = v4;
  if ((v9 & 1) == 0)
  {
    v10 = sub_22C7E43A4();
    sub_22C3B647C(v10, v11, v12);
  }

  sub_22C7E47C4();
  if (v13)
  {
    sub_22C375CCC();
    sub_22C3B647C(v18, v19, v20);
  }

  v14 = sub_22C3769FC();
  v15(v14);
  sub_22C36CB84();
  if (!v1)
  {
    if (v5 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C37B0E4();
    sub_22C7D5F0C();
    goto LABEL_15;
  }

  sub_22C38153C();
  sub_22C7E4878();
  if (v16 <= v5)
  {
    sub_22C386010();
    if (!(!v17 & v13) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C36CC48();
    return;
  }

  __break(1u);
}

void sub_22C7D4404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_22C36D270();
    sub_22C3B6540(v14, v15, v16, v17, v18, v19, v20);
    v11 = *v10;
  }

  v21 = *(v11 + 16);
  if (v21 >= *(v11 + 24) >> 1)
  {
    sub_22C37AD30();
    sub_22C3B6540(v26, v27, v28, v29, v30, v31, v32);
    v11 = *v10;
  }

  *(v11 + 16) = v21 + 1;
  v22 = (v11 + 24 * v21);
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  v5[1] = v11;
  if (!*v5)
  {
    if (v21 <= 0xE)
    {
      return;
    }

    goto LABEL_15;
  }

  sub_22C386B50(isUniquelyReferenced_nonNull_native);
  sub_22C7E4878();
  if (v23 <= v21)
  {
    sub_22C386010();
    if (!v25 & v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = a4 == 0;
    }

    if (v25)
    {

      *v5 = 0;
      return;
    }

LABEL_15:
    MEMORY[0x2318B0670](v21 + 1);
    sub_22C7E4494();
    sub_22C7D6000();
    return;
  }

  sub_22C7D5DC0();
  if (*v5)
  {
    sub_22C37FAE8(*v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_22C7D4550()
{
  sub_22C3BDA38();
  v7 = sub_22C385800();
  v8 = type metadata accessor for PromptTreeIdentifier(v7);
  v9 = sub_22C3699B8(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C377578();
  sub_22C375B80();
  v10 = sub_22C372FA4();
  sub_22C7E4208(v10, v11);
  v12 = sub_22C7E457C();
  *v1 = v5;
  if ((v12 & 1) == 0)
  {
    sub_22C7E43A4();
    sub_22C3B663C();
  }

  sub_22C3745CC();
  if (v13)
  {
    sub_22C37AD30();
    sub_22C3B663C();
  }

  sub_22C377728();
  sub_22C7E4260(v4, v14);
  sub_22C36CB84();
  if (!v1)
  {
    if (v6 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C7E4494();
    sub_22C7D5EC8();
    goto LABEL_15;
  }

  sub_22C7E453C();
  sub_22C7E4878();
  if (v15 <= v6)
  {
    sub_22C38C4C8();
    if (!(!v16 & v13) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C3BDA24();
    return;
  }

  __break(1u);
}

void sub_22C7D46C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C7E4DA4();
  v7 = sub_22C7E4AF4();
  *v5 = v6;
  if ((v7 & 1) == 0)
  {
    sub_22C36D270();
    sub_22C3B66A4();
    v6 = *v5;
  }

  v8 = *(v6 + 16);
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_22C375CCC();
    sub_22C3B66A4();
  }

  sub_22C7E4A60();
  if (!v5)
  {
    if (v8 <= 0xE)
    {
      sub_22C7E4A78();

      return;
    }

LABEL_15:
    MEMORY[0x2318B0670](v8 + 1);

    sub_22C7E4CA0();
    sub_22C7D5EC8();
    goto LABEL_20;
  }

  sub_22C386B50(v9);
  sub_22C7E4878();
  if (v10 <= v8)
  {
    if (v8 <= 0xE && (v5[3] & 0x3F) == 0)
    {

      *v4 = 0;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  sub_22C7D5DC0();
  if (*v4)
  {
    sub_22C7E4B50(*v4);
LABEL_20:
    sub_22C7E4A78();
    return;
  }

  __break(1u);
}

void sub_22C7D47FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C7E4DA4();
  v9 = v3;
  sub_22C7E4A08();
  v12 = v3[1];
  v10 = v3 + 1;
  v11 = v12;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_22C7E43A4();
    sub_22C3B66E0(v14);
    v11 = *v10;
  }

  sub_22C3745CC();
  if (v15)
  {
    sub_22C37AD30();
    sub_22C3B66E0(v20);
    v11 = *v10;
  }

  *(v11 + 16) = v5;
  v16 = v11 + 16 * v8;
  *(v16 + 32) = v7;
  *(v16 + 40) = v6;
  sub_22C36CB84();
  if (!v10)
  {
    if (v8 <= 0xE)
    {
      goto LABEL_17;
    }

LABEL_15:
    MEMORY[0x2318B0670](v5);
    sub_22C7E4494();
    sub_22C7D6000();
    goto LABEL_17;
  }

  sub_22C386B50(v17);
  sub_22C7E4878();
  if (v18 <= v8)
  {
    sub_22C38C4C8();
    if (!v19 & v15)
    {
      v19 = 0;
    }

    else
    {
      v19 = v4 == 0;
    }

    if (v19)
    {

      *v9 = 0;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_22C7D5DC0();
  if (*v9)
  {
    sub_22C37FAE8(*v9);
LABEL_17:
    sub_22C7E4A78();
    return;
  }

  __break(1u);
}

void sub_22C7D4904(__int128 *a1)
{
  v2 = v1;
  v6 = v1[1];
  v4 = v1 + 1;
  v5 = v6;
  sub_22C4B87A4(a1, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_22C36D270();
    sub_22C3B6810(v8, v9, v10);
    v5 = *v4;
  }

  v11 = *(v5 + 16);
  if (v11 >= *(v5 + 24) >> 1)
  {
    sub_22C37AD30();
    sub_22C3B6810(v18, v19, v20);
    v5 = *v4;
  }

  *(v5 + 16) = v11 + 1;
  v12 = v5 + 40 * v11;
  v13 = *a1;
  v14 = a1[1];
  *(v12 + 64) = *(a1 + 32);
  *(v12 + 32) = v13;
  *(v12 + 48) = v14;
  v2[1] = v5;
  v15 = *v2;
  if (!*v2)
  {
    if (v11 <= 0xE)
    {
      return;
    }

    goto LABEL_15;
  }

  sub_22C386B50(isUniquelyReferenced_nonNull_native);
  sub_22C7E4878();
  if (v16 <= v11)
  {
    if (v11 <= 0xE && (*(v15 + 24) & 0x3FLL) == 0)
    {

      *v2 = 0;
      return;
    }

LABEL_15:
    MEMORY[0x2318B0670](v11 + 1);
    sub_22C7E4494();
    sub_22C7D6000();
    return;
  }

  sub_22C7D5DC0();
  if (*v2)
  {
    sub_22C37FAE8(*v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_22C7D4A48()
{
  sub_22C3BDA38();
  v7 = sub_22C385800();
  v8 = type metadata accessor for _PromptToolData(v7);
  v9 = sub_22C3699B8(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C377578();
  v10 = sub_22C372FA4();
  sub_22C7E4208(v10, v11);
  v12 = sub_22C7E457C();
  *v1 = v5;
  if ((v12 & 1) == 0)
  {
    v13 = sub_22C7E43A4();
    sub_22C3B6914(v13, v14, v15);
  }

  sub_22C3745CC();
  if (v16)
  {
    sub_22C37AD30();
    sub_22C3B6914(v20, v21, v22);
  }

  sub_22C377728();
  sub_22C7E4260(v4, v17);
  sub_22C36CB84();
  if (!v1)
  {
    if (v6 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C37B0E4();
    sub_22C7D5FD0();
    goto LABEL_15;
  }

  sub_22C7E453C();
  sub_22C7E4878();
  if (v18 <= v6)
  {
    sub_22C38C4C8();
    if (!(!v19 & v16) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C3BDA24();
    return;
  }

  __break(1u);
}

void sub_22C7D4BE0()
{
  sub_22C36BA7C();
  sub_22C385800();
  sub_22C90430C();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C377578();
  v7 = sub_22C7E44A4();
  v8(v7);
  v9 = sub_22C7E457C();
  *v1 = v4;
  if ((v9 & 1) == 0)
  {
    v10 = sub_22C7E43A4();
    sub_22C3B6BF8(v10, v11, v12);
  }

  sub_22C7E47C4();
  if (v13)
  {
    sub_22C375CCC();
    sub_22C3B6BF8(v18, v19, v20);
  }

  v14 = sub_22C3769FC();
  v15(v14);
  sub_22C36CB84();
  if (!v1)
  {
    if (v5 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C37B0E4();
    sub_22C7D5F0C();
    goto LABEL_15;
  }

  sub_22C38153C();
  sub_22C7E4878();
  if (v16 <= v5)
  {
    sub_22C386010();
    if (!(!v17 & v13) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C36CC48();
    return;
  }

  __break(1u);
}

void sub_22C7D4D7C()
{
  sub_22C3BDA38();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C3699B8(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_22C372FA4();
  sub_22C4E719C(v11, v12, &qword_27D9BB0C0, &qword_22C90D960);
  v13 = sub_22C7E457C();
  *v6 = &qword_22C90D960;
  if ((v13 & 1) == 0)
  {
    v14 = sub_22C7E43A4();
    sub_22C3B6D28(v14, v15, v16);
  }

  sub_22C3745CC();
  if (v17)
  {
    sub_22C37AD30();
    sub_22C3B6D28(v21, v22, v23);
  }

  sub_22C377728();
  sub_22C4E7208(v10, v18, &qword_27D9BB0C0, &qword_22C90D960);
  sub_22C36CB84();
  if (!v6)
  {
    if (v1 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](&qword_27D9BB0C0);
    sub_22C7E4494();
    sub_22C7D5EC8();
    goto LABEL_15;
  }

  sub_22C7E453C();
  sub_22C7E4878();
  if (v19 <= v1)
  {
    sub_22C38C4C8();
    if (!(!v20 & v17) && !v4)
    {

      *v2 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v2)
  {
    sub_22C37FAE8(*v2);
LABEL_15:
    sub_22C3BDA24();
    return;
  }

  __break(1u);
}

void sub_22C7D4F14()
{
  sub_22C36BA7C();
  sub_22C385800();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C377578();
  v7 = sub_22C7E44A4();
  v8(v7);
  v9 = sub_22C7E457C();
  *v1 = v4;
  if ((v9 & 1) == 0)
  {
    sub_22C7E43A4();
    sub_22C3B6EDC();
  }

  sub_22C7E47C4();
  if (v10)
  {
    sub_22C375CCC();
    sub_22C3B6EDC();
  }

  v11 = sub_22C3769FC();
  v12(v11);
  sub_22C36CB84();
  if (!v1)
  {
    if (v5 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C7E4860();
    sub_22C37B0E4();
    sub_22C7D5F0C();
    goto LABEL_15;
  }

  sub_22C38153C();
  sub_22C7E4878();
  if (v13 <= v5)
  {
    sub_22C386010();
    if (!(!v14 & v10) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C36CC48();
    return;
  }

  __break(1u);
}

uint64_t sub_22C7D50A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22C90981C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = v3 + 1;
  v11 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C3B6FA0(0, *(v11 + 16) + 1, 1);
    v11 = *v10;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_22C3B6FA0(v13 > 1, v14 + 1, 1);
    v11 = *v10;
  }

  *(v11 + 16) = v14 + 1;
  result = (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v9, v6);
  v3[1] = v11;
  v16 = *v3;
  if (!*v3)
  {
    if (v14 <= 0xE)
    {
      return result;
    }

    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x2318B0640](*(v16 + 16) & 0x3FLL) <= v14)
  {
    if (v14 <= 0xE && (*(v16 + 24) & 0x3FLL) == 0)
    {

      *v3 = 0;
      return result;
    }

LABEL_14:
    MEMORY[0x2318B0670](v14 + 1);
    return sub_22C7D5F0C();
  }

  result = sub_22C7D5DC0();
  if (*v3)
  {
    return sub_22C7D5E18((*v3 + 16), *v3 + 32, a2, v3);
  }

  __break(1u);
  return result;
}

void sub_22C7D5308()
{
  sub_22C3BDA38();
  v6 = sub_22C385800();
  v7 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(v6);
  v8 = sub_22C3699B8(v7);
  MEMORY[0x28223BE20](v8);
  sub_22C377578();
  sub_22C37B7CC();
  v9 = sub_22C372FA4();
  sub_22C7E4208(v9, v10);
  v11 = sub_22C7E457C();
  *v1 = v4;
  if ((v11 & 1) == 0)
  {
    v12 = sub_22C7E43A4();
    sub_22C3B7188(v12, v13, v14);
  }

  sub_22C3745CC();
  if (v15)
  {
    sub_22C37AD30();
    sub_22C3B7188(v20, v21, v22);
  }

  sub_22C377728();
  v16 = sub_22C37E1CC();
  sub_22C7E4260(v16, v17);
  sub_22C36CB84();
  if (!v1)
  {
    if (v5 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C37B0E4();
    sub_22C7D5FD0();
    goto LABEL_15;
  }

  sub_22C7E453C();
  sub_22C7E4878();
  if (v18 <= v5)
  {
    sub_22C38C4C8();
    if (!(!v19 & v15) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C3BDA24();
    return;
  }

  __break(1u);
}

void sub_22C7D547C()
{
  sub_22C3BDA38();
  v7 = sub_22C385800();
  v8 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v7);
  v9 = sub_22C3699B8(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C377578();
  sub_22C36FE98();
  v10 = sub_22C372FA4();
  sub_22C7E4208(v10, v11);
  v12 = sub_22C7E457C();
  *v1 = v5;
  if ((v12 & 1) == 0)
  {
    v13 = sub_22C7E43A4();
    sub_22C3B7238(v13, v14, v15);
  }

  sub_22C3745CC();
  if (v16)
  {
    sub_22C37AD30();
    sub_22C3B7238(v20, v21, v22);
  }

  sub_22C377728();
  sub_22C7E4260(v4, v17);
  sub_22C36CB84();
  if (!v1)
  {
    if (v6 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C7E4494();
    sub_22C7D5EC8();
    goto LABEL_15;
  }

  sub_22C7E453C();
  sub_22C7E4878();
  if (v18 <= v6)
  {
    sub_22C38C4C8();
    if (!(!v19 & v16) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C3BDA24();
    return;
  }

  __break(1u);
}

uint64_t sub_22C7D55EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C7E4208(a1, v9);
  v10 = v3 + 1;
  v11 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C3B72D4(0, *(v11 + 16) + 1, 1);
    v11 = *v10;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_22C3B72D4(v13 > 1, v14 + 1, 1);
    v11 = *v10;
  }

  *(v11 + 16) = v14 + 1;
  result = sub_22C7E4260(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14);
  v3[1] = v11;
  v16 = *v3;
  if (!*v3)
  {
    if (v14 <= 0xE)
    {
      return result;
    }

    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x2318B0640](*(v16 + 16) & 0x3FLL) <= v14)
  {
    if (v14 <= 0xE && (*(v16 + 24) & 0x3FLL) == 0)
    {

      *v3 = 0;
      return result;
    }

LABEL_14:
    MEMORY[0x2318B0670](v14 + 1);
    return sub_22C7D5EC8();
  }

  result = sub_22C7D5DC0();
  if (*v3)
  {
    return sub_22C7D5E18((*v3 + 16), *v3 + 32, a2, v3);
  }

  __break(1u);
  return result;
}

void sub_22C7D5818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C7E4DA4();
  v7 = sub_22C7E4AF4();
  *v5 = v6;
  if ((v7 & 1) == 0)
  {
    v8 = sub_22C36D270();
    sub_22C3B63D4(v8, v9, v10);
    v6 = *v5;
  }

  v11 = *(v6 + 16);
  if (v11 >= *(v6 + 24) >> 1)
  {
    sub_22C375CCC();
    sub_22C3B63D4(v16, v17, v18);
  }

  sub_22C7E4A60();
  if (!v5)
  {
    if (v11 <= 0xE)
    {
      sub_22C7E4A78();

      return;
    }

LABEL_15:
    MEMORY[0x2318B0670](v11 + 1);

    sub_22C7E4CA0();
    sub_22C7D6000();
    goto LABEL_20;
  }

  sub_22C386B50(v12);
  sub_22C7E4878();
  if (v13 <= v11)
  {
    if (v11 <= 0xE && (v5[3] & 0x3F) == 0)
    {

      *v4 = 0;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  sub_22C7D5DC0();
  if (*v4)
  {
    sub_22C7E4B50(*v4);
LABEL_20:
    sub_22C7E4A78();
    return;
  }

  __break(1u);
}

void sub_22C7D5954(double a1)
{
  v2 = v1;
  v6 = v1[1];
  v4 = v1 + 1;
  v5 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_22C36D270();
    sub_22C3B7454(v8, v9, v10);
    v5 = *v4;
  }

  v11 = *(v5 + 16);
  if (v11 >= *(v5 + 24) >> 1)
  {
    sub_22C37AD30();
    sub_22C3B7454(v15, v16, v17);
    v5 = *v4;
  }

  *(v5 + 16) = v11 + 1;
  *(v5 + 8 * v11 + 32) = a1;
  v2[1] = v5;
  v12 = *v2;
  if (!*v2)
  {
    if (v11 <= 0xE)
    {
      return;
    }

    goto LABEL_15;
  }

  sub_22C386B50(isUniquelyReferenced_nonNull_native);
  sub_22C7E4878();
  if (v13 <= v11)
  {
    if (v11 <= 0xE && (*(v12 + 24) & 0x3FLL) == 0)
    {

      *v2 = 0;
      return;
    }

LABEL_15:
    MEMORY[0x2318B0670](v11 + 1);
    sub_22C7E4494();
    sub_22C7D6000();
    return;
  }

  sub_22C7D5DC0();
  if (*v2)
  {
    sub_22C37FAE8(*v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_22C7D5A80()
{
  sub_22C36BA7C();
  sub_22C385800();
  sub_22C9037EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C377578();
  v7 = sub_22C7E44A4();
  v8(v7);
  v9 = sub_22C7E457C();
  *v1 = v4;
  if ((v9 & 1) == 0)
  {
    v10 = sub_22C7E43A4();
    sub_22C3B60C0(v10, v11, v12);
  }

  sub_22C7E47C4();
  if (v13)
  {
    sub_22C375CCC();
    sub_22C3B60C0(v18, v19, v20);
  }

  v14 = sub_22C3769FC();
  v15(v14);
  sub_22C36CB84();
  if (!v1)
  {
    if (v5 <= 0xE)
    {
      goto LABEL_15;
    }

LABEL_14:
    MEMORY[0x2318B0670](v3);
    sub_22C37B0E4();
    sub_22C7D5F0C();
    goto LABEL_15;
  }

  sub_22C38153C();
  sub_22C7E4878();
  if (v16 <= v5)
  {
    sub_22C386010();
    if (!(!v17 & v13) && !v2)
    {

      *v0 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_22C7D5DC0();
  if (*v0)
  {
    sub_22C37FAE8(*v0);
LABEL_15:
    sub_22C36CC48();
    return;
  }

  __break(1u);
}

void *sub_22C7D5C1C(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_22C7D5D1C(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  sub_22C369914(v7);
  result = a1(&v10, a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), *(a3 + 16));
  if (!v4)
  {
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7D5DC0()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = sub_22C90318C();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_22C7D5EC8()
{
  sub_22C379B64();
  sub_22C7D6154();
  result = sub_22C7E4E8C();
  *v1 = v0;
  return result;
}

uint64_t sub_22C7D5F0C()
{
  sub_22C379B64();
  sub_22C7D6208();
  result = sub_22C7E4E8C();
  *v1 = v0;
  return result;
}

uint64_t sub_22C7D5FD0()
{
  v2 = sub_22C379B64();
  sub_22C7D60C8(v2, v3, v4, v5, v6, v7);
  result = sub_22C7E4E8C();
  *v1 = v0;
  return result;
}

uint64_t sub_22C7D6000()
{
  sub_22C379B64();
  sub_22C7D6044();
  result = sub_22C7E4E8C();
  *v1 = v0;
  return result;
}

uint64_t sub_22C7D6044()
{
  sub_22C7E4A38();
  v5 = 0;
  if (v4 <= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (v6 <= v2)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 5)
  {
    v5 = MEMORY[0x2318B0680]();
    sub_22C7E4D84();
    sub_22C7D67C8(v1, v8, v9, v0);
  }

  return v5;
}

uint64_t sub_22C7D60C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void), void *(*a6)(uint64_t *__return_ptr, unint64_t, void, uint64_t, uint64_t))
{
  v10 = *(a1 + 16);
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  v12 = MEMORY[0x2318B0670](v10, a2);
  v13 = 0;
  if (v12 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (v14 <= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 5)
  {
    v13 = MEMORY[0x2318B0680]();
    sub_22C7E4D84();
    sub_22C7D65F4(a1, v16, v17, a5, a6);
  }

  return v13;
}

uint64_t sub_22C7D6154()
{
  sub_22C7E4A38();
  v5 = 0;
  if (v4 <= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (v6 <= v2)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 5)
  {
    v5 = MEMORY[0x2318B0680]();
    sub_22C7E4D84();
    v0(v1);
  }

  return v5;
}

void sub_22C7D6208()
{
  sub_22C3BDA38();
  v2 = v1;
  v4 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0;
  }

  v7 = MEMORY[0x2318B0670](v4);
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= v2)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 5)
  {
    MEMORY[0x2318B0680]();
    sub_22C7E4D84();
    sub_22C7D63AC();
  }

  sub_22C3BDA24();
}

void *sub_22C7D6348(uint64_t a1, void *a2, uint64_t a3)
{
  sub_22C902D0C();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  return sub_22C7D6CDC(a1 + 32, *(a1 + 16), a2, a3);
}

void sub_22C7D63AC()
{
  sub_22C36BA7C();
  v21 = v2;
  v22 = v3;
  v20 = v4;
  v5 = sub_22C369A48();
  v7 = v6(v5);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C38059C();
  v19 = *(v0 + 16);
  if (v19)
  {
    v9 = 0;
    sub_22C36BA94();
    v18 = v0 + v10;
    v12 = *(v11 + 16);
    v11 += 16;
    v16 = *(v11 + 56);
    v17 = v12;
    v13 = (v11 - 8);
    while (1)
    {
      v17(v1, v18 + v16 * v9, v7);
      sub_22C7E4310(v20, v21, v22);
      sub_22C37DA2C();
      sub_22C909F7C();
      sub_22C38A0A8();
      if (__OFSUB__(v14, 1))
      {
        break;
      }

      sub_22C372FA4();
      v15 = sub_22C9030FC();
      (*v13)(v1, v7);
      if (v15)
      {
        while (1)
        {
          sub_22C90315C();
        }
      }

      sub_22C90314C();
      if (++v9 == v19)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_22C36CC48();
  }
}

void *sub_22C7D6554(uint64_t a1, void *a2, uint64_t a3)
{
  sub_22C90952C();
  v6 = *(sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960) - 8);
  return sub_22C7D75C8(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a1 + 16), a2, a3);
}

void *sub_22C7D65F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void *(*a5)(uint64_t *__return_ptr, unint64_t, void, uint64_t, uint64_t))
{
  v9 = a4(0);
  sub_22C369914(v9);
  return a5(&v12, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), *(a1 + 16), a2, a3);
}

void *sub_22C7D6688(uint64_t a1, void *a2, uint64_t a3)
{
  sub_22C90430C();
  v6 = *(type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0) - 8);
  return sub_22C7D7C98(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a1 + 16), a2, a3);
}

void *sub_22C7D671C(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  sub_22C902D0C();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  v6 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) - 8);
  return sub_22C7D8044(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a1 + 16), a2, a3);
}

void *sub_22C7D6810(uint64_t a1, void *a2, uint64_t a3)
{
  sub_22C9039AC();
  sub_22C9036EC();
  v6 = *(type metadata accessor for LooselyComparableRetrievedTool(0) - 8);
  return sub_22C7D8938(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a1 + 16), a2, a3);
}

uint64_t sub_22C7D68AC(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_22C90B62C();

        sub_22C909FFC();
        v7 = sub_22C90B66C();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_22C9030FC();

        if (v8)
        {
          while (1)
          {
            sub_22C90315C();
          }
        }

        v7 = sub_22C90314C();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_22C7D69D4(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        sub_22C90B62C();

        sub_22C909FFC();
        v6 = sub_22C90B66C();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v7 = sub_22C9030FC();

        if (v7)
        {
          while (1)
          {
            sub_22C90315C();
          }
        }

        v6 = sub_22C90314C();
        if (++v5 == a2)
        {
          return v6;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v6;
}

uint64_t sub_22C7D6B18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v7 = type metadata accessor for PromptTreeIdentifier(0) - 8;
  result = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  if (a2)
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v13 = *(v9 + 72);
      while (1)
      {
        sub_22C7E4208(v24 + v13 * v12, v11);
        sub_22C90B62C();
        sub_22C489574();
        result = sub_22C90B66C();
        v14 = 1 << *a3;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          break;
        }

        v17 = v16 & result;
        v18 = sub_22C9030FC();
        v20 = v19;
        v22 = v21;
        sub_22C7E42B8(v11, type metadata accessor for PromptTreeIdentifier);
        v25 = a3;
        v26 = a4;
        v27 = v17;
        v28 = v18;
        v29 = v20;
        v30 = v22;
        v31 = 0;
        while (v28)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        if (++v12 == v32)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D6CDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v46 = a1;
  v43 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - v8;
  v45 = sub_22C902D0C();
  v9 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v44 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v54 = a2;
  if (a2)
  {
    if ((v54 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v40 = (v7 + 8);
      v41 = (v7 + 16);
      v37 = (v9 + 8);
      v38 = (v9 + 32);
      while (1)
      {
        v18 = *(v46 + 8 * v17);
        sub_22C90B62C();
        if (v18 < 0)
        {
          v23 = swift_projectBox();
          v24 = v42;
          v25 = v43;
          (*v41)(v42, v23, v43);
          MEMORY[0x2318B8B10](1);
          sub_22C4AEB24();

          sub_22C909F8C();
          (*v40)(v24, v25);
        }

        else
        {
          v19 = swift_projectBox();
          sub_22C7E4208(v19, v16);
          MEMORY[0x2318B8B10](0);
          v20 = v44;
          sub_22C7E4208(v16, v44);
          switch(sub_22C370B74(v20, 3, v45))
          {
            case 1u:
              v26 = 0;
              goto LABEL_11;
            case 2u:
              v26 = 1;
              goto LABEL_11;
            case 3u:
              v26 = 2;
LABEL_11:
              MEMORY[0x2318B8B10](v26);

              break;
            default:
              v21 = v39;
              v22 = v45;
              (*v38)(v39, v44, v45);
              MEMORY[0x2318B8B10](3);
              sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);

              sub_22C909F8C();
              (*v37)(v21, v22);
              break;
          }

          sub_22C7E42B8(v16, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
        }

        result = sub_22C90B66C();
        v27 = 1 << *a3;
        v28 = __OFSUB__(v27, 1);
        v29 = v27 - 1;
        if (v28)
        {
          break;
        }

        v30 = v29 & result;
        v31 = sub_22C9030FC();
        v33 = v32;
        v35 = v34;

        v47 = a3;
        v48 = a4;
        v49 = v30;
        v50 = v31;
        v51 = v33;
        v52 = v35;
        v53 = 0;
        while (v50)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        if (++v17 == v54)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D7148(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_22C90B62C();
        sub_22C909FFC();
        v7 = sub_22C90B66C();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_22C9030FC())
        {
          while (1)
          {
            sub_22C90315C();
          }
        }

        v7 = sub_22C90314C();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_22C7D7250(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v15 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = v15 + 40 * v5;
        v7 = *v6;
        v8 = *(v6 + 8);
        v9 = *(v6 + 16);
        v10 = *(v6 + 24);
        v11 = *(v6 + 32);
        sub_22C90B62C();
        if (v11)
        {
          MEMORY[0x2318B8B10](1);

          sub_22C909FFC();
        }

        else
        {
          MEMORY[0x2318B8B10](0);
        }

        sub_22C909FFC();
        result = sub_22C90B66C();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v12 = sub_22C9030FC();
        v13 = v7;
        v14 = v12;
        sub_22C43627C(v13, v8, v9, v10, v11);
        if (v14)
        {
          while (1)
          {
            sub_22C90315C();
          }
        }

        result = sub_22C90314C();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D73F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v7 = type metadata accessor for _PromptToolData(0) - 8;
  result = MEMORY[0x28223BE20](v7);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a2;
  if (a2)
  {
    if ((v30 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v13 = *(v9 + 72);
      while (1)
      {
        sub_22C7E4208(v24 + v13 * v12, v11);
        sub_22C90B62C();
        sub_22C48A9B4(v25, v11[1]);
        sub_22C48A9B4(v25, *v11);
        result = sub_22C90B66C();
        v14 = 1 << *a3;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          break;
        }

        v17 = v16 & result;
        v18 = sub_22C9030FC();
        v20 = v19;
        v22 = v21;
        sub_22C7E42B8(v11, type metadata accessor for _PromptToolData);
        v25[0] = a3;
        v25[1] = a4;
        v25[2] = v17;
        v26 = v18;
        v27 = v20;
        v28 = v22;
        v29 = 0;
        while (v26)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        if (++v12 == v30)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D75C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v36 = a1;
  v6 = sub_22C90952C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960) - 8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v45 = &v30 - v15;
  v37 = a2;
  if (a2)
  {
    if ((v37 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v34 = *(v14 + 72);
      v31 = (v7 + 8);
      v32 = (v7 + 32);
      while (1)
      {
        v17 = v45;
        sub_22C4E719C(v36 + v34 * v16, v45, &qword_27D9BB0C0, &qword_22C90D960);
        sub_22C90B62C();
        sub_22C4E719C(v17, v12, &qword_27D9BB0C0, &qword_22C90D960);
        if (sub_22C370B74(v12, 1, v6) == 1)
        {
          sub_22C90B64C();
        }

        else
        {
          v18 = v33;
          (*v32)(v33, v12, v6);
          sub_22C90B64C();
          sub_22C7E4310(&qword_28142FA80, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
          sub_22C909F8C();
          (*v31)(v18, v6);
        }

        result = sub_22C90B66C();
        v19 = 1 << *a3;
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
          break;
        }

        v22 = v12;
        v23 = v21 & result;
        v24 = v35;
        v25 = sub_22C9030FC();
        v27 = v26;
        v29 = v28;
        sub_22C36DD28(v45, &qword_27D9BB0C0, &qword_22C90D960);
        v38 = a3;
        v39 = v24;
        v40 = v23;
        v41 = v25;
        v42 = v27;
        v43 = v29;
        v44 = 0;
        while (v41)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        ++v16;
        v12 = v22;
        if (v16 == v37)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D791C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a1;
  v7 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  result = MEMORY[0x28223BE20](v7);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a2;
  if (a2)
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v25 = *(v9 + 72);
      while (1)
      {
        sub_22C7E4208(v26 + v25 * v12, v11);
        sub_22C90B62C();
        switch(*v11 >> 61)
        {
          case 1:
            MEMORY[0x2318B8B10](1);
            sub_22C90B5EC();
            break;
          case 2:
            MEMORY[0x2318B8B10](2);

            sub_22C90B5EC();
            sub_22C48A1DC(v27);
            goto LABEL_9;
          case 3:
            MEMORY[0x2318B8B10](3);

            sub_22C48A5B0(v27);
LABEL_9:

            break;
          case 4:
            MEMORY[0x2318B8B10](4);
            sub_22C90B64C();
            goto LABEL_15;
          case 5:
            v13 = *((*v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v14 = *((*v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            MEMORY[0x2318B8B10](5);
            if (v14)
            {
              ++v13;
            }

            else
            {
              MEMORY[0x2318B8B10](0);
            }

            MEMORY[0x2318B8B10](v13);
LABEL_15:
            sub_22C48A1DC(v27);
            break;
          default:
            MEMORY[0x2318B8B10](0);

            sub_22C909FFC();

            break;
        }

        sub_22C901FAC();
        sub_22C7E4310(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
        sub_22C909F8C();
        sub_22C48A9B4(v27, *(v11 + *(v7 + 24)));
        result = sub_22C90B66C();
        v15 = 1 << *a3;
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v16)
        {
          break;
        }

        v18 = v17 & result;
        v19 = sub_22C9030FC();
        v21 = v20;
        v23 = v22;
        sub_22C7E42B8(v11, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
        v27[0] = a3;
        v27[1] = a4;
        v27[2] = v18;
        v28 = v19;
        v29 = v21;
        v30 = v23;
        v31 = 0;
        while (v28)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        if (++v12 == v32)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D7C98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v43 = a4;
  v45 = a1;
  v6 = sub_22C90430C();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  result = MEMORY[0x28223BE20](v44);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = a2;
  if (a2)
  {
    if ((v46 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v14 = *(v10 + 72);
      v15 = (v38 + 8);
      v54 = a3;
      v48 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v41 = v38 + 16;
      v42 = v14;
      v39 = v8;
      v40 = (v38 + 8);
      while (1)
      {
        v47 = v13;
        sub_22C7E4208(v45 + v42 * v13, v12);
        sub_22C90B62C();
        sub_22C48A9B4(v49, *v12);
        v16 = v12[1];
        MEMORY[0x2318B8B10](*(v16 + 16));
        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = v8;
          v19 = v16 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
          v20 = *(v38 + 72);
          v21 = *(v38 + 16);
          do
          {
            v21(v18, v19, v6);
            sub_22C7E4310(&qword_27D9BC810, MEMORY[0x277D85578], MEMORY[0x277D85588]);
            sub_22C909F8C();
            (*v15)(v18, v6);
            v19 += v20;
            --v17;
          }

          while (v17);
        }

        sub_22C90963C();
        sub_22C7E4310(&qword_27D9BC850, MEMORY[0x277D72E18], MEMORY[0x277D72E20]);
        v22 = v48;
        sub_22C909F8C();
        result = sub_22C90B66C();
        v23 = 1 << *v54;
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v24)
        {
          break;
        }

        v26 = v25 & result;
        v27 = v54;
        v28 = v43;
        v29 = sub_22C9030FC();
        v31 = v30;
        v32 = v22;
        v34 = v33;
        sub_22C7E42B8(v32, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
        v49[0] = v27;
        v49[1] = v28;
        v49[2] = v26;
        v50 = v29;
        v51 = v31;
        v52 = v34;
        v53 = 0;
        while (v50)
        {
          sub_22C90315C();
        }

        v35 = v47 + 1;
        v36 = __OFADD__(v47, 1);
        result = sub_22C90314C();
        v15 = v40;
        v8 = v39;
        if (v36)
        {
          goto LABEL_17;
        }

        v13 = v35;
        v12 = v48;
        if (v35 == v46)
        {
          return result;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D8044(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v52 = a4;
  v56 = a1;
  v48 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  v6 = MEMORY[0x28223BE20](v48);
  v50 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v55 = &v44[-v8];
  v66 = sub_22C902D0C();
  v9 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v47 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v49 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v57 = &v44[-v14];
  v54 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  MEMORY[0x28223BE20](v54);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  result = MEMORY[0x28223BE20](v53);
  v20 = &v44[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = a2;
  if (a2)
  {
    if ((v58 & 0x8000000000000000) == 0)
    {
      v21 = 0;
      v51 = *(v18 + 72);
      v46 = (v9 + 32);
      v45 = (v9 + 8);
      while (1)
      {
        sub_22C7E4208(v56 + v51 * v21, v20);
        sub_22C90B62C();
        sub_22C7E4208(v20, v16);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v22 = v55;
          sub_22C7E4260(v16, v55);
          MEMORY[0x2318B8B10](1);
          sub_22C7E4208(v22, v50);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v24 = v47;
              v25 = v66;
              (*v46)(v47, v50, v66);
              MEMORY[0x2318B8B10](2);
              sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
              sub_22C909F8C();
              (*v45)(v24, v25);
            }

            else
            {
              MEMORY[0x2318B8B10](0);
            }
          }

          else
          {
            MEMORY[0x2318B8B10](1);
            sub_22C909FFC();
          }

          v31 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local;
          v32 = v55;
        }

        else
        {
          v26 = v57;
          sub_22C7E4260(v16, v57);
          MEMORY[0x2318B8B10](0);
          v27 = v26;
          v28 = v49;
          sub_22C7E4208(v27, v49);
          switch(sub_22C370B74(v28, 3, v66))
          {
            case 1u:
              v33 = 0;
              goto LABEL_16;
            case 2u:
              v33 = 1;
              goto LABEL_16;
            case 3u:
              v33 = 2;
LABEL_16:
              MEMORY[0x2318B8B10](v33);
              break;
            default:
              v29 = v47;
              v30 = v66;
              (*v46)(v47, v49, v66);
              MEMORY[0x2318B8B10](3);
              sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
              sub_22C909F8C();
              (*v45)(v29, v30);
              break;
          }

          v31 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global;
          v32 = v57;
        }

        sub_22C7E42B8(v32, v31);
        sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
        sub_22C909F8C();
        result = sub_22C90B66C();
        v34 = 1 << *a3;
        v35 = __OFSUB__(v34, 1);
        v36 = v34 - 1;
        if (v35)
        {
          break;
        }

        v37 = v36 & result;
        v38 = v52;
        v39 = sub_22C9030FC();
        v41 = v40;
        v43 = v42;
        sub_22C7E42B8(v20, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
        v59 = a3;
        v60 = v38;
        v61 = v37;
        v62 = v39;
        v63 = v41;
        v64 = v43;
        v65 = 0;
        while (v62)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        if (++v21 == v58)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D8718(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v23 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (1)
      {
        v8 = *(v23 + 8 * v7);
        sub_22C90B62C();

        sub_22C48A9B4(v18, v8);
        result = sub_22C90B66C();
        v9 = 1 << *a3;
        v10 = __OFSUB__(v9, 1);
        v11 = v9 - 1;
        if (v10)
        {
          break;
        }

        v12 = v11 & result;
        v13 = sub_22C9030FC();
        v15 = v14;
        v17 = v16;

        v18[0] = a3;
        v18[1] = a4;
        v18[2] = v12;
        v19 = v13;
        v20 = v15;
        v21 = v17;
        v22 = 0;
        while (v19)
        {
          sub_22C90315C();
        }

        result = sub_22C90314C();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C7D8838(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = *a3;
        v8 = sub_22C90B61C();
        if (__OFSUB__(1 << v7, 1))
        {
          break;
        }

        if (sub_22C9030FC())
        {
          while (1)
          {
            sub_22C90315C();
          }
        }

        v8 = sub_22C90314C();
        if (++v6 == a2)
        {
          return v8;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v8;
}

uint64_t sub_22C7D8938(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v41 = a4;
  v44 = a1;
  v6 = sub_22C9039AC();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22C9036EC();
  v9 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LooselyComparableRetrievedTool(0) - 8;
  result = MEMORY[0x28223BE20](v11);
  v56 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  if (a2)
  {
    if ((v45 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v16 = *(v13 + 72);
      v39 = (v9 + 8);
      v40 = v16;
      v17 = (v38 + 8);
      v46 = a3;
      while (1)
      {
        v48 = v15;
        sub_22C7E4208(v44 + v40 * v15, v56);
        sub_22C90B62C();
        v18 = v42;
        sub_22C90371C();
        sub_22C7E4310(&qword_281435770, MEMORY[0x277D1ED00], MEMORY[0x277D1ED10]);
        v19 = v43;
        sub_22C909F8C();
        (*v39)(v18, v19);
        v20 = sub_22C90374C();
        MEMORY[0x2318B8B10](*(v20 + 16));
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = (*(v38 + 80) + 32) & ~*(v38 + 80);
          v47 = v20;
          v23 = v20 + v22;
          v24 = *(v38 + 72);
          v25 = *(v38 + 16);
          do
          {
            v25(v8, v23, v6);
            sub_22C7E4310(&qword_27D9BC818, MEMORY[0x277D1EE20], MEMORY[0x277D1EE28]);
            sub_22C909F8C();
            (*v17)(v8, v6);
            v23 += v24;
            --v21;
          }

          while (v21);

          a3 = v46;
        }

        else
        {
        }

        result = sub_22C90B66C();
        v26 = 1 << *a3;
        v27 = __OFSUB__(v26, 1);
        v28 = v26 - 1;
        if (v27)
        {
          break;
        }

        v29 = v28 & result;
        v30 = v41;
        v31 = sub_22C9030FC();
        v47 = v32;
        v34 = v33;
        sub_22C7E42B8(v56, type metadata accessor for LooselyComparableRetrievedTool);
        v49 = a3;
        v50 = v30;
        v51 = v29;
        v52 = v31;
        v53 = v47;
        v54 = v34;
        v55 = 0;
        while (v52)
        {
          sub_22C90315C();
        }

        v35 = v48 + 1;
        v36 = __OFADD__(v48, 1);
        result = sub_22C90314C();
        if (v36)
        {
          goto LABEL_19;
        }

        v15 = v35;
        a3 = v46;
        if (v35 == v45)
        {
          return result;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of QueryDecorationToolSelectorService.rankQueryDecorationOutputForToolSelection(spans:context:toolRetrievalResponse:qdContext:)()
{
  sub_22C3743E4();
  sub_22C7E4A08();
  v5 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22C7D8F18;
  v3 = sub_22C3806B8();

  return v5(v3);
}

uint64_t sub_22C7D8F18()
{
  sub_22C369980();
  v2 = v1;
  sub_22C369A3C();
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  sub_22C36D5E0();

  return v5(v2);
}

uint64_t sub_22C7D9010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 8);
  while (a4 != v7)
  {
    v9 = *(v8 - 1) == a1 && *v8 == a2;
    if (v9 || (sub_22C90B4FC() & 1) != 0)
    {
      return v7;
    }

    ++v7;
    v8 += 2;
  }

  return 0;
}

void sub_22C7D909C()
{
  sub_22C3BDA38();
  v2 = v1;
  v3 = sub_22C3813C8();
  v4 = type metadata accessor for PromptTreeIdentifier(v3);
  v5 = sub_22C3699B8(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C37BDA4();
  for (i = 0; v2 != i; ++i)
  {
    sub_22C375B80();
    sub_22C7E4208(v7, v0);
    sub_22C488E5C();
    v9 = v8;
    sub_22C7E438C();
    sub_22C7E42B8(v0, v10);
    if (v9)
    {
      break;
    }
  }

  sub_22C3BDA24();
}

void sub_22C7D918C()
{
  sub_22C36BA7C();
  v2 = v1;
  v62 = v3;
  v5 = v4;
  v55 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v56 = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v54 = v11;
  sub_22C36BA0C();
  v61 = sub_22C902D0C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v49 = v15;
  v57 = sub_22C3A5908(&qword_27D9BCBC0, &qword_22C9166F8);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C3721C8();
  v17 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v18 = sub_22C369914(v17);
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v51 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v60 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA64();
  v59 = v23;
  if (v2)
  {
    v24 = 0;
    v52 = (v7 + 8);
    v53 = (v7 + 16);
    v50 = (v13 + 8);
    v58 = v0;
    do
    {
      if ((*(v62 + 8 * v24) & 0x8000000000000000) != 0)
      {
        if (v5 < 0)
        {
          v34 = swift_projectBox();
          v35 = swift_projectBox();
          v36 = *v53;
          (*v53)(v54, v34, v55);
          v36(v56, v35, v55);
          type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
          type metadata accessor for PromptTreeIdentifier(0);
          sub_22C36D168();
          sub_22C7E4310(&qword_27D9BD100, v37, &unk_22C9162AC);
          sub_22C36D33C();
          sub_22C7E4310(&qword_27D9BCB90, v38, &unk_22C9165AC);

          LOBYTE(v34) = sub_22C90675C();
          v39 = *v52;
          (*v52)(v56, v55);
          v39(v54, v55);

          if (v34)
          {
            break;
          }
        }
      }

      else if ((v5 & 0x8000000000000000) == 0)
      {
        v25 = swift_projectBox();
        v26 = swift_projectBox();
        v27 = v25;
        v28 = v58;
        sub_22C7E4208(v27, v59);
        sub_22C7E4208(v26, v60);
        v29 = *(v57 + 48);
        v30 = sub_22C37335C();
        sub_22C7E4208(v30, v31);
        sub_22C7E4208(v60, v58 + v29);
        switch(sub_22C370B74(v58, 3, v61))
        {
          case 1u:

            sub_22C371DD0();
            sub_22C7E42B8(v60, v42);
            sub_22C7E4E5C();
            sub_22C36D0A8(v58 + v29, 3, v61);
            if (v43)
            {
              goto LABEL_23;
            }

            goto LABEL_16;
          case 2u:

            sub_22C371DD0();
            sub_22C7E42B8(v60, v40);
            sub_22C7E4E5C();
            if (sub_22C7E4988() == 2)
            {
              goto LABEL_23;
            }

            goto LABEL_16;
          case 3u:

            sub_22C371DD0();
            sub_22C7E42B8(v60, v41);
            sub_22C7E4E5C();
            if (sub_22C7E4988() == 3)
            {
              goto LABEL_23;
            }

            goto LABEL_16;
          default:
            sub_22C37A418();
            sub_22C7E4208(v58, v51);
            if (sub_22C7E4988())
            {

              sub_22C7E42B8(v60, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
              sub_22C7E4E5C();
              v32 = sub_22C38C41C();
              v33(v32, v61);
LABEL_16:
              sub_22C36DD28(v58, &qword_27D9BCBC0, &qword_22C9166F8);
            }

            else
            {
              (*(v13 + 32))(v49, v58 + v29, v61);

              sub_22C36BA00();
              v44 = sub_22C902CFC();
              v45 = *v50;
              (*v50)(v49, v61);
              sub_22C7E42B8(v60, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
              sub_22C7E42B8(v59, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
              v46 = sub_22C36D39C();
              v45(v46);
              v28 = v58;
              if (v44)
              {
LABEL_23:
                sub_22C36A3B8();
                sub_22C7E42B8(v28, v48);

                goto LABEL_24;
              }

              sub_22C36A3B8();
              sub_22C7E42B8(v58, v47);
            }

            break;
        }
      }

      ++v24;
    }

    while (v2 != v24);
  }

LABEL_24:
  sub_22C36CC48();
}

void sub_22C7D9774()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v34 = v6;
  v7 = sub_22C90952C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v29 = v11;
  v12 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C3699B8(v12);
  v14 = v13;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C38059C();
  v30 = sub_22C3A5908(&qword_27D9BEC60, &qword_22C920510);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C7E47F4();
  v33 = v3;
  if (v3)
  {
    v17 = 0;
    v18 = *(v14 + 72);
    v32 = (v9 + 8);
    v19 = v30;
    v28 = v18;
    while (1)
    {
      v20 = *(v19 + 48);
      v21 = sub_22C634750();
      sub_22C4E719C(v21, v22, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C4E719C(v34, v1 + v20, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C36D0A8(v1, 1, v7);
      if (v23)
      {
        break;
      }

      sub_22C4E719C(v1, v0, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C36D0A8(v1 + v20, 1, v7);
      if (v23)
      {
        (*v32)(v0, v7);
LABEL_11:
        sub_22C36DD28(v1, &qword_27D9BEC60, &qword_22C920510);
        goto LABEL_13;
      }

      (*(v9 + 32))(v29, v1 + v20, v7);
      sub_22C381820();
      sub_22C7E4310(&qword_28142FA78, v24, MEMORY[0x277D72D70]);
      sub_22C6AFC04();
      v31 = sub_22C90A0BC();
      v25 = *v32;
      v18 = v28;
      (*v32)(v29, v7);
      v25(v0, v7);
      v19 = v30;
      v26 = sub_22C37FE24();
      sub_22C36DD28(v26, v27, &qword_22C90D960);
      if (v31)
      {
        goto LABEL_14;
      }

LABEL_13:
      ++v17;
      v5 += v18;
      if (v33 == v17)
      {
        goto LABEL_14;
      }
    }

    sub_22C36D0A8(v1 + v20, 1, v7);
    if (v23)
    {
      sub_22C36DD28(v1, &qword_27D9BB0C0, &qword_22C90D960);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_14:
  sub_22C36CC48();
}

void sub_22C7D9AE0()
{
  sub_22C36BA7C();
  v18 = v1;
  v19 = v2;
  v17 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  sub_22C369824();
  v11 = v10;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C7E47F4();
  for (i = 0; v5 != i; ++i)
  {
    (*(v11 + 16))(v0, v7 + *(v11 + 72) * i, v9);
    sub_22C7E4310(v17, v18, v19);
    sub_22C37FE24();
    v14 = sub_22C90A0BC();
    v15 = sub_22C4F6088();
    v16(v15);
    if (v14)
    {
      break;
    }
  }

  sub_22C36CC48();
}

void sub_22C7D9C10()
{
  sub_22C36BA7C();
  v3 = v2;
  v40 = v4;
  sub_22C3813C8();
  v5 = sub_22C90430C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v42 = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22C7E4D3C();
  v35[1] = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v11);
  sub_22C3885DC();
  MEMORY[0x28223BE20](v12);
  v15 = (v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v3;
  if (!v3)
  {
LABEL_14:
    sub_22C36CC48();
    return;
  }

  v16 = 0;
  v38 = *v0;
  v17 = *(v13 + 72);
  v36 = v0;
  v37 = v17;
  v41 = v7 + 16;
  v45 = v7;
  v18 = (v7 + 8);
  while (1)
  {
    sub_22C36FE98();
    sub_22C7E4208(v19, v15);
    if ((sub_22C48819C(*v15, v38) & 1) == 0)
    {
      goto LABEL_13;
    }

    v20 = v36[1];
    v47 = v15[1];
    v21 = *(v20 + 16);
    v46 = *(v47 + 16);
    if (v46 != v21)
    {
      goto LABEL_13;
    }

    if (v46 && v47 != v20)
    {
      break;
    }

LABEL_12:
    if (sub_22C90962C())
    {
      sub_22C37F57C();
      sub_22C7E42B8(v15, v34);
      goto LABEL_14;
    }

LABEL_13:
    sub_22C37F57C();
    sub_22C7E42B8(v15, v33);
    if (++v16 == v39)
    {
      goto LABEL_14;
    }
  }

  v22 = 0;
  sub_22C36BA94();
  v43 = v20 + v23;
  v44 = v47 + v23;
  while (v22 < *(v47 + 16))
  {
    v24 = v15;
    v25 = *(v45 + 72) * v22;
    v26 = *(v45 + 16);
    v26(v1, v44 + v25, v5);
    if (v22 >= *(v20 + 16))
    {
      goto LABEL_17;
    }

    v27 = v1;
    v28 = v42;
    v26(v42, v43 + v25, v5);
    sub_22C38AB84();
    sub_22C7E4310(&qword_27D9BC808, v29, MEMORY[0x277D85590]);
    v30 = sub_22C90A0BC();
    v31 = *v18;
    v32 = v28;
    v1 = v27;
    (*v18)(v32, v5);
    v31(v27, v5);
    v15 = v24;
    if ((v30 & 1) == 0)
    {
      goto LABEL_13;
    }

    if (v46 == ++v22)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_22C7D9F30()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  v122 = v7;
  v111 = sub_22C3A5908(&qword_27D9BCBC8, &unk_22C916700);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C36D5B4();
  v116 = v9;
  v10 = sub_22C36BA0C();
  v114 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(v10);
  sub_22C36985C();
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  sub_22C387D8C();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA58();
  v105 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  v113 = v15;
  sub_22C36BA0C();
  v115 = sub_22C902D0C();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  sub_22C36D234(v20);
  v110 = sub_22C3A5908(&qword_27D9BCBC0, &qword_22C9166F8);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v21);
  v23 = &v98[-v22];
  v24 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v25 = sub_22C369914(v24);
  MEMORY[0x28223BE20](v25);
  sub_22C369ABC();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  sub_22C373000();
  v121 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v30);
  sub_22C369ABC();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  v117 = v35;
  v120 = sub_22C3A5908(&qword_27D9BCBB8, &qword_22C9166F0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v36);
  sub_22C38059C();
  v107 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C3885DC();
  MEMORY[0x28223BE20](v37);
  v40 = &v98[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v4)
  {
    v103 = v0;
    v104 = v28;
    v41 = 0;
    v106 = (v17 + 8);
    v42 = *(v38 + 72);
    v118 = v33;
    v119 = v42;
    v102 = (v17 + 32);
    v112 = v2;
    v108 = v4;
    v109 = v23;
    do
    {
      sub_22C7E46B8();
      v43 = sub_22C37170C();
      sub_22C7E4208(v43, v44);
      sub_22C7E46A0();
      sub_22C7E4208(v40, v1);
      sub_22C7E4208(v122, v1 + v17);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = sub_22C3750FC();
        v46 = v118;
        sub_22C7E4208(v45, v118);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v58 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local;
          goto LABEL_13;
        }

        v47 = sub_22C7E45FC();
        v48 = v113;
        sub_22C7E4260(v47, v113);
        v49 = v116;
        v50 = (v116 + *(v111 + 48));
        sub_22C7E4688();
        sub_22C7E4208(v46, v49);
        sub_22C7E4208(v48, v50);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_22C380060();
            v52 = v103;
            sub_22C7E4208(v116, v103);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              sub_22C7E4374();
              sub_22C7E42B8(v113, v77);
              sub_22C7E49CC();
              v78(v52, v115);
LABEL_30:
              v4 = v108;
              v23 = v109;
              v2 = v112;
LABEL_31:
              sub_22C36DD28(v116, &qword_27D9BCBC8, &unk_22C916700);
LABEL_32:
              sub_22C7E4374();
              sub_22C7E42B8(v118, v79);
              sub_22C36C464();
              sub_22C7E42B8(v40, v80);
              sub_22C372DD8();
              v76 = v1;
              goto LABEL_33;
            }

            v53 = v101;
            v54 = v115;
            (*v102)(v101, v50, v115);
            v55 = sub_22C902CFC();
            v17 = *v106;
            (*v106)(v53, v54);
            sub_22C7E4374();
            sub_22C7E42B8(v113, v56);
            (v17)(v52, v54);
            v4 = v108;
            v23 = v109;
            v2 = v112;
            if ((v55 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          else
          {
            sub_22C7E4374();
            sub_22C7E42B8(v113, v68);
            v69 = swift_getEnumCaseMultiPayload();
            v4 = v108;
            v23 = v109;
            v2 = v112;
            if (v69 != 2)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          sub_22C380060();
          v65 = v105;
          sub_22C7E4208(v116, v105);
          v17 = *v65;
          v66 = v65[1];
          if (swift_getEnumCaseMultiPayload())
          {
            sub_22C7E4374();
            sub_22C7E42B8(v113, v67);

            goto LABEL_30;
          }

          v81 = *v50;
          v82 = v50[1];
          v83 = v17 == v81 && v66 == v82;
          v23 = v109;
          v2 = v112;
          if (v83)
          {

            sub_22C7E4374();
            sub_22C7E42B8(v113, v93);
            v4 = v108;
          }

          else
          {
            v17 = sub_22C90B4FC();

            sub_22C7E4374();
            sub_22C7E42B8(v113, v84);
            v4 = v108;
            if ((v17 & 1) == 0)
            {
LABEL_41:
              sub_22C7E4374();
              sub_22C7E42B8(v116, v85);
              goto LABEL_32;
            }
          }
        }

        v61 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local;
        sub_22C7E42B8(v116, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local);
        v92 = v118;
      }

      else
      {
        v57 = sub_22C3750FC();
        v46 = v117;
        sub_22C7E4208(v57, v117);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v58 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global;
LABEL_13:
          sub_22C7E42B8(v46, v58);
          sub_22C36DD28(v1, &qword_27D9BCBB8, &qword_22C9166F0);
          goto LABEL_28;
        }

        v59 = sub_22C7E45E0();
        sub_22C7E4260(v59, v2);
        sub_22C385E08();
        v61 = v60;
        sub_22C7E4208(v46, v23);
        sub_22C7E4208(v2, &v23[v17]);
        switch(sub_22C370B74(v23, 3, v115))
        {
          case 1u:
            sub_22C36A3B8();
            sub_22C7E42B8(v2, v72);
            sub_22C36D0A8(&v23[v17], 3, v115);
            if (v83)
            {
              goto LABEL_43;
            }

            goto LABEL_26;
          case 2u:
            sub_22C36A3B8();
            sub_22C7E42B8(v2, v70);
            if (sub_22C7E4944() == 2)
            {
              goto LABEL_43;
            }

            goto LABEL_26;
          case 3u:
            sub_22C36A3B8();
            sub_22C7E42B8(v2, v71);
            if (sub_22C7E4944() == 3)
            {
              goto LABEL_43;
            }

            goto LABEL_26;
          default:
            sub_22C37A418();
            v62 = v104;
            sub_22C7E4208(v23, v104);
            if (sub_22C7E4944())
            {
              sub_22C36A3B8();
              sub_22C7E42B8(v2, v63);
              sub_22C7E49CC();
              v64(v62, v115);
LABEL_26:
              sub_22C36DD28(v23, &qword_27D9BCBC0, &qword_22C9166F8);
LABEL_27:
              sub_22C36A3B8();
              sub_22C7E42B8(v117, v73);
              sub_22C372DD8();
              sub_22C7E42B8(v1, v74);
LABEL_28:
              sub_22C36C464();
              v76 = v40;
LABEL_33:
              sub_22C7E42B8(v76, v75);
              goto LABEL_34;
            }

            v86 = v100;
            v87 = v115;
            (*v102)(v100, &v23[v17], v115);
            v99 = sub_22C902CFC();
            v61 = v106;
            v17 = *v106;
            v88 = v86;
            v2 = v112;
            (*v106)(v88, v87);
            sub_22C36A3B8();
            sub_22C7E42B8(v2, v89);
            v90 = v87;
            v46 = v117;
            (v17)(v104, v90);
            if ((v99 & 1) == 0)
            {
              sub_22C36A3B8();
              sub_22C7E42B8(v23, v97);
              goto LABEL_27;
            }

LABEL_43:
            sub_22C7E46D0();
            sub_22C7E42B8(v23, v91);
            v92 = v46;
            break;
        }
      }

      sub_22C7E42B8(v92, v61);
      sub_22C372DD8();
      sub_22C7E42B8(v1, v94);
      v95 = sub_22C902CFC();
      sub_22C36C464();
      sub_22C7E42B8(v40, v96);
      if (v95)
      {
        break;
      }

LABEL_34:
      ++v41;
      v6 += v119;
    }

    while (v4 != v41);
  }

  sub_22C36CC48();
}

void sub_22C7DA844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_22C7E48FC(a1, a2, a3, a4, a5);
  sub_22C909FFC();
  v8 = v48;
  sub_22C90B66C();
  sub_22C3703F4();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_22C386420(v9);
    sub_22C634004();
    sub_22C90312C();
    sub_22C7E4C50();
    v11 = v50;
    sub_22C7E447C(v12, v13, v14, v15, v16, v17, v18, v19, v31, v33, v35, v37, v39, v41, v43, v45, v46, v47, v48[0], v48[1], v48[2], v48[3], v49);
    if ((v11 & 1) == 0)
    {
      do
      {
        v20 = (v5 + 16 * v8);
        if (*v20 == v7 && v20[1] == v6)
        {
          break;
        }

        if (sub_22C90B4FC())
        {
          break;
        }

        v22 = sub_22C90315C();
        sub_22C386378(v22, v23, v24, v25, v26, v27, v28, v29, v32, v34, v36, v38, v40, v42, v44);
        v8 = sub_22C90313C();
      }

      while ((v30 & 1) == 0);
    }
  }
}

void sub_22C7DA91C()
{
  sub_22C36BA7C();
  sub_22C7E4464(v2, v3);
  sub_22C90644C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C377578();
  v5 = *v0;
  sub_22C3730A4();
  sub_22C7E4310(v6, v7, MEMORY[0x277D1D8A8]);
  sub_22C388DAC();
  sub_22C909F7C();
  sub_22C3703F4();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4700(v8);
    sub_22C36DB60();
    while ((v1 & 1) == 0)
    {
      v10 = sub_22C381BDC();
      v11(v10);
      sub_22C3730A4();
      sub_22C7E4310(&qword_27D9C02E0, v12, MEMORY[0x277D1D8B0]);
      sub_22C7E4500();
      v13 = sub_22C5EB560();
      v14(v13);
      if (v5)
      {
        break;
      }

      v5 = &v16;
      v15 = sub_22C90315C();
      sub_22C7E4404(v15);
      sub_22C50B4BC();
    }

    sub_22C386878();
    sub_22C36CC48();
  }
}

void sub_22C7DAA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_22C90B62C();
  sub_22C909FFC();
  v9 = v50;
  sub_22C90B66C();
  sub_22C3703F4();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_22C386420(v10);
    sub_22C7E4C80();
    sub_22C90312C();
    sub_22C7E4C50();
    v12 = v52;
    sub_22C7E447C(v13, v14, v15, v16, v17, v18, v19, v20, v33, v35, v37, v39, v41, v43, v45, v47, v48, v49, v50[0], v50[1], v50[2], v50[3], v51);
    if ((v12 & 1) == 0)
    {
      do
      {
        v21 = (a4 + 24 * v9);
        v22 = *v21 == a1 && v21[1] == a2;
        if (v22 || (sub_22C90B4FC() & 1) != 0)
        {
          sub_22C5DBAE4();
          if (v23)
          {
            break;
          }
        }

        v24 = sub_22C90315C();
        sub_22C386378(v24, v25, v26, v27, v28, v29, v30, v31, v34, v36, v38, v40, v42, v44, v46);
        v9 = sub_22C90313C();
      }

      while ((v32 & 1) == 0);
    }
  }
}

void sub_22C7DAB7C()
{
  sub_22C3BDA38();
  v1 = sub_22C3813C8();
  v2 = type metadata accessor for PromptTreeIdentifier(v1);
  v3 = sub_22C3699B8(v2);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C90B62C();
  sub_22C489574();
  sub_22C90B66C();
  sub_22C3703F4();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4C80();
    sub_22C90312C();
    if ((v10 & 1) == 0)
    {
      do
      {
        sub_22C375B80();
        sub_22C7E4208(v5, v0);
        sub_22C488E5C();
        v7 = v6;
        sub_22C7E438C();
        sub_22C7E42B8(v0, v8);
        if (v7)
        {
          break;
        }

        sub_22C90315C();
        sub_22C90313C();
      }

      while ((v9 & 1) == 0);
    }

    sub_22C3BDA24();
  }
}

void sub_22C7DACF8()
{
  sub_22C36BA7C();
  v67 = v1;
  v3 = v2;
  v62 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  sub_22C3698F8(v8);
  v9 = sub_22C902D0C();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  sub_22C36D234(v13);
  v63 = sub_22C3A5908(&qword_27D9BCBC0, &qword_22C9166F8);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C3721C8();
  v15 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA58();
  v66 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  v65 = v20;
  sub_22C90B62C();
  sub_22C4ADC7C(v68, v3);
  v21 = v68;
  sub_22C90B66C();
  sub_22C3703F4();
  if (v23)
  {
    __break(1u);
    return;
  }

  sub_22C7E4848(v22);
  sub_22C634004();
  sub_22C90312C();
  sub_22C7E4C0C();
  v24 = v68[64];
  v58 = (v5 + 16);
  v56 = (v11 + 8);
  sub_22C7E49E8(v25);
  v64 = v0;
  v60 = v3;
  v59 = v9;
  if (v24)
  {
    goto LABEL_23;
  }

  while ((*(v67 + 8 * v21) & 0x8000000000000000) != 0)
  {
    if (v3 < 0)
    {
      v36 = swift_projectBox();
      swift_projectBox();
      v37 = *v58;
      (*v58)(v61, v36, v62);
      v38 = sub_22C37FE24();
      v37(v38);
      type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
      type metadata accessor for PromptTreeIdentifier(0);
      sub_22C36D168();
      sub_22C7E4310(&qword_27D9BD100, v39, &unk_22C9162AC);
      sub_22C36D33C();
      sub_22C7E4310(&qword_27D9BCB90, v40, &unk_22C9165AC);

      LOBYTE(v36) = sub_22C90675C();
      v41 = *(v5 + 8);
      v42 = sub_22C38BD8C();
      v41(v42);
      v9 = v59;
      v3 = v60;
      (v41)(v61, v62);

      if (v36)
      {
        goto LABEL_23;
      }
    }

LABEL_18:
    sub_22C90315C();
    sub_22C7E43B8();
    v21 = sub_22C90313C();
    if (v47)
    {
      goto LABEL_23;
    }
  }

  if (v3 < 0)
  {
    goto LABEL_18;
  }

  v26 = swift_projectBox();
  v27 = swift_projectBox();
  sub_22C7E4208(v26, v65);
  v28 = v27;
  v29 = v64;
  sub_22C7E4208(v28, v66);
  v30 = *(v63 + 48);
  v31 = sub_22C37FE24();
  sub_22C7E4208(v31, v32);
  sub_22C7E4208(v66, v64 + v30);
  switch(sub_22C370B74(v64, 3, v9))
  {
    case 1u:

      sub_22C371DD0();
      sub_22C7E42B8(v66, v45);
      sub_22C7E4E14();
      sub_22C36D0A8(v64 + v30, 3, v9);
      if (v46)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    case 2u:

      sub_22C371DD0();
      sub_22C7E42B8(v66, v43);
      sub_22C7E4E14();
      if (sub_22C7E4890() == 2)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    case 3u:

      sub_22C371DD0();
      sub_22C7E42B8(v66, v44);
      sub_22C7E4E14();
      if (sub_22C7E4890() == 3)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    default:
      sub_22C37A418();
      sub_22C7E4208(v64, v57);
      if (sub_22C7E4890())
      {

        sub_22C371DD0();
        sub_22C7E42B8(v66, v33);
        sub_22C7E4E14();
        sub_22C36BA4C();
        v34 = sub_22C6AFC04();
        v35(v34);
LABEL_16:
        sub_22C36DD28(v64, &qword_27D9BCBC0, &qword_22C9166F8);
        goto LABEL_17;
      }

      sub_22C36BA4C();
      v48(v55, v64 + v30, v9);

      v49 = sub_22C902CFC();
      v50 = *v56;
      (*v56)(v55, v9);
      sub_22C7E46D0();
      sub_22C7E42B8(v66, v51);
      sub_22C7E42B8(v65, v55);
      v52 = sub_22C6AFC04();
      v50(v52);
      v29 = v64;
      if ((v49 & 1) == 0)
      {
        sub_22C36A3B8();
        sub_22C7E42B8(v64, v53);
LABEL_17:

        goto LABEL_18;
      }

LABEL_22:
      sub_22C36A3B8();
      sub_22C7E42B8(v29, v54);

LABEL_23:
      sub_22C36CC48();
      return;
  }
}

void sub_22C7DB3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_22C7E48FC(a1, a2, a3, a4, a5);
  sub_22C909FFC();
  v8 = v48;
  sub_22C90B66C();
  sub_22C3703F4();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_22C386420(v9);
    sub_22C634004();
    sub_22C90312C();
    sub_22C7E4C50();
    v11 = v50;
    sub_22C7E447C(v12, v13, v14, v15, v16, v17, v18, v19, v31, v33, v35, v37, v39, v41, v43, v45, v46, v47, v48[0], v48[1], v48[2], v48[3], v49);
    if ((v11 & 1) == 0)
    {
      do
      {
        v20 = (v5 + 16 * v8);
        if (*v20 == v7 && v20[1] == v6)
        {
          break;
        }

        if (sub_22C90B4FC())
        {
          break;
        }

        v22 = sub_22C90315C();
        sub_22C386378(v22, v23, v24, v25, v26, v27, v28, v29, v32, v34, v36, v38, v40, v42, v44);
        v8 = sub_22C90313C();
      }

      while ((v30 & 1) == 0);
    }
  }
}

void sub_22C7DB47C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v99 = a2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  sub_22C90B62C();
  HIDWORD(v100) = v9;
  if (v9)
  {
    v10 = &v106;
    MEMORY[0x2318B8B10](1);
    sub_22C909FFC();
  }

  else
  {
    v10 = &v106;
    MEMORY[0x2318B8B10](0);
  }

  sub_22C909FFC();
  sub_22C90B66C();
  sub_22C3703F4();
  if (v12)
  {
    __break(1u);
    return;
  }

  sub_22C7E4848(v11);
  sub_22C90312C();
  sub_22C7E4C0C();
  v102 = v106;
  v103 = v107;
  v104 = v108;
  v105 = v21;
  v101 = v107;
  v93 = v6;
  v94 = v5;
  v95 = v8;
  v97 = v7;
  if ((v110 & 1) == 0)
  {
    do
    {
      v22 = v99 + 40 * v10;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = *(v22 + 32);
      if (v27)
      {
        if (a1[4])
        {
          v15 = *a1;
          v16 = a1[1];
          v28 = a1[2];
          v29 = a1[3];
          v30 = v23 == *a1 && v24 == v16;
          if (v30 || (sub_22C36D39C(), v13 = sub_22C90B4FC(), (v13 & 1) != 0))
          {
            if (v25 == v28 && v26 == v29)
            {
              sub_22C7E4B98(v13, v14, v15, v16, v17, v18, v19, v20, v92, v93, v94, v95, v97, v99, v100, v101);
LABEL_31:
              v81 = sub_22C37BC4C();
              sub_22C480D88(v81, v82, v83, v84, v27);
              v85 = sub_22C37BC4C();
              sub_22C43627C(v85, v86, v87, v88, v27);
              sub_22C7E4CF4();
              v89 = sub_22C50B578();
              sub_22C43627C(v89, v90, v98, v96, v91);
              return;
            }

            v32 = sub_22C90B4FC();
            v33 = v32;
            sub_22C7E4B98(v32, v34, v35, v36, v37, v38, v39, v40, v92, v93, v94, v95, v97, v99, v100, v101);
            v41 = sub_22C37BC4C();
            sub_22C480D88(v41, v42, v43, v44, 1);
            v45 = sub_22C37BC4C();
            sub_22C43627C(v45, v46, v47, v48, 1);
            sub_22C7E4CF4();
            goto LABEL_25;
          }
        }
      }

      else if ((a1[4] & 1) == 0)
      {
        v60 = a1[1];
        if (v23 == *a1 && v24 == v60)
        {
          sub_22C7E4B98(v13, v14, *a1, v60, v17, v18, v19, v20, v92, v93, v94, v95, v97, v99, v100, v101);
          goto LABEL_31;
        }

        sub_22C36D39C();
        v62 = sub_22C90B4FC();
        v33 = v62;
        sub_22C7E4B98(v62, v63, v64, v65, v66, v67, v68, v69, v92, v93, v94, v95, v97, v99, v100, v101);
        v70 = sub_22C37BC4C();
        sub_22C480D88(v70, v71, v72, v73, 0);
        v74 = sub_22C37BC4C();
        sub_22C43627C(v74, v75, v76, v77, 0);
        sub_22C7E4CF4();
LABEL_25:
        v78 = sub_22C50B578();
        sub_22C43627C(v78, v79, v97, v95, v80);
        if (v33)
        {
          return;
        }

        goto LABEL_26;
      }

      sub_22C7E4B98(v13, v14, v15, v16, v17, v18, v19, v20, v92, v93, v94, v95, v97, v99, v100, v101);
      v49 = sub_22C37BC4C();
      sub_22C480D88(v49, v50, v51, v52, v27);
      v53 = sub_22C37BC4C();
      sub_22C43627C(v53, v54, v55, v56, v27);
      sub_22C7E4CF4();
      v57 = sub_22C50B578();
      sub_22C43627C(v57, v58, v97, v95, v59);
LABEL_26:
      sub_22C90315C();
      v106 = v102;
      v107 = v103;
      v108 = v104;
      v109 = v105;
      v101 = v103;
      v13 = sub_22C90313C();
      v10 = v13;
    }

    while ((v14 & 1) == 0);
  }
}

void sub_22C7DB73C()
{
  sub_22C36BA7C();
  sub_22C7E4464(v2, v3);
  sub_22C90430C();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C377578();
  v5 = *v0;
  sub_22C38AB84();
  sub_22C7E4310(v6, v7, MEMORY[0x277D85588]);
  sub_22C388DAC();
  sub_22C909F7C();
  sub_22C3703F4();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4700(v8);
    sub_22C36DB60();
    while ((v1 & 1) == 0)
    {
      v10 = sub_22C381BDC();
      v11(v10);
      sub_22C38AB84();
      sub_22C7E4310(&qword_27D9BC808, v12, MEMORY[0x277D85590]);
      sub_22C7E4500();
      v13 = sub_22C5EB560();
      v14(v13);
      if (v5)
      {
        break;
      }

      v5 = &v16;
      v15 = sub_22C90315C();
      sub_22C7E4404(v15);
      sub_22C50B4BC();
    }

    sub_22C386878();
    sub_22C36CC48();
  }
}

void sub_22C7DB87C()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C90952C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  sub_22C36D234(v9);
  v10 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C3699B8(v10);
  v12 = v11;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36D5B4();
  v64 = v14;
  v56 = sub_22C3A5908(&qword_27D9BEC60, &qword_22C920510);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C7E47F4();
  sub_22C90B62C();
  sub_22C7E3060(&v67, v16, v17, v18, v19, v20, v21, v22, v53, v54, v55, v56, v58, v60, v62, v63, v64, v66);
  sub_22C90B66C();
  sub_22C3703F4();
  if (!v24)
  {
    sub_22C7E4848(v23);
    sub_22C90312C();
    sub_22C7E49F8();
    v61 = (v7 + 8);
    sub_22C7E49E8(v25);
    v27 = v57;
    while (1)
    {
      if (v26)
      {
LABEL_15:
        sub_22C36CC48();
        return;
      }

      v28 = *(v27 + 48);
      sub_22C7E48F0();
      sub_22C4E719C(v29, v30, v31, v32);
      sub_22C7E48F0();
      sub_22C4E719C(v33, v34, v35, v36);
      sub_22C36D0A8(v0, 1, v5);
      if (v41)
      {
        break;
      }

      sub_22C7E48F0();
      sub_22C4E719C(v37, v38, v39, v40);
      sub_22C36D0A8(v0 + v28, 1, v5);
      if (v41)
      {
        sub_22C37ED90();
        v42(v65, v5);
LABEL_12:
        sub_22C36DD28(v0, &qword_27D9BEC60, &qword_22C920510);
        goto LABEL_14;
      }

      sub_22C36BA4C();
      v43 = sub_22C5CAC54();
      v44(v43);
      sub_22C381820();
      sub_22C7E4310(&qword_28142FA78, v45, MEMORY[0x277D72D70]);
      v59 = sub_22C90A0BC();
      v46 = v12;
      v47 = v4;
      v48 = v2;
      v49 = *v61;
      v50 = v27;
      v27 = v57;
      (*v61)(v50, v5);
      v49(v65, v5);
      v2 = v48;
      v4 = v47;
      v12 = v46;
      v51 = sub_22C4F6088();
      sub_22C36DD28(v51, v52, &qword_22C90D960);
      if (v59)
      {
        goto LABEL_15;
      }

LABEL_14:
      sub_22C90315C();
      sub_22C7E43B8();
      sub_22C90313C();
    }

    sub_22C36D0A8(v0 + v28, 1, v5);
    if (v41)
    {
      sub_22C36DD28(v0, &qword_27D9BB0C0, &qword_22C90D960);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  __break(1u);
}

void sub_22C7DBC48()
{
  sub_22C36BA7C();
  sub_22C7E4464(v2, v3);
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C377578();
  v5 = *v0;
  sub_22C3805E8();
  sub_22C7E4310(v6, v7, MEMORY[0x277D1C348]);
  sub_22C388DAC();
  sub_22C909F7C();
  sub_22C3703F4();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4700(v8);
    sub_22C36DB60();
    while ((v1 & 1) == 0)
    {
      v10 = sub_22C381BDC();
      v11(v10);
      sub_22C3805E8();
      sub_22C7E4310(&qword_27D9BAA28, v12, MEMORY[0x277D1C358]);
      sub_22C7E4500();
      v13 = sub_22C5EB560();
      v14(v13);
      if (v5)
      {
        break;
      }

      v5 = &v16;
      v15 = sub_22C90315C();
      sub_22C7E4404(v15);
      sub_22C50B4BC();
    }

    sub_22C386878();
    sub_22C36CC48();
  }
}

uint64_t sub_22C7DBD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v13 = a2;
  v5 = sub_22C90981C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C7E4310(&qword_27D9C02C8, MEMORY[0x277D73148], MEMORY[0x277D73150]);
  result = sub_22C909F7C();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22C90312C();
    v10 = v18;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    if ((v19 & 1) == 0)
    {
      do
      {
        (*(v6 + 16))(v8, v13 + *(v6 + 72) * v10, v5);
        sub_22C7E4310(&qword_27D9C02D0, MEMORY[0x277D73148], MEMORY[0x277D73158]);
        v11 = sub_22C90A0BC();
        (*(v6 + 8))(v8, v5);
        if (v11)
        {
          break;
        }

        sub_22C90315C();
        v14 = v20;
        v15 = v21;
        v16 = v22;
        v17 = v23;
        v10 = sub_22C90313C();
      }

      while ((v12 & 1) == 0);
    }

    return v10;
  }

  return result;
}

void sub_22C7DBFD0()
{
  sub_22C36BA7C();
  v2 = sub_22C3813C8();
  v3 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(v2);
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C377578();
  sub_22C90B62C();
  v5 = *v0;
  sub_22C48A828(v15, *v0);
  sub_22C901FAC();
  sub_22C3805E8();
  sub_22C7E4310(v6, v7, MEMORY[0x277D1C348]);
  sub_22C7E4C18();
  sub_22C909F8C();
  v14 = *(v0 + *(v3 + 24));
  sub_22C48A9B4(v15, v14);
  sub_22C90B66C();
  sub_22C3703F4();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4848(v8);
    sub_22C90312C();
    sub_22C7E4C0C();
    v10 = v15[64];
    sub_22C7E4524(v11);
    if ((v10 & 1) == 0)
    {
      while (1)
      {
        sub_22C37B7CC();
        sub_22C7E4208(v12, v1);
        if (sub_22C48865C(*v1, v5) & 1) != 0 && (sub_22C901F6C() & 1) != 0 && (sub_22C48819C(*(v1 + *(v3 + 24)), v14))
        {
          break;
        }

        sub_22C7E4760();
        sub_22C90315C();
        sub_22C7E43B8();
        sub_22C90313C();
        if (v13)
        {
          goto LABEL_9;
        }
      }

      sub_22C7E4760();
    }

LABEL_9:
    sub_22C36CC48();
  }
}

void sub_22C7DC1A4()
{
  sub_22C36BA7C();
  sub_22C369A48();
  v1 = sub_22C90430C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v5);
  sub_22C36BA64();
  v37 = v6;
  v7 = sub_22C36BA0C();
  type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v7);
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v36 = v9;
  sub_22C90B62C();
  sub_22C48A9B4(v38, *v0);
  v35 = v0[1];
  sub_22C471960(v38, v35);
  sub_22C90963C();
  sub_22C7E4310(&qword_27D9BC850, MEMORY[0x277D72E18], MEMORY[0x277D72E20]);
  sub_22C7E4C18();
  sub_22C909F8C();
  sub_22C90B66C();
  sub_22C3703F4();
  if (v11)
  {
    goto LABEL_18;
  }

  sub_22C7E4848(v10);
  sub_22C90312C();
  sub_22C7E49F8();
  sub_22C7E4524(v12);
  v34 = v3;
  v13 = (v3 + 8);
  v14 = v37;
  if (v15)
  {
LABEL_14:
    sub_22C36CC48();
    return;
  }

  while (1)
  {
    sub_22C36FE98();
    sub_22C7E4208(v16, v36);
    sub_22C7E48E4();
    if ((sub_22C48819C(v17, v18) & 1) == 0)
    {
      goto LABEL_13;
    }

    v19 = *(v36 + 8);
    v20 = *(v19 + 16);
    if (v20 != *(v35 + 16))
    {
      goto LABEL_13;
    }

    if (v20 && v19 != v35)
    {
      break;
    }

LABEL_12:
    if (sub_22C90962C())
    {
      sub_22C37F57C();
      sub_22C7E42B8(v36, v32);
      sub_22C37B56C();
      goto LABEL_14;
    }

LABEL_13:
    sub_22C37F57C();
    sub_22C7E42B8(v36, v30);
    sub_22C90315C();
    sub_22C7E43B8();
    sub_22C90313C();
    if (v31)
    {
      goto LABEL_14;
    }
  }

  v21 = 0;
  sub_22C36BA94();
  v23 = v19 + v22;
  v24 = v35 + v22;
  while (v21 < *(v19 + 16))
  {
    v25 = *(v34 + 72) * v21;
    v26 = *(v34 + 16);
    v26(v14, v23 + v25, v1);
    if (v21 >= *(v35 + 16))
    {
      goto LABEL_17;
    }

    v26(v33, v24 + v25, v1);
    sub_22C38AB84();
    sub_22C7E4310(&qword_27D9BC808, v27, MEMORY[0x277D85590]);
    v28 = sub_22C90A0BC();
    v29 = *v13;
    v14 = v37;
    (*v13)(v33, v1);
    v29(v37, v1);
    if ((v28 & 1) == 0)
    {
      goto LABEL_13;
    }

    if (v20 == ++v21)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_22C7DC5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  v23 = v22;
  v25 = v24;
  v132 = sub_22C3A5908(&qword_27D9BCBC8, &unk_22C916700);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v26);
  sub_22C36D5B4();
  v28 = sub_22C3698F8(v27);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(v28);
  sub_22C36985C();
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA64();
  sub_22C3698F8(v32);
  v33 = sub_22C902D0C();
  sub_22C369824();
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA64();
  sub_22C36D234(v36);
  sub_22C3A5908(&qword_27D9BCBC0, &qword_22C9166F8);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  sub_22C36D5B4();
  v39 = sub_22C3698F8(v38);
  v40 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(v39);
  v41 = sub_22C369914(v40);
  MEMORY[0x28223BE20](v41);
  sub_22C369ABC();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  sub_22C36BA64();
  v47 = sub_22C3698F8(v46);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v47);
  sub_22C36985C();
  MEMORY[0x28223BE20](v48);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA64();
  sub_22C36D234(v50);
  sub_22C3A5908(&qword_27D9BCBB8, &qword_22C9166F0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v51);
  sub_22C38059C();
  v52 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C369824();
  MEMORY[0x28223BE20](v53);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C90B62C();
  sub_22C487808();
  v54 = *(v52 + 20);
  sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
  sub_22C7E4C18();
  v137 = v33;
  sub_22C909F8C();
  sub_22C90B66C();
  sub_22C3703F4();
  if (v56)
  {
    __break(1u);
  }

  else
  {
    v131 = v44;
    sub_22C7E4848(v55);
    sub_22C90312C();
    sub_22C7E4C0C();
    sub_22C7E49E8(v57);
    sub_22C7E4788();
    if ((v140 & 1) == 0)
    {
      do
      {
        sub_22C7E46B8();
        sub_22C7E4208(v58, v20);
        sub_22C7E46A0();
        v60 = v59;
        sub_22C7E4208(v20, v21);
        sub_22C7E4208(v25, v54 + v21);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_22C3750FC();
          sub_22C7E4BE0();
          sub_22C7E4208(v72, v73);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_22C36A3B8();
            v75 = v60;
            goto LABEL_13;
          }

          v76 = sub_22C7E45E0();
          sub_22C7E4260(v76, v134);
          sub_22C385E08();
          v77 = v60;
          v79 = v78;
          sub_22C7E4208(v77, v23);
          sub_22C7E4208(v134, v54 + v23);
          v33 = v136;
          switch(sub_22C370B74(v23, 3, v137))
          {
            case 1u:
              sub_22C36A3B8();
              sub_22C7E4BB0(v95, v96);
              sub_22C36D0A8(v54 + v23, 3, v137);
              if (v109)
              {
                goto LABEL_40;
              }

              goto LABEL_26;
            case 2u:
              sub_22C36A3B8();
              sub_22C7E4BB0(v91, v92);
              if (sub_22C7E4720() == 2)
              {
                goto LABEL_40;
              }

              goto LABEL_26;
            case 3u:
              sub_22C36A3B8();
              sub_22C7E4BB0(v93, v94);
              if (sub_22C7E4720() == 3)
              {
                goto LABEL_40;
              }

              goto LABEL_26;
            default:
              sub_22C37A418();
              sub_22C7E4BE0();
              sub_22C7E4208(v80, v81);
              if (sub_22C7E4720())
              {
                sub_22C36A3B8();
                sub_22C7E4BB0(v82, v83);
                sub_22C36BA4C();
                v84(v79, v137);
LABEL_26:
                sub_22C36DD28(v23, &qword_27D9BCBC0, &qword_22C9166F8);
                goto LABEL_27;
              }

              sub_22C36BA4C();
              v115 = sub_22C5CAC54();
              v116(v115);
              sub_22C459028();
              v117 = sub_22C902CFC();
              v118 = sub_22C7E49A4(v117);
              v23 = v133;
              v54(v118, v137);
              sub_22C36A3B8();
              sub_22C7E4BB0(v119, v120);
              v33 = v136;
              v54(v131, v137);
              if ((v128 & 1) == 0)
              {
                sub_22C36A3B8();
                sub_22C7E42B8(v133, v127);
LABEL_27:
                sub_22C36A3B8();
                sub_22C7E42B8(v139, v97);
                sub_22C372DD8();
                sub_22C7E42B8(v21, v98);
                goto LABEL_28;
              }

LABEL_40:
              sub_22C7E42B8(v23, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
              sub_22C7E42B8(v139, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
              break;
          }

          goto LABEL_43;
        }

        v61 = sub_22C3750FC();
        sub_22C7E4208(v61, v33);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_22C7E4374();
          v75 = v33;
LABEL_13:
          sub_22C7E42B8(v75, v74);
          sub_22C36DD28(v21, &qword_27D9BCBB8, &qword_22C9166F0);
LABEL_28:
          sub_22C36C464();
          sub_22C7E42B8(v20, v99);
          goto LABEL_44;
        }

        v62 = sub_22C7E45FC();
        v23 = v33;
        v33 = v135;
        sub_22C7E4260(v62, v135);
        v63 = (v138 + *(v132 + 48));
        sub_22C7E4688();
        sub_22C7E4208(v23, v138);
        sub_22C7E4208(v135, v63);
        sub_22C7E48E4();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            sub_22C7E4374();
            v89 = sub_22C37B56C();
            sub_22C7E42B8(v89, v90);
            sub_22C7E48E4();
            v23 = v133;
            v33 = v136;
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              goto LABEL_42;
            }

            goto LABEL_31;
          }

          sub_22C380060();
          v65 = sub_22C5EB704();
          sub_22C7E4208(v65, v130);
          sub_22C7E48E4();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_22C36BA4C();
            v66 = sub_22C5CAC54();
            v33 = v137;
            v67(v66, v63, v137);
            sub_22C36CC9C();
            v68 = sub_22C902CFC();
            v69 = sub_22C7E49A4(v68);
            v54(v69, v137);
            sub_22C7E4374();
            v70 = sub_22C37B56C();
            sub_22C7E42B8(v70, v71);
            v54(v130, v137);
            sub_22C7E4788();
            if (v128)
            {
              goto LABEL_42;
            }

LABEL_38:
            sub_22C7E4374();
            v113 = sub_22C5EB704();
            sub_22C7E42B8(v113, v114);
            goto LABEL_32;
          }

          sub_22C7E4374();
          v100 = sub_22C37B56C();
          sub_22C7E42B8(v100, v101);
          sub_22C36BA4C();
          v102(v130, v137);
        }

        else
        {
          sub_22C380060();
          v85 = sub_22C5EB704();
          sub_22C7E4208(v85, v129);
          v86 = *v129;
          v54 = v129[1];
          sub_22C7E48E4();
          if (!swift_getEnumCaseMultiPayload())
          {
            v107 = *v63;
            v108 = v63[1];
            v109 = v86 == v107 && v54 == v108;
            v23 = v133;
            v33 = v136;
            if (v109)
            {

              sub_22C7E4374();
              v121 = sub_22C37B56C();
              sub_22C7E42B8(v121, v122);
LABEL_42:
              sub_22C7E42B8(v138, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local);
              sub_22C7E42B8(v33, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local);
LABEL_43:
              sub_22C372DD8();
              sub_22C7E42B8(v21, v123);
              v124 = sub_22C902CFC();
              sub_22C36C464();
              sub_22C7E42B8(v20, v125);
              if (v124)
              {
                break;
              }

              goto LABEL_44;
            }

            v110 = sub_22C90B4FC();

            sub_22C7E4374();
            v111 = sub_22C37B56C();
            sub_22C7E42B8(v111, v112);
            if (v110)
            {
              goto LABEL_42;
            }

            goto LABEL_38;
          }

          sub_22C7E4374();
          v87 = sub_22C37B56C();
          sub_22C7E42B8(v87, v88);
        }

        sub_22C7E4788();
LABEL_31:
        v103 = sub_22C5EB704();
        sub_22C36DD28(v103, &qword_27D9BCBC8, &unk_22C916700);
LABEL_32:
        sub_22C7E4374();
        sub_22C7E42B8(v33, v104);
        sub_22C36C464();
        sub_22C7E42B8(v20, v105);
        sub_22C372DD8();
        sub_22C7E42B8(v21, v106);
LABEL_44:
        sub_22C90315C();
        sub_22C7E43B8();
        sub_22C90313C();
      }

      while ((v126 & 1) == 0);
    }

    sub_22C36CC48();
  }
}

void sub_22C7DD014(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22C90B62C();
  sub_22C48A9B4(v46, a1);
  v6 = v46;
  sub_22C90B66C();
  sub_22C3703F4();
  if (v8)
  {
    __break(1u);
  }

  else
  {
    sub_22C386420(v7);
    sub_22C90312C();
    sub_22C7E4C50();
    v9 = v48;
    sub_22C7E447C(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31, v33, v35, v37, v39, v41, v43, v44, v45, v46[0], v46[1], v46[2], v46[3], v47);
    if ((v9 & 1) == 0)
    {
      do
      {
        v18 = *(a2 + 8 * v6);

        v19 = sub_22C48819C(v18, a1);

        if (v19)
        {
          break;
        }

        v20 = sub_22C90315C();
        sub_22C386378(v20, v21, v22, v23, v24, v25, v26, v27, v30, v32, v34, v36, v38, v40, v42);
        v6 = sub_22C90313C();
      }

      while ((v28 & 1) == 0);
    }
  }
}

uint64_t sub_22C7DD10C(uint64_t a1, double a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  result = sub_22C90B61C();
  if (__OFSUB__(1 << v6, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22C90312C();
    result = v9;
    if ((v10 & 1) == 0)
    {
      do
      {
        if (*(a1 + 8 * result) == a2)
        {
          break;
        }

        sub_22C90315C();
        result = sub_22C90313C();
      }

      while ((v8 & 1) == 0);
    }
  }

  return result;
}

void sub_22C7DD200()
{
  sub_22C36BA7C();
  sub_22C7E4464(v2, v3);
  sub_22C9037EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C377578();
  v5 = *v0;
  sub_22C387C94();
  sub_22C7E4310(v6, v7, MEMORY[0x277D1EDA0]);
  sub_22C388DAC();
  sub_22C909F7C();
  sub_22C3703F4();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_22C7E4700(v8);
    sub_22C36DB60();
    while ((v1 & 1) == 0)
    {
      v10 = sub_22C381BDC();
      v11(v10);
      sub_22C387C94();
      sub_22C7E4310(&qword_281435760, v12, MEMORY[0x277D1EDA8]);
      sub_22C7E4500();
      v13 = sub_22C5EB560();
      v14(v13);
      if (v5)
      {
        break;
      }

      v5 = &v16;
      v15 = sub_22C90315C();
      sub_22C7E4404(v15);
      sub_22C50B4BC();
    }

    sub_22C386878();
    sub_22C36CC48();
  }
}

void sub_22C7DD340()
{
  sub_22C36BA7C();
  v77 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_22C9039AC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v78 = v10;
  v11 = sub_22C36BA0C();
  v12 = type metadata accessor for LooselyComparableRetrievedTool(v11);
  v13 = sub_22C3699B8(v12);
  v15 = v14;
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  sub_22C3698F8(v16);
  v17 = sub_22C9036EC();
  sub_22C369824();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v21);
  v23 = v64 - v22;
  sub_22C90B62C();
  sub_22C90371C();
  sub_22C7E4310(&qword_281435770, MEMORY[0x277D1ED00], MEMORY[0x277D1ED10]);
  sub_22C7E4C18();
  sub_22C909F8C();
  v24 = *(v19 + 8);
  v70 = v23;
  v72 = v17;
  v71 = v19 + 8;
  v69 = v24;
  v24(v23, v17);
  v25 = sub_22C90374C();
  sub_22C47180C(v79, v25);

  sub_22C90B66C();
  sub_22C3703F4();
  if (v27)
  {
    goto LABEL_21;
  }

  sub_22C7E4848(v26);
  sub_22C90312C();
  sub_22C7E49F8();
  sub_22C7E4524(v28);
  v31 = v7 + 16;
  v76 = v7;
  v32 = (v7 + 8);
  v34 = v33;
  v35 = v73;
  v65 = v2;
  v64[1] = v4;
  v64[0] = v15;
  v75 = v31;
  if (v30)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v66 = v34;
    v67 = v30;
    v36 = *(v15 + 72);
    v68 = v29;
    sub_22C7E4208(v2 + v36 * v29, v35);
    v37 = v70;
    sub_22C90371C();
    sub_22C374490();
    sub_22C90371C();
    v38 = sub_22C9036DC();
    v39 = v72;
    v40 = v15;
    v41 = v2;
    v42 = v69;
    v69(v35, v72);
    v42(v37, v39);
    if (v38)
    {
      break;
    }

    sub_22C7E43D4();
    v35 = *(v58 - 256);
    sub_22C7E42B8(v35, v59);
    v2 = v41;
    v15 = v40;
LABEL_15:
    sub_22C90315C();
    sub_22C7E43B8();
    v34 = v79[2];
    v29 = sub_22C90313C();
    if (v30)
    {
      goto LABEL_18;
    }
  }

  v43 = sub_22C90374C();
  v44 = sub_22C90374C();
  v45 = *(v43 + 16);
  v77 = v44;
  v46 = v78;
  if (v45 != *(v44 + 16))
  {
LABEL_14:
    sub_22C7E43D4();
    v35 = *(v60 - 256);
    sub_22C7E42B8(v35, v61);

    v2 = v65;
    v15 = v64[0];
    goto LABEL_15;
  }

  if (!v45 || v43 == v77)
  {
LABEL_17:
    sub_22C7E43D4();
    sub_22C7E42B8(*(v62 - 256), v63);

LABEL_18:
    sub_22C36CC48();
    return;
  }

  v47 = 0;
  sub_22C36BA94();
  v49 = v43 + v48;
  v50 = v77 + v48;
  while (v47 < *(v43 + 16))
  {
    v51 = *(v76 + 72) * v47;
    v52 = *(v76 + 16);
    v52(v46, v49 + v51, v5);
    if (v47 >= *(v77 + 16))
    {
      goto LABEL_20;
    }

    v53 = v74;
    v52(v74, v50 + v51, v5);
    sub_22C7E4310(&qword_27D9BC820, MEMORY[0x277D1EE20], MEMORY[0x277D1EE30]);
    v54 = sub_22C90A0BC();
    v55 = *v32;
    v56 = v53;
    v46 = v78;
    (*v32)(v56, v5);
    v57 = sub_22C37BD98();
    v55(v57);
    if ((v54 & 1) == 0)
    {
      goto LABEL_14;
    }

    if (v45 == ++v47)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22C7DD8CC()
{
  sub_22C36BA7C();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v2;
  v7 = *(*v0 + 16);
  if (v7 < v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v1;
  v9 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v1 - v2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v7, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v5;
  v12 = v4;
  v3(v7 - v9, 1);
  v13 = *v0;
  v14 = *(v12(0) - 8);
  v15 = v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v16 = *(v14 + 72);
  v17 = v15 + v16 * v8;
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v0 = v13;
    sub_22C36CC48();
    return;
  }

  v18 = *(v13 + 16);
  if (__OFSUB__(v18, v6))
  {
    goto LABEL_16;
  }

  v11(v15 + v16 * v6, v18 - v6, v17);
  v19 = *(v13 + 16);
  v20 = __OFADD__(v19, v10);
  v21 = v19 - v9;
  if (!v20)
  {
    *(v13 + 16) = v21;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_22C7DDA08(uint64_t *a1, uint64_t *a2)
{
  v4 = *(sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C540();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;

  sub_22C7DDAF4(v9, a2);
  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22C7DDAF4(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_22C90B45C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
        v8 = sub_22C90A64C();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_22C7DDF30(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_22C7DDC80(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22C7DDC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v41 = sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
  v10 = MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v32 - v13);
  MEMORY[0x28223BE20](v12);
  v17 = (&v32 - v16);
  v34 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v43 = a5;
    v42 = a5 + 32;
    v19 = *(v15 + 72);
    v20 = v18 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v39 = v18;
    v33 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v37 = v20;
      v38 = a3;
      v35 = v23;
      v36 = v22;
      v24 = v22;
      do
      {
        sub_22C4E719C(v23, v17, &qword_27D9BABD8, &unk_22C90FA30);
        result = sub_22C4E719C(v20, v14, &qword_27D9BABD8, &unk_22C90FA30);
        v26 = *v17;
        if ((*v17 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
          return result;
        }

        v27 = *(v43 + 16);
        if (v26 >= v27)
        {
          goto LABEL_14;
        }

        if (*v14 >= v27)
        {
          goto LABEL_15;
        }

        v28 = *(v42 + 4 * v26);
        v29 = *(v42 + 4 * *v14);
        sub_22C36DD28(v14, &qword_27D9BABD8, &unk_22C90FA30);
        result = sub_22C36DD28(v17, &qword_27D9BABD8, &unk_22C90FA30);
        if (v29 >= v28)
        {
          break;
        }

        if (!v39)
        {
          goto LABEL_16;
        }

        v30 = v40;
        sub_22C4E7208(v23, v40, &qword_27D9BABD8, &unk_22C90FA30);
        swift_arrayInitWithTakeFrontToBack();
        sub_22C4E7208(v30, v20, &qword_27D9BABD8, &unk_22C90FA30);
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v38 + 1;
      v20 = v37 + v33;
      v22 = v36 - 1;
      v23 = v35 + v33;
      if (v38 + 1 != v34)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_22C7DDF30(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v129 = a1;
  v143 = sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
  v137 = *(v143 - 8);
  v8 = MEMORY[0x28223BE20](v143);
  v133 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v142 = &v128 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v128 - v13);
  MEMORY[0x28223BE20](v12);
  v147 = &v128 - v15;
  v140 = a3;
  v16 = a3[1];
  v146 = a5;
  if (v16 < 1)
  {
    swift_bridgeObjectRetain_n();
    v18 = MEMORY[0x277D84F90];
LABEL_110:
    v144 = *v129;
    if (!v144)
    {
      goto LABEL_162;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v114 = v18 + 16;
      v115 = *(v18 + 2);
      for (i = v18; ; v18 = i)
      {
        if (v115 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v116 = v141;
        v117 = *v140;
        if (!*v140)
        {
          goto LABEL_159;
        }

        v118 = &v18[16 * v115];
        v119 = *v118;
        v120 = v114;
        v121 = &v114[16 * v115];
        v122 = *(v121 + 1);
        v123 = *(v137 + 72);
        v124 = v117 + v123 * *v118;
        v147 = v117 + v123 * *v121;
        v145 = (v117 + v123 * v122);
        v125 = v146;

        sub_22C7DEA10(v124, v147, v145, v144, v125);
        v141 = v116;
        if (v116)
        {
          break;
        }

        if (v122 < v119)
        {
          goto LABEL_144;
        }

        if (v115 - 2 >= *v120)
        {
          goto LABEL_145;
        }

        v114 = v120;
        *v118 = v119;
        *(v118 + 1) = v122;
        v126 = *v120 - v115;
        if (*v120 < v115)
        {
          goto LABEL_146;
        }

        v115 = *v120 - 1;
        sub_22C56BFF0(v121 + 16, v126, v121);
        *v120 = v115;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_156:
    v18 = sub_22C56BFD8();
    goto LABEL_112;
  }

  v128 = a4;
  v145 = a5 + 4;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v144 = v14;
  while (1)
  {
    v19 = v17++;
    if (v17 >= v16)
    {
      goto LABEL_36;
    }

    v136 = v16;
    v20 = *v140;
    v21 = *(v137 + 72);
    v139 = v17;
    v22 = v19;
    v23 = v20 + v21 * v17;
    v24 = v147;
    sub_22C4E719C(v23, v147, &qword_27D9BABD8, &unk_22C90FA30);
    v130 = v22;
    i = v21;
    sub_22C4E719C(v20 + v21 * v22, v14, &qword_27D9BABD8, &unk_22C90FA30);
    v25 = *v24;
    if ((*v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_149;
    }

    v26 = a5[2];
    if (v25 >= v26)
    {
      goto LABEL_150;
    }

    if (*v14 >= v26)
    {
      goto LABEL_151;
    }

    v27 = *(v145 + v25);
    v28 = *(v145 + *v14);
    sub_22C36DD28(v14, &qword_27D9BABD8, &unk_22C90FA30);
    sub_22C36DD28(v147, &qword_27D9BABD8, &unk_22C90FA30);
    v29 = v130 + 2;
    v17 = v139;
    v30 = v20 + i * (v130 + 2);
    v31 = v136;
    while (1)
    {
      v32 = v29;
      if (v17 + 1 >= v31)
      {
        break;
      }

      v33 = v17;
      v34 = v147;
      sub_22C4E719C(v30, v147, &qword_27D9BABD8, &unk_22C90FA30);
      sub_22C4E719C(v23, v14, &qword_27D9BABD8, &unk_22C90FA30);
      v35 = *v34;
      if ((*v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_126;
      }

      v36 = v146[2];
      if (v35 >= v36)
      {
        goto LABEL_127;
      }

      if (*v14 >= v36)
      {
        goto LABEL_128;
      }

      v37 = *(v145 + v35);
      v38 = *(v145 + *v14);
      sub_22C36DD28(v14, &qword_27D9BABD8, &unk_22C90FA30);
      sub_22C36DD28(v147, &qword_27D9BABD8, &unk_22C90FA30);
      v30 += i;
      v23 += i;
      v17 = v33 + 1;
      v29 = v32 + 1;
      v31 = v136;
      if (v28 < v27 == v38 >= v37)
      {
        goto LABEL_15;
      }
    }

    v17 = v31;
LABEL_15:
    if (v28 >= v27)
    {
      goto LABEL_34;
    }

    v19 = v130;
    if (v17 < v130)
    {
      goto LABEL_155;
    }

    if (v130 < v17)
    {
      if (v31 >= v32)
      {
        v39 = v32;
      }

      else
      {
        v39 = v31;
      }

      v40 = i * (v39 - 1);
      v41 = i * v39;
      v42 = v130 * i;
      v43 = v17;
      v139 = v17;
      do
      {
        if (v19 != --v43)
        {
          v44 = *v140;
          if (!*v140)
          {
            goto LABEL_160;
          }

          sub_22C4E7208(v44 + v42, v133, &qword_27D9BABD8, &unk_22C90FA30);
          v45 = v42 < v40 || v44 + v42 >= (v44 + v41);
          v136 = v43;
          if (v45)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 != v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_22C4E7208(v133, v44 + v40, &qword_27D9BABD8, &unk_22C90FA30);
          v17 = v139;
          v43 = v136;
        }

        ++v19;
        v40 -= i;
        v41 -= i;
        v42 += i;
      }

      while (v19 < v43);
LABEL_34:
      a5 = v146;
      v19 = v130;
      goto LABEL_36;
    }

    a5 = v146;
LABEL_36:
    v46 = v140[1];
    if (v17 < v46)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_152;
      }

      if (v17 - v19 < v128)
      {
        if (__OFADD__(v19, v128))
        {
          goto LABEL_153;
        }

        if (v19 + v128 >= v46)
        {
          v47 = v140[1];
        }

        else
        {
          v47 = v19 + v128;
        }

        if (v47 < v19)
        {
          goto LABEL_154;
        }

        if (v17 != v47)
        {
          break;
        }
      }
    }

LABEL_56:
    if (v17 < v19)
    {
      goto LABEL_148;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v18 + 2) + 1, 1, v18);
      v18 = v112;
    }

    v62 = *(v18 + 2);
    v61 = *(v18 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      sub_22C590218(v61 > 1, v62 + 1, 1, v18);
      v18 = v113;
    }

    *(v18 + 2) = v63;
    v64 = v18 + 32;
    v65 = &v18[16 * v62 + 32];
    *v65 = v19;
    *(v65 + 1) = v17;
    v136 = *v129;
    if (!v136)
    {
      goto LABEL_161;
    }

    if (v62)
    {
      i = v18;
      v139 = v17;
      v135 = v18 + 32;
      while (1)
      {
        v66 = v63 - 1;
        v67 = &v64[16 * v63 - 16];
        v68 = &v18[16 * v63];
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v69 = *(v18 + 4);
          v70 = *(v18 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_77:
          if (v72)
          {
            goto LABEL_135;
          }

          v84 = *v68;
          v83 = *(v68 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_138;
          }

          v88 = *(v67 + 1);
          v89 = v88 - *v67;
          if (__OFSUB__(v88, *v67))
          {
            goto LABEL_141;
          }

          if (__OFADD__(v86, v89))
          {
            goto LABEL_143;
          }

          if (v86 + v89 >= v71)
          {
            if (v71 < v89)
            {
              v66 = v63 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v63 < 2)
        {
          goto LABEL_137;
        }

        v91 = *v68;
        v90 = *(v68 + 1);
        v79 = __OFSUB__(v90, v91);
        v86 = v90 - v91;
        v87 = v79;
LABEL_92:
        if (v87)
        {
          goto LABEL_140;
        }

        v93 = *v67;
        v92 = *(v67 + 1);
        v79 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v79)
        {
          goto LABEL_142;
        }

        if (v94 < v86)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v66 - 1 >= v63)
        {
          goto LABEL_129;
        }

        v98 = v141;
        v99 = *v140;
        if (!*v140)
        {
          goto LABEL_158;
        }

        v100 = &v64[16 * v66 - 16];
        v101 = *v100;
        v102 = v66;
        v103 = &v64[16 * v66];
        v104 = *(v103 + 1);
        v105 = *(v137 + 72);
        v106 = v99 + v105 * *v100;
        v107 = v99 + v105 * *v103;
        v108 = v99 + v105 * v104;
        v109 = v146;

        sub_22C7DEA10(v106, v107, v108, v136, v109);
        v141 = v98;
        if (v98)
        {
          swift_bridgeObjectRelease_n();
        }

        v18 = i;
        v14 = v144;
        if (v104 < v101)
        {
          goto LABEL_130;
        }

        v110 = *(i + 2);
        if (v102 > v110)
        {
          goto LABEL_131;
        }

        *v100 = v101;
        *(v100 + 1) = v104;
        if (v102 >= v110)
        {
          goto LABEL_132;
        }

        v63 = v110 - 1;
        sub_22C56BFF0(v103 + 16, v110 - 1 - v102, v103);
        *(v18 + 2) = v110 - 1;
        v111 = v110 > 2;
        a5 = v146;
        v17 = v139;
        v64 = v135;
        if (!v111)
        {
          goto LABEL_106;
        }
      }

      v73 = &v64[16 * v63];
      v74 = *(v73 - 8);
      v75 = *(v73 - 7);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_133;
      }

      v78 = *(v73 - 6);
      v77 = *(v73 - 5);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_134;
      }

      v80 = *(v68 + 1);
      v81 = v80 - *v68;
      if (__OFSUB__(v80, *v68))
      {
        goto LABEL_136;
      }

      v79 = __OFADD__(v71, v81);
      v82 = v71 + v81;
      if (v79)
      {
        goto LABEL_139;
      }

      if (v82 >= v76)
      {
        v96 = *v67;
        v95 = *(v67 + 1);
        v79 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v79)
        {
          goto LABEL_147;
        }

        if (v71 < v97)
        {
          v66 = v63 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

LABEL_106:
    v16 = v140[1];
    if (v17 >= v16)
    {
      goto LABEL_110;
    }
  }

  v48 = v17;
  v49 = *v140;
  v50 = *(v137 + 72);
  v51 = *v140 + v50 * (v48 - 1);
  v52 = -v50;
  v130 = v19;
  v131 = v50;
  v53 = (v19 - v48);
  i = v18;
  v139 = v48;
  v54 = v49 + v48 * v50;
  v132 = v47;
LABEL_46:
  v134 = v54;
  v135 = v53;
  v136 = v51;
  while (1)
  {
    v55 = v147;
    sub_22C4E719C(v54, v147, &qword_27D9BABD8, &unk_22C90FA30);
    sub_22C4E719C(v51, v14, &qword_27D9BABD8, &unk_22C90FA30);
    v56 = *v55;
    if ((*v55 & 0x8000000000000000) != 0)
    {
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
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
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
      goto LABEL_156;
    }

    v57 = v146[2];
    if (v56 >= v57)
    {
      goto LABEL_124;
    }

    if (*v14 >= v57)
    {
      goto LABEL_125;
    }

    v58 = *(v145 + v56);
    v59 = *(v145 + *v14);
    sub_22C36DD28(v14, &qword_27D9BABD8, &unk_22C90FA30);
    sub_22C36DD28(v147, &qword_27D9BABD8, &unk_22C90FA30);
    if (v59 >= v58)
    {
      goto LABEL_54;
    }

    if (!v49)
    {
      break;
    }

    v60 = v142;
    sub_22C4E7208(v54, v142, &qword_27D9BABD8, &unk_22C90FA30);
    swift_arrayInitWithTakeFrontToBack();
    sub_22C4E7208(v60, v51, &qword_27D9BABD8, &unk_22C90FA30);
    v51 += v52;
    v54 += v52;
    v45 = __CFADD__(v53++, 1);
    v14 = v144;
    if (v45)
    {
LABEL_54:
      v51 = v136 + v131;
      v53 = v135 - 1;
      v54 = v134 + v131;
      if (++v139 == v132)
      {
        v17 = v132;
        a5 = v146;
        v18 = i;
        v19 = v130;
        goto LABEL_56;
      }

      goto LABEL_46;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_158:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_159:

  __break(1u);
LABEL_160:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_162:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_22C7DEA10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v59 = a5;
  v57 = sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
  v9 = MEMORY[0x28223BE20](v57);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v9);
  v14 = (&v49 - v13);
  v16 = *(v15 + 72);
  if (!v16)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_73;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_74;
  }

  v56 = a3;
  v20 = (a2 - a1) / v16;
  v62 = a1;
  v61 = a4;
  v58 = v59 + 32;
  v21 = v18 / v16;
  if (v20 >= v18 / v16)
  {
    sub_22C3D7B34(a2, v18 / v16, a4);
    v29 = a4 + v21 * v16;
    v30 = -v16;
    v31 = v29;
    v32 = v56;
    v55 = v30;
    v52 = a1;
    v53 = a4;
LABEL_40:
    v56 = a2 + v30;
    v33 = v32;
    v34 = v31;
    v35 = v31;
    v54 = a2;
    v51 = v31;
    while (1)
    {
      if (v29 <= a4)
      {
        v62 = a2;
        v60 = v34;
        goto LABEL_65;
      }

      if (a2 <= a1)
      {
        v62 = a2;
        v60 = v35;
        goto LABEL_65;
      }

      v36 = v14;
      v37 = v33;
      v50 = v34;
      v38 = v55;
      v39 = v29 + v55;
      v40 = v36;
      sub_22C4E719C(v29 + v55, v36, &qword_27D9BABD8, &unk_22C90FA30);
      result = sub_22C4E719C(v56, v11, &qword_27D9BABD8, &unk_22C90FA30);
      v41 = *v40;
      if ((*v40 & 0x8000000000000000) != 0)
      {
        break;
      }

      v42 = *(v59 + 16);
      if (v41 >= v42)
      {
        goto LABEL_70;
      }

      if (*v11 >= v42)
      {
        goto LABEL_71;
      }

      v43 = *(v58 + 4 * v41);
      v44 = *(v58 + 4 * *v11);
      sub_22C36DD28(v11, &qword_27D9BABD8, &unk_22C90FA30);
      sub_22C36DD28(v40, &qword_27D9BABD8, &unk_22C90FA30);
      v32 = v37 + v38;
      if (v44 < v43)
      {
        v46 = v37 < v54 || v32 >= v54;
        v47 = v56;
        if (v46)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v50;
          v30 = v55;
          v14 = v40;
          a2 = v47;
          a1 = v52;
          a4 = v53;
        }

        else
        {
          v31 = v50;
          v17 = v37 == v54;
          a2 = v56;
          v30 = v55;
          v14 = v40;
          v48 = v56;
          a1 = v52;
          a4 = v53;
          if (!v17)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v48;
            v31 = v50;
          }
        }

        goto LABEL_40;
      }

      if (v37 < v29 || v32 >= v29)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v32;
        v29 = v39;
        v34 = v39;
        v14 = v40;
        a4 = v53;
        a2 = v54;
        v35 = v51;
        a1 = v52;
      }

      else
      {
        v34 = v39;
        v17 = v29 == v37;
        v33 = v32;
        v29 = v39;
        v14 = v40;
        a4 = v53;
        a2 = v54;
        v35 = v51;
        a1 = v52;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v32;
          v29 = v39;
          v34 = v39;
        }
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_22C3D7B34(a1, (a2 - a1) / v16, a4);
  v55 = a4 + v20 * v16;
  v60 = v55;
  while (a4 < v55 && a2 < v56)
  {
    sub_22C4E719C(a2, v14, &qword_27D9BABD8, &unk_22C90FA30);
    result = sub_22C4E719C(a4, v11, &qword_27D9BABD8, &unk_22C90FA30);
    v23 = *v14;
    if ((*v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v24 = *(v59 + 16);
    if (v23 >= v24)
    {
      goto LABEL_67;
    }

    if (*v11 >= v24)
    {
      goto LABEL_68;
    }

    v25 = *(v58 + 4 * v23);
    v26 = *(v58 + 4 * *v11);
    sub_22C36DD28(v11, &qword_27D9BABD8, &unk_22C90FA30);
    sub_22C36DD28(v14, &qword_27D9BABD8, &unk_22C90FA30);
    if (v26 >= v25)
    {
      if (a1 < a4 || a1 >= a4 + v16)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v61 = a4 + v16;
      a4 += v16;
    }

    else
    {
      if (a1 < a2 || a1 >= a2 + v16)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v16;
    }

    a1 += v16;
    v62 = a1;
  }

LABEL_65:
  sub_22C83827C(&v62, &v61, &v60);

  return 1;
}

void sub_22C7DEF20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_22C7DFBF4();
    return;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_22C7D5DC0();
    v8 = *v3;
    if (*v3)
    {

      sub_22C7E02B0();
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v9 = v3[1];

        sub_22C7E0F6C(a1, a1 + 1, v9, v8 + 16, v8 + 32, MEMORY[0x277D1C338], &qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348], sub_22C8A53CC, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v6 > MEMORY[0x2318B0650]())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22C7DFBF4();
  if (v7)
  {
    swift_beginAccess();
    v10 = *(v7 + 24) & 0x3FLL;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*v5 + 16);
  if (v10 || v11 >= 0x10)
  {
    MEMORY[0x2318B0670](v11);
    sub_22C7D5F0C();
  }

  else
  {

    *v3 = 0;
  }
}

void sub_22C7DF218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_22C7DFBF4();
    return;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_22C7D5DC0();
    v8 = *v3;
    if (*v3)
    {

      sub_22C7E02B0();
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v9 = v3[1];

        sub_22C7E0F6C(a1, a1 + 1, v9, v8 + 16, v8 + 32, MEMORY[0x277D73148], &unk_27D9C02C8, MEMORY[0x277D73148], MEMORY[0x277D73150], sub_22C8A53E4, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v6 > MEMORY[0x2318B0650]())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22C7DFBF4();
  if (v7)
  {
    swift_beginAccess();
    v10 = *(v7 + 24) & 0x3FLL;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*v5 + 16);
  if (v10 || v11 >= 0x10)
  {
    MEMORY[0x2318B0670](v11);
    sub_22C7D5F0C();
  }

  else
  {

    *v3 = 0;
  }
}

void sub_22C7DF510(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_22C7DFE58();
    return;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_22C7D5DC0();
    v9 = *v3;
    if (*v3)
    {

      sub_22C7DFFD4(a2, (v9 + 16), v9 + 32, v3);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v10 = v3[1];

        sub_22C7E141C(a1, a1 + 1, v10, (v9 + 16), v9 + 32);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v6 > MEMORY[0x2318B0650]())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22C7DFE58();
  if (v7)
  {
    swift_beginAccess();
    v11 = *(v7 + 24) & 0x3FLL;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*v5 + 16);
  if (v11 || v12 >= 0x10)
  {
    MEMORY[0x2318B0670](v12);
    sub_22C7D5EC8();
  }

  else
  {

    *v3 = 0;
  }
}

void sub_22C7DF764(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_22C7DFE58();
    return;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_22C7D5DC0();
    v9 = *v3;
    if (*v3)
    {

      sub_22C7E058C(a2, (v9 + 16), v9 + 32, v3);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v10 = v3[1];

        sub_22C7E1964(a1, a1 + 1, v10, (v9 + 16), v9 + 32);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v6 > MEMORY[0x2318B0650]())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22C7DFE58();
  if (v7)
  {
    swift_beginAccess();
    v11 = *(v7 + 24) & 0x3FLL;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*v5 + 16);
  if (v11 || v12 >= 0x10)
  {
    MEMORY[0x2318B0670](v12);
    sub_22C7D5EC8();
  }

  else
  {

    *v3 = 0;
  }
}

void sub_22C7DF9B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_22C7DFF50(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x2318B0650]())
  {
LABEL_12:
    sub_22C7DFF50(a1);
    if (v7)
    {
      swift_beginAccess();
      v11 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*v5 + 16);
    if (v11 || v12 >= 0x10)
    {
      MEMORY[0x2318B0670](v12);
      sub_22C7D6000();
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_22C7D5DC0();
  v9 = *v3;
  if (*v3)
  {

    sub_22C7E0D7C(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v10 = v3[1];

      sub_22C7E28BC(a1, a1 + 1, v10, (v9 + 16), v9 + 32);

      sub_22C7DFF50(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C7DFB7C(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C2D0();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    sub_22C3D8760((v3 + a1 + 33), v5 - 1 - a1, (v3 + a1 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_22C7DFBF4()
{
  sub_22C3BDA38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = v6(v9);
  }

  v10 = *(v9 + 16);
  if (v10 <= v8)
  {
    __break(1u);
  }

  else
  {
    v4(0);
    sub_22C36985C();
    v11 += 32;
    v12 = *(v11 + 40);
    v13 = v9 + ((*(v11 + 48) + 32) & ~*(v11 + 48)) + v12 * v8;
    v14 = sub_22C36ECB4();
    v15(v14);
    v2(v13 + v12, v10 - 1 - v8, v13);
    *(v9 + 16) = v10 - 1;
    *v0 = v9;
    sub_22C3BDA24();
  }
}

void sub_22C7DFCD0(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C390();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770) - 8);
    v9 = *(v8 + 72);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v9 * a1;
    sub_22C4E7208(v10, a2, &qword_27D9BAEC8, &unk_22C90D770);
    sub_22C3D70F8(v10 + v9, v7 - 1 - a1, v10);
    *(v5 + 16) = v7 - 1;
    *v2 = v5;
  }
}

void sub_22C7DFDE0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C3C0();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    sub_22C3D874C((v3 + 8 * a1 + 40), v5 - 1 - a1, (v3 + 8 * a1 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_22C7DFE58()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = v6(v9);
  }

  v10 = *(v9 + 16);
  if (v10 <= v8)
  {
    __break(1u);
  }

  else
  {
    v11 = v4(0);
    sub_22C3699B8(v11);
    v14 = *(v13 + 72);
    v15 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v14 * v8;
    sub_22C634004();
    sub_22C7E4260(v16, v17);
    v2(v15 + v14, v10 - 1 - v8, v15);
    *(v9 + 16) = v10 - 1;
    *v0 = v9;
    sub_22C36CC48();
  }
}

void sub_22C7DFF50(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C134();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    sub_22C3A4F80((v3 + 16 * a1 + 48), v5 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

unint64_t sub_22C7DFFD4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PromptTreeIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C9030FC();
  *&v26 = a2;
  *(&v26 + 1) = a3;
  *&v27 = a1;
  *(&v27 + 1) = v12;
  *&v28 = v13;
  *(&v28 + 1) = v14;
  v29 = 0;
  sub_22C90315C();
  if (*(&v27 + 1))
  {
    v25[1] = a3;
    v15 = sub_22C90310C();
    v16 = a1;
    while (1)
    {
      v34 = v26;
      v35 = v27;
      v36 = v28;
      v37 = v29;
      result = sub_22C90313C();
      if (v18)
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v19 = *(a4 + 8);
      if (result >= *(v19 + 16))
      {
        goto LABEL_25;
      }

      sub_22C7E4208(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * result, v11);
      sub_22C90B62C();
      sub_22C489574();
      v20 = sub_22C90B66C();
      result = sub_22C7E42B8(v11, type metadata accessor for PromptTreeIdentifier);
      v21 = 1 << *a2;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_26;
      }

      v22 = (v21 - 1) & v20;
      if (v16 >= v15)
      {
        if (v22 < v15 || v16 < v22)
        {
          goto LABEL_19;
        }
      }

      else if (v22 < v15 && v16 < v22)
      {
        goto LABEL_19;
      }

      v30 = v26;
      v31 = v27;
      v32 = v28;
      v33 = v29;
      sub_22C90313C();
      v16 = v31;
      sub_22C90311C();
LABEL_19:
      sub_22C90315C();
      if (!*(&v27 + 1))
      {
        return sub_22C90311C();
      }
    }
  }

  return sub_22C90311C();
}

void sub_22C7E02B0()
{
  sub_22C36BA7C();
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  sub_22C369824();
  v9 = v8;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  sub_22C3721C8();
  v31 = sub_22C9030FC();
  sub_22C90315C();
  if (v31)
  {
    v11 = sub_22C90310C();
    while (1)
    {
      sub_22C7E4C8C();
      v12 = sub_22C90313C();
      if (v13)
      {
LABEL_29:
        __break(1u);
        return;
      }

      if (v12 < 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      sub_22C7E4C00();
      v16 = *(v15 + 8);
      if (v14 >= *(v16 + 16))
      {
        goto LABEL_27;
      }

      (*(v9 + 16))(v0, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v7);
      sub_22C37B56C();
      sub_22C7E48E4();
      sub_22C7E4310(v17, v18, v30);
      sub_22C37DA2C();
      v19 = sub_22C909F7C();
      (*(v9 + 8))(v0, v7);
      sub_22C38A0A8();
      v21 = v20 - 1;
      if (__OFSUB__(v20, 1))
      {
        goto LABEL_28;
      }

      v22 = v21 & v19;
      if (v5 >= v11)
      {
        if (v22 >= v11 && v5 >= v22)
        {
LABEL_18:
          sub_22C7E4C8C();
          v32 = v25;
          v26 = sub_22C90313C();
          if (v27)
          {
            v28 = 0;
          }

          else
          {
            v28 = ((v21 & ((v26 - (*(v3 + 8) >> 6)) >> 63)) + v26 - (*(v3 + 8) >> 6)) ^ v21;
          }

          v5 = v32;
          sub_22C7E4DBC(v28);
        }
      }

      else if (v22 >= v11 || v5 >= v22)
      {
        goto LABEL_18;
      }

      sub_22C90315C();
    }
  }

  sub_22C36CC48();

  sub_22C90311C();
}

unint64_t sub_22C7E058C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v55 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  v7 = MEMORY[0x28223BE20](v55);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = &v50 - v10;
  v65 = sub_22C902D0C();
  v11 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v57 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v61 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  MEMORY[0x28223BE20](v61);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v59 = *(v20 - 8);
  v60 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22C9030FC();
  *&v66 = a2;
  *(&v66 + 1) = a3;
  v56 = a3;
  v64 = a1;
  *&v67 = a1;
  *(&v67 + 1) = v23;
  *&v68 = v24;
  *(&v68 + 1) = v25;
  v69 = 0;
  sub_22C90315C();
  if (*(&v67 + 1))
  {
    v26 = v64;
    v27 = sub_22C90310C();
    v51 = (v11 + 8);
    v52 = (v11 + 32);
    v28 = v26;
    v54 = v17;
    v58 = v19;
    while (1)
    {
      v74 = v66;
      v75 = v67;
      v76 = v68;
      v77 = v69;
      result = sub_22C90313C();
      if (v30)
      {
LABEL_41:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v31 = *(v63 + 8);
      if (result >= *(v31 + 16))
      {
        goto LABEL_39;
      }

      sub_22C7E4208(v31 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * result, v22);
      sub_22C90B62C();
      sub_22C7E4208(v22, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = v19;
        v33 = v62;
        sub_22C7E4260(v32, v62);
        MEMORY[0x2318B8B10](1);
        sub_22C7E4208(v33, v9);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v35 = v53;
            v36 = v65;
            (*v52)(v53, v9, v65);
            MEMORY[0x2318B8B10](2);
            sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
            sub_22C909F8C();
            v37 = v35;
            v17 = v54;
            (*v51)(v37, v36);
          }

          else
          {
            MEMORY[0x2318B8B10](0);
          }
        }

        else
        {
          MEMORY[0x2318B8B10](1);
          v17 = v54;
          sub_22C909FFC();
        }

        v42 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local;
        v43 = v62;
      }

      else
      {
        sub_22C7E4260(v19, v17);
        MEMORY[0x2318B8B10](0);
        v38 = v57;
        sub_22C7E4208(v17, v57);
        switch(sub_22C370B74(v38, 3, v65))
        {
          case 1u:
            v44 = 0;
            goto LABEL_18;
          case 2u:
            v44 = 1;
            goto LABEL_18;
          case 3u:
            v44 = 2;
LABEL_18:
            MEMORY[0x2318B8B10](v44);
            break;
          default:
            v39 = v53;
            v40 = v65;
            (*v52)(v53, v57, v65);
            MEMORY[0x2318B8B10](3);
            sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
            sub_22C909F8C();
            v41 = v39;
            v17 = v54;
            (*v51)(v41, v40);
            break;
        }

        v42 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global;
        v43 = v17;
      }

      sub_22C7E42B8(v43, v42);
      sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
      sub_22C909F8C();
      v45 = sub_22C90B66C();
      result = sub_22C7E42B8(v22, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
      v46 = 1 << *a2;
      if (__OFSUB__(v46, 1))
      {
        goto LABEL_40;
      }

      v47 = (v46 - 1) & v45;
      if (v28 >= v27)
      {
        if (v47 < v27 || v28 < v47)
        {
LABEL_32:
          v19 = v58;
          goto LABEL_33;
        }
      }

      else if (v47 < v27 && v28 < v47)
      {
        goto LABEL_32;
      }

      v70 = v66;
      v71 = v67;
      v72 = v68;
      v73 = v69;
      sub_22C90313C();
      v19 = v58;
      v28 = v71;
      sub_22C90311C();
      v64 = v28;
LABEL_33:
      sub_22C90315C();
      if (!*(&v67 + 1))
      {
        return sub_22C90311C();
      }
    }
  }

  return sub_22C90311C();
}

unint64_t sub_22C7E0D7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = sub_22C9030FC();
  sub_22C90315C();
  if (v17)
  {
    v7 = sub_22C90310C();
    v8 = a1;
    while (1)
    {
      result = sub_22C90313C();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_24;
      }

      sub_22C90B62C();

      sub_22C909FFC();
      v11 = sub_22C90B66C();

      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_25;
      }

      v13 = (v12 - 1) & v11;
      if (v8 >= v7)
      {
        if (v13 >= v7 && v8 >= v13)
        {
LABEL_18:
          sub_22C90313C();
          v8 = a1;
          sub_22C90311C();
        }
      }

      else if (v13 >= v7 || v8 >= v13)
      {
        goto LABEL_18;
      }

      sub_22C90315C();
    }
  }

  return sub_22C90311C();
}

void sub_22C7E0F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t, unint64_t))
{
  sub_22C36BA7C();
  v105 = v23;
  v106 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v104 = a21;
  v36 = v35(0);
  sub_22C369824();
  v102 = v37;
  MEMORY[0x28223BE20](v38);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v39);
  v41 = v99 - v40;
  v42 = v32 - v34;
  if (__OFSUB__(v32, v34))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v42 < 1)
  {
    goto LABEL_52;
  }

  v100 = v30;
  v43 = *(v30 + 16);
  if ((v43 - v42) / 2 > v34)
  {
    if (MEMORY[0x2318B0640](*v28 & 0x3FLL) / 3 <= v34)
    {
      sub_22C37275C();
      v67 = sub_22C9030FC();
      v107 = v28;
      v108 = v26;
      v109 = 0;
      v110 = v67;
      sub_22C7E4C5C(v67, v68, v69);
      do
      {
        v71 = sub_22C7E4434(v70);
        if ((v72 & 1) == 0 && v71 < v34)
        {
          v52 = __OFADD__(v71, v42);
          v73 = v71 + v42;
          if (v52)
          {
            goto LABEL_55;
          }

          sub_22C7E4DFC(v73);
        }

        v70 = sub_22C90315C();
      }

      while (v109);
    }

    else
    {
      if (v34 < 0)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if (v43 < v34)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (v34)
      {
        sub_22C36BA94();
        v102 = v44 + v45;
        v103 = v46;
        v101 = *(v47 + 56);
        v48 = (v47 - 8);

        v49 = 0;
        while (1)
        {
          (v103)(v41, v102 + v101 * v49, v36);
          sub_22C7E4310(v105, v106, v104);
          sub_22C37DA2C();
          v50 = sub_22C909F7C();
          (*v48)(v41, v36);
          sub_22C38A0A8();
          v52 = __OFSUB__(v51, 1);
          v53 = v51 - 1;
          if (v52)
          {
            break;
          }

          v54 = v53 & v50;
          sub_22C36BBCC();
          v55 = sub_22C9030FC();
          v107 = v28;
          v108 = v26;
          v109 = v54;
          v110 = v55;
          sub_22C7E4C5C(v55, v56, v57);
          if (v58)
          {
            do
            {
              v59 = sub_22C7E4434(v58);
              if ((v60 & 1) == 0 && v59 == v49)
              {
                break;
              }

              v58 = sub_22C90315C();
            }

            while (v110);
          }

          v61 = v49 + v42;
          if (__OFADD__(v49, v42))
          {
            goto LABEL_54;
          }

          ++v49;
          sub_22C7E4DFC(v61);
          if (v49 == v34)
          {

            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

LABEL_29:
    v74 = v28[1];
    if (__OFSUB__(v74 >> 6, v42))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v75 = 1 << *v28;
    v52 = __OFSUB__(v75, 1);
    v76 = v75 - 1;
    if (v52)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v77 = (v76 & (((v74 >> 6) - v42) >> 63)) + (v74 >> 6) - v42;
    if (v77 < v76)
    {
      v76 = 0;
    }

    v28[1] = v28[1] & 0x3FLL | ((v77 - v76) << 6);
LABEL_52:
    sub_22C36CC48();
    return;
  }

  if (__OFSUB__(v43, v32))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if ((v43 - v32) >= MEMORY[0x2318B0640](*v28 & 0x3FLL) / 3)
  {
    sub_22C37275C();
    v78 = sub_22C9030FC();
    v107 = v28;
    v108 = v26;
    v109 = 0;
    v110 = v78;
    sub_22C7E4C5C(v78, v79, v80);
    do
    {
      v82 = sub_22C7E4434(v81);
      if ((v83 & 1) == 0 && v82 >= v32)
      {
        v52 = __OFSUB__(v82, v42);
        v84 = v82 - v42;
        if (v52)
        {
          goto LABEL_56;
        }

        sub_22C7E4DFC(v84);
      }

      v81 = sub_22C90315C();
    }

    while (v109);
    goto LABEL_52;
  }

  v62 = a22(v32, v100);
  v103 = v65;
  if (v63 != v64 >> 1)
  {
    v85 = v63;
    v99[1] = v62;
    v100 = v64 >> 1;
    if (v63 >= (v64 >> 1))
    {
LABEL_66:
      __break(1u);
      return;
    }

    v86 = v102 + 16;
    v87 = *(v102 + 16);
    v101 = *(v102 + 72);
    v102 = v87;
    v88 = (v86 - 8);
    while (1)
    {
      (v102)(v22, &v103[v101 * v85], v36);
      sub_22C7E4310(v105, v106, v104);
      sub_22C37DA2C();
      v89 = sub_22C909F7C();
      (*v88)(v22, v36);
      sub_22C38A0A8();
      v52 = __OFSUB__(v90, 1);
      v91 = v90 - 1;
      if (v52)
      {
        goto LABEL_57;
      }

      v92 = v91 & v89;
      sub_22C36BBCC();
      v93 = sub_22C9030FC();
      v107 = v28;
      v108 = v26;
      v109 = v92;
      v110 = v93;
      sub_22C7E4C5C(v93, v94, v95);
      if (v96)
      {
        do
        {
          v97 = sub_22C7E4434(v96);
          if ((v98 & 1) == 0 && v97 == v32)
          {
            break;
          }

          v96 = sub_22C90315C();
        }

        while (v110);
      }

      if (__OFSUB__(v32, v42))
      {
        goto LABEL_58;
      }

      sub_22C7E4DFC(v32 - v42);
      v52 = __OFADD__(v32++, 1);
      if (v52)
      {
        goto LABEL_59;
      }

      if (++v85 == v100)
      {
        swift_unknownObjectRelease();
        goto LABEL_52;
      }
    }
  }

  sub_22C36CC48();

  swift_unknownObjectRelease();
}

uint64_t sub_22C7E141C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for PromptTreeIdentifier(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v61 - v16;
  v18 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v18 >= 1)
  {
    v19 = *(a3 + 16);
    if ((v19 - v18) / 2 <= a1)
    {
      if (__OFSUB__(v19, a2))
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if ((v19 - a2) >= MEMORY[0x2318B0640](*a4 & 0x3FLL) / 3)
      {
        v44 = sub_22C9030FC();
        *&v67 = a4;
        *(&v67 + 1) = a5;
        *&v68 = 0;
        *(&v68 + 1) = v44;
        *&v69 = v45;
        *(&v69 + 1) = v46;
        v70 = 0;
        do
        {
          v63 = v67;
          v64 = v68;
          v65 = v69;
          v66 = v70;
          v47 = sub_22C90313C();
          if ((v48 & 1) == 0 && v47 >= a2)
          {
            v24 = __OFSUB__(v47, v18);
            result = v47 - v18;
            if (v24)
            {
              goto LABEL_56;
            }

            sub_22C90314C();
          }

          result = sub_22C90315C();
        }

        while (v68);
      }

      else
      {
        result = sub_22C8A53FC(a2, a3);
        if (v33 != v34 >> 1)
        {
          v49 = v33;
          v62 = result;
          v50 = v34 >> 1;
          if (v33 >= (v34 >> 1))
          {
LABEL_66:
            __break(1u);
            return result;
          }

          v51 = v32;
          v52 = *(v11 + 72);
          while (1)
          {
            sub_22C7E4208(v51 + v52 * v49, v14);
            sub_22C90B62C();
            sub_22C489574();
            sub_22C7E42B8(v14, type metadata accessor for PromptTreeIdentifier);
            result = sub_22C90B66C();
            v53 = 1 << *a4;
            v24 = __OFSUB__(v53, 1);
            v54 = v53 - 1;
            if (v24)
            {
              goto LABEL_57;
            }

            v55 = v54 & result;
            v56 = sub_22C9030FC();
            *&v63 = a4;
            *(&v63 + 1) = a5;
            *&v64 = v55;
            *(&v64 + 1) = v56;
            *&v65 = v57;
            *(&v65 + 1) = v58;
            v66 = 0;
            while (*(&v64 + 1))
            {
              v67 = v63;
              v68 = v64;
              v69 = v65;
              v70 = v66;
              v59 = sub_22C90313C();
              if ((v60 & 1) == 0 && v59 == a2)
              {
                break;
              }

              sub_22C90315C();
            }

            result = a2 - v18;
            if (__OFSUB__(a2, v18))
            {
              goto LABEL_58;
            }

            result = sub_22C90314C();
            v24 = __OFADD__(a2++, 1);
            if (v24)
            {
              goto LABEL_59;
            }

            if (++v49 == v50)
            {
              return swift_unknownObjectRelease();
            }
          }
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      result = MEMORY[0x2318B0640](*a4 & 0x3FLL);
      if (result / 3 <= a1)
      {
        v35 = sub_22C9030FC();
        *&v67 = a4;
        *(&v67 + 1) = a5;
        *&v68 = 0;
        *(&v68 + 1) = v35;
        *&v69 = v36;
        *(&v69 + 1) = v37;
        v70 = 0;
        do
        {
          v63 = v67;
          v64 = v68;
          v65 = v69;
          v66 = v70;
          v38 = sub_22C90313C();
          if ((v39 & 1) == 0 && v38 < a1)
          {
            v24 = __OFADD__(v38, v18);
            result = v38 + v18;
            if (v24)
            {
              goto LABEL_55;
            }

            sub_22C90314C();
          }

          result = sub_22C90315C();
        }

        while (v68);
      }

      else
      {
        if (a1 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v19 < a1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (a1)
        {
          v20 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
          v21 = *(v11 + 72);
          v62 = a3;

          v22 = 0;
          while (1)
          {
            sub_22C7E4208(v20 + v21 * v22, v17);
            sub_22C90B62C();
            sub_22C489574();
            sub_22C7E42B8(v17, type metadata accessor for PromptTreeIdentifier);
            result = sub_22C90B66C();
            v23 = 1 << *a4;
            v24 = __OFSUB__(v23, 1);
            v25 = v23 - 1;
            if (v24)
            {
              break;
            }

            v26 = v25 & result;
            v27 = sub_22C9030FC();
            *&v63 = a4;
            *(&v63 + 1) = a5;
            *&v64 = v26;
            *(&v64 + 1) = v27;
            *&v65 = v28;
            *(&v65 + 1) = v29;
            v66 = 0;
            while (*(&v64 + 1))
            {
              v67 = v63;
              v68 = v64;
              v69 = v65;
              v70 = v66;
              v30 = sub_22C90313C();
              if ((v31 & 1) == 0 && v30 == v22)
              {
                break;
              }

              sub_22C90315C();
            }

            result = v22 + v18;
            if (__OFADD__(v22, v18))
            {
              goto LABEL_54;
            }

            ++v22;
            sub_22C90314C();
            if (v22 == a1)
            {

              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

LABEL_29:
      v40 = a4[1];
      if (__OFSUB__(v40 >> 6, v18))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v41 = 1 << *a4;
      v24 = __OFSUB__(v41, 1);
      v42 = v41 - 1;
      if (v24)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v43 = (v42 & (((v40 >> 6) - v18) >> 63)) + (v40 >> 6) - v18;
      if (v43 < v42)
      {
        v42 = 0;
      }

      a4[1] = a4[1] & 0x3FLL | ((v43 - v42) << 6);
    }
  }

  return result;
}

uint64_t sub_22C7E1964(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v118 = a5;
  v113 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  v9 = MEMORY[0x28223BE20](v113);
  v106 = (&v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v112 = &v103 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v107 = (&v103 - v14);
  MEMORY[0x28223BE20](v13);
  v115 = &v103 - v15;
  v16 = sub_22C902D0C();
  v105 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v109 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v108 = (&v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v111 = &v103 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v110 = &v103 - v24;
  MEMORY[0x28223BE20](v23);
  v114 = &v103 - v25;
  v117 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  v26 = MEMORY[0x28223BE20](v117);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v103 - v29;
  v116 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v31 = MEMORY[0x28223BE20](v116);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v31);
  v37 = &v103 - v36;
  v38 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v38 >= 1)
  {
    v104 = a3;
    v39 = *(a3 + 16);
    if ((v39 - v38) / 2 <= a1)
    {
      v53 = __OFSUB__(v39, a2);
      v62 = v39 - a2;
      if (v53)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v63 = v35;
      if (v62 >= MEMORY[0x2318B0640](*a4 & 0x3FLL) / 3)
      {
        v77 = v118;
        v78 = sub_22C9030FC();
        *&v123 = a4;
        *(&v123 + 1) = v77;
        *&v124 = 0;
        *(&v124 + 1) = v78;
        *&v125 = v79;
        *(&v125 + 1) = v80;
        v126 = 0;
        do
        {
          v119 = v123;
          v120 = v124;
          v121 = v125;
          v122 = v126;
          v81 = sub_22C90313C();
          if ((v82 & 1) == 0 && v81 >= a2)
          {
            v53 = __OFSUB__(v81, v38);
            result = v81 - v38;
            if (v53)
            {
              goto LABEL_84;
            }

            sub_22C90314C();
          }

          result = sub_22C90315C();
        }

        while (v124);
      }

      else
      {
        result = sub_22C8A5414(a2, v104);
        v115 = v66;
        if (v64 != v65 >> 1)
        {
          v83 = v64;
          v104 = result;
          v110 = v65 >> 1;
          if (v64 >= (v65 >> 1))
          {
LABEL_94:
            __break(1u);
            return result;
          }

          v114 = *(v63 + 72);
          v107 = (v105 + 4);
          ++v105;
          v84 = v106;
          while (1)
          {
            sub_22C7E4208(v115 + v114 * v83, v33);
            sub_22C90B62C();
            sub_22C7E4208(v33, v28);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v85 = v112;
              sub_22C7E4260(v28, v112);
              MEMORY[0x2318B8B10](1);
              sub_22C7E4208(v85, v84);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (EnumCaseMultiPayload)
              {
                if (EnumCaseMultiPayload == 1)
                {
                  v87 = v109;
                  (*v107)(v109, v84, v16);
                  MEMORY[0x2318B8B10](2);
                  sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
                  sub_22C909F8C();
                  (*v105)(v87, v16);
                }

                else
                {
                  MEMORY[0x2318B8B10](0);
                }
              }

              else
              {
                MEMORY[0x2318B8B10](1);
                sub_22C909FFC();
                v84 = v106;
              }

              v91 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local;
              v92 = &v128;
            }

            else
            {
              v88 = v111;
              sub_22C7E4260(v28, v111);
              MEMORY[0x2318B8B10](0);
              v89 = v108;
              sub_22C7E4208(v88, v108);
              switch(sub_22C370B74(v89, 3, v16))
              {
                case 1u:
                  v93 = 0;
                  goto LABEL_69;
                case 2u:
                  v93 = 1;
                  goto LABEL_69;
                case 3u:
                  v93 = 2;
LABEL_69:
                  MEMORY[0x2318B8B10](v93);
                  break;
                default:
                  v90 = v109;
                  (*v107)(v109, v108, v16);
                  MEMORY[0x2318B8B10](3);
                  sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
                  sub_22C909F8C();
                  (*v105)(v90, v16);
                  break;
              }

              v91 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global;
              v92 = &v127;
            }

            sub_22C7E42B8(*(v92 - 32), v91);
            sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
            sub_22C909F8C();
            result = sub_22C90B66C();
            v94 = 1 << *a4;
            v53 = __OFSUB__(v94, 1);
            v95 = v94 - 1;
            if (v53)
            {
              goto LABEL_85;
            }

            v96 = v95 & result;
            v97 = v118;
            v98 = sub_22C9030FC();
            *&v119 = a4;
            *(&v119 + 1) = v97;
            *&v120 = v96;
            *(&v120 + 1) = v98;
            *&v121 = v99;
            *(&v121 + 1) = v100;
            v122 = 0;
            while (*(&v120 + 1))
            {
              v123 = v119;
              v124 = v120;
              v125 = v121;
              v126 = v122;
              v101 = sub_22C90313C();
              if ((v102 & 1) == 0 && v101 == a2)
              {
                break;
              }

              sub_22C90315C();
            }

            result = a2 - v38;
            if (__OFSUB__(a2, v38))
            {
              goto LABEL_86;
            }

            sub_22C90314C();
            result = sub_22C7E42B8(v33, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
            v53 = __OFADD__(a2++, 1);
            if (v53)
            {
              goto LABEL_87;
            }

            if (++v83 == v110)
            {
              return swift_unknownObjectRelease();
            }
          }
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v40 = v35;
      result = MEMORY[0x2318B0640](*a4 & 0x3FLL);
      if (result / 3 <= a1)
      {
        v67 = v118;
        v68 = sub_22C9030FC();
        *&v123 = a4;
        *(&v123 + 1) = v67;
        *&v124 = 0;
        *(&v124 + 1) = v68;
        *&v125 = v69;
        *(&v125 + 1) = v70;
        v126 = 0;
        do
        {
          v119 = v123;
          v120 = v124;
          v121 = v125;
          v122 = v126;
          v71 = sub_22C90313C();
          if ((v72 & 1) == 0 && v71 < a1)
          {
            v53 = __OFADD__(v71, v38);
            result = v71 + v38;
            if (v53)
            {
              goto LABEL_83;
            }

            sub_22C90314C();
          }

          result = sub_22C90315C();
        }

        while (v124);
      }

      else
      {
        if (a1 < 0)
        {
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v41 = v107;
        if (v39 < a1)
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        result = v104;
        if (a1)
        {
          v112 = v104 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
          v111 = *(v40 + 72);
          v108 = (v105 + 4);
          v106 = v105 + 1;

          v42 = 0;
          while (1)
          {
            sub_22C7E4208(v112 + v111 * v42, v37);
            sub_22C90B62C();
            sub_22C7E4208(v37, v30);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v43 = v115;
              sub_22C7E4260(v30, v115);
              MEMORY[0x2318B8B10](1);
              sub_22C7E4208(v43, v41);
              v44 = swift_getEnumCaseMultiPayload();
              if (v44)
              {
                if (v44 == 1)
                {
                  v45 = v109;
                  (*v108)(v109, v41, v16);
                  MEMORY[0x2318B8B10](2);
                  sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
                  sub_22C909F8C();
                  (*v106)(v45, v16);
                }

                else
                {
                  MEMORY[0x2318B8B10](0);
                }
              }

              else
              {
                MEMORY[0x2318B8B10](1);
                sub_22C909FFC();
                v41 = v107;
              }

              v49 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local;
              v50 = v115;
            }

            else
            {
              v46 = v114;
              sub_22C7E4260(v30, v114);
              MEMORY[0x2318B8B10](0);
              v47 = v110;
              sub_22C7E4208(v46, v110);
              switch(sub_22C370B74(v47, 3, v16))
              {
                case 1u:
                  v51 = 0;
                  goto LABEL_21;
                case 2u:
                  v51 = 1;
                  goto LABEL_21;
                case 3u:
                  v51 = 2;
LABEL_21:
                  MEMORY[0x2318B8B10](v51);
                  break;
                default:
                  v48 = v109;
                  (*v108)(v109, v110, v16);
                  MEMORY[0x2318B8B10](3);
                  sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
                  sub_22C909F8C();
                  (*v106)(v48, v16);
                  break;
              }

              v49 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global;
              v50 = v114;
            }

            sub_22C7E42B8(v50, v49);
            sub_22C7E4310(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
            sub_22C909F8C();
            result = sub_22C90B66C();
            v52 = 1 << *a4;
            v53 = __OFSUB__(v52, 1);
            v54 = v52 - 1;
            if (v53)
            {
              break;
            }

            v55 = v54 & result;
            v56 = v118;
            v57 = sub_22C9030FC();
            *&v119 = a4;
            *(&v119 + 1) = v56;
            *&v120 = v55;
            *(&v120 + 1) = v57;
            *&v121 = v58;
            *(&v121 + 1) = v59;
            v122 = 0;
            while (*(&v120 + 1))
            {
              v123 = v119;
              v124 = v120;
              v125 = v121;
              v126 = v122;
              v60 = sub_22C90313C();
              if ((v61 & 1) == 0 && v60 == v42)
              {
                break;
              }

              sub_22C90315C();
            }

            result = v42 + v38;
            if (__OFADD__(v42, v38))
            {
              goto LABEL_82;
            }

            ++v42;
            sub_22C90314C();
            sub_22C7E42B8(v37, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
            if (v42 == a1)
            {

              goto LABEL_43;
            }
          }

          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }
      }

LABEL_43:
      v73 = a4[1];
      if (__OFSUB__(v73 >> 6, v38))
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v74 = 1 << *a4;
      v53 = __OFSUB__(v74, 1);
      v75 = v74 - 1;
      if (v53)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v76 = (v75 & (((v73 >> 6) - v38) >> 63)) + (v73 >> 6) - v38;
      if (v76 < v75)
      {
        v75 = 0;
      }

      a4[1] = a4[1] & 0x3FLL | ((v76 - v75) << 6);
    }
  }

  return result;
}

uint64_t sub_22C7E28BC(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_57;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if ((v9 - v5) / 2 <= result)
    {
      v13 = a2;
      v14 = __OFSUB__(v9, a2);
      v15 = v9 - a2;
      if (v14)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v15 >= MEMORY[0x2318B0640](*a4 & 0x3FLL) / 3)
      {
        sub_22C9030FC();
        v24 = sub_22C90313C();
        if ((v25 & 1) == 0 && v24 >= v13)
        {
          v14 = __OFSUB__(v24, v5);
          result = v24 - v5;
          if (v14)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_22C90314C();
        }

        return sub_22C90315C();
      }

      result = sub_22C8A54C4(v13, a3);
      v17 = v16;
      v19 = v18 >> 1;
      while (v17 != v19)
      {
        if (v17 >= v19)
        {
          goto LABEL_51;
        }

        sub_22C90B62C();

        sub_22C909FFC();
        result = sub_22C90B66C();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_22C9030FC())
        {
          while (1)
          {
            v20 = sub_22C90313C();
            if ((v21 & 1) == 0 && v20 == v13)
            {
              break;
            }

            sub_22C90315C();
          }
        }

        result = v13 - v5;
        if (__OFSUB__(v13, v5))
        {
          goto LABEL_53;
        }

        sub_22C90314C();

        v14 = __OFADD__(v13++, 1);
        if (v14)
        {
          goto LABEL_54;
        }

        ++v17;
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      result = MEMORY[0x2318B0640](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v9 < v8)
        {
LABEL_62:
          __break(1u);
          return result;
        }

        for (i = 0; ; ++i)
        {
          if (i == v8)
          {

            goto LABEL_40;
          }

          sub_22C90B62C();

          sub_22C909FFC();
          result = sub_22C90B66C();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_22C9030FC())
          {
            while (1)
            {
              v11 = sub_22C90313C();
              if ((v12 & 1) == 0 && v11 == i)
              {
                break;
              }

              sub_22C90315C();
            }
          }

          result = i + v5;
          if (__OFADD__(i, v5))
          {
            goto LABEL_50;
          }

          sub_22C90314C();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_22C9030FC();
      v22 = sub_22C90313C();
      if ((v23 & 1) == 0 && v22 < v8)
      {
        v14 = __OFADD__(v22, v5);
        result = v22 + v5;
        if (v14)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_22C90314C();
      }

      result = sub_22C90315C();
LABEL_40:
      v26 = a4[1];
      if (__OFSUB__(v26 >> 6, v5))
      {
        goto LABEL_59;
      }

      v27 = 1 << *a4;
      v14 = __OFSUB__(v27, 1);
      v28 = v27 - 1;
      if (v14)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v29 = (v28 & (((v26 >> 6) - v5) >> 63)) + (v26 >> 6) - v5;
      if (v29 < v28)
      {
        v28 = 0;
      }

      a4[1] = a4[1] & 0x3FLL | ((v29 - v28) << 6);
    }
  }

  return result;
}

uint64_t sub_22C7E2D0C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    result = type metadata accessor for RetrievedToolWithAttribution(0);
    if (v6 <= a3)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7E2DBC()
{
  v1 = j__malloc_size(v0);
  v2 = type metadata accessor for RetrievedToolWithAttribution(0);
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  if (v6)
  {
    v7 = v1 - ((v5 + 40) & ~v5);
    if (v6 != -1 || v7 != 0x8000000000000000)
    {
      return v7 / v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7E2E58()
{
  v1 = *v0;
  v2 = type metadata accessor for RetrievedToolWithAttribution(0);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  sub_22C3A5908(&qword_27D9C0290, &qword_22C926998);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_22C7E2F50(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

void sub_22C7E2F50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  type metadata accessor for RetrievedToolWithAttribution(0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = v5;
      v10 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v8 = 0;
  v9 = v7;
LABEL_6:
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_22C7E3060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C3BDA38();
  a17 = v19;
  a18 = v20;
  sub_22C369A48();
  v21 = sub_22C90952C();
  sub_22C369824();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v27 = v26 - v25;
  v28 = sub_22C36CA88();
  v30 = sub_22C3A5908(v28, v29);
  sub_22C369914(v30);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  sub_22C4E719C(v18, &a9 - v32, &qword_27D9BB0C0, &qword_22C90D960);
  sub_22C36D0A8(v33, 1, v21);
  if (v34)
  {
    sub_22C90B64C();
  }

  else
  {
    v35 = sub_22C37335C();
    v36(v35);
    sub_22C90B64C();
    sub_22C381820();
    sub_22C7E4310(v37, v38, MEMORY[0x277D72D68]);
    sub_22C388DAC();
    sub_22C909F8C();
    (*(v23 + 8))(v27, v21);
  }

  sub_22C3BDA24();
}

uint64_t sub_22C7E31E0(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  while (1)
  {
    v7 = v6 <= a2;
    if (a3 > 0.0)
    {
      v7 = v6 >= a2;
    }

    if (v7)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
      goto LABEL_9;
    }

    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      break;
    }

    v6 = a1 + v5 * a3;
LABEL_9:
    v8 = __OFADD__(result++, 1);
    if (v8)
    {
      __break(1u);
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7E324C(double a1, double a2, double a3)
{
  v6 = sub_22C7E31E0(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_22C3A5908(&qword_27D9BB6A0, &qword_22C90FAB0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * ((v9 - 32) / 8);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = *(v8 + 3);

  if (v7 < 0)
  {
    goto LABEL_52;
  }

  v12 = v8 + 4;
  v13 = v10 >> 1;
  v14 = 0;
  v15 = 0;
  if (!v7)
  {
    v16 = a1;
    goto LABEL_20;
  }

  v13 -= v7;
  v16 = a1;
  do
  {
    v17 = v16;
    v18 = v16 <= a2;
    if (a3 > 0.0)
    {
      v18 = v16 >= a2;
    }

    if (v18)
    {
      if (!(v14 & 1 | (v16 != a2)))
      {
        v14 = 1;
        goto LABEL_17;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }

    v19 = __OFADD__(v15++, 1);
    if (v19)
    {
      goto LABEL_51;
    }

    v16 = a1 + v15 * a3;
LABEL_17:
    *v12++ = v17;
    --v7;
  }

  while (v7);
  while (1)
  {
LABEL_20:
    v20 = v16 <= a2;
    if (a3 > 0.0)
    {
      v20 = v16 >= a2;
    }

    if (!v20)
    {
      v19 = __OFADD__(v15++, 1);
      if (v19)
      {
        goto LABEL_48;
      }

      v21 = a1 + v15 * a3;
      if (v13)
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if ((v16 != a2) | v14 & 1)
    {
      break;
    }

    v14 = 1;
    v21 = v16;
    if (v13)
    {
      v21 = v16;
      goto LABEL_41;
    }

LABEL_28:
    v22 = *(v8 + 3);
    if (((v22 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_49;
    }

    v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    sub_22C3A5908(&qword_27D9BB6A0, &qword_22C90FAB0);
    v25 = swift_allocObject();
    v26 = (j__malloc_size(v25) - 32) / 8;
    *(v25 + 2) = v24;
    *(v25 + 3) = 2 * v26;
    v27 = (v25 + 4);
    v28 = *(v8 + 3);
    v29 = v28 >> 1;
    if (*(v8 + 2))
    {
      if (v25 != v8 || v27 >= &v8[v29 + 4])
      {
        memmove(v25 + 4, v8 + 4, 8 * v29);
      }

      v8[2] = 0.0;
    }

    v12 = (v27 + 8 * v29);
    v13 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - (v28 >> 1);

    v8 = v25;
LABEL_41:
    v19 = __OFSUB__(v13--, 1);
    if (v19)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    *v12++ = v16;
    v16 = v21;
  }

  v31 = *(v8 + 3);
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v19 = __OFSUB__(v32, v13);
    v33 = v32 - v13;
    if (v19)
    {
      goto LABEL_53;
    }

    *(v8 + 2) = v33;
  }

  return v8;
}

void sub_22C7E34FC()
{
  sub_22C36BA7C();
  v46 = v0;
  v2 = v1;
  v4 = v3;
  v45 = sub_22C3A5908(&qword_27D9BC048, &qword_22C91AC70);
  sub_22C36985C();
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  v44 = v6;
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  v43 = v8;
  v47 = sub_22C3A5908(&qword_27D9BDBB0, &qword_22C91AC88);
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v42 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA64();
  v48 = v13;
  v49 = v12;
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v38 = v2;
  v39 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = MEMORY[0x277D84F90] + v39;
  v40 = v4;
  v41 = v2 + 32;
  while (1)
  {
    if (v46 == v15 || v15 >= *(v2 + 16))
    {
      v35 = v16[3];
      if (v35 >= 2)
      {
        v36 = v35 >> 1;
        v34 = __OFSUB__(v36, v14);
        v37 = v36 - v14;
        if (v34)
        {
          goto LABEL_39;
        }

        v16[2] = v37;
      }

      sub_22C36CC48();
      return;
    }

    if (v15 >= *(v4 + 16))
    {
      break;
    }

    v18 = *(v45 + 48);
    v19 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
    sub_22C3699B8(v19);
    sub_22C37B7CC();
    sub_22C7E4208(v20, v43);
    *(v43 + v18) = *(v41 + 8 * v15);
    sub_22C4E7208(v43, v44, &qword_27D9BC048, &qword_22C91AC70);
    v21 = *(v45 + 48);
    v22 = *(v47 + 48);
    v23 = sub_22C37E1CC();
    sub_22C7E4260(v23, v42);
    *(v42 + v22) = *(v44 + v21);
    sub_22C4E7208(v42, v49, &qword_27D9BDBB0, &qword_22C91AC88);
    if (v14)
    {

      v24 = v16;
    }

    else
    {
      v25 = v16[3];
      if (((v25 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_36;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      sub_22C3A5908(&qword_27D9C02C0, &qword_22C926A00);
      v28 = *(v48 + 72);
      v24 = swift_allocObject();
      v29 = j__malloc_size(v24);
      if (!v28)
      {
        goto LABEL_37;
      }

      v30 = v29 - v39;
      if (v29 - v39 == 0x8000000000000000 && v28 == -1)
      {
        goto LABEL_38;
      }

      v24[2] = v27;
      v24[3] = 2 * (v30 / v28);
      v32 = v16[3] >> 1;
      v17 = v24 + v39 + v32 * v28;
      v14 = ((v30 / v28) & 0x7FFFFFFFFFFFFFFFLL) - v32;
      if (v16[2])
      {
        if (v24 < v16 || v24 + v39 >= v16 + v39 + v32 * v28)
        {

          sub_22C36ECB4();
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {

          if (v24 != v16)
          {
            sub_22C36ECB4();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v16[2] = 0;
      }

      else
      {
      }

      v2 = v38;
    }

    v34 = __OFSUB__(v14--, 1);
    if (v34)
    {
      goto LABEL_35;
    }

    sub_22C4E7208(v49, v17, &qword_27D9BDBB0, &qword_22C91AC88);
    v17 += *(v48 + 72);
    ++v15;
    v16 = v24;
    v4 = v40;
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
LABEL_39:
  __break(1u);
}

void *sub_22C7E38E4(void *result)
{
  v1 = 0;
  v2 = 0;
  v3 = result[2];
  v4 = (result + 4);
  v5 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90] + 32; ; i += 40)
  {
    if (v3 == v2)
    {
      v19 = v5[3];
      if (v19 >= 2)
      {
        v20 = v19 >> 1;
        v16 = __OFSUB__(v20, v1);
        v21 = v20 - v1;
        if (v16)
        {
          goto LABEL_25;
        }

        v5[2] = v21;
      }

      return v5;
    }

    *&v22[0] = v2;
    result = sub_22C36F998(v4, v22 + 8);
    v24 = v22[0];
    v25 = v22[1];
    v26 = v23;
    if (!v1)
    {
      v7 = v5[3];
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      sub_22C3A5908(&qword_27D9BAD68, &unk_22C90D610);
      v10 = swift_allocObject();
      v11 = (j__malloc_size(v10) - 32) / 40;
      v10[2] = v9;
      v10[3] = 2 * v11;
      v12 = (v10 + 4);
      v13 = v5[3];
      v14 = v13 >> 1;
      if (v5[2])
      {
        if (v10 != v5 || v12 >= &v5[5 * v14 + 4])
        {
          memmove(v10 + 4, v5 + 4, 40 * v14);
        }

        v5[2] = 0;
      }

      i = v12 + 40 * v14;
      v1 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - (v13 >> 1);

      v5 = v10;
    }

    v16 = __OFSUB__(v1--, 1);
    if (v16)
    {
      break;
    }

    v17 = v24;
    v18 = v25;
    *(i + 32) = v26;
    *i = v17;
    *(i + 16) = v18;
    v4 += 32;
    ++v2;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_22C7E3A84(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v38 = v8;
  v39 = &v34 - v7;
  v9 = 0;
  v10 = 0;
  v35 = *(v8 + 80);
  v11 = MEMORY[0x277D84F90];
  v36 = (v35 + 32) & ~v35;
  v12 = MEMORY[0x277D84F90] + v36;
  v37 = *(a1 + 16);
  while (1)
  {
    if (v37 == v10)
    {
      v31 = v11[3];
      if (v31 >= 2)
      {
        v32 = v31 >> 1;
        v30 = __OFSUB__(v32, v9);
        v33 = v32 - v9;
        if (v30)
        {
          goto LABEL_35;
        }

        v11[2] = v33;
      }

      return v11;
    }

    v13 = *(type metadata accessor for QueryDecorationTuple(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10;
    v15 = *(v2 + 48);
    *v5 = v10;
    sub_22C7E4208(v14, v5 + v15);
    result = sub_22C4E7208(v5, v39, &qword_27D9BABD8, &unk_22C90FA30);
    if (v9)
    {
      v16 = v11;
    }

    else
    {
      v17 = v11[3];
      if (((v17 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v18 = a1;
      v19 = v17 & 0xFFFFFFFFFFFFFFFELL;
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      sub_22C3A5908(&qword_27D9BABD0, &unk_22C90D470);
      v21 = *(v38 + 72);
      v22 = v36;
      v16 = swift_allocObject();
      result = j__malloc_size(v16);
      if (!v21)
      {
        goto LABEL_33;
      }

      v23 = result - v22;
      if ((result - v22) == 0x8000000000000000 && v21 == -1)
      {
        goto LABEL_34;
      }

      v25 = v23 / v21;
      v16[2] = v20;
      v16[3] = 2 * (v23 / v21);
      v26 = v16 + v22;
      v27 = v11[3];
      v28 = (v27 >> 1) * v21;
      if (v11[2])
      {
        if (v16 < v11 || v26 >= v11 + v36 + v28)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v16 != v11)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v11[2] = 0;
      }

      v12 = &v26[v28];
      v9 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - (v27 >> 1);

      a1 = v18;
    }

    v30 = __OFSUB__(v9--, 1);
    if (v30)
    {
      break;
    }

    result = sub_22C4E7208(v39, v12, &qword_27D9BABD8, &unk_22C90FA30);
    v12 += *(v38 + 72);
    ++v10;
    v11 = v16;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}