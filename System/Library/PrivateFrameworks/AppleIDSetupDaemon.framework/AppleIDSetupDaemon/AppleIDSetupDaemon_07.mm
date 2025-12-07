uint64_t sub_2408AAAC8()
{
  v16 = v0;
  v1 = v0[68];
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_2408D5290();
    v9 = sub_2408CC504(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v3, v4, "Received error after attempting to send migration step finished state to child: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v10 = v0[68];
  v0[106] = *(v0[54] + 112);
  v11 = swift_task_alloc();
  v0[107] = v11;
  *(v11 + 16) = v10;
  v14 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

  v12 = swift_task_alloc();
  v0[108] = v12;
  *v12 = v0;
  v12[1] = sub_2408ABDB8;

  return v14(sub_2408B3BF8, v11);
}

uint64_t sub_2408AACBC()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 432);

  if (v0)
  {
    v4 = sub_2408AB4BC;
  }

  else
  {
    v4 = sub_2408AAF7C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408AAE20()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = *(v2 + 432);
    sub_2408B2DE8(*(v2 + 584), *(v2 + 592), *(v2 + 600), *(v2 + 608), *(v2 + 616));
    v4 = sub_2408ABCE0;
  }

  else
  {
    v5 = *(v2 + 616);
    v6 = *(v2 + 608);
    v7 = *(v2 + 600);
    v8 = *(v2 + 592);
    v9 = *(v2 + 584);
    v3 = *(v2 + 432);
    *(v2 + 808) = *(v2 + 296);
    v10 = *(v2 + 320);
    *(v2 + 816) = *(v2 + 304);
    *(v2 + 832) = v10;
    sub_2408B2DE8(v9, v8, v7, v6, v5);
    v4 = sub_2408ABBDC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408AAF7C()
{
  v0[80] = *(v0[54] + 112);
  v4 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

  v1 = swift_task_alloc();
  v0[81] = v1;
  *v1 = v0;
  v1[1] = sub_2408AB040;
  v2 = v0[59];

  return v4(v2);
}

uint64_t sub_2408AB040()
{
  v1 = *(*v0 + 432);

  return MEMORY[0x2822009F8](sub_2408AB16C, v1, 0);
}

uint64_t sub_2408AB16C(uint64_t a1)
{
  v3 = *(v1 + 464);
  v2 = *(v1 + 472);
  v4 = *(v1 + 456);
  sub_2408D4300();
  (*(v3 + 8))(v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(v1 + 448);
  if (EnumCaseMultiPayload == 2)
  {
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    v11 = v6[4];
  }

  else
  {
    sub_2408B4AE0(v6, MEMORY[0x277CED950]);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v7 = 20;
  }

  *(v1 + 688) = v11;
  *(v1 + 680) = v10;
  *(v1 + 672) = v9;
  *(v1 + 664) = v7;
  *(v1 + 656) = v8;
  *(v1 + 176) = v8;
  *(v1 + 184) = v7;
  *(v1 + 192) = v9;
  *(v1 + 200) = v10;
  *(v1 + 208) = v11;
  *(v1 + 96) = xmmword_2408D8E50;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0;
  if (v7 == 20)
  {
    sub_2407D2028(v8, 0x14uLL, v9, v10, v11);
    sub_2407D2028(0, 9uLL, 0, 0, 0);
LABEL_12:
    v19 = swift_task_alloc();
    *(v1 + 696) = v19;
    *v19 = v1;
    v19[1] = sub_2408AB594;
    v20 = *(v1 + 416);

    return sub_2408AC08C(v1 + 256, v20, v1 + 176);
  }

  *(v1 + 136) = v8;
  *(v1 + 144) = v7;
  *(v1 + 152) = v9;
  *(v1 + 160) = v10;
  *(v1 + 168) = v11;
  sub_2408B3C10(v8, v7, v9, v10, v11);
  v12 = MEMORY[0x245CC8890](v1 + 136, v1 + 96);
  sub_2407D2028(v8, v7, v9, v10, v11);
  if ((v12 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_2407D2028(v8, v7, v9, v10, v11);
  v13 = sub_2408D4B10();
  v14 = sub_2408D4F20();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2407CF000, v13, v14, "Detected connection invalidation. Not attempting to send a response to the child device", v15, 2u);
    MEMORY[0x245CC9F60](v15, -1, -1);
  }

  v16 = *(v1 + 408);
  sub_2408B4AE0(*(v1 + 520), MEMORY[0x277CEDB08]);

  *v16 = xmmword_2408D8E50;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = 0;
  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_2408AB4BC()
{
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CEDB08]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408AB594()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = *(v2 + 432);
    sub_2407D2028(*(v2 + 656), *(v2 + 664), *(v2 + 672), *(v2 + 680), *(v2 + 688));
    v4 = sub_2408AB800;
  }

  else
  {
    v5 = *(v2 + 688);
    v6 = *(v2 + 680);
    v7 = *(v2 + 672);
    v8 = *(v2 + 664);
    v9 = *(v2 + 656);
    v3 = *(v2 + 432);
    v10 = *(v2 + 272);
    *(v2 + 712) = *(v2 + 256);
    *(v2 + 728) = v10;
    *(v2 + 744) = *(v2 + 288);
    sub_2407D2028(v9, v8, v7, v6, v5);
    v4 = sub_2408AB6FC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408AB6FC()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 408);
  v5 = *(v0 + 728);
  v6 = *(v0 + 712);
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CEDB08]);

  *v2 = v6;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2408AB800()
{
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CEDB08]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408AB8D8()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  v3 = *(v2 + 432);
  if (v0)
  {
    v4 = sub_2408ABB04;
  }

  else
  {
    v5 = *(v2 + 232);
    *(v2 + 768) = *(v2 + 216);
    *(v2 + 784) = v5;
    *(v2 + 800) = *(v2 + 248);
    v4 = sub_2408ABA04;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408ABA04()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 408);
  v5 = *(v0 + 784);
  v6 = *(v0 + 768);
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CEDB08]);

  *v2 = v6;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2408ABB04()
{
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CEDB08]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408ABBDC()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 408);
  v5 = *(v0 + 824);
  v6 = *(v0 + 808);
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CEDB08]);

  *v2 = v6;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2408ABCE0()
{
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CEDB08]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408ABDB8()
{
  v2 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v3 = *(v2 + 432);
    v4 = sub_2408ABFB0;
  }

  else
  {
    v5 = *(v2 + 432);

    v4 = sub_2408ABEEC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408ABEEC(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2408ABFB0()
{
  v1 = *(v0 + 544);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2408AC08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 264) = a3;
  *(v4 + 272) = v3;
  *(v4 + 248) = a1;
  *(v4 + 256) = a2;
  v5 = *(a3 + 16);
  *(v4 + 280) = *a3;
  *(v4 + 296) = v5;
  *(v4 + 312) = *(a3 + 32);
  *(v4 + 320) = sub_2408D44C0();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408AC15C, v3, 0);
}

uint64_t sub_2408AC15C()
{
  v26 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = sub_2408D4B20();
  *(v0 + 360) = __swift_project_value_buffer(v2, qword_27E507CB8);
  sub_2407EEE04(v1, v0 + 16, &qword_27E507958, &qword_2408D9100);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();
  sub_2407D9440(v1, &qword_27E507958, &qword_2408D9100);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 264);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 8);
    if (v8 == 20)
    {
      v9 = 0xE300000000000000;
      v10 = 7104878;
    }

    else
    {
      v11 = *(v0 + 264);
      v12 = *v11;
      v13 = v11[4];
      *(v0 + 192) = *(v11 + 1);
      *(v0 + 208) = v13;
      *(v0 + 176) = v12;
      *(v0 + 184) = v8;
      sub_2408B2C28();
      v10 = sub_2408D5290();
      v9 = v14;
    }

    v15 = sub_2408CC504(v10, v9, &v25);

    *(v6 + 4) = v15;
    _os_log_impl(&dword_2407CF000, v3, v4, "Sending completion state with finalError=%s to child device", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v16 = *(v0 + 312);
  v17 = *(v0 + 264);
  v18 = *(v0 + 296);
  *(v0 + 56) = *(v0 + 280);
  *(v0 + 72) = v18;
  *(v0 + 88) = v16;
  sub_2407EEE04(v17, v0 + 96, &qword_27E507958, &qword_2408D9100);
  v24 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v19 = swift_task_alloc();
  *(v0 + 368) = v19;
  v20 = sub_2408B3BA4();
  *v19 = v0;
  v19[1] = sub_2408AC404;
  v21 = *(v0 + 344);
  v22 = MEMORY[0x277CEDB00];

  return v24(v21, v0 + 56, v22, v20);
}

uint64_t sub_2408AC404()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_2408AC744;
  }

  else
  {
    v4 = sub_2408AC51C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408AC51C()
{
  v17 = v0;
  v1 = v0[44];
  v2 = v0[42];
  sub_2408B309C(v0[43], v1);
  sub_2408B3C58(v1, v2, MEMORY[0x277CEDB08]);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[42];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = sub_2408D44B0();
    v11 = v10;
    sub_2408B4AE0(v6, MEMORY[0x277CEDB08]);
    v12 = sub_2408CC504(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v3, v4, "Received response from child device after sending completion state. Response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  else
  {

    sub_2408B4AE0(v6, MEMORY[0x277CEDB08]);
  }

  v0[48] = *(v0[34] + 112);
  v15 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

  v13 = swift_task_alloc();
  v0[49] = v13;
  *v13 = v0;
  v13[1] = sub_2408AC938;

  return v15(sub_2408C282C, 0);
}

uint64_t sub_2408AC744()
{
  v16 = v0;
  v1 = v0[47];
  v2 = v1;
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_2408D5290();
    v9 = sub_2408CC504(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v3, v4, "Received error after attempting to send completion state to child: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v10 = v0[47];
  v0[51] = *(v0[34] + 112);
  v11 = swift_task_alloc();
  v0[52] = v11;
  *(v11 + 16) = v10;
  v14 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

  v12 = swift_task_alloc();
  v0[53] = v12;
  *v12 = v0;
  v12[1] = sub_2408ACF9C;

  return v14(sub_2408B3BF8, v11);
}

uint64_t sub_2408AC938()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 272);

  if (v0)
  {
    v4 = sub_2408ACEF8;
  }

  else
  {
    v4 = sub_2408ACA80;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408ACA80()
{
  v41 = v0;
  sub_2408B3C58(v0[44], v0[41], MEMORY[0x277CEDB08]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = sub_2408D4B10();
      v11 = sub_2408D4F40();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[44];
      if (v12)
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2407CF000, v10, v11, "Unexpectedly received migration completion acknowledgement when sending flow completion state to child device.", v14, 2u);
        MEMORY[0x245CC9F60](v14, -1, -1);
      }

      v9 = MEMORY[0x277CEDB08];
      v8 = v13;
      goto LABEL_10;
    }

    v32 = sub_2408D4B10();
    v33 = sub_2408D4F10();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2407CF000, v32, v33, "Child acknowledged flow completion state.", v34, 2u);
      MEMORY[0x245CC9F60](v34, -1, -1);
    }

    v35 = v0[44];
    v36 = v0[33];

    sub_2408B4AE0(v35, MEMORY[0x277CEDB08]);
    v16 = *(v36 + 8);
    if (v16 == 20)
    {
      v15 = 0;
      goto LABEL_11;
    }

    v37 = v0[33];
    v18 = v37[3];
    v19 = v37[4];
    v17 = v37[2];
    v15 = *v37;
    sub_2408B3C10(v0[35], v0[36], v0[37], v0[38], v0[39]);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v2 = sub_2408D4B10();
      v3 = sub_2408D4F40();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_2407CF000, v2, v3, "Unexpectedly received migration info when sending flow completion state to child device.", v4, 2u);
        MEMORY[0x245CC9F60](v4, -1, -1);
      }

      v5 = v0[44];
      v6 = v0[41];

      v7 = MEMORY[0x277CEDB08];
      sub_2408B4AE0(v5, MEMORY[0x277CEDB08]);
      v8 = v6;
      v9 = v7;
LABEL_10:
      sub_2408B4AE0(v8, v9);
      v15 = 0;
      v16 = 0;
LABEL_11:
      v17 = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_12;
    }

    v23 = v0[41];
    v15 = *v23;
    v16 = v23[1];
    v17 = v23[2];
    v18 = v23[3];
    v19 = v23[4];
    sub_2408B3C10(*v23, v16, v17, v18, v19);
    v24 = sub_2408D4B10();
    v25 = sub_2408D4F10();
    sub_2408B2DE8(v15, v16, v17, v18, v19);
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[44];
    if (v26)
    {
      v39 = v25;
      v28 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v28 = 136315138;
      v0[17] = v15;
      v0[18] = v16;
      v0[19] = v17;
      v0[20] = v18;
      v0[21] = v19;
      sub_2408B2C28();
      v29 = sub_2408D5290();
      v31 = sub_2408CC504(v29, v30, &v40);

      *(v28 + 4) = v31;
      _os_log_impl(&dword_2407CF000, v24, v39, "Failed to send flow completion state to child device due to error: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x245CC9F60](v38, -1, -1);
      MEMORY[0x245CC9F60](v28, -1, -1);

      sub_2408B4AE0(v27, MEMORY[0x277CEDB08]);
    }

    else
    {

      sub_2408B4AE0(v27, MEMORY[0x277CEDB08]);
    }
  }

LABEL_12:
  v20 = v0[31];

  *v20 = v15;
  v20[1] = v16;
  v20[2] = v17;
  v20[3] = v18;
  v20[4] = v19;
  v21 = v0[1];

  return v21();
}

uint64_t sub_2408ACEF8()
{
  sub_2408B4AE0(*(v0 + 352), MEMORY[0x277CEDB08]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408ACF9C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = sub_2408AD164;
  }

  else
  {
    v5 = *(v2 + 272);

    v4 = sub_2408AD0CC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408AD0CC(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2408AD164()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2408AD208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = sub_2408D34E0();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v7 = sub_2408D4350();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074F0, &qword_2408D8048);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v4[24] = swift_task_alloc();
  v8 = sub_2408D3D60();
  v4[25] = v8;
  v9 = *(v8 - 8);
  v4[26] = v9;
  v4[27] = *(v9 + 64);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408AD488, v3, 0);
}

uint64_t sub_2408AD488()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v14 = v0[24];
  v15 = v0[23];
  v13 = v0[9];
  v4 = v0[7];
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[29] = v8;
  *(v8 + 16) = v5;
  (*(v2 + 32))(v8 + v7, v1, v3);
  v0[30] = sub_2408D3D80();
  v6(v1, v4, v3);
  sub_2407EEE04(v13, v14, &qword_27E507F00, &qword_2408D6D50);
  v9 = sub_2408D4760();
  (*(*(v9 - 8) + 56))(v15, 1, 1, v9);

  v0[31] = sub_2408D3D40();
  v0[32] = swift_allocObject();
  swift_weakInit();
  sub_2408B4B40(&qword_27E506D08, 255, MEMORY[0x277CED5B0], MEMORY[0x277CED5B8]);

  v11 = sub_2408D4E00();
  v0[33] = v11;
  v0[34] = v10;

  return MEMORY[0x2822009F8](sub_2408AD704, v11, v10);
}

uint64_t sub_2408AD704()
{
  v1 = *(v0 + 80);
  sub_2408D3D00();

  return MEMORY[0x2822009F8](sub_2408AD79C, v1, 0);
}

uint64_t sub_2408AD79C()
{
  v0[35] = *(v0[10] + 112);
  v4 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_2408AD860;
  v2 = v0[22];

  return v4(v2);
}

uint64_t sub_2408AD860()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_2408AD98C, v1, 0);
}

uint64_t sub_2408AD98C()
{
  v46 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  sub_2408D42C0();
  (*(v2 + 8))(v1, v3);
  (*(v6 + 104))(v5, *MEMORY[0x277CED258], v7);
  LOBYTE(v1) = MEMORY[0x245CC7910](v4, v5);
  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);
  if (v1)
  {
    v9 = v0[33];
    v10 = v0[34];

    return MEMORY[0x2822009F8](sub_2408ADDDC, v9, v10);
  }

  else
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v11 = v0[15];
    v12 = v0[11];
    v13 = v0[12];
    v14 = v0[8];
    v15 = sub_2408D4B20();
    __swift_project_value_buffer(v15, qword_27E507CB8);
    v16 = *(v13 + 16);
    v16(v11, v14, v12);

    v17 = sub_2408D4B10();
    v18 = sub_2408D4F20();

    if (os_log_type_enabled(v17, v18))
    {
      v42 = v0[31];
      v19 = v16;
      v21 = v0[14];
      v20 = v0[15];
      v23 = v0[11];
      v22 = v0[12];
      v24 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v24 = 136315394;
      v19(v21, v20, v23);
      v25 = sub_2408D4D40();
      v27 = v26;
      (*(v22 + 8))(v20, v23);
      v28 = sub_2408CC504(v25, v27, &v45);

      *(v24 + 4) = v28;
      v16 = v19;
      *(v24 + 12) = 2080;
      v0[6] = v42;

      v29 = sub_2408D4D40();
      v31 = sub_2408CC504(v29, v30, &v45);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_2407CF000, v17, v18, "Registering transport %s using router %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v43, -1, -1);
      MEMORY[0x245CC9F60](v24, -1, -1);
    }

    else
    {
      v32 = v0[15];
      v33 = v0[11];
      v34 = v0[12];

      (*(v34 + 8))(v32, v33);
    }

    v35 = v0[10];
    v16(v0[13], v0[8], v0[11]);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078F8, &unk_2408D9040);
    v0[2] = v35;
    v0[5] = v36;
    v44 = (*MEMORY[0x277CED5A0] + MEMORY[0x277CED5A0]);

    v37 = swift_task_alloc();
    v0[37] = v37;
    v38 = sub_2407D917C(&qword_27E506E88, &qword_27E506E90, &unk_2408D7F80, MEMORY[0x277CEDB10]);
    *v37 = v0;
    v37[1] = sub_2408AE1D4;
    v39 = v0[13];
    v40 = v0[11];

    return v44(v39, v0 + 2, v40, v38);
  }
}

uint64_t sub_2408ADDDC()
{
  v1 = *(v0 + 80);
  sub_2408D3D20();

  return MEMORY[0x2822009F8](sub_2408ADE60, v1, 0);
}

uint64_t sub_2408ADE60()
{
  v36 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E507CB8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);

  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();

  if (os_log_type_enabled(v7, v8))
  {
    v32 = v0[31];
    v9 = v6;
    v11 = v0[14];
    v10 = v0[15];
    v13 = v0[11];
    v12 = v0[12];
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v14 = 136315394;
    v9(v11, v10, v13);
    v15 = sub_2408D4D40();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_2408CC504(v15, v17, &v35);

    *(v14 + 4) = v18;
    v6 = v9;
    *(v14 + 12) = 2080;
    v0[6] = v32;

    v19 = sub_2408D4D40();
    v21 = sub_2408CC504(v19, v20, &v35);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_2407CF000, v7, v8, "Registering transport %s using router %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v33, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  else
  {
    v22 = v0[15];
    v23 = v0[11];
    v24 = v0[12];

    (*(v24 + 8))(v22, v23);
  }

  v25 = v0[10];
  v6(v0[13], v0[8], v0[11]);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078F8, &unk_2408D9040);
  v0[2] = v25;
  v0[5] = v26;
  v34 = (*MEMORY[0x277CED5A0] + MEMORY[0x277CED5A0]);

  v27 = swift_task_alloc();
  v0[37] = v27;
  v28 = sub_2407D917C(&qword_27E506E88, &qword_27E506E90, &unk_2408D7F80, MEMORY[0x277CEDB10]);
  *v27 = v0;
  v27[1] = sub_2408AE1D4;
  v29 = v0[13];
  v30 = v0[11];

  return v34(v29, v0 + 2, v30, v28);
}

uint64_t sub_2408AE1D4()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_2408AE3F0;
  }

  else
  {
    v5 = *(v2 + 80);
    sub_2407D9440(v2 + 16, &qword_27E507FA0, &qword_2408D7FB0);
    v4 = sub_2408AE30C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408AE30C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 248);

  return v1(v2);
}

uint64_t sub_2408AE3F0()
{

  sub_2407D9440(v0 + 16, &qword_27E507FA0, &qword_2408D7FB0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408AE4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_2408AE520, 0, 0);
}

uint64_t sub_2408AE520()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v0[11] = [objc_opt_self() sharedInstance];
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_2408AE7BC;
    v3 = v0[9];
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];

    return sub_2408AEBCC(v6, v4, v5, v3);
  }

  else
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E507CB8);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F40();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "AgeMigrationService was deallocated while handling request", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v12 = sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0], MEMORY[0x277CED7F8]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277CED7E8], v12);
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2408AE7BC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2408AE954;
  }

  else
  {
    v3 = sub_2408AE8F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408AE8F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408AE954()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2408AE9B8(uint64_t a1)
{
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E507CB8);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Received router invalidation, cancelling service", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_2408D3D70();
    sub_2408B4B40(&qword_27E506D20, 255, MEMORY[0x277CED590], MEMORY[0x277CED598]);
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277CED580], v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078F8, &unk_2408D9040);
    sub_2407D917C(&qword_27E507908, &qword_27E5078F8, &unk_2408D9040, &unk_2408D9930);
    sub_2408D4270();
  }
}

uint64_t sub_2408AEBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_2408D4220();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_2408D3D60();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = sub_2408D4A40();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408AED94, v4, 0);
}

uint64_t sub_2408AED94()
{
  v107 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 80);
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E507CB8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 224);
  v104 = v6;
  if (v9)
  {
    v11 = *(v0 + 216);
    v12 = v6;
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v106[0] = v99;
    *v15 = 136315138;
    v12(v11, v10, v14);
    v16 = sub_2408D4D40();
    v18 = v17;
    v19 = v14;
    v20 = *(v13 + 8);
    v20(v10, v19);
    v21 = sub_2408CC504(v16, v18, v106);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v7, v8, "Receiving request %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v99);
    MEMORY[0x245CC9F60](v99, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);
  }

  else
  {
    v22 = *(v0 + 160);
    v23 = *(v0 + 168);

    v20 = *(v23 + 8);
    v20(v10, v22);
  }

  *(v0 + 232) = v20;
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  v26 = *(v0 + 136);
  (*(v25 + 104))(v24, *MEMORY[0x277CED568], v26);
  v27 = sub_2408D3D50();
  (*(v25 + 8))(v24, v26);
  if (v27)
  {
    v28 = *(v0 + 208);
    v29 = *(v0 + 160);
    v30 = *(v0 + 168);
    v104(v28, *(v0 + 80), v29);
    v31 = (*(v30 + 88))(v28, v29);
    if (v31 == *MEMORY[0x277CEDE08])
    {
      v32 = *(v0 + 184);
      v33 = *(v0 + 160);
      v34 = *(v0 + 168);
      v36 = *(v0 + 120);
      v35 = *(v0 + 128);
      v38 = *(v0 + 104);
      v37 = *(v0 + 112);
      v104(v32, *(v0 + 208), v33);
      (*(v34 + 96))(v32, v33);
      (*(v36 + 32))(v35, v32, v37);
      sub_2408D3F20();
      v39 = *(v38 + 144);
      v40 = swift_task_alloc();
      *(v0 + 280) = v40;
      *v40 = v0;
      v40[1] = sub_2408AF93C;
      v41 = *(v0 + 128);
      v42 = *(v0 + 72);

      return MEMORY[0x28213F3D0](v42, v41, v39);
    }

    if (v31 == *MEMORY[0x277CEDDE8])
    {
      v57 = *(v0 + 192);
      v58 = *(v0 + 160);
      v59 = *(v0 + 168);
      v104(v57, *(v0 + 208), v58);
      (*(v59 + 96))(v57, v58);
      v60 = *v57;
      *(v0 + 240) = *v57;
      v61 = v57[1];
      *(v0 + 248) = v61;
      v62 = v57[2];
      *(v0 + 256) = v62;
      v63 = v57[3];
      *(v0 + 264) = v63;
      v64 = v57[4];
      *(v0 + 272) = v64;
      if (v61 == 21)
      {
        v91 = swift_task_alloc();
        *(v0 + 296) = v91;
        *v91 = v0;
        v91[1] = sub_2408AFA68;
        v92 = *(v0 + 72);

        return sub_2408B05F8(v92);
      }

      else if (v61 == 22)
      {
        *(v0 + 312) = *(*(v0 + 104) + 112);
        v105 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

        v65 = swift_task_alloc();
        *(v0 + 320) = v65;
        *v65 = v0;
        v65[1] = sub_2408AFB94;

        return v105(sub_2408C2260, 0);
      }

      else
      {
        *&v93 = v60;
        *(&v93 + 1) = v61;
        *&v94 = v62;
        *(&v94 + 1) = v63;
        *(v0 + 16) = v93;
        *(v0 + 32) = v94;
        *(v0 + 48) = v64;
        v95 = swift_task_alloc();
        *(v0 + 336) = v95;
        *v95 = v0;
        v95[1] = sub_2408AFF18;
        v96 = *(v0 + 72);

        return sub_2408B2274(v96, v0 + 16);
      }
    }

    v104(*(v0 + 176), *(v0 + 80), *(v0 + 160));

    v71 = sub_2408D4B10();
    v72 = sub_2408D4F30();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = *(v0 + 216);
      v74 = *(v0 + 176);
      v103 = v20;
      v75 = *(v0 + 160);
      v98 = *(v0 + 88);
      v76 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v106[0] = v101;
      *v76 = 136315394;
      v104(v73, v74, v75);
      v77 = sub_2408D4D40();
      v79 = v78;
      v80 = v75;
      v20 = v103;
      v103(v74, v80);
      v81 = sub_2408CC504(v77, v79, v106);

      *(v76 + 4) = v81;
      *(v76 + 12) = 2080;
      *(v0 + 64) = v98;
      sub_2408D3D80();

      v82 = sub_2408D4D40();
      v84 = sub_2408CC504(v82, v83, v106);

      *(v76 + 14) = v84;
      _os_log_impl(&dword_2407CF000, v71, v72, "Server (child) received an unknown request %s from router %s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v101, -1, -1);
      MEMORY[0x245CC9F60](v76, -1, -1);
    }

    else
    {
      v85 = *(v0 + 176);
      v86 = *(v0 + 160);

      v20(v85, v86);
    }

    v87 = *(v0 + 208);
    v88 = *(v0 + 160);
    v89 = sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0], MEMORY[0x277CED7F8]);
    swift_allocError();
    (*(*(v89 - 8) + 104))(v90, *MEMORY[0x277CED7E0], v89);
    swift_willThrow();
    v20(v87, v88);
  }

  else
  {
    v104(*(v0 + 200), *(v0 + 80), *(v0 + 160));

    v43 = sub_2408D4B10();
    v44 = sub_2408D4F30();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = *(v0 + 216);
      v46 = *(v0 + 200);
      v102 = v20;
      v47 = *(v0 + 160);
      v48 = *(v0 + 88);
      v49 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v106[0] = v100;
      *v49 = 136315394;
      v104(v45, v46, v47);
      v50 = sub_2408D4D40();
      v52 = v51;
      v102(v46, v47);
      v53 = sub_2408CC504(v50, v52, v106);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      *(v0 + 56) = v48;
      sub_2408D3D80();

      v54 = sub_2408D4D40();
      v56 = sub_2408CC504(v54, v55, v106);

      *(v49 + 14) = v56;
      _os_log_impl(&dword_2407CF000, v43, v44, "Client (parent) should not be receiving any requests. We only have one request from parent to child to request information for age migration. Received %s from router %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v100, -1, -1);
      MEMORY[0x245CC9F60](v49, -1, -1);
    }

    else
    {
      v66 = *(v0 + 200);
      v67 = *(v0 + 160);

      v20(v66, v67);
    }

    v68 = sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0], MEMORY[0x277CED7F8]);
    swift_allocError();
    (*(*(v68 - 8) + 104))(v69, *MEMORY[0x277CED7E0], v68);
    swift_willThrow();
  }

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_2408AF93C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_2408B04E4;
  }

  else
  {
    v4 = sub_2408B038C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408AFA68()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_2408B01A4;
  }

  else
  {
    v4 = sub_2408B00B0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408AFB94()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_2408AFE14;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_2408AFCBC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408AFCBC()
{
  v1 = *(v0 + 72);
  sub_2408D44C0();
  swift_storeEnumTagMultiPayload();
  v2 = *MEMORY[0x277CEDE10];
  v3 = sub_2408D4A50();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  (*(v0 + 232))(*(v0 + 208), *(v0 + 160));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2408AFE14()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[20];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408AFF18()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = v2[34];
  v4 = v2[33];
  v5 = v2[32];
  v6 = v2[31];
  v7 = v2[30];
  v8 = v2[13];
  sub_2408B305C(v7, v6, v5, v4, v3);
  if (v0)
  {
    v9 = sub_2408B0298;
  }

  else
  {
    v9 = sub_2408B5308;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_2408B00B0()
{
  (*(v0 + 232))(*(v0 + 208), *(v0 + 160));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408B01A4()
{
  (*(v0 + 232))(*(v0 + 208), *(v0 + 160));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408B0298()
{
  (*(v0 + 232))(*(v0 + 208), *(v0 + 160));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408B038C()
{
  v1 = *(v0 + 72);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v2 = *MEMORY[0x277CEDE30];
  v3 = sub_2408D4A50();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  (*(v0 + 232))(*(v0 + 208), *(v0 + 160));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2408B04E4()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[20];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408B05F8(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v2[56] = sub_2408D44C0();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v3 = sub_2408D36A0();
  v2[59] = v3;
  v2[60] = *(v3 - 8);
  v2[61] = swift_task_alloc();
  v4 = sub_2408D36F0();
  v2[62] = v4;
  v2[63] = *(v4 - 8);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v5 = sub_2408D3680();
  v2[66] = v5;
  v2[67] = *(v5 - 8);
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v6 = sub_2408D38D0();
  v2[70] = v6;
  v2[71] = *(v6 - 8);
  v2[72] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v2[73] = swift_task_alloc();
  v7 = sub_2408D3970();
  v2[74] = v7;
  v2[75] = *(v7 - 8);
  v2[76] = swift_task_alloc();
  v8 = sub_2408D4350();
  v2[77] = v8;
  v2[78] = *(v8 - 8);
  v2[79] = swift_task_alloc();
  v9 = sub_2408D3430();
  v2[80] = v9;
  v2[81] = *(v9 - 8);
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408B0978, v1, 0);
}

uint64_t sub_2408B0978()
{
  v1 = *(v0[55] + 128);
  v0[2] = v0;
  v0[7] = v0 + 53;
  v0[3] = sub_2408B0A98;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507948, &qword_2408D90F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2408B21A4;
  v0[13] = &block_descriptor_6;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2408B0A98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 672) = v2;
  v3 = *(v1 + 440);
  if (v2)
  {
    v4 = sub_2408B12E4;
  }

  else
  {
    v4 = sub_2408B0BB8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408B0BB8()
{
  v1 = *(v0 + 424);
  *(v0 + 680) = v1;
  if (v1)
  {
    v2 = [v1 aa_personID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_2408D4D30();
      v6 = v5;

      *(v0 + 688) = v4;
      *(v0 + 696) = v6;
      *(v0 + 704) = sub_2408D5050();
      *(v0 + 712) = v7;
      if (v7)
      {
        v8 = [v1 aa_pendingDOB];
        if (v8)
        {
          v9 = *(v0 + 440);
          v10 = v8;
          sub_2408D3420();

          *(v0 + 720) = *(v9 + 112);
          v31 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

          v11 = swift_task_alloc();
          *(v0 + 728) = v11;
          *v11 = v0;
          v11[1] = sub_2408B1408;
          v12 = *(v0 + 632);

          return v31(v12);
        }

        if (qword_27E506980 != -1)
        {
          swift_once();
        }

        v26 = sub_2408D4B20();
        __swift_project_value_buffer(v26, qword_27E507CB8);
        v27 = sub_2408D4B10();
        v28 = sub_2408D4F30();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_2407CF000, v27, v28, "Server (child) does not have a pending date of birth", v29, 2u);
          MEMORY[0x245CC9F60](v29, -1, -1);
        }

        *(v0 + 264) = 0;
        *(v0 + 272) = 6;
        sub_2408D41D0();
        sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0], MEMORY[0x277CED7F8]);
        *(v0 + 288) = 0;
        *(v0 + 296) = 0;
        *(v0 + 280) = 0;
        swift_allocError();
      }

      else
      {

        if (qword_27E506980 != -1)
        {
          swift_once();
        }

        v22 = sub_2408D4B20();
        __swift_project_value_buffer(v22, qword_27E507CB8);
        v23 = sub_2408D4B10();
        v24 = sub_2408D4F30();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_2407CF000, v23, v24, "Server (child) does not have an altDSID for the primary account", v25, 2u);
          MEMORY[0x245CC9F60](v25, -1, -1);
        }

        *(v0 + 224) = xmmword_2408D8E90;
        sub_2408D41D0();
        sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0], MEMORY[0x277CED7F8]);
        *(v0 + 248) = 0;
        *(v0 + 256) = 0;
        *(v0 + 240) = 0;
        swift_allocError();
      }
    }

    else
    {
      if (qword_27E506980 != -1)
      {
        swift_once();
      }

      v18 = sub_2408D4B20();
      __swift_project_value_buffer(v18, qword_27E507CB8);
      v19 = sub_2408D4B10();
      v20 = sub_2408D4F30();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_2407CF000, v19, v20, "Server(child) does not have a DSID for the primary account", v21, 2u);
        MEMORY[0x245CC9F60](v21, -1, -1);
      }

      *(v0 + 184) = xmmword_2408D8EA0;
      sub_2408D41D0();
      sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0], MEMORY[0x277CED7F8]);
      *(v0 + 208) = 0;
      *(v0 + 216) = 0;
      *(v0 + 200) = 0;
      swift_allocError();
    }

    sub_2408D4460();
    swift_willThrow();
  }

  else
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v14 = sub_2408D4B20();
    __swift_project_value_buffer(v14, qword_27E507CB8);
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F30();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2407CF000, v15, v16, "Server (child) does not have a primary account", v17, 2u);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

    *(v0 + 144) = xmmword_2408D8EB0;
    sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0], MEMORY[0x277CED7F8]);
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 160) = 0;
    swift_allocError();
    sub_2408D4460();
    swift_willThrow();
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2408B12E4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2408B1408()
{
  v1 = *(*v0 + 440);

  return MEMORY[0x2822009F8](sub_2408B1534, v1, 0);
}

uint64_t sub_2408B1534()
{
  v99 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  sub_2408D4330();
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = *(v0 + 584);
  if (v4 == 1)
  {

    sub_2407D9440(v5, &unk_27E506A20, &unk_2408D67F0);
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v6 = sub_2408D4B20();
    __swift_project_value_buffer(v6, qword_27E507CB8);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F30();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, "Server (child) does not have an IdMSAccount on its AgeMigrationModel", v9, 2u);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    v10 = *(v0 + 680);
    v11 = *(v0 + 664);
    v12 = *(v0 + 648);
    v13 = *(v0 + 640);
    v14 = *(v0 + 632);
    v15 = *(v0 + 624);
    v16 = *(v0 + 616);

    *(v0 + 304) = xmmword_2408D8ED0;
    sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0], MEMORY[0x277CED7F8]);
    *(v0 + 328) = 0;
    *(v0 + 336) = 0;
    *(v0 + 320) = 0;
    swift_allocError();
    sub_2408D4460();
    swift_willThrow();

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
    goto LABEL_24;
  }

  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  (*(*(v0 + 600) + 32))(*(v0 + 608), *(v0 + 584), *(v0 + 592));
  sub_2408D38F0();
  sub_2408D38C0();
  v21 = v20;
  (*(v18 + 8))(v17, v19);
  if (!v21)
  {

    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v52 = sub_2408D4B20();
    __swift_project_value_buffer(v52, qword_27E507CB8);
    v53 = sub_2408D4B10();
    v54 = sub_2408D4F30();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2407CF000, v53, v54, "Server (child) does not have an account username", v55, 2u);
      MEMORY[0x245CC9F60](v55, -1, -1);
    }

    v56 = *(v0 + 680);
    v57 = *(v0 + 648);
    v94 = *(v0 + 640);
    v96 = *(v0 + 664);
    v92 = *(v0 + 632);
    v58 = *(v0 + 624);
    v59 = *(v0 + 616);
    v60 = *(v0 + 608);
    v61 = *(v0 + 600);
    v62 = *(v0 + 592);

    *(v0 + 344) = 0;
    *(v0 + 352) = 17;
    sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0], MEMORY[0x277CED7F8]);
    *(v0 + 368) = 0;
    *(v0 + 376) = 0;
    *(v0 + 360) = 0;
    swift_allocError();
    goto LABEL_23;
  }

  v22 = *(v0 + 480);
  v23 = *(v0 + 488);
  v24 = *(v0 + 472);
  sub_2408D3780();
  if ((*(v22 + 88))(v23, v24) != *MEMORY[0x277CED390])
  {
    v63 = *(v0 + 480);
    v64 = *(v0 + 488);
    v65 = *(v0 + 472);

    (*(v63 + 8))(v64, v65);
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v66 = sub_2408D4B20();
    __swift_project_value_buffer(v66, qword_27E507CB8);
    v67 = sub_2408D4B10();
    v68 = sub_2408D4F30();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_2407CF000, v67, v68, "Server (child) either has nil model account or incorrect credential type.", v69, 2u);
      MEMORY[0x245CC9F60](v69, -1, -1);
    }

    v56 = *(v0 + 680);
    v57 = *(v0 + 648);
    v94 = *(v0 + 640);
    v96 = *(v0 + 664);
    v92 = *(v0 + 632);
    v58 = *(v0 + 624);
    v59 = *(v0 + 616);
    v60 = *(v0 + 608);
    v61 = *(v0 + 600);
    v62 = *(v0 + 592);

    *(v0 + 384) = xmmword_2408D8EC0;
    sub_2408D41D0();
    sub_2408B4B40(&qword_27E5074F8, 255, MEMORY[0x277CED7F0], MEMORY[0x277CED7F8]);
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 400) = 0;
    swift_allocError();
LABEL_23:
    sub_2408D4460();
    swift_willThrow();

    (*(v61 + 8))(v60, v62);
    (*(v58 + 8))(v92, v59);
    (*(v57 + 8))(v96, v94);
LABEL_24:

    v70 = *(v0 + 8);
    goto LABEL_25;
  }

  v82 = *(v0 + 664);
  v78 = *(v0 + 656);
  v25 = *(v0 + 648);
  v80 = *(v0 + 640);
  v26 = *(v0 + 552);
  v27 = *(v0 + 536);
  v28 = *(v0 + 528);
  v75 = *(v0 + 520);
  v29 = *(v0 + 504);
  v84 = *(v0 + 544);
  v86 = *(v0 + 512);
  v30 = *(v0 + 488);
  v31 = *(v0 + 496);
  (*(*(v0 + 480) + 96))(v30, *(v0 + 472));
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507950, &qword_2408D90F8) + 48);
  (*(v27 + 32))(v26, v30, v28);
  (*(v29 + 32))(v75, v30 + v32, v31);
  (*(v25 + 16))(v78, v82, v80);
  (*(v27 + 16))(v84, v26, v28);
  (*(v29 + 16))(v86, v75, v31);
  sub_2408D4470();
  swift_storeEnumTagMultiPayload();
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 456);
  v34 = *(v0 + 464);
  v35 = sub_2408D4B20();
  __swift_project_value_buffer(v35, qword_27E507CB8);
  sub_2408B3C58(v34, v33, MEMORY[0x277CEDB08]);
  v36 = sub_2408D4B10();
  v83 = sub_2408D4F20();
  v37 = os_log_type_enabled(v36, v83);
  v88 = *(v0 + 680);
  v38 = *(v0 + 664);
  v39 = *(v0 + 648);
  v40 = *(v0 + 640);
  v41 = *(v0 + 624);
  v95 = *(v0 + 616);
  v97 = *(v0 + 632);
  v93 = *(v0 + 608);
  v42 = *(v0 + 600);
  v90 = *(v0 + 552);
  v91 = *(v0 + 592);
  v43 = *(v0 + 536);
  v89 = *(v0 + 528);
  v44 = *(v0 + 504);
  v85 = *(v0 + 496);
  v87 = *(v0 + 520);
  v45 = *(v0 + 456);
  if (v37)
  {
    v81 = *(v0 + 648);
    v46 = swift_slowAlloc();
    v79 = v38;
    v47 = swift_slowAlloc();
    v98 = v47;
    *v46 = 136315138;
    v76 = v41;
    v77 = v40;
    v48 = sub_2408D44B0();
    v50 = v49;
    sub_2408B4AE0(v45, MEMORY[0x277CEDB08]);
    v51 = sub_2408CC504(v48, v50, &v98);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_2407CF000, v36, v83, "Sending response %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x245CC9F60](v47, -1, -1);
    MEMORY[0x245CC9F60](v46, -1, -1);

    (*(v44 + 8))(v87, v85);
    (*(v43 + 8))(v90, v89);
    (*(v42 + 8))(v93, v91);
    (*(v76 + 8))(v97, v95);
    (*(v81 + 8))(v79, v77);
  }

  else
  {

    sub_2408B4AE0(v45, MEMORY[0x277CEDB08]);
    (*(v44 + 8))(v87, v85);
    (*(v43 + 8))(v90, v89);
    (*(v42 + 8))(v93, v91);
    (*(v41 + 8))(v97, v95);
    (*(v39 + 8))(v38, v40);
  }

  v72 = *(v0 + 432);
  sub_2408B309C(*(v0 + 464), v72);
  v73 = *MEMORY[0x277CEDE10];
  v74 = sub_2408D4A50();
  (*(*(v74 - 8) + 104))(v72, v73, v74);

  v70 = *(v0 + 8);
LABEL_25:

  return v70();
}

uint64_t sub_2408B21A4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2408B2274(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_2408B2298, v2, 0);
}

uint64_t sub_2408B2298()
{
  v22 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E507CB8);
  sub_2407EEE04(v1, v0 + 16, &qword_27E507958, &qword_2408D9100);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  sub_2407D9440(v1, &qword_27E507958, &qword_2408D9100);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 8);
    if (v8 == 20)
    {
      v9 = 0xE300000000000000;
      v10 = 7104878;
    }

    else
    {
      v11 = *(v0 + 104);
      v12 = *v11;
      v13 = v11[4];
      *(v0 + 72) = *(v11 + 1);
      *(v0 + 88) = v13;
      *(v0 + 56) = v12;
      *(v0 + 64) = v8;
      sub_2408B2C28();
      v10 = sub_2408D5290();
      v9 = v14;
    }

    v15 = sub_2408CC504(v10, v9, &v21);

    *(v6 + 4) = v15;
    _os_log_impl(&dword_2407CF000, v3, v4, "Received completion request with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v16 = *(v0 + 104);
  *(v0 + 120) = *(*(v0 + 112) + 112);
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *(v17 + 16) = v16;
  v20 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

  v18 = swift_task_alloc();
  *(v0 + 136) = v18;
  *v18 = v0;
  v18[1] = sub_2408B2528;

  return v20(sub_2408B3100, v17);
}

uint64_t sub_2408B2528()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_2408B2718;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_2408B2658;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408B2658()
{
  v1 = *(v0 + 96);
  sub_2408D44C0();
  swift_storeEnumTagMultiPayload();
  v2 = *MEMORY[0x277CEDE10];
  v3 = sub_2408D4A50();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2408B2718()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_2408B2784(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2408B27F8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2408B2828(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = swift_task_alloc();
  v2[9] = v3;
  *v3 = v2;
  v3[1] = sub_2408B28C4;

  return sub_2408A36E0((v2 + 2));
}

uint64_t sub_2408B28C4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 64);

    return MEMORY[0x2822009F8](sub_2408B2A08, v6, 0);
  }
}

uint64_t sub_2408B2A08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  *(v3 + 32) = *(v0 + 48);
  *v3 = v1;
  *(v3 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_2408B2A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2407D379C;

  return sub_240866D9C(a1, a2, a3, a4, v10);
}

uint64_t sub_2408B2AF8(uint64_t a1)
{
  v4 = *(sub_2408D4C40() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2407D379C;

  return sub_2408B2A30(a1, v7, v8, v1 + v5, (v1 + v6));
}

unint64_t sub_2408B2C28()
{
  result = qword_27E5078F0;
  if (!qword_27E5078F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5078F0);
  }

  return result;
}

uint64_t sub_2408B2D2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2407DB6F0;

  return sub_2408B2828(a1, v1);
}

void sub_2408B2DDC(id a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_2407D2028(a1, a2, a3, a4, a5);
  }
}

void sub_2408B2DE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 0x14)
  {
  }
}

uint64_t sub_2408B2EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2408B2F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(sub_2408D3D60() - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = *(v3 + 16);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2407D379C;

  return sub_2408AE4F8(a1, a2, a3, v10, v3 + v9);
}

void sub_2408B305C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 - 21 >= 2)
  {
    sub_2407D2028(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_2408B309C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2408D44C0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2408B3108()
{
  result = qword_27E507978;
  if (!qword_27E507978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507978);
  }

  return result;
}

unint64_t sub_2408B31E8()
{
  result = qword_28130EF48;
  if (!qword_28130EF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130EF48);
  }

  return result;
}

uint64_t sub_2408B3234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2407DB6F0;

  return sub_2407F0714(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2408B32FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2407DB6F0;

  return sub_240895308(a1, v9, v10, v11, v1 + v6, v12, v13, v14);
}

uint64_t sub_2408B346C(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_2408D40F0() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2407DB6F0;

  return sub_24089C6C4(a1, a2, v2 + 16, v2 + v7);
}

uint64_t sub_2408B3554(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2408B35AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2407DB6F0;

  return sub_2407F0014(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_2408B3670(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2407DB6F0;

  return sub_24088C720(a1, v9, v10, v11, v1 + v6, v12, v1 + v8, v13);
}

uint64_t sub_2408B3814(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2407DB6F0;

  return sub_24088A548(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_2408B3974(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2408B39DC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + v5);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2407DB6F0;

  return sub_240893550(a1, v7, v8, v9, v1 + v4, v10, v1 + v6, v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_2408B3B50()
{
  result = qword_27E507A10;
  if (!qword_27E507A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507A10);
  }

  return result;
}

unint64_t sub_2408B3BA4()
{
  result = qword_27E507A18;
  if (!qword_27E507A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507A18);
  }

  return result;
}

void sub_2408B3C10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 0x14)
  {
  }
}

uint64_t sub_2408B3C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2408B3CC0()
{
  result = qword_27E507A28;
  if (!qword_27E507A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507A28);
  }

  return result;
}

uint64_t objectdestroy_81Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_85Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2408B3F3C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2407DB6F0;

  return sub_2408948A8(a1, v9, v10, v11, v1 + v6, v12, v13, v14);
}

uint64_t objectdestroy_93Tm()
{
  v1 = sub_2408D40F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2408B4170(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_2408D40F0() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2407DB6F0;

  return sub_24089BB80(a1, a2, v2 + 16, v2 + v7);
}

uint64_t objectdestroy_78Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_104Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_108Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2408B444C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2407DB6F0;

  return sub_24088BBB8(a1, v9, v10, v11, v1 + v6, v12, v1 + v8, v13);
}

uint64_t objectdestroy_117Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2408B4690(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2407DB6F0;

  return sub_24088A184(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_127Tm()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_132Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v6));

  return MEMORY[0x2821FE8E8](v0, ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2408B496C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + v5);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2407DB6F0;

  return sub_240892CAC(a1, v7, v8, v9, v1 + v4, v10, v1 + v6, v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_2408B4AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2408B4B40(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2408B4B90(void *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = v29 - v5;
  v6 = sub_2408D4260();
  MEMORY[0x28223BE20](v6 - 8);
  v39 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = v29 - v9;
  v10 = sub_2408D4350();
  MEMORY[0x28223BE20](v10 - 8);
  v33 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2408D4FD0();
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x28223BE20](v12);
  v30 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2408D4FC0();
  MEMORY[0x28223BE20](v14);
  v15 = sub_2408D4C70();
  MEMORY[0x28223BE20](v15 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507680, &qword_2408D9330);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2408D71B0;
  *(v16 + 56) = &type metadata for BoolEntitlement;
  *(v16 + 64) = &off_281A84E68;
  *(v16 + 32) = 0xD00000000000002ALL;
  *(v16 + 40) = 0x80000002408DB390;
  *(v16 + 48) = 2;
  *(v2 + 16) = v16;
  type metadata accessor for AuditReport();
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v17 + 112) = 2;
  *(v17 + 116) = 0u;
  *(v17 + 132) = 0u;
  *(v17 + 148) = 1;
  *(v2 + 24) = v17;
  v18 = MEMORY[0x277D84F90];
  *(v2 + 32) = sub_2407F6144(MEMORY[0x277D84F90]);
  v29[1] = sub_2408B31E8();
  sub_2408D4C60();
  v41 = v18;
  sub_2408B4B40(&unk_28130EF50, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80, MEMORY[0x277D83970]);
  sub_2408D5080();
  (*(v31 + 104))(v30, *MEMORY[0x277D85260], v32);
  v19 = sub_2408D4FF0();
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
  v20 = v34;
  *(v2 + 48) = v35;
  *(v2 + 56) = v20;
  *(v2 + 40) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507A38, &qword_2408D9338);
  v21 = v20;

  sub_2408D4340();

  sub_2408D3CC0();
  sub_2407D917C(&qword_27E507A40, &qword_27E507A38, &qword_2408D9338, MEMORY[0x277CED548]);
  v22 = sub_2408D4680();

  *(v3 + 64) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507918, &qword_2408D9068);
  sub_2407D917C(&qword_27E507920, &qword_27E507918, &qword_2408D9068, MEMORY[0x277CED888]);
  v23 = v36;
  sub_2408D4280();

  v24 = v38;
  v25 = v39;
  sub_2408D3F40();
  v26 = v37;
  v27 = v40;
  (*(v37 + 16))(v40, v23, v24);
  (*(v26 + 56))(v27, 0, 1, v24);
  swift_beginAccess();
  sub_2408C70EC(v27, v25);
  swift_endAccess();
  (*(v26 + 8))(v23, v24);
  return v3;
}

uint64_t sub_2408B51EC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_24089E41C(a1, a2, v2);
}

unint64_t sub_2408B52A8()
{
  result = qword_27E507A60;
  if (!qword_27E507A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507A60);
  }

  return result;
}

uint64_t sub_2408B5344()
{
  v0 = sub_2408D4B20();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v34 = &v32 - v3;
  v4 = sub_2408D3FC0();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2408D3FD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2408D3F80();
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2408D4090();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D40A0();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277CED758])
  {
    (*(v15 + 96))(v17, v14);
    v20 = v38;
    v19 = v39;
    (*(v38 + 32))(v6, v17, v39);
    sub_2408D3FA0();
    v21 = sub_2408B5B30();
    (*(v8 + 8))(v10, v7);
    (*(v20 + 8))(v6, v19);
  }

  else if (v18 == *MEMORY[0x277CED750])
  {
    (*(v15 + 96))(v17, v14);
    v22 = v35;
    (*(v35 + 32))(v13, v17, v11);
    sub_2408D3F50();
    v21 = sub_2408B5B30();
    (*(v8 + 8))(v10, v7);
    (*(v22 + 8))(v13, v11);
  }

  else if (v18 == *MEMORY[0x277CED760])
  {
    v23 = v34;
    sub_2408D4920();
    v24 = sub_2408D4B10();
    v25 = sub_2408D4F10();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2407CF000, v24, v25, "BLE connection invalidated after devices were paired. Showing error so user knows to restart the flow.", v26, 2u);
      MEMORY[0x245CC9F60](v26, -1, -1);
    }

    (*(v36 + 8))(v23, v37);
    v21 = 1;
  }

  else
  {
    v27 = v33;
    sub_2408D4920();
    v28 = sub_2408D4B10();
    v29 = sub_2408D4F20();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2407CF000, v28, v29, "BLE connection invalidation is either expected or not meaningful. No further action.", v30, 2u);
      MEMORY[0x245CC9F60](v30, -1, -1);
    }

    (*(v36 + 8))(v27, v37);
    (*(v15 + 8))(v17, v14);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_2408B58C4(void *a1)
{
  v2 = MEMORY[0x277CED360];
  a1[1] = sub_2408B5A20(&qword_27E507A68, MEMORY[0x277CED360], MEMORY[0x277CED358]);
  a1[2] = sub_2408B5A20(&qword_27E507A70, v2, MEMORY[0x277CED378]);
  result = sub_2408B5A20(&qword_27E507A30, v2, MEMORY[0x277CED370]);
  a1[3] = result;
  return result;
}

uint64_t sub_2408B5974(void *a1)
{
  v2 = MEMORY[0x277CED960];
  a1[1] = sub_2408B5A20(&qword_27E507A78, MEMORY[0x277CED960], MEMORY[0x277CED958]);
  a1[2] = sub_2408B5A20(&qword_27E507A80, v2, MEMORY[0x277CED978]);
  result = sub_2408B5A20(&qword_27E507910, v2, MEMORY[0x277CED970]);
  a1[3] = result;
  return result;
}

uint64_t sub_2408B5A20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2408B5B30()
{
  v1 = v0;
  v2 = sub_2408D4B20();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = sub_2408D3FD0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v20 = *(v11 + 16);
  v20(&v41 - v18, v1, v10);
  v21 = (*(v11 + 88))(v19, v10);
  if (v21 != *MEMORY[0x277CED6A0])
  {
    if (v21 == *MEMORY[0x277CED698] || v21 == *MEMORY[0x277CED6A8])
    {
      (*(v11 + 8))(v19, v10);
      goto LABEL_6;
    }

    if (v21 != *MEMORY[0x277CED6B0])
    {
      if (v21 == *MEMORY[0x277CED6B8])
      {
        (*(v11 + 8))(v19, v10);
      }

      else if (v21 != *MEMORY[0x277CED690])
      {
        v31 = v43;
        sub_2408D4920();
        v20(v17, v1, v10);
        v32 = sub_2408D4B10();
        v33 = sub_2408D4F30();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v42 = v33;
          v35 = v34;
          v36 = swift_slowAlloc();
          v46 = v36;
          *v35 = 136315138;
          v20(v14, v17, v10);
          v41 = sub_2408D4D40();
          v38 = v37;
          v39 = *(v11 + 8);
          v39(v17, v10);
          v40 = sub_2408CC504(v41, v38, &v46);

          *(v35 + 4) = v40;
          _os_log_impl(&dword_2407CF000, v32, v42, "No further action for unknown pairing state %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v36);
          MEMORY[0x245CC9F60](v36, -1, -1);
          MEMORY[0x245CC9F60](v35, -1, -1);

          (*(v44 + 8))(v43, v45);
        }

        else
        {

          v39 = *(v11 + 8);
          v39(v17, v10);
          (*(v44 + 8))(v31, v45);
        }

        v39(v19, v10);
        return 0;
      }

      sub_2408D4920();
      v28 = sub_2408D4B10();
      v29 = sub_2408D4F20();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2407CF000, v28, v29, "No further action if pairing has not yet started or was cancelled", v30, 2u);
        MEMORY[0x245CC9F60](v30, -1, -1);
      }

      (*(v44 + 8))(v9, v45);
      return 0;
    }
  }

  (*(v11 + 96))(v19, v10);

  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C0, &qword_2408D91C0) + 48);
  v23 = sub_2408D40F0();
  (*(*(v23 - 8) + 8))(&v19[v22], v23);
LABEL_6:
  sub_2408D4920();
  v24 = sub_2408D4B10();
  v25 = sub_2408D4F10();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2407CF000, v24, v25, "BLE connection was invalidated while device was in a pairing code step. Showing error so user knows to restart.", v26, 2u);
    MEMORY[0x245CC9F60](v26, -1, -1);
  }

  (*(v44 + 8))(v7, v45);
  return 1;
}

uint64_t sub_2408B6100@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030);
  MEMORY[0x28223BE20](v6 - 8);
  v24 = &v21 - v7;
  v8 = sub_2408D4260();
  MEMORY[0x28223BE20](v8 - 8);
  v23 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = sub_2408D3630();
  MEMORY[0x28223BE20](v14 - 8);
  type metadata accessor for AuditReport();
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v15 + 112) = 2;
  *(v15 + 116) = 0u;
  *(v15 + 132) = 0u;
  *(v15 + 148) = 1;
  *a3 = v15;
  v25[0] = sub_2407F6144(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AA0, &qword_2408D9480);
  swift_allocObject();
  a3[8] = sub_2408D4A70();
  v25[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AA8, &qword_2408D9488);
  swift_allocObject();
  a3[9] = sub_2408D4A70();
  a3[1] = a1;
  sub_2407D91C4(a2, (a3 + 3));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AB0, &qword_2408D9490);

  sub_2408D3550();

  sub_2408D3CC0();
  sub_2407D917C(&qword_27E507AB8, &qword_27E507AB0, &qword_2408D9490, MEMORY[0x277CED548]);
  v16 = sub_2408D4680();

  a3[2] = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
  sub_2407D917C(&qword_27E506DC0, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED888]);
  sub_2408D4280();

  v17 = v23;
  sub_2408D3F40();
  v18 = v24;
  (*(v11 + 16))(v24, v13, v10);
  (*(v11 + 56))(v18, 0, 1, v10);
  v19 = sub_2408D4A80();
  sub_2408C70EC(v18, v17);
  v19(v25, 0);

  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2408B653C()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E507A88);
  __swift_project_value_buffer(v0, qword_27E507A88);
  return sub_2408D4910();
}

uint64_t sub_2408B6588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = sub_2408D4290();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AC0, &unk_2408D94B0);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_2408D4B20();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408B676C, 0, 0);
}

uint64_t sub_2408B676C(uint64_t a1)
{
  v45 = v1;
  v2 = v1[16];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[3];
  sub_2408D4900();
  v6 = *(v4 + 16);
  v1[22] = v6;
  v1[23] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43 = v6;
  v6(v2, v5, v3);

  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();

  if (os_log_type_enabled(v7, v8))
  {
    v40 = v1[18];
    v41 = v1[17];
    v42 = v1[21];
    v9 = v1[15];
    v37 = v1[16];
    v10 = v1[12];
    v11 = v1[13];
    v38 = v8;
    v12 = v1[4];
    v13 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44 = v39;
    *v13 = 136315394;
    v1[2] = v12;
    sub_2408D4B70();

    v14 = sub_2408D4D40();
    v16 = sub_2408CC504(v14, v15, &v44);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v43(v9, v37, v10);
    v17 = sub_2408D4D40();
    v19 = v18;
    v20 = *(v11 + 8);
    v20(v37, v10);
    v21 = sub_2408CC504(v17, v19, &v44);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_2407CF000, v7, v38, "Sending coordinated model update to session (%s: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v39, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);

    v22 = *(v40 + 8);
    v22(v42, v41);
  }

  else
  {
    v23 = v1[21];
    v24 = v1[17];
    v25 = v1[18];
    v26 = v1[16];
    v27 = v1[12];
    v28 = v1[13];

    v20 = *(v28 + 8);
    v20(v26, v27);
    v22 = *(v25 + 8);
    v22(v23, v24);
  }

  v1[24] = v20;
  v1[25] = v22;
  v29 = v1[10];
  v30 = v1[5];
  v31 = v1[6];
  v43(v29, v1[3], v1[12]);
  (*(v31 + 104))(v29, *MEMORY[0x277CED8E0], v30);
  v32 = swift_task_alloc();
  v1[26] = v32;
  v33 = MEMORY[0x277CED910];
  sub_2408BDBD8(&qword_27E5076C8, MEMORY[0x277CED910], MEMORY[0x277CED918]);
  sub_2408BDBD8(&qword_27E5076B8, v33, MEMORY[0x277CED920]);
  *v32 = v1;
  v32[1] = sub_2408B6B2C;
  v35 = v1[10];
  v34 = v1[11];

  return MEMORY[0x282140020](v34, v35);
}

uint64_t sub_2408B6B2C()
{
  v2 = *v1;
  v2[27] = v0;

  v3 = v2[10];
  v4 = v2[6];
  v5 = v2[5];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = sub_240860394;
  }

  else
  {
    v2[28] = v7;
    v2[29] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = sub_2408B6CAC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2408B6CAC()
{
  v57 = v0;
  v1 = v0[28];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v4 + 16);
  v5(v2, v0[11], v3);
  LODWORD(v4) = (*(v4 + 88))(v2, v3);
  v6 = *MEMORY[0x277CED908];
  v1(v2, v3);
  if (v4 == v6)
  {
    v7 = v0[22];
    v8 = v0[14];
    v9 = v0[12];
    v10 = v0[3];
    sub_2408D4900();
    v7(v8, v10, v9);
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F20();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[24];
    v15 = v0[14];
    v16 = v0[12];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      v18 = sub_2408D3CA0() & 1;
      v14(v15, v16);
      *(v17 + 4) = v18;
      _os_log_impl(&dword_2407CF000, v11, v12, "Sent model update and received receipt back (expectsResponse: %{BOOL}d)", v17, 8u);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

    else
    {
      v14(v0[14], v0[12]);
    }

    v38 = v0[28];
    v39 = v0[25];
    v40 = v0[20];
    v41 = v0[17];
    v42 = v0[11];
    v43 = v0[5];

    v39(v40, v41);
    v38(v42, v43);

    v44 = v0[1];
  }

  else
  {
    v19 = v0[11];
    v20 = v0[8];
    v21 = v0[5];
    sub_2408D4900();
    v5(v20, v19, v21);
    v22 = sub_2408D4B10();
    v23 = sub_2408D4F30();
    v24 = os_log_type_enabled(v22, v23);
    v55 = v0[28];
    v25 = v0[25];
    v26 = v0[19];
    v27 = v0[17];
    v28 = v0[8];
    if (v24)
    {
      v54 = v0[17];
      v29 = v0[7];
      v30 = v0[5];
      v53 = v0[19];
      v31 = swift_slowAlloc();
      v52 = v25;
      v32 = swift_slowAlloc();
      v56 = v32;
      *v31 = 136315138;
      v5(v29, v28, v30);
      v33 = sub_2408D4D40();
      v34 = v23;
      v36 = v35;
      v55(v28, v30);
      v37 = sub_2408CC504(v33, v36, &v56);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_2407CF000, v22, v34, "Failed to send model update via session, got unexpected response back: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x245CC9F60](v32, -1, -1);
      MEMORY[0x245CC9F60](v31, -1, -1);

      v52(v53, v54);
    }

    else
    {
      v45 = v0[5];

      v55(v28, v45);
      v25(v26, v27);
    }

    v46 = v0[28];
    v47 = v0[11];
    v48 = v0[5];
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D50, &qword_2408D6D00);
    sub_2407D917C(&qword_27E506D58, &qword_27E506D50, &qword_2408D6D00, MEMORY[0x277CED528]);
    swift_allocError();
    *v50 = 0xD000000000000031;
    v50[1] = 0x80000002408DAEE0;
    (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277CED518], v49);
    swift_willThrow();
    v46(v47, v48);

    v44 = v0[1];
  }

  return v44();
}

uint64_t sub_2408B7244(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = sub_2408D4B20();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v5 = sub_2408D4230();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v6 = sub_2408D4220();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AD0, &qword_2408D9600);
  v3[38] = swift_task_alloc();
  v7 = sub_2408D4C00();
  v3[39] = v7;
  v3[40] = *(v7 - 8);
  v3[41] = swift_task_alloc();
  v8 = sub_2408D47F0();
  v3[42] = v8;
  v3[43] = *(v8 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AD8, &qword_2408D9608);
  v3[49] = v9;
  v3[50] = *(v9 - 8);
  v3[51] = swift_task_alloc();
  v10 = sub_2408D3A60();
  v3[52] = v10;
  v3[53] = *(v10 - 8);
  v3[54] = swift_task_alloc();
  v11 = sub_2408D3630();
  v3[55] = v11;
  v3[56] = *(v11 - 8);
  v3[57] = swift_task_alloc();
  v12 = sub_2408D4290();
  v3[58] = v12;
  v3[59] = *(v12 - 8);
  v3[60] = swift_task_alloc();
  v13 = sub_2408D3490();
  v3[61] = v13;
  v3[62] = *(v13 - 8);
  v3[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408B7720, 0, 0);
}

uint64_t sub_2408B7720()
{
  v193 = v0;
  v192[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  (*(v2 + 104))(v1, *MEMORY[0x277CED228], v3);
  v4 = sub_2408D3480();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    sub_2408D4930();
    v17 = sub_2408D4B10();
    v18 = sub_2408D4F30();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2407CF000, v17, v18, "Not allowing mach setup service calls, disabled", v19, 2u);
      MEMORY[0x245CC9F60](v19, -1, -1);
    }

    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 192);

    (*(v21 + 8))(v20, v22);
    sub_2408BDAD8();
    swift_allocError();
    swift_willThrow();
    goto LABEL_11;
  }

  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v7 = *(v0 + 464);
  (*(v6 + 16))(v5, *(v0 + 176), v7);
  v8 = (*(v6 + 88))(v5, v7);
  if (v8 == *MEMORY[0x277CED8F0])
  {
    v9 = *(v0 + 480);
    v10 = *(v0 + 456);
    v11 = *(v0 + 440);
    v12 = *(v0 + 448);
    (*(*(v0 + 472) + 96))(v9, *(v0 + 464));
    (*(v12 + 32))(v10, v9, v11);
    v13 = swift_task_alloc();
    *(v0 + 512) = v13;
    *v13 = v0;
    v13[1] = sub_2408B8D08;
    v14 = *(v0 + 456);
    v15 = *(v0 + 432);

    return sub_2408B9D88(v15, v14);
  }

  if (v8 == *MEMORY[0x277CED8F8])
  {
    v24 = *(v0 + 472);
    v23 = *(v0 + 480);
    v25 = *(v0 + 464);
    (*(v24 + 56))(*(v0 + 168), 1, 1, v25);
    (*(v24 + 8))(v23, v25);
LABEL_11:

    v26 = *(v0 + 8);

    return v26();
  }

  if (v8 == *MEMORY[0x277CED8C8])
  {
    v27 = *(v0 + 480);
    v28 = *(v0 + 384);
    v29 = *(v0 + 336);
    v30 = *(v0 + 344);
    v31 = *(v0 + 312);
    v32 = *(v0 + 320);
    v33 = *(v0 + 304);
    (*(*(v0 + 472) + 96))(v27, *(v0 + 464));
    v34 = *(v30 + 32);
    v34(v28, v27, v29);
    sub_2408D47E0();
    if ((*(v32 + 48))(v33, 1, v31) == 1)
    {
      sub_2407D9440(*(v0 + 304), &qword_27E507AD0, &qword_2408D9600);
      if (qword_27E506970 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v0 + 192), qword_27E507A88);
      v35 = sub_2408D4B10();
      v36 = sub_2408D4F30();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2407CF000, v35, v36, "Unable to launch view service without CBDevice xpc representation", v37, 2u);
        MEMORY[0x245CC9F60](v37, -1, -1);
      }

      v38 = *(v0 + 384);
      v39 = *(v0 + 336);
      v40 = *(v0 + 344);

      v41 = sub_2408D3500();
      sub_2408BDBD8(qword_27E506DC8, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      swift_allocError();
      (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277CED2D0], v41);
      swift_willThrow();
      (*(v40 + 8))(v38, v39);
    }

    else
    {
      (*(*(v0 + 320) + 32))(*(v0 + 328), *(v0 + 304), *(v0 + 312));
      if (qword_27E506970 != -1)
      {
        swift_once();
      }

      v66 = *(v0 + 376);
      v67 = *(v0 + 384);
      v68 = *(v0 + 336);
      v69 = *(v0 + 344);
      __swift_project_value_buffer(*(v0 + 192), qword_27E507A88);
      v70 = *(v69 + 16);
      v70(v66, v67, v68);
      v71 = sub_2408D4B10();
      v72 = sub_2408D4F20();
      v73 = os_log_type_enabled(v71, v72);
      v74 = *(v0 + 376);
      v187 = v70;
      v182 = v34;
      if (v73)
      {
        v75 = *(v0 + 368);
        v77 = *(v0 + 336);
        v76 = *(v0 + 344);
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v80 = v70;
        v81 = v79;
        v192[0] = v79;
        *v78 = 136315138;
        v80(v75, v74, v77);
        v82 = sub_2408D4D40();
        v84 = v83;
        v189 = *(v76 + 8);
        v189(v74, v77);
        v85 = sub_2408CC504(v82, v84, v192);

        *(v78 + 4) = v85;
        _os_log_impl(&dword_2407CF000, v71, v72, "Asked to launch view service with configuration: %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v81);
        MEMORY[0x245CC9F60](v81, -1, -1);
        MEMORY[0x245CC9F60](v78, -1, -1);
      }

      else
      {
        v96 = *(v0 + 336);
        v97 = *(v0 + 344);

        v189 = *(v97 + 8);
        v189(v74, v96);
      }

      v98 = sub_2408D4BF0();
      v99 = objc_allocWithZone(MEMORY[0x277CBE020]);
      *(v0 + 160) = 0;
      v100 = [v99 initWithXPCObject:v98 error:v0 + 160];
      v101 = *(v0 + 160);
      v102 = *(v0 + 384);
      if (v100)
      {
        v103 = v100;
        v104 = *(v0 + 360);
        v179 = *(v0 + 352);
        v105 = *(v0 + 336);
        v106 = v101;
        v181 = v103;
        v107 = [v103 dictionaryRepresentation];
        v108 = sub_2408D4CB0();

        v187(v104, v102, v105);
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AE8, &qword_2408D9610);
        v110 = objc_allocWithZone(v109);
        v111 = &v110[qword_27E507BB8];
        *v111 = nullsub_1;
        v111[1] = 0;
        v112 = &v110[qword_27E507BC0];
        *v112 = nullsub_1;
        v112[1] = 0;
        v113 = &v110[qword_27E507BC8];
        *v113 = nullsub_1;
        v113[1] = 0;
        *(v0 + 120) = v110;
        *(v0 + 128) = v109;
        v114 = objc_msgSendSuper2((v0 + 120), sel_init);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AF0, &qword_2408D9618);
        v115 = swift_allocObject();
        *(v115 + qword_27E50ADE0) = 0;
        v182(v115 + qword_27E50ADD0, v104, v105);
        *(v115 + qword_27E50ADD8) = v114;
        *(v115 + qword_27E50ADE0) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507AF8, &qword_2408D9620);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2408D71B0;
        *(v0 + 136) = 0x656369766564;
        *(v0 + 144) = 0xE600000000000000;
        sub_2408D50D0();
        *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507B00, &qword_2408D9628);
        *(inited + 72) = v108;

        v117 = sub_2407F659C(inited);
        swift_setDeallocating();
        sub_2407D9440(inited + 32, &unk_27E506FE0, &qword_2408D9630);
        sub_2408BD1F8(v117);

        v187(v179, v102, v105);

        v118 = sub_2408D4B10();
        v119 = sub_2408D4F10();

        v120 = os_log_type_enabled(v118, v119);
        v185 = *(v0 + 384);
        if (v120)
        {
          v121 = *(v0 + 368);
          v122 = *(v0 + 352);
          v123 = *(v0 + 336);
          v180 = *(v0 + 320);
          v183 = *(v0 + 312);
          v184 = *(v0 + 328);
          v124 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          v192[0] = v178;
          *v124 = 136315394;
          v187(v121, v122, v123);
          v125 = sub_2408D4D40();
          v127 = v126;
          v189(v122, v123);
          v128 = sub_2408CC504(v125, v127, v192);

          *(v124 + 4) = v128;
          *(v124 + 12) = 2080;
          v129 = sub_2408D4CC0();
          v131 = v130;

          v132 = sub_2408CC504(v129, v131, v192);

          *(v124 + 14) = v132;
          _os_log_impl(&dword_2407CF000, v118, v119, "Launched view service with configuration: %s and device dictionary: %s", v124, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245CC9F60](v178, -1, -1);
          MEMORY[0x245CC9F60](v124, -1, -1);

          swift_unknownObjectRelease();
          (*(v180 + 8))(v184, v183);
          v189(v185, v123);
        }

        else
        {
          v163 = *(v0 + 352);
          v165 = *(v0 + 328);
          v164 = *(v0 + 336);
          v166 = *(v0 + 312);
          v167 = *(v0 + 320);

          swift_unknownObjectRelease();
          v189(v163, v164);
          (*(v167 + 8))(v165, v166);
          v189(v185, v164);
        }

        v168 = *(v0 + 464);
        v169 = *(v0 + 472);
        v170 = *(v0 + 168);
        (*(v169 + 104))(v170, *MEMORY[0x277CED908], v168);
        (*(v169 + 56))(v170, 0, 1, v168);
      }

      else
      {
        v151 = *(v0 + 336);
        v152 = *(v0 + 320);
        v153 = *(v0 + 328);
        v154 = *(v0 + 312);
        v155 = v101;
        sub_2408D33F0();

        swift_willThrow();
        swift_unknownObjectRelease();
        (*(v152 + 8))(v153, v154);
        v189(v102, v151);
      }
    }

    goto LABEL_11;
  }

  if (v8 == *MEMORY[0x277CED8D0])
  {
    v43 = *(v0 + 480);
    v44 = *(v0 + 296);
    v45 = *(v0 + 256);
    v46 = *(v0 + 264);
    (*(*(v0 + 472) + 96))(v43, *(v0 + 464));
    (*(v46 + 32))(v44, v43, v45);
    sub_2408D4A90();
    v47 = *(v0 + 152);
    *(v0 + 536) = v47;
    if (!v47)
    {
      if (qword_27E506970 != -1)
      {
        swift_once();
      }

      v133 = *(v0 + 296);
      v135 = *(v0 + 264);
      v134 = *(v0 + 272);
      v136 = *(v0 + 256);
      __swift_project_value_buffer(*(v0 + 192), qword_27E507A88);
      v137 = *(v135 + 16);
      v137(v134, v133, v136);
      v138 = sub_2408D4B10();
      v139 = sub_2408D4F30();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = *(v0 + 272);
        v141 = *(v0 + 280);
        v142 = *(v0 + 256);
        v143 = *(v0 + 264);
        v144 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v192[0] = v190;
        *v144 = 136315138;
        v137(v141, v140, v142);
        v145 = sub_2408D4D40();
        v147 = v146;
        v148 = v142;
        v149 = *(v143 + 8);
        v149(v140, v148);
        v150 = sub_2408CC504(v145, v147, v192);

        *(v144 + 4) = v150;
        _os_log_impl(&dword_2407CF000, v138, v139, "Unable to receive peer anisette request, no remote setup service: %s", v144, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v190);
        MEMORY[0x245CC9F60](v190, -1, -1);
        MEMORY[0x245CC9F60](v144, -1, -1);
      }

      else
      {
        v172 = *(v0 + 264);
        v171 = *(v0 + 272);
        v173 = *(v0 + 256);

        v149 = *(v172 + 8);
        v149(v171, v173);
      }

      v174 = *(v0 + 296);
      v175 = *(v0 + 256);
      v176 = sub_2408D3500();
      sub_2408BDBD8(qword_27E506DC8, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      swift_allocError();
      (*(*(v176 - 8) + 104))(v177, *MEMORY[0x277CED2A8], v176);
      swift_willThrow();
      v149(v174, v175);
      goto LABEL_11;
    }

    if (qword_27E506970 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 288);
    v48 = *(v0 + 296);
    v50 = *(v0 + 256);
    v51 = *(v0 + 264);
    *(v0 + 544) = __swift_project_value_buffer(*(v0 + 192), qword_27E507A88);
    v52 = *(v51 + 16);
    v52(v49, v48, v50);
    v53 = sub_2408D4B10();
    v54 = sub_2408D4F10();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 288);
    if (v55)
    {
      v57 = *(v0 + 280);
      v188 = v54;
      v59 = *(v0 + 256);
      v58 = *(v0 + 264);
      v60 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v192[0] = v186;
      *v60 = 136315138;
      v52(v57, v56, v59);
      v61 = sub_2408D4D40();
      v63 = v62;
      v64 = *(v58 + 8);
      v64(v56, v59);
      v65 = sub_2408CC504(v61, v63, v192);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_2407CF000, v53, v188, "Sending peer anisette request: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v186);
      MEMORY[0x245CC9F60](v186, -1, -1);
      MEMORY[0x245CC9F60](v60, -1, -1);
    }

    else
    {
      v156 = *(v0 + 256);
      v157 = *(v0 + 264);

      v64 = *(v157 + 8);
      v64(v56, v156);
    }

    *(v0 + 552) = v64;
    v158 = sub_2408D3F00();
    *(v0 + 560) = v159;
    v191 = (v158 + *v158);
    v160 = swift_task_alloc();
    *(v0 + 568) = v160;
    *v160 = v0;
    v160[1] = sub_2408B94E8;
    v161 = *(v0 + 296);
    v162 = *(v0 + 248);

    return v191(v162, v161);
  }

  else
  {
    v87 = *(v0 + 472);
    v86 = *(v0 + 480);
    v88 = *(v0 + 464);
    if (v8 != *MEMORY[0x277CED8E8])
    {
      (*(v87 + 56))(*(v0 + 168), 1, 1, *(v0 + 464));
      (*(v87 + 8))(v86, v88);
      goto LABEL_11;
    }

    v90 = *(v0 + 400);
    v89 = *(v0 + 408);
    v91 = *(v0 + 392);
    (*(v87 + 96))(*(v0 + 480), *(v0 + 464));
    (*(v90 + 32))(v89, v86, v91);
    v92 = MEMORY[0x277CED878];
    v93 = *MEMORY[0x277CED878];
    v94 = swift_task_alloc();
    *(v0 + 528) = v94;
    *v94 = v0;
    v94[1] = sub_2408B9064;
    v95 = *(v0 + 408);

    return ((v93 + v92))(v95);
  }
}

uint64_t sub_2408B8D08()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_2408B9A0C;
  }

  else
  {
    v2 = sub_2408B8E48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408B8E48()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[54];
  v4 = v0[52];
  v5 = v0[53];
  v6 = v0[21];
  (*(v0[56] + 8))(v0[57], v0[55]);
  (*(v5 + 32))(v6, v3, v4);
  (*(v2 + 104))(v6, *MEMORY[0x277CED8F8], v1);
  (*(v2 + 56))(v6, 0, 1, v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2408B9064(char a1)
{
  *(*v1 + 584) = a1;

  return MEMORY[0x2822009F8](sub_2408B9190, 0, 0);
}

uint64_t sub_2408B9190()
{
  v20 = v0;
  v19[1] = *MEMORY[0x277D85DE8];
  if (qword_27E506970 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 192), qword_27E507A88);
  v1 = sub_2408D4B10();
  v2 = sub_2408D4F20();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 584);
    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v6 = *(v0 + 392);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315138;
    if (v3)
    {
      v9 = 0x6465747065636361;
    }

    else
    {
      v9 = 0x64657463656A6572;
    }

    v10 = sub_2408CC504(v9, 0xE800000000000000, v19);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v1, v2, "Model update was %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v12 = *(v0 + 400);
    v11 = *(v0 + 408);
    v13 = *(v0 + 392);

    (*(v12 + 8))(v11, v13);
  }

  v14 = *(v0 + 464);
  v15 = *(v0 + 472);
  v16 = *(v0 + 168);
  (*(v15 + 104))(v16, *MEMORY[0x277CED908], v14);
  (*(v15 + 56))(v16, 0, 1, v14);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2408B94E8()
{
  *(*v1 + 576) = v0;

  if (v0)
  {

    v2 = sub_2408B9BC0;
  }

  else
  {
    v2 = sub_2408B9638;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408B9638()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[27];
  v4 = v0[28];

  v5 = *(v4 + 16);
  v5(v2, v1, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F10();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[69];
  v10 = v0[37];
  v11 = v0[32];
  v34 = v0[67];
  v12 = v0[30];
  if (v8)
  {
    v32 = v0[32];
    v33 = v0[69];
    v13 = v0[28];
    v14 = v0[29];
    log = v6;
    v15 = v0[27];
    v31 = v0[37];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35[0] = v17;
    *v16 = 136315138;
    v5(v14, v12, v15);
    v18 = sub_2408D4D40();
    v19 = v7;
    v21 = v20;
    (*(v13 + 8))(v12, v15);
    v22 = sub_2408CC504(v18, v21, v35);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_2407CF000, log, v19, "Received peer anisette response: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x245CC9F60](v17, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);

    v33(v31, v32);
  }

  else
  {
    v24 = v0[27];
    v23 = v0[28];

    (*(v23 + 8))(v12, v24);
    v9(v10, v11);
  }

  v25 = v0[58];
  v26 = v0[59];
  v27 = v0[21];
  (*(v0[28] + 32))(v27, v0[31], v0[27]);
  (*(v26 + 104))(v27, *MEMORY[0x277CED8D8], v25);
  (*(v26 + 56))(v27, 0, 1, v25);

  v28 = v0[1];

  return v28();
}

uint64_t sub_2408B9A0C()
{
  (*(v0[56] + 8))(v0[57], v0[55]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2408B9BC0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 296);
  v3 = *(v0 + 256);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2408B9D88(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_2408D35F0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_2408D34E0();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v3[16] = swift_task_alloc();
  v6 = sub_2408D3630();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408B9F3C, 0, 0);
}

uint64_t sub_2408B9F3C()
{
  (*(v0[18] + 16))(v0[19], v0[8], v0[17]);
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_2408B9FF4;
  v2 = v0[19];
  v3 = v0[7];

  return sub_2408BA8A8(v3, v2);
}

uint64_t sub_2408B9FF4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2408BA1AC;
  }

  else
  {
    v2 = sub_2408BA108;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408BA108()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2408BA1AC()
{
  v1 = *(v0 + 168);
  *(v0 + 48) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (!swift_dynamicCast())
  {
LABEL_8:
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v9 = *(v0 + 8);

    return v9();
  }

  if (sub_2408D35A0())
  {
    if (qword_27E506970 != -1)
    {
      swift_once();
    }

    v3 = sub_2408D4B20();
    __swift_project_value_buffer(v3, qword_27E507A88);
    v4 = sub_2408D4B10();
    v5 = sub_2408D4F30();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2407CF000, v4, v5, "Throwing custom manual implementation error", v6, 2u);
      MEMORY[0x245CC9F60](v6, -1, -1);
    }

    v7 = sub_2408D3500();
    sub_2408BDBD8(qword_27E506DC8, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CED2B8], v7);
    swift_willThrow();
    goto LABEL_8;
  }

  if (qword_27E506970 != -1)
  {
    swift_once();
  }

  v11 = sub_2408D4B20();
  __swift_project_value_buffer(v11, qword_27E507A88);
  v12 = sub_2408D4B10();
  v13 = sub_2408D4F20();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2407CF000, v12, v13, "Creating manual model modifications and calling setup again", v14, 2u);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = *(v0 + 112);
  v19 = *(v0 + 88);
  v18 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 80);

  v20 = sub_2408D3970();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = sub_2408D3510();
  sub_2408D4640();
  v21(v0 + 16, 0);
  (*(v17 + 104))(v16, *MEMORY[0x277CED230], v25);
  sub_2408D3590();
  (*(v19 + 104))(v18, *MEMORY[0x277CED350], v26);
  sub_2408D3620();
  v22 = swift_task_alloc();
  *(v0 + 176) = v22;
  *v22 = v0;
  v22[1] = sub_2408BA630;
  v23 = *(v0 + 152);
  v24 = *(v0 + 56);

  return sub_2408BA8A8(v24, v23);
}

uint64_t sub_2408BA630()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2408BA7F0;
  }

  else
  {
    v2 = sub_2408BA744;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408BA744()
{
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408BA7F0()
{
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408BA8A8(uint64_t a1, uint64_t a2)
{
  v3[63] = a2;
  v3[64] = v2;
  v3[62] = a1;
  v3[65] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507B08, &qword_2408D9658);
  v3[66] = swift_task_alloc();
  v4 = sub_2408D34E0();
  v3[67] = v4;
  v3[68] = *(v4 - 8);
  v3[69] = swift_task_alloc();
  v5 = sub_2408D35F0();
  v3[70] = v5;
  v3[71] = *(v5 - 8);
  v3[72] = swift_task_alloc();
  v6 = sub_2408D3A60();
  v3[73] = v6;
  v3[74] = *(v6 - 8);
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030);
  v3[79] = swift_task_alloc();
  sub_2408D4260();
  v3[80] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v3[81] = v7;
  v3[82] = *(v7 - 8);
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408BAB5C, 0, 0);
}

uint64_t sub_2408BAB5C()
{
  v0[85] = *(v0[64] + 16);
  v4 = (*MEMORY[0x277CED868] + MEMORY[0x277CED868]);
  v1 = swift_task_alloc();
  v0[86] = v1;
  *v1 = v0;
  v1[1] = sub_2408BAC10;
  v2 = v0[63];

  return v4(v2);
}

uint64_t sub_2408BAC10()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2408BADFC, 0, 0);
  }
}

id sub_2408BADFC()
{
  v1 = v0;
  v65 = objc_opt_self();
  v84 = [v65 sharedInstance];
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = *(v0 + 672);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v66 = *(v0 + 640);
  v67 = *(v0 + 632);
  v7 = *(v0 + 568);
  v78 = *(v0 + 560);
  v69 = *(v0 + 576);
  v71 = *(v0 + 552);
  v80 = *(v0 + 544);
  v81 = *(v0 + 536);
  v73 = *(v0 + 520);
  v76 = *(v0 + 528);
  v68 = *(v0 + 512);
  v8 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

  v9 = sub_2408D4150();
  *(v0 + 16) = sub_2408D4140();
  v10 = MEMORY[0x277CED7C0];
  v63 = v9;
  *(v0 + 40) = v9;
  *(v0 + 48) = v10;
  type metadata accessor for LocalSetupService();
  v11 = swift_allocObject();
  *(v0 + 696) = v11;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 112) = 0;
  *(v11 + 120) = sub_2407FF270;
  *(v11 + 48) = 0;
  *(v11 + 56) = v84;
  *(v11 + 64) = v8;
  v12 = v11;
  sub_2407D2554((v0 + 16), v11 + 72);
  v85 = v12;
  *(v0 + 464) = v12;
  sub_2408BDBD8(&qword_27E5070B8, type metadata accessor for LocalSetupService, &unk_2408D7494);
  sub_2408D3650();
  sub_2408D3F40();
  v64 = *(v5 + 16);
  v64(v67, v4, v6);
  v13 = *(v5 + 56);
  *(v0 + 704) = v13;
  *(v0 + 712) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14 = v6;
  v15 = v13;
  v13(v67, 0, 1, v14);
  *(v0 + 720) = *(v68 + 64);
  v16 = sub_2408D4A80();
  sub_2408C70EC(v67, v66);
  v16(v0 + 136, 0);
  sub_2408D3610();
  sub_2408D3580();
  v17 = *(v73 + 48);
  *(v0 + 776) = v17;
  (*(v7 + 32))(v76, v69, v78);
  (*(v80 + 32))(v76 + v17, v71, v81);
  v18 = (*(v7 + 88))(v76, v78);
  if (v18 == *MEMORY[0x277CED350])
  {
    if ((*(*(v0 + 544) + 88))(v76 + v17, *(v0 + 536)) == *MEMORY[0x277CED230])
    {
      if (qword_27E506970 != -1)
      {
        swift_once();
      }

      v19 = sub_2408D4B20();
      __swift_project_value_buffer(v19, qword_27E507A88);
      v20 = sub_2408D4B10();
      v21 = sub_2408D4F10();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2407CF000, v20, v21, "Restricted to local setup", v22, 2u);
        MEMORY[0x245CC9F60](v22, -1, -1);
      }

      v23 = swift_task_alloc();
      *(v1 + 728) = v23;
      *v23 = v1;
      v23[1] = sub_2408BBA00;
      v24 = *(v1 + 680);
      v25 = *(v1 + 616);

      return sub_2407F7188(v25, v24);
    }

    goto LABEL_20;
  }

  if (v18 != *MEMORY[0x277CED348] || (*(*(v0 + 544) + 88))(v76 + v17, *(v0 + 536)) != *MEMORY[0x277CED230])
  {
LABEL_20:
    if (qword_27E506970 != -1)
    {
      swift_once();
    }

    v39 = sub_2408D4B20();
    __swift_project_value_buffer(v39, qword_27E507A88);
    v40 = sub_2408D4B10();
    v41 = sub_2408D4F10();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2407CF000, v40, v41, "Remote setup is not restricted, proceeding", v42, 2u);
      MEMORY[0x245CC9F60](v42, -1, -1);
    }

    v83 = v15;

    v75 = [v65 sharedInstance];
    v72 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
    v43 = sub_2408D46B0();
    swift_allocObject();
    v44 = sub_2408D46A0();
    v45 = MEMORY[0x277CEDCC0];
    *(v1 + 80) = v43;
    *(v1 + 88) = v45;
    *(v1 + 56) = v44;
    if (qword_27E506910 != -1)
    {
      swift_once();
    }

    v46 = *(v1 + 664);
    v47 = *(v1 + 648);
    v70 = *(v1 + 640);
    v48 = *(v1 + 632);
    v79 = *(v1 + 512);
    v49 = qword_27E506C40;
    type metadata accessor for ProximityTransportConnector();
    v50 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v50 + 152) = 0;
    *(v50 + 136) = 0u;
    *(v50 + 120) = 0u;
    *(v50 + 112) = v49;
    v51 = sub_2408D4140();
    *(v1 + 120) = v63;
    *(v1 + 128) = MEMORY[0x277CED7C0];
    *(v1 + 96) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507460, &unk_2408D7F00);
    v52 = swift_allocObject();
    *(v1 + 744) = v52;
    swift_defaultActor_initialize();
    *(v52 + 15) = 0;
    v53 = MEMORY[0x277D84FA0];
    *(v52 + 23) = MEMORY[0x277D84FA0];
    *(v52 + 24) = v53;
    *(v52 + 30) = 0;
    *(v52 + 31) = 0;
    *(v52 + 32) = sub_2407F5454(MEMORY[0x277D84F90]);
    v54 = *(*v52 + 208);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
    (*(*(v55 - 8) + 56))(&v52[v54], 1, 1, v55);
    *(v52 + 14) = v85;
    *(v52 + 16) = v72;
    *(v52 + 17) = v75;
    swift_beginAccess();
    *(v52 + 15) = v50;

    sub_2407D2554((v1 + 56), (v52 + 200));
    sub_2407D2554((v1 + 96), (v52 + 144));
    sub_2407D917C(&qword_27E507628, &qword_27E507460, &unk_2408D7F00, &unk_2408D6BD8);
    sub_2408D4280();
    sub_2408D3F40();
    v64(v48, v46, v47);
    v83(v48, 0, 1, v47);
    v56 = sub_2408D4A80();
    sub_2408C70EC(v48, v70);
    v56(v1 + 168, 0);
    swift_allocObject();
    swift_weakInit();
    v57 = objc_allocWithZone(sub_2408D3F20());
    v58 = sub_2408D3EF0();
    *(v1 + 752) = *(v79 + 72);
    *(v1 + 472) = v58;
    v59 = v58;
    sub_2408D4AA0();

    v60 = swift_task_alloc();
    *(v1 + 760) = v60;
    *v60 = v1;
    v60[1] = sub_2408BBEAC;
    v61 = *(v1 + 680);
    v62 = *(v1 + 608);

    return (sub_240813C98)(v62, v61, 0);
  }

  if (qword_27E506970 != -1)
  {
    swift_once();
  }

  v82 = v15;
  v26 = sub_2408D4B20();
  __swift_project_value_buffer(v26, qword_27E507A88);
  v27 = sub_2408D4B10();
  v28 = sub_2408D4F30();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2407CF000, v27, v28, "Both roles are restricted.", v29, 2u);
    MEMORY[0x245CC9F60](v29, -1, -1);
  }

  v30 = *(v1 + 656);
  v31 = *(v1 + 648);
  v32 = *(v1 + 640);
  v33 = *(v1 + 632);
  v34 = *(v1 + 568);
  v74 = *(v1 + 560);
  v77 = *(v1 + 672);
  v35 = *(v1 + 528);

  sub_24080D664();
  swift_allocError();
  *v36 = 0;
  v36[1] = 0;
  swift_willThrow();
  (*(v34 + 8))(v35, v74);
  sub_2408D3F40();
  v82(v33, 1, 1, v31);
  v37 = sub_2408D4A80();
  sub_2408C70EC(v33, v32);
  v37(v1 + 360, 0);

  (*(v30 + 8))(v77, v31);

  v38 = *(v1 + 8);

  return v38();
}

uint64_t sub_2408BBA00()
{
  *(*v1 + 736) = v0;

  if (v0)
  {
    v2 = sub_2408BC714;
  }

  else
  {
    v2 = sub_2408BBB14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408BBB14()
{
  v27 = v0;
  (*(v0[74] + 32))(v0[78], v0[77], v0[73]);
  (*(v0[71] + 8))(v0[66], v0[70]);
  if (qword_27E506970 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E507A88);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[78];
    v5 = v0[75];
    v6 = v0[74];
    v7 = v0[73];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    (*(v6 + 16))(v5, v4, v7);
    v10 = sub_2408D4D40();
    v12 = sub_2408CC504(v10, v11, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v2, v3, "Finished setup with report: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  v13 = v0[84];
  v14 = v0[82];
  v15 = v0[81];
  v16 = v0[80];
  v24 = v0[79];
  v25 = v0[88];
  v17 = v0[78];
  v18 = v0[74];
  v19 = v0[73];
  v20 = v0[62];
  swift_beginAccess();
  (*(v18 + 16))(v20, v17, v19);
  (*(v18 + 8))(v17, v19);
  sub_2408D3F40();
  v25(v24, 1, 1, v15);
  v21 = sub_2408D4A80();
  sub_2408C70EC(v24, v16);
  v21(v0 + 37, 0);

  (*(v14 + 8))(v13, v15);

  v22 = v0[1];

  return v22();
}

uint64_t sub_2408BBEAC()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_2408BC44C;
  }

  else
  {
    v2 = sub_2408BBFC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408BBFC0()
{
  v38 = v0;
  v36 = *(v0 + 776);
  v1 = *(v0 + 704);
  v33 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 544);
  v35 = *(v0 + 536);
  v34 = *(v0 + 528);
  (*(*(v0 + 592) + 32))(*(v0 + 624), *(v0 + 608), *(v0 + 584));
  sub_2408D3F40();
  v1(v5, 1, 1, v3);
  v7 = sub_2408D4A80();
  sub_2408C70EC(v5, v4);
  v7(v0 + 264, 0);
  *(v0 + 488) = 0;
  sub_2408D4AA0();

  (*(v2 + 8))(v33, v3);
  (*(v6 + 8))(v34 + v36, v35);
  (*(*(v0 + 568) + 8))(*(v0 + 528), *(v0 + 560));
  if (qword_27E506970 != -1)
  {
    swift_once();
  }

  v8 = sub_2408D4B20();
  __swift_project_value_buffer(v8, qword_27E507A88);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F10();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 624);
    v12 = *(v0 + 600);
    v13 = *(v0 + 592);
    v14 = *(v0 + 584);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136315138;
    swift_beginAccess();
    (*(v13 + 16))(v12, v11, v14);
    v17 = sub_2408D4D40();
    v19 = sub_2408CC504(v17, v18, &v37);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2407CF000, v9, v10, "Finished setup with report: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x245CC9F60](v16, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);
  }

  v20 = *(v0 + 672);
  v21 = *(v0 + 656);
  v22 = *(v0 + 648);
  v23 = *(v0 + 640);
  v31 = *(v0 + 632);
  v32 = *(v0 + 704);
  v24 = *(v0 + 624);
  v25 = *(v0 + 592);
  v26 = *(v0 + 584);
  v27 = *(v0 + 496);
  swift_beginAccess();
  (*(v25 + 16))(v27, v24, v26);
  (*(v25 + 8))(v24, v26);
  sub_2408D3F40();
  v32(v31, 1, 1, v22);
  v28 = sub_2408D4A80();
  sub_2408C70EC(v31, v23);
  v28(v0 + 296, 0);

  (*(v21 + 8))(v20, v22);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2408BC44C()
{
  v17 = *(v0 + 776);
  v1 = *(v0 + 704);
  v18 = *(v0 + 672);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  v15 = *(v0 + 568);
  v16 = *(v0 + 560);
  v5 = *(v0 + 544);
  v13 = *(v0 + 528);
  v14 = *(v0 + 536);
  sub_2408D3F40();
  v1(v4, 1, 1, v2);
  v6 = sub_2408D4A80();
  sub_2408C70EC(v4, v3);
  v6(v0 + 200, 0);
  *(v0 + 480) = 0;
  sub_2408D4AA0();

  v7 = *(v12 + 8);
  v7(v11, v2);
  (*(v5 + 8))(v13 + v17, v14);
  (*(v15 + 8))(v13, v16);
  sub_2408D3F40();
  v1(v4, 1, 1, v2);
  v8 = sub_2408D4A80();
  sub_2408C70EC(v4, v3);
  v8(v0 + 232, 0);

  v7(v18, v2);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2408BC714()
{
  v1 = v0[88];
  v2 = v0[84];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  (*(v0[71] + 8))(v0[66], v0[70]);
  sub_2408D3F40();
  v1(v6, 1, 1, v4);
  v7 = sub_2408D4A80();
  sub_2408C70EC(v6, v5);
  v7(v0 + 41, 0);

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2408BC8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_2408D4220();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408BC99C, 0, 0);
}

uint64_t sub_2408BC99C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2408BCB04, Strong, 0);
  }

  else
  {
    v2 = sub_2408D3500();
    sub_2408BDBD8(qword_27E506DC8, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277CED2A8], v2);
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2408BCB04()
{
  v1 = *(v0[11] + 240);
  v0[12] = v1;
  if (v1)
  {

    v2 = sub_2408BCC04;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0, &unk_2408D6E90);
    v0[15] = swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v2 = sub_2408BCE44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408BCC04()
{
  (*(v0[9] + 16))(v0[10], v0[6], v0[8]);
  v7 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  v2 = sub_2408BDBD8(&qword_27E506D28, MEMORY[0x277CED828], MEMORY[0x277CED820]);
  *v1 = v0;
  v1[1] = sub_2408BCD10;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[5];

  return v7(v5, v3, v4, v2);
}

uint64_t sub_2408BCD10()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2408BCEB0;
  }

  else
  {
    v2 = sub_2407E818C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408BCE44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408BCEB0()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_2408BCF1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2408D4C40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v19 - v10;
  v12 = sub_2408D4E60();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  sub_240876270(v3, v19);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v7 + 32))(v14 + v13, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = v19[3];
  v15[2] = v19[2];
  v15[3] = v16;
  v15[4] = v19[4];
  v17 = v19[1];
  *v15 = v19[0];
  v15[1] = v17;
  sub_24083AB60(0, 0, v11, &unk_2408D95F0, v14);

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t (*sub_2408BD138(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2408D4A80();
  return sub_2408BD1AC;
}

void sub_2408BD1AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_2408BD1F8(uint64_t a1)
{
  v2 = v1;
  if (qword_27E506978 != -1)
  {
    swift_once();
  }

  v3 = sub_2408D4B20();
  __swift_project_value_buffer(v3, qword_27E507B20);

  v4 = sub_2408D4B10();
  v5 = sub_2408D4F10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v47 = v7;
    *v6 = 136315138;
    v8 = sub_2408D4CC0();
    v10 = sub_2408CC504(v8, v9, &v47);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v4, v5, "Launching view service with user info: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  sub_2408D47C0();
  sub_2408D47D0();
  v11 = objc_allocWithZone(MEMORY[0x277D66BD8]);
  v12 = sub_2408D4D00();

  v13 = sub_2408D4D00();

  v14 = [v11 initWithServiceName:v12 viewControllerClassName:v13];

  v15 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
  v16 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
  v17 = sub_2408D4C90();
  [v15 setUserInfo_];

  v18 = qword_27E50ADE0;
  v19 = *(v2 + qword_27E50ADE0);
  if (v19)
  {
    v20 = *(v2 + qword_27E50ADD8);
    v21 = v19;
    [v21 unregisterObserver_];
    [v21 invalidate];
  }

  v22 = [objc_opt_self() newHandleWithDefinition:v14 configurationContext:v15];
  v23 = *(v2 + v18);
  *(v2 + v18) = v22;

  v24 = sub_2408D4B10();
  v25 = sub_2408D4F10();

  v44 = v14;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = v16;
    v28 = swift_slowAlloc();
    *v26 = 136315138;
    v45 = *(v2 + v18);
    v47 = v28;
    v29 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507B10, &qword_2408D9678);
    v30 = sub_2408D4D40();
    v32 = sub_2408CC504(v30, v31, &v47);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_2407CF000, v24, v25, "Activating a new alert handle: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    v33 = v28;
    v16 = v27;
    MEMORY[0x245CC9F60](v33, -1, -1);
    MEMORY[0x245CC9F60](v26, -1, -1);
  }

  v34 = *(v2 + v18);
  if (v34)
  {
    [v34 registerObserver_];
    v35 = *(v2 + v18);
    if (v35)
    {
      [v35 activateWithContext_];
    }
  }

  v36 = sub_2408D4B10();
  v37 = sub_2408D4F10();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 136315138;
    v46 = *(v2 + v18);
    v47 = v39;
    v40 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507B10, &qword_2408D9678);
    v41 = sub_2408D4D40();
    v43 = sub_2408CC504(v41, v42, &v47);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_2407CF000, v36, v37, "Activated a new alert handle: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x245CC9F60](v39, -1, -1);
    MEMORY[0x245CC9F60](v38, -1, -1);
  }
}

uint64_t sub_2408BD750(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407D379C;

  return sub_2408B6588(a1, a2, v2);
}

uint64_t sub_2408BD7F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2408BD840(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2408BD938(uint64_t a1)
{
  *(a1 + 8) = sub_2408BD968();
  result = sub_2407F6B14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2408BD968()
{
  result = qword_27E507AC8;
  if (!qword_27E507AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507AC8);
  }

  return result;
}

uint64_t sub_2408BD9BC(uint64_t a1)
{
  v4 = *(sub_2408D4C40() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2407D379C;

  return sub_240867CA4(a1, v7, v8, v1 + v5, v1 + v6);
}

unint64_t sub_2408BDAD8()
{
  result = qword_27E507AE0;
  if (!qword_27E507AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507AE0);
  }

  return result;
}

uint64_t sub_2408BDB2C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_2408BC8D8(a1, a2, v2);
}

uint64_t sub_2408BDBD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2408BDC34()
{
  result = qword_27E507B18;
  if (!qword_27E507B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507B18);
  }

  return result;
}

uint64_t sub_2408BDC8C(uint64_t a1)
{
  result = sub_2408D47F0();
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

uint64_t sub_2408BDD34()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E507B20);
  __swift_project_value_buffer(v0, qword_27E507B20);
  return sub_2408D4930();
}

uint64_t sub_2408BDD80()
{
  v1 = qword_27E50ADD0;
  v2 = sub_2408D47F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2408BDE00()
{
  sub_2408BDD80();

  return swift_deallocClassInstance();
}

void sub_2408BDED0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2408BDEBC(v4);
}

uint64_t sub_2408BDF4C(void *a1, const char *a2, void *a3, ...)
{
  v6 = v3;
  if (qword_27E506978 != -1)
  {
    swift_once();
  }

  v8 = sub_2408D4B20();
  __swift_project_value_buffer(v8, qword_27E507B20);
  v9 = a1;
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F10();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_2407CF000, v10, v11, a2, v12, 0xCu);
    sub_2407DB3B0(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  return (*(v6 + *a3))(v9);
}

void sub_2408BE0A4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2408BDF38(v4);
}

uint64_t sub_2408BE10C(void *a1, void *a2)
{
  v3 = v2;
  if (qword_27E506978 != -1)
  {
    swift_once();
  }

  v6 = sub_2408D4B20();
  __swift_project_value_buffer(v6, qword_27E507B20);
  v7 = a1;
  v8 = a2;
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F10();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *v12 = v7;
    *(v11 + 12) = 2080;
    v14 = v7;
    v15 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507CB0, qword_2408D97F8);
    v16 = sub_2408D4D40();
    v18 = sub_2408CC504(v16, v17, &v20);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_2407CF000, v9, v10, "handle: %@ did invalidate with error: %s", v11, 0x16u);
    sub_2407DB3B0(v12);
    MEMORY[0x245CC9F60](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  return (*(v3 + qword_27E507BC8))(v7, a2);
}

void sub_2408BE304(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a1;
  v8 = a4;
  sub_2408BE10C(v6, a4);
}

id sub_2408BE3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ViewServiceLaunchController.RemoteAlertHandleObserver(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2408BE3FC(uint64_t a1)
{
}

uint64_t sub_2408BE4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2407D379C;

  return v9(a1, a2, a3);
}

uint64_t sub_2408BE5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2407DB6F0;

  return v11(a1, a2, a3, a4);
}

void sub_2408BE710(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2408104CC(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_2408BE80C()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E507CB8);
  __swift_project_value_buffer(v0, qword_27E507CB8);
  return sub_2408D48F0();
}

id *sub_2408BE858()
{
  v1 = *v0;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2408B2C28();
  v2 = swift_allocError();
  *v3 = xmmword_2408D73A0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  sub_2408BEA58(v2);

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 16));

  sub_2407D9440(v0 + *(*v0 + 18), &qword_27E507328, &qword_2408D7900);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2408BE9E0(uint64_t a1)
{
  sub_2408BE858();

  return MEMORY[0x282200960](a1);
}

uint64_t sub_2408BEA58(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v11 = sub_2408D4B20();
  __swift_project_value_buffer(v11, qword_27E507CB8);
  v12 = a1;
  v13 = sub_2408D4B10();
  v14 = sub_2408D4F10();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v33 = v4;
    v30 = v17;
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v16 = 136315394;
    v18 = sub_2408D53B0();
    v20 = sub_2408CC504(v18, v19, v35);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = a1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    v23 = v30;
    *v30 = v22;
    _os_log_impl(&dword_2407CF000, v13, v14, "%s handling isolated cancellation with error: %@", v16, 0x16u);
    sub_2407D9440(v23, &qword_27E506AB0, &unk_2408D6830);
    v24 = v23;
    v4 = v33;
    MEMORY[0x245CC9F60](v24, -1, -1);
    v25 = v31;
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x245CC9F60](v25, -1, -1);
    v26 = v16;
    v7 = v32;
    MEMORY[0x245CC9F60](v26, -1, -1);
  }

  v27 = *(*v2 + 144);
  swift_beginAccess();
  sub_2408C26DC(v2 + v27, v10);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_2407D9440(v10, &qword_27E507328, &qword_2408D7900);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_2407D9440(v10, &qword_27E507328, &qword_2408D7900);
    v34 = a1;
    v28 = a1;
    sub_2408D4E90();
    (*(v5 + 8))(v7, v4);
  }

  v34 = a1;
  sub_2408D3640();
  if (*(v2 + *(*v2 + 152)))
  {
    v34 = a1;
    sub_2408D3D80();
    sub_2408C27A8(&qword_27E506DB8, MEMORY[0x277CED5B0], MEMORY[0x277CED5A8]);

    sub_2408D4270();
  }

  v34 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507918, &qword_2408D9068);
  sub_2407D917C(&qword_27E507920, &qword_27E507918, &qword_2408D9068, MEMORY[0x277CED888]);
  sub_2408D4270();
}

uint64_t sub_2408BEF38(uint64_t a1, void *a2)
{
  v3 = sub_2408D42F0();
  MEMORY[0x28223BE20](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = a2;
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (!swift_dynamicCast())
  {
    sub_2408D4440();
  }

  v7 = v12;
  v8 = v13;
  *v5 = v11;
  *(v5 + 1) = v7;
  *(v5 + 4) = v8;
  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408BF02C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_2408D42F0();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408BF0C0, 0, 0);
}

uint64_t sub_2408BF0C0(uint64_t a1)
{
  v2 = v1[5];
  sub_2408D4300();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2408C274C(v2);
  if (EnumCaseMultiPayload == 2)
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v4 = sub_2408D4B20();
    __swift_project_value_buffer(v4, qword_27E507CB8);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F20();
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277CEDCA8];
    if (v7)
    {
      v9 = "Client is remaining in failed state";
LABEL_10:
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v5, v6, v9, v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }
  }

  else
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v10 = sub_2408D4B20();
    __swift_project_value_buffer(v10, qword_27E507CB8);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F20();
    v11 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277CEDCB0];
    if (v11)
    {
      v9 = "Client has decided to proceed from the failure, moving on";
      goto LABEL_10;
    }
  }

  v13 = v1[2];

  v14 = *v8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v15 - 8) + 104))(v13, v14, v15);

  v16 = v1[1];

  return v16();
}

uint64_t sub_2408BF2EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2408D4220();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408BF3B0, v2, 0);
}

uint64_t sub_2408BF3B0()
{
  v1 = *(v0[4] + *(*v0[4] + 152));
  v0[8] = v1;
  if (v1)
  {
    (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
    v14 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

    v2 = swift_task_alloc();
    v0[9] = v2;
    v3 = sub_2408C27A8(&qword_27E506D28, MEMORY[0x277CED828], MEMORY[0x277CED820]);
    *v2 = v0;
    v2[1] = sub_2408BF610;
    v4 = v0[7];
    v5 = v0[5];
    v6 = v0[2];

    return v14(v6, v4, v5, v3);
  }

  else
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E507CB8);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F40();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "We should only be performing an anisette request as part of migration, which should have established the router", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    sub_2408B2C28();
    swift_allocError();
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0;
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2408BF610()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](sub_2408BF91C, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[11] = v4;
    *v4 = v2;
    v4[1] = sub_2408BF784;
    v5 = v2[2];

    return sub_2408BFA30(v5);
  }
}

uint64_t sub_2408BF784()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_2408BF988;
  }

  else
  {
    v4 = sub_2408BF8B0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408BF8B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408BF91C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408BF988()
{
  v1 = *(v0 + 16);

  v2 = sub_2408D4230();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2408BFA30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2408D3980();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_2408D3800();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507D50, &qword_2408D99B8);
  v2[12] = swift_task_alloc();
  v5 = sub_2408D4230();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E507D58, &unk_2408D99C0);
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408BFC58, v1, 0);
}

uint64_t sub_2408BFC58()
{
  v2 = v0 + 15;
  v1 = v0[15];
  v3 = v0[14];
  v5 = v0 + 13;
  v4 = v0[13];
  (*(v3 + 16))(v1, v0[2], v4);
  if ((*(v3 + 88))(v1, v4) != *MEMORY[0x277CED830])
  {
    v19 = v0[14];
LABEL_8:
    (*(v19 + 8))(*v2, *v5);

    v28 = v0[1];

    return v28();
  }

  v2 = v0 + 18;
  v6 = v0[18];
  v7 = v0[17];
  v5 = v0 + 16;
  v8 = v0[16];
  v9 = v0[15];
  (*(v0[14] + 96))(v9, v0[13]);
  (*(v7 + 32))(v6, v9, v8);
  sub_2408D4AD0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[5] + 32))(v0[7], v11, v0[4]);
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[4];
    v15 = v0[5];
    v16 = sub_2408D4B20();
    __swift_project_value_buffer(v16, qword_27E507CB8);
    v38 = *(v15 + 16);
    v38(v12, v13, v14);
    v17 = sub_2408D4B10();
    v39 = sub_2408D4F30();
    v18 = os_log_type_enabled(v17, v39);
    v19 = v0[17];
    v21 = v0[6];
    v20 = v0[7];
    v22 = v0[4];
    v23 = v0[5];
    if (v18)
    {
      log = v17;
      v24 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v24 = 138412290;
      sub_2408C27A8(&qword_27E506D18, MEMORY[0x277CED418], MEMORY[0x277CED430]);
      swift_allocError();
      v36 = v20;
      v38(v25, v21, v22);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = *(v23 + 8);
      v27(v21, v22);
      *(v24 + 4) = v26;
      *v35 = v26;
      _os_log_impl(&dword_2407CF000, log, v39, "Anisette data fetch failed due to error: %@", v24, 0xCu);
      sub_2407D9440(v35, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v35, -1, -1);
      MEMORY[0x245CC9F60](v24, -1, -1);

      v27(v36, v22);
    }

    else
    {

      v34 = *(v23 + 8);
      v34(v21, v22);
      v34(v20, v22);
    }

    goto LABEL_8;
  }

  v30 = v0[10];
  v31 = v0[3];
  (*(v0[9] + 32))(v30, v11, v0[8]);
  v0[19] = *(v31 + 112);
  v32 = swift_task_alloc();
  v0[20] = v32;
  *(v32 + 16) = v30;
  v40 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

  v33 = swift_task_alloc();
  v0[21] = v33;
  *v33 = v0;
  v33[1] = sub_2408C012C;

  return v40(sub_2408C26D4, v32);
}

uint64_t sub_2408C012C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_2408C0378;
  }

  else
  {
    v4 = sub_2408C0298;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408C0298()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2408C0378()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_2408C0460(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v3 = sub_2408D3800();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v81 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2408D3680();
  v80 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v62 - v7;
  v9 = sub_2408D36A0();
  v84 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  v15 = sub_2408D36F0();
  v82 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  sub_2408D4330();
  v19 = sub_2408D3970();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v20 + 48;
  if (v21(v8, 1, v19))
  {
    sub_2407D9440(v8, &unk_27E506A20, &unk_2408D67F0);
LABEL_11:
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v52 = sub_2408D4B20();
    __swift_project_value_buffer(v52, qword_27E507CB8);
    v53 = sub_2408D4B10();
    v54 = sub_2408D4F30();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2407CF000, v53, v54, "Cannot update anisette package because account credential is incorrect", v55, 2u);
      MEMORY[0x245CC9F60](v55, -1, -1);
    }

    return;
  }

  v71 = v22;
  v72 = v21;
  v73 = v19;
  v74 = v18;
  v75 = v17;
  v70 = v12;
  v23 = v81;
  sub_2408D3780();
  sub_2407D9440(v8, &unk_27E506A20, &unk_2408D67F0);
  v24 = v84;
  v25 = (*(v84 + 88))(v14, v9);
  if (v25 != *MEMORY[0x277CED390])
  {
    (*(v24 + 8))(v14, v9);
    goto LABEL_11;
  }

  v64 = v25;
  v26 = *(v24 + 96);
  v65 = v9;
  v26(v14, v9);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507950, &qword_2408D90F8);
  v28 = *(v27 + 48);
  v62 = v27;
  v29 = &v14[*(v27 + 64)];
  v31 = *v29;
  v30 = *(v29 + 1);
  v63 = v31;
  v66 = v30;
  v32 = *(v82 + 32);
  v69 = v15;
  v32(v75, &v14[v28], v15);
  v33 = *(v80 + 8);
  v68 = v80 + 8;
  v67 = v33;
  v33(v14, v83);
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v34 = sub_2408D4B20();
  __swift_project_value_buffer(v34, qword_27E507CB8);
  v35 = sub_2408D4B10();
  v36 = sub_2408D4F10();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v78;
  v39 = v79;
  v40 = v76;
  v41 = v23;
  v42 = v73;
  if (v37)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_2407CF000, v35, v36, "Updating anisette package on model", v43, 2u);
    MEMORY[0x245CC9F60](v43, -1, -1);
  }

  (*(v40 + 16))(v41, v38, v77);
  sub_2408D3670();
  v44 = sub_2408D4320();
  v46 = v72(v45, 1, v42);
  v47 = v75;
  v48 = v69;
  if (v46)
  {

    v44(v85, 0);
    v49 = v39;
    v50 = v82;
    v51 = v83;
  }

  else
  {
    v56 = *(v62 + 48);
    v57 = v70;
    v58 = &v70[*(v62 + 64)];
    v59 = v39;
    v49 = v39;
    v51 = v83;
    (*(v80 + 16))(v70, v59, v83);
    v50 = v82;
    v60 = &v57[v56];
    v47 = v75;
    (*(v82 + 16))(v60, v75, v48);
    v61 = v66;
    *v58 = v63;
    *(v58 + 1) = v61;
    (*(v84 + 104))(v57, v64, v65);
    sub_2408D3790();
    v44(v85, 0);
  }

  v67(v49, v51);
  (*(v50 + 8))(v47, v48);
}

uint64_t sub_2408C0BB4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_2408D42F0();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408C0C48, 0, 0);
}

uint64_t sub_2408C0C48(uint64_t a1)
{
  sub_2408D4300();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  v4 = *(*(v3 - 8) + 104);
  if (EnumCaseMultiPayload == 7)
  {
    v4(v1[2], *MEMORY[0x277CEDCB0], v3);
  }

  else
  {
    v5 = v1[5];
    v4(v1[2], *MEMORY[0x277CEDCA8], v3);
    sub_2408C274C(v5);
  }

  v6 = v1[1];

  return v6();
}

uint64_t sub_2408C0D58()
{
  v0 = sub_2408D42F0();
  MEMORY[0x28223BE20](v0);
  v1 = sub_2408D3FD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2408D4090();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 104))(v4, *MEMORY[0x277CED690], v1);
  sub_2408D3F70();
  (*(v6 + 104))(v8, *MEMORY[0x277CED750], v5);
  v9 = sub_2408D42A0();
  sub_2408D40B0();
  v9(v11, 0);
  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408C0F90(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D4090();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_2408D4130();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_2408D3F80();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_2408D4350();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408C1164, 0, 0);
}

uint64_t sub_2408C1164()
{
  v43 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E507CB8);
  (*(v1 + 16))(v2, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[13];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v12 = 136315138;
    sub_2408C27A8(&qword_27E507910, MEMORY[0x277CED960], MEMORY[0x277CED970]);
    v13 = sub_2408D5220();
    v15 = v14;
    (*(v9 + 8))(v10, v11);
    v16 = sub_2408CC504(v13, v15, &v42);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2407CF000, v6, v7, "askForConfirmationOnParentDevice: Model was updated to %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x245CC9F60](v41, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v17 = v0[8];
  v18 = v0[9];
  v20 = v0[6];
  v19 = v0[7];
  v21 = v0[4];
  v22 = v0[5];
  sub_2408D42B0();
  sub_2408D40A0();
  (*(v17 + 8))(v18, v19);
  if ((*(v22 + 88))(v20, v21) == *MEMORY[0x277CED750])
  {
    v23 = v0[11];
    v24 = v0[12];
    v25 = v0[10];
    v26 = v0[6];
    (*(v0[5] + 96))(v26, v0[4]);
    (*(v23 + 32))(v24, v26, v25);
    v27 = sub_2408D3F60();
    if (v27 == 2)
    {
      v28 = v0[2];
      (*(v0[11] + 8))(v0[12], v0[10]);
      v29 = MEMORY[0x277CEDCA8];
    }

    else
    {
      v33 = v27;
      v34 = sub_2408D4B10();
      v35 = sub_2408D4F10();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 67109120;
        v37 = v33 & 1;
        *(v36 + 4) = v37;
        _os_log_impl(&dword_2407CF000, v34, v35, "Connection decision has been made: %{BOOL}d", v36, 8u);
        MEMORY[0x245CC9F60](v36, -1, -1);
      }

      else
      {

        LOBYTE(v37) = v33 & 1;
      }

      v28 = v0[2];
      (*(v0[11] + 8))(v0[12], v0[10]);
      *v28 = v37;
      v29 = MEMORY[0x277CEDCB0];
    }

    v38 = *v29;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D60, &qword_2408D6D08);
    (*(*(v39 - 8) + 104))(v28, v38, v39);

    v32 = v0[1];
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D50, &qword_2408D6D00);
    sub_2407D917C(&qword_27E506D58, &qword_27E506D50, &qword_2408D6D00, MEMORY[0x277CED528]);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277CED520], v30);
    swift_willThrow();

    v32 = v0[1];
  }

  return v32();
}

uint64_t sub_2408C16B0()
{
  v0 = sub_2408D36A0();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2408D42F0();
  MEMORY[0x28223BE20](v1);
  sub_2408D4480();
  swift_storeEnumTagMultiPayload();
  sub_2408D4310();
  v2 = sub_2408D4320();
  v4 = v3;
  v5 = sub_2408D3970();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    sub_2408D4490();
    sub_2408D3790();
  }

  return v2(v7, 0);
}

uint64_t sub_2408C1824(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_2408D42F0();
  v2[5] = swift_task_alloc();
  v3 = sub_2408D4350();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408C1914, 0, 0);
}

uint64_t sub_2408C1914()
{
  v29 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E507CB8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    sub_2408C27A8(&qword_27E507910, MEMORY[0x277CED960], MEMORY[0x277CED970]);
    v14 = sub_2408D5220();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2408CC504(v14, v16, &v28);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Updated model in migrationInfoReceived: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_2408D4300();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2408C274C(v0[5]);
LABEL_9:
    v19 = v0[2];
    v20 = *MEMORY[0x277CEDCB0];
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
    (*(*(v21 - 8) + 104))(v19, v20, v21);
    goto LABEL_11;
  }

  v22 = v0[5];
  v23 = v0[2];
  v24 = *MEMORY[0x277CEDCA8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  sub_2408C274C(v22);
LABEL_11:

  v26 = v0[1];

  return v26();
}

uint64_t sub_2408C1C54()
{
  v0 = sub_2408D42F0();
  MEMORY[0x28223BE20](v0);
  sub_2408D42D0();
  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408C1CF4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_2408D42F0();
  v2[5] = swift_task_alloc();
  v3 = sub_2408D4350();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408C1DE4, 0, 0);
}

uint64_t sub_2408C1DE4()
{
  v29 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E507CB8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    sub_2408C27A8(&qword_27E507910, MEMORY[0x277CED960], MEMORY[0x277CED970]);
    v14 = sub_2408D5220();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2408CC504(v14, v16, &v28);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Updated model in migrationInfoReceived: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_2408D4300();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2408C274C(v0[5]);
LABEL_9:
    v19 = v0[2];
    v20 = *MEMORY[0x277CEDCB0];
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
    (*(*(v21 - 8) + 104))(v19, v20, v21);
    goto LABEL_11;
  }

  v22 = v0[5];
  v23 = v0[2];
  v24 = *MEMORY[0x277CEDCA8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  sub_2408C274C(v22);
LABEL_11:

  v26 = v0[1];

  return v26();
}

uint64_t sub_2408C2124(uint64_t a1, uint64_t a2)
{
  v2 = sub_2408D42F0();
  MEMORY[0x28223BE20](v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2408D4440();
  v5 = v8;
  *v4 = *&v7[8];
  *(v4 + 1) = v5;
  *(v4 + 4) = v9;
  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408C21DC()
{
  v0 = sub_2408D42F0();
  MEMORY[0x28223BE20](v0);
  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408C2260()
{
  v0 = sub_2408D42F0();
  MEMORY[0x28223BE20](v0);
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E507CB8);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Child received migration step finished command. Updating model to dismiss CFU", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408C23B0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = a2 + 2;
  v5 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = sub_2408D42F0();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 != 20)
  {
    *&v15 = v3;
    *(&v15 + 1) = v4;
    v16 = *v6;
    v17 = v6[2];
    v18 = xmmword_2408D73A0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    sub_2408B3C10(v3, v4, v5, v7, v8);
    if (MEMORY[0x245CC8890](&v15, &v18))
    {
      sub_2407D9440(a2, &qword_27E507958, &qword_2408D9100);
    }

    else
    {
      v12 = v16;
      *v11 = v15;
      *(v11 + 1) = v12;
      *(v11 + 4) = v17;
    }
  }

  swift_storeEnumTagMultiPayload();
  return sub_2408D4310();
}

uint64_t sub_2408C2504(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2407D379C;

  return sub_2408BF2EC(a1, a2);
}

uint64_t sub_2408C25B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AgeMigrationService(0, *(a2 + 80), *(a2 + 88), a4);
  swift_getWitnessTable();
  return sub_2408D4270();
}

uint64_t sub_2408C265C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2408C2698(uint64_t (*a1)(void))
{
  a1();

  return sub_2408D53B0();
}

uint64_t sub_2408C26DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2408C274C(uint64_t a1)
{
  v2 = sub_2408D42F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2408C27A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2408C2834()
{
  v1 = v0;
  v2 = sub_2408D4B20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D4930();
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2407CF000, v6, v7, "ConnectionManager deinit", v8, 2u);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC18AppleIDSetupDaemon17ConnectionManager_aisDaemonServiceListener;
  [*&v1[OBJC_IVAR____TtC18AppleIDSetupDaemon17ConnectionManager_aisDaemonServiceListener] invalidate];
  [*&v1[v9] setDelegate_];
  v10 = type metadata accessor for ConnectionManager();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

id sub_2408C29F4()
{
  v1 = v0;
  v2 = sub_2408D4B20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18AppleIDSetupDaemon17ConnectionManager_aisDaemonServiceListener;
  v7 = [*(v1 + OBJC_IVAR____TtC18AppleIDSetupDaemon17ConnectionManager_aisDaemonServiceListener) serviceName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2408D4D30();
    v11 = v10;
  }

  else
  {
    v9 = sub_2408D4720();
    v11 = v12;
  }

  sub_2408D4930();

  v13 = sub_2408D4B10();
  v14 = sub_2408D4F20();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    v18 = sub_2408CC504(v9, v11, &v21);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_2407CF000, v13, v14, "Starting XPC listener for Mach service %s...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x245CC9F60](v17, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);

    (*(v3 + 8))(v5, v20);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  [*(v1 + v6) setDelegate_];
  return [*(v1 + v6) resume];
}

uint64_t sub_2408C2C84()
{
  v1 = sub_2408D4B20();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408C2D40, 0, 0);
}

id sub_2408C2D40(uint64_t a1)
{
  sub_2408D4930();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Checking in Managed Accounts", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];

  (*(v6 + 8))(v5, v7);
  [objc_opt_self() sharedInstance];
  result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  if (result)
  {
    sub_2408D4250();
    swift_allocObject();
    v1[5] = sub_2408D4240();
    v10 = (*MEMORY[0x277CED8A8] + MEMORY[0x277CED8A8]);
    v9 = swift_task_alloc();
    v1[6] = v9;
    *v9 = v1;
    v9[1] = sub_2408C2F0C;

    return v10();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2408C2F0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2408C3038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_240880598(a3, v25 - v10);
  v12 = sub_2408D4E60();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2407D9440(v11, &unk_27E506BD0, &qword_2408D7AB0);
  }

  else
  {
    sub_2408D4E50();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2408D4E00();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2408D4D50() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2408C3370(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_2408D4B20();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  if (sub_2408D4820() == a1 && v14 == a2)
  {

LABEL_5:
    sub_2408D4930();
    v16 = sub_2408D4B10();
    v17 = sub_2408D4F20();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2407CF000, v16, v17, "Received notification to check in Managed Accounts", v18, 2u);
      MEMORY[0x245CC9F60](v18, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    sub_2408D4E40();
    v19 = sub_2408D4E60();
    (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    sub_2408C3038(0, 0, v6, &unk_2408D9B08, v20);

    return sub_2407D9440(v6, &unk_27E506BD0, &qword_2408D7AB0);
  }

  v15 = sub_2408D5240();

  if (v15)
  {
    goto LABEL_5;
  }

  sub_2408D4930();

  v22 = sub_2408D4B10();
  v23 = sub_2408D4F20();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_2408CC504(a1, a2, &v27);
    _os_log_impl(&dword_2407CF000, v22, v23, "No special handling written for XPC event: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x245CC9F60](v25, -1, -1);
    MEMORY[0x245CC9F60](v24, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2408C3708(void *a1)
{

  v2 = sub_2408D4D00();

  v3 = [a1 valueForEntitlement_];

  if (v3)
  {
    sub_2408D5070();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v5)
    {
      return 1;
    }
  }

  else
  {
    sub_2407D9440(v8, &qword_27E507FA0, &qword_2408D7FB0);
  }

  return 0;
}

id sub_2408C3810(void *a1)
{
  v2 = sub_2408D4B20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = sub_2408C3708(a1);
  if ((v9 & 1) == 0)
  {
    sub_2408D4930();
    v33 = sub_2408D4B10();
    v34 = sub_2408D4F30();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2407CF000, v33, v34, "Client does not have any valid entitlemnts.", v35, 2u);
      MEMORY[0x245CC9F60](v35, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return (v9 & 1);
  }

  v10 = objc_opt_self();
  result = [v10 defaultStore];
  if (result)
  {
    v12 = result;
    v37 = v2;
    v13 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v42[3] = sub_2407EEDBC(0, &qword_28130EF40, 0x277CED1E8);
    v42[4] = &off_285284100;
    v42[0] = v13;
    result = [v10 defaultStore];
    if (result)
    {
      v14 = result;
      v15 = type metadata accessor for AISSignOutService();
      sub_2407D91C4(v42, v39);
      v16 = v40;
      v17 = v41;
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
      MEMORY[0x28223BE20](v18);
      v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20);
      v38 = v14;
      v22 = sub_2407EEDBC(0, &qword_28130EF88, 0x277CB8F48);
      v23 = sub_2408802E4(v20, &v38, v15, v16, v22, v17, &off_285284110);
      v24 = v14;
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      [a1 setExportedObject_];
      sub_2408D43F0();
      v25 = MEMORY[0x245CC8820]();
      [a1 setExportedInterface_];

      [a1 resume];
      sub_2408D4930();
      v26 = a1;
      v27 = sub_2408D4B10();
      v28 = sub_2408D4F20();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v26;
        *v30 = v26;
        v31 = v26;
        _os_log_impl(&dword_2407CF000, v27, v28, "New connection accepted: %@", v29, 0xCu);
        sub_2407D9440(v30, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v30, -1, -1);
        MEMORY[0x245CC9F60](v29, -1, -1);
        v32 = v24;
      }

      else
      {
        v32 = v27;
        v27 = v24;
      }

      v36 = v37;

      (*(v3 + 8))(v8, v36);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      return (v9 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2408C3CF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2407D379C;

  return sub_2408C2C84();
}

uint64_t sub_2408C3D9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2407D379C;

  return sub_2408698F0(a1, v4);
}

uint64_t sub_2408C3EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 112) + **(a4 + 112));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2407D379C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2408C4014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a3;
  v87 = a2;
  v84 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507420, &qword_2408D7EB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v70 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F90, &qword_2408D7330);
  MEMORY[0x28223BE20](v83);
  v82 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v73 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v71 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v81 = &v70 - v11;
  MEMORY[0x28223BE20](v10);
  v89 = &v70 - v12;
  v13 = sub_2408D4BE0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E506988 != -1)
  {
    swift_once();
  }

  v17 = sub_2408D4B20();
  v18 = __swift_project_value_buffer(v17, qword_27E507E50);
  v19 = v14 + 16;
  v20 = *(v14 + 16);
  v20(v16, v84, v13);
  v78 = v18;
  v21 = sub_2408D4B10();
  v22 = sub_2408D4F20();
  v23 = os_log_type_enabled(v21, v22);
  v76 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v85 = v24;
    v86 = swift_slowAlloc();
    *v24 = 138412290;
    sub_2408C6998(&qword_27E5073F0, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v20(v25, v16, v13);
    v26 = _swift_stdlib_bridgeErrorToNSError();
    (*(v14 + 8))(v16, v13);
    v27 = v85;
    v28 = v86;
    *(v85 + 1) = v26;
    *v28 = v26;
    _os_log_impl(&dword_2407CF000, v21, v22, "Handling cancellation for error: %@", v27, 0xCu);
    sub_2407D9440(v28, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v28, -1, -1);
    MEMORY[0x245CC9F60](v27, -1, -1);
  }

  else
  {

    v29 = (*(v14 + 8))(v16, v13);
  }

  v85 = *(v88 + 104);
  v86 = v88 + 104;
  v74 = (v73 + 2);
  v75 = (v73 + 4);
  v29.n128_u64[0] = 136315138;
  v70 = v29;
  v72 = ++v73 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v79 = v13;
  v80 = v5;
  v77 = v19;
  for (i = (v85)(v90, v87, v88); ; i = (v85)(v90, v87, v88))
  {
    v38 = i;
    v39 = *v31;
    if (*(*v31 + 16))
    {
      v40 = 0;
      v41 = (v39 + 64);
      v42 = 1 << *(v39 + 32);
      v43 = (v42 + 63) >> 6;
      while (1)
      {
        v45 = *v41++;
        v44 = v45;
        if (v45)
        {
          break;
        }

        v40 -= 64;
        if (!--v43)
        {
          goto LABEL_16;
        }
      }

      v42 = __clz(__rbit64(v44)) - v40;
LABEL_16:
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507428, &unk_2408D7EB8);
      sub_2408C6844(v5, &v5[*(v47 + 48)], v42, *(v39 + 36));
      (*(*(v47 - 8) + 56))(v5, 0, 1, v47);
    }

    else
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507428, &unk_2408D7EB8);
      (*(*(v46 - 8) + 56))(v5, 1, 1, v46);
    }

    v38(v90, 0);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507428, &unk_2408D7EB8);
    if ((*(*(v48 - 8) + 48))(v5, 1, v48) == 1)
    {
      break;
    }

    v49 = *(v48 + 48);
    v50 = v83;
    v51 = *(v83 + 48);
    v52 = sub_2408D4260();
    v53 = *(v52 - 8);
    v54 = v82;
    (*(v53 + 32))(v82, v5, v52);
    v55 = *v75;
    (*v75)(&v54[v51], &v5[v49], v7);
    v56 = v89;
    v55(v89, &v54[*(v50 + 48)], v7);
    (*(v53 + 8))(v54, v52);
    v57 = *v74;
    v58 = v81;
    (*v74)(v81, v56, v7);
    v59 = sub_2408D4B10();
    v60 = sub_2408D4F20();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v90[0] = v62;
      *v61 = v70.n128_u32[0];
      v57(v71, v58, v7);
      v63 = sub_2408D4D40();
      v64 = v58;
      v65 = v63;
      v67 = v66;
      v32 = *v73;
      (*v73)(v64, v7);
      v68 = sub_2408CC504(v65, v67, v90);

      *(v61 + 4) = v68;
      _os_log_impl(&dword_2407CF000, v59, v60, "Removed cancellable: %s and allowing it to handle cancellation", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x245CC9F60](v62, -1, -1);
      MEMORY[0x245CC9F60](v61, -1, -1);
    }

    else
    {

      v32 = *v73;
      (*v73)(v58, v7);
    }

    v33 = v76;
    sub_2408C6998(&qword_27E5073F0, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    v34 = v79;
    v35 = swift_allocError();
    v33(v36, v84, v34);
    v90[0] = v35;
    v37 = v89;
    sub_2408D3F30();

    v32(v37, v7);
    v5 = v80;
  }

  return sub_2407D9440(v5, &qword_27E507420, &qword_2408D7EB0);
}

uint64_t sub_2408C4910()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E507E50);
  __swift_project_value_buffer(v0, qword_27E507E50);
  return sub_2408D4900();
}

unint64_t sub_2408C495C(int64_t a1, uint64_t a2)
{
  v4 = sub_2408D4260();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_2408D50A0();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_2408C6998(&qword_27E507E68, MEMORY[0x277CED8B0], MEMORY[0x277CED8B8]);
      v22 = sub_2408D4CE0();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2408C4CAC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2408D50A0() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_2408D4D30();
      sub_2408D5300();
      v10 = v9;
      sub_2408D4D60();
      v11 = sub_2408D5320();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 8 * v3);
      v15 = (v13 + 8 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(sub_2408D38D0() - 8) + 72);
      v18 = v17 * v3;
      v19 = v16 + v17 * v3;
      v20 = v17 * v6;
      v21 = v16 + v17 * v6 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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
}

unint64_t sub_2408C4EB0(int64_t a1, uint64_t a2)
{
  v4 = sub_2408D38D0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_2408D50A0();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_2408C6998(qword_27E507E70, MEMORY[0x277CED3D8], MEMORY[0x277CED3E0]);
      v22 = sub_2408D4CE0();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_2408D3770() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2408C51F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2408D50A0() + 1) & ~v5;
    do
    {
      sub_2408D5300();

      sub_2408D4D60();
      v9 = sub_2408D5320();

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

char *sub_2408C53A4()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = sub_2408D4260();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F98, &qword_2408D7338);
  v4 = *v0;
  v5 = sub_2408D51B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

  return result;
}

void *sub_2408C5700()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507110, &qword_2408D75D0);
  v2 = *v0;
  v3 = sub_2408D51B0();
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

id sub_2408C5870()
{
  v1 = v0;
  v29 = sub_2408D38D0();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F50, &qword_2408D72F0);
  v3 = *v0;
  v4 = sub_2408D51B0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v31 + 32;
    v26[2] = v31 + 16;
    for (i = v3; v13; v3 = i)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(v3 + 56);
      v20 = *(*(v3 + 48) + 8 * v18);
      v21 = v31;
      v22 = *(v31 + 72) * v18;
      v24 = v28;
      v23 = v29;
      (*(v31 + 16))(v28, v19 + v22, v29);
      v25 = v30;
      *(*(v30 + 48) + 8 * v18) = v20;
      (*(v21 + 32))(*(v25 + 56) + v22, v24, v23);
      result = v20;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26[0];
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_2408C5ADC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - v3;
  v34 = sub_2408D38D0();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F60, &unk_2408D7300);
  v5 = *v0;
  v6 = sub_2408D51B0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_2408C69E0(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_2407F64A8(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

char *sub_2408C5DE8()
{
  v1 = v0;
  v2 = sub_2408D38D0();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F70, &unk_2408D9C80);
  v5 = *v0;
  v6 = sub_2408D51B0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = v25 + 16 * v20;
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = *(v30 + 56) + v26;
        v5 = v36;
        *v31 = v28;
        *(v31 + 8) = v29;
        result = sub_240875D9C(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
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

char *sub_2408C607C()
{
  v1 = v0;
  v41 = sub_2408D3770();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2408D38D0();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F80, &qword_2408D7328);
  v4 = *v0;
  v5 = sub_2408D51B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

  return result;
}

void *sub_2408C63D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FD0, qword_2408D9B60);
  v2 = *v0;
  v3 = sub_2408D51B0();
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

void *sub_2408C6540()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F40, &qword_2408D72E0);
  v2 = *v0;
  v3 = sub_2408D51B0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = *(v4 + 56) + 16 * v17;
        *v22 = v20;
        *(v22 + 8) = v21;
        v23 = v18;
        result = sub_2407D256C(v20, v21);
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

id sub_2408C66C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F18, &unk_2408D9C90);
  v2 = *v0;
  v3 = sub_2408D51B0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2407EEB40(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2407F6498(v19, (*(v4 + 56) + 32 * v17));
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

uint64_t sub_2408C6844(uint64_t a1, uint64_t a2, int64_t a3, int a4)
{
  v5 = v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  if ((result & 1) == 0)
  {
    result = sub_2408C53A4();
    *v5 = v11;
  }

  if (a3 < 0 || 1 << *(v11 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v11 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v11 + 36) == a4)
  {
    v12 = *(v11 + 48);
    v13 = sub_2408D4260();
    (*(*(v13 - 8) + 32))(a1, v12 + *(*(v13 - 8) + 72) * a3, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
    (*(*(v15 - 8) + 32))(a2, v14 + *(*(v15 - 8) + 72) * a3, v15);
    result = sub_2408C495C(a3, v11);
    *v5 = v11;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2408C6998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2408C69E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2408C6AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2407D379C;

  return v11(a1, a2, a3, a4);
}

void sub_2408C6C04(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_2408D38D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_2407D9440(a1, &qword_27E507F00, &qword_2408D6D50);
    sub_2408C7588(a2, v7);

    sub_2407D9440(v7, &qword_27E507F00, &qword_2408D6D50);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_2408C9AAC(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v14;
  }
}

uint64_t sub_2408C6DC8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_2408D3770();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_2407D9440(a1, &qword_27E5071D0, &unk_2408D9C70);
    sub_2408C76F4(a2, v7);
    v12 = sub_2408D38D0();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2407D9440(v7, &qword_27E5071D0, &unk_2408D9C70);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2408C9FF8(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2408D38D0();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2408C6FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2408CA1FC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2408CCB30(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_2408C63D0();
        v14 = v16;
      }

      result = sub_2408C51F4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_2408C70EC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_2407D9440(a1, &qword_27E507458, &unk_2408D9030);
    sub_2408C7894(a2, v7);
    v12 = sub_2408D4260();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2407D9440(v7, &qword_27E507458, &unk_2408D9030);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2408CA378(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2408D4260();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2408C7320()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 112) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      swift_defaultActor_destroy();
      return v0;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_9:
        v7 &= v7 - 1;

        sub_2408D4BB0();
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2408C7448()
{
  sub_2408C7320();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2408C7498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(*(v3 + 112) + 16))
  {

    sub_2408CCB30(a2, a3);
    if (v7)
    {

      sub_2408D4BB0();
    }

    else
    {
    }
  }

  swift_beginAccess();

  sub_2408C6FF4(a1, a2, a3);
  return swift_endAccess();
}

uint64_t sub_2408C7588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2408CCC7C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2408C5870();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_2408D38D0();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_2408C4CAC(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_2408D38D0();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_2408C76F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2408CCBA8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2408C607C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_2408D38D0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_2408D3770();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_2408C4EB0(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_2408D3770();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2408C7894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2408CCD10(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2408C53A4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_2408D4260();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_2408C495C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2408C7A4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = sub_2408D4260();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F98, &qword_2408D7338);
  v47 = v4;
  result = sub_2408D51C0();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_2408CAB80(&qword_27E507E68, MEMORY[0x277CED8B0], MEMORY[0x277CED8B8]);
      result = sub_2408D4CE0();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2408C7EFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507110, &qword_2408D75D0);
  v34 = v4;
  result = sub_2408D51C0();
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

      sub_2408D5300();
      sub_2408D4D60();
      result = sub_2408D5320();
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

uint64_t sub_2408C81A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v43 = sub_2408D38D0();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F50, &qword_2408D72F0);
  v39 = v4;
  result = sub_2408D51C0();
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
    v35 = v2;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v40 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v41 = *(v38 + 72);
      v24 = v22 + v41 * v21;
      if (v39)
      {
        (*v40)(v42, v24, v43);
      }

      else
      {
        (*v36)(v42, v24, v43);
        v25 = v23;
      }

      sub_2408D4D30();
      sub_2408D5300();
      sub_2408D4D60();
      v26 = sub_2408D5320();

      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      result = (*v40)(*(v9 + 56) + v41 * v17, v42, v43);
      ++*(v9 + 16);
      v7 = v37;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
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

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2408C8544(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - v6;
  v7 = sub_2408D38D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F60, &unk_2408D7300);
  v43 = v4;
  result = sub_2408D51C0();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2407F64A8(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2408C69E0(v29 + v28 * v24, v47);
      }

      sub_2408CAB80(qword_27E507E70, MEMORY[0x277CED3D8], MEMORY[0x277CED3E0]);
      result = sub_2408D4CE0();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_2407F64A8(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}