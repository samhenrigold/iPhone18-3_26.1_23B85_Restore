uint64_t sub_1A938A738(char a1)
{
  result = swift_beginAccess();
  *(v1 + 152) = a1;
  return result;
}

uint64_t sub_1A938A7C8()
{
  v1[2] = v0;
  v2 = sub_1A957BC88();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A938A894, v0, 0);
}

uint64_t sub_1A938A894()
{
  v1 = (*(**(v0 + 16) + 248))();
  if (v1 == 2)
  {
    v2 = (*(**(v0 + 16) + 168))();
    *(v0 + 56) = v2;
    v7 = (*(*v2 + 168) + **(*v2 + 168));
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_1A938AA5C;

    return v7();
  }

  else
  {
    v5 = v1;

    v6 = *(v0 + 8);

    return v6(v5 & 1);
  }
}

uint64_t sub_1A938AA5C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1A938AD24;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1A938AB84;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A938AB84()
{
  (*(**(v0 + 16) + 256))(1);
  if (qword_1EB38DF50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = sub_1A937731C(v2, qword_1EB38DF58);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA68();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1A9324000, v5, v6, "VoiceDB service reachable", v11, 2u);
    MEMORY[0x1AC587CD0](v11, -1, -1);
  }

  (*(v10 + 8))(v8, v9);

  v12 = *(v0 + 8);

  return v12(1);
}

uint64_t sub_1A938AD24()
{
  v1 = v0[2];

  (*(*v1 + 256))(0);
  if (qword_1EB38DF50 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = sub_1A937731C(v5, qword_1EB38DF58);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_1A957BC68();
  v9 = sub_1A957CA68();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[9];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1A9324000, v8, v9, "VoiceDB service not reachable %@", v12, 0xCu);
    sub_1A937B960(v13, &qword_1EB386960, &unk_1A9587798);
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_1A938AF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_1A938AFE4;

  return sub_1A938A7C8();
}

uint64_t sub_1A938AFE4(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v9 = (v3[3] + *v3[3]);
    v5 = swift_task_alloc();
    v3[8] = v5;
    *v5 = v4;
    v5[1] = sub_1A938B224;
  }

  else
  {
    v9 = (v3[5] + *v3[5]);
    v6 = swift_task_alloc();
    v3[9] = v6;
    *v6 = v4;
    v6[1] = sub_1A938B318;
  }

  v7 = v3[2];

  return v9(v7);
}

uint64_t sub_1A938B224()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A938B318()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A938B40C(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v3[40] = swift_task_alloc();
  v4 = sub_1A957AFD8();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A938B508, v2, 0);
}

uint64_t sub_1A938B508()
{
  v1 = *(v0 + 304);
  v2 = (*(**(v0 + 312) + 144))();
  *(v0 + 352) = v2;
  memcpy((v0 + 16), v1, 0x118uLL);
  v6 = (*(*v2 + 480) + **(*v2 + 480));
  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  *v3 = v0;
  v3[1] = sub_1A938B680;
  v4 = *(v0 + 320);

  return v6(v4, v0 + 16);
}

uint64_t sub_1A938B680()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 312);
  if (v0)
  {
    v4 = sub_1A938B96C;
  }

  else
  {
    v4 = sub_1A938B7BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A938B7BC()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1A937B960(v3, &unk_1EB387B80, qword_1A9587740);
  }

  else
  {
    v4 = *(v2 + 32);
    v4(v0[43], v3, v1);
    v5 = [objc_opt_self() defaultManager];
    sub_1A957AFA8();
    v6 = sub_1A957C0C8();

    v7 = [v5 fileExistsAtPath_];

    if (v7)
    {
      v4(v0[37], v0[43], v0[41]);
      v8 = 0;
      goto LABEL_7;
    }

    (*(v0[42] + 8))(v0[43], v0[41]);
  }

  v8 = 1;
LABEL_7:
  (*(v0[42] + 56))(v0[37], v8, 1, v0[41]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A938B96C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A938B9DC(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1A938BA04, v2, 0);
}

uint64_t sub_1A938BA04()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 48) = v1;
  v7 = (*(*v1 + 160) + **(*v1 + 160));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1A938BB50;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return v7(v5, v3, v4);
}

uint64_t sub_1A938BB50()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1A938BC8C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1A938BC8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A938BCF0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1A938BD18, v1, 0);
}

uint64_t sub_1A938BD18()
{
  v1 = (*(**(v0 + 16) + 168))();
  *(v0 + 40) = v1;
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1A938BE60;
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v6(v4, v3);
}

uint64_t sub_1A938BE60()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x1EEE6DFA0](sub_1A9391C20, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1A938BF9C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1A938BFC4, v1, 0);
}

uint64_t sub_1A938BFC4()
{
  v1 = (*(**(v0 + 16) + 168))();
  *(v0 + 40) = v1;
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1A938C10C;
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v6(v4, v3);
}

uint64_t sub_1A938C10C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x1EEE6DFA0](sub_1A938C248, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1A938C248()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A938C2AC(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A938C2CC, v1, 0);
}

uint64_t sub_1A938C2CC()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 136);
  if (*(v2 + 16))
  {
    v3 = v0[8];

    v4 = sub_1A938FB7C(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);

      v7 = v0[1];

      return v7(v6);
    }
  }

  v9 = *(*v0[9] + 328);
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1A938C48C;
  v11 = v0[8];

  return v12(v11);
}

uint64_t sub_1A938C48C(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A938C5A4, v2, 0);
}

uint64_t sub_1A938C5A4(uint64_t a1)
{
  v2 = v1[11];
  if (*(v2 + 16) <= 2uLL)
  {
    v3 = v1[8];
    v4 = v1[9];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 136);
    *(v4 + 136) = 0x8000000000000000;
    sub_1A9390124(v2, v3, isUniquelyReferenced_nonNull_native);
    *(v4 + 136) = v9;
    a1 = swift_endAccess();
  }

  (*(*v1[9] + 240))(a1);
  v6 = v1[11];
  v7 = v1[1];

  return v7(v6);
}

uint64_t sub_1A938C6A4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1A957BC88();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A938C764, v1, 0);
}

uint64_t sub_1A938C764()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v8 = (*(*v2 + 280) + **(*v2 + 280));
  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  *v5 = v0;
  v5[1] = sub_1A938C918;

  return v8(v0 + 2, &unk_1A9587778, v3, &unk_1A9587788, v4, v6);
}

uint64_t sub_1A938C918()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1A938CAB0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1A938CA48;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A938CA48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A938CAB0()
{

  if (qword_1EB38DF50 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_1A937731C(v4, qword_1EB38DF58);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA78();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1A9324000, v7, v8, "Error fetching voices: %@. Using fallback voices.", v11, 0xCu);
    sub_1A937B960(v12, &qword_1EB386960, &unk_1A9587798);
    MEMORY[0x1AC587CD0](v12, -1, -1);
    MEMORY[0x1AC587CD0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[4];
  v16 = (*(v0[6] + 8))(v0[7], v0[5]);
  v17 = (*(*v15 + 144))(v16);
  v0[12] = v17;
  v21 = (*(*v17 + 424) + **(*v17 + 424));
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_1A938CD98;
  v19 = v0[3];

  return v21(v19);
}

uint64_t sub_1A938CD98(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1A938CED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A938CEF4, a2, 0);
}

uint64_t sub_1A938CEF4()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 40) = v1;
  v5 = (*(*v1 + 200) + **(*v1 + 200));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1A938D03C;
  v3 = *(v0 + 32);

  return v5(v3);
}

uint64_t sub_1A938D03C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = sub_1A9391C20;
  }

  else
  {
    v7 = *(v4 + 24);

    *(v4 + 64) = a1;
    v6 = sub_1A9391C14;
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A938D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A938D19C, a2, 0);
}

uint64_t sub_1A938D19C()
{
  v1 = (*(**(v0 + 24) + 144))();
  *(v0 + 40) = v1;
  v5 = (*(*v1 + 392) + **(*v1 + 392));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1A938D2F8;
  v3 = *(v0 + 32);

  return v5(v3);
}

uint64_t sub_1A938D2F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = sub_1A9391C20;
  }

  else
  {
    v7 = *(v4 + 24);

    *(v4 + 64) = a1;
    v6 = sub_1A938D438;
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A938D45C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1A957BC88();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A938D51C, v1, 0);
}

uint64_t sub_1A938D51C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v8 = (*(*v2 + 280) + **(*v2 + 280));
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = sub_1A937829C(&qword_1EB386968, &qword_1A95877C8);
  *v5 = v0;
  v5[1] = sub_1A938D6D0;

  return v8(v0 + 2, &unk_1A95877B0, v3, &unk_1A95877C0, v4, v6);
}

uint64_t sub_1A938D6D0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1A938D86C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1A938D800;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A938D800()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1A938D86C()
{

  if (qword_1EB38DF50 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = sub_1A937731C(v4, qword_1EB38DF58);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA78();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1A9324000, v7, v8, "Error fetching locales: %@. Using fallback locales.", v11, 0xCu);
    sub_1A937B960(v12, &qword_1EB386960, &unk_1A9587798);
    MEMORY[0x1AC587CD0](v12, -1, -1);
    MEMORY[0x1AC587CD0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[5];
  v16 = (*(v0[7] + 8))(v0[8], v0[6]);
  v17 = (*(*v15 + 144))(v16);
  v0[13] = v17;
  v21 = (*(*v17 + 416) + **(*v17 + 416));
  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = sub_1A938DB54;
  v19 = v0[4];

  return v21(v19);
}

uint64_t sub_1A938DB54(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1A938DCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A938DCC0, a2, 0);
}

uint64_t sub_1A938DCC0()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 40) = v1;
  v5 = (*(*v1 + 192) + **(*v1 + 192));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1A938DE08;
  v3 = *(v0 + 32);

  return v5(v3);
}

uint64_t sub_1A938DE08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = v6[3];
    v8 = sub_1A9391C20;
  }

  else
  {
    v9 = v6[3];

    v6[8] = a2;
    v6[9] = a1;
    v8 = sub_1A9391C24;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1A938DF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A938DF74, a2, 0);
}

uint64_t sub_1A938DF74()
{
  v1 = (*(**(v0 + 24) + 144))();
  *(v0 + 40) = v1;
  v5 = (*(*v1 + 400) + **(*v1 + 400));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1A938E0D0;
  v3 = *(v0 + 32);

  return v5(v3);
}

uint64_t sub_1A938E0D0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = v6[3];
    v8 = sub_1A9391C20;
  }

  else
  {
    v9 = v6[3];

    v6[8] = a2;
    v6[9] = a1;
    v8 = sub_1A938E21C;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1A938E244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v23 = a1;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v4 = *(Criteria - 8);
  MEMORY[0x1EEE9AC00](Criteria - 8);
  v22[1] = v5;
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A937829C(&qword_1EB386970, &qword_1A95877D0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v14 = sub_1A937829C(&qword_1EB386978, &qword_1A95877D8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v25 = v22 - v15;
  sub_1A93DA21C();

  sub_1A957BA78();

  sub_1A957C6E8();
  v16 = *(v8 + 8);
  v22[2] = v8 + 8;
  v24 = v16;
  v16(v11, v7);
  sub_1A9390AA4(a1, v6);
  v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = v26;
  *(v18 + 16) = v26;
  sub_1A9390B08(v6, v18 + v17);

  sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  sub_1A957C6D8();

  v24(v13, v7);
  sub_1A9390AA4(v23, v6);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  sub_1A9390B08(v6, v20 + v17);

  return sub_1A957B938();
}

uint64_t sub_1A938E584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = (*(*a3 + 320) + **(*a3 + 320));
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1A938E6B8;

  return v8(a4);
}

uint64_t sub_1A938E6B8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A9391C18, 0, 0);
}

uint64_t sub_1A938E7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v7 = (*(*a2 + 320) + **(*a2 + 320));
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1A938E8EC;

  return v7(a3);
}

uint64_t sub_1A938E8EC(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A938E9EC, 0, 0);
}

uint64_t sub_1A938EA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v23 = a1;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v4 = *(Criteria - 8);
  MEMORY[0x1EEE9AC00](Criteria - 8);
  v22[1] = v5;
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A937829C(&qword_1EB386970, &qword_1A95877D0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v14 = sub_1A937829C(&qword_1EB386980, &qword_1A9587800);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v25 = v22 - v15;
  sub_1A93DA21C();

  sub_1A957BA78();

  sub_1A957C6E8();
  v16 = *(v8 + 8);
  v22[2] = v8 + 8;
  v24 = v16;
  v16(v11, v7);
  sub_1A9390AA4(a1, v6);
  v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = v26;
  *(v18 + 16) = v26;
  sub_1A9390B08(v6, v18 + v17);

  sub_1A937829C(&qword_1EB386968, &qword_1A95877C8);
  sub_1A957C6D8();

  v24(v13, v7);
  sub_1A9390AA4(v23, v6);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  sub_1A9390B08(v6, v20 + v17);

  return sub_1A957B938();
}

uint64_t sub_1A938ED4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = (*(*a3 + 336) + **(*a3 + 336));
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1A938EE80;

  return v8(a4);
}

uint64_t sub_1A938EE80(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A9391C1C, 0, 0);
}

uint64_t sub_1A938EF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v7 = (*(*a2 + 336) + **(*a2 + 336));
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1A938F0B4;

  return v7(a3);
}

uint64_t sub_1A938F0B4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A938F1B4, 0, 0);
}

uint64_t sub_1A938F1D8()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 physicalMemory];

  if (v1 > 0x147D35700)
  {
    return -1;
  }

  else
  {
    return 150000000;
  }
}

uint64_t sub_1A938F248()
{
  v0 = *(**sub_1A94CF400() + 424);

  v2 = v0(v1);

  return v2;
}

void *VoiceDatabaseClient.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VoiceDatabaseClient.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t VoiceDatabaseClient.voice(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[110] = v3;
  v4[109] = a3;
  v4[108] = a2;
  v4[107] = a1;
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v4[111] = swift_task_alloc();
  type metadata accessor for VoiceQueryCriteria(0);
  v4[112] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A938F5B0, v3, 0);
}

uint64_t sub_1A938F5B0()
{
  v13 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = sub_1A957B308();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  sub_1A9431DA8();
  sub_1A9431DA8();

  VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)(v5, v4, v2, &v11, &v12, v1);
  v10 = (*(*v3 + 320) + **(*v3 + 320));
  v7 = swift_task_alloc();
  v0[113] = v7;
  *v7 = v0;
  v7[1] = sub_1A938F778;
  v8 = v0[112];

  return v10(v8);
}

uint64_t sub_1A938F778(uint64_t a1)
{
  v2 = *(*v1 + 896);
  v3 = *(*v1 + 880);
  *(*v1 + 912) = a1;

  sub_1A9391040(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A938F8AC, v3, 0);
}

uint64_t sub_1A938F8AC()
{
  v1 = v0[114];
  v2 = v0[107];
  if (*(v1 + 16))
  {
    memcpy(v0 + 2, (v1 + 32), 0x118uLL);
    sub_1A937B3DC((v0 + 2), (v0 + 37));

    memcpy(v2, v0 + 2, 0x118uLL);
    nullsub_23();
  }

  else
  {

    sub_1A93847E0((v0 + 72));
    memcpy(v2, v0 + 72, 0x118uLL);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A938F98C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A938FA84;

  return v6(a1);
}

uint64_t sub_1A938FA84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1A938FB7C(uint64_t a1)
{
  type metadata accessor for VoiceQueryCriteria(0);
  sub_1A9391AAC(&qword_1EB386998, 255, type metadata accessor for VoiceQueryCriteria, &protocol conformance descriptor for VoiceQueryCriteria);
  v2 = sub_1A957C058();

  return sub_1A938FC18(a1, v2);
}

unint64_t sub_1A938FC18(uint64_t a1, uint64_t a2)
{
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  MEMORY[0x1EEE9AC00](Criteria);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_1A9390AA4(*(v2 + 48) + v11 * v9, v7);
      sub_1A9391AAC(&qword_1EB3869A0, 255, type metadata accessor for VoiceQueryCriteria, &protocol conformance descriptor for VoiceQueryCriteria);
      v12 = sub_1A957C098();
      sub_1A9391040(v7);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_1A938FDA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v42 = *(Criteria - 8);
  v43 = Criteria;
  MEMORY[0x1EEE9AC00](Criteria);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1A937829C(&qword_1EB386990, &qword_1A9587908);
  v44 = v4;
  result = sub_1A957D118();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v42 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v44)
      {
        sub_1A9390B08(v25, v7);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_1A9390AA4(v25, v7);
        v29 = *(v10 + 56);
        v27 = v7;
        v28 = *(v29 + 8 * v23);
      }

      sub_1A9391AAC(&qword_1EB386998, 255, type metadata accessor for VoiceQueryCriteria, &protocol conformance descriptor for VoiceQueryCriteria);
      v30 = v27;
      result = sub_1A957C058();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1A9390B08(v30, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1A9390124(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  MEMORY[0x1EEE9AC00](Criteria);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1A938FB7C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1A9390354();
      goto LABEL_7;
    }

    sub_1A938FDA8(v16, a3 & 1);
    v21 = sub_1A938FB7C(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A9390AA4(a2, v10);
      return sub_1A93902B4(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_1A93902B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  result = sub_1A9390B08(a2, v8 + *(*(Criteria - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
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

void *sub_1A9390354()
{
  v1 = v0;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v24 = *(Criteria - 8);
  MEMORY[0x1EEE9AC00](Criteria - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A937829C(&qword_1EB386990, &qword_1A9587908);
  v5 = *v0;
  v6 = sub_1A957D108();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
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
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1A9390AA4(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1A9390B08(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

unint64_t sub_1A939056C(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3869B0, qword_1A9587930);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1A937829C(&qword_1EB386990, &qword_1A9587908);
    v7 = sub_1A957D128();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A9391BAC(v9, v5, &qword_1EB3869B0, qword_1A9587930);
      result = sub_1A938FB7C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      Criteria = type metadata accessor for VoiceQueryCriteria(0);
      result = sub_1A9390B08(v5, v14 + *(*(Criteria - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A9390760()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return sub_1A9389E88(v3, v4, v5, v2);
}

uint64_t sub_1A93907F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A938CED4(a1, v5, v4);
}

uint64_t sub_1A93908A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A938D17C(a1, v5, v4);
}

uint64_t sub_1A939094C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A938DCA0(a1, v5, v4);
}

uint64_t sub_1A93909F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A938DF54(a1, v5, v4);
}

uint64_t sub_1A9390AA4(uint64_t a1, uint64_t a2)
{
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  (*(*(Criteria - 8) + 16))(a2, a1, Criteria);
  return a2;
}

uint64_t sub_1A9390B08(uint64_t a1, uint64_t a2)
{
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  (*(*(Criteria - 8) + 32))(a2, a1, Criteria);
  return a2;
}

uint64_t sub_1A9390B6C(uint64_t a1)
{
  v4 = *(type metadata accessor for VoiceQueryCriteria(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A93836DC;

  return sub_1A938E584(a1, v7, v6, v1 + v5);
}

uint64_t sub_1A9390C50(uint64_t a1)
{
  v4 = *(type metadata accessor for VoiceQueryCriteria(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A938E7B8(a1, v6, v1 + v5);
}

uint64_t sub_1A9390D34(uint64_t a1)
{
  v4 = *(type metadata accessor for VoiceQueryCriteria(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A93836DC;

  return sub_1A938ED4C(a1, v7, v6, v1 + v5);
}

uint64_t sub_1A9390E18()
{
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v2 = *(*(Criteria - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(Criteria - 8) + 64);

  v5 = *(Criteria + 24);
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A9390F5C(uint64_t a1)
{
  v4 = *(type metadata accessor for VoiceQueryCriteria(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A938EF80(a1, v6, v1 + v5);
}

uint64_t sub_1A9391040(uint64_t a1)
{
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  (*(*(Criteria - 8) + 8))(a1, Criteria);
  return a1;
}

uint64_t dispatch thunk of VoiceDatabaseClient.url(forVoice:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 288) + **(*v2 + 288));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of VoiceDatabaseClient.download(voice:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 296) + **(*v2 + 296));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of VoiceDatabaseClient.purge(voice:)(uint64_t a1)
{
  v6 = (*(*v1 + 304) + **(*v1 + 304));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceDatabaseClient.cancelDownload(voice:)(uint64_t a1)
{
  v6 = (*(*v1 + 312) + **(*v1 + 312));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A9382328;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceDatabaseClient.voices(forQuery:)(uint64_t a1)
{
  v6 = (*(*v1 + 320) + **(*v1 + 320));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93916A8;

  return v6(a1);
}

uint64_t sub_1A93916A8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of VoiceDatabaseClient.locales(forQuery:)(uint64_t a1)
{
  v6 = (*(*v1 + 336) + **(*v1 + 336));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93918CC;

  return v6(a1);
}

uint64_t sub_1A93918CC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1A9391AAC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1A9391AF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A93836DC;

  return sub_1A938F98C(a1, v4);
}

uint64_t sub_1A9391BAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A937829C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A9391CA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1A957BC88();
  sub_1A9377618(v5, a2);
  sub_1A937731C(v5, a2);
  return sub_1A957BC78();
}

uint64_t sub_1A9391D40()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB3A7BA8);
  sub_1A937731C(v0, qword_1EB3A7BA8);
  return sub_1A957BC78();
}

uint64_t CoreSynthesizer.Voice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[11];
  v10 = v0[13];
  v11 = v0[12];
  v9 = v0[14];
  v12 = *(v0 + 120);
  sub_1A957CF08();
  v36 = 0;
  v37 = 0xE000000000000000;
  MEMORY[0x1AC585140](0x6E5B206563696F56, 0xED0000203A656D61);
  MEMORY[0x1AC585140](v3, v4);
  MEMORY[0x1AC585140](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x1AC585140](v1, v2);
  MEMORY[0x1AC585140](0x203A65707974202CLL, 0xE800000000000000);
  *&v15 = v7;
  *(&v15 + 1) = v11;
  v16 = v10;
  v17 = v9;
  LOBYTE(v18) = v12;
  sub_1A957D058();
  MEMORY[0x1AC585140](0xD000000000000011, 0x80000001A95C0B80);
  v14[0] = v1;
  v14[1] = v2;
  v15 = *(v0 + 1);
  v16 = v0[4];
  v17 = v3;
  v19 = *(v0 + 7);
  v18 = v4;
  v20 = v6;
  v21 = v5;
  v22 = v7;
  v23 = v11;
  v24 = v10;
  v25 = v9;
  v26 = v12;
  *&v35[15] = *(v0 + 33);
  v33 = *(v0 + 217);
  v34 = *(v0 + 233);
  *v35 = *(v0 + 249);
  v29 = *(v0 + 153);
  v30 = *(v0 + 169);
  v31 = *(v0 + 185);
  v32 = *(v0 + 201);
  v27 = *(v0 + 121);
  v28 = *(v0 + 137);
  CoreSynthesizer.Voice.primaryLocales.getter(v13);
  sub_1A937829C(&qword_1EB3869B8, &qword_1A9587970);
  sub_1A957D058();
  sub_1A9378138(v13);
  MEMORY[0x1AC585140](0xD000000000000013, 0x80000001A95C0BA0);
  CoreSynthesizer.Voice.secondaryLocales.getter(v14);
  sub_1A957D058();
  sub_1A9378138(v14);
  MEMORY[0x1AC585140](93, 0xE100000000000000);
  return v36;
}

uint64_t CoreSynthesizer.Utterance.description.getter()
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1A957CF08();
  v9 = 0;
  v10 = 0xE000000000000000;
  MEMORY[0x1AC585140](0xD000000000000010, 0x80000001A95C0BC0);
  MEMORY[0x1AC585140](*v0, *(v0 + 8));
  MEMORY[0x1AC585140](0x3A6563696F76202CLL, 0xE900000000000020);
  memcpy(__dst, (v0 + 32), sizeof(__dst));
  if (sub_1A932D058(__dst) == 1)
  {
    v1 = 0xE500000000000000;
    v2 = 0x3E6C696E3CLL;
  }

  else
  {
    memcpy(v8, __dst, sizeof(v8));
    v2 = CoreSynthesizer.Voice.description.getter();
    v1 = v3;
  }

  MEMORY[0x1AC585140](v2, v1);

  MEMORY[0x1AC585140](0x69726F697270202CLL, 0xEC000000203A7974);
  v8[0] = *(v0 + 368);
  v4 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v4);

  MEMORY[0x1AC585140](0x697661686562202CLL, 0xEC000000203A726FLL);
  LOBYTE(v8[0]) = *(v0 + 16);
  v5 = sub_1A957C198();
  MEMORY[0x1AC585140](v5);

  MEMORY[0x1AC585140](0x6865426F7369202CLL, 0xEF203A726F697661);
  LOBYTE(v8[0]) = *(v0 + 17);
  v6 = sub_1A957C198();
  MEMORY[0x1AC585140](v6);

  MEMORY[0x1AC585140](8285, 0xE200000000000000);
  return v9;
}

BOOL TTSAudioFormat.isEqual(_:)(uint64_t a1)
{
  sub_1A9392954(a1, &v17);
  if (!v19)
  {
    sub_1A93929C4(&v17);
    return 0;
  }

  type metadata accessor for TTSAudioFormat();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = v21;
  v3 = [v21 channelLayoutTag];
  if (v3 != [v1 channelLayoutTag])
  {

    return 0;
  }

  [v2 streamDescription];
  v4 = v17;
  v5 = v19;
  v6 = HIDWORD(v19);
  v7 = v20;
  v16 = v18;
  [v1 streamDescription];
  v8 = v17;
  v15 = v18;
  v9 = v19;
  v10 = HIDWORD(v19);
  v11 = v20;

  result = 0;
  if (v6 == v10 && (~vaddvq_s32(vandq_s8(vceqq_s32(v16, v15), xmmword_1A9587A00)) & 0xF) == 0 && v5 == v9 && v4 == v8)
  {
    return v7 == v11;
  }

  return result;
}

uint64_t sub_1A9392954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3869D0, &qword_1A9587A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93929C4(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3869D0, &qword_1A9587A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for TTSAudioFormat()
{
  result = qword_1EB391F60[0];
  if (!qword_1EB391F60[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB391F60);
  }

  return result;
}

void __swiftcall TTSAudioFormat.init()(TTSAudioFormat *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

__n128 sub_1A9392BF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A9392C0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A9392C2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

void type metadata accessor for AudioStreamBasicDescription()
{
  if (!qword_1EB3869D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB3869D8);
    }
  }
}

uint64_t _s12TextToSpeech15FormattedStreamC11EscapeStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t sub_1A9392D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1A957D4F8();
  a4(v6);
  return sub_1A957D548();
}

uint64_t sub_1A9392DBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1A9392E64(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

char *FormattedStream.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *v2;
  *(v2 + 2) = 0;
  (*(*(*(v3 + 80) - 8) + 32))(&v2[*(v3 + 104)], a1);
  return v2;
}

char *FormattedStream.init(_:)(uint64_t a1)
{
  v2 = *v1;
  *(v1 + 2) = 0;
  (*(*(*(v2 + 80) - 8) + 32))(&v1[*(v2 + 104)], a1);
  return v1;
}

uint64_t sub_1A9392FB4()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = __OFADD__(v2, 4);
  v4 = v2 + 4;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v4;
  }

  return result;
}

uint64_t sub_1A9392FF8()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = __OFSUB__(v2, 4);
  v4 = v2 - 4;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v4;
  }

  return result;
}

uint64_t sub_1A939303C()
{
  (*(*v0 + 112))();
  v1 = sub_1A957C378();
  (*(*v0 + 208))(v1);
}

uint64_t sub_1A93930C8(void (*a1)(uint64_t))
{
  v3 = (*(*v1 + 168))();
  a1(v3);
  v4 = *(*v1 + 176);

  return v4();
}

uint64_t sub_1A9393158(uint64_t a1, unint64_t a2)
{
  (*(*v2 + 184))();
  v6 = *(*v2 + 208);
  v6(a1, a2);

  return (v6)(10, 0xE100000000000000);
}

uint64_t sub_1A9393208(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1A957D068();
  return swift_endAccess();
}

uint64_t sub_1A93932B0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (*a3)
  {
    if (*a3 == 1)
    {

      v6 = a1;
    }

    else
    {
      v19 = a1;
      v20 = a2;
      v17 = 35;
      v18 = 0xE100000000000000;
      v15 = 9052;
      v16 = 0xE200000000000000;
      v12 = sub_1A93820F4();
      v6 = sub_1A957CD08(&v17, &v15, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v12, v12, v12);
      v4 = v13;
    }
  }

  else
  {
    v19 = a1;
    v20 = a2;
    v17 = 92;
    v18 = 0xE100000000000000;
    v15 = 23644;
    v16 = 0xE200000000000000;
    v7 = sub_1A93820F4();
    v8 = MEMORY[0x1E69E6158];
    v19 = sub_1A957CD08(&v17, &v15, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v7, v7, v7);
    v20 = v9;
    v17 = 34;
    v18 = 0xE100000000000000;
    v15 = 8796;
    v16 = 0xE200000000000000;
    v10 = sub_1A957CD08(&v17, &v15, 0, 0, 0, 1, v8, v8, v8, v7, v7, v7);
    v4 = v11;

    v6 = v10;
  }

  (*(*v3 + 208))(v6, v4);
}

uint64_t sub_1A9393468(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!*a3)
  {
    v4 = 60;
    v5 = 0xE100000000000000;
    goto LABEL_5;
  }

  if (*a3 == 1)
  {
    v4 = 12092;
    v5 = 0xE200000000000000;
LABEL_5:
    v9 = v4;
    v10 = v5;
    MEMORY[0x1AC585140](a1, a2);
    v6 = 62;
    v7 = 0xE100000000000000;
    goto LABEL_7;
  }

  v9 = 60;
  v10 = 0xE100000000000000;
  MEMORY[0x1AC585140](a1, a2);
  v6 = 15919;
  v7 = 0xE200000000000000;
LABEL_7:
  MEMORY[0x1AC585140](v6, v7);
  (*(*v3 + 208))(v9, v10);
}

uint64_t sub_1A9393540(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (v6 == 2)
  {
    v7 = 8739;
  }

  else
  {
    v7 = 34;
  }

  if (v6 == 2)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  if (v6 == 2)
  {
    v9 = 8994;
  }

  else
  {
    v9 = 34;
  }

  v10 = *(*v3 + 208);
  v10(v7, v8);

  v12 = v6;
  (*(*v3 + 216))(a1, a2, &v12);
  v10(v9, v8);
}

uint64_t sub_1A9393638(uint64_t a1, unint64_t a2)
{
  v18 = *(*v2 + 200);
  v18(572662307, 0xE400000000000000);
  v23[0] = 10;
  v23[1] = 0xE100000000000000;
  v22 = v23;

  v19 = sub_1A9393C7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A9394148, v21, a1, a2, v5);
  v6 = *(v19 + 16);
  if (v6)
  {
    v20 = *(*v2 + 184);
    v7 = *(*v2 + 208);
    v8 = (v19 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      v20(v13);
      v14 = MEMORY[0x1AC585090](v9, v10, v11, v12);
      v16 = v15;

      v7(v14, v16);

      v7(10, 0xE100000000000000);
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  return (v18)(589439522, 0xE400000000000000);
}

void *sub_1A93937E0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v23 - v14;
  v16 = *a2;
  if (sub_1A957C978() == 1)
  {
    result = sub_1A957C9C8();
    if (v27)
    {
      v25 = v16;
      (*(*v5 + 232))(v26, v27, &v25);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v23[0] = v13;
    v18 = *(*v5 + 208);
    v18(91, 0xE100000000000000);
    (*(v24 + 16))(v10, a1, a3);
    sub_1A957C3C8();
    swift_getAssociatedConformanceWitness();
    sub_1A957CCB8();
    if (v27)
    {
      v19 = v26;
      v20 = *v5;
      LOBYTE(v26) = v16;
      (*(v20 + 232))(v19, v27, &v26);

      sub_1A957CCB8();
      v21 = v27;
      if (v27)
      {
        v22 = v26;
        do
        {
          v18(8236, 0xE200000000000000);
          LOBYTE(v26) = v16;
          (*(*v5 + 232))(v22, v21, &v26);

          sub_1A957CCB8();
          v22 = v26;
          v21 = v27;
        }

        while (v27);
      }
    }

    (*(v23[0] + 8))(v15, AssociatedTypeWitness);
    return (v18)(93, 0xE100000000000000);
  }

  return result;
}

uint64_t FormattedStream.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return swift_deallocClassInstance();
}

unint64_t sub_1A9393C7C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1A957C3B8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1A939403C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1A939403C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1A957C388();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1A957C248();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1A957C248();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1A957C3B8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1A939403C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1A957C3B8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1A939403C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1A939403C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1A957C248();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1A939403C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB3869E0, &unk_1A958EA30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A9394148(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A957D3E8() & 1;
  }
}

uint64_t sub_1A93941DC(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t _s7ProsodyV17RelativePitchUnitOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7ProsodyV17RelativePitchUnitOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void __swiftcall CoreSynthesizer.Voice._bridgeToObjectiveC()(TTSSpeechVoice *__return_ptr retstr)
{
  memcpy(__dst, v1, sizeof(__dst));
  type metadata accessor for TTSAXResource(0);
  memcpy(__src, v1, sizeof(__src));
  sub_1A937B3DC(__dst, v3);
  v2 = sub_1A9384878(__src);
  [v2 speechVoice];
}

uint64_t static CoreSynthesizer.Voice._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1A9384810(__dst);
  v4 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v8, (a1 + v4), sizeof(v8));
  memmove(a2, (a1 + v4), 0x118uLL);
  return sub_1A937822C(v8, &v6);
}

uint64_t static CoreSynthesizer.Voice._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1A9384810(__dst);
  v4 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v8, (a1 + v4), sizeof(v8));
  memmove(a2, (a1 + v4), 0x118uLL);
  sub_1A937822C(v8, &v6);
  return 1;
}

uint64_t static CoreSynthesizer.Voice._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1 || (v4 = OBJC_IVAR___TTSAXResource_voice, swift_beginAccess(), memcpy(__dst, (a1 + v4), sizeof(__dst)), memmove(__src, (a1 + v4), 0x118uLL), sub_1A932D058(__src) == 1))
  {
    result = sub_1A957D0A8();
    __break(1u);
  }

  else
  {
    memcpy(a2, __src, 0x118uLL);
    memcpy(v7, __dst, sizeof(v7));
    return sub_1A937B3DC(v7, v6);
  }

  return result;
}

id sub_1A9394940()
{
  memcpy(__dst, v0, sizeof(__dst));
  type metadata accessor for TTSAXResource(0);
  memcpy(__src, v0, sizeof(__src));
  sub_1A937B3DC(__dst, v4);
  v1 = sub_1A9384878(__src);
  v2 = [v1 speechVoice];

  return v2;
}

uint64_t sub_1A93949D4(uint64_t a1, void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1A9384810(__dst);
  v4 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v8, (a1 + v4), sizeof(v8));
  memmove(a2, (a1 + v4), 0x118uLL);
  return sub_1A937822C(v8, &v6);
}

uint64_t sub_1A9394A68(uint64_t a1, void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1A9384810(__dst);
  v4 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v8, (a1 + v4), sizeof(v8));
  memmove(a2, (a1 + v4), 0x118uLL);
  sub_1A937822C(v8, &v6);
  return 1;
}

uint64_t sub_1A9394B00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1 || (v4 = OBJC_IVAR___TTSAXResource_voice, swift_beginAccess(), memcpy(__dst, (a1 + v4), sizeof(__dst)), memmove(__src, (a1 + v4), 0x118uLL), sub_1A932D058(__src) == 1))
  {
    result = sub_1A957D0A8();
    __break(1u);
  }

  else
  {
    memcpy(a2, __src, 0x118uLL);
    memcpy(v7, __dst, sizeof(v7));
    return sub_1A937B3DC(v7, v6);
  }

  return result;
}

uint64_t sub_1A9394C18()
{
  if (!*(v0 + 48))
  {
    return 3;
  }

  if (*(v0 + 48) == 1)
  {
    return 9;
  }

  v2 = *v0;
  v3 = v0[3];
  v4 = v0[4] | v0[5];
  v5 = v0[2] | v0[1];
  if (!(v4 | *v0 | v3 | v5))
  {
    return 7;
  }

  v6 = v4 | v3 | v5;
  if (v2 == 1 && !v6)
  {
    return 4;
  }

  if (v2 == 2 && !v6)
  {
    return 10;
  }

  if (v2 == 3 && !v6)
  {
    return 9;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2 == 4;
  }

  if (v7)
  {
    return 9;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1A9394CB8()
{
  if (*(v0 + 48))
  {
    return 2;
  }

  else
  {
    return qword_1A9587C50[*v0];
  }
}

uint64_t sub_1A9394D1C(unsigned int a1)
{
  v1 = sub_1A957C218();
  v2 = sub_1A957C218();
  v4 = v3;

  MEMORY[0x1AC585140](v2, v4);

  v5 = sub_1A957C218();
  v7 = v6;

  MEMORY[0x1AC585140](v5, v7);

  v8 = sub_1A957C218();
  v10 = v9;

  MEMORY[0x1AC585140](v8, v10);

  return v1;
}

void *Optional<A>.auParamValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v12, a1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v4 + 8))(v7, a1);
    return sub_1A94623BC();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    (*(a2 + 8))(v8, a2);
    return (*(v9 + 8))(v11, v8);
  }
}

void *sub_1A939515C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = sub_1A957CC58();
  result = Optional<A>.auParamValue.getter(v5, v4);
  *a3 = v7;
  return result;
}

uint64_t sub_1A93951A4(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a1;
  v6 = sub_1A957CC58();
  return Optional<A>.auParamValue.setter(v6, v4, v5);
}

uint64_t Optional<A>.auParamValue.setter(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  (*(*(a1 - 8) + 8))(v4, a1);
  v8 = *sub_1A94623BC();
  v9 = *(a1 + 16);
  if (v8 == a3)
  {
    v10 = 1;
  }

  else
  {
    (*(a2 + 32))(v9, a2, a3, v8);
    v10 = 0;
  }

  v11 = *(*(v9 - 8) + 56);

  return v11(v4, v10, 1, v9);
}

uint64_t (*Optional<A>.auParamValue.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  Optional<A>.auParamValue.getter(a2, a3);
  *(a1 + 24) = v5;
  return sub_1A9395330;
}

uint64_t Optional<A>.init(auVal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v8 = *sub_1A94623BC();
  if (v8 == a4)
  {
    v9 = 1;
  }

  else
  {
    (*(a2 + 32))(a1, a2, a4, v8);
    v9 = 0;
  }

  v10 = *(*(a1 - 8) + 56);

  return v10(a3, v9, 1, a1);
}

uint64_t (*sub_1A939542C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *a1 = v3;
  *(a1 + 8) = a2;
  v6 = *(a3 - 8);
  *(a1 + 16) = v6;
  Optional<A>.auParamValue.getter(a2, v6);
  *(a1 + 24) = v7;
  return sub_1A9395484;
}

float sub_1A93954C8@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_1A93954D4(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float (*Float.auParamValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_1A9398248;
}

float (*sub_1A9395524(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_1A9395550;
}

float sub_1A9395550(uint64_t a1)
{
  result = *(a1 + 8);
  **a1 = result;
  return result;
}

float Bool.auParamValue.getter(char a1)
{
  result = 0.0;
  if (a1)
  {
    return 1.0;
  }

  return result;
}

_BYTE *sub_1A9395588@<X0>(_BYTE *result@<X0>, float *a2@<X8>)
{
  v2 = 0.0;
  if (*result)
  {
    v2 = 1.0;
  }

  *a2 = v2;
  return result;
}

uint64_t (*Bool.auParamValue.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = 0.0;
  if (*v1)
  {
    v2 = 1.0;
  }

  *(a1 + 8) = v2;
  return sub_1A939824C;
}

float sub_1A9395604()
{
  result = 0.0;
  if (*v0)
  {
    return 1.0;
  }

  return result;
}

uint64_t (*sub_1A939562C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = 0.0;
  if (*v1)
  {
    v2 = 1.0;
  }

  *(a1 + 8) = v2;
  return sub_1A9395668;
}

Swift::Int __swiftcall Int.init(auVal:)(Swift::Float auVal)
{
  if ((LODWORD(auVal) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (auVal <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (auVal < 9.2234e18)
  {
    return auVal;
  }

LABEL_7:
  __break(1u);
  return result;
}

float sub_1A93956E0@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float *sub_1A93956F0(float *result, void *a2)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.2234e18)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void Int.auParamValue.setter(float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.2234e18)
  {
    *v1 = a1;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t (*Int.auParamValue.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_1A9398250;
}

void sub_1A93957C8(float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.2234e18)
  {
    *v1 = a1;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t (*sub_1A9395814(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_1A9395844;
}

uint64_t sub_1A9395848(uint64_t result, char a2)
{
  v2 = *(result + 8);
  v3 = (LODWORD(v2) & 0x7FFFFFFFu) <= 0x7F7FFFFF;
  if (a2)
  {
    if ((*(result + 8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v2 <= -9.2234e18)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v3 = v2 <= 9.2234e18;
    if (v2 < 9.2234e18)
    {
LABEL_11:
      **result = v2;
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 < 9.2234e18)
  {
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1A93958D4(void *a1@<X8>, float a2@<S0>)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 < 9.2234e18)
  {
    *a1 = a2;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1A9395920@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

void sub_1A93959EC(char a1)
{
  v3 = swift_beginAccess();
  v1[16] = a1;
  v4 = (*(*v1 + 176))(v3);
  if (v4)
  {
    v5 = v4;
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x70))();
  }
}

uint64_t (*sub_1A9395A90(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A9398254;
}

uint64_t sub_1A9395AE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

id sub_1A9395B84()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_1A9395BC8(void *a1)
{
  swift_beginAccess();
  v3 = v1[3];
  v1[3] = a1;
  v4 = a1;

  v5 = (*(*v1 + 176))();
  if (v5)
  {
    v6 = v5;
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x70))();
  }
}

uint64_t (*sub_1A9395C88(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A9395CDC;
}

void sub_1A9395CE0(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*(**(a1 + 24) + 176))(v4);
    if (v5)
    {
      v6 = v5;
      (*((*MEMORY[0x1E69E7D40] & *v5) + 0x70))();
    }
  }
}

void sub_1A9395DD8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A9395E24(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A9395EB4;
}

void sub_1A9395EB4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1A9395F30(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v10 = a1;
  v11 = a3[3];
  v12 = a3[4];
  v13 = sub_1A9396054(a3, v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_1A93977B0(v10, a2, v15, a4, v6, v5, v11, v12);

  sub_1A9378138(a3);
  return v17;
}

uint64_t sub_1A9396054(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t AUParamWrapper.deinit()
{
  sub_1A9378138((v0 + 32));
  sub_1A937B960(v0 + 72, &qword_1EB3869E8, &qword_1A9587C80);
  MEMORY[0x1AC587DA0](v0 + 120);
  return v0;
}

uint64_t AUParamWrapper.__deallocating_deinit()
{
  sub_1A9378138((v0 + 32));
  sub_1A937B960(v0 + 72, &qword_1EB3869E8, &qword_1A9587C80);
  MEMORY[0x1AC587DA0](v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t AUParamValue.wrapper.getter()
{
  sub_1A93977A8();
}

uint64_t AUParamValue.wrapper.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AUParamValue.init(param:defaultValue:internalOnly:featureFlag:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v24 = a6;
  v25 = a7;
  v23 = a3;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22[-v15];
  v17 = type metadata accessor for AUParamWrapper();
  v18 = *(v11 + 16);
  v18(v16, a2, a5);
  sub_1A9391BAC(a4, v26, &qword_1EB3869E8, &qword_1A9587C80);
  v18(v14, v16, a5);
  v19 = sub_1A93977B0(1, a1, v14, v26, v23, v17, a5, v24);

  sub_1A937B960(a4, &qword_1EB3869E8, &qword_1A9587C80);
  v20 = *(v11 + 8);
  v20(a2, a5);
  result = (v20)(v16, a5);
  *v25 = v19;
  return result;
}

uint64_t AUParamValue.wrappedValue.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = (*(**v1 + 152))();
  [v4 value];
  v6 = v5;

  return (*(*(a1 + 24) + 32))(v3, v6);
}

uint64_t AUParamValue.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1A9397904(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*AUParamValue.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  AUParamValue.wrappedValue.getter(a2);
  return sub_1A939663C;
}

void sub_1A939663C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1A9397904(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1A9397904((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1A9396728()
{
  sub_1A93977A8();
}

id TTSMagicFirstPartyAudioUnit.__allocating_init(componentDescription:options:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v5 = [objc_allocWithZone(v4) initWithComponentDescription:v9 options:a4 error:v11];
  if (v5)
  {
    v6 = v11[0];
  }

  else
  {
    v7 = v11[0];
    sub_1A957AEF8();

    swift_willThrow();
  }

  return v5;
}

void *TTSMagicFirstPartyAudioUnit.init(componentDescription:options:)(unint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(a1);
  v10 = HIDWORD(a2);
  *&v4[OBJC_IVAR____TtC12TextToSpeech27TTSMagicFirstPartyAudioUnit____lazy_storage___allValueParams] = 0;
  v20[0] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for TTSMagicFirstPartyAudioUnit();
  v18[0] = v8;
  v18[1] = v9;
  v18[2] = v7;
  v18[3] = v10;
  v18[4] = a3;
  v11 = objc_msgSendSuper2(&v19, sel_initWithComponentDescription_options_error_, v18, a4, v20);
  v12 = v11;
  if (v11)
  {
    v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x70);
    v14 = v20[0];
    v15 = v12;
    v13();
  }

  else
  {
    v16 = v20[0];
    sub_1A957AEF8();

    swift_willThrow();
  }

  return v12;
}

uint64_t sub_1A9396A00()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech27TTSMagicFirstPartyAudioUnit____lazy_storage___allValueParams;
  if (*&v0[OBJC_IVAR____TtC12TextToSpeech27TTSMagicFirstPartyAudioUnit____lazy_storage___allValueParams])
  {
    v2 = *&v0[OBJC_IVAR____TtC12TextToSpeech27TTSMagicFirstPartyAudioUnit____lazy_storage___allValueParams];
  }

  else
  {
    v2 = sub_1A9396A68(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1A9396A68(void *a1)
{
  v16 = sub_1A957D578();
  v15 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v25 + 1) = type metadata accessor for TTSMagicFirstPartyAudioUnit();
  *&v24 = a1;
  v4 = a1;
  sub_1A957D558();
  v5 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v14 = v3;
  sub_1A957D568();
  sub_1A957D048();

  sub_1A957D138();
  if (v26)
  {
    v17 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v22 = v24;
      sub_1A93981D4(&v25, &v23);
      sub_1A9391BAC(&v22, v18, &qword_1EB386A00, &qword_1A9587E18);

      sub_1A937829C(&qword_1EB386A08, &qword_1A9587E20);
      if (swift_dynamicCast())
      {
        v7 = *(&v20 + 1);
        v6 = v21;
        sub_1A93780F4(&v19, *(&v20 + 1));
        v8 = (*(v6 + 8))(v7, v6);
        v9 = sub_1A9378138(&v19);
        if (*(v8 + 112) != 1 || (TTSIsInternalBuild(v9, v10) & 1) != 0)
        {
          sub_1A9391BAC(v8 + 72, &v19, &qword_1EB3869E8, &qword_1A9587C80);
          if (!*(&v20 + 1))
          {
            sub_1A937B960(&v19, &qword_1EB3869E8, &qword_1A9587C80);
LABEL_13:

            MEMORY[0x1AC585360](v12);
            if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1A957C4F8();
            }

            sub_1A957C538();

            sub_1A937B960(&v22, &qword_1EB386A00, &qword_1A9587E18);
            v17 = v27;
            goto LABEL_9;
          }

          sub_1A932D070(&v19, v18);
          v11 = sub_1A957B698();
          sub_1A9378138(v18);
          if (v11)
          {
            goto LABEL_13;
          }
        }

        sub_1A937B960(&v22, &qword_1EB386A00, &qword_1A9587E18);
      }

      else
      {
        sub_1A937B960(&v22, &qword_1EB386A00, &qword_1A9587E18);
        v19 = 0u;
        v20 = 0u;
        v21 = 0;
        sub_1A937B960(&v19, &qword_1EB386A10, &qword_1A9587E28);
      }

LABEL_9:
      sub_1A957D138();
      if (!v26)
      {
        goto LABEL_17;
      }
    }
  }

  v17 = v5;
LABEL_17:
  (*(v15 + 8))(v14, v16);

  return v17;
}

uint64_t (*sub_1A9396E14(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A9396A00();
  return sub_1A9396E5C;
}

void sub_1A9396E74()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
  v3 = v2;
  v16 = MEMORY[0x1E69E7CC0];
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_20:
    v5 = sub_1A957CE48();
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  v6 = 0;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1AC585DE0](v7, v3);
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v7 >= *(v4 + 16))
        {
          goto LABEL_19;
        }

        v8 = *(v3 + 8 * v7 + 32);

        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      if ((*(*v8 + 128))())
      {
        break;
      }

      ++v7;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    v9 = *(*v8 + 184);
    v10 = v1;
    v11 = v9(v1);
    (*(*v8 + 152))(v11);

    MEMORY[0x1AC585360](v12);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A957C4F8();
    }

    sub_1A957C538();
  }

  while (v6 != v5);
LABEL_21:

  v13 = objc_opt_self();
  sub_1A9387478(0, &qword_1ED96FCD0, 0x1E698D848);
  v14 = sub_1A957C4B8();

  v15 = [v13 createTreeWithChildren_];

  [v1 setParameterTree_];
}

id TTSMagicFirstPartyAudioUnit.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTSMagicFirstPartyAudioUnit();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A93971E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB3869F8, &qword_1A9587E10);
  v35 = v4;
  result = sub_1A957D118();
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

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
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

uint64_t sub_1A939748C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    do
    {
      sub_1A957D4F8();

      sub_1A957C228();
      v9 = sub_1A957D548();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

id sub_1A939763C()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3869F8, &qword_1A9587E10);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t sub_1A93977B0(char a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[3] = a7;
  v21[4] = a8;
  v15 = sub_1A93981E4(v21);
  (*(*(a7 - 8) + 32))(v15, a3, a7);
  type metadata accessor for AUParamWrapper();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_1A9379534(v21, v16 + 32);
  v17 = *(a8 + 8);
  v18 = a2;
  v17(a7, a8);
  [v18 setValue_];
  v19 = *(a4 + 16);
  *(v16 + 72) = *a4;
  *(v16 + 88) = v19;
  *(v16 + 104) = *(a4 + 32);
  *(v16 + 112) = a5;
  sub_1A9378138(v21);
  return v16;
}

void sub_1A9397904(uint64_t a1, uint64_t a2)
{
  v4 = (*(**v2 + 152))();
  (*(*(a2 + 24) + 8))(*(a2 + 16));
  [v4 setValue_];
}

unint64_t sub_1A93979C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB3869F8, &qword_1A9587E10);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1A937A490(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1A9397ACC()
{
  v1 = sub_1A93979C8(MEMORY[0x1E69E7CC0]);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v45 = i;
    v46 = v3 & 0xFFFFFFFFFFFFFF8;
    v43 = v3;
    v44 = v3 & 0xC000000000000001;
    while (v6)
    {
      v7 = MEMORY[0x1AC585DE0](v5, v3);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_30;
      }

LABEL_12:
      v9 = v7[7];
      v10 = v7[8];
      sub_1A93780F4(v7 + 4, v9);
      v11 = (*(v10 + 8))(v9, v10);
      if (v11 != *sub_1A94623BC())
      {
        v12 = (*(*v7 + 152))();
        v13 = [v12 identifier];

        v14 = sub_1A957C0F8();
        v16 = v15;

        v17 = v7[7];
        v18 = v7[8];
        sub_1A93780F4(v7 + 4, v17);
        v19 = (*(v18 + 8))(v17, v18);
        v20 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v21 = v19;
        v22 = [v20 initWithFloat_];
        if (!v22)
        {
          v32 = sub_1A937A490(v14, v16);
          v34 = v33;

          v6 = v44;
          if (v34)
          {
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_1A939763C();
            }

            sub_1A939748C(v32, v1);
          }

          i = v45;
          goto LABEL_5;
        }

        v23 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = sub_1A937A490(v14, v16);
        v27 = v1[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_32;
        }

        v3 = v26;
        if (v1[3] >= v30)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_24;
          }

          v38 = v25;
          sub_1A939763C();
          v25 = v38;
          if ((v3 & 1) == 0)
          {
            goto LABEL_27;
          }

LABEL_25:
          v35 = v25;

          v36 = v1[7];
          v37 = *(v36 + 8 * v35);
          *(v36 + 8 * v35) = v23;
        }

        else
        {
          sub_1A93971E8(v30, isUniquelyReferenced_nonNull_native);
          v25 = sub_1A937A490(v14, v16);
          if ((v3 & 1) != (v31 & 1))
          {
            result = sub_1A957D438();
            __break(1u);
            return result;
          }

LABEL_24:
          if (v3)
          {
            goto LABEL_25;
          }

LABEL_27:
          v1[(v25 >> 6) + 8] |= 1 << v25;
          v39 = (v1[6] + 16 * v25);
          *v39 = v14;
          v39[1] = v16;
          *(v1[7] + 8 * v25) = v23;

          v40 = v1[2];
          v29 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v29)
          {
            goto LABEL_33;
          }

          v1[2] = v41;
        }

        v3 = v43;
        v6 = v44;
        i = v45;
        goto LABEL_5;
      }

LABEL_5:
      ++v5;
      if (v8 == i)
      {
        goto LABEL_35;
      }
    }

    if (v5 >= *(v46 + 16))
    {
      goto LABEL_31;
    }

    v7 = *(v3 + 8 * v5 + 32);

    v8 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_12;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:

  return v1;
}

uint64_t sub_1A9397FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *initializeBufferWithCopyOfBuffer for VoiceDatabase.Trigger(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for VoiceDatabase.Trigger(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for VoiceDatabase.Trigger(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for VoiceDatabase.Trigger(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for VoiceDatabase.Trigger(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *sub_1A93981D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_1A93981E4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t SpeechSlicer.slices.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SpeechSlicer.init(mutableSpeech:synthesizer:utteranceVoice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[210] = a4;
  v4[209] = a3;
  v4[208] = a2;
  v4[207] = a1;
  v5 = type metadata accessor for SpeechSlicer.Slice(0);
  v4[211] = v5;
  v4[212] = *(v5 - 8);
  v4[213] = swift_task_alloc();
  v6 = sub_1A957B8C8();
  v4[214] = v6;
  v4[215] = *(v6 - 8);
  v4[216] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386A18, &qword_1A9587E40);
  v4[217] = swift_task_alloc();
  v4[218] = swift_task_alloc();
  v4[219] = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  v4[220] = swift_task_alloc();
  v4[221] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386A20, &qword_1A9587E48);
  v4[222] = swift_task_alloc();
  v4[223] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9398498, 0, 0);
}

uint64_t sub_1A9398498()
{
  v1 = v0[210];
  v2 = v0[209];
  v3 = MEMORY[0x1E69E7CC0];
  v0[3] = MEMORY[0x1E69E7CC0];
  v0[4] = v3;
  v4 = MEMORY[0x1E69E7CD0];
  v0[5] = v3;
  v0[6] = v4;
  v0[7] = v3;
  sub_1A93847E0((v0 + 78));
  v0[2] = v2;
  memcpy(v0 + 43, v0 + 78, 0x118uLL);
  v5 = v2;
  sub_1A937B960((v0 + 43), &unk_1EB387BC0, &qword_1A9587E30);
  v6 = memcpy(v0 + 8, v1, 0x118uLL);
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x318))(v6);
  v7 = v0[170];
  sub_1A937B960((v0 + 167), &qword_1EB386A28, &qword_1A9587E50);
  if (v7)
  {
    sub_1A937829C(&qword_1EB386A50, &qword_1A9587E88);
    v8 = *(type metadata accessor for SpeechSlicer.VoiceQuery(0) - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A9587160;
    v11 = (v10 + v9);
    *v11 = 0x746C7561666564;
    v11[1] = 0xE700000000000000;
    swift_storeEnumTagMultiPayload();
    v0[3] = v10;
  }

  v12 = swift_task_alloc();
  v0[224] = v12;
  *v12 = v0;
  v12[1] = sub_1A93986F0;
  v13 = v0[208];

  return TTSMarkupAsyncVisitor.visit(_:)(v13, &type metadata for SpeechSlicer, &protocol witness table for SpeechSlicer);
}

uint64_t sub_1A93986F0()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 1800) = v2;
  *v2 = v4;
  v2[1] = sub_1A939881C;

  return sub_1A9399B8C();
}

uint64_t sub_1A939881C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9398918, 0, 0);
}

void sub_1A9398918()
{
  v1 = 0;
  v51 = (v0 + 1288);
  v49 = (v0 + 1536);
  v2 = *(v0 + 56);
  *(v0 + 1808) = v2;
  v3 = *(v2 + 16);
  for (*(v0 + 1816) = v3; ; v3 = *(v0 + 1816))
  {
    *(v0 + 1824) = MEMORY[0x1E69E7CC0];
    if (v1 == v3)
    {
      v4 = *(v0 + 1776);
      v5 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
      (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
      v6 = *(v0 + 1816);
    }

    else
    {
      if ((v1 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      v7 = *(v0 + 1808);
      if (v1 >= *(v7 + 16))
      {
        goto LABEL_28;
      }

      v8 = *(v0 + 1776);
      v9 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
      v10 = *(v9 - 8);
      sub_1A9391BAC(v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v1, v8, &qword_1EB386A30, &unk_1A9587E60);
      v6 = v1 + 1;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    *(v0 + 1832) = v6;
    v11 = *(v0 + 1784);
    sub_1A93A7460(*(v0 + 1776), v11, &qword_1EB386A20, &qword_1A9587E48);
    v12 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
    {
      break;
    }

    v13 = *(v0 + 1784);
    v14 = *(v0 + 1664);
    v15 = *(v13 + *(v12 + 48));
    sub_1A93A3870(v13, *(v0 + 1768), type metadata accessor for SpeechSlicer.Slice.SliceType);
    v16 = v14[3];
    v17 = v14[4];
    sub_1A93780F4(v14, v16);
    v18 = swift_task_alloc();
    *(v18 + 16) = v15;
    sub_1A94468E0(sub_1A939A474, v18, v16, v17, (v0 + 1416));

    if (*(v0 + 1440))
    {
      v21 = *(v0 + 1760);
      v22 = *(v0 + 1768);
      sub_1A932D070((v0 + 1416), v0 + 1376);
      sub_1A93A5764(v22, v21, type metadata accessor for SpeechSlicer.Slice.SliceType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v24 = *(v0 + 1760);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1A93A5704(*(v0 + 1760), type metadata accessor for SpeechSlicer.Slice.SliceType);
      }

      else
      {
        v25 = *(v0 + 1744);
        v26 = *(v0 + 1736);
        v27 = *(v0 + 1720);
        v28 = *(v0 + 1712);
        memcpy((v0 + 904), *(v0 + 1760), 0x118uLL);
        sub_1A937B48C(v0 + 904);
        v29 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
        sub_1A93A7460(v24 + *(v29 + 64), v25, &qword_1EB386A18, &qword_1A9587E40);
        sub_1A9391BAC(v25, v26, &qword_1EB386A18, &qword_1A9587E40);
        if ((*(v27 + 48))(v26, 1, v28) == 1)
        {
          v30 = *(v0 + 1736);
          sub_1A937B960(*(v0 + 1744), &qword_1EB386A18, &qword_1A9587E40);
          sub_1A937B960(v30, &qword_1EB386A18, &qword_1A9587E40);
        }

        else
        {
          (*(*(v0 + 1720) + 32))(*(v0 + 1728), *(v0 + 1736), *(v0 + 1712));
          sub_1A9379534(v0 + 1376, v0 + 1496);
          sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
          if (swift_dynamicCast())
          {
            v31 = *(v0 + 1320);
            *(v0 + 1256) = *(v0 + 1304);
            *(v0 + 1272) = v31;
            v50 = v0 + 1240;
            *(v0 + 1240) = *v51;
            if (*(v0 + 1272))
            {
              sub_1A9379534(v0 + 1248, v0 + 1616);
              v32 = *(v0 + 1640);
              v33 = *(v0 + 1648);
              sub_1A93780F4((v0 + 1616), v32);
              v34 = v0 + 1536;
              TTSMarkupSpeech.selectionProsody(_:)(v32, v33, v49, v35);
              sub_1A9378138((v0 + 1616));
            }

            else
            {
              v34 = v0 + 1536;
              *(v0 + 1568) = 0;
              *v49 = 0u;
              *(v0 + 1552) = 0u;
            }

            v37 = *(v0 + 1744);
            v38 = *(v0 + 1728);
            v39 = *(v0 + 1720);
            v40 = *(v0 + 1712);
            sub_1A93A38D8(v34, v0 + 1248);
            *(v0 + 1600) = &type metadata for TTSMarkup.SpeechDocument;
            *(v0 + 1608) = &protocol witness table for TTSMarkup.SpeechDocument;
            v41 = swift_allocObject();
            *(v0 + 1576) = v41;
            sub_1A93A3948(v50, v41 + 16);
            (*(v39 + 8))(v38, v40);
            sub_1A937B960(v37, &qword_1EB386A18, &qword_1A9587E40);
            sub_1A9378138((v0 + 1376));
            sub_1A932D070((v0 + 1576), v0 + 1376);
            sub_1A9377B5C(v50);
          }

          else
          {
            v36 = *(v0 + 1744);
            (*(*(v0 + 1720) + 8))(*(v0 + 1728), *(v0 + 1712));
            sub_1A937B960(v36, &qword_1EB386A18, &qword_1A9587E40);
            *v51 = 0u;
            *(v0 + 1304) = 0u;
            *(v0 + 1320) = 0u;
            sub_1A937B960(v51, &qword_1EB386A48, &qword_1A9587E80);
          }
        }

        v42 = *(v0 + 1760);
        v43 = *(v29 + 48);
        v44 = sub_1A957B308();
        (*(*(v44 - 8) + 8))(v42 + v43, v44);
      }

      v45 = *(v0 + 1768);
      v46 = *(v0 + 1704);
      v47 = *(v0 + 1688);
      sub_1A9379534(v0 + 1376, v0 + 1456);
      sub_1A93A5764(v45, v46 + *(v47 + 24), type metadata accessor for SpeechSlicer.Slice.SliceType);
      sub_1A9379534(v0 + 1456, v46 + 16);
      *(v0 + 1184) = 0;
      *(v0 + 1192) = 0xE000000000000000;
      *(v0 + 1200) = 0u;
      *(v0 + 1216) = 0u;
      *(v0 + 1232) = 0;
      v48 = swift_task_alloc();
      *(v0 + 1840) = v48;
      *v48 = v0;
      v48[1] = sub_1A9399128;

      TTSMarkupAsyncVisitor.visit(_:)(v46 + 16, &type metadata for SSMLBreadCrumber, &off_1F1CF1800);
      return;
    }

    sub_1A93A5704(*(v0 + 1768), type metadata accessor for SpeechSlicer.Slice.SliceType);
    sub_1A937B960(v0 + 1416, &qword_1EB3868E8, &unk_1A958F280);
    v1 = *(v0 + 1832);
  }

  v19 = *(v0 + 1656);

  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  memcpy(v19, (v0 + 16), 0x148uLL);

  v20 = *(v0 + 8);

  v20();
}

uint64_t sub_1A9399128()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9399224, 0, 0);
}

uint64_t sub_1A9399224()
{
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1192);

  sub_1A93A150C(v0 + 1184);
  sub_1A9378138((v0 + 1456));
  *v1 = v2;
  v1[1] = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 1824);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_32:
    v5 = sub_1A93A3A50(0, v5[2] + 1, 1, v5, &qword_1EB386AE0, &qword_1A95884F8, type metadata accessor for SpeechSlicer.Slice);
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1A93A3A50((v6 > 1), v7 + 1, 1, v5, &qword_1EB386AE0, &qword_1A95884F8, type metadata accessor for SpeechSlicer.Slice);
  }

  v60 = (v0 + 1288);
  v58 = (v0 + 1536);
  v8 = *(v0 + 1768);
  v9 = *(v0 + 1704);
  v10 = *(v0 + 1696);
  sub_1A9378138((v0 + 1376));
  sub_1A93A5704(v8, type metadata accessor for SpeechSlicer.Slice.SliceType);
  v5[2] = v7 + 1;
  sub_1A93A3870(v9, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7, type metadata accessor for SpeechSlicer.Slice);
  while (1)
  {
    v11 = *(v0 + 1832);
    *(v0 + 1824) = v5;
    if (v11 == *(v0 + 1816))
    {
      v12 = *(v0 + 1776);
      v13 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      v14 = *(v0 + 1816);
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v15 = *(v0 + 1808);
      if (v11 >= *(v15 + 16))
      {
        goto LABEL_31;
      }

      v16 = *(v0 + 1776);
      v17 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
      v18 = *(v17 - 8);
      sub_1A9391BAC(v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v11, v16, &qword_1EB386A30, &unk_1A9587E60);
      v14 = v11 + 1;
      (*(v18 + 56))(v16, 0, 1, v17);
    }

    *(v0 + 1832) = v14;
    v19 = *(v0 + 1784);
    sub_1A93A7460(*(v0 + 1776), v19, &qword_1EB386A20, &qword_1A9587E48);
    v20 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
    if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
    {
      break;
    }

    v21 = *(v0 + 1784);
    v22 = *(v0 + 1664);
    v23 = *(v21 + *(v20 + 48));
    sub_1A93A3870(v21, *(v0 + 1768), type metadata accessor for SpeechSlicer.Slice.SliceType);
    v24 = v22[3];
    v25 = v22[4];
    sub_1A93780F4(v22, v24);
    v26 = swift_task_alloc();
    *(v26 + 16) = v23;
    sub_1A94468E0(sub_1A939A474, v26, v24, v25, (v0 + 1416));

    if (*(v0 + 1440))
    {
      v30 = *(v0 + 1760);
      v31 = *(v0 + 1768);
      sub_1A932D070((v0 + 1416), v0 + 1376);
      sub_1A93A5764(v31, v30, type metadata accessor for SpeechSlicer.Slice.SliceType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = *(v0 + 1760);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1A93A5704(*(v0 + 1760), type metadata accessor for SpeechSlicer.Slice.SliceType);
      }

      else
      {
        v34 = *(v0 + 1744);
        v35 = *(v0 + 1736);
        v36 = *(v0 + 1720);
        v37 = *(v0 + 1712);
        memcpy((v0 + 904), *(v0 + 1760), 0x118uLL);
        sub_1A937B48C(v0 + 904);
        v38 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
        sub_1A93A7460(v33 + *(v38 + 64), v34, &qword_1EB386A18, &qword_1A9587E40);
        sub_1A9391BAC(v34, v35, &qword_1EB386A18, &qword_1A9587E40);
        if ((*(v36 + 48))(v35, 1, v37) == 1)
        {
          v39 = *(v0 + 1736);
          sub_1A937B960(*(v0 + 1744), &qword_1EB386A18, &qword_1A9587E40);
          sub_1A937B960(v39, &qword_1EB386A18, &qword_1A9587E40);
        }

        else
        {
          (*(*(v0 + 1720) + 32))(*(v0 + 1728), *(v0 + 1736), *(v0 + 1712));
          sub_1A9379534(v0 + 1376, v0 + 1496);
          sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
          if (swift_dynamicCast())
          {
            v40 = *(v0 + 1320);
            *(v0 + 1256) = *(v0 + 1304);
            *(v0 + 1272) = v40;
            v59 = v0 + 1240;
            *(v0 + 1240) = *v60;
            if (*(v0 + 1272))
            {
              sub_1A9379534(v0 + 1248, v0 + 1616);
              v41 = *(v0 + 1640);
              v42 = *(v0 + 1648);
              sub_1A93780F4((v0 + 1616), v41);
              v43 = v0 + 1536;
              TTSMarkupSpeech.selectionProsody(_:)(v41, v42, v58, v44);
              sub_1A9378138((v0 + 1616));
            }

            else
            {
              v43 = v0 + 1536;
              *(v0 + 1568) = 0;
              *v58 = 0u;
              *(v0 + 1552) = 0u;
            }

            v46 = *(v0 + 1744);
            v47 = *(v0 + 1728);
            v48 = *(v0 + 1720);
            v49 = *(v0 + 1712);
            sub_1A93A38D8(v43, v0 + 1248);
            *(v0 + 1600) = &type metadata for TTSMarkup.SpeechDocument;
            *(v0 + 1608) = &protocol witness table for TTSMarkup.SpeechDocument;
            v50 = swift_allocObject();
            *(v0 + 1576) = v50;
            sub_1A93A3948(v59, v50 + 16);
            (*(v48 + 8))(v47, v49);
            sub_1A937B960(v46, &qword_1EB386A18, &qword_1A9587E40);
            sub_1A9378138((v0 + 1376));
            sub_1A932D070((v0 + 1576), v0 + 1376);
            sub_1A9377B5C(v59);
          }

          else
          {
            v45 = *(v0 + 1744);
            (*(*(v0 + 1720) + 8))(*(v0 + 1728), *(v0 + 1712));
            sub_1A937B960(v45, &qword_1EB386A18, &qword_1A9587E40);
            *v60 = 0u;
            *(v0 + 1304) = 0u;
            *(v0 + 1320) = 0u;
            sub_1A937B960(v60, &qword_1EB386A48, &qword_1A9587E80);
          }
        }

        v51 = *(v0 + 1760);
        v52 = *(v38 + 48);
        v53 = sub_1A957B308();
        (*(*(v53 - 8) + 8))(v51 + v52, v53);
      }

      v54 = *(v0 + 1768);
      v55 = *(v0 + 1704);
      v56 = *(v0 + 1688);
      sub_1A9379534(v0 + 1376, v0 + 1456);
      sub_1A93A5764(v54, v55 + *(v56 + 24), type metadata accessor for SpeechSlicer.Slice.SliceType);
      sub_1A9379534(v0 + 1456, v55 + 16);
      *(v0 + 1184) = 0;
      *(v0 + 1192) = 0xE000000000000000;
      *(v0 + 1200) = 0u;
      *(v0 + 1216) = 0u;
      *(v0 + 1232) = 0;
      v57 = swift_task_alloc();
      *(v0 + 1840) = v57;
      *v57 = v0;
      v57[1] = sub_1A9399128;

      return TTSMarkupAsyncVisitor.visit(_:)(v55 + 16, &type metadata for SSMLBreadCrumber, &off_1F1CF1800);
    }

    sub_1A93A5704(*(v0 + 1768), type metadata accessor for SpeechSlicer.Slice.SliceType);
    sub_1A937B960(v0 + 1416, &qword_1EB3868E8, &unk_1A958F280);
  }

  v27 = *(v0 + 1656);

  *(v0 + 32) = v5;
  memcpy(v27, (v0 + 16), 0x148uLL);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1A9399B8C()
{
  v1[142] = v0;
  v2 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
  v1[143] = v2;
  v1[144] = *(v2 - 8);
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  v1[147] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9399C90, 0, 0);
}

uint64_t sub_1A9399C90()
{
  v1 = v0[142];
  v2 = *(v1 + 32);
  v0[148] = v2;
  if (*(v2 + 16))
  {
    v3 = *(v1 + 24);
    v4 = *v1;
    v5 = MEMORY[0x1E69E7D40];
    v6 = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x300))();
    v0[149] = v6;
    v7 = (*((*v5 & *v4) + 0x198))();
    v0[150] = v7;
    memcpy(v0 + 37, (v1 + 48), 0x118uLL);
    memcpy(v0 + 72, (v1 + 48), 0x118uLL);
    sub_1A9391BAC((v0 + 37), (v0 + 107), &unk_1EB387BC0, &qword_1A9587E30);
    v8 = swift_task_alloc();
    v0[151] = v8;
    *v8 = v0;
    v8[1] = sub_1A9399E80;
    v9 = v0[147];

    return sub_1A939BE6C(v9, v6, v7, v0 + 72, v3);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1A9399E80()
{
  v1 = *v0;

  memcpy((v1 + 16), (v1 + 576), 0x118uLL);
  sub_1A937B960(v1 + 16, &unk_1EB387BC0, &qword_1A9587E30);

  return MEMORY[0x1EEE6DFA0](sub_1A9399FE4, 0, 0);
}

uint64_t sub_1A9399FE4()
{
  v1 = v0[142];
  v2 = *(v1 + 40);
  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v0[147];
  v5 = v0[146];
  sub_1A9391BAC(v2 + ((*(v0[144] + 80) + 32) & ~*(v0[144] + 80)) + *(v0[144] + 72) * (v3 - 1), v5, &qword_1EB386A30, &unk_1A9587E60);
  if ((_s12TextToSpeech0C6SlicerV5SliceV0E4TypeO2eeoiySbAG_AGtFZ_0(v5, v4) & 1) == 0)
  {
    sub_1A937B960(v0[146], &qword_1EB386A30, &unk_1A9587E60);
LABEL_8:
    v10 = v0[148];
    v11 = v0[145];
    v12 = *(v0[143] + 48);
    sub_1A93A5764(v0[147], v11, type metadata accessor for SpeechSlicer.Slice.SliceType);
    *(v11 + v12) = v10;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93A3680(0, v2[2] + 1, 1, v2);
    }

    v14 = v2[2];
    v13 = v2[3];
    if (v14 >= v13 >> 1)
    {
      v2 = sub_1A93A3680((v13 > 1), v14 + 1, 1, v2);
    }

    v15 = v0[145];
    v16 = v0[144];
    sub_1A93A5704(v0[147], type metadata accessor for SpeechSlicer.Slice.SliceType);
    v2[2] = v14 + 1;
    sub_1A93A7460(v15, v2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, &qword_1EB386A30, &unk_1A9587E60);
    goto LABEL_13;
  }

  v6 = v2[2];

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = sub_1A93A56A4(v2);
  v2 = result;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_5:
  if (v6 > v2[2])
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v8 = v0[147];
  v9 = v0[146];
  sub_1A939EF64(v0[148]);
  sub_1A937B960(v9, &qword_1EB386A30, &unk_1A9587E60);
  sub_1A93A5704(v8, type metadata accessor for SpeechSlicer.Slice.SliceType);
LABEL_13:
  v17 = v0[142];
  *(v1 + 40) = v2;

  *(v17 + 32) = MEMORY[0x1E69E7CD0];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A939A298(void *a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386A58, &unk_1A9587E90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1A957B0B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  sub_1A93780F4(a1, v11);
  KeyPath = swift_getKeyPath();
  TTSMarkupSpeech.subscript.getter(KeyPath, v11, *(v12 + 8));

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1A937B960(v6, &qword_1EB386A58, &unk_1A9587E90);
    v14 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v14 = sub_1A939A838(v10, a2);
    (*(v8 + 8))(v10, v7);
  }

  return v14 & 1;
}

uint64_t sub_1A939A51C(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB386A58, &unk_1A9587E90);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  sub_1A9391BAC(a1, &v10 - v6, &qword_1EB386A58, &unk_1A9587E90);
  sub_1A9391BAC(v7, v5, &qword_1EB386A58, &unk_1A9587E90);
  v8 = sub_1A93A39FC();
  SpeechContext.subscript.setter(v5, &type metadata for IdentifierContextKey, &type metadata for IdentifierContextKey, v8);
  return sub_1A937B960(v7, &qword_1EB386A58, &unk_1A9587E90);
}

uint64_t sub_1A939A620(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A957B188();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]), v7 = sub_1A957C058(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1A93A7604(&qword_1EB386490, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v15 = sub_1A957C098();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1A939A838(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A957B0B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1A93A7604(&qword_1ED96FE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v7 = sub_1A957C058(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1A93A7604(&qword_1EB386AB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1A957C098();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1A939AA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A939AA74, 0, 0);
}

uint64_t sub_1A939AA74()
{
  v1 = *(v0 + 72);
  sub_1A9379534(*(v0 + 80), v1 + 16);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1A939AB44;

  return TTSMarkupAsyncVisitor.visit(_:)(v1 + 16, &type metadata for SSMLBreadCrumber, &off_1F1CF1800);
}

uint64_t sub_1A939AB44()
{

  return MEMORY[0x1EEE6DFA0](sub_1A939AC40, 0, 0);
}

uint64_t sub_1A939AC40()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = v0[3];

  sub_1A93A150C((v0 + 2));
  sub_1A9378138(v1);
  *v3 = v4;
  v3[1] = v5;
  v6 = type metadata accessor for SpeechSlicer.Slice(0);
  sub_1A93A3870(v2, v3 + *(v6 + 24), type metadata accessor for SpeechSlicer.Slice.SliceType);
  v7 = v0[1];

  return v7();
}

uint64_t SpeechSlicer.visit(_:)(uint64_t a1)
{
  v2[178] = v1;
  v2[177] = a1;
  v3 = type metadata accessor for SpeechSlicer.VoiceQuery(0);
  v2[179] = v3;
  v2[180] = *(v3 - 8);
  v2[181] = swift_task_alloc();
  v2[182] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A939ADD4, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SpeechSlicer.VoiceQuery(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A939BA98, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  v2[8] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386A58, &unk_1A9587E90);
  v2[9] = swift_task_alloc();
  v4 = sub_1A957B0B8();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A939F8AC, 0, 0);
}

uint64_t sub_1A939ADD4()
{
  v1 = *(v0 + 1416);
  v2 = v1[11];
  if (v2)
  {
    v3 = *(v0 + 1456);
    v4 = *(v0 + 1424);
    *v3 = v1[10];
    v3[1] = v2;
    swift_storeEnumTagMultiPayload();
    v5 = *(v4 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1A93A3A50(0, v5[2] + 1, 1, v5, &qword_1EB386A50, &qword_1A9587E88, type metadata accessor for SpeechSlicer.VoiceQuery);
    }

    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1A93A3A50((v6 > 1), v7 + 1, 1, v5, &qword_1EB386A50, &qword_1A9587E88, type metadata accessor for SpeechSlicer.VoiceQuery);
    }

    v8 = *(v0 + 1456);
    v9 = *(v0 + 1440);
    v5[2] = v7 + 1;
    v10 = *(v9 + 80);
    *(v0 + 1520) = v10;
    v11 = *(v9 + 72);
    *(v0 + 1464) = v11;
    sub_1A93A3870(v8, v5 + ((v10 + 32) & ~v10) + v11 * v7, type metadata accessor for SpeechSlicer.VoiceQuery);
    *(v4 + 8) = v5;
    v12 = swift_task_alloc();
    *(v0 + 1472) = v12;
    *v12 = v0;
    v12[1] = sub_1A939B128;
    v13 = *(v0 + 1416);

    return TTSMarkupAsyncVisitor.visitContainer<A>(_:)(v13, &type metadata for SpeechSlicer, &type metadata for TTSMarkup.Voice, &protocol witness table for SpeechSlicer, &protocol witness table for TTSMarkup.Voice);
  }

  else
  {
    v15 = (*((*MEMORY[0x1E69E7D40] & ***(v0 + 1424)) + 0x198))();
    *(v0 + 1480) = v15;
    v16 = v1[1];
    v17 = v1[2];
    v19 = (*(*v15 + 360) + **(*v15 + 360));
    v18 = swift_task_alloc();
    *(v0 + 1488) = v18;
    *v18 = v0;
    v18[1] = sub_1A939B318;

    return v19(v0 + 576, v16, v17);
  }
}

uint64_t sub_1A939B128()
{

  return MEMORY[0x1EEE6DFA0](sub_1A939B224, 0, 0);
}

uint64_t sub_1A939B224()
{
  v1 = *(*(v0 + 1424) + 8);
  if (!v1[2])
  {
    __break(1u);
LABEL_8:
    result = sub_1A93A56B8(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = v1[2];
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_4:
  v4 = *(v0 + 1424);
  v5 = v3 - 1;
  sub_1A93A5704(v1 + ((*(v0 + 1520) + 32) & ~*(v0 + 1520)) + *(v0 + 1464) * (v3 - 1), type metadata accessor for SpeechSlicer.VoiceQuery);
  v1[2] = v5;
  *(v4 + 8) = v1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A939B318()
{

  return MEMORY[0x1EEE6DFA0](sub_1A939B430, 0, 0);
}

uint64_t sub_1A939B430()
{
  memcpy((v0 + 296), (v0 + 576), 0x118uLL);
  memcpy((v0 + 16), (v0 + 576), 0x118uLL);
  if (sub_1A932D058(v0 + 16) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 1512) = v1;
    *v1 = v0;
    v2 = sub_1A939B8AC;
  }

  else
  {
    v3 = *(v0 + 1424);
    memcpy(*(v0 + 1448), (v0 + 16), 0x118uLL);
    swift_storeEnumTagMultiPayload();
    v4 = *(v3 + 8);
    memcpy((v0 + 856), (v0 + 296), 0x118uLL);
    sub_1A937B3DC(v0 + 856, v0 + 1136);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1A93A3A50(0, v4[2] + 1, 1, v4, &qword_1EB386A50, &qword_1A9587E88, type metadata accessor for SpeechSlicer.VoiceQuery);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1A93A3A50((v5 > 1), v6 + 1, 1, v4, &qword_1EB386A50, &qword_1A9587E88, type metadata accessor for SpeechSlicer.VoiceQuery);
    }

    v7 = *(v0 + 1448);
    v8 = *(v0 + 1440);
    v4[2] = v6 + 1;
    v9 = *(v8 + 80);
    *(v0 + 1524) = v9;
    v10 = *(v8 + 72);
    *(v0 + 1496) = v10;
    sub_1A93A3870(v7, v4 + ((v9 + 32) & ~v9) + v10 * v6, type metadata accessor for SpeechSlicer.VoiceQuery);
    *(v3 + 8) = v4;
    v1 = swift_task_alloc();
    *(v0 + 1504) = v1;
    *v1 = v0;
    v2 = sub_1A939B6A4;
  }

  v1[1] = v2;
  v11 = *(v0 + 1416);

  return TTSMarkupAsyncVisitor.visitContainer<A>(_:)(v11, &type metadata for SpeechSlicer, &type metadata for TTSMarkup.Voice, &protocol witness table for SpeechSlicer, &protocol witness table for TTSMarkup.Voice);
}

uint64_t sub_1A939B6A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A939B7A0, 0, 0);
}

uint64_t sub_1A939B7A0()
{
  v1 = *(*(v0 + 1424) + 8);
  if (!v1[2])
  {
    __break(1u);
LABEL_8:
    result = sub_1A93A56B8(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = v1[2];
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_4:
  v4 = *(v0 + 1424);
  v5 = v3 - 1;
  sub_1A93A5704(v1 + ((*(v0 + 1524) + 32) & ~*(v0 + 1524)) + *(v0 + 1496) * (v3 - 1), type metadata accessor for SpeechSlicer.VoiceQuery);
  v1[2] = v5;
  sub_1A937B960(v0 + 296, &unk_1EB387BC0, &qword_1A9587E30);
  *(v4 + 8) = v1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A939B8AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A939BA98()
{
  v1 = *(v0 + 24);

  sub_1A957B1B8();
  swift_storeEnumTagMultiPayload();
  v2 = *(v1 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A93A3A50(0, v2[2] + 1, 1, v2, &qword_1EB386A50, &qword_1A9587E88, type metadata accessor for SpeechSlicer.VoiceQuery);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1A93A3A50((v3 > 1), v4 + 1, 1, v2, &qword_1EB386A50, &qword_1A9587E88, type metadata accessor for SpeechSlicer.VoiceQuery);
  }

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v2[2] = v4 + 1;
  v7 = *(v6 + 80);
  *(v0 + 72) = v7;
  v8 = *(v6 + 72);
  *(v0 + 56) = v8;
  sub_1A93A3870(v5, v2 + ((v7 + 32) & ~v7) + v8 * v4, type metadata accessor for SpeechSlicer.VoiceQuery);
  *(v1 + 8) = v2;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_1A939BC88;
  v10 = *(v0 + 16);

  return TTSMarkupAsyncVisitor.visitContainer<A>(_:)(v10, &type metadata for SpeechSlicer, &type metadata for TTSMarkup.Language, &protocol witness table for SpeechSlicer, &protocol witness table for TTSMarkup.Language);
}

uint64_t sub_1A939BC88()
{

  return MEMORY[0x1EEE6DFA0](sub_1A939BD84, 0, 0);
}

uint64_t sub_1A939BD84()
{
  v1 = *(*(v0 + 24) + 8);
  if (!v1[2])
  {
    __break(1u);
LABEL_8:
    result = sub_1A93A56B8(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = v1[2];
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_4:
  v4 = *(v0 + 24);
  v5 = v3 - 1;
  sub_1A93A5704(v1 + ((*(v0 + 72) + 32) & ~*(v0 + 72)) + *(v0 + 56) * (v3 - 1), type metadata accessor for SpeechSlicer.VoiceQuery);
  v1[2] = v5;
  *(v4 + 8) = v1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A939BE6C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v5[810] = a5;
  v5[809] = a3;
  v5[808] = a2;
  v5[807] = a1;
  v7 = sub_1A957B308();
  v5[811] = v7;
  v5[812] = *(v7 - 8);
  v5[813] = swift_task_alloc();
  v5[814] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386A18, &qword_1A9587E40);
  v5[815] = swift_task_alloc();
  v8 = sub_1A957B8C8();
  v5[816] = v8;
  v5[817] = *(v8 - 8);
  v5[818] = swift_task_alloc();
  v9 = type metadata accessor for SpeechSlicer.VoiceQuery(0);
  v5[819] = v9;
  v5[820] = *(v9 - 8);
  v5[821] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v5[822] = swift_task_alloc();
  v5[823] = swift_task_alloc();
  v5[824] = swift_task_alloc();
  v5[825] = swift_task_alloc();
  memcpy(v5 + 2, a4, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A939C0A4, 0, 0);
}

uint64_t sub_1A939C0A4()
{
  v84 = v0;
  v1 = *(v0 + 6480);
  v79 = *(*(v0 + 6496) + 56);
  v79(*(v0 + 6600), 1, 1, *(v0 + 6488));
  v2 = *(v1 + 16);
  if (!v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v3 = 0;
  v78 = *(v0 + 6568);
  v4 = *(v0 + 6560);
  v5 = *(v4 + 72);
  v6 = (*(v0 + 6496) + 32);
  v7 = -v2;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = *(v0 + 6480) + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v76 = v9;
  while (2)
  {
    v80 = 0;
    v10 = 0;
    v77 = v8;
    *(v0 + 6608) = v8;
    v11 = v9 + v5 * v3++;
    while (1)
    {
      sub_1A93A5764(v11, *(v0 + 6568), type metadata accessor for SpeechSlicer.VoiceQuery);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      v12 = *(v0 + 6600);
      v13 = *(v0 + 6568);
      v14 = *(v0 + 6488);
      sub_1A937B960(v12, &qword_1EB386988, &qword_1A9587830);
      (*v6)(v12, v13, v14);
      v79(v12, 0, 1, v14);
LABEL_5:
      ++v3;
      v11 += v5;
      if (v7 + v3 == 1)
      {
        if (!v10)
        {
          v8 = v77;
          goto LABEL_24;
        }

        v8 = v77;
        if (!*(*(v0 + 6464) + 16))
        {

          goto LABEL_24;
        }

        v23 = sub_1A937A490(v80, v10);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          goto LABEL_24;
        }

        v26 = *(*(*(v0 + 6464) + 56) + 8 * v23);
        *(v0 + 6616) = v26;

        v27 = swift_task_alloc();
        *(v0 + 6624) = v27;
        *v27 = v0;
        v27[1] = sub_1A939CC48;
        v28 = *(v0 + 6600);
        v29 = *(v0 + 6520);

        return sub_1A940E980(v29, v28, v26);
      }
    }

    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(v0 + 6568);

      v80 = *v16;
      v10 = *(v78 + 8);
      goto LABEL_5;
    }

    v17 = *(v0 + 6568);

    memcpy(__dst, v17, sizeof(__dst));
    v18 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1A93A3558(0, *(v77 + 16) + 1, 1, v77);
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    v21 = v18;
    if (v20 >= v19 >> 1)
    {
      v21 = sub_1A93A3558((v19 > 1), v20 + 1, 1, v18);
    }

    *(v21 + 2) = v20 + 1;
    v22 = &v21[280 * v20];
    v8 = v21;
    memcpy(v22 + 32, __dst, 0x118uLL);
    v9 = v76;
    if (v7 + v3)
    {
      continue;
    }

    break;
  }

LABEL_24:
  *(v0 + 6664) = v8;
  v31 = *(v0 + 6584);
  v32 = *(v0 + 6496);
  v33 = *(v0 + 6488);
  sub_1A9391BAC(*(v0 + 6600), v31, &qword_1EB386988, &qword_1A9587830);
  v34 = *(v32 + 48);
  *(v0 + 6672) = v34;
  *(v0 + 6680) = (v32 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v34(v31, 1, v33) == 1)
  {
    sub_1A937B960(*(v0 + 6584), &qword_1EB386988, &qword_1A9587830);
    v35 = *(v0 + 6664);
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = *(v0 + 6600);
      v38 = *(v0 + 6536);
      v39 = *(v0 + 6528);
      v40 = *(v0 + 6456);
      memcpy((v0 + 296), (v35 + 280 * v36 - 248), 0x118uLL);
      sub_1A937B3DC(v0 + 296, v0 + 576);

      v41 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
      v42 = *(v41 + 48);
      v43 = *(v41 + 64);
      memcpy(v40, (v0 + 296), 0x118uLL);
      memcpy(__dst, (v0 + 296), sizeof(__dst));
      sub_1A937B3DC(v0 + 296, v0 + 856);
      CoreSynthesizer.Voice.primaryLocale.getter(&v40[v42]);
      sub_1A937B960(v37, &qword_1EB386988, &qword_1A9587830);
      sub_1A937B48C(v0 + 296);
      (*(v38 + 56))(&v40[v43], 1, 1, v39);
      type metadata accessor for SpeechSlicer.Slice.SliceType(0);
      goto LABEL_46;
    }

    memcpy((v0 + 1136), (v0 + 16), 0x118uLL);
    if (sub_1A932D058(v0 + 1136) == 1)
    {
      v81 = (*(**(v0 + 6472) + 200) + **(**(v0 + 6472) + 200));
      v56 = swift_task_alloc();
      *(v0 + 6696) = v56;
      *v56 = v0;
      v56[1] = sub_1A939EA9C;
      v57 = *(v0 + 6504);

      return v81(v57);
    }

    v58 = *(v0 + 6672);
    v59 = *(v0 + 6600);
    v60 = *(v0 + 6576);
    v61 = *(v0 + 6488);
    v62 = *(v0 + 6456);
    memcpy((v0 + 1976), (v0 + 16), 0x118uLL);
    sub_1A937B3DC(v0 + 1976, v0 + 2256);

    v63 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v64 = *(v63 + 48);
    memcpy(v62, (v0 + 1136), 0x118uLL);
    sub_1A9391BAC(v59, v60, &qword_1EB386988, &qword_1A9587830);
    if (v58(v60, 1, v61) == 1)
    {
      v65 = *(v0 + 6672);
      v66 = *(v0 + 6600);
      v67 = *(v0 + 6576);
      v68 = *(v0 + 6488);
      memcpy(__dst, (v0 + 1136), sizeof(__dst));
      memcpy((v0 + 2536), (v0 + 16), 0x118uLL);
      sub_1A937B3DC(v0 + 2536, v0 + 2816);
      CoreSynthesizer.Voice.primaryLocale.getter(&v62[v64]);
      sub_1A937B960(v66, &qword_1EB386988, &qword_1A9587830);
      sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
      if (v65(v67, 1, v68) != 1)
      {
        sub_1A937B960(*(v0 + 6576), &qword_1EB386988, &qword_1A9587830);
      }
    }

    else
    {
      v72 = *(v0 + 6576);
      v73 = *(v0 + 6496);
      v74 = *(v0 + 6488);
      sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);
      (*(v73 + 32))(&v62[v64], v72, v74);
    }

    (*(*(v0 + 6536) + 56))(*(v0 + 6456) + *(v63 + 64), 1, 1, *(v0 + 6528));
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
LABEL_46:
    swift_storeEnumTagMultiPayload();
LABEL_47:

    v75 = *(v0 + 8);

    return v75();
  }

  v44 = *(v0 + 6512);
  (*(*(v0 + 6496) + 32))(v44, *(v0 + 6584), *(v0 + 6488));
  *(swift_task_alloc() + 16) = v44;
  sub_1A93A2E00(sub_1A93A57CC, v8, (v0 + 3376));

  memcpy((v0 + 3096), (v0 + 3376), 0x118uLL);
  if (sub_1A932D058(v0 + 3096) != 1)
  {
    v45 = *(v0 + 6536);
    v46 = *(v0 + 6528);
    v47 = *(v0 + 6512);
    v48 = *(v0 + 6496);
    v49 = *(v0 + 6488);
    v50 = *(v0 + 6456);
    sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

    v55 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v52 = *(v55 + 48);
    v53 = *(v55 + 64);
    v54 = (v0 + 3096);
    goto LABEL_32;
  }

  memcpy((v0 + 3656), (v0 + 16), 0x118uLL);
  if (sub_1A932D058(v0 + 3656) != 1)
  {
    memcpy(__dst, (v0 + 3656), sizeof(__dst));
    memcpy((v0 + 4496), (v0 + 16), 0x118uLL);
    sub_1A937B3DC(v0 + 4496, v0 + 4776);
    if (CoreSynthesizer.Voice.speaksLanguage(locale:)())
    {
      v45 = *(v0 + 6536);
      v46 = *(v0 + 6528);
      v47 = *(v0 + 6512);
      v48 = *(v0 + 6496);
      v49 = *(v0 + 6488);
      v50 = *(v0 + 6456);
      sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

      v51 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
      v52 = *(v51 + 48);
      v53 = *(v51 + 64);
      v54 = (v0 + 3656);
LABEL_32:
      memcpy(v50, v54, 0x118uLL);
      (*(v48 + 16))(&v50[v52], v47, v49);
      (*(v45 + 56))(&v50[v53], 1, 1, v46);
      type metadata accessor for SpeechSlicer.Slice.SliceType(0);
      swift_storeEnumTagMultiPayload();
      (*(v48 + 8))(v47, v49);
      goto LABEL_47;
    }

    sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
  }

  v69 = *(**(v0 + 6472) + 416);
  v82 = (v69 + *v69);
  v70 = swift_task_alloc();
  *(v0 + 6688) = v70;
  *v70 = v0;
  v70[1] = sub_1A939E3B8;
  v71 = *(v0 + 6512);

  return v82(v0 + 4216, v71);
}

uint64_t sub_1A939CC48()
{

  return MEMORY[0x1EEE6DFA0](sub_1A939CD60, 0, 0);
}

uint64_t sub_1A939CD60()
{
  v63 = v0;
  v1 = *(v0 + 6536);
  v2 = *(v0 + 6528);
  v3 = *(v0 + 6520);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1A937B960(v3, &qword_1EB386A18, &qword_1A9587E40);
  }

  else
  {
    v4 = *(v0 + 6544);
    v5 = *(v1 + 32);
    *(v0 + 6632) = v5;
    *(v0 + 6640) = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v5(v4, v3, v2);
    v6 = sub_1A957B8B8();
    *(v0 + 6648) = v7;
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      v10 = *(**(v0 + 6472) + 360);
      v59 = (v10 + *v10);
      v11 = swift_task_alloc();
      *(v0 + 6656) = v11;
      *v11 = v0;
      v11[1] = sub_1A939D7CC;

      return v59(v0 + 5616, v8, v9);
    }

    (*(*(v0 + 6536) + 8))(*(v0 + 6544), *(v0 + 6528));
  }

  v13 = *(v0 + 6608);
  *(v0 + 6664) = v13;
  v14 = *(v0 + 6584);
  v15 = *(v0 + 6496);
  v16 = *(v0 + 6488);
  sub_1A9391BAC(*(v0 + 6600), v14, &qword_1EB386988, &qword_1A9587830);
  v17 = *(v15 + 48);
  *(v0 + 6672) = v17;
  *(v0 + 6680) = (v15 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v17(v14, 1, v16) != 1)
  {
    v27 = *(v0 + 6512);
    (*(*(v0 + 6496) + 32))(v27, *(v0 + 6584), *(v0 + 6488));
    *(swift_task_alloc() + 16) = v27;
    sub_1A93A2E00(sub_1A93A57CC, v13, (v0 + 3376));

    memcpy((v0 + 3096), (v0 + 3376), 0x118uLL);
    if (sub_1A932D058(v0 + 3096) == 1)
    {
      memcpy((v0 + 3656), (v0 + 16), 0x118uLL);
      if (sub_1A932D058(v0 + 3656) != 1)
      {
        memcpy(__dst, (v0 + 3656), sizeof(__dst));
        memcpy((v0 + 4496), (v0 + 16), 0x118uLL);
        sub_1A937B3DC(v0 + 4496, v0 + 4776);
        if (CoreSynthesizer.Voice.speaksLanguage(locale:)())
        {
          v28 = *(v0 + 6536);
          v29 = *(v0 + 6528);
          v30 = *(v0 + 6512);
          v31 = *(v0 + 6496);
          v32 = *(v0 + 6488);
          v33 = *(v0 + 6456);
          sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

          v34 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
          v35 = *(v34 + 48);
          v36 = *(v34 + 64);
          v37 = (v0 + 3656);
LABEL_16:
          memcpy(v33, v37, 0x118uLL);
          (*(v31 + 16))(&v33[v35], v30, v32);
          (*(v28 + 56))(&v33[v36], 1, 1, v29);
          type metadata accessor for SpeechSlicer.Slice.SliceType(0);
          swift_storeEnumTagMultiPayload();
          (*(v31 + 8))(v30, v32);
LABEL_31:

          v58 = *(v0 + 8);

          return v58();
        }

        sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
      }

      v52 = *(**(v0 + 6472) + 416);
      v61 = (v52 + *v52);
      v53 = swift_task_alloc();
      *(v0 + 6688) = v53;
      *v53 = v0;
      v53[1] = sub_1A939E3B8;
      v54 = *(v0 + 6512);

      return v61(v0 + 4216, v54);
    }

    v28 = *(v0 + 6536);
    v29 = *(v0 + 6528);
    v30 = *(v0 + 6512);
    v31 = *(v0 + 6496);
    v32 = *(v0 + 6488);
    v33 = *(v0 + 6456);
    sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

    v38 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v35 = *(v38 + 48);
    v36 = *(v38 + 64);
    v37 = (v0 + 3096);
    goto LABEL_16;
  }

  sub_1A937B960(*(v0 + 6584), &qword_1EB386988, &qword_1A9587830);
  v18 = *(v0 + 6664);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v0 + 6600);
    v21 = *(v0 + 6536);
    v22 = *(v0 + 6528);
    v23 = *(v0 + 6456);
    memcpy((v0 + 296), (v18 + 280 * v19 - 248), 0x118uLL);
    sub_1A937B3DC(v0 + 296, v0 + 576);

    v24 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v25 = *(v24 + 48);
    v26 = *(v24 + 64);
    memcpy(v23, (v0 + 296), 0x118uLL);
    memcpy(__dst, (v0 + 296), sizeof(__dst));
    sub_1A937B3DC(v0 + 296, v0 + 856);
    CoreSynthesizer.Voice.primaryLocale.getter(&v23[v25]);
    sub_1A937B960(v20, &qword_1EB386988, &qword_1A9587830);
    sub_1A937B48C(v0 + 296);
    (*(v21 + 56))(&v23[v26], 1, 1, v22);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
LABEL_30:
    swift_storeEnumTagMultiPayload();
    goto LABEL_31;
  }

  memcpy((v0 + 1136), (v0 + 16), 0x118uLL);
  if (sub_1A932D058(v0 + 1136) != 1)
  {
    v41 = *(v0 + 6672);
    v42 = *(v0 + 6600);
    v43 = *(v0 + 6576);
    v44 = *(v0 + 6488);
    v45 = *(v0 + 6456);
    memcpy((v0 + 1976), (v0 + 16), 0x118uLL);
    sub_1A937B3DC(v0 + 1976, v0 + 2256);

    v46 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v47 = *(v46 + 48);
    memcpy(v45, (v0 + 1136), 0x118uLL);
    sub_1A9391BAC(v42, v43, &qword_1EB386988, &qword_1A9587830);
    if (v41(v43, 1, v44) == 1)
    {
      v48 = *(v0 + 6672);
      v49 = *(v0 + 6600);
      v50 = *(v0 + 6576);
      v51 = *(v0 + 6488);
      memcpy(__dst, (v0 + 1136), sizeof(__dst));
      memcpy((v0 + 2536), (v0 + 16), 0x118uLL);
      sub_1A937B3DC(v0 + 2536, v0 + 2816);
      CoreSynthesizer.Voice.primaryLocale.getter(&v45[v47]);
      sub_1A937B960(v49, &qword_1EB386988, &qword_1A9587830);
      sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
      if (v48(v50, 1, v51) != 1)
      {
        sub_1A937B960(*(v0 + 6576), &qword_1EB386988, &qword_1A9587830);
      }
    }

    else
    {
      v55 = *(v0 + 6576);
      v56 = *(v0 + 6496);
      v57 = *(v0 + 6488);
      sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);
      (*(v56 + 32))(&v45[v47], v55, v57);
    }

    (*(*(v0 + 6536) + 56))(*(v0 + 6456) + *(v46 + 64), 1, 1, *(v0 + 6528));
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    goto LABEL_30;
  }

  v60 = (*(**(v0 + 6472) + 200) + **(**(v0 + 6472) + 200));
  v39 = swift_task_alloc();
  *(v0 + 6696) = v39;
  *v39 = v0;
  v39[1] = sub_1A939EA9C;
  v40 = *(v0 + 6504);

  return v60(v40);
}

uint64_t sub_1A939D7CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A939D8E4, 0, 0);
}

uint64_t sub_1A939D8E4()
{
  v69 = v0;
  memcpy((v0 + 5336), (v0 + 5616), 0x118uLL);
  memcpy((v0 + 5056), (v0 + 5616), 0x118uLL);
  if (sub_1A932D058(v0 + 5056) != 1)
  {
    v15 = *(v0 + 6600);
    v16 = *(v0 + 6592);
    v17 = *(v0 + 6496);
    v18 = *(v0 + 6488);
    v19 = *(v0 + 6456);

    v20 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v21 = *(v20 + 48);
    memcpy(v19, (v0 + 5056), 0x118uLL);
    sub_1A9391BAC(v15, v16, &qword_1EB386988, &qword_1A9587830);
    v22 = *(v17 + 48);
    v23 = v22(v16, 1, v18);
    v24 = *(v0 + 6600);
    v25 = *(v0 + 6592);
    if (v23 == 1)
    {
      v65 = *(v0 + 6488);
      memcpy(__dst, (v0 + 5056), sizeof(__dst));
      memcpy((v0 + 5896), (v0 + 5336), 0x118uLL);
      sub_1A937B3DC(v0 + 5896, v0 + 6176);
      CoreSynthesizer.Voice.primaryLocale.getter(&v19[v21]);
      sub_1A937B960(v24, &qword_1EB386988, &qword_1A9587830);
      sub_1A937B960(v0 + 5336, &unk_1EB387BC0, &qword_1A9587E30);
      if (v22(v25, 1, v65) != 1)
      {
        sub_1A937B960(*(v0 + 6592), &qword_1EB386988, &qword_1A9587830);
      }
    }

    else
    {
      v37 = *(v0 + 6496);
      v38 = *(v0 + 6488);
      sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);
      (*(v37 + 32))(&v19[v21], v25, v38);
    }

    v39 = *(v0 + 6536);
    v40 = *(v0 + 6528);
    v41 = *(v0 + 6456);
    v42 = *(v20 + 64);
    (*(v0 + 6632))(v41 + v42, *(v0 + 6544), v40);
    (*(v39 + 56))(v41 + v42, 0, 1, v40);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    goto LABEL_14;
  }

  (*(*(v0 + 6536) + 8))(*(v0 + 6544), *(v0 + 6528));
  v1 = *(v0 + 6608);
  *(v0 + 6664) = v1;
  v2 = *(v0 + 6584);
  v3 = *(v0 + 6496);
  v4 = *(v0 + 6488);
  sub_1A9391BAC(*(v0 + 6600), v2, &qword_1EB386988, &qword_1A9587830);
  v5 = *(v3 + 48);
  *(v0 + 6672) = v5;
  *(v0 + 6680) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v2, 1, v4) != 1)
  {
    v26 = *(v0 + 6512);
    (*(*(v0 + 6496) + 32))(v26, *(v0 + 6584), *(v0 + 6488));
    *(swift_task_alloc() + 16) = v26;
    sub_1A93A2E00(sub_1A93A57CC, v1, (v0 + 3376));

    memcpy((v0 + 3096), (v0 + 3376), 0x118uLL);
    if (sub_1A932D058(v0 + 3096) == 1)
    {
      memcpy((v0 + 3656), (v0 + 16), 0x118uLL);
      if (sub_1A932D058(v0 + 3656) != 1)
      {
        memcpy(__dst, (v0 + 3656), sizeof(__dst));
        memcpy((v0 + 4496), (v0 + 16), 0x118uLL);
        sub_1A937B3DC(v0 + 4496, v0 + 4776);
        if (CoreSynthesizer.Voice.speaksLanguage(locale:)())
        {
          v27 = *(v0 + 6536);
          v28 = *(v0 + 6528);
          v29 = *(v0 + 6512);
          v30 = *(v0 + 6496);
          v31 = *(v0 + 6488);
          v32 = *(v0 + 6456);
          sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

          v33 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
          v34 = *(v33 + 48);
          v35 = *(v33 + 64);
          v36 = (v0 + 3656);
LABEL_19:
          memcpy(v32, v36, 0x118uLL);
          (*(v30 + 16))(&v32[v34], v29, v31);
          (*(v27 + 56))(&v32[v35], 1, 1, v28);
          type metadata accessor for SpeechSlicer.Slice.SliceType(0);
          swift_storeEnumTagMultiPayload();
          (*(v30 + 8))(v29, v31);
          goto LABEL_15;
        }

        sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
      }

      v59 = *(**(v0 + 6472) + 416);
      v67 = (v59 + *v59);
      v60 = swift_task_alloc();
      *(v0 + 6688) = v60;
      *v60 = v0;
      v60[1] = sub_1A939E3B8;
      v61 = *(v0 + 6512);

      return v67(v0 + 4216, v61);
    }

    v27 = *(v0 + 6536);
    v28 = *(v0 + 6528);
    v29 = *(v0 + 6512);
    v30 = *(v0 + 6496);
    v31 = *(v0 + 6488);
    v32 = *(v0 + 6456);
    sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

    v45 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v34 = *(v45 + 48);
    v35 = *(v45 + 64);
    v36 = (v0 + 3096);
    goto LABEL_19;
  }

  sub_1A937B960(*(v0 + 6584), &qword_1EB386988, &qword_1A9587830);
  v6 = *(v0 + 6664);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v0 + 6600);
    v9 = *(v0 + 6536);
    v10 = *(v0 + 6528);
    v11 = *(v0 + 6456);
    memcpy((v0 + 296), (v6 + 280 * v7 - 248), 0x118uLL);
    sub_1A937B3DC(v0 + 296, v0 + 576);

    v12 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v13 = *(v12 + 48);
    v14 = *(v12 + 64);
    memcpy(v11, (v0 + 296), 0x118uLL);
    memcpy(__dst, (v0 + 296), sizeof(__dst));
    sub_1A937B3DC(v0 + 296, v0 + 856);
    CoreSynthesizer.Voice.primaryLocale.getter(&v11[v13]);
    sub_1A937B960(v8, &qword_1EB386988, &qword_1A9587830);
    sub_1A937B48C(v0 + 296);
    (*(v9 + 56))(&v11[v14], 1, 1, v10);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
LABEL_14:
    swift_storeEnumTagMultiPayload();
LABEL_15:

    v43 = *(v0 + 8);

    return v43();
  }

  memcpy((v0 + 1136), (v0 + 16), 0x118uLL);
  if (sub_1A932D058(v0 + 1136) != 1)
  {
    v48 = *(v0 + 6672);
    v49 = *(v0 + 6600);
    v50 = *(v0 + 6576);
    v51 = *(v0 + 6488);
    v52 = *(v0 + 6456);
    memcpy((v0 + 1976), (v0 + 16), 0x118uLL);
    sub_1A937B3DC(v0 + 1976, v0 + 2256);

    v53 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v54 = *(v53 + 48);
    memcpy(v52, (v0 + 1136), 0x118uLL);
    sub_1A9391BAC(v49, v50, &qword_1EB386988, &qword_1A9587830);
    if (v48(v50, 1, v51) == 1)
    {
      v55 = *(v0 + 6672);
      v56 = *(v0 + 6600);
      v57 = *(v0 + 6576);
      v58 = *(v0 + 6488);
      memcpy(__dst, (v0 + 1136), sizeof(__dst));
      memcpy((v0 + 2536), (v0 + 16), 0x118uLL);
      sub_1A937B3DC(v0 + 2536, v0 + 2816);
      CoreSynthesizer.Voice.primaryLocale.getter(&v52[v54]);
      sub_1A937B960(v56, &qword_1EB386988, &qword_1A9587830);
      sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
      if (v55(v57, 1, v58) != 1)
      {
        sub_1A937B960(*(v0 + 6576), &qword_1EB386988, &qword_1A9587830);
      }
    }

    else
    {
      v62 = *(v0 + 6576);
      v63 = *(v0 + 6496);
      v64 = *(v0 + 6488);
      sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);
      (*(v63 + 32))(&v52[v54], v62, v64);
    }

    (*(*(v0 + 6536) + 56))(*(v0 + 6456) + *(v53 + 64), 1, 1, *(v0 + 6528));
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    goto LABEL_14;
  }

  v66 = (*(**(v0 + 6472) + 200) + **(**(v0 + 6472) + 200));
  v46 = swift_task_alloc();
  *(v0 + 6696) = v46;
  *v46 = v0;
  v46[1] = sub_1A939EA9C;
  v47 = *(v0 + 6504);

  return v66(v47);
}

uint64_t sub_1A939E3B8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A939E4B4, 0, 0);
}

uint64_t sub_1A939E4B4()
{
  v39 = v0;
  memcpy((v0 + 3936), (v0 + 4216), 0x118uLL);
  if (sub_1A932D058(v0 + 3936) != 1)
  {
    v10 = *(v0 + 6536);
    v11 = *(v0 + 6528);
    v12 = *(v0 + 6512);
    v13 = *(v0 + 6496);
    v14 = *(v0 + 6488);
    v15 = *(v0 + 6456);
    sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

    v16 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v17 = *(v16 + 48);
    v18 = *(v16 + 64);
    memcpy(v15, (v0 + 3936), 0x118uLL);
    (*(v13 + 16))(&v15[v17], v12, v14);
    (*(v10 + 56))(&v15[v18], 1, 1, v11);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    swift_storeEnumTagMultiPayload();
    (*(v13 + 8))(v12, v14);
LABEL_15:

    v36 = *(v0 + 8);

    return v36();
  }

  (*(*(v0 + 6496) + 8))(*(v0 + 6512), *(v0 + 6488));
  v1 = *(v0 + 6664);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 6600);
    v4 = *(v0 + 6536);
    v5 = *(v0 + 6528);
    v6 = *(v0 + 6456);
    memcpy((v0 + 296), (v1 + 280 * v2 - 248), 0x118uLL);
    sub_1A937B3DC(v0 + 296, v0 + 576);

    v7 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v8 = *(v7 + 48);
    v9 = *(v7 + 64);
    memcpy(v6, (v0 + 296), 0x118uLL);
    memcpy(__dst, (v0 + 296), sizeof(__dst));
    sub_1A937B3DC(v0 + 296, v0 + 856);
    CoreSynthesizer.Voice.primaryLocale.getter(&v6[v8]);
    sub_1A937B960(v3, &qword_1EB386988, &qword_1A9587830);
    sub_1A937B48C(v0 + 296);
    (*(v4 + 56))(&v6[v9], 1, 1, v5);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  memcpy((v0 + 1136), (v0 + 16), 0x118uLL);
  if (sub_1A932D058(v0 + 1136) != 1)
  {
    v22 = *(v0 + 6672);
    v23 = *(v0 + 6600);
    v24 = *(v0 + 6576);
    v25 = *(v0 + 6488);
    v26 = *(v0 + 6456);
    memcpy((v0 + 1976), (v0 + 16), 0x118uLL);
    sub_1A937B3DC(v0 + 1976, v0 + 2256);

    v27 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v28 = *(v27 + 48);
    memcpy(v26, (v0 + 1136), 0x118uLL);
    sub_1A9391BAC(v23, v24, &qword_1EB386988, &qword_1A9587830);
    if (v22(v24, 1, v25) == 1)
    {
      v29 = *(v0 + 6672);
      v30 = *(v0 + 6600);
      v31 = *(v0 + 6576);
      v32 = *(v0 + 6488);
      memcpy(__dst, (v0 + 1136), sizeof(__dst));
      memcpy((v0 + 2536), (v0 + 16), 0x118uLL);
      sub_1A937B3DC(v0 + 2536, v0 + 2816);
      CoreSynthesizer.Voice.primaryLocale.getter(&v26[v28]);
      sub_1A937B960(v30, &qword_1EB386988, &qword_1A9587830);
      sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
      if (v29(v31, 1, v32) != 1)
      {
        sub_1A937B960(*(v0 + 6576), &qword_1EB386988, &qword_1A9587830);
      }
    }

    else
    {
      v33 = *(v0 + 6576);
      v34 = *(v0 + 6496);
      v35 = *(v0 + 6488);
      sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);
      (*(v34 + 32))(&v26[v28], v33, v35);
    }

    (*(*(v0 + 6536) + 56))(*(v0 + 6456) + *(v27 + 64), 1, 1, *(v0 + 6528));
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    goto LABEL_14;
  }

  v37 = (*(**(v0 + 6472) + 200) + **(**(v0 + 6472) + 200));
  v19 = swift_task_alloc();
  *(v0 + 6696) = v19;
  *v19 = v0;
  v19[1] = sub_1A939EA9C;
  v20 = *(v0 + 6504);

  return v37(v20);
}

uint64_t sub_1A939EA9C()
{
  v1 = *v0;
  v2 = *(*v0 + 6472);
  v3 = *v0;

  v7 = (*(*v2 + 416) + **(*v2 + 416));
  v4 = swift_task_alloc();
  *(v1 + 6704) = v4;
  *v4 = v3;
  v4[1] = sub_1A939EC9C;
  v5 = *(v1 + 6504);

  return v7(v1 + 1696, v5);
}

uint64_t sub_1A939EC9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A939ED98, 0, 0);
}

uint64_t sub_1A939ED98()
{
  memcpy(v0 + 177, v0 + 212, 0x118uLL);
  result = sub_1A932D058((v0 + 177));
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[825];
    v3 = v0[817];
    v12 = v0[816];
    v4 = v0[813];
    v5 = v0[812];
    v6 = v0[811];
    v7 = v0[807];
    v8 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v9 = *(v8 + 48);
    v10 = *(v8 + 64);
    sub_1A937B960(v2, &qword_1EB386988, &qword_1A9587830);

    memcpy(v7, v0 + 177, 0x118uLL);
    (*(v5 + 32))(&v7[v9], v4, v6);
    (*(v3 + 56))(&v7[v10], 1, 1, v12);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    swift_storeEnumTagMultiPayload();

    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_1A939EF64(uint64_t a1)
{
  v2 = sub_1A957B0B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v23 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_1A93A3C2C(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t SpeechSlicer.visitLeaf<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_1A937829C(&qword_1EB386A58, &unk_1A9587E90);
  v4[6] = swift_task_alloc();
  v5 = sub_1A957B0B8();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A939F288, 0, 0);
}

uint64_t sub_1A939F288()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  sub_1A957B0A8();
  KeyPath = swift_getKeyPath();
  v7 = *(v3 + 16);
  v0[12] = v7;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  TTSMarkupSpeech.subscript.setter(v4, KeyPath, v6, *(v5 + 8));
  if ((*(v5 + 16))(v6, v5))
  {
    if (sub_1A93A2F24(*(v0[5] + 8), *(v0[5] + 24)))
    {

      return MEMORY[0x1EEE6DFA0](sub_1A939F608, 0, 0);
    }

    else
    {
      v15 = swift_task_alloc();
      v0[14] = v15;
      *v15 = v0;
      v15[1] = sub_1A939F50C;

      return sub_1A9399B8C();
    }
  }

  else
  {
    v9 = v0[10];
    v8 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];
    v7(v10, v8, v12);
    sub_1A93A3C2C(v9, v10);
    v13 = *(v11 + 8);
    v13(v9, v12);
    v13(v8, v12);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1A939F50C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A939F608, 0, 0);
}

uint64_t sub_1A939F608()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  (*(v0 + 96))(v3, v1, v5);
  sub_1A93A3C2C(v2, v3);
  v7 = *(v4 + 8);
  v7(v2, v5);
  v7(v1, v5);
  v8 = *(v6 + 8);

  *(v6 + 24) = v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A939F8AC()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[13] = v2;
  v3 = v0[12];
  if (v2)
  {
    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[9];
    v0[14] = *(v1 + 8);

    sub_1A957B0A8();
    KeyPath = swift_getKeyPath();
    v8 = *(v5 + 16);
    v0[15] = v8;
    v0[16] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v6, v3, v4);
    (*(v5 + 56))(v6, 0, 1, v4);
    TTSMarkupSpeech.subscript.setter(v6, KeyPath, &type metadata for TTSMarkup.Audio, &protocol witness table for TTSMarkup.Audio);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_1A939FA54;

    return sub_1A9399B8C();
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1A939FA54()
{

  return MEMORY[0x1EEE6DFA0](sub_1A939FB50, 0, 0);
}

uint64_t sub_1A939FB50()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[3];
  v21 = v0[4];
  *v6 = v0[14];
  v6[1] = v2;
  swift_storeEnumTagMultiPayload();
  sub_1A937829C(&qword_1EB386A60, &qword_1A9587EF8);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A9587160;
  v1(v10 + v9, v3, v5);
  v11 = sub_1A93A72C4(v10);
  swift_setDeallocating();
  v12 = *(v4 + 8);
  v12(v10 + v9, v5);
  swift_deallocClassInstance();
  v13 = *(v21 + 48);
  sub_1A93A3870(v6, v7, type metadata accessor for SpeechSlicer.Slice.SliceType);
  *(v7 + v13) = v11;
  v14 = *(v8 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1A93A3680(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1A93A3680((v15 > 1), v16 + 1, 1, v14);
  }

  v18 = v0[5];
  v17 = v0[6];
  v12(v0[12], v0[10]);
  v14[2] = v16 + 1;
  sub_1A93A7460(v17, v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16, &qword_1EB386A30, &unk_1A9587E60);
  *(v8 + 40) = v14;

  v19 = v0[1];

  return v19();
}

uint64_t sub_1A939FD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A939FE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A939FEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A939FF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A004C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return SpeechSlicer.visit(_:)(a1);
}

uint64_t sub_1A93A00E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A0190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A0240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A02F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A03A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return SpeechSlicer.visit(_:)(a1);
}

uint64_t sub_1A93A0434(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return SpeechSlicer.visit(_:)(a1);
}

uint64_t sub_1A93A04C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A0578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A0628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A06D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A0788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A0838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A9382328;

  return TTSMarkupAsyncVisitor.visitContainer<A>(_:)(a1, a4, a2, a5, a3);
}

uint64_t sub_1A93A0900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return SpeechSlicer.visitLeaf<A>(_:)(a1, a2, a3);
}

uint64_t sub_1A93A09AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A93A09D0, 0, 0);
}

uint64_t sub_1A93A09D0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v0[11] = *v2;
  v0[12] = *(v2 + 8);
  v4 = *(v1 + 8);
  v0[13] = v4;
  v5 = (*(v4 + 48))(v3);
  MEMORY[0x1AC585140](v5);

  v0[14] = *v2;
  v0[15] = *(v2 + 8);
  sub_1A937B960(v2 + 16, &qword_1EB3868E8, &unk_1A958F280);
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1A93A0B00;
  v7 = v0[9];
  v9 = v0[7];
  v8 = v0[8];

  return TTSMarkupAsyncVisitor.visitChildren<A>(_:)(v9, &type metadata for SSMLBreadCrumber, v8, &off_1F1CF1800, v7);
}

uint64_t sub_1A93A0B00()
{

  return MEMORY[0x1EEE6DFA0](sub_1A93A0BFC, 0, 0);
}

uint64_t *sub_1A93A0BFC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v6 = *(v0 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v7 = *(v0 + 88) & 0xFFFFFFFFFFFFLL;
  }

  sub_1A937B960((v4 + 2), &qword_1EB3868E8, &unk_1A958F280);
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[6] = 0;
  v8 = *v4;
  v9 = v4[1];
  if ((v9 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v10 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  v11 = (*(v3 + 56))(v5, v3);
  MEMORY[0x1AC585140](v11);

  v13 = *v4;
  v12 = v4[1];
  if ((v12 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFLL;
  }

  result = swift_getKeyPath();
  if (v10 >= v6 && v14 >= v7)
  {
    v17 = *(v0 + 120);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 64);
    v21 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v21 = *(v0 + 112);
    }

    v22 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v22 = *(v0 + 88);
    }

    v23 = ((v17 >> 60) & ((*(v0 + 112) & 0x800000000000000) == 0)) == 0;
    v24 = 7;
    if (v23)
    {
      v25 = 7;
    }

    else
    {
      v25 = 11;
    }

    v26 = v25 | (v21 << 16);
    if (((v9 >> 60) & ((v8 & 0x800000000000000) == 0)) != 0)
    {
      v27 = 11;
    }

    else
    {
      v27 = 7;
    }

    if (((v19 >> 60) & ((*(v0 + 88) & 0x800000000000000) == 0)) != 0)
    {
      v28 = 11;
    }

    else
    {
      v28 = 7;
    }

    v29 = v28 | (v22 << 16);
    if (((v12 >> 60) & ((v13 & 0x800000000000000) == 0)) != 0)
    {
      v24 = 11;
    }

    *(v0 + 16) = v29;
    *(v0 + 24) = v24 | (v14 << 16);
    *(v0 + 32) = v26;
    *(v0 + 40) = v27 | (v10 << 16);
    *(v0 + 48) = 0;
    TTSMarkupSpeech.subscript.setter(v0 + 16, result, v20, v18);
    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1A93A0E38@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1A93A74C8();
  SpeechContext.subscript.getter(&type metadata for BreadCrumbContextKey, &type metadata for BreadCrumbContextKey, v2, v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1A93A0E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = v5;
  v7 = sub_1A93A74C8();
  return SpeechContext.subscript.setter(v9, &type metadata for BreadCrumbContextKey, &type metadata for BreadCrumbContextKey, v7);
}

uint64_t sub_1A93A0EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = v5;
  v7 = sub_1A93A74C8();
  return SpeechContext.subscript.setter(v9, &type metadata for BreadCrumbContextKey, &type metadata for BreadCrumbContextKey, v7);
}

uint64_t sub_1A93A0F34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1A93A0F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[37] = a3;
  v4[38] = v3;
  v4[35] = a1;
  v4[36] = a2;
  v4[39] = *(a2 - 8);
  v4[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93A0FF8, 0, 0);
}

uint64_t sub_1A93A0FF8()
{
  v1 = *(v0 + 304);
  sub_1A9391BAC(v1 + 16, v0 + 56, &qword_1EB3868E8, &unk_1A958F280);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v5 = *(v0 + 280);
    v4 = *(v0 + 288);
    sub_1A932D070((v0 + 56), v0 + 16);
    (*(v3 + 16))(v2, v5, v4);
    if (swift_dynamicCast())
    {

      sub_1A9379534(v0 + 16, v0 + 136);
      sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
      if (swift_dynamicCast())
      {

        MEMORY[0x1AC585140](32, 0xE100000000000000);
      }
    }

    sub_1A9378138((v0 + 16));
  }

  else
  {
    sub_1A937B960(v0 + 56, &qword_1EB3868E8, &unk_1A958F280);
  }

  v6 = *(v0 + 304);
  v7 = *v6;
  v8 = v6[1];
  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v9 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  v10 = *(*(v0 + 296) + 8);
  v11 = (*(v10 + 64))(*(v0 + 288), v10);
  MEMORY[0x1AC585140](v11);

  v13 = v6[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v14 < v9)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v0 + 312);
    v16 = *(v0 + 280);
    v17 = *(v0 + 288);
    if (((v8 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = 7;
    }

    v19 = v18 | (v9 << 16);
    if (((v13 >> 60) & ((*v6 & 0x800000000000000) == 0)) != 0)
    {
      v20 = 11;
    }

    else
    {
      v20 = 7;
    }

    v21 = v20 | (v14 << 16);
    KeyPath = swift_getKeyPath();
    *(v0 + 176) = v19;
    *(v0 + 184) = v21;
    *(v0 + 192) = v19;
    *(v0 + 200) = v21;
    *(v0 + 208) = 0;
    TTSMarkupSpeech.subscript.setter(v0 + 176, KeyPath, v17, v10);
    *(v0 + 120) = v17;
    *(v0 + 128) = v10;
    v23 = sub_1A93981E4((v0 + 96));
    (*(v15 + 16))(v23, v16, v17);
    sub_1A93A38D8(v0 + 96, v1 + 16);

    v24 = *(v0 + 8);

    return v24();
  }

  return result;
}

uint64_t sub_1A93A12C8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1A93A138C;
  v2 = *(v0 + 72);

  return TTSMarkupAsyncVisitor.visit(_:)(v2, &type metadata for SSMLBreadCrumber, &off_1F1CF1800);
}

uint64_t sub_1A93A138C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A93A1488, 0, 0);
}

uint64_t sub_1A93A1488()
{
  v1 = v0[2];
  v2 = v0[3];

  sub_1A93A150C((v0 + 2));
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_1A93A153C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A15EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A169C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return sub_1A93A09AC(a1, a2, a3);
}

uint64_t sub_1A93A17F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return sub_1A93A0F40(a1, a2, a3);
}

BOOL CoreSynthesizer.Voice.speaksLanguage(locale:)()
{
  v1 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v20 - v2;
  v4 = sub_1A957B2E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A957B188();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v23, v0, sizeof(v23));
  sub_1A957B2F8();
  sub_1A957B2B8();
  (*(v5 + 8))(v7, v4);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_1A937B960(v3, &qword_1EB386A68, &qword_1A9587F40);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v3, v8);
    memcpy(v22, v23, sizeof(v22));
    CoreSynthesizer.Voice.primaryLocales.getter(v21);
    sub_1A93780F4(v21, v21[3]);
    v20[2] = MEMORY[0x1E69E7CD0];
    sub_1A937829C(&qword_1EB386A70, &qword_1A9587F48);
    sub_1A957C408();
    v13 = v20[3];
    sub_1A9378138(v21);
    v14 = Locale.LanguageCode.isMacroLanguage.getter();
    v15 = sub_1A939A620(v11, v13);
    v12 = v15;
    if (v14)
    {
      if (v15)
      {
        (*(v9 + 8))(v11, v8);

        return 1;
      }

      else
      {
        v16 = Locale.LanguageCode.childLanguages.getter();
        v17 = sub_1A93A5804(v13, v16);

        (*(v9 + 8))(v11, v8);
        v18 = *(v17 + 16);

        return v18 != 0;
      }
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }
  }

  return v12;
}

uint64_t sub_1A93A1C28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v24 = a3;
  v23[1] = a2;
  v4 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = sub_1A957B2E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A957B188();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v23[0] = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v23 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  v25 = *a1;

  sub_1A957B2F8();
  sub_1A957B2B8();
  (*(v8 + 8))(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    result = sub_1A937B960(v6, &qword_1EB386A68, &qword_1A9587F40);
  }

  else
  {
    (*(v12 + 32))(v19, v6, v11);
    v21 = v23[0];
    (*(v12 + 16))(v23[0], v19, v11);
    sub_1A93A3F0C(v17, v21);
    v22 = *(v12 + 8);
    v22(v17, v11);
    result = (v22)(v19, v11);
  }

  *v24 = v25;
  return result;
}

uint64_t sub_1A93A1F04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A957B0B8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double sub_1A93A1F70@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_1A93A1FF0(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v5[197] = v4;
  v5[196] = a4;
  v5[195] = a3;
  v5[194] = a1;
  memcpy(v5 + 84, a2, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A93A206C, 0, 0);
}

uint64_t sub_1A93A206C()
{
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1552);
  v8 = *(v0 + 1560);
  *(v0 + 1536) = v8;
  v3 = sub_1A93981E4((v0 + 1512));
  (*(*(v8 - 8) + 16))(v3, v1);
  memcpy((v0 + 952), (v0 + 672), 0x118uLL);
  v4 = v2;
  sub_1A9391BAC(v0 + 672, v0 + 1232, &unk_1EB387BC0, &qword_1A9587E30);
  v5 = swift_task_alloc();
  *(v0 + 1584) = v5;
  *v5 = v0;
  v5[1] = sub_1A93A2198;
  v6 = *(v0 + 1552);

  return SpeechSlicer.init(mutableSpeech:synthesizer:utteranceVoice:)(v0 + 16, v0 + 1512, v6, v0 + 952);
}

uint64_t sub_1A93A2198()
{
  *(*v1 + 1592) = v0;

  if (v0)
  {
    v2 = sub_1A93A2338;
  }

  else
  {
    v2 = sub_1A93A22AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A93A22AC()
{
  memcpy(v0 + 43, v0 + 2, 0x148uLL);
  v1 = v0[45];

  sub_1A93A751C((v0 + 43));
  sub_1A9378138(v0 + 189);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1A93A2338()
{
  sub_1A9378138((v0 + 1512));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93A239C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A957B308();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for SpeechSlicer.VoiceQuery(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A93A5764(v2, v9, type metadata accessor for SpeechSlicer.VoiceQuery);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A957C228();
    }

    else
    {
      memcpy(v13, v9, sizeof(v13));
      MEMORY[0x1AC5863C0](2);
      memcpy(v12, v13, sizeof(v12));
      sub_1A937B438();
      sub_1A957C068();
      return sub_1A937B48C(v13);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x1AC5863C0](0);
    sub_1A93A7604(&qword_1ED970220, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
    sub_1A957C068();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A93A25F8()
{
  sub_1A957D4F8();
  sub_1A93A239C(v1);
  return sub_1A957D548();
}

uint64_t sub_1A93A263C(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A93A239C(v2);
  return sub_1A957D548();
}

uint64_t SpeechSlicer.Slice.ssml.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SpeechSlicer.Slice.type.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SpeechSlicer.Slice(0) + 24);

  return sub_1A93A754C(a1, v3);
}

uint64_t sub_1A93A278C(_OWORD *a1)
{
  v3 = v1[5];
  v4 = v1[6];
  sub_1A93780F4(v1 + 2, v3);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return (*(v4 + 88))(v7, *v1, v1[1], v3, v4);
}

uint64_t sub_1A93A2800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[28] = a6;
  v7[29] = v6;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a1;
  v7[25] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1A93A2828, 0, 0);
}

uint64_t sub_1A93A2828()
{
  v1 = *(v0 + 232);
  v3 = v1[5];
  v2 = v1[6];
  v13 = *(v0 + 200);
  v14 = *(v0 + 216);
  sub_1A93780F4(v1 + 2, v3);
  v4 = swift_task_alloc();
  *(v4 + 16) = v14;
  *(v4 + 32) = v13;
  TTSMarkupSpeech.transformed(_:)(sub_1A93A75B0, v4, v3, v2, (v0 + 112));

  if (*(v0 + 136))
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 192);
    sub_1A932D070((v0 + 112), v0 + 72);
    sub_1A9379534(v0 + 72, v0 + 152);
    v7 = type metadata accessor for SpeechSlicer.Slice(0);
    sub_1A93A5764(v5 + *(v7 + 24), v6 + *(v7 + 24), type metadata accessor for SpeechSlicer.Slice.SliceType);
    sub_1A9379534(v0 + 152, v6 + 16);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0;
    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    *v8 = v0;
    v8[1] = sub_1A93A2A40;

    return TTSMarkupAsyncVisitor.visit(_:)(v6 + 16, &type metadata for SSMLBreadCrumber, &off_1F1CF1800);
  }

  else
  {
    v10 = *(v0 + 232);
    v11 = *(v0 + 192);
    sub_1A937B960(v0 + 112, &qword_1EB3868E8, &unk_1A958F280);
    sub_1A93A5764(v10, v11, type metadata accessor for SpeechSlicer.Slice);
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1A93A2A40()
{

  return MEMORY[0x1EEE6DFA0](sub_1A93A2B3C, 0, 0);
}

uint64_t sub_1A93A2B3C()
{
  v1 = v0[24];
  v2 = v0[2];
  v3 = v0[3];

  sub_1A93A150C((v0 + 2));
  sub_1A9378138(v0 + 19);
  *v1 = v2;
  v1[1] = v3;
  sub_1A9378138(v0 + 9);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1A93A2BD0@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1A957CC58();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-v11 - 8];
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A9379534(a1, v20);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v12, 0, 1, a3);
    (*(v13 + 32))(v15, v12, a3);
    a2(v15);
    return (*(v13 + 8))(v15, a3);
  }

  else
  {
    v17(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
    return sub_1A9379534(a1, a4);
  }
}

void *sub_1A93A2E00@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 280 * v5 - 248);
    while (1)
    {
      memcpy(__dst, v7, sizeof(__dst));
      memcpy(__src, v7, sizeof(__src));
      sub_1A937B3DC(__dst, v11);
      v8 = a1(__src);
      if (v3)
      {
        memcpy(v11, __src, sizeof(v11));
        return sub_1A937B48C(v11);
      }

      if (v8)
      {
        break;
      }

      --v5;
      memcpy(v11, __src, sizeof(v11));
      sub_1A937B48C(v11);
      v7 -= 280;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    memcpy(v11, __src, sizeof(v11));
    nullsub_23();
    v9 = v11;
  }

  else
  {
LABEL_6:
    sub_1A93847E0(__dst);
    v9 = __dst;
  }

  return memcpy(a3, v9, 0x118uLL);
}

uint64_t sub_1A93A2F24(uint64_t a1, uint64_t a2)
{
  v52 = sub_1A957B308();
  v4 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A937829C(&qword_1EB386A98, &unk_1A95884C0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v55 = type metadata accessor for SpeechSlicer.VoiceQuery(0);
  v9 = MEMORY[0x1EEE9AC00](v55);
  v10 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](&v42 - v11);
  v56 = &v42 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v42 - v16;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v47 = v14;
  v48 = v18;
  v49 = v17;
  v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v43 = v6;
  v44 = (v4 + 32);
  v45 = v8;
  v46 = (v4 + 8);
  v53 = *(v15 + 72);
  v54 = &v42 - v16;
  while (1)
  {
    sub_1A93A5764(v22, v19, type metadata accessor for SpeechSlicer.VoiceQuery);
    v24 = v56;
    sub_1A93A5764(v23, v56, type metadata accessor for SpeechSlicer.VoiceQuery);
    v25 = &v8[*(v6 + 48)];
    sub_1A93A5764(v19, v8, type metadata accessor for SpeechSlicer.VoiceQuery);
    sub_1A93A5764(v24, v25, type metadata accessor for SpeechSlicer.VoiceQuery);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v32 = v47;
      sub_1A93A5764(v8, v47, type metadata accessor for SpeechSlicer.VoiceQuery);
      if (swift_getEnumCaseMultiPayload())
      {
        (*v46)(v32, v52);
        goto LABEL_27;
      }

      v33 = v6;
      v34 = v51;
      v35 = v25;
      v36 = v52;
      (*v44)(v51, v35, v52);
      v50 = MEMORY[0x1AC5840A0](v32, v34);
      v37 = *v46;
      v38 = v34;
      v6 = v33;
      v8 = v45;
      (*v46)(v38, v36);
      v37(v32, v36);
      sub_1A93A5704(v8, type metadata accessor for SpeechSlicer.VoiceQuery);
      v19 = v54;
      if ((v50 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v39 = v49;
    sub_1A93A5764(v8, v49, type metadata accessor for SpeechSlicer.VoiceQuery);
    memcpy(v60, v39, 0x118uLL);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1A937B48C(v60);
      goto LABEL_27;
    }

    memcpy(v59, v25, sizeof(v59));
    memcpy(v58, v39, sizeof(v58));
    memcpy(v57, v25, sizeof(v57));
    v40 = static CoreSynthesizer.Voice.== infix(_:_:)(v58, v57);
    sub_1A937B48C(v59);
    sub_1A937B48C(v60);
    sub_1A93A5704(v8, type metadata accessor for SpeechSlicer.VoiceQuery);
    v19 = v54;
    if ((v40 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_7:
    sub_1A93A5704(v56, type metadata accessor for SpeechSlicer.VoiceQuery);
    sub_1A93A5704(v19, type metadata accessor for SpeechSlicer.VoiceQuery);
    v23 += v53;
    v22 += v53;
    if (!--v20)
    {
      return 1;
    }
  }

  v27 = v48;
  sub_1A93A5764(v8, v48, type metadata accessor for SpeechSlicer.VoiceQuery);
  v28 = *v27;
  v29 = v27[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (v28 == *v25 && v29 == *(v25 + 1))
    {
    }

    else
    {
      v31 = sub_1A957D3E8();

      if ((v31 & 1) == 0)
      {
        sub_1A93A5704(v8, type metadata accessor for SpeechSlicer.VoiceQuery);
        v19 = v54;
        goto LABEL_28;
      }
    }

    sub_1A93A5704(v8, type metadata accessor for SpeechSlicer.VoiceQuery);
    v6 = v43;
    v19 = v54;
    goto LABEL_7;
  }

LABEL_27:
  v19 = v54;
  sub_1A937B960(v8, &qword_1EB386A98, &unk_1A95884C0);
LABEL_28:
  sub_1A93A5704(v56, type metadata accessor for SpeechSlicer.VoiceQuery);
  sub_1A93A5704(v19, type metadata accessor for SpeechSlicer.VoiceQuery);
  return 0;
}

char *sub_1A93A3558(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB386AD8, &qword_1A95884F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 280);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[280 * v8])
    {
      memmove(v12, v13, 280 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A93A3680(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB386AA8, &qword_1A95884D0);
  v10 = *(sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A93A3870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A93A38D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3868E8, &unk_1A958F280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93A39C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A93A39FC()
{
  result = qword_1EB3923F0[0];
  if (!qword_1EB3923F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3923F0);
  }

  return result;
}

void *sub_1A93A3A50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1A93A3C2C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1A957B0B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1A93A7604(&qword_1ED96FE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1A957C058();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1A93A7604(&qword_1EB386AB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1A957C098();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1A93A48A4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1A93A3F0C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1A957B188();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
  v33 = a2;
  v11 = sub_1A957C058();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1A93A7604(&qword_1EB386490, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v21 = sub_1A957C098();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1A93A4B6C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1A93A41EC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1A957B0B8();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1A937829C(&qword_1EB386AB8, &qword_1A95884D8);
  result = sub_1A957CEA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1A93A7604(&qword_1ED96FE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1A957C058();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1A93A4548(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1A957B188();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1A937829C(&qword_1EB386AA0, &qword_1A95885C0);
  result = sub_1A957CEA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
      result = sub_1A957C058();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1A93A48A4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1A957B0B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A93A41EC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1A93A4E34(MEMORY[0x1E69695A8], &qword_1EB386AB8, &qword_1A95884D8);
      goto LABEL_12;
    }

    sub_1A93A506C(v10 + 1);
  }

  v12 = *v3;
  sub_1A93A7604(&qword_1ED96FE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v13 = sub_1A957C058();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1A93A7604(&qword_1EB386AB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1A957C098();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

uint64_t sub_1A93A4B6C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1A957B188();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A93A4548(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1A93A4E34(MEMORY[0x1E6969610], &qword_1EB386AA0, &qword_1A95885C0);
      goto LABEL_12;
    }

    sub_1A93A5388(v10 + 1);
  }

  v12 = *v3;
  sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
  v13 = sub_1A957C058();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1A93A7604(&qword_1EB386490, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v21 = sub_1A957C098();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

void *sub_1A93A4E34(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  sub_1A937829C(a2, a3);
  v11 = *v3;
  v12 = sub_1A957CE98();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_1A93A506C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1A957B0B8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1A937829C(&qword_1EB386AB8, &qword_1A95884D8);
  v7 = sub_1A957CEA8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1A93A7604(&qword_1ED96FE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1A957C058();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1A93A5388(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1A957B188();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1A937829C(&qword_1EB386AA0, &qword_1A95885C0);
  v7 = sub_1A957CEA8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
      result = sub_1A957C058();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1A93A5704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A93A5764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A93A5804(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1A93A5A58((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1A93A59C8(v11, v6, a2, a1);

    MEMORY[0x1AC587CD0](v11, -1, -1);
  }

  return v9;
}

void *sub_1A93A59C8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1A93A5A58(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1A93A5A58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_1A957B188();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v75 = (v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v61 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v76 = (v61 - v14);
  result = MEMORY[0x1EEE9AC00](v13);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        return sub_1A93A6140(v66, v62, v68, a3);
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6);
          sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
          v55 = sub_1A957C058();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              v54(v12, *(v73 + 48) + v57 * v53, v6);
              sub_1A93A7604(&qword_1EB386490, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
              v59 = sub_1A957C098();
              v60 = *v76;
              (*v76)(v12, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            result = (v60)(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            result = (v60)(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6);
          (*(v7 + 32))(v76, v33, v6);
          sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
          v34 = sub_1A957C058();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              i(v12, *(v74 + 48) + v36 * v72, v6);
              sub_1A93A7604(&qword_1EB386490, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
              v40 = sub_1A957C098();
              v41 = *v75;
              (*v75)(v12, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            result = (v41)(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            result = (v41)(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}