uint64_t sub_24FF3E814()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 416) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF3E90C()
{
  v43 = v0;
  v1 = v0[48];
  v2 = v0[43];
  v3 = v0[38];
  sub_24FF427A4(v0[29] + 120, (v0 + 21));
  sub_24FF40194(v2);
  swift_endAccess();
  v4 = *(v3 + 8);
  v5 = sub_24FF32440();
  v4(v5);
  v6 = v0[36];
  v39 = v0[49];
  v7 = v0[29];
  if (v1)
  {
    v8 = sub_24FF3D36C();
    v10 = 0x24746F6F7224;
    v38 = v4;
    if (v9)
    {
      v10 = v8;
    }

    v37 = v10;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    sub_24FF257B8((v7 + 24), *(v7 + 48));
    v12 = (v6 + *(sub_24FF25460(&qword_27F3B42B0, &qword_24FF641D0) + 48));
    v13 = sub_24FF32440();
    v39(v13);
    *v12 = v37;
    v12[1] = v11;
    swift_storeEnumTagMultiPayload();
    v14 = sub_24FF42740();
    v15(v14);
    sub_24FF421C8(v6);
    v16 = sub_24FF427BC();
    v38(v16);
  }

  else
  {
    sub_24FF257B8((v7 + 24), *(v7 + 48));
    v17 = sub_24FF32440();
    v39(v17);
    swift_storeEnumTagMultiPayload();
    v18 = sub_24FF42740();
    v19(v18);
    sub_24FF421C8(v6);
    if (qword_280B15CC8 != -1)
    {
      sub_24FF423E0(&qword_280B15CC8);
    }

    v20 = v0[49];
    v21 = sub_24FF61BC8();
    sub_24FF278EC(v21, qword_280B16948);
    v22 = sub_24FF4259C();
    v20(v22);
    v23 = sub_24FF61BA8();
    v24 = sub_24FF62008();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[45];
    v27 = v0[42];
    v28 = v0[37];
    if (v25)
    {
      v29 = sub_24FF42770();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v29 = 136315138;
      sub_24FF42224();
      v41 = v26;
      v30 = sub_24FF62148();
      v32 = v31;
      (v4)(v27, v28);
      v33 = sub_24FF5BBE0(v30, v32, &v42);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_24FF22000, v23, v24, "Consumed all fields for object with id=%s", v29, 0xCu);
      sub_24FF25A6C(v40);
      sub_24FF42670();
      sub_24FF42670();

      v34 = v41;
    }

    else
    {

      (v4)(v27, v28);
      v34 = v26;
    }

    (v4)(v34, v28);
  }

  sub_24FF42484();
  sub_24FF42788();

  sub_24FF321B0();

  return v35();
}

uint64_t sub_24FF3ECBC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 456) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF3EDB4()
{
  v53 = v0;
  v1 = v0[53];
  v2 = v0[43];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[29];
  sub_24FF427A4(v5 + 120, (v0 + 15));
  sub_24FF40194(v2);
  swift_endAccess();
  v6 = v4 + 8;
  v7 = sub_24FF32440();
  v51 = v8;
  (v8)(v7);
  if (!v1)
  {
    v27 = v0[54];
    sub_24FF425E0();
    sub_24FF257B8((v5 + 24), v6);
    v28 = sub_24FF42604();
    v27(v28);
    sub_24FF427BC();
    swift_storeEnumTagMultiPayload();
    v29 = sub_24FF4251C();
    v30(v29);
    sub_24FF421C8(v3);
    if (qword_280B15CC8 != -1)
    {
      sub_24FF423E0(&qword_280B15CC8);
    }

    v31 = v0[54];
    v32 = sub_24FF61BC8();
    sub_24FF278EC(v32, qword_280B16948);
    v33 = sub_24FF4259C();
    v31(v33);
    v34 = sub_24FF61BA8();
    v35 = sub_24FF62008();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[41];
    v38 = v0[39];
    v39 = v0[37];
    v40 = v0[32];
    if (v36)
    {
      v50 = v0[41];
      v41 = sub_24FF42770();
      v42 = swift_slowAlloc();
      v52 = v42;
      *v41 = 136315138;
      sub_24FF42224();
      v43 = sub_24FF62148();
      v45 = v44;
      v51(v38, v39);
      v46 = sub_24FF5BBE0(v43, v45, &v52);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_24FF22000, v34, v35, "Consumed all fields for array with id=%s", v41, 0xCu);
      sub_24FF25A6C(v42);
      sub_24FF42670();
      sub_24FF42670();

      v51(v50, v39);
    }

    else
    {

      v51(v38, v39);
      v51(v37, v39);
    }

    sub_24FF422D0(v40, &qword_27F3B42C8, &qword_24FF641A0);
    goto LABEL_11;
  }

  v9 = v0[37];
  v10 = v0[32];
  v11 = v0[30];
  sub_24FF420F4(v5 + 24, (v0 + 7));
  v48 = v0[11];
  v49 = v0[10];
  sub_24FF257B8(v0 + 7, v49);
  sub_24FF42158(v10, v11);
  result = sub_24FF24B70(v11, 1, v9);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v0[54];
  v14 = v0[41];
  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[34];
  v18 = v0[30];
  v19 = sub_24FF25460(&qword_27F3B42A0, &unk_24FF641C0);
  v20 = *(v19 + 48);
  (*(v15 + 32))(v17, v18, v16);
  v13(v17 + v20, v14, v16);
  result = sub_24FF3D36C();
  if (!v21)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v22 = v0[41];
  v23 = v0[37];
  v24 = v0[34];
  v25 = v0[32];
  v26 = (v24 + *(v19 + 64));
  *v26 = result;
  v26[1] = v21;
  swift_storeEnumTagMultiPayload();
  (*(v48 + 8))(v24, v49);
  sub_24FF421C8(v24);
  v51(v22, v23);
  sub_24FF422D0(v25, &qword_27F3B42C8, &qword_24FF641A0);
  sub_24FF25A6C(v0 + 7);
LABEL_11:
  sub_24FF42484();
  sub_24FF42788();

  sub_24FF321B0();

  return v47();
}

uint64_t sub_24FF3F234()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 472) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF3F32C()
{
  sub_24FF42074(*(v0 + 368), *(v0 + 376), *(v0 + 210));
  sub_24FF42484();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF3F420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_24FF2BFE8();
  (*(v16[38] + 8))(v16[45], v16[37]);
  sub_24FF424C0();
  sub_24FF42650();

  sub_24FF24BC0();
  sub_24FF2BDD4();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_24FF3F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_24FF2BFE8();
  v17 = v16[32];
  (*(v16[38] + 8))(v16[41], v16[37]);
  sub_24FF422D0(v17, &qword_27F3B42C8, &qword_24FF641A0);
  sub_24FF424C0();
  sub_24FF42650();

  sub_24FF24BC0();
  sub_24FF2BDD4();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_24FF3F604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_24FF2BFE8();
  sub_24FF42074(*(v16 + 368), *(v16 + 376), *(v16 + 210));
  sub_24FF424C0();
  sub_24FF42650();

  sub_24FF24BC0();
  sub_24FF2BDD4();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_24FF3F6DC()
{
  *(v1 + 160) = v0;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 7;
  v2 = swift_task_alloc();
  *(v1 + 168) = v2;
  *v2 = v1;
  v2[1] = sub_24FF3F784;

  return sub_24FF414E8(v1 + 16);
}

uint64_t sub_24FF3F784()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 176) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF3F87C()
{
  v30 = v0;
  if (qword_280B15CC8 != -1)
  {
    sub_24FF423E0(&qword_280B15CC8);
  }

  v1 = *(v0 + 160);
  v2 = sub_24FF61BC8();
  *(v0 + 184) = sub_24FF278EC(v2, qword_280B16948);

  v3 = sub_24FF61BA8();
  v4 = sub_24FF62008();

  if (os_log_type_enabled(v3, v4))
  {
    sub_24FF42770();
    v5 = sub_24FF42688();
    v29 = v5;
    *v1 = 136315138;
    v6 = sub_24FF3D36C();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v6 = 0x3E746F6F723CLL;
      v8 = 0xE600000000000000;
    }

    v9 = sub_24FF5BBE0(v6, v8, &v29);

    *(v1 + 4) = v9;
    sub_24FF426A4(&dword_24FF22000, v10, v4, "Starting object in %s");
    sub_24FF25A6C(v5);
    sub_24FF42670();
    sub_24FF42634();
  }

  v11 = sub_24FF426FC();
  *(v0 + 40) = v11;
  *(v0 + 48) = v12;
  *(v0 + 56) = v13;
  *(v0 + 64) = xmmword_24FF635F0;
  *(v0 + 80) = 7;
  sub_24FF420E0(v11, v12, v13);
  v14 = sub_24FF418B0((v0 + 64));
  v15 = sub_24FF42074(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (v14)
  {
    v25 = swift_task_alloc();
    *(v0 + 192) = v25;
    *v25 = v0;
    sub_24FF42538(v25);

    return sub_24FF41A58(0);
  }

  else
  {
    sub_24FF427C8(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
    v27 = swift_task_alloc();
    *(v0 + 208) = v27;
    *v27 = v0;
    v28 = sub_24FF42458(v27);

    return sub_24FF414E8(v28);
  }
}

uint64_t sub_24FF3FABC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *v1;
  sub_24FF2BACC();
  *v3 = v2;

  if (v0)
  {
    sub_24FF24BC0();

    return v4();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_24FF3FBD4()
{
  sub_24FF2BC7C();
  v1 = sub_24FF426FC();
  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  *(v0 + 128) = v3;
  *(v0 + 136) = xmmword_24FF63600;
  *(v0 + 152) = 7;
  sub_24FF420E0(v1, v2, v3);
  v4 = sub_24FF418B0((v0 + 136));
  sub_24FF42074(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  if (v4)
  {
    *(v0 + 88) = xmmword_24FF635F0;
    *(v0 + 104) = 7;
    v5 = swift_task_alloc();
    *(v0 + 208) = v5;
    *v5 = v0;
    v6 = sub_24FF42458(v5);

    return sub_24FF414E8(v6);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    sub_24FF42538(v8);

    return sub_24FF3D568();
  }
}

uint64_t sub_24FF3FD08()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v1 = *v0;
  sub_24FF2BACC();
  *v2 = v1;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF3FDF0()
{
  v1 = sub_24FF426FC();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = xmmword_24FF635F0;
  *(v0 + 80) = 7;
  sub_24FF420E0(v1, v2, v3);
  v4 = sub_24FF418B0((v0 + 64));
  v5 = sub_24FF42074(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (v4)
  {
    v15 = swift_task_alloc();
    *(v0 + 192) = v15;
    *v15 = v0;
    sub_24FF42538(v15);

    return sub_24FF41A58(0);
  }

  else
  {
    sub_24FF427C8(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    v17 = swift_task_alloc();
    *(v0 + 208) = v17;
    *v17 = v0;
    v18 = sub_24FF42458(v17);

    return sub_24FF414E8(v18);
  }
}

uint64_t sub_24FF3FF20()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF40018()
{
  v13 = v0;
  v1 = *(v0 + 160);

  v2 = sub_24FF61BA8();
  v3 = sub_24FF62008();

  if (os_log_type_enabled(v2, v3))
  {
    sub_24FF42770();
    v4 = sub_24FF42688();
    v12 = v4;
    *v1 = 136315138;
    v5 = sub_24FF3D36C();
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v5 = 0x3E746F6F723CLL;
      v7 = 0xE600000000000000;
    }

    v8 = sub_24FF5BBE0(v5, v7, &v12);

    *(v1 + 4) = v8;
    sub_24FF426A4(&dword_24FF22000, v9, v3, "Ending object in %s");
    sub_24FF25A6C(v4);
    sub_24FF42670();
    sub_24FF42634();
  }

  sub_24FF321B0();

  return v10();
}

uint64_t sub_24FF40158()
{
  if (*(*v0 + 16))
  {
    result = sub_24FF5E8C4();
    if (!v2)
    {
      return sub_24FF5E664(*(*v0 + 16) - 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24FF40194(uint64_t a1@<X8>)
{
  v3 = sub_24FF25460(&qword_27F3B42C8, &qword_24FF641A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  if (*(*v1 + 16))
  {
    sub_24FF5E920(&v7 - v4);
    v6 = sub_24FF61898();
    if (sub_24FF24B70(v5, 1, v6) == 1)
    {
      sub_24FF422D0(v5, &qword_27F3B42C8, &qword_24FF641A0);
      sub_24FF5E6EC(*(*v1 + 16) - 1, a1);
    }

    else
    {
      (*(*(v6 - 8) + 32))(a1, v5, v6);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24FF402AC()
{
  *(v1 + 112) = v0;
  *(v1 + 16) = xmmword_24FF63610;
  *(v1 + 32) = 7;
  v2 = swift_task_alloc();
  *(v1 + 120) = v2;
  *v2 = v1;
  v2[1] = sub_24FF40358;

  return sub_24FF414E8(v1 + 16);
}

uint64_t sub_24FF40358()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF40450()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  if (v4 == 255)
  {
    v24 = sub_24FF4259C();
    sub_24FF420E0(v24, v25, 0xFFu);
    v26 = sub_24FF4259C();
    sub_24FF420E0(v26, v27, 0xFFu);
    v28 = sub_24FF4259C();
    sub_24FF42074(v28, v29, 0xFFu);
    sub_24FF42074(3, 0, 7u);
    v30 = sub_24FF4259C();
    sub_24FF42074(v30, v31, 0xFFu);
  }

  else
  {
    *(v0 + 88) = xmmword_24FF63620;
    *(v0 + 64) = v2;
    *(v0 + 72) = v3;
    *(v0 + 80) = v4;
    *(v0 + 104) = 7;
    v5 = sub_24FF4258C();
    sub_24FF420E0(v5, v6, v7);
    v8 = sub_24FF4258C();
    sub_24FF420E0(v8, v9, v10);
    v11 = sub_24FF4258C();
    sub_24FF420E0(v11, v12, v13);
    v14 = static JsonToken.== infix(_:_:)(v0 + 64, v0 + 88);
    sub_24FF42088(*(v0 + 88), *(v0 + 96), *(v0 + 104));
    sub_24FF42088(*(v0 + 64), *(v0 + 72), *(v0 + 80));
    v15 = sub_24FF4258C();
    sub_24FF42074(v15, v16, v17);
    v18 = sub_24FF4258C();
    sub_24FF42074(v18, v19, v20);
    if (v14)
    {
      *(v0 + 40) = xmmword_24FF63620;
      *(v0 + 56) = 7;
      v21 = swift_task_alloc();
      *(v0 + 152) = v21;
      *v21 = v0;
      v22 = sub_24FF42560(v21);

      return sub_24FF414E8(v22);
    }
  }

  v32 = swift_task_alloc();
  *(v0 + 136) = v32;
  *v32 = v0;
  v32[1] = sub_24FF40638;

  return sub_24FF3DC30(1);
}

uint64_t sub_24FF40638()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *v1;
  sub_24FF2BACC();
  *v3 = v2;

  if (v0)
  {
    sub_24FF24BC0();

    return v4();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_24FF40750()
{
  sub_24FF2BC70();
  v1 = *(v0 + 112);
  if (*(v1 + 80) == 7 && ((v3 = v1 + 64, v2 = *(v1 + 64), !*(v3 + 8)) ? (v4 = v2 == 4) : (v4 = 0), v4))
  {
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_24FF4085C;

    return sub_24FF3D568();
  }

  else
  {
    *(v0 + 40) = xmmword_24FF63620;
    *(v0 + 56) = 7;
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v6 = sub_24FF42560(v5);

    return sub_24FF414E8(v6);
  }
}

uint64_t sub_24FF4085C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v1 = *v0;
  sub_24FF2BACC();
  *v2 = v1;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF40944()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    sub_24FF24BC0();

    return v10();
  }
}

uint64_t sub_24FF40A68(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 33) = a1;
  *(v2 + 64) = type metadata accessor for JsonStreamEvent(0);
  *(v2 + 72) = swift_task_alloc();
  sub_24FF25460(&qword_27F3B42C8, &qword_24FF641A0);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  v3 = sub_24FF61898();
  *(v2 + 96) = v3;
  *(v2 + 104) = *(v3 - 8);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF40BAC, 0, 0);
}

uint64_t sub_24FF40BAC()
{
  v1 = sub_24FF3D36C();
  if (!v2)
  {
    v13 = 0x800000024FF67250;
    v14 = sub_24FF4227C();
    sub_24FF4271C(&type metadata for JsonStreamParser.ParserError, v14);
    v15 = 0xD000000000000030;
LABEL_7:
    *v12 = v15;
    *(v12 + 8) = v13;
    goto LABEL_8;
  }

  v3 = v2;
  v4 = *(v0 + 56);
  v5 = *(v4 + 80);
  if (v5 == 255)
  {

    v13 = 0x800000024FF67290;
    v16 = sub_24FF4227C();
    sub_24FF4271C(&type metadata for JsonStreamParser.ParserError, v16);
    v15 = 0xD000000000000027;
    goto LABEL_7;
  }

  v6 = v1;
  v8 = *(v4 + 64);
  v7 = *(v4 + 72);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  sub_24FF3D3D4(v10);
  if (sub_24FF24B70(v10, 1, v9) == 1)
  {
    sub_24FF422D0(*(v0 + 88), &qword_27F3B42C8, &qword_24FF641A0);
    sub_24FF426EC();
    sub_24FF62098();
    MEMORY[0x25305C910](0xD00000000000003BLL, 0x800000024FF672C0);
    MEMORY[0x25305C910](v6, v3);

    v11 = sub_24FF4227C();
    sub_24FF4271C(&type metadata for JsonStreamParser.ParserError, v11);
    *v12 = v122;
    *(v12 + 8) = v123;
LABEL_8:
    *(v12 + 16) = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v120 = v7;
  v19 = *(v0 + 96);
  v20 = *(v0 + 80);
  v21 = *(v0 + 56);
  v22 = *(*(v0 + 104) + 32);
  v22(*(v0 + 120), *(v0 + 88), v19);
  sub_24FF3D48C(v20);
  v23 = sub_24FF24B70(v20, 1, v19);
  v24 = *(v0 + 96);
  if (v23 != 1)
  {
    v22(*(v0 + 112), *(v0 + 80), *(v0 + 96));
    switch(v5)
    {
      case 1:
        sub_24FF42414();
        sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0);
        v29 = sub_24FF424A4();
        v20(v29);
        v30 = sub_24FF425A8();
        v20(v30);
        v31 = type metadata accessor for JsonFieldValueEvent(0);
        v32 = sub_24FF424DC(v31);
        *v33 = v8;
        *(v33 + 8) = v120;
        *(v33 + 16) = 0;
        sub_24FF424F4(v32, v34, v35, v36, v37, v38, v39, v40, v112, v113, *v114, v114[4]);
        v41 = *(v115 + 8);
        v42 = sub_24FF4270C();
        sub_24FF420E0(v42, v43, v44);
        v45 = sub_24FF4270C();
        sub_24FF420B4(v45, v46, v47);
        v41(v21);
        v48 = sub_24FF4270C();
        sub_24FF42074(v48, v49, v50);
        goto LABEL_21;
      case 2:
        sub_24FF42414();
        sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0);
        v66 = sub_24FF424A4();
        v20(v66);
        v67 = sub_24FF425A8();
        v20(v67);
        v68 = type metadata accessor for JsonFieldValueEvent(0);
        v69 = sub_24FF424DC(v68);
        *v70 = v8;
        *(v70 + 8) = 0;
        *(v70 + 16) = 2;
        sub_24FF424F4(v69, v71, v72, v73, v74, v75, v76, v77, v112, v113, *v114, v114[4]);
        v63 = sub_24FF42548();
        v65 = 2;
        goto LABEL_19;
      case 3:
        sub_24FF42414();
        sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0);
        v51 = sub_24FF424A4();
        v20(v51);
        v52 = sub_24FF425A8();
        v20(v52);
        v53 = type metadata accessor for JsonFieldValueEvent(0);
        v54 = sub_24FF424DC(v53);
        *v55 = v8;
        *(v55 + 8) = 0;
        *(v55 + 16) = 3;
        sub_24FF424F4(v54, v56, v57, v58, v59, v60, v61, v62, v112, v113, *v114, v114[4]);
        v63 = sub_24FF42548();
        v65 = 3;
        goto LABEL_19;
      case 4:
        sub_24FF42414();
        sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0);
        v78 = sub_24FF424A4();
        v20(v78);
        v79 = sub_24FF425A8();
        v20(v79);
        v80 = type metadata accessor for JsonFieldValueEvent(0);
        v81 = sub_24FF424DC(v80);
        *v82 = v8 & 1;
        *(v82 + 8) = 0;
        *(v82 + 16) = 1;
        sub_24FF424F4(v81, v83, v84, v85, v86, v87, v88, v89, v112, v113, *v114, v114[4]);
        v63 = sub_24FF42548();
        v65 = 4;
LABEL_19:
        sub_24FF420E0(v63, v64, v65);
        v3(v21, v118, v6);
        goto LABEL_21;
      case 7:
        if (v8 != 5 || v120)
        {
          goto LABEL_27;
        }

        v92 = *(v0 + 112);
        v91 = *(v0 + 120);
        v94 = *(v0 + 96);
        v93 = *(v0 + 104);
        v95 = *(v0 + 72);
        v96 = *(v0 + 56);
        v116 = *(v0 + 33);
        v121 = v96[6];
        v117 = v96[7];
        sub_24FF257B8(v96 + 3, v121);
        v97 = v95 + *(sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0) + 48);
        v98 = *(v93 + 16);
        v98(v95, v91, v94);
        v98(v97, v92, v94);
        v99 = type metadata accessor for JsonFieldValueEvent(0);
        v100 = (v97 + v99[5]);
        *v100 = v6;
        v100[1] = v3;
        v101 = v97 + v99[6];
        *v101 = 0;
        *(v101 + 8) = 0;
        *(v101 + 16) = 4;
        *(v97 + v99[7]) = v116;
        swift_storeEnumTagMultiPayload();
        v102 = *(v117 + 8);
        sub_24FF420E0(5, 0, 7u);
        v102(v95, v121, v117);
LABEL_21:
        sub_24FF421C8(*(v0 + 72));
        v90 = swift_task_alloc();
        *(v0 + 128) = v90;
        *v90 = v0;
        v90[1] = sub_24FF41334;

        return sub_24FF3D568();
      default:
LABEL_27:
        v103 = *(v0 + 112);
        v119 = *(v0 + 120);
        v104 = *(v0 + 96);
        v105 = *(v0 + 104);
        sub_24FF420E0(v8, v120, v5);

        sub_24FF426EC();
        sub_24FF62098();
        *(v0 + 40) = v122;
        *(v0 + 48) = v123;
        sub_24FF42734();
        MEMORY[0x25305C910](0xD000000000000012);
        *(v0 + 16) = v8;
        *(v0 + 24) = v120;
        *(v0 + 32) = v5;
        sub_24FF620E8();
        v106 = *(v0 + 40);
        v107 = *(v0 + 48);
        v108 = sub_24FF4227C();
        v109 = sub_24FF4271C(&type metadata for JsonStreamParser.ParserError, v108);
        *v110 = v106;
        v110[1] = v107;
        sub_24FF426C0(v109, v110);
        sub_24FF42074(v8, v120, v5);
        v111 = *(v105 + 8);
        v111(v103, v104);
        v111(v119, v104);
        goto LABEL_9;
    }
  }

  v25 = *(v0 + 120);
  v26 = *(v0 + 104);
  sub_24FF422D0(*(v0 + 80), &qword_27F3B42C8, &qword_24FF641A0);
  sub_24FF426EC();
  sub_24FF62098();
  MEMORY[0x25305C910](0xD000000000000035, 0x800000024FF67300);
  MEMORY[0x25305C910](v6, v3);

  v27 = sub_24FF4227C();
  sub_24FF4271C(&type metadata for JsonStreamParser.ParserError, v27);
  *v28 = v122;
  *(v28 + 8) = v123;
  *(v28 + 16) = 0;
  swift_willThrow();
  (*(v26 + 8))(v25, v24);
LABEL_9:

  sub_24FF24BC0();

  return v17();
}

uint64_t sub_24FF41334()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v1 = *v0;
  sub_24FF2BACC();
  *v2 = v1;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF4141C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = *(v0[13] + 8);
  v4 = sub_24FF32440();
  v3(v4);
  (v3)(v1, v2);

  sub_24FF321B0();

  return v5();
}

uint64_t sub_24FF414E8(uint64_t a1)
{
  *(v2 + 120) = v1;
  *(v2 + 128) = *a1;
  *(v2 + 33) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_24FF41518, 0, 0);
}

uint64_t sub_24FF41518()
{
  v30 = v0;
  v1 = v0;
  v2 = *(v0 + 33);
  v3 = *(v0 + 120);
  v25 = *(v3 + 64);
  v26 = *(v3 + 72);
  v27 = *(v3 + 80);
  v28 = *(v1 + 128);
  v29 = v2;
  sub_24FF420E0(v25, v26, v27);
  v4 = sub_24FF418B0(&v28);
  sub_24FF42074(v25, v26, v27);
  if (v4)
  {
    v5 = *(v3 + 80);
    v6 = *(v1 + 33);
    v8 = *(v1 + 128);
    v7 = *(v1 + 136);
    if (v5 == 255)
    {
      v9 = (v1 + 88);
      *&v28 = 0;
      *(&v28 + 1) = 0xE000000000000000;
      sub_24FF62098();
      v17 = v28;
      *(v1 + 96) = *(&v28 + 1);
      v13 = (v1 + 96);
      *(v1 + 88) = v17;
      sub_24FF42734();
      MEMORY[0x25305C910](0xD000000000000012);
      *(v1 + 16) = v8;
      *(v1 + 24) = v7;
      *(v1 + 32) = v6;
      sub_24FF620E8();
      MEMORY[0x25305C910](0xD000000000000019, 0x800000024FF67210);
    }

    else
    {
      v9 = (v1 + 104);
      v11 = *(v3 + 64);
      v10 = *(v3 + 72);
      *&v28 = 0;
      *(&v28 + 1) = 0xE000000000000000;
      sub_24FF420B4(v11, v10, v5);
      sub_24FF62098();
      v12 = v28;
      *(v1 + 112) = *(&v28 + 1);
      v13 = (v1 + 112);
      *(v1 + 104) = v12;
      sub_24FF42734();
      MEMORY[0x25305C910](0xD000000000000012);
      *(v1 + 40) = v8;
      *(v1 + 48) = v7;
      *(v1 + 56) = v6;
      sub_24FF427FC(v1 + 40);
      MEMORY[0x25305C910](0xD000000000000016, 0x800000024FF67230);
      *(v1 + 64) = v11;
      *(v1 + 72) = v10;
      *(v1 + 80) = v5;
      sub_24FF427FC(v1 + 64);
      sub_24FF42074(v11, v10, v5);
    }

    v18 = *v9;
    v19 = *v13;
    v20 = sub_24FF4227C();
    v21 = sub_24FF4271C(&type metadata for JsonStreamParser.ParserError, v20);
    *v22 = v18;
    v22[1] = v19;
    sub_24FF426C0(v21, v22);
    sub_24FF42618();

    __asm { BRAA            X1, X16 }
  }

  v14 = swift_task_alloc();
  *(v1 + 144) = v14;
  *v14 = v1;
  v14[1] = sub_24FF417D0;
  sub_24FF42618();

  return sub_24FF3D568();
}

uint64_t sub_24FF417D0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v1 = *v0;
  sub_24FF2BACC();
  *v2 = v1;

  sub_24FF321B0();

  return v3();
}

uint64_t sub_24FF418B0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 == 255)
  {
    if (v4 == 255)
    {
      sub_24FF420B4(*a1, v2, 0xFFu);
      sub_24FF420E0(v6, v5, 0xFFu);
      sub_24FF42074(v6, v5, 0xFFu);
      v9 = 0;
      return v9 & 1;
    }

    sub_24FF420B4(*a1, v2, v4);
    sub_24FF420E0(v6, v5, 0xFFu);
    goto LABEL_7;
  }

  v14 = *v1;
  v15 = v5;
  v16 = v7;
  if (v4 == 255)
  {
    sub_24FF420B4(v3, v2, 0xFFu);
    sub_24FF420E0(v6, v5, v7);
    sub_24FF420E0(v6, v5, v7);
    sub_24FF42088(v6, v5, v7);
LABEL_7:
    sub_24FF42074(v6, v5, v7);
    sub_24FF42074(v3, v2, v4);
    v9 = 1;
    return v9 & 1;
  }

  v11 = v3;
  v12 = v2;
  v13 = v4;
  sub_24FF420B4(v3, v2, v4);
  sub_24FF420E0(v6, v5, v7);
  sub_24FF420E0(v6, v5, v7);
  v8 = static JsonToken.== infix(_:_:)(&v14, &v11);
  sub_24FF42088(v11, v12, v13);
  sub_24FF42088(v14, v15, v16);
  sub_24FF42074(v6, v5, v7);
  v9 = v8 ^ 1;
  return v9 & 1;
}

uint64_t sub_24FF41A58(char a1)
{
  *(v2 + 104) = v1;
  *(v2 + 81) = a1;
  return MEMORY[0x2822009F8](sub_24FF41A7C, 0, 0);
}

uint64_t sub_24FF41A7C(uint64_t a1)
{
  v2 = *(v1 + 104);
  v3 = *(v2 + 64);
  *(v1 + 112) = v3;
  v4 = *(v2 + 72);
  *(v1 + 120) = v4;
  v5 = *(v2 + 80);
  if (v5 == 255)
  {
    v10 = 0x800000024FF67170;
    v11 = 0xD000000000000035;
  }

  else
  {
    if (!*(v2 + 80))
    {
      v6 = sub_24FF32440();
      sub_24FF420B4(v6, v7, 0);
      v8 = swift_task_alloc();
      *(v1 + 128) = v8;
      *v8 = v1;
      v8[1] = sub_24FF41C48;

      return sub_24FF3D568();
    }

    v12 = sub_24FF32440();
    sub_24FF420B4(v12, v13, v5);
    sub_24FF62098();
    *(v1 + 88) = 0;
    *(v1 + 96) = 0xE000000000000000;
    sub_24FF42734();
    MEMORY[0x25305C910](0xD000000000000032);
    *(v1 + 64) = v3;
    *(v1 + 72) = v4;
    *(v1 + 80) = v5;
    sub_24FF620E8();
    v14 = sub_24FF32440();
    sub_24FF42074(v14, v15, v5);
    v11 = *(v1 + 88);
    v10 = *(v1 + 96);
  }

  v16 = sub_24FF4227C();
  v17 = sub_24FF4271C(&type metadata for JsonStreamParser.ParserError, v16);
  *v18 = v11;
  v18[1] = v10;
  sub_24FF426C0(v17, v18);
  sub_24FF24BC0();

  return v19();
}

uint64_t sub_24FF41C48()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v1 = *v0;
  sub_24FF2BACC();
  *v2 = v1;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF41D30()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_24FF427A4(v3 + 112, v0 + 16);
  sub_24FF5BADC();
  v4 = *(*(v3 + 112) + 16);
  sub_24FF5BB68(v4);
  v5 = *(v3 + 112);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  *(v3 + 112) = v5;
  swift_endAccess();
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_24FF41E28;
  v8 = *(v0 + 81);

  return sub_24FF3DC30(v8);
}

uint64_t sub_24FF41E28()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *v1;
  sub_24FF2BACC();
  *v3 = v2;

  if (v0)
  {
    sub_24FF24BC0();

    return v4();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_24FF41F40()
{
  sub_24FF2BC70();
  sub_24FF427A4(*(v0 + 104) + 112, v0 + 40);
  sub_24FF40158();
  swift_endAccess();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF41FBC()
{

  sub_24FF25A6C((v0 + 24));
  sub_24FF42074(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_24FF42074(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  return v0;
}

uint64_t sub_24FF4201C()
{
  sub_24FF41FBC();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_24FF42074(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_24FF42088(result, a2, a3);
  }

  return result;
}

uint64_t sub_24FF42088(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u && ((1 << a3) & 0x63) != 0)
  {
  }

  return result;
}

uint64_t sub_24FF420B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u && ((1 << a3) & 0x63) != 0)
  {
  }

  return result;
}

uint64_t sub_24FF420E0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_24FF420B4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_24FF420F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24FF42158(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FF25460(&qword_27F3B42C8, &qword_24FF641A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF421C8(uint64_t a1)
{
  v2 = type metadata accessor for JsonStreamEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FF42224()
{
  result = qword_27F3B42D0;
  if (!qword_27F3B42D0)
  {
    v3 = sub_24FF61898();
    result = swift_getWitnessTable(MEMORY[0x277CC9628], v3, v0, v1);
    atomic_store(result, &qword_27F3B42D0);
  }

  return result;
}

unint64_t sub_24FF4227C()
{
  result = qword_27F3B42D8;
  if (!qword_27F3B42D8)
  {
    result = swift_getWitnessTable(a2_0, &type metadata for JsonStreamParser.ParserError, v0, v1);
    atomic_store(result, &qword_27F3B42D8);
  }

  return result;
}

uint64_t sub_24FF422D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_24FF25460(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24FF4233C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24FF4237C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24FF423E0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_24FF424DC(uint64_t result)
{
  v4 = (v3 + *(result + 20));
  *v4 = v2;
  v4[1] = v1;
  return result;
}

uint64_t sub_24FF424F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  *(v12 + *(a1 + 28)) = a12;

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_24FF425B8()
{
  v3 = *(v2 + 120);
  *(v3 + 16) = v0 + 1;
  return v3 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v0;
}

void sub_24FF42634()
{

  JUMPOUT(0x25305D1B0);
}

uint64_t sub_24FF42650()
{
}

void sub_24FF42670()
{

  JUMPOUT(0x25305D1B0);
}

uint64_t sub_24FF42688()
{

  return swift_slowAlloc();
}

void sub_24FF426A4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_24FF426C0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t sub_24FF4271C(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_24FF42770()
{

  return swift_slowAlloc();
}

uint64_t sub_24FF42788()
{
}

uint64_t sub_24FF427A4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

__n128 sub_24FF427C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  *(v11 + 88) = a10;
  *(v11 + 104) = v10;
  return result;
}

uint64_t sub_24FF427DC()
{
  v2 = *(*(v0 + 120) + 16);

  return sub_24FF5BB80(v2);
}

uint64_t sub_24FF427FC(uint64_t a1)
{

  return sub_24FF620E8();
}

uint64_t sub_24FF4281C()
{
  sub_24FF420E0(v1, v0, 7u);
}

uint64_t static JsonToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_40;
      }

      if (*&v2 != *&v5 || v3 != v6)
      {
        v38 = sub_24FF4259C();
        v10 = sub_24FF42D78(v38, v39);
        v40 = sub_24FF42D6C();
        v42 = sub_24FF42D50(v40, v41, 1u);
        v44 = sub_24FF42D50(v42, v43, 1u);
        sub_24FF42088(v44, v45, 1u);
        v17 = sub_24FF42D6C();
        v19 = 1;
        goto LABEL_39;
      }

      v24 = 1;
      v69 = sub_24FF4259C();
      v71 = sub_24FF42D50(v69, v70, 1u);
      v73 = sub_24FF42D50(v71, v72, 1u);
      sub_24FF42088(v73, v74, 1u);
      v75 = sub_24FF4259C();
      v77 = 1;
LABEL_44:
      sub_24FF42088(v75, v76, v77);
      return v24 & 1;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_41;
      }

      v25 = sub_24FF4259C();
      sub_24FF42088(v25, v26, 2u);
      v27 = sub_24FF42D6C();
      sub_24FF42088(v27, v28, 2u);
      v24 = *&v2 == *&v5;
      return v24 & 1;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_41;
      }

      v29 = sub_24FF4259C();
      sub_24FF42088(v29, v30, 3u);
      v31 = sub_24FF42D6C();
      sub_24FF42088(v31, v32, 3u);
      v24 = v2 == v5;
      return v24 & 1;
    case 4u:
      if (v7 != 4)
      {
        goto LABEL_41;
      }

      v20 = sub_24FF4259C();
      sub_24FF42088(v20, v21, 4u);
      v22 = sub_24FF42D6C();
      sub_24FF42088(v22, v23, 4u);
      v24 = LOBYTE(v5) ^ LOBYTE(v2) ^ 1;
      return v24 & 1;
    case 5u:
      if (v7 != 5)
      {
        goto LABEL_40;
      }

      v46 = *a1;
      if (*&v2 != *&v5 || v3 != v6)
      {
        v10 = sub_24FF42D78(*&v46, v3);
        v48 = sub_24FF42D6C();
        v50 = sub_24FF42D50(v48, v49, 5u);
        v52 = sub_24FF42D50(v50, v51, 5u);
        sub_24FF42088(v52, v53, 5u);
        v17 = sub_24FF42D6C();
        v19 = 5;
        goto LABEL_39;
      }

      v78 = sub_24FF42D50(*&v46, v3, 5u);
      v80 = sub_24FF42D50(v78, v79, 5u);
      sub_24FF42088(v80, v81, 5u);
      v36 = sub_24FF4259C();
      v83 = 5;
      goto LABEL_103;
    case 6u:
      if (v7 != 6)
      {
        goto LABEL_40;
      }

      v54 = *a1;
      if (*&v2 != *&v5 || v3 != v6)
      {
        v10 = sub_24FF42D78(*&v54, v3);
        v56 = sub_24FF42D6C();
        v58 = sub_24FF42D50(v56, v57, 6u);
        v60 = sub_24FF42D50(v58, v59, 6u);
        sub_24FF42088(v60, v61, 6u);
        v17 = sub_24FF42D6C();
        v19 = 6;
        goto LABEL_39;
      }

      v84 = sub_24FF42D50(*&v54, v3, 6u);
      v86 = sub_24FF42D50(v84, v85, 6u);
      sub_24FF42088(v86, v87, 6u);
      v36 = sub_24FF4259C();
      v83 = 6;
      goto LABEL_103;
    case 7u:
      switch(*&v2)
      {
        case 1:
          if (v7 != 7 || *&v5 != 1 || v6 != 0)
          {
            goto LABEL_41;
          }

          v106 = sub_24FF4259C();
          sub_24FF42088(v106, v107, 7u);
          v24 = 1;
          v75 = 1;
          v76 = 0;
          v77 = 7;
          goto LABEL_44;
        case 2:
          if (v7 != 7 || *&v5 != 2 || v6 != 0)
          {
            goto LABEL_41;
          }

          v98 = sub_24FF4259C();
          sub_24FF42088(v98, v99, 7u);
          v36 = 2;
          break;
        case 3:
          if (v7 != 7 || *&v5 != 3 || v6 != 0)
          {
            goto LABEL_41;
          }

          v102 = sub_24FF4259C();
          sub_24FF42088(v102, v103, 7u);
          v36 = 3;
          break;
        case 4:
          if (v7 != 7 || *&v5 != 4 || v6 != 0)
          {
            goto LABEL_41;
          }

          v94 = sub_24FF4259C();
          sub_24FF42088(v94, v95, 7u);
          v36 = 4;
          break;
        case 5:
          if (v7 != 7 || *&v5 != 5 || v6 != 0)
          {
            goto LABEL_41;
          }

          v110 = sub_24FF4259C();
          sub_24FF42088(v110, v111, 7u);
          v36 = 5;
          break;
        case 6:
          if (v7 != 7 || *&v5 != 6 || v6 != 0)
          {
            goto LABEL_41;
          }

          v114 = sub_24FF4259C();
          sub_24FF42088(v114, v115, 7u);
          v36 = 6;
          break;
        default:
          if (v7 != 7 || (v6 | *&v5) != 0)
          {
            goto LABEL_41;
          }

          v34 = sub_24FF4259C();
          sub_24FF42088(v34, v35, 7u);
          v36 = 0;
          break;
      }

      v82 = 0;
      v83 = 7;
      goto LABEL_103;
    default:
      if (*(a2 + 16))
      {
LABEL_40:

LABEL_41:
        v63 = sub_24FF42D6C();
        v65 = sub_24FF42D50(v63, v64, v7);
        sub_24FF42088(v65, v66, v4);
        v67 = sub_24FF42D6C();
        sub_24FF42088(v67, v68, v7);
        v24 = 0;
        return v24 & 1;
      }

      v8 = *a1;
      if (*&v2 == *&v5 && v3 == v6)
      {
        v88 = sub_24FF42D50(*&v8, v3, 0);
        v90 = sub_24FF42D50(v88, v89, 0);
        sub_24FF42088(v90, v91, 0);
        v36 = sub_24FF4259C();
        v83 = 0;
LABEL_103:
        sub_24FF42088(v36, v82, v83);
        v24 = 1;
        return v24 & 1;
      }

      v10 = sub_24FF42D78(*&v8, v3);
      v11 = sub_24FF42D6C();
      v13 = sub_24FF42D50(v11, v12, 0);
      v15 = sub_24FF42D50(v13, v14, 0);
      sub_24FF42088(v15, v16, 0);
      v17 = sub_24FF42D6C();
      v19 = 0;
LABEL_39:
      sub_24FF42088(v17, v18, v19);
      return v10 & 1;
  }
}

uint64_t sub_24FF42C88(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_24FF42CA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 17))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24FF42CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24FF42D28(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24FF42D78(uint64_t a1, uint64_t a2)
{

  return sub_24FF62158();
}

uint64_t sub_24FF42DB0(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  sub_24FF2BBD4();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF42DDC()
{
  sub_24FF2BC7C();
  sub_24FF61F18();
  *(v0 + 192) = **(v0 + 184);
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_24FF42EB4;

  return sub_24FF454B8();
}

uint64_t sub_24FF42EB4()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {
    sub_24FF45090();

    return v7();
  }

  else
  {
    v9 = *(v3 + 192);
    *(v3 + 208) = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;

    return MEMORY[0x2822009F8](sub_24FF42FE8, v9, 0);
  }
}

uint64_t sub_24FF42FE8()
{
  sub_24FF2BC70();
  sub_24FF45110();
  *(v0 + 216) = v1;
  *(v0 + 224) = *(v2 + 8);

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF43058()
{
  v48 = v0;
  if (!*(v0 + 224))
  {
    v13 = *(v0 + 176);
    *v13 = 0;
    v13[1] = 0;
    sub_24FF450B0(*(v0 + 176));
    sub_24FF2C1EC();

    __asm { BRAA            X1, X16 }
  }

  if (qword_280B15CB8 != -1)
  {
    swift_once();
  }

  v1 = sub_24FF61BC8();
  sub_24FF278EC(v1, qword_280B16918);

  v2 = sub_24FF61BA8();
  v3 = sub_24FF62008();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v47 = v7;
    *v6 = 136315138;

    v8 = sub_24FF5BBE0(v5, v4, &v47);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_24FF22000, v2, v3, "#JsonTokenizer next character is %s", v6, 0xCu);
    sub_24FF25A6C(v7);
    MEMORY[0x25305D1B0](v7, -1, -1);
    MEMORY[0x25305D1B0](v6, -1, -1);
  }

  v9 = *(v0 + 224);
  if (*(v0 + 216) == 123 && v9 == 0xE100000000000000)
  {
    v12 = 0;
    goto LABEL_16;
  }

  if (sub_24FF62158())
  {
    v12 = 0;
LABEL_16:

    *(v0 + 392) = 7;
    *(v0 + 368) = v12;
    *(v0 + 376) = 0;
    v16 = swift_task_alloc();
    *(v0 + 384) = v16;
    *v16 = v0;
    sub_24FF450A0(v16);
    sub_24FF2C1EC();

    return sub_24FF46748();
  }

  v19 = *(v0 + 216);
  if (v19 == 125 && v9 == 0xE100000000000000)
  {
    v12 = 1;
    goto LABEL_16;
  }

  if (sub_24FF450F8(125, v11, v19, *(v0 + 224)))
  {
    v12 = 1;
    goto LABEL_16;
  }

  v22 = *(v0 + 216);
  if (v22 == 91 && v9 == 0xE100000000000000)
  {
    v12 = 2;
    goto LABEL_16;
  }

  if (sub_24FF450F8(91, v21, v22, *(v0 + 224)))
  {
    v12 = 2;
    goto LABEL_16;
  }

  v25 = *(v0 + 216);
  if (v25 == 93 && v9 == 0xE100000000000000)
  {
    v12 = 3;
    goto LABEL_16;
  }

  if (sub_24FF450F8(93, v24, v25, *(v0 + 224)))
  {
    v12 = 3;
    goto LABEL_16;
  }

  v28 = *(v0 + 216);
  v29 = v28 == 34 && v9 == 0xE100000000000000;
  if (v29 || (sub_24FF450F8(34, v27, v28, *(v0 + 224)) & 1) != 0)
  {

    v31 = swift_task_alloc();
    *(v0 + 232) = v31;
    *v31 = v0;
    sub_24FF450A0(v31);
    sub_24FF2C1EC();

    return sub_24FF45780();
  }

  else
  {
    v33 = *(v0 + 216);
    if (v33 == 44 && v9 == 0xE100000000000000)
    {
      v12 = 4;
      goto LABEL_16;
    }

    if (sub_24FF450F8(44, v30, v33, *(v0 + 224)))
    {
      v12 = 4;
      goto LABEL_16;
    }

    v36 = *(v0 + 216);
    v37 = v36 == 45 && v9 == 0xE100000000000000;
    if (v37 || (sub_24FF450F8(45, v35, v36, *(v0 + 224)) & 1) != 0)
    {
      v38 = swift_task_alloc();
      *(v0 + 280) = v38;
      *v38 = v0;
      sub_24FF450A0(v38);
      sub_24FF2C1EC();

      return sub_24FF46A64(v39, v40);
    }

    else if (sub_24FF61D18())
    {
      v42 = swift_task_alloc();
      *(v0 + 328) = v42;
      *v42 = v0;
      v42[1] = sub_24FF43F2C;
      sub_24FF2C1EC();

      return sub_24FF46EE4(v43);
    }

    else
    {

      v45 = swift_task_alloc();
      *(v0 + 344) = v45;
      *v45 = v0;
      sub_24FF450A0(v45);
      sub_24FF2C1EC();

      return sub_24FF478DC();
    }
  }
}

uint64_t sub_24FF43568()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  *v4 = *v1;
  v3[30] = v5;
  v3[31] = v6;

  if (v0)
  {
    sub_24FF45090();

    return v7();
  }

  else
  {
    v9 = v3[24];

    return MEMORY[0x2822009F8](sub_24FF43698, v9, 0);
  }
}

uint64_t sub_24FF43698()
{
  sub_24FF2BC70();
  sub_24FF45110();
  *(v0 + 256) = v1;
  *(v0 + 264) = *(v2 + 8);

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF43708()
{
  sub_24FF2BC70();
  v1 = v0[33];
  if (v1)
  {
    if (v1 == 0xE100000000000000 && v0[32] == 58)
    {

LABEL_6:
      v3 = swift_task_alloc();
      v0[34] = v3;
      *v3 = v0;
      sub_24FF450A0(v3);

      return sub_24FF46748();
    }

    v2 = sub_24FF62158();

    if (v2)
    {
      goto LABEL_6;
    }
  }

  v5 = v0[31];
  v6 = v0[22];
  *v6 = v0[30];
  v6[1] = v5;
  sub_24FF450B0(v0[22]);

  return v7();
}

uint64_t sub_24FF4381C()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {

    sub_24FF45090();

    return v7();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_24FF43944()
{
  v1 = v0[31];
  v2 = v0[22];
  *v2 = v0[30];
  v2[1] = v1;
  *(v0[22] + 16) = 0;
  return sub_24FF450C4();
}

uint64_t sub_24FF4395C()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v5;
  *(v3 + 296) = v6;

  if (v0)
  {

    sub_24FF45090();

    return v7();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_24FF43A90()
{
  sub_24FF2BC70();
  if (*(v0 + 296) && (v1 = sub_24FF61D18(), , (v1 & 1) != 0))
  {
    v2 = swift_task_alloc();
    *(v0 + 304) = v2;
    *v2 = v0;
    sub_24FF450A0(v2);

    return sub_24FF46748();
  }

  else
  {
    **(v0 + 176) = *(v0 + 216);
    sub_24FF450B0(*(v0 + 176));

    return v4();
  }
}

uint64_t sub_24FF43B78()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {

    sub_24FF45090();

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v3 + 312) = v9;
    *v9 = v5;
    v9[1] = sub_24FF43CD4;

    return sub_24FF46EE4(v3 + 136);
  }
}

uint64_t sub_24FF43CD4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (v0)
  {
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF43DD4()
{
  v13 = v0;
  if (!*(v0 + 160))
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 224);
    v5 = *(v0 + 176);
    sub_24FF44FC4(v0 + 136);
    *v5 = v3;
    v5[1] = v4;
    sub_24FF450B0(*(v0 + 176));
    goto LABEL_5;
  }

  v1 = *(v0 + 320);

  sub_24FF23620((v0 + 136), v0 + 96);
  sub_24FF257B8((v0 + 96), *(v0 + 120));
  sub_24FF448E0(v0 + 96, -1, v11);
  if (v1)
  {
    sub_24FF25A6C((v0 + 96));
    sub_24FF2BB34();
LABEL_5:

    return v2();
  }

  v8 = v11[0];
  v7 = v11[1];
  v9 = v12;
  sub_24FF25A6C((v0 + 96));
  *(v0 + 392) = v9;
  *(v0 + 368) = v8;
  *(v0 + 376) = v7;
  v10 = swift_task_alloc();
  *(v0 + 384) = v10;
  *v10 = v0;
  sub_24FF450A0(v10);

  return sub_24FF46748();
}

uint64_t sub_24FF43F2C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF4402C()
{
  v11 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 336);

    sub_24FF23620((v0 + 56), v0 + 16);
    sub_24FF257B8((v0 + 16), *(v0 + 40));
    sub_24FF448E0(v0 + 16, 1, v9);
    if (v1)
    {
      sub_24FF25A6C((v0 + 16));
      sub_24FF2BB34();
      goto LABEL_7;
    }

    v5 = *(v0 + 176);
    v7 = v9[0];
    v3 = v9[1];
    v6 = v10;
    sub_24FF25A6C((v0 + 16));
    *v5 = v7;
  }

  else
  {
    v4 = *(v0 + 216);
    v3 = *(v0 + 224);
    v5 = *(v0 + 176);
    sub_24FF44FC4(v0 + 56);
    *v5 = v4;
    v6 = 5;
  }

  v5[1] = v3;
  *(*(v0 + 176) + 16) = v6;
  sub_24FF24BC0();
LABEL_7:

  return v2();
}

uint64_t sub_24FF44138()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  *(v3 + 352) = v1;
  *(v3 + 360) = v2;

  if (v0)
  {
    sub_24FF24BC0();

    return v4();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_24FF4425C()
{
  sub_24FF2BC7C();
  v1 = sub_24FF61D58();
  v3 = v2;
  v4 = v1 == 1819047278 && v2 == 0xE400000000000000;
  if (v4 || (v5 = v1, (sub_24FF450DC(1819047278, 0xE400000000000000) & 1) != 0))
  {

    *v0[22] = xmmword_24FF63920;
    v6 = 7;
    goto LABEL_14;
  }

  v7 = v5 == 1702195828 && v3 == 0xE400000000000000;
  if (v7 || (sub_24FF450DC(1702195828, 0xE400000000000000) & 1) != 0)
  {

    *v0[22] = xmmword_24FF635F0;
LABEL_13:
    v6 = 4;
    goto LABEL_14;
  }

  if (v5 == 0x65736C6166 && v3 == 0xE500000000000000)
  {

    goto LABEL_24;
  }

  v11 = sub_24FF450DC(0x65736C6166, 0xE500000000000000);

  v12 = v0[45];
  if (v11)
  {
LABEL_24:

    v14 = v0[22];
    *v14 = 0;
    v14[1] = 0;
    goto LABEL_13;
  }

  v13 = v0[22];
  *v13 = v0[44];
  v13[1] = v12;
  v6 = 6;
LABEL_14:
  *(v0[22] + 16) = v6;
  sub_24FF24BC0();

  return v8();
}

uint64_t sub_24FF443E8()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {
    sub_24FF42088(*(v3 + 368), *(v3 + 376), *(v3 + 392));
    sub_24FF45090();

    return v7();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_24FF44514()
{
  **(v0 + 176) = *(v0 + 368);
  *(*(v0 + 176) + 16) = *(v0 + 392);
  return sub_24FF450C4();
}

uint64_t sub_24FF44540()
{
  sub_24FF2BC70();
  v0[2] = v1;
  v2 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF44604()
{
  sub_24FF2BC70();
  v1 = v0[5];
  (*(v0[4] + 16))(v1, v0[2], v0[3]);
  type metadata accessor for JsonTokenStream(0);
  swift_allocObject();
  v0[6] = sub_24FF47CF4(v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_24FF446D4;

  return sub_24FF45124();
}

uint64_t sub_24FF446D4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *v1;
  sub_24FF2BACC();
  *v3 = v2;
  *(v4 + 64) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF447D4()
{
  sub_24FF2BC70();
  (*(v0[4] + 8))(v0[2], v0[3]);

  v1 = v0[1];
  v2 = v0[6];

  return v1(v2);
}

uint64_t sub_24FF44850()
{
  sub_24FF2BC7C();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  (*(v2 + 8))(v3, v1);

  sub_24FF24BC0();

  return v4();
}

uint64_t sub_24FF448E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24FF420F4(a1, v10);
  sub_24FF25460(&qword_27F3B4300, &qword_24FF63A28);
  result = swift_dynamicCast();
  if (result)
  {
    *&v6 = *&v9 * a2;
    if ((*&v9 * a2) >> 64 == (*&v9 * a2) >> 63)
    {
      v7 = 2;
LABEL_6:
      result = sub_24FF25A6C(v10);
      *a3 = v6;
      *(a3 + 8) = 0;
      *(a3 + 16) = v7;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (swift_dynamicCast())
    {
      v6 = v9 * a2;
      v7 = 3;
      goto LABEL_6;
    }

    sub_24FF62098();
    MEMORY[0x25305C910](0xD000000000000022, 0x800000024FF67360);
    sub_24FF620E8();
    sub_24FF4502C();
    swift_allocError();
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    swift_willThrow();
    return sub_24FF25A6C(v10);
  }

  return result;
}

uint64_t sub_24FF44A64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  j__swift_retain(v3);

  *a1 = v3;
  return result;
}

uint64_t sub_24FF44A98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24FF2C5C0;

  return sub_24FF42DB0(a1);
}

uint64_t sub_24FF44B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24FF44BFC;

  return sub_24FF44D4C(a1, a2, a3);
}

uint64_t sub_24FF44BFC()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  sub_24FF45090();

  return v7();
}

unint64_t sub_24FF44CF8()
{
  result = qword_27F3B42E8;
  if (!qword_27F3B42E8)
  {
    result = swift_getWitnessTable(asc_24FF63978, &type metadata for JsonTokenizer, v0, v1);
    atomic_store(result, &qword_27F3B42E8);
  }

  return result;
}

uint64_t sub_24FF44D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_24FF44DE8;

  return sub_24FF42DB0(a1);
}

uint64_t sub_24FF44DE8()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      swift_getObjectType();
      v7 = sub_24FF61E98();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    return MEMORY[0x2822009F8](sub_24FF44F3C, v7, v9);
  }

  else
  {
    sub_24FF24BC0();

    return v10();
  }
}

uint64_t sub_24FF44F3C()
{
  sub_24FF2BC70();
  *(v0 + 16) = *(v0 + 48);
  sub_24FF25460(&qword_27F3B42F0, &qword_24FF63AF0);
  swift_willThrowTypedImpl();
  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF44FC4(uint64_t a1)
{
  v2 = sub_24FF25460(&qword_27F3B42F8, &qword_24FF63A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FF4502C()
{
  result = qword_27F3B4308;
  if (!qword_27F3B4308)
  {
    result = swift_getWitnessTable("%z-2\\*", &type metadata for JsonTokenizer.JsonTokenizerError, v0, v1);
    atomic_store(result, &qword_27F3B4308);
  }

  return result;
}

uint64_t sub_24FF450DC(uint64_t a1, uint64_t a2)
{

  return sub_24FF62158();
}

uint64_t sub_24FF450F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_24FF62158();
}

uint64_t sub_24FF45124()
{
  sub_24FF2BC70();
  *(v1 + 16) = v0;
  sub_24FF25460(&qword_27F3B4360, &qword_24FF63C20);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF451BC, v0, 0);
}

uint64_t sub_24FF451BC()
{
  sub_24FF2BC7C();
  v1 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_started;
  v0[4] = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_started;
  v3 = v0[2];
  v2 = v0[3];
  if (*(v3 + v1))
  {

    sub_24FF321B0();

    return v4();
  }

  else
  {
    v6 = sub_24FF61EC8();
    sub_24FF24B98(v2, 1, 1, v6);
    v7 = sub_24FF4C2F8();
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v7;
    v8[4] = v3;
    swift_retain_n();
    sub_24FF4CA40();
    sub_24FF4CF18();
    *(v3 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_streamingTask) = v9;

    v10 = swift_task_alloc();
    v0[5] = v10;
    *v10 = v0;
    v10[1] = sub_24FF4532C;

    return sub_24FF46748();
  }
}

uint64_t sub_24FF4532C()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {

    sub_24FF45090();

    return v7();
  }

  else
  {
    v9 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_24FF45450()
{
  sub_24FF2BC70();
  *(*(v0 + 16) + *(v0 + 32)) = 1;

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF454D4()
{
  sub_24FF2BC70();
  *(v1 + 24) = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  sub_24FF4CB1C();
  if (v0 && (sub_24FF4CBF0(), sub_24FF4259C(), v2 = sub_24FF61CE8(), , (v2 & 1) != 0))
  {
    v3 = swift_task_alloc();
    *(v1 + 32) = v3;
    *v3 = v1;
    sub_24FF4C7DC(v3);

    return sub_24FF46748();
  }

  else
  {
    sub_24FF321B0();

    return v5();
  }
}

uint64_t sub_24FF455A0()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {
    sub_24FF45090();

    return v7();
  }

  else
  {
    v9 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_24FF456BC()
{
  sub_24FF2BC70();
  if (*(v0[2] + v0[3] + 8) && (sub_24FF4CBF0(), sub_24FF4259C(), v1 = sub_24FF61CE8(), , (v1 & 1) != 0))
  {
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    sub_24FF4C7DC(v2);

    return sub_24FF46748();
  }

  else
  {
    sub_24FF321B0();

    return v4();
  }
}

uint64_t sub_24FF45780()
{
  sub_24FF2BC70();
  v1[8] = v0;
  v1[9] = *v0;
  v2 = swift_task_alloc();
  v1[10] = v2;
  *v2 = v1;
  v2[1] = sub_24FF4583C;

  return sub_24FF488A8(34, 0xE100000000000000);
}

uint64_t sub_24FF4583C()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {
    sub_24FF45090();

    return v7();
  }

  else
  {
    v9 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_24FF45958()
{
  sub_24FF2BC7C();
  v0[2] = 0;
  v1 = v0[8];
  v0[3] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  v0[11] = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  v3 = (v1 + v2);
  v4 = v3[1];
  if (!v4 || ((v5 = *v3, *v3 == 34) ? (v6 = v4 == 0xE100000000000000) : (v6 = 0), v6 || (v7 = sub_24FF4C758(), (sub_24FF4C8C8(v7, v8) & 1) != 0)))
  {
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v10 = sub_24FF4C560(v9);

    return sub_24FF488A8(v10, v11);
  }

  else
  {
    v13 = v5 == 92 && v4 == 0xE100000000000000;
    if (v13 || (v14 = sub_24FF4C758(), (sub_24FF4C92C(v14, v15, 92) & 1) != 0))
    {
      v16 = swift_task_alloc();
      v17 = sub_24FF4CB3C(v16);
      *v17 = v18;
      sub_24FF4C5F0();
    }

    else
    {
      v0[4] = 0;
      v0[5] = 0xE000000000000000;

      sub_24FF61CF8();

      MEMORY[0x25305C910](v0[4], v0[5]);

      v21 = swift_task_alloc();
      v0[22] = v21;
      *v21 = v0;
      sub_24FF4C60C();
    }

    *(v19 + 8) = v20;
    sub_24FF4C900();

    return sub_24FF46748();
  }
}

uint64_t sub_24FF45B0C()
{
  sub_24FF2BC7C();
  sub_24FF4C9F8();
  sub_24FF2BACC();
  *v3 = v0;
  *v3 = *v2;
  *(v0 + 104) = v1;

  sub_24FF4CA34();
  if (v1)
  {
  }

  sub_24FF4C764();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24FF45C28()
{
  sub_24FF2BC30();
  sub_24FF4C9AC();
  v2 = v1[1];
  if (!v2)
  {

    sub_24FF4B054();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 2;
    swift_willThrow();
    goto LABEL_14;
  }

  v3 = *v1;
  v4 = *v1 == 117 && v2 == 0xE100000000000000;
  if (v4 || (sub_24FF4C92C(v3, v2, 117) & 1) != 0)
  {
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v6 = sub_24FF45DFC;
    goto LABEL_8;
  }

  v10 = v0[13];

  v11 = sub_24FF4A254(v3, v2);
  if (v10)
  {

LABEL_14:
    sub_24FF24BC0();
    sub_24FF2C004();

    __asm { BRAA            X1, X16 }
  }

  v15 = v11;
  v16 = v12;

  MEMORY[0x25305C910](v15, v16);

  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v6 = sub_24FF46230;
LABEL_8:
  v5[1] = v6;
  sub_24FF4C900();
  sub_24FF2C004();

  return sub_24FF46748();
}

uint64_t sub_24FF45DFC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {
    v7 = v3[8];

    return MEMORY[0x2822009F8](sub_24FF46720, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[16] = v8;
    *v8 = v5;
    v8[1] = sub_24FF45F5C;

    return sub_24FF48AF8();
  }
}

uint64_t sub_24FF45F5C()
{
  sub_24FF2BC7C();
  sub_24FF4C9F8();
  sub_24FF2BACC();
  *v3 = v0;
  v4 = *v2;
  sub_24FF2BB08();
  *v5 = v4;
  v0[17] = v6;
  v0[18] = v7;
  v0[19] = v1;

  sub_24FF4CA34();
  if (v1)
  {
  }

  sub_24FF4C764();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_24FF4607C()
{
  sub_24FF2BC7C();
  v1 = v0[18];
  if (v1)
  {
    v0[6] = v0[17];
    v0[7] = v1;
    v2 = sub_24FF61E58();
    MEMORY[0x25305C910](v2);
  }

  sub_24FF4C9AC();
  v4 = v3[1];
  if (!v4 || ((v5 = *v3, *v3 == 34) ? (v6 = v4 == 0xE100000000000000) : (v6 = 0), v6 || (v7 = sub_24FF4259C(), (sub_24FF4C8C8(v7, v8) & 1) != 0)))
  {
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v10 = sub_24FF4C560(v9);

    return sub_24FF488A8(v10, v11);
  }

  else
  {
    v13 = v5 == 92 && v4 == 0xE100000000000000;
    if (v13 || (v14 = sub_24FF4259C(), (sub_24FF4C92C(v14, v15, 92) & 1) != 0))
    {
      v16 = swift_task_alloc();
      v17 = sub_24FF4CB3C(v16);
      *v17 = v18;
      sub_24FF4C5F0();
    }

    else
    {
      sub_24FF4CA64();
      sub_24FF4C758();
      sub_24FF61CF8();

      sub_24FF4CBB0();

      v21 = swift_task_alloc();
      v0[22] = v21;
      *v21 = v0;
      sub_24FF4C60C();
    }

    *(v19 + 8) = v20;
    sub_24FF4C900();

    return sub_24FF46748();
  }
}

uint64_t sub_24FF46230()
{
  sub_24FF2BC7C();
  sub_24FF4C9F8();
  sub_24FF2BACC();
  *v3 = v0;
  *v3 = *v2;
  *(v0 + 168) = v1;

  sub_24FF4CA34();
  if (v1)
  {
  }

  sub_24FF4C764();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24FF4634C()
{
  sub_24FF2BC7C();
  sub_24FF4C9F8();
  sub_24FF2BACC();
  *v3 = v0;
  *v3 = *v2;
  *(v0 + 184) = v1;

  sub_24FF4CA34();
  if (v1)
  {
  }

  sub_24FF4C764();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24FF46468()
{
  sub_24FF2BC7C();
  sub_24FF4C9AC();
  v2 = v1[1];
  if (!v2 || ((v3 = *v1, *v1 == 34) ? (v4 = v2 == 0xE100000000000000) : (v4 = 0), v4 || (v5 = sub_24FF4259C(), (sub_24FF4C8C8(v5, v6) & 1) != 0)))
  {
    v7 = swift_task_alloc();
    *(v0 + 192) = v7;
    *v7 = v0;
    v8 = sub_24FF4C560(v7);

    return sub_24FF488A8(v8, v9);
  }

  else
  {
    v11 = v3 == 92 && v2 == 0xE100000000000000;
    if (v11 || (v12 = sub_24FF4259C(), (sub_24FF4C92C(v12, v13, 92) & 1) != 0))
    {
      v14 = swift_task_alloc();
      v15 = sub_24FF4CB3C(v14);
      *v15 = v16;
      sub_24FF4C5F0();
    }

    else
    {
      sub_24FF4CA64();
      sub_24FF4C758();
      sub_24FF61CF8();

      sub_24FF4CBB0();

      v19 = swift_task_alloc();
      *(v0 + 176) = v19;
      *v19 = v0;
      sub_24FF4C60C();
    }

    *(v17 + 8) = v18;
    sub_24FF4C900();

    return sub_24FF46748();
  }
}

uint64_t sub_24FF465D8()
{
  sub_24FF2BC7C();
  sub_24FF4C9F8();
  sub_24FF2BACC();
  *v3 = v0;
  *v3 = *v2;
  *(v0 + 200) = v1;

  sub_24FF4CA34();
  if (v1)
  {
  }

  sub_24FF4C764();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24FF46764()
{
  sub_24FF32434();
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_readPosition;
  v3 = *(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_readPosition);
  sub_24FF4CABC(v4, v0 + 16);

  sub_24FF32440();
  v5 = sub_24FF61D98();

  v6 = *(v0 + 40);
  if (v3 >= v5)
  {
    if (*(v6 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_complete))
    {
      v15 = (v6 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter);
      *v15 = 0;
      v15[1] = 0;

LABEL_6:
      sub_24FF321B0();
      sub_24FF4CA1C();

      __asm { BRAA            X1, X16 }
    }

    v18 = swift_task_alloc();
    *(v0 + 48) = v18;
    *v18 = v0;
    sub_24FF4C6BC(v18);
    sub_24FF4CA1C();

    return sub_24FF4A500(v19);
  }

  else
  {

    sub_24FF61DA8();
    v7 = sub_24FF61E38();
    v9 = v8;

    v10 = (v6 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter);
    *v10 = v7;
    v10[1] = v9;

    v12 = *(v1 + v2);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      *(v1 + v2) = v14;
      goto LABEL_6;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24FF46914()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {
    sub_24FF45090();

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v3 + 56) = v9;
    *v9 = v5;
    v9[1] = sub_24FF2EA30;

    return sub_24FF46748();
  }
}

uint64_t sub_24FF46A64(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  return sub_24FF4C544(sub_24FF46A84, v2);
}

void sub_24FF46A84()
{
  sub_24FF32434();
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_readPosition;
  v4 = *(v2 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_readPosition);
  if (*(v2 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_complete) == 1)
  {
    sub_24FF4CABC(v1, (v0 + 5));

    sub_24FF32440();
    v5 = sub_24FF61D98();

    if (v4 >= v5)
    {
      goto LABEL_12;
    }

    v6 = v0[8];
    v7 = *(v2 + v3);
    v8 = __OFADD__(v7, v6);
    v9 = v7 + v6;
    if (v8)
    {
      goto LABEL_19;
    }

    if (!__OFSUB__(v9, 1))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v10 = v0[8];
  v11 = v4 + v10;
  if (__OFADD__(v4, v10))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_24FF4CABC(v1, (v0 + 2));

  sub_24FF32440();
  v12 = sub_24FF61D98();

  if (v11 < v12)
  {
    v13 = v0[8];
    v14 = *(v2 + v3);
    v8 = __OFADD__(v14, v13);
    v15 = v14 + v13;
    if (!v8)
    {
      if (!__OFSUB__(v15, 1))
      {
LABEL_11:

        sub_24FF61DA8();
        sub_24FF61E38();

LABEL_12:
        sub_24FF32440();
        sub_24FF4CA1C();

        __asm { BRAA            X3, X16 }
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  v18[1] = sub_24FF46C90;
  sub_24FF4CA1C();

  sub_24FF4A500(v19);
}

uint64_t sub_24FF46C90()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {
    sub_24FF45090();

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v3 + 88) = v9;
    *v9 = v5;
    v9[1] = sub_24FF46DE8;
    v10 = *(v3 + 96);
    v11 = *(v3 + 64);

    return sub_24FF46A64(v11, v10);
  }
}

uint64_t sub_24FF46DE8()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v2 = *v1;
  sub_24FF2BACC();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = sub_24FF4C758();
  }

  return v5(v4);
}

uint64_t sub_24FF46EE4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return sub_24FF4C544(sub_24FF46F00, v1);
}

void sub_24FF46F00()
{
  sub_24FF32434();
  *(v2 + 48) = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  sub_24FF4CB1C();
  v3 = MEMORY[0x277D84F90];
  if (!v1)
  {
LABEL_21:
    if (!*(v3 + 16))
    {
      v32 = *(v2 + 32);

      *(v32 + 32) = 0;
      *v32 = 0u;
      *(v32 + 16) = 0u;
      goto LABEL_96;
    }

    *(v2 + 16) = v3;
    v20 = sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    v21 = sub_24FF4B0A8();
    sub_24FF4C8E4(v21);
    sub_24FF4CA4C();
    if (!v23)
    {

      goto LABEL_94;
    }

    if ((v20 & 0x1000000000000000) != 0)
    {
      sub_24FF4BCDC(v22, v20, 10);
      v27 = v55;
      v46 = v56;
LABEL_93:

      if ((v46 & 1) == 0)
      {
        v48 = *(v2 + 32);
        v49 = MEMORY[0x277D83BC0];
        v48[3] = MEMORY[0x277D83B88];
        v48[4] = v49;
        *v48 = v27;
LABEL_96:
        sub_24FF321B0();
        sub_24FF4CC20();

        __asm { BRAA            X1, X16 }
      }

LABEL_94:
      v47 = *(v2 + 32);
      *(v47 + 32) = 0;
      *v47 = 0u;
      *(v47 + 16) = 0u;
      goto LABEL_96;
    }

    if ((v20 & 0x2000000000000000) != 0)
    {
      sub_24FF4CB90();
      if (v4)
      {
        if (v33)
        {
          if (v33 != 1)
          {
            sub_24FF4C730();
            while (1)
            {
              sub_24FF4C658();
              if (!v4 & v28)
              {
                break;
              }

              sub_24FF4C54C();
              if (!v4)
              {
                break;
              }

              v27 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                break;
              }

              sub_24FF4C724();
              if (v4)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_91;
        }

LABEL_104:
        __break(1u);
        return;
      }

      if (v34 != 45)
      {
        if (v33)
        {
          while (1)
          {
            sub_24FF4C658();
            if (!v4 & v28)
            {
              break;
            }

            sub_24FF4C54C();
            if (!v4)
            {
              break;
            }

            v27 = v45 + v44;
            if (__OFADD__(v45, v44))
            {
              break;
            }

            sub_24FF4C724();
            if (v4)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_91;
      }

      if (v33)
      {
        if (v33 != 1)
        {
          sub_24FF4C730();
          while (1)
          {
            sub_24FF4C658();
            if (!v4 & v28)
            {
              break;
            }

            sub_24FF4C54C();
            if (!v4)
            {
              break;
            }

            v27 = v36 - v35;
            if (__OFSUB__(v36, v35))
            {
              break;
            }

            sub_24FF4C724();
            if (v4)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_91;
      }
    }

    else
    {
      if ((v22 & 0x1000000000000000) == 0)
      {
        sub_24FF620A8();
      }

      sub_24FF4C990();
      if (v4)
      {
        if (v25 >= 1)
        {
          if (v25 != 1)
          {
            v27 = 0;
            if (v24)
            {
              sub_24FF4CBA4();
              while (1)
              {
                sub_24FF4C658();
                if (!v4 & v28)
                {
                  goto LABEL_91;
                }

                sub_24FF4C54C();
                if (!v4)
                {
                  goto LABEL_91;
                }

                v27 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  goto LABEL_91;
                }

                sub_24FF4C724();
                if (v4)
                {
                  goto LABEL_92;
                }
              }
            }

            goto LABEL_82;
          }

          goto LABEL_91;
        }

        goto LABEL_103;
      }

      if (v26 != 45)
      {
        if (v25)
        {
          v27 = 0;
          if (v24)
          {
            while (*v24 - 48 <= 9)
            {
              sub_24FF4CB68();
              if (!v4)
              {
                break;
              }

              v27 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                break;
              }

              v24 = sub_24FF4C978(v41);
              if (v4)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_91;
          }

          goto LABEL_82;
        }

LABEL_91:
        v27 = 0;
        v31 = 1;
        goto LABEL_92;
      }

      if (v25 >= 1)
      {
        if (v25 != 1)
        {
          v27 = 0;
          if (v24)
          {
            sub_24FF4CBA4();
            while (1)
            {
              sub_24FF4C658();
              if (!v4 & v28)
              {
                goto LABEL_91;
              }

              sub_24FF4C54C();
              if (!v4)
              {
                goto LABEL_91;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_91;
              }

              sub_24FF4C724();
              if (v4)
              {
                goto LABEL_92;
              }
            }
          }

LABEL_82:
          v31 = 0;
LABEL_92:
          v46 = v31;
          goto LABEL_93;
        }

        goto LABEL_91;
      }

      __break(1u);
    }

    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_24FF4CBF0();
  sub_24FF4259C();
  if ((sub_24FF61D18() & 1) == 0)
  {
    v4 = v0 == 46 && v1 == 0xE100000000000000;
    if (!v4)
    {
      v5 = sub_24FF4259C();
      if ((sub_24FF4C92C(v5, v6, 46) & 1) == 0)
      {

        goto LABEL_21;
      }
    }
  }

  if (v0 == 46 && v1 == 0xE100000000000000)
  {
    v11 = MEMORY[0x277D84F90];
    v10 = 1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_13;
    }

LABEL_19:
    v17 = sub_24FF4C6AC();
    v11 = sub_24FF4B10C(v17, v18, v19, v3);
    goto LABEL_13;
  }

  v8 = sub_24FF4259C();
  v10 = sub_24FF4C92C(v8, v9, 46);
  v11 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  *(v2 + 72) = v10 & 1;
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v52 = sub_24FF4C744(v12);
    v11 = sub_24FF4B10C(v52, v53, v54, v11);
  }

  *(v2 + 56) = v11;
  *(v11 + 2) = v13 + 1;
  v14 = &v11[16 * v13];
  *(v14 + 4) = v0;
  *(v14 + 5) = v1;
  v15 = swift_task_alloc();
  *(v2 + 64) = v15;
  *v15 = v2;
  sub_24FF4C6BC(v15);
  sub_24FF4CC20();

  sub_24FF46748();
}

uint64_t sub_24FF47328()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {

    sub_24FF45090();

    return v7();
  }

  else
  {
    v9 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_24FF4744C()
{
  sub_24FF32434();
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = (*(v0 + 40) + *(v0 + 48));
  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_26;
  }

  v5 = *v3;

  sub_24FF4C758();
  if ((sub_24FF61D18() & 1) == 0)
  {
    v6 = v5 == 46 && v4 == 0xE100000000000000;
    if (v6 || (v7 = sub_24FF4C758(), (sub_24FF4C92C(v7, v8, 46) & 1) != 0))
    {
      if ((v2 & 1) == 0)
      {
        goto LABEL_13;
      }

      if (!*(v1 + 2))
      {
        goto LABEL_30;
      }

LABEL_28:
      *(v0 + 24) = v1;
      sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
      sub_24FF4B0A8();
      v21 = sub_24FF61E48();
      v23 = sub_24FF48848(v21, v22);
      v24 = *(v0 + 32);
      if ((v25 & 1) == 0)
      {
        v26 = MEMORY[0x277D83A38];
        *(v24 + 24) = MEMORY[0x277D839F8];
        *(v24 + 32) = v26;
        *v24 = v23;
        goto LABEL_105;
      }

      goto LABEL_103;
    }

LABEL_26:
    if (!*(v1 + 2))
    {
LABEL_30:
      v27 = *(v0 + 32);

      *(v27 + 32) = 0;
      *v27 = 0u;
      *(v27 + 16) = 0u;
      goto LABEL_105;
    }

    if (v2)
    {
      goto LABEL_28;
    }

    *(v0 + 16) = v1;
    v28 = sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    v29 = sub_24FF4B0A8();
    sub_24FF4C8E4(v29);
    sub_24FF4CA4C();
    if (!v31)
    {

LABEL_102:
      v24 = *(v0 + 32);
LABEL_103:
      *(v24 + 32) = 0;
      *v24 = 0u;
      *(v24 + 16) = 0u;
      goto LABEL_105;
    }

    if ((v28 & 0x1000000000000000) != 0)
    {
      sub_24FF4BCDC(v30, v28, 10);
      v35 = v61;
      v53 = v62;
LABEL_101:

      if ((v53 & 1) == 0)
      {
        v54 = *(v0 + 32);
        v55 = MEMORY[0x277D83BC0];
        v54[3] = MEMORY[0x277D83B88];
        v54[4] = v55;
        *v54 = v35;
LABEL_105:
        sub_24FF321B0();
        sub_24FF4CC20();

        __asm { BRAA            X1, X16 }
      }

      goto LABEL_102;
    }

    if ((v28 & 0x2000000000000000) != 0)
    {
      sub_24FF4CB90();
      if (v6)
      {
        if (v40)
        {
          if (v40 != 1)
          {
            sub_24FF4C730();
            while (1)
            {
              sub_24FF4C658();
              if (!v6 & v36)
              {
                break;
              }

              sub_24FF4C54C();
              if (!v6)
              {
                break;
              }

              v35 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                break;
              }

              sub_24FF4C724();
              if (v6)
              {
                goto LABEL_100;
              }
            }
          }

          goto LABEL_99;
        }

LABEL_113:
        __break(1u);
        return;
      }

      if (v41 != 45)
      {
        if (v40)
        {
          while (1)
          {
            sub_24FF4C658();
            if (!v6 & v36)
            {
              break;
            }

            sub_24FF4C54C();
            if (!v6)
            {
              break;
            }

            v35 = v52 + v51;
            if (__OFADD__(v52, v51))
            {
              break;
            }

            sub_24FF4C724();
            if (v6)
            {
              goto LABEL_100;
            }
          }
        }

        goto LABEL_99;
      }

      if (v40)
      {
        if (v40 != 1)
        {
          sub_24FF4C730();
          while (1)
          {
            sub_24FF4C658();
            if (!v6 & v36)
            {
              break;
            }

            sub_24FF4C54C();
            if (!v6)
            {
              break;
            }

            v35 = v43 - v42;
            if (__OFSUB__(v43, v42))
            {
              break;
            }

            sub_24FF4C724();
            if (v6)
            {
              goto LABEL_100;
            }
          }
        }

        goto LABEL_99;
      }
    }

    else
    {
      if ((v30 & 0x1000000000000000) == 0)
      {
        sub_24FF620A8();
      }

      sub_24FF4C990();
      if (v6)
      {
        if (v33 >= 1)
        {
          if (v33 != 1)
          {
            v35 = 0;
            if (v32)
            {
              sub_24FF4CBA4();
              while (1)
              {
                sub_24FF4C658();
                if (!v6 & v36)
                {
                  goto LABEL_99;
                }

                sub_24FF4C54C();
                if (!v6)
                {
                  goto LABEL_99;
                }

                v35 = v45 + v44;
                if (__OFADD__(v45, v44))
                {
                  goto LABEL_99;
                }

                sub_24FF4C724();
                if (v6)
                {
                  goto LABEL_100;
                }
              }
            }

            goto LABEL_90;
          }

          goto LABEL_99;
        }

        goto LABEL_112;
      }

      if (v34 != 45)
      {
        if (v33)
        {
          v35 = 0;
          if (v32)
          {
            while (*v32 - 48 <= 9)
            {
              sub_24FF4CB68();
              if (!v6)
              {
                break;
              }

              v35 = v50 + v49;
              if (__OFADD__(v50, v49))
              {
                break;
              }

              v32 = sub_24FF4C978(v48);
              if (v6)
              {
                goto LABEL_90;
              }
            }

            goto LABEL_99;
          }

          goto LABEL_90;
        }

LABEL_99:
        v35 = 0;
        v39 = 1;
        goto LABEL_100;
      }

      if (v33 >= 1)
      {
        if (v33 != 1)
        {
          v35 = 0;
          if (v32)
          {
            sub_24FF4CBA4();
            while (1)
            {
              sub_24FF4C658();
              if (!v6 & v36)
              {
                goto LABEL_99;
              }

              sub_24FF4C54C();
              if (!v6)
              {
                goto LABEL_99;
              }

              v35 = v38 - v37;
              if (__OFSUB__(v38, v37))
              {
                goto LABEL_99;
              }

              sub_24FF4C724();
              if (v6)
              {
                goto LABEL_100;
              }
            }
          }

LABEL_90:
          v39 = 0;
LABEL_100:
          v53 = v39;
          goto LABEL_101;
        }

        goto LABEL_99;
      }

      __break(1u);
    }

    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (v2)
  {
    goto LABEL_19;
  }

LABEL_13:
  if (v5 == 46 && v4 == 0xE100000000000000)
  {
LABEL_19:
    v12 = 1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v10 = sub_24FF4C758();
  v12 = sub_24FF4C92C(v10, v11, 46);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v13 = sub_24FF4C6AC();
    v1 = sub_24FF4B10C(v13, v14, v15, v1);
  }

LABEL_20:
  *(v0 + 72) = v12 & 1;
  v17 = *(v1 + 2);
  v16 = *(v1 + 3);
  if (v17 >= v16 >> 1)
  {
    v58 = sub_24FF4C878(v16);
    v1 = sub_24FF4B10C(v58, v59, v60, v1);
  }

  *(v0 + 56) = v1;
  *(v1 + 2) = v17 + 1;
  v18 = &v1[16 * v17];
  *(v18 + 4) = v5;
  *(v18 + 5) = v4;
  v19 = swift_task_alloc();
  *(v0 + 64) = v19;
  *v19 = v0;
  sub_24FF4C6BC(v19);
  sub_24FF4CC20();

  sub_24FF46748();
}

uint64_t sub_24FF478F8()
{
  sub_24FF2BC30();
  v2[4] = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  sub_24FF4CB1C();
  if (!v1)
  {
LABEL_11:
    v2[2] = MEMORY[0x277D84F90];
    sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    sub_24FF4B0A8();
    sub_24FF61E48();
    sub_24FF4C8AC();
    sub_24FF2C004();

    __asm { BRAA            X3, X16 }
  }

  sub_24FF4CBF0();
  sub_24FF4259C();
  if ((sub_24FF61D08() & 1) == 0)
  {

    goto LABEL_11;
  }

  v3 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_24FF4C6AC();
    v3 = sub_24FF4B10C(v12, v13, v14, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v15 = sub_24FF4C878(v4);
    v3 = sub_24FF4B10C(v15, v16, v17, v3);
  }

  v2[5] = v3;
  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = v0;
  *(v6 + 5) = v1;
  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  sub_24FF4C804(v7);
  sub_24FF2C004();

  return sub_24FF46748();
}

uint64_t sub_24FF47A6C()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {

    sub_24FF45090();

    return v7();
  }

  else
  {
    v9 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_24FF47B90()
{
  sub_24FF2BC30();
  v1 = v0[5];
  v2 = (v0[3] + v0[4]);
  v3 = v2[1];
  if (!v3)
  {
LABEL_11:
    v0[2] = v1;
    sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    sub_24FF4B0A8();
    sub_24FF4259C();
    sub_24FF61E48();
    sub_24FF4C8AC();
    sub_24FF2C004();

    __asm { BRAA            X3, X16 }
  }

  v4 = *v2;

  sub_24FF4C758();
  if ((sub_24FF61D08() & 1) == 0)
  {

    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_24FF4C6AC();
    v1 = sub_24FF4B10C(v13, v14, v15, v1);
  }

  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  if (v6 >= v5 >> 1)
  {
    v16 = sub_24FF4C878(v5);
    v1 = sub_24FF4B10C(v16, v17, v18, v1);
  }

  v0[5] = v1;
  *(v1 + 2) = v6 + 1;
  v7 = &v1[16 * v6];
  *(v7 + 4) = v4;
  *(v7 + 5) = v3;
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  sub_24FF4C804(v8);
  sub_24FF2C004();

  return sub_24FF46748();
}

uint64_t sub_24FF47CF4(uint64_t a1)
{
  v26 = a1;
  v2 = sub_24FF25460(&qword_27F3B4378, qword_24FF63C58);
  sub_24FF2552C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  sub_24FF25460(&qword_27F3B4348, &qword_24FF63BF8);
  sub_24FF2552C();
  v27 = v9;
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v25 = sub_24FF25460(&qword_27F3B4340, &qword_24FF63BD0);
  sub_24FF2552C();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_readPosition) = 0;
  v17 = (v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_buffer);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_complete) = 0;
  *(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_streamingTask) = 0;
  v18 = (v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter);
  *v18 = 0;
  v18[1] = 0;
  *(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_started) = 0;
  v19 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_sourceStream;
  v20 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  v21 = *(v20 - 8);
  v22 = v1 + v19;
  v23 = v26;
  (*(v21 + 16))(v22, v26, v20);
  (*(v4 + 104))(v7, *MEMORY[0x277D858A0], v2);
  sub_24FF61F38();
  (*(v21 + 8))(v23, v20);
  (*(v4 + 8))(v7, v2);
  (*(v13 + 32))(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_inputStream, v16, v25);
  (*(v27 + 32))(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_inputStreamContinuation, v11, v28);
  return v1;
}

uint64_t sub_24FF4801C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24FF2C5C0;

  return sub_24FF480AC();
}

uint64_t sub_24FF480AC()
{
  v1[18] = v0;
  v2 = sub_24FF25460(&qword_27F3B4368, &qword_24FF63C40);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_24FF25460(&qword_27F3B4370, &unk_24FF63C48);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF481E0, v0, 0);
}

uint64_t sub_24FF481E0()
{
  sub_24FF2BC7C();
  if (qword_280B15CB8 != -1)
  {
    sub_24FF4C524(&qword_280B15CB8);
  }

  v1 = sub_24FF61BC8();
  v0[25] = sub_24FF278EC(v1, qword_280B16918);
  v2 = sub_24FF61BA8();
  v3 = sub_24FF62008();
  if (sub_24FF4C944(v3))
  {
    *swift_slowAlloc() = 0;
    sub_24FF4C868();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_24FF42670();
  }

  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  sub_24FF61ED8();
  v9 = sub_24FF4C2F8();
  v10 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_inputStreamContinuation;
  v0[26] = v9;
  v0[27] = v10;
  v11 = v0[18];
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[28] = v12;
  *v12 = v13;
  sub_24FF4C78C(v12);

  return MEMORY[0x2822005A8](v0 + 11, v11, v9);
}

uint64_t sub_24FF48348()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 144);

    v8 = sub_24FF486EC;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 144);
    v8 = sub_24FF48454;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_24FF48454()
{
  v2 = v0[11];
  v1 = v0[12];
  if (v1)
  {
    v27 = v0[11];
    v3 = HIBYTE(v1) & 0xF;
    v0[2] = v2;
    v0[3] = v1;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v3 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v0[4] = 0;
    v0[5] = v3;
    v28 = v1;

    while (1)
    {
      v4 = sub_24FF61DD8();
      if (!v5)
      {
        break;
      }

      v6 = v0[20];
      v7 = v0[21];
      v8 = v0[19];
      v0[13] = v4;
      v0[14] = v5;
      sub_24FF25460(&qword_27F3B4348, &qword_24FF63BF8);
      sub_24FF61F78();
      (*(v6 + 8))(v7, v8);
    }

    MEMORY[0x25305C900](v27, v28);

    swift_task_alloc();
    sub_24FF2BC3C();
    v0[28] = v9;
    *v9 = v10;
    sub_24FF4C78C(v9);
    v11 = sub_24FF4CB7C();

    return MEMORY[0x2822005A8](v11, v12, v13);
  }

  else
  {
    v14 = v0[18];
    (*(v0[23] + 8))(v0[24], v0[22]);
    v0[17] = 0;
    sub_24FF25460(&qword_27F3B4348, &qword_24FF63BF8);
    sub_24FF61F88();
    *(v14 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_complete) = 1;
    v16 = v0[9];
    v15 = v0[10];
    v17 = (v14 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_buffer);
    swift_beginAccess();
    *v17 = v16;
    v17[1] = v15;

    v18 = sub_24FF61BA8();
    v19 = sub_24FF62008();
    if (sub_24FF4C944(v19))
    {
      *swift_slowAlloc() = 0;
      sub_24FF4C868();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      sub_24FF42670();
    }

    sub_24FF24BC0();

    return v25();
  }
}

void sub_24FF486EC()
{
  sub_24FF2BC30();
  (*(v0[23] + 8))(v0[24], v0[22]);
  v1 = v0[15];
  MEMORY[0x25305D050](v1);
  v2 = sub_24FF61BA8();
  sub_24FF62018();

  if (sub_24FF4CC08())
  {
    v3 = sub_24FF42770();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    MEMORY[0x25305D050](v1);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    sub_24FF4C82C(&dword_24FF22000, v6, v7, "Received an error from the ource stream while tokenizing: %@");
    sub_24FF4C3F0(v4);
    sub_24FF4C84C();
    sub_24FF42670();
  }

  v0[16] = v1;
  MEMORY[0x25305D050](v1);
  sub_24FF25460(&qword_27F3B4348, &qword_24FF63BF8);
  sub_24FF61F88();

  sub_24FF24BC0();
  sub_24FF2C004();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_24FF48848(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_24FF4C1E4(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24FF488A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF4C544(sub_24FF488C8, v2);
}

uint64_t sub_24FF488C8()
{
  sub_24FF32434();
  v1 = (v0[4] + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter);
  v3 = *v1;
  v2 = v1[1];
  if (!v2 || (v3 == v0[2] ? (v4 = v2 == v0[3]) : (v4 = 0), !v4 && (sub_24FF62158() & 1) == 0))
  {
    sub_24FF4B054();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v2;
    *(v8 + 16) = 0;
    swift_willThrow();
    sub_24FF24BC0();

    sub_24FF4CC20();

    __asm { BRAA            X0, X16 }
  }

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_24FF48A18;
  sub_24FF4CC20();

  return sub_24FF46748();
}

uint64_t sub_24FF48A18()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v1 = *v0;
  sub_24FF2BACC();
  *v2 = v1;

  sub_24FF24BC0();

  return v3();
}

uint64_t sub_24FF48B18()
{
  v76 = v3;
  v5 = v3[5];
  v6 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  v3[6] = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  v7 = (v5 + v6);
  v8 = *(v5 + v6 + 8);
  if (v8)
  {
    v9 = *v7 == 34 && v8 == 0xE100000000000000;
    if (v9 || (sub_24FF4C8C8(*v7, v8) & 1) != 0)
    {
      if (qword_280B15CB8 != -1)
      {
        sub_24FF4C524(&qword_280B15CB8);
      }

      v10 = sub_24FF61BC8();
      sub_24FF278EC(v10, qword_280B16918);
      v11 = sub_24FF61BA8();
      v12 = sub_24FF62018();
      if (!sub_24FF4C944(v12))
      {
        goto LABEL_12;
      }

      *swift_slowAlloc() = 0;
      sub_24FF4C868();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
LABEL_11:
      sub_24FF42670();
LABEL_12:

LABEL_13:
      sub_24FF4CA40();
      goto LABEL_14;
    }
  }

  v3[7] = 0;
  sub_24FF4CB1C();
  if (v1)
  {

    v20 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_24FF4C6AC();
      v20 = sub_24FF4B10C(v57, v58, v59, v20);
    }

    v21 = *(v20 + 3);
    if (*(v20 + 2) >= v21 >> 1)
    {
      v60 = sub_24FF4C744(v21);
      sub_24FF4B10C(v60, v61, v62, v20);
    }

    sub_24FF4CB28();
    v22 = swift_task_alloc();
    v3[9] = v22;
    *v22 = v3;
    sub_24FF4C6BC(v22);
    sub_24FF4C960();

    return sub_24FF46A64(v23, v24);
  }

  if (*(MEMORY[0x277D84F90] + 16) > 3uLL)
  {
    v3[2] = MEMORY[0x277D84F90];
    LODWORD(v38) = sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    v39 = sub_24FF4B0A8();
    sub_24FF4C8E4(v39);
    sub_24FF4C6F8();
    if (!v40)
    {
      goto LABEL_138;
    }

    if ((v0 & 0x1000000000000000) != 0)
    {

      v63 = sub_24FF4C758();
      sub_24FF4BCDC(v63, v64, 16);
      sub_24FF4CAA0();
      if (v4)
      {
        goto LABEL_138;
      }

LABEL_132:
      if ((sub_24FF62248() & 0x100000000) == 0)
      {
        sub_24FF4C8BC();

        if ((v38 & 0xFFFFFF80) != 0)
        {
          if (v38 < 0x800)
          {
            sub_24FF4C99C();
            goto LABEL_136;
          }

LABEL_151:
          sub_24FF4C590();
          goto LABEL_136;
        }

        if (v38 <= 0xFF)
        {
          v56 = 1;
LABEL_136:
          sub_24FF4C668(v56);
LABEL_14:
          sub_24FF4C8AC();
          sub_24FF4C960();

          __asm { BRAA            X3, X16 }
        }

        __break(1u);
        goto LABEL_147;
      }

LABEL_138:
      if (qword_280B15CB8 != -1)
      {
        sub_24FF4C524(&qword_280B15CB8);
      }

      v65 = sub_24FF61BC8();
      sub_24FF278EC(v65, qword_280B16918);
      sub_24FF4C8BC();

      v11 = sub_24FF61BA8();
      v66 = sub_24FF62018();

      if (!os_log_type_enabled(v11, v66))
      {

        goto LABEL_13;
      }

      v67 = sub_24FF42770();
      v68 = sub_24FF4CA88();
      v75 = v68;
      *v67 = 136315138;
      v69 = sub_24FF4C758();
      v72 = sub_24FF5BBE0(v69, v70, v71);

      *(v67 + 4) = v72;
      sub_24FF4C90C(&dword_24FF22000, v73, v74, "Failed to parse unicode sequence %s");
      sub_24FF25A6C(v68);
      sub_24FF42670();
      goto LABEL_11;
    }

    if ((v0 & 0x2000000000000000) != 0)
    {
      sub_24FF4C88C();
      if (v9)
      {
        if (!v51)
        {
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (v51 != 1)
        {
          sub_24FF4C644();
          while (1)
          {
            sub_24FF4C5E0();
            if (v44)
            {
              sub_24FF4C780();
              if (v44)
              {
                sub_24FF4C774();
                if (!v9 & v44)
                {
                  break;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v44)
            {
              break;
            }

            sub_24FF4C8A0();
            if (v45)
            {
              break;
            }

            sub_24FF4C724();
            if (v9)
            {
              goto LABEL_131;
            }
          }
        }
      }

      else if (v52 == 45)
      {
        if (!v51)
        {
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (v51 != 1)
        {
          sub_24FF4C644();
          while (1)
          {
            sub_24FF4C5E0();
            if (v44)
            {
              sub_24FF4C780();
              if (v44)
              {
                sub_24FF4C774();
                if (!v9 & v44)
                {
                  break;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v44)
            {
              break;
            }

            sub_24FF4C984();
            if (v45)
            {
              break;
            }

            sub_24FF4C724();
            if (v9)
            {
              goto LABEL_131;
            }
          }
        }
      }

      else if (v51)
      {
        sub_24FF4C9BC();
        while (1)
        {
          sub_24FF4C5E0();
          if (v44)
          {
            sub_24FF4C780();
            if (v44)
            {
              sub_24FF4C774();
              if (!v9 & v44)
              {
                break;
              }
            }
          }

          sub_24FF4C5D0();
          if (!v44)
          {
            break;
          }

          sub_24FF4C8A0();
          if (v45)
          {
            break;
          }

          sub_24FF4C724();
          if (v9)
          {
            goto LABEL_131;
          }
        }
      }

      goto LABEL_130;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      sub_24FF4CB10();
    }

    else
    {
      sub_24FF4C758();
      sub_24FF620A8();
    }

    sub_24FF4C990();
    if (v9)
    {
      if (v42 < 1)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v42 == 1)
      {
        goto LABEL_130;
      }

      if (v41)
      {
        sub_24FF4C714();
        while (1)
        {
          sub_24FF4C5E0();
          if (v44)
          {
            sub_24FF4C780();
            if (v44)
            {
              sub_24FF4C774();
              if (!v9 & v44)
              {
                goto LABEL_130;
              }
            }
          }

          sub_24FF4C5D0();
          if (!v44)
          {
            goto LABEL_130;
          }

          sub_24FF4C8A0();
          if (v45)
          {
            goto LABEL_130;
          }

          sub_24FF4C724();
          if (v9)
          {
            goto LABEL_131;
          }
        }
      }
    }

    else if (v43 == 45)
    {
      if (v42 < 1)
      {
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      if (v42 == 1)
      {
        goto LABEL_130;
      }

      if (v41)
      {
        sub_24FF4C714();
        while (1)
        {
          sub_24FF4C5E0();
          if (v44)
          {
            sub_24FF4C780();
            if (v44)
            {
              sub_24FF4C774();
              if (!v9 & v44)
              {
                goto LABEL_130;
              }
            }
          }

          sub_24FF4C5D0();
          if (!v44)
          {
            goto LABEL_130;
          }

          sub_24FF4C984();
          if (v45)
          {
            goto LABEL_130;
          }

          sub_24FF4C724();
          if (v9)
          {
            goto LABEL_131;
          }
        }
      }
    }

    else
    {
      if (!v42)
      {
LABEL_130:
        LODWORD(v38) = 0;
        v46 = 1;
        goto LABEL_131;
      }

      if (v41)
      {
        v38 = 0;
        while (1)
        {
          sub_24FF4C9DC();
          if (v44)
          {
            if ((v53 - 65) >= 6 && (v53 - 97) > 5)
            {
              goto LABEL_130;
            }
          }

          sub_24FF4C9CC();
          if (!v44)
          {
            goto LABEL_130;
          }

          v45 = __OFADD__(16 * v38, v55);
          v38 = 16 * v38 + v55;
          if (v45)
          {
            goto LABEL_130;
          }

          sub_24FF4C978(v54);
          if (v9)
          {
            goto LABEL_116;
          }
        }
      }
    }

    LODWORD(v38) = 0;
LABEL_116:
    v46 = 0;
LABEL_131:
    if (v46)
    {
      goto LABEL_138;
    }

    goto LABEL_132;
  }

  if (qword_280B15CB8 != -1)
  {
    sub_24FF4C524(&qword_280B15CB8);
  }

  v27 = sub_24FF61BC8();
  sub_24FF278EC(v27, qword_280B16918);
  v28 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  v29 = sub_24FF61BA8();
  sub_24FF62018();
  sub_24FF4CB5C();

  if (sub_24FF4CC08())
  {
    v30 = sub_24FF42770();
    v31 = sub_24FF4CA88();
    v75 = v31;
    sub_24FF4CAD8(4.8149e-34);
    sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    v32 = sub_24FF4B0A8();
    v33 = sub_24FF4CAF4(v32);
    v35 = sub_24FF5BBE0(v33, v34, &v75);

    *(v30 + 4) = v35;
    sub_24FF4C82C(&dword_24FF22000, v36, v37, "Incomplete unicode sequence: %s");
    sub_24FF25A6C(v31);
    sub_24FF4C84C();
    sub_24FF42670();
  }

  else
  {
  }

  v47 = *(v28 + 16);

  if (!v47)
  {
    goto LABEL_13;
  }

  v48 = swift_task_alloc();
  v3[13] = v48;
  *v48 = v3;
  sub_24FF4C628();
  sub_24FF4C6BC(v49);
  sub_24FF4C960();

  return sub_24FF46748();
}

uint64_t sub_24FF49270()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v5;
  *(v3 + 88) = v6;

  if (v0)
  {

    sub_24FF45090();

    return v7();
  }

  else
  {
    v9 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_24FF493A0()
{
  v57 = v1;
  v3 = v1[11];
  if (v3)
  {
    v4 = v1[10];
    if (v3 == 0xE100000000000000 && v4 == 34)
    {

      goto LABEL_6;
    }

    v5 = sub_24FF4C8C8(v4, v1[11]);

    if (v5)
    {
LABEL_6:
      v6 = v1[8];
      if (*(v6 + 16) <= 3uLL)
      {
        if (qword_280B15CB8 != -1)
        {
          sub_24FF4C524(&qword_280B15CB8);
        }

        v7 = sub_24FF61BC8();
        sub_24FF278EC(v7, qword_280B16918);
        sub_24FF4C8BC();
        swift_bridgeObjectRetain_n();
        v8 = sub_24FF61BA8();
        sub_24FF62018();
        sub_24FF4CB5C();

        if (sub_24FF4CC08())
        {
          v9 = sub_24FF42770();
          v10 = sub_24FF4CA88();
          v56 = v10;
          sub_24FF4CAD8(4.8149e-34);
          sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
          v11 = sub_24FF4B0A8();
          v12 = sub_24FF4CAF4(v11);
          v14 = sub_24FF5BBE0(v12, v13, &v56);

          *(v9 + 4) = v14;
          sub_24FF4C82C(&dword_24FF22000, v15, v16, "Incomplete unicode sequence: %s");
          sub_24FF25A6C(v10);
          sub_24FF4C84C();
          sub_24FF42670();
        }

        v17 = *(v6 + 16);

        if (v17)
        {
          v18 = swift_task_alloc();
          v1[13] = v18;
          *v18 = v1;
          sub_24FF4C628();
          goto LABEL_14;
        }

        goto LABEL_125;
      }

      v1[2] = v6;
      LODWORD(v25) = sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
      v26 = sub_24FF4B0A8();
      sub_24FF4C8E4(v26);
      sub_24FF4C6F8();
      if (!v27)
      {
        goto LABEL_120;
      }

      if ((v6 & 0x1000000000000000) != 0)
      {

        v41 = sub_24FF4C758();
        sub_24FF4BCDC(v41, v42, 16);
        sub_24FF4CAA0();
        if (v2)
        {
          goto LABEL_120;
        }

LABEL_114:
        if ((sub_24FF62248() & 0x100000000) == 0)
        {
          sub_24FF4C8BC();

          if ((v25 & 0xFFFFFF80) != 0)
          {
            if (v25 < 0x800)
            {
              sub_24FF4C99C();
              goto LABEL_118;
            }

LABEL_137:
            sub_24FF4C590();
            goto LABEL_118;
          }

          if (v25 <= 0xFF)
          {
            v40 = 1;
LABEL_118:
            sub_24FF4C668(v40);
            goto LABEL_126;
          }

          __break(1u);
          goto LABEL_133;
        }

LABEL_120:
        if (qword_280B15CB8 != -1)
        {
          sub_24FF4C524(&qword_280B15CB8);
        }

        v43 = sub_24FF61BC8();
        sub_24FF278EC(v43, qword_280B16918);
        sub_24FF4C8BC();

        v44 = sub_24FF61BA8();
        v45 = sub_24FF62018();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = sub_24FF42770();
          v47 = sub_24FF4CA88();
          v56 = v47;
          *v46 = 136315138;
          v48 = sub_24FF4C758();
          v51 = sub_24FF5BBE0(v48, v49, v50);

          *(v46 + 4) = v51;
          sub_24FF4C90C(&dword_24FF22000, v52, v53, "Failed to parse unicode sequence %s");
          sub_24FF25A6C(v47);
          sub_24FF42670();
          sub_24FF4C84C();
        }

        else
        {
        }

LABEL_125:
        sub_24FF4CA40();
LABEL_126:
        sub_24FF4C8AC();
        sub_24FF4C960();

        __asm { BRAA            X3, X16 }
      }

      if ((v6 & 0x2000000000000000) != 0)
      {
        sub_24FF4C88C();
        if (v31)
        {
          if (!v35)
          {
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          if (v35 != 1)
          {
            sub_24FF4C644();
            while (1)
            {
              sub_24FF4C5E0();
              if (v32)
              {
                sub_24FF4C780();
                if (v32)
                {
                  sub_24FF4C774();
                  if (!v31 & v32)
                  {
                    break;
                  }
                }
              }

              sub_24FF4C5D0();
              if (!v32)
              {
                break;
              }

              sub_24FF4C8A0();
              if (v33)
              {
                break;
              }

              sub_24FF4C724();
              if (v31)
              {
                goto LABEL_113;
              }
            }
          }
        }

        else if (v36 == 45)
        {
          if (!v35)
          {
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          if (v35 != 1)
          {
            sub_24FF4C644();
            while (1)
            {
              sub_24FF4C5E0();
              if (v32)
              {
                sub_24FF4C780();
                if (v32)
                {
                  sub_24FF4C774();
                  if (!v31 & v32)
                  {
                    break;
                  }
                }
              }

              sub_24FF4C5D0();
              if (!v32)
              {
                break;
              }

              sub_24FF4C984();
              if (v33)
              {
                break;
              }

              sub_24FF4C724();
              if (v31)
              {
                goto LABEL_113;
              }
            }
          }
        }

        else if (v35)
        {
          sub_24FF4C9BC();
          while (1)
          {
            sub_24FF4C5E0();
            if (v32)
            {
              sub_24FF4C780();
              if (v32)
              {
                sub_24FF4C774();
                if (!v31 & v32)
                {
                  break;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v32)
            {
              break;
            }

            sub_24FF4C8A0();
            if (v33)
            {
              break;
            }

            sub_24FF4C724();
            if (v31)
            {
              goto LABEL_113;
            }
          }
        }

        goto LABEL_112;
      }

      if ((v0 & 0x1000000000000000) != 0)
      {
        sub_24FF4CB10();
      }

      else
      {
        sub_24FF4C758();
        sub_24FF620A8();
      }

      sub_24FF4C990();
      if (v31)
      {
        if (v29 < 1)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v29 == 1)
        {
          goto LABEL_112;
        }

        if (v28)
        {
          sub_24FF4C714();
          while (1)
          {
            sub_24FF4C5E0();
            if (v32)
            {
              sub_24FF4C780();
              if (v32)
              {
                sub_24FF4C774();
                if (!v31 & v32)
                {
                  goto LABEL_112;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v32)
            {
              goto LABEL_112;
            }

            sub_24FF4C8A0();
            if (v33)
            {
              goto LABEL_112;
            }

            sub_24FF4C724();
            if (v31)
            {
              goto LABEL_113;
            }
          }
        }
      }

      else if (v30 == 45)
      {
        if (v29 < 1)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (v29 == 1)
        {
          goto LABEL_112;
        }

        if (v28)
        {
          sub_24FF4C714();
          while (1)
          {
            sub_24FF4C5E0();
            if (v32)
            {
              sub_24FF4C780();
              if (v32)
              {
                sub_24FF4C774();
                if (!v31 & v32)
                {
                  goto LABEL_112;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v32)
            {
              goto LABEL_112;
            }

            sub_24FF4C984();
            if (v33)
            {
              goto LABEL_112;
            }

            sub_24FF4C724();
            if (v31)
            {
              goto LABEL_113;
            }
          }
        }
      }

      else
      {
        if (!v29)
        {
LABEL_112:
          LODWORD(v25) = 0;
          v34 = 1;
          goto LABEL_113;
        }

        if (v28)
        {
          v25 = 0;
          while (1)
          {
            sub_24FF4C9DC();
            if (v32)
            {
              if ((v37 - 65) >= 6 && (v37 - 97) > 5)
              {
                goto LABEL_112;
              }
            }

            sub_24FF4C9CC();
            if (!v32)
            {
              goto LABEL_112;
            }

            v33 = __OFADD__(16 * v25, v39);
            v25 = 16 * v25 + v39;
            if (v33)
            {
              goto LABEL_112;
            }

            sub_24FF4C978(v38);
            if (v31)
            {
              goto LABEL_98;
            }
          }
        }
      }

      LODWORD(v25) = 0;
LABEL_98:
      v34 = 0;
LABEL_113:
      if (v34)
      {
        goto LABEL_120;
      }

      goto LABEL_114;
    }
  }

  v21 = swift_task_alloc();
  v19 = sub_24FF4CB3C(v21);
  *v19 = v22;
  v20 = sub_24FF499C4;
LABEL_14:
  v19[1] = v20;
  sub_24FF4C960();

  return sub_24FF46748();
}

uint64_t sub_24FF499C4()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {

    sub_24FF45090();

    return v7();
  }

  else
  {
    v9 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_24FF49AE8()
{
  v63 = v1;
  v3 = v1[8];
  v4 = v1[7] + 1;
  v1[7] = v4;
  if (v4 != 4 && *(v1[5] + v1[6] + 8))
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_24FF4C6AC();
      v3 = sub_24FF4B10C(v56, v57, v58, v3);
    }

    v5 = *(v3 + 3);
    if (*(v3 + 2) >= v5 >> 1)
    {
      v59 = sub_24FF4C744(v5);
      sub_24FF4B10C(v59, v60, v61, v3);
    }

    sub_24FF4CB28();
    v6 = swift_task_alloc();
    v1[9] = v6;
    *v6 = v1;
    sub_24FF4C6BC(v6);
    sub_24FF4C960();

    return sub_24FF46A64(v7, v8);
  }

  if (*(v3 + 2) > 3uLL)
  {
    v1[2] = v3;
    LODWORD(v25) = sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    v26 = sub_24FF4B0A8();
    sub_24FF4C8E4(v26);
    sub_24FF4C6F8();
    if (!v27)
    {
      goto LABEL_122;
    }

    if ((v3 & 0x1000000000000000) != 0)
    {

      v41 = sub_24FF4C758();
      sub_24FF4BCDC(v41, v42, 16);
      sub_24FF4CAA0();
      if (v2)
      {
        goto LABEL_122;
      }

LABEL_116:
      if ((sub_24FF62248() & 0x100000000) == 0)
      {
        sub_24FF4C8BC();

        if ((v25 & 0xFFFFFF80) != 0)
        {
          if (v25 < 0x800)
          {
            sub_24FF4C99C();
            goto LABEL_120;
          }

LABEL_139:
          sub_24FF4C590();
          goto LABEL_120;
        }

        if (v25 <= 0xFF)
        {
          v40 = 1;
LABEL_120:
          sub_24FF4C668(v40);
          goto LABEL_128;
        }

        __break(1u);
        goto LABEL_135;
      }

LABEL_122:
      if (qword_280B15CB8 != -1)
      {
        sub_24FF4C524(&qword_280B15CB8);
      }

      v43 = sub_24FF61BC8();
      sub_24FF278EC(v43, qword_280B16918);
      sub_24FF4C8BC();

      v44 = sub_24FF61BA8();
      v45 = sub_24FF62018();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = sub_24FF42770();
        v47 = sub_24FF4CA88();
        v62 = v47;
        *v46 = 136315138;
        v48 = sub_24FF4C758();
        v51 = sub_24FF5BBE0(v48, v49, v50);

        *(v46 + 4) = v51;
        sub_24FF4C90C(&dword_24FF22000, v52, v53, "Failed to parse unicode sequence %s");
        sub_24FF25A6C(v47);
        sub_24FF42670();
        sub_24FF4C84C();
      }

      else
      {
      }

      goto LABEL_127;
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      sub_24FF4C88C();
      if (v31)
      {
        if (!v35)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v35 != 1)
        {
          sub_24FF4C644();
          while (1)
          {
            sub_24FF4C5E0();
            if (v32)
            {
              sub_24FF4C780();
              if (v32)
              {
                sub_24FF4C774();
                if (!v31 & v32)
                {
                  break;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v32)
            {
              break;
            }

            sub_24FF4C8A0();
            if (v33)
            {
              break;
            }

            sub_24FF4C724();
            if (v31)
            {
              goto LABEL_115;
            }
          }
        }
      }

      else if (v36 == 45)
      {
        if (!v35)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v35 != 1)
        {
          sub_24FF4C644();
          while (1)
          {
            sub_24FF4C5E0();
            if (v32)
            {
              sub_24FF4C780();
              if (v32)
              {
                sub_24FF4C774();
                if (!v31 & v32)
                {
                  break;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v32)
            {
              break;
            }

            sub_24FF4C984();
            if (v33)
            {
              break;
            }

            sub_24FF4C724();
            if (v31)
            {
              goto LABEL_115;
            }
          }
        }
      }

      else if (v35)
      {
        sub_24FF4C9BC();
        while (1)
        {
          sub_24FF4C5E0();
          if (v32)
          {
            sub_24FF4C780();
            if (v32)
            {
              sub_24FF4C774();
              if (!v31 & v32)
              {
                break;
              }
            }
          }

          sub_24FF4C5D0();
          if (!v32)
          {
            break;
          }

          sub_24FF4C8A0();
          if (v33)
          {
            break;
          }

          sub_24FF4C724();
          if (v31)
          {
            goto LABEL_115;
          }
        }
      }

      goto LABEL_114;
    }

    if ((v0 & 0x1000000000000000) != 0)
    {
      sub_24FF4CB10();
    }

    else
    {
      sub_24FF4C758();
      sub_24FF620A8();
    }

    sub_24FF4C990();
    if (v31)
    {
      if (v29 < 1)
      {
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      if (v29 == 1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        sub_24FF4C714();
        while (1)
        {
          sub_24FF4C5E0();
          if (v32)
          {
            sub_24FF4C780();
            if (v32)
            {
              sub_24FF4C774();
              if (!v31 & v32)
              {
                goto LABEL_114;
              }
            }
          }

          sub_24FF4C5D0();
          if (!v32)
          {
            goto LABEL_114;
          }

          sub_24FF4C8A0();
          if (v33)
          {
            goto LABEL_114;
          }

          sub_24FF4C724();
          if (v31)
          {
            goto LABEL_115;
          }
        }
      }
    }

    else if (v30 == 45)
    {
      if (v29 < 1)
      {
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      if (v29 == 1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        sub_24FF4C714();
        while (1)
        {
          sub_24FF4C5E0();
          if (v32)
          {
            sub_24FF4C780();
            if (v32)
            {
              sub_24FF4C774();
              if (!v31 & v32)
              {
                goto LABEL_114;
              }
            }
          }

          sub_24FF4C5D0();
          if (!v32)
          {
            goto LABEL_114;
          }

          sub_24FF4C984();
          if (v33)
          {
            goto LABEL_114;
          }

          sub_24FF4C724();
          if (v31)
          {
            goto LABEL_115;
          }
        }
      }
    }

    else
    {
      if (!v29)
      {
LABEL_114:
        LODWORD(v25) = 0;
        v34 = 1;
        goto LABEL_115;
      }

      if (v28)
      {
        v25 = 0;
        while (1)
        {
          sub_24FF4C9DC();
          if (v32)
          {
            if ((v37 - 65) >= 6 && (v37 - 97) > 5)
            {
              goto LABEL_114;
            }
          }

          sub_24FF4C9CC();
          if (!v32)
          {
            goto LABEL_114;
          }

          v33 = __OFADD__(16 * v25, v39);
          v25 = 16 * v25 + v39;
          if (v33)
          {
            goto LABEL_114;
          }

          sub_24FF4C978(v38);
          if (v31)
          {
            goto LABEL_100;
          }
        }
      }
    }

    LODWORD(v25) = 0;
LABEL_100:
    v34 = 0;
LABEL_115:
    if (v34)
    {
      goto LABEL_122;
    }

    goto LABEL_116;
  }

  if (qword_280B15CB8 != -1)
  {
    sub_24FF4C524(&qword_280B15CB8);
  }

  v11 = sub_24FF61BC8();
  sub_24FF278EC(v11, qword_280B16918);
  sub_24FF4C8BC();
  swift_bridgeObjectRetain_n();
  v12 = sub_24FF61BA8();
  sub_24FF62018();
  sub_24FF4CB5C();

  if (sub_24FF4CC08())
  {
    v13 = sub_24FF42770();
    v14 = sub_24FF4CA88();
    v62 = v14;
    sub_24FF4CAD8(4.8149e-34);
    sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    v15 = sub_24FF4B0A8();
    v16 = sub_24FF4CAF4(v15);
    v18 = sub_24FF5BBE0(v16, v17, &v62);

    *(v13 + 4) = v18;
    sub_24FF4C82C(&dword_24FF22000, v19, v20, "Incomplete unicode sequence: %s");
    sub_24FF25A6C(v14);
    sub_24FF4C84C();
    sub_24FF42670();
  }

  v21 = *(v3 + 2);

  if (!v21)
  {
LABEL_127:
    sub_24FF4CA40();
LABEL_128:
    sub_24FF4C8AC();
    sub_24FF4C960();

    __asm { BRAA            X3, X16 }
  }

  v22 = swift_task_alloc();
  v1[13] = v22;
  *v22 = v1;
  sub_24FF4C628();
  sub_24FF4C6BC(v23);
  sub_24FF4C960();

  return sub_24FF46748();
}

uint64_t sub_24FF4A168()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *v1;
  sub_24FF2BACC();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = sub_24FF4CA40();
  }

  return v5(v4);
}

uint64_t sub_24FF4A254(uint64_t a1, unint64_t a2)
{
  v2 = a1 == 110 && a2 == 0xE100000000000000;
  if (v2 || (sub_24FF62158() & 1) != 0)
  {
    return 10;
  }

  v7 = a1 == 116 && a2 == 0xE100000000000000;
  if (v7 || (sub_24FF62158() & 1) != 0)
  {
    return 9;
  }

  v8 = a1 == 98 && a2 == 0xE100000000000000;
  if (v8 || (sub_24FF62158() & 1) != 0)
  {
    return 8;
  }

  v9 = a1 == 102 && a2 == 0xE100000000000000;
  if (v9 || (sub_24FF62158() & 1) != 0)
  {
    return 12;
  }

  v10 = a1 == 114 && a2 == 0xE100000000000000;
  if (v10 || (sub_24FF62158() & 1) != 0)
  {
    return 13;
  }

  v5 = 34;
  v11 = a1 == 34 && a2 == 0xE100000000000000;
  if (!v11 && (sub_24FF62158() & 1) == 0)
  {
    v5 = 92;
    v12 = a1 == 92 && a2 == 0xE100000000000000;
    if (!v12 && (sub_24FF62158() & 1) == 0)
    {
      if (qword_280B15CB8 != -1)
      {
        swift_once();
      }

      v13 = sub_24FF61BC8();
      sub_24FF278EC(v13, qword_280B16918);

      v14 = sub_24FF61BA8();
      v15 = sub_24FF62018();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_24FF5BBE0(a1, a2, &v18);
        _os_log_impl(&dword_24FF22000, v14, v15, "Unknown json escape sequence of type \\%s", v16, 0xCu);
        sub_24FF25A6C(v17);
        MEMORY[0x25305D1B0](v17, -1, -1);
        MEMORY[0x25305D1B0](v16, -1, -1);
      }

      return 0;
    }
  }

  return v5;
}

uint64_t sub_24FF4A500(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_24FF25460(&qword_27F3B4338, &qword_24FF63BC8);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF4A5CC, v1, 0);
}

uint64_t sub_24FF4A5CC()
{
  sub_24FF32434();
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_complete;
  v0[13] = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_complete;
  if (*(v1 + v2))
  {
    goto LABEL_2;
  }

  sub_24FF25460(&qword_27F3B4340, &qword_24FF63BD0);
  sub_24FF61ED8();
  v5 = MEMORY[0x277D84F90];
  v6 = *(MEMORY[0x277D84F90] + 16);
  v0[14] = MEMORY[0x277D84F90];
  if (v6 >= v0[8])
  {
    if (*(v0[9] + v0[13]))
    {
      v11 = sub_24FF4C758();
      v12(v11);
    }

    else
    {
      v0[7] = v5;
      sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
      sub_24FF4B0A8();
      v13 = sub_24FF61E48();
      v15 = v14;
      swift_beginAccess();
      MEMORY[0x25305C910](v13, v15);
      swift_endAccess();

      v16 = sub_24FF4C758();
      v17(v16);
    }

LABEL_2:

    sub_24FF321B0();
    sub_24FF4CA1C();

    __asm { BRAA            X1, X16 }
  }

  swift_task_alloc();
  sub_24FF2BC3C();
  v0[15] = v7;
  *v7 = v8;
  sub_24FF4C7B4(v7);
  sub_24FF4CA1C();

  return MEMORY[0x2822005B0](v9);
}

uint64_t sub_24FF4A7B0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    v7 = *(v3 + 72);

    v8 = sub_24FF4AB90;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 72);
    v8 = sub_24FF4A8C0;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_24FF4A8C0()
{
  sub_24FF32434();
  v1 = v0[5];
  v2 = v0[6];
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v0[14];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_24FF4C6AC();
      v4 = sub_24FF4B10C(v30, v31, v32, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      v33 = sub_24FF4C744(v5);
      v4 = sub_24FF4B10C(v33, v34, v35, v4);
    }

    *(v4 + 2) = v7;
    v8 = &v4[16 * v6];
    *(v8 + 4) = v1;
    *(v8 + 5) = v2;
    v0[14] = v4;
    if (v7 < v0[8])
    {
      swift_task_alloc();
      sub_24FF2BC3C();
      v0[15] = v9;
      *v9 = v10;
      sub_24FF4C7B4(v9);

      return MEMORY[0x2822005B0](v0 + 5);
    }

    v23 = v0[12];
    v24 = v0[10];
    v25 = v0[11];
    if (*(v0[9] + v0[13]))
    {
      (*(v25 + 8))(v0[12], v0[10]);
    }

    else
    {
      v0[7] = v4;
      sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
      sub_24FF4B0A8();
      v26 = sub_24FF61E48();
      v28 = v27;
      swift_beginAccess();
      MEMORY[0x25305C910](v26, v28);
      swift_endAccess();

      (*(v25 + 8))(v23, v24);
    }
  }

  else
  {

    if (qword_280B15CC8 != -1)
    {
      swift_once();
    }

    v11 = sub_24FF61BC8();
    sub_24FF278EC(v11, qword_280B16948);
    v12 = sub_24FF61BA8();
    v13 = sub_24FF62018();
    if (sub_24FF4C944(v13))
    {
      v14 = v0[8];
      v15 = sub_24FF42770();
      *v15 = 134217984;
      *(v15 + 4) = v14;
      sub_24FF4C868();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      sub_24FF42670();
    }

    v21 = sub_24FF32440();
    v22(v21);
  }

  sub_24FF321B0();

  return v29();
}

uint64_t sub_24FF4AB90()
{
  sub_24FF2BC70();
  (*(v0[11] + 8))(v0[12], v0[10]);

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF4AC08()
{
  v1 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_sourceStream;
  sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  sub_24FF26754();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_inputStream;
  sub_24FF25460(&qword_27F3B4340, &qword_24FF63BD0);
  sub_24FF26754();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_inputStreamContinuation;
  sub_24FF25460(&qword_27F3B4348, &qword_24FF63BF8);
  sub_24FF26754();
  (*(v6 + 8))(v0 + v5);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24FF4AD34()
{
  sub_24FF4AC08();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for JsonTokenStream(uint64_t a1)
{
  result = qword_280B163C0;
  if (!qword_280B163C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FF4ADB4(uint64_t a1)
{
  sub_24FF4AFB0(319, &qword_280B15C70, MEMORY[0x277D837D0], MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    sub_24FF4AFB0(319, &qword_280B15C78, MEMORY[0x277D835B0], MEMORY[0x277D858D8]);
    if (v2 <= 0x3F)
    {
      sub_24FF4AFB0(319, &qword_280B15C90, MEMORY[0x277D835B0], MEMORY[0x277D858B0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_24FF4AF68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_24FF4AFB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_24FF4B054()
{
  result = qword_27F3B4318;
  if (!qword_27F3B4318)
  {
    result = swift_getWitnessTable(byte_24FF63CE0, &type metadata for JsonTokenStream.TokenizerError, v0, v1);
    atomic_store(result, &qword_27F3B4318);
  }

  return result;
}

unint64_t sub_24FF4B0A8()
{
  result = qword_280B15CA8;
  if (!qword_280B15CA8)
  {
    v3 = sub_24FF4AF68(&qword_27F3B4320, &qword_24FF63BA0);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_280B15CA8);
  }

  return result;
}

char *sub_24FF4B10C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24FF25460(&qword_27F3B4328, &qword_24FF63BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24FF4B214(char *result, int64_t a2, char a3, char *a4)
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
    sub_24FF25460(&qword_27F3B3E18, &qword_24FF62758);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24FF4B31C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_24FF4B544(v9, a2, &qword_27F3B4358, &qword_24FF63C10, MEMORY[0x277CC95F0]);
  v11 = *(sub_24FF61898() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_24FF4B6B4(a4 + v12, v9, v10 + v12, MEMORY[0x277CC95F0]);
    *(a4 + 16) = 0;
  }

  else
  {
    sub_24FF4CBD0();
  }

  return v10;
}

void *sub_24FF4B430(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_24FF4B544(v9, a2, &qword_27F3B4350, &unk_24FF63C00, type metadata accessor for ObjectStreamingSupport);
  v11 = *(type metadata accessor for ObjectStreamingSupport(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_24FF4B6B4(a4 + v12, v9, v10 + v12, type metadata accessor for ObjectStreamingSupport);
    *(a4 + 16) = 0;
  }

  else
  {
    sub_24FF4CBD0();
  }

  return v10;
}

void *sub_24FF4B544(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24FF25460(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_24FF4B640(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

void sub_24FF4B6B4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_24FF26754(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    sub_24FF4CB48();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_24FF4CB48();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_24FF4B774(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24FF25460(&qword_27F3B4330, &qword_24FF63BB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

_BYTE *sub_24FF4B7E4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_24FF4B850(unint64_t a1, unint64_t a2)
{
  v2 = sub_24FF4B8BC(sub_24FF4B8B8, 0, a1, a2);
  v6 = sub_24FF4B8F0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_24FF4B8BC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_24FF4B8F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24FF62038();
    if (!v9 || (v10 = v9, v11 = sub_24FF4B774(v9, 0), v12 = sub_24FF4BA50(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_24FF61D78();

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
      return sub_24FF61D78();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24FF620A8();
LABEL_4:

  return sub_24FF61D78();
}

unint64_t sub_24FF4BA50(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_24FF4BC60(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24FF61E18();
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
          result = sub_24FF620A8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_24FF4BC60(v12, a6, a7);
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

    result = sub_24FF61DF8();
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

unint64_t sub_24FF4BC60(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24FF61E28();
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
    v5 = MEMORY[0x25305C950](15, a1 >> 16);
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

void sub_24FF4BCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a1;
  v85 = a2;

  v5 = sub_24FF61E58();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    v43 = sub_24FF4C758();
    v5 = sub_24FF4B850(v43, v44);
    v46 = v45;

    v6 = v46;
    if ((v46 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      sub_24FF4CB10();
    }

    else
    {
      sub_24FF4C758();
      sub_24FF620A8();
    }

    sub_24FF4C990();
    if (v10)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_24FF4CA04();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v31 = 0;
            v32 = (v27 + 1);
            while (1)
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v30)
              {
                if (v33 < 0x41 || v33 >= v29)
                {
                  sub_24FF4C9EC();
                  if (!v22 || v33 >= v35)
                  {
                    goto LABEL_141;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v31 * a3;
              if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
              {
                v31 = v36 + (v33 + v34);
                if (!__OFADD__(v36, (v33 + v34)))
                {
                  ++v32;
                  if (--v28)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_141;
            }
          }
        }

        goto LABEL_141;
      }

      goto LABEL_145;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v7)
        {
          v40 = 0;
          while (1)
          {
            v41 = *v7;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_141;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            if ((v40 * a3) >> 64 == (v40 * a3) >> 63 && !__OFADD__(v40 * a3, (v41 + v42)))
            {
              v7 = sub_24FF4C978(v7);
              if (!v10)
              {
                continue;
              }
            }

            goto LABEL_141;
          }
        }
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_24FF4CA04();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_24FF4C9EC();
                if (!v22 || v19 >= v21)
                {
                  break;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 == (v17 * a3) >> 63)
            {
              v17 = v23 - (v19 + v20);
              if (!__OFSUB__(v23, (v19 + v20)))
              {
                ++v18;
                if (--v14)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_141:

      return;
    }

    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  v47 = HIBYTE(v6) & 0xF;
  v84 = v5;
  v85 = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v5 != 43)
  {
    if (v5 != 45)
    {
      if (v47)
      {
        sub_24FF4C6DC();
        if (v73 ^ v74 | v72)
        {
          v77 = 65;
        }

        if (!(v73 ^ v74 | v72))
        {
          v78 = 58;
        }

        v79 = &v84;
        while (1)
        {
          v80 = *v79;
          if (v80 < 0x30 || v80 >= v78)
          {
            if (v80 < 0x41 || v80 >= v77)
            {
              sub_24FF4C9EC();
              if (!v22 || v80 >= v82)
              {
                goto LABEL_141;
              }

              v81 = -87;
            }

            else
            {
              v81 = -55;
            }
          }

          else
          {
            v81 = -48;
          }

          v83 = v76 * a3;
          if ((v76 * a3) >> 64 == (v76 * a3) >> 63)
          {
            v76 = v83 + (v80 + v81);
            if (!__OFADD__(v83, (v80 + v81)))
            {
              v79 = (v79 + 1);
              if (--v75)
              {
                continue;
              }
            }
          }

          goto LABEL_141;
        }
      }

      goto LABEL_141;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        sub_24FF4C6DC();
        if (v49 ^ v50 | v48)
        {
          v53 = 65;
        }

        if (!(v49 ^ v50 | v48))
        {
          v54 = 58;
        }

        v55 = &v84 + 1;
        while (1)
        {
          v56 = *v55;
          if (v56 < 0x30 || v56 >= v54)
          {
            if (v56 < 0x41 || v56 >= v53)
            {
              sub_24FF4C9EC();
              if (!v22 || v56 >= v58)
              {
                goto LABEL_141;
              }

              v57 = -87;
            }

            else
            {
              v57 = -55;
            }
          }

          else
          {
            v57 = -48;
          }

          v59 = v52 * a3;
          if ((v52 * a3) >> 64 == (v52 * a3) >> 63)
          {
            v52 = v59 - (v56 + v57);
            if (!__OFSUB__(v59, (v56 + v57)))
            {
              ++v55;
              if (--v51)
              {
                continue;
              }
            }
          }

          goto LABEL_141;
        }
      }

      goto LABEL_141;
    }

    goto LABEL_144;
  }

  if (v47)
  {
    if (v47 != 1)
    {
      sub_24FF4C6DC();
      if (v61 ^ v62 | v60)
      {
        v65 = 65;
      }

      if (!(v61 ^ v62 | v60))
      {
        v66 = 58;
      }

      v67 = &v84 + 1;
      while (1)
      {
        v68 = *v67;
        if (v68 < 0x30 || v68 >= v66)
        {
          if (v68 < 0x41 || v68 >= v65)
          {
            sub_24FF4C9EC();
            if (!v22 || v68 >= v70)
            {
              goto LABEL_141;
            }

            v69 = -87;
          }

          else
          {
            v69 = -55;
          }
        }

        else
        {
          v69 = -48;
        }

        v71 = v64 * a3;
        if ((v64 * a3) >> 64 == (v64 * a3) >> 63)
        {
          v64 = v71 + (v68 + v69);
          if (!__OFADD__(v71, (v68 + v69)))
          {
            ++v67;
            if (--v63)
            {
              continue;
            }
          }
        }

        goto LABEL_141;
      }
    }

    goto LABEL_141;
  }

LABEL_146:
  __break(1u);
}

BOOL sub_24FF4C1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_24FF62088();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

unint64_t sub_24FF4C2F8()
{
  result = qword_280B163D0;
  if (!qword_280B163D0)
  {
    v3 = type metadata accessor for JsonTokenStream(255);
    result = swift_getWitnessTable(byte_24FF63B58, v3, v0, v1);
    atomic_store(result, &qword_280B163D0);
  }

  return result;
}

uint64_t sub_24FF4C350()
{
  sub_24FF2BC7C();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_24FF2C5C0;
  sub_24FF4CB7C();

  return sub_24FF4801C();
}

uint64_t sub_24FF4C3F0(uint64_t a1)
{
  v2 = sub_24FF25460(&qword_27F3B42E0, qword_24FF63700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FF4C458(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_24FF4C474(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24FF4C4B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24FF4C4F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24FF4C524(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_24FF4C668@<X0>(int a1@<W8>)
{
  *(v2 + 24) = ((v1 + a1) + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v1 + a1) >> 3))));

  return sub_24FF61D78();
}

void sub_24FF4C82C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_24FF4C84C()
{

  JUMPOUT(0x25305D1B0);
}

uint64_t sub_24FF4C8C8(uint64_t a1, uint64_t a2)
{

  return sub_24FF62158();
}

uint64_t sub_24FF4C8E4(uint64_t a1)
{

  return sub_24FF61E48();
}

void sub_24FF4C90C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_24FF4C92C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_24FF62158();
}

BOOL sub_24FF4C944(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_24FF4CA64()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
}

uint64_t sub_24FF4CA88()
{

  return swift_slowAlloc();
}

uint64_t sub_24FF4CAA0()
{
}

uint64_t sub_24FF4CABC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_24FF4CAD8(float a1)
{
  *v3 = a1;
  *(v2 + 32) = v1;
}

uint64_t sub_24FF4CAF4(uint64_t a1)
{

  return sub_24FF61E48();
}

void sub_24FF4CB28()
{
  *(v3 + 64) = v0;
  *(v0 + 16) = v2;
  v6 = v0 + 16 * v5;
  *(v6 + 32) = v4;
  *(v6 + 40) = v1;
}

void sub_24FF4CBB0()
{

  JUMPOUT(0x25305C910);
}

uint64_t sub_24FF4CBD0()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_24FF4CBF0()
{
}

BOOL sub_24FF4CC08()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_24FF4CC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_24FF3AFC8(a1, a2), (v5 & 1) != 0))
  {
    v6 = type metadata accessor for FieldStreamingSupport(0);
    sub_24FF5C0FC();
    v7 = a4;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for FieldStreamingSupport(0);
    v7 = a4;
    v8 = 1;
  }

  return sub_24FF24B98(v7, v8, 1, v9);
}

uint64_t sub_24FF4CCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (sub_24FF3B064(a1), (v4 & 1) != 0))
  {
    v5 = type metadata accessor for ObjectStreamingSupport(0);
    sub_24FF5C0FC();
    v6 = a3;
    v7 = 0;
    v8 = v5;
  }

  else
  {
    v8 = type metadata accessor for ObjectStreamingSupport(0);
    v6 = a3;
    v7 = 1;
  }

  return sub_24FF24B98(v6, v7, 1, v8);
}

uint64_t sub_24FF4CDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_24FF61898();
    sub_24FF26754();
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    sub_24FF5F6C4();
    v11 = v6;
  }

  else
  {
    sub_24FF61898();
    sub_24FF5F4D8();
  }

  return sub_24FF24B98(v8, v9, v10, v11);
}

uint64_t sub_24FF4CE74@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D858A0];
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  v4 = sub_24FF61F68();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

void sub_24FF4CF18()
{
  sub_24FF277EC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_24FF25460(&qword_27F3B4360, &qword_24FF63C20);
  sub_24FF5F494(v8);
  sub_24FF26800();
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  sub_24FF5F6A8();
  sub_24FF5EB34(v12, v13, v14, &qword_24FF63C20);
  v15 = sub_24FF61EC8();
  v16 = sub_24FF5F81C();
  v18 = sub_24FF24B70(v16, v17, v15);

  if (v18 == 1)
  {
    sub_24FF37EE0(v11, &qword_27F3B4360, &qword_24FF63C20);
  }

  else
  {
    sub_24FF61EB8();
    v19 = sub_24FF5F810();
    v20(v19);
  }

  v21 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v21)
  {
    swift_getObjectType();
    v22 = sub_24FF61E98();
    v24 = v23;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v25 = sub_24FF61D68() + 32;
      sub_24FF5F914();
      v26 = swift_allocObject();
      *(v26 + 16) = v3;
      *(v26 + 24) = v1;

      if (v24 | v22)
      {
        v30[0] = 0;
        v30[1] = 0;
        v27 = v30;
        v30[2] = v22;
        v30[3] = v24;
      }

      else
      {
        v27 = 0;
      }

      v29[1] = 7;
      v29[2] = v27;
      v29[3] = v25;
      sub_24FF5F908();
      swift_task_create();

      sub_24FF37EE0(v5, &qword_27F3B4360, &qword_24FF63C20);

      goto LABEL_14;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_24FF37EE0(v5, &qword_27F3B4360, &qword_24FF63C20);
  sub_24FF5F914();
  v28 = swift_allocObject();
  *(v28 + 16) = v3;
  *(v28 + 24) = v1;
  if (v24 | v22)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v22;
    v30[7] = v24;
  }

  sub_24FF5F908();
  swift_task_create();
LABEL_14:
  sub_24FF277D4();
}

uint64_t sub_24FF4D1C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  *(v2 + 40) = *(a2 + 16);
  v3 = sub_24FF2BB18();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF4D200()
{
  sub_24FF2BC70();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 40);
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = v4;
  sub_24FF3B644(v1, v2, v4);
  sub_24FF321B0();

  return v5();
}

uint64_t sub_24FF4D268(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24FF2C5C0;

  return sub_24FF4D1C8(a1, a2);
}

uint64_t StreamingObjectTokenStreamProcessor.__allocating_init()()
{
  v3 = &type metadata for NoOpStreamSanitizer;
  v4 = &off_28628C2B8;
  type metadata accessor for StreamingObjectTokenStreamProcessor(0);
  v0 = swift_allocObject();
  StreamingObjectTokenStreamProcessor.init(_:)(v2);
  return v0;
}

uint64_t StreamingObjectTokenStreamProcessor.__allocating_init(_:)()
{
  swift_allocObject();
  v1 = sub_24FF4C8BC();
  StreamingObjectTokenStreamProcessor.init(_:)(v1);
  return v0;
}

uint64_t StreamingObjectTokenStreamProcessor.init(_:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_24FF25460(&qword_27F3B4380, &qword_24FF63D40);
  sub_24FF5F4D8();
  sub_24FF24B98(v3, v4, v5, v6);
  sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  sub_24FF5F4D8();
  sub_24FF24B98(v7, v8, v9, v10);
  v11 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_objectStreamMap;
  type metadata accessor for StreamSupport();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = MEMORY[0x277D84F98];
  *(v1 + v11) = v12;
  *(v1 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor) = 0;
  sub_24FF5EB34(a1, &v14, &qword_27F3B4390, &unk_24FF63D50);
  if (v15)
  {
    sub_24FF37EE0(a1, &qword_27F3B4390, &unk_24FF63D50);
    sub_24FF23620(&v14, &v16);
  }

  else
  {
    v17 = &type metadata for NoOpStreamSanitizer;
    v18 = &off_28628C2B8;
    sub_24FF37EE0(a1, &qword_27F3B4390, &unk_24FF63D50);
    if (v15)
    {
      sub_24FF37EE0(&v14, &qword_27F3B4390, &unk_24FF63D50);
    }
  }

  sub_24FF23620(&v16, v1 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_sanitizer);
  return v1;
}

uint64_t sub_24FF4D560()
{
  v0 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  sub_24FF2552C();
  v2 = v1;
  sub_24FF26800();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  sub_24FF25460(&qword_27F3B4398, &qword_24FF63D60);
  swift_allocBox();
  sub_24FF25460(&qword_27F3B43A0, &qword_24FF63D68);
  sub_24FF61ED8();

  sub_24FF61FE8();
  sub_24FF4D980(v5);
  (*(v2 + 8))(v5, v0);
}

uint64_t sub_24FF4D6B8(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = sub_24FF25460(&qword_27F3B4398, &qword_24FF63D60);
  v2[9] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_24FF4D744, 0, 0);
}

uint64_t sub_24FF4D744()
{
  sub_24FF2BC70();
  sub_24FF5F6D0();
  swift_beginAccess();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 80) = v1;
  *v1 = v2;
  v1[1] = sub_24FF4D7E8;
  v3 = *(v0 + 64);

  return MEMORY[0x2822003F0](v0 + 40, v3);
}

uint64_t sub_24FF4D7E8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = v1;
  sub_24FF2BB08();
  *v3 = v2;
  v4 = *v0;
  sub_24FF2BACC();
  *v5 = v4;

  swift_endAccess();
  v6 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24FF4D8CC()
{
  **(v0 + 56) = *(v0 + 40);
  sub_24FF321B0();
  return v1();
}

uint64_t sub_24FF4D8F8()
{
  sub_24FF2BC70();
  v1 = swift_task_alloc();
  v2 = sub_24FF321C0(v1);
  *v2 = v3;
  v4 = sub_24FF5F8A0(v2);

  return sub_24FF4D6B8(v4, v0);
}

uint64_t sub_24FF4D980(uint64_t a1)
{
  v79 = a1;
  v2 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  sub_24FF2552C();
  v81 = v3;
  sub_24FF26800();
  v78 = v4;
  MEMORY[0x28223BE20](v5);
  sub_24FF5F938();
  v80 = v6;
  v7 = sub_24FF25460(&qword_27F3B4360, &qword_24FF63C20);
  sub_24FF5F494(v7);
  sub_24FF26800();
  MEMORY[0x28223BE20](v8);
  sub_24FF5F938();
  v82 = v9;
  v10 = sub_24FF25460(&qword_27F3B43A8, &qword_24FF63D88);
  sub_24FF5F494(v10);
  sub_24FF26800();
  MEMORY[0x28223BE20](v11);
  sub_24FF5F938();
  v76 = v12;
  v13 = sub_24FF25460(&qword_27F3B43B0, &qword_24FF63D90);
  sub_24FF5F494(v13);
  sub_24FF26800();
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  v17 = sub_24FF25460(&qword_27F3B43B8, &qword_24FF63D98);
  sub_24FF2552C();
  v19 = v18;
  sub_24FF26800();
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  v84 = sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  sub_24FF2552C();
  v77 = v23;
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v26);
  v75 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v83 = &v68 - v28;
  sub_24FF25460(&qword_27F3B4380, &qword_24FF63D40);
  sub_24FF2552C();
  v30 = v29;
  sub_24FF26800();
  v32 = MEMORY[0x28223BE20](v31);
  if (*(v1 + 16))
  {
    sub_24FF4EC68();
    sub_24FF5F44C();
    swift_allocError();
    *v34 = xmmword_24FF635F0;
    sub_24FF5F488(v34, 3);
    return swift_willThrow();
  }

  else
  {
    v73 = v30;
    v74 = v32;
    v36 = &v68 - v33;
    type metadata accessor for JsonStreamEvent(0);
    v71 = v2;
    (*(v19 + 104))(v22, *MEMORY[0x277D858A0], v17);
    v72 = v36;
    sub_24FF61F38();
    (*(v19 + 8))(v22, v17);
    v37 = v74;
    (*(v30 + 16))(v16, v36, v74);
    sub_24FF5F6C4();
    sub_24FF24B98(v38, v39, v40, v37);
    v41 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_parserStream;
    sub_24FF5F6D0();
    swift_beginAccess();
    v42 = v1;
    v70 = v1;
    sub_24FF4DF78(v16, v1 + v41, &qword_27F3B43B0, &qword_24FF63D90);
    swift_endAccess();
    v43 = v76;
    v44 = v77;
    v69 = *(v77 + 16);
    v45 = v83;
    v46 = v84;
    v69(v76, v83, v84);
    sub_24FF5F6C4();
    sub_24FF24B98(v47, v48, v49, v46);
    v50 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_parserStreamContinuation;
    sub_24FF5F6D0();
    swift_beginAccess();
    sub_24FF4DF78(v43, v42 + v50, &qword_27F3B43A8, &qword_24FF63D88);
    swift_endAccess();
    sub_24FF61EC8();
    sub_24FF5F4D8();
    sub_24FF24B98(v51, v52, v53, v54);
    v56 = v80;
    v55 = v81;
    v57 = v71;
    (*(v81 + 16))(v80, v79, v71);
    v58 = v75;
    v69(v75, v45, v84);
    v59 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v60 = (v78 + *(v44 + 80) + v59) & ~*(v44 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    (*(v55 + 32))(v61 + v59, v56, v57);
    v62 = v61 + v60;
    v63 = v84;
    (*(v44 + 32))(v62, v58, v84);
    v64 = sub_24FF5F60C();
    v67 = sub_24FF4E9D8(v64, v65, v82, v66, v61);
    (*(v44 + 8))(v83, v63);
    (*(v73 + 8))(v72, v74);
    *(v70 + 16) = v67;
  }
}

uint64_t sub_24FF4DF78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_24FF5FB5C(a1, a2, a3, a4);
  sub_24FF26754();
  v5 = sub_24FF4259C();
  v6(v5);
  return v4;
}

uint64_t sub_24FF4DFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF4E0F8, 0, 0);
}

uint64_t sub_24FF4E0F8()
{
  sub_24FF2BC30();
  if (qword_280B15CC8 != -1)
  {
    swift_once();
  }

  v1 = sub_24FF61BC8();
  v0[11] = sub_24FF278EC(v1, qword_280B16948);
  v2 = sub_24FF61BA8();
  v3 = sub_24FF62008();
  if (sub_24FF4C944(v3))
  {
    *sub_24FF5F98C() = 0;
    sub_24FF4C868();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_24FF42670();
  }

  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  v12 = v0[3];

  (*(v10 + 16))(v9, v12, v11);
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_24FF4E254;

  return sub_24FF44540();
}

uint64_t sub_24FF4E254()
{
  sub_24FF2BC7C();
  v3 = v2;
  sub_24FF2BC88();
  v5 = v4;
  sub_24FF2BB08();
  *v6 = v5;
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF4E360()
{
  sub_24FF2BC30();
  type metadata accessor for JsonStreamParser();
  v1 = swift_allocObject();
  v2 = sub_24FF5F648();
  v3(v2);
  v4 = sub_24FF5FB3C();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_24FF4E444;
  v5 = v0[14];
  v6 = v0[7];

  return v8(v5, v6, v1);
}

uint64_t sub_24FF4E444()
{
  sub_24FF2BC70();
  v2 = v1;
  sub_24FF2BC88();
  v4 = v3;
  sub_24FF2BB08();
  *v5 = v4;
  v6 = *v0;
  sub_24FF2BACC();
  *v7 = v6;
  *(v4 + 128) = v2;

  v8 = swift_task_alloc();
  *(v4 + 136) = v8;
  *v8 = v6;
  v8[1] = sub_24FF4E55C;

  return sub_24FF3D988();
}

uint64_t sub_24FF4E55C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v1 = *v0;
  sub_24FF2BACC();
  *v2 = v1;

  v3 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF4E640()
{
  sub_24FF2BC7C();
  v0 = sub_24FF61BA8();
  sub_24FF62008();
  sub_24FF5F968();
  if (os_log_type_enabled(v0, v1))
  {
    *sub_24FF5F98C() = 0;
    sub_24FF5F298();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
    sub_24FF42634();
  }

  sub_24FF321B0();

  return v7();
}

uint64_t sub_24FF4E708()
{
  sub_24FF2BC30();
  MEMORY[0x25305D050](*(v1 + 104));
  v3 = sub_24FF61BA8();
  sub_24FF62018();

  if (os_log_type_enabled(v3, v0))
  {
    v4 = *(v1 + 104);
    sub_24FF42770();
    v5 = sub_24FF5F5E0();
    *v2 = 138412290;
    MEMORY[0x25305D050](v4);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    sub_24FF5F834(v6);
    _os_log_impl(&dword_24FF22000, v3, v0, "Finished streaming task with error %@", v2, 0xCu);
    sub_24FF37EE0(v5, &qword_27F3B42E0, qword_24FF63700);
    sub_24FF4C84C();
    sub_24FF42634();
  }

  v7 = *(v1 + 104);

  *(v1 + 16) = v7;
  sub_24FF61F88();

  sub_24FF321B0();

  return v8();
}

uint64_t sub_24FF4E840()
{
  sub_24FF2BC30();
  v2 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  sub_24FF2BA9C(v2);
  v3 = sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  sub_24FF5F494(v3);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24FF32090;
  v7 = sub_24FF5FA9C();

  return sub_24FF4DFC4(v7, v4, v5, v8, v9);
}

uint64_t AsyncThrowingStream.Continuation<>.completeWithError(_:)(uint64_t a1)
{
  MEMORY[0x25305D050]();
  sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  return sub_24FF61F88();
}

uint64_t sub_24FF4E9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24FF25460(&qword_27F3B4360, &qword_24FF63C20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_24FF5EB34(a3, v21 - v9, &qword_27F3B4360, &qword_24FF63C20);
  v11 = sub_24FF61EC8();
  v12 = sub_24FF24B70(v10, 1, v11);

  if (v12 == 1)
  {
    sub_24FF37EE0(v10, &qword_27F3B4360, &qword_24FF63C20);
  }

  else
  {
    sub_24FF61EB8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_24FF61E98();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_24FF61D68() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_24FF37EE0(a3, &qword_27F3B4360, &qword_24FF63C20);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24FF37EE0(a3, &qword_27F3B4360, &qword_24FF63C20);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_24FF4EC68()
{
  result = qword_27F3B43C0;
  if (!qword_27F3B43C0)
  {
    result = swift_getWitnessTable(byte_24FF640CC, &type metadata for TokenStreamingError, v0, v1);
    atomic_store(result, &qword_27F3B43C0);
  }

  return result;
}

void sub_24FF4ECBC()
{
  sub_24FF277EC();
  v1 = v0;
  v2 = sub_24FF25460(&qword_27F3B43B0, &qword_24FF63D90);
  sub_24FF5F494(v2);
  sub_24FF26800();
  MEMORY[0x28223BE20](v3);
  v5 = v36 - v4;
  v6 = sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  sub_24FF2552C();
  sub_24FF26800();
  MEMORY[0x28223BE20](v7);
  v8 = sub_24FF25460(&qword_27F3B43A8, &qword_24FF63D88);
  v9 = sub_24FF5F494(v8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - v13;
  v15 = sub_24FF25460(&qword_27F3B4360, &qword_24FF63C20);
  sub_24FF5F494(v15);
  sub_24FF26800();
  MEMORY[0x28223BE20](v16);
  sub_24FF61EC8();
  sub_24FF5F4D8();
  sub_24FF24B98(v17, v18, v19, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v0;

  sub_24FF5F60C();
  sub_24FF4CF18();

  if (*(v0 + 24))
  {

    sub_24FF25460(&qword_27F3B42F0, &qword_24FF63AF0);
    sub_24FF61EF8();
  }

  *(v0 + 24) = 0;

  if (*(v0 + 16))
  {

    sub_24FF25460(&qword_27F3B42F0, &qword_24FF63AF0);
    sub_24FF61EF8();
  }

  v22 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_parserStreamContinuation;
  sub_24FF5FA14();
  swift_beginAccess();
  sub_24FF5EB34(v0 + v22, v14, &qword_27F3B43A8, &qword_24FF63D88);
  if (sub_24FF24B70(v14, 1, v6))
  {
    sub_24FF37EE0(v14, &qword_27F3B43A8, &qword_24FF63D88);
  }

  else
  {
    v23 = sub_24FF5F810();
    v24(v23);
    sub_24FF37EE0(v14, &qword_27F3B43A8, &qword_24FF63D88);
    v36[0] = 0;
    sub_24FF61F88();
    v25 = sub_24FF5F648();
    v26(v25);
  }

  sub_24FF25460(&qword_27F3B4380, &qword_24FF63D40);
  sub_24FF5F4D8();
  sub_24FF24B98(v27, v28, v29, v30);
  v31 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_parserStream;
  sub_24FF5F6D0();
  swift_beginAccess();
  sub_24FF4DF78(v5, v1 + v31, &qword_27F3B43B0, &qword_24FF63D90);
  swift_endAccess();
  sub_24FF5F4D8();
  sub_24FF24B98(v32, v33, v34, v6);
  sub_24FF5F6D0();
  swift_beginAccess();
  sub_24FF4DF78(v12, v1 + v22, &qword_27F3B43A8, &qword_24FF63D88);
  swift_endAccess();
  *(v1 + 16) = 0;

  v35 = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor;
  if (*(v1 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor))
  {

    sub_24FF25460(&qword_27F3B42F0, &qword_24FF63AF0);
    sub_24FF61EF8();
  }

  *(v1 + v35) = 0;

  sub_24FF277D4();
}

uint64_t sub_24FF4F14C()
{
  sub_24FF2BC70();
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_objectStreamMap);
  sub_24FF5F8CC();
  v1 = sub_24FF5F288();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24FF4F1B8()
{
  sub_24FF2BC70();
  sub_24FF5B164(0);

  sub_24FF24BC0();

  return v0();
}

uint64_t sub_24FF4F21C()
{
  sub_24FF2BC7C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_24FF321C0(v4);
  *v5 = v6;
  v7 = sub_24FF5F8A0(v5);

  return sub_24FF4F12C(v7, v1, v2, v3);
}

uint64_t sub_24FF4F2FC()
{
  sub_24FF2BC7C();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 168) = v5;
  *(v1 + 16) = v6;
  v7 = sub_24FF25460(&qword_27F3B4360, &qword_24FF63C20);
  sub_24FF5F494(v7);
  *(v1 + 56) = sub_24FF2BE24();
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  sub_24FF5FADC();
  v8 = sub_24FF61F68();
  *(v1 + 64) = v8;
  sub_24FF2BA9C(v8);
  *(v1 + 72) = v9;
  *(v1 + 80) = sub_24FF2BE24();
  sub_24FF5FADC();
  v10 = sub_24FF61F98();
  *(v1 + 88) = v10;
  sub_24FF2BA9C(v10);
  *(v1 + 96) = v11;
  *(v1 + 104) = *(v12 + 64);
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v13 = sub_24FF61B88();
  *(v1 + 128) = v13;
  sub_24FF2BA9C(v13);
  *(v1 + 136) = v14;
  *(v1 + 144) = *(v15 + 64);
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  v16 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_24FF4F4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(v4 + 48) + 24))
  {
    sub_24FF4EC68();
    sub_24FF5F44C();
    swift_allocError();
    *v5 = xmmword_24FF635F0;
    sub_24FF5F488(v5, 3);
    swift_willThrow();

    sub_24FF24BC0();
  }

  else
  {
    v57 = *(v4 + 48);
    v8 = *(v4 + 72);
    v7 = *(v4 + 80);
    v55 = *(v4 + 64);
    v53 = *(v4 + 168);
    sub_24FF5F920();
    swift_getAssociatedTypeWitness();
    sub_24FF5F944();
    swift_getAssociatedConformanceWitness();
    sub_24FF61B98();
    sub_24FF4CE74(v7);
    sub_24FF61F38();
    (*(v8 + 8))(v7, v55);
    if ((v53 & 1) == 0)
    {
      v9 = *(v4 + 96);
      v10 = *(v4 + 104);
      v12 = *(v4 + 48);
      v11 = *(v4 + 56);
      v13 = *(v4 + 24);
      sub_24FF61EC8();
      v56 = *(v4 + 32);
      sub_24FF5F4D8();
      sub_24FF24B98(v14, v15, v16, v17);
      v18 = sub_24FF5F870();
      v19(v18);
      v20 = (v10 + ((*(v9 + 80) + 56) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = v56;
      *(v21 + 48) = v13;
      sub_24FF5FA2C();
      v22();
      *(v21 + v20) = v12;

      v23 = sub_24FF5F60C();
      *(v12 + OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_taskMonitor) = sub_24FF4E9D8(v23, v24, v11, v25, v21);
    }

    v27 = *(v4 + 152);
    v26 = *(v4 + 160);
    v28 = *(v4 + 136);
    v30 = *(v4 + 120);
    v29 = *(v4 + 128);
    v31 = *(v4 + 112);
    v48 = v31;
    v50 = *(v4 + 144);
    v33 = *(v4 + 88);
    v32 = *(v4 + 96);
    v54 = v26;
    v52 = *(v4 + 56);
    v51 = *(v4 + 48);
    sub_24FF61EC8();
    v49 = *(v4 + 32);
    sub_24FF5F4D8();
    sub_24FF24B98(v34, v35, v36, v37);
    (*(v28 + 16))(v27, v26, v29);
    (*(v32 + 16))(v31, v30, v33);
    v38 = (*(v28 + 80) + 56) & ~*(v28 + 80);
    v39 = (v50 + *(v32 + 80) + v38) & ~*(v32 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = v49;
    *(v40 + 48) = v51;
    (*(v28 + 32))(v40 + v38, v27, v29);
    (*(v32 + 32))(v40 + v39, v48, v33);

    v41 = sub_24FF5F60C();
    v44 = sub_24FF4E9D8(v41, v42, v52, v43, v40);
    v45 = sub_24FF5FA44();
    v46(v45);
    (*(v28 + 8))(v54, v29);
    *(v57 + 24) = v44;

    sub_24FF321B0();
  }

  return v6();
}

uint64_t sub_24FF4F94C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 32) = a5;
  *(v7 + 24) = a1;
  sub_24FF25460(&qword_27F3B4438, &qword_24FF64180);
  *(v7 + 56) = swift_task_alloc();
  v8 = sub_24FF618F8();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  v9 = sub_24FF620C8();
  *(v7 + 88) = v9;
  *(v7 + 96) = *(v9 - 8);
  *(v7 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF4FAA8, 0, 0);
}

uint64_t sub_24FF4FAA8()
{
  sub_24FF2BC7C();
  sub_24FF62258();
  sub_24FF621A8();
  v1 = sub_24FF5FB3C();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_24FF4FB68;
  sub_24FF32440();
  sub_24FF5FA14();

  return v3();
}

uint64_t sub_24FF4FB68()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v2 = *v1;
  sub_24FF2BACC();
  *v3 = v2;
  *(v4 + 120) = v0;

  v5 = sub_24FF32440();
  v6(v5);
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF4FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  v14 = v12[9];
  v13 = v12[10];
  v15 = v12[8];
  sub_24FF61858();
  sub_24FF5F4D8();
  sub_24FF24B98(v16, v17, v18, v19);
  sub_24FF618E8();
  (*(v14 + 104))(v13, *MEMORY[0x277D0DAF0], v15);
  sub_24FF61918();
  sub_24FF5E51C(&qword_27F3B4440, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
  sub_24FF5F44C();
  v20 = swift_allocError();
  sub_24FF61908();
  (*(v14 + 8))(v13, v15);
  v12[2] = v20;
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  sub_24FF61F98();
  sub_24FF61F88();
  sub_24FF4ECBC();

  sub_24FF321B0();
  sub_24FF2BCF4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_24FF4FE50()
{
  sub_24FF2BC70();

  sub_24FF24BC0();

  return v0();
}

uint64_t sub_24FF4FEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[33] = a4;
  v8[38] = sub_24FF25460(&qword_27F3B4448, &qword_24FF64190);
  v8[39] = swift_task_alloc();
  v8[40] = type metadata accessor for JsonFieldValueEvent(0);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = type metadata accessor for JsonObjectFieldContainer(0);
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v9 = sub_24FF25460(&qword_27F3B4450, &qword_24FF64198);
  v8[48] = v9;
  v8[49] = *(v9 - 8);
  v8[50] = swift_task_alloc();
  sub_24FF25460(&qword_27F3B43C8, &qword_24FF63DF8);
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v10 = type metadata accessor for FieldStreamingSupport(0);
  v8[53] = v10;
  v8[54] = *(v10 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  sub_24FF25460(&qword_27F3B43D0, &qword_24FF63E00);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = sub_24FF25460(&qword_27F3B42C8, &qword_24FF641A0);
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v8[70] = swift_task_alloc();
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  v11 = sub_24FF61F48();
  v8[77] = v11;
  v8[78] = *(v11 - 8);
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();
  v12 = type metadata accessor for ObjectStreamingSupport(0);
  v8[81] = v12;
  v8[82] = *(v12 - 8);
  v8[83] = swift_task_alloc();
  v8[84] = swift_task_alloc();
  v8[85] = swift_task_alloc();
  v8[86] = swift_task_alloc();
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();
  v13 = sub_24FF61898();
  v8[95] = v13;
  v8[96] = *(v13 - 8);
  v8[97] = swift_task_alloc();
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  v8[101] = swift_task_alloc();
  v8[102] = swift_task_alloc();
  v8[103] = swift_task_alloc();
  v8[104] = swift_task_alloc();
  v8[105] = swift_task_alloc();
  v8[106] = swift_task_alloc();
  v8[107] = swift_task_alloc();
  v8[108] = swift_task_alloc();
  v8[109] = swift_task_alloc();
  v8[110] = swift_task_alloc();
  v8[111] = swift_task_alloc();
  v8[112] = swift_task_alloc();
  v8[113] = swift_task_alloc();
  v8[114] = swift_task_alloc();
  v8[115] = swift_task_alloc();
  v8[116] = swift_task_alloc();
  v8[117] = swift_task_alloc();
  v8[118] = swift_task_alloc();
  v8[119] = swift_task_alloc();
  v8[120] = swift_task_alloc();
  v8[121] = type metadata accessor for JsonStreamEvent(0);
  v8[122] = swift_task_alloc();
  v8[123] = swift_task_alloc();
  v8[124] = swift_task_alloc();
  v8[125] = swift_task_alloc();
  sub_24FF25460(&qword_27F3B4458, &qword_24FF641A8);
  v8[126] = swift_task_alloc();
  v14 = sub_24FF25460(&qword_27F3B4380, &qword_24FF63D40);
  v8[127] = v14;
  v8[128] = *(v14 - 8);
  v8[129] = swift_task_alloc();
  v15 = sub_24FF25460(&qword_27F3B4460, &qword_24FF641B0);
  v8[130] = v15;
  v8[131] = *(v15 - 8);
  v8[132] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF506A0, 0, 0);
}

uint64_t sub_24FF506A0()
{
  sub_24FF2BC30();
  v1 = v0[129];
  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84FA0];
  v0[24] = MEMORY[0x277D84F90];
  v0[25] = v3;
  v0[26] = v2;
  sub_24FF571FC(v1);
  sub_24FF61ED8();
  v4 = sub_24FF427BC();
  v5(v4);
  v0[133] = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_sanitizer;
  v0[134] = OBJC_IVAR____TtC19GenerativeFunctions35StreamingObjectTokenStreamProcessor_objectStreamMap;
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[135] = v6;
  *v6 = v7;
  v8 = sub_24FF5F0D4(v6);

  return MEMORY[0x2822005A8](v8, v9, v10);
}

uint64_t sub_24FF50790()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;

  if (v0)
  {
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF50894(uint64_t a1, uint64_t a2)
{
  v1030 = v2;
  v6 = v2;
  v7 = sub_24FF5F81C();
  v10 = 0x280B15000uLL;
  v1009 = v6;
  if (sub_24FF24B70(v7, v8, v9) == 1)
  {
    (*(*(v6 + 1048) + 8))(*(v6 + 1056), *(v6 + 1040));

    v11 = *(v6 + 192);
    if (!*(v11 + 16))
    {
      *(v6 + 1264) = *(*(v6 + 264) + *(v6 + 1072));
LABEL_155:

      sub_24FF5F288();
      sub_24FF5FB04();

      return MEMORY[0x2822009F8](v766, v767, v768);
    }

    if (qword_280B15CC0 != -1)
    {
      sub_24FF5F0B4(&qword_280B15CC0);
    }

    v12 = sub_24FF61BC8();
    sub_24FF278EC(v12, qword_280B16930);
    v13 = sub_24FF61BA8();
    v14 = sub_24FF62018();
    if (os_log_type_enabled(v13, v14))
    {
      sub_24FF42770();
      sub_24FF5F6F4();
      *v4 = 136315138;
      v15 = *(v11 + 16);
      v16 = MEMORY[0x277D84F90];
      if (v15)
      {
        v924 = v14;
        v941 = v4;
        v961 = v13;
        v17 = v1009[96];
        v1028 = MEMORY[0x277D84F90];

        sub_24FF5CA04(0, v15, 0);
        v16 = v1028;
        v18 = v11 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v19 = *(v17 + 72);
        v20 = *(v17 + 16);
        do
        {
          v20(v1009[107], v18, v1009[95]);
          v21 = sub_24FF61868();
          v23 = v22;
          v24 = sub_24FF5F688();
          v25(v24);
          v1028 = v16;
          v27 = *(v16 + 16);
          v26 = *(v16 + 24);
          if (v27 >= v26 >> 1)
          {
            v29 = sub_24FF5F8F0(v26);
            sub_24FF5CA04(v29, v27 + 1, 1);
            v16 = v1028;
          }

          *(v16 + 16) = v27 + 1;
          v28 = v16 + 16 * v27;
          *(v28 + 32) = v21;
          *(v28 + 40) = v23;
          v18 += v19;
          --v15;
        }

        while (v15);

        v10 = 0x280B15000;
        v4 = v941;
        v13 = v961;
        v14 = v924;
      }

      v6 = v1009;
      v1009[29] = v16;
      v51 = sub_24FF5F648();
      sub_24FF25460(v51, v52);
      sub_24FF5E61C(&qword_27F3B4470, &qword_27F3B4468, &qword_24FF641B8, MEMORY[0x277D83958]);
      sub_24FF61D28();

      v53 = sub_24FF5F648();
      v56 = sub_24FF5BBE0(v53, v54, v55);

      *(v4 + 4) = v56;
      _os_log_impl(&dword_24FF22000, v13, v14, "An object remained incomplete in the stack, object_id=%s", v4, 0xCu);
      sub_24FF5F654();
      sub_24FF4C84C();
    }

    sub_24FF4EC68();
    sub_24FF5F44C();
    v31 = swift_allocError();
    *v57 = xmmword_24FF63610;
    sub_24FF5F488(v57, 3);
    swift_willThrow();
LABEL_150:
    *(v6 + 1272) = v31;
    if (*(v10 + 3264) != -1)
    {
      sub_24FF5F0B4(&qword_280B15CC0);
    }

    v754 = sub_24FF61BC8();
    sub_24FF278EC(v754, qword_280B16930);
    v755 = sub_24FF4C8BC();
    MEMORY[0x25305D050](v755);
    v756 = sub_24FF61BA8();
    sub_24FF62018();
    sub_24FF5F9BC();
    if (sub_24FF4CC08())
    {
      sub_24FF42770();
      v757 = sub_24FF5F5E0();
      sub_24FF5F9A4(5.7779e-34);
      v758 = _swift_stdlib_bridgeErrorToNSError();
      sub_24FF5F834(v758);
      sub_24FF5F298();
      _os_log_impl(v759, v760, v761, v762, v763, 0xCu);
      sub_24FF37EE0(v757, &qword_27F3B42E0, qword_24FF63700);
      sub_24FF4C84C();
      sub_24FF42634();
    }

    v764 = *(v6 + 1072);
    v765 = *(v6 + 264);

    *(v6 + 1280) = *(v765 + v764);
    MEMORY[0x25305D050](v31);
    goto LABEL_155;
  }

  sub_24FF57D68();
  if (qword_280B15CC0 != -1)
  {
    sub_24FF5F0B4(&qword_280B15CC0);
  }

  v30 = sub_24FF61BC8();
  v31 = sub_24FF278EC(v30, qword_280B16930);
  sub_24FF5F140();
  sub_24FF5F648();
  sub_24FF5C0FC();
  v32 = sub_24FF61BA8();
  sub_24FF62008();
  sub_24FF5F968();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v6 + 992);
  if (v34)
  {
    v5 = *(v6 + 984);
    v6 = *(v6 + 968);
    v3 = sub_24FF42770();
    v36 = sub_24FF4CA88();
    v1028 = v36;
    *v3 = 136315138;
    sub_24FF5F140();
    sub_24FF5F61C();
    sub_24FF5C0FC();
    sub_24FF5F628();
    sub_24FF61D48();
    sub_24FF5FA7C();
    sub_24FF5F03C();
    sub_24FF58FDC(v35, v37);
    v38 = sub_24FF5F628();
    v35 = sub_24FF5BBE0(v38, v39, v40);
    sub_24FF5F54C();

    *(v3 + 4) = v35;
    sub_24FF5F298();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_24FF25A6C(v36);
    sub_24FF4C84C();
    sub_24FF42634();
  }

  else
  {

    sub_24FF5F03C();
    sub_24FF58FDC(v35, v46);
  }

  sub_24FF5F140();
  sub_24FF5C0FC();
  sub_24FF5F648();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v48 = *(v6 + 976);
  v49 = *(v6 + 768);
  v50 = *(v6 + 760);
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v108 = *(v6 + 584);
      v150 = *(v49 + 32);
      sub_24FF5F6A8();
      v150();
      sub_24FF55C78(v108);
      sub_24FF5F598(v108);
      if (v247)
      {
        sub_24FF5F474();
        v31 = *(v6 + 584);

        sub_24FF37EE0(v31, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        v114 = v151 + 29;
        goto LABEL_47;
      }

      (v150)(*(v6 + 920), *(v6 + 584), *(v6 + 760));
      sub_24FF5F8FC();
      v218 = sub_24FF61878();
      if ((v218 & 1) == 0)
      {
        goto LABEL_133;
      }

      v219 = *(v6 + 648);
      v3 = *(v6 + 488);
      sub_24FF55E4C(v3);
      sub_24FF5F6DC(v3, 1, v219);
      if (v247)
      {
        sub_24FF5F17C();
        v220 = *(v6 + 768);
        sub_24FF5F220();
        v222 = *(v221 + 488);
        v231 = sub_24FF5F71C(v223, v224, v225, v226, v227, v228, v229, v230, v879, v888, v898, v910, v923, v940, v960, v987, v1009);
        sub_24FF5F7DC(v231, v232, v233, v234, v235, v236, v237, v238, v881, v891, v902, v914, v928, v945, v967, v994, v1014);
        sub_24FF37EE0(v222, &qword_27F3B43D0, &qword_24FF63E00);
        sub_24FF5F1E0();
        sub_24FF62098();

        sub_24FF5F260();
        v1028 = (v240 + 3);
        v1029 = v239;
        sub_24FF5F054();
        sub_24FF5E51C(v241, v242, MEMORY[0x277CC9628]);
        sub_24FF62148();
        sub_24FF5F974();

        v243 = v1029;
        sub_24FF4EC68();
        sub_24FF5F44C();
        v31 = swift_allocError();
        *v244 = v1028;
        *(v244 + 8) = v243;
        *(v244 + 16) = 1;
        goto LABEL_135;
      }

      sub_24FF5F128();
      sub_24FF57D68();
      v641 = sub_24FF5F8FC();
      v642(v641);
      v643 = sub_24FF61BA8();
      sub_24FF62008();
      sub_24FF5F968();
      v645 = os_log_type_enabled(v643, v644);
      v646 = *(v6 + 768);
      if (v645)
      {
        v647 = sub_24FF42770();
        v648 = sub_24FF4CA88();
        v1028 = v648;
        *v647 = 136315138;
        sub_24FF5F054();
        sub_24FF5E51C(v649, v650, MEMORY[0x277CC9628]);
        sub_24FF62148();
        sub_24FF5FA7C();
        v651 = *(v646 + 8);
        v652 = sub_24FF5F740();
        v651(v652);
        v653 = sub_24FF5F628();
        v656 = sub_24FF5BBE0(v653, v654, v655);
        sub_24FF5F54C();

        *(v647 + 4) = v656;
        sub_24FF5F4E4();
        _os_log_impl(v657, v658, v659, v660, v661, 0xCu);
        sub_24FF25A6C(v648);
        sub_24FF4C84C();
        sub_24FF42634();
      }

      else
      {

        v651 = *(v646 + 8);
        v777 = sub_24FF5F740();
        v651(v777);
      }

      v193 = *(v6 + 1000);
      v778 = *(v6 + 928);
      v779 = *(v6 + 760);
      v780 = *(v6 + 728);
      sub_24FF55FF4(0);
      sub_24FF5F084();
      sub_24FF58FDC(v780, v781);
      v782 = sub_24FF5F734();
      v651(v782);
      (v651)(v778, v779);
      goto LABEL_165;
    case 2:
      v70 = (v48 + *(sub_24FF25460(&qword_27F3B42B0, &qword_24FF641D0) + 48));
      v72 = *v70;
      v71 = v70[1];
      sub_24FF5F6A8();
      v73();
      v74 = *(v6 + 192);
      *(v6 + 1144) = v74;
      if (!v74[2])
      {
        v373 = v1009[125];
        sub_24FF5F4C8();
        v31 = *(v374 + 576);
        sub_24FF5F4D8();
        v378 = sub_24FF24B98(v375, v376, v377, v5);
        sub_24FF5F71C(v378, v379, v380, v381, v382, v383, v384, v385, v879, v888, v898, v910, v923, v940, v960, v987, v1009);

        v386 = sub_24FF37EE0(v31, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F7DC(v386, v387, v388, v389, v390, v391, v392, v393, v885, v895, v906, v920, v934, v952, v975, v1000, v1019);
        sub_24FF4EC68();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        *v394 = v395;
        *(v394 + 8) = 0x800000024FF67A50;
        *(v394 + 16) = 1;
        swift_willThrow();
        v396 = sub_24FF5F61C();
        v397(v396);
        sub_24FF5F03C();
        sub_24FF58FDC(v373, v398);
        v399 = sub_24FF5F688();
        v400(v399);
        v6 = v1020;
        goto LABEL_149;
      }

      v963 = v72;
      v989 = v74;
      v75 = *(v6 + 904);
      v76 = *(v6 + 896);
      v77 = *(v6 + 768);
      v78 = *(v6 + 760);
      v79 = *(v6 + 576);
      v82 = *(v77 + 16);
      v80 = v77 + 16;
      v81 = v82;
      *(v6 + 116) = *(v80 + 64);
      sub_24FF5F76C();
      v899 = v83;
      v85 = *(v80 + 56);
      *(v6 + 1152) = v85;
      v911 = v85;
      *(v6 + 1160) = v82;
      *(v6 + 1168) = v80 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      (v82)(v79, v84 + v83 + v85 * v86, v78);
      sub_24FF5F6C4();
      sub_24FF24B98(v87, v88, v89, v78);
      sub_24FF37EE0(v79, &qword_27F3B42C8, &qword_24FF641A0);
      (v82)(v76, v75, v78);

      v90 = sub_24FF61BA8();
      v91 = sub_24FF62008();

      v925 = v82;
      v942 = v80;
      if (os_log_type_enabled(v90, v91))
      {
        v6 = sub_24FF5FBCC();
        v888 = sub_24FF5FBB4();
        v1028 = v888;
        *v6 = 136315394;
        v80 = v71;
        v92 = sub_24FF61868();
        v81 = v93;
        v94 = sub_24FF5F688();
        v96 = v95;
        (v95)(v94);
        v97 = v92;
        v71 = v80;
        v98 = sub_24FF5BBE0(v97, v81, &v1028);

        *(v6 + 4) = v98;
        *(v6 + 12) = 2080;

        v99 = sub_24FF5BBE0(v72, v80, &v1028);

        *(v6 + 14) = v99;
        _os_log_impl(&dword_24FF22000, v90, v91, "Starting a child object with object id=%s for field=%s", v6, 0x16u);
        swift_arrayDestroy();
        sub_24FF42670();
        sub_24FF5F54C();
        sub_24FF42670();
      }

      else
      {

        v450 = sub_24FF5F688();
        v96 = v451;
        v100 = (v451)(v450);
      }

      *(v6 + 1176) = v96;
      v452 = *(v6 + 208);
      *(v6 + 1184) = v452;
      if (!*(v452 + 16))
      {
        if (v989[2] != 1)
        {
          v723 = *(v6 + 1048);
          v724 = *(v6 + 1000);
          sub_24FF5F71C(v100, v101, v102, v103, v104, v105, v106, v107, v879, v888, v899, v911, v925, v942, v963, *(v6 + 1056), v1009);

          sub_24FF5F840();
          sub_24FF5F44C();
          swift_allocError();
          sub_24FF5F1B8();
          *v725 = v726;
          v725[1] = v71;
          sub_24FF426C0(v727, v725);
          v728 = sub_24FF5F628();
          v6 = v1027;
          (v96)(v728);
          sub_24FF5F03C();
          sub_24FF58FDC(v724, v729);
          (*(v723 + 8))(v1006);
          goto LABEL_149;
        }

        v547 = sub_24FF61BA8();
        v548 = sub_24FF62008();
        if (sub_24FF4C944(v548))
        {
          *sub_24FF5F98C() = 0;
          sub_24FF4C868();
          _os_log_impl(v549, v550, v551, v552, v553, 2u);
          sub_24FF42670();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v872 = sub_24FF4C6AC();
          v989 = sub_24FF4B31C(v872, v873, v874, v875);
        }

        v554 = v989;
        v556 = v989[2];
        v555 = v989[3];
        if (v556 >= v555 >> 1)
        {
          v876 = sub_24FF5F8F0(v555);
          v554 = sub_24FF4B31C(v876, v556 + 1, 1, v877);
        }

        v1023 = *(v6 + 1072);
        v557 = *(v6 + 904);
        v558 = *(v6 + 760);
        v559 = *(v6 + 720);
        v560 = v6;
        v561 = *(v6 + 648);
        v562 = v560[33];
        v554[2] = v556 + 1;
        v563 = v554;
        v925(v554 + v899 + v556 * v911, v557, v558);
        v560[24] = v563;
        sub_24FF61B58();
        sub_24FF5694C();
        v565 = v564;

        v925(v559, v557, v558);
        *&v559[*(v561 + 20)] = v565;
        v560[149] = *(v562 + v1023);
        goto LABEL_155;
      }

      v453 = *(v6 + 656);
      *(v6 + 140) = *(v453 + 80);
      *(v6 + 1224) = *(v453 + 72);
      sub_24FF5F158();

      v454 = sub_24FF5F828();
      v31 = sub_24FF24BCC(v454, v455);

      if (v31)
      {
        if (*(*(*(v6 + 704) + *(*(v6 + 648) + 20)) + 16))
        {

          v456 = sub_24FF5F828();
          sub_24FF3AFC8(v456, v457);
          if (v458)
          {
            sub_24FF5F248();
            sub_24FF5C0FC();
          }

          v735 = *(v6 + 416);
          v734 = *(v6 + 424);
          sub_24FF5F558();
          sub_24FF24B98(v736, v737, v738, v739);

          sub_24FF5F6DC(v735, 1, v734);
          if (!v247)
          {
            v770 = *(v6 + 1072);
            v771 = *(v6 + 904);
            v772 = *(v6 + 760);
            v773 = *(v6 + 696);
            v774 = *(v6 + 648);
            v775 = v6;
            v776 = *(v6 + 264);

            sub_24FF5F110();
            sub_24FF57D68();
            v925(v773, v771, v772);
            sub_24FF5694C();
            sub_24FF4C8BC();

            *&v773[*(v774 + 20)] = v771;
            *(v775 + 1232) = *(v776 + v770);
            goto LABEL_155;
          }
        }

        else
        {
          sub_24FF5F4D8();
          sub_24FF24B98(v730, v731, v732, v733);
        }

        sub_24FF5F564();
        v740 = *(v6 + 416);
        sub_24FF5F71C(v741, v742, v743, v744, v745, v746, v747, v748, v879, v888, v899, v911, v925, v942, v72, v989, v1009);

        sub_24FF37EE0(v740, &qword_27F3B43C8, &qword_24FF63DF8);
        sub_24FF5F1E0();
        sub_24FF62098();

        sub_24FF5F260();
        v625 = v749 + 4;
      }

      else
      {
        sub_24FF5F564();
        sub_24FF5F71C(v615, v616, v617, v618, v619, v620, v621, v622, v879, v888, v899, v911, v925, v942, v72, v989, v1009);

        sub_24FF5F1E0();
        sub_24FF62098();

        sub_24FF5F260();
        v625 = v624 + 1;
      }

      v1028 = v625;
      v1029 = v623;
      v750 = sub_24FF5F828();
      MEMORY[0x25305C910](v750);

      sub_24FF4EC68();
      sub_24FF5F44C();
      v751 = swift_allocError();
      sub_24FF5F274(v751, v752);
      swift_willThrow();
      v81(v80, v91);
      v6 = v1026;
      sub_24FF5F03C();
      sub_24FF58FDC(v938, v753);
      v96[1](v982, v957);
      v640 = type metadata accessor for ObjectStreamingSupport;
      goto LABEL_147;
    case 3:
      v108 = *(v6 + 568);
      sub_24FF25460(&qword_27F3B42B0, &qword_24FF641D0);

      v109 = *(v49 + 32);
      v110 = sub_24FF4259C();
      (v109)(v110);
      sub_24FF55C78(v108);
      sub_24FF5F598(v108);
      if (v247)
      {
        sub_24FF5F474();
        v31 = *(v6 + 568);

        sub_24FF37EE0(v31, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        v114 = v113 + 25;
        goto LABEL_47;
      }

      v31 = *(v6 + 872);
      (v109)(v31, *(v6 + 568), *(v6 + 760));
      sub_24FF4259C();
      v192 = sub_24FF61878();
      if ((v192 & 1) == 0)
      {
        sub_24FF5F474();
        v495 = *(v6 + 768);
        sub_24FF5F220();

        sub_24FF5F7DC(v496, v497, v498, v499, v500, v501, v502, v503, v879, v888, v898, v910, v923, v940, v960, v987, v1009);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        *v505 = v504 - 18;
        v505[1] = v108;
        sub_24FF426C0(v506, v505);
        v507 = *(v495 + 8);
        v508 = sub_24FF5F628();
        v507(v508);
        v509 = sub_24FF5FA38();
        v6 = v1021;
        v507(v509);
        goto LABEL_48;
      }

      if (*(*(v6 + 208) + 16) == 1 && *(*(v6 + 192) + 16) == 1)
      {
        v193 = *(v6 + 648);
        v245 = *(v6 + 480);
        sub_24FF55E4C(v245);
        v194 = sub_24FF5F710();
        sub_24FF5F6DC(v194, v195, v193);
        if (v247)
        {
          sub_24FF5F694();
          v196 = *(v6 + 768);
          sub_24FF5F220();
          v31 = *(v197 + 480);
          v206 = sub_24FF5F71C(v198, v199, v200, v201, v202, v203, v204, v205, v879, v888, v898, v910, v923, v940, v960, v987, v1009);
          sub_24FF5F7DC(v206, v207, v208, v209, v210, v211, v212, v213, v880, v890, v901, v913, v927, v944, v966, v993, v1012);
          sub_24FF37EE0(v31, &qword_27F3B43D0, &qword_24FF63E00);
          sub_24FF5F840();
          sub_24FF5F44C();
          swift_allocError();
          sub_24FF5F1B8();
          v217 = v216 + 5;
          goto LABEL_116;
        }

        goto LABEL_114;
      }

      v193 = *(v6 + 648);
      v245 = *(v6 + 472);
      sub_24FF55E4C(v245);
      v566 = sub_24FF5F710();
      sub_24FF5F6DC(v566, v567, v193);
      if (!v247)
      {
LABEL_114:
        sub_24FF5F950();
        sub_24FF57D68();
        sub_24FF55FF4(0);
        v831 = sub_24FF5F740();
        sub_24FF58FDC(v831, v832);
        v833 = *(v109 + 8);
        v834 = sub_24FF5F734();
        v833(v834);
        (v833)(v245, v50);
        goto LABEL_165;
      }

      sub_24FF5F694();
      v196 = *(v6 + 768);
      sub_24FF5F220();
      v31 = *(v568 + 472);
      v577 = sub_24FF5F71C(v569, v570, v571, v572, v573, v574, v575, v576, v879, v888, v898, v910, v923, v940, v960, v987, v1009);
      sub_24FF5F7DC(v577, v578, v579, v580, v581, v582, v583, v584, v886, v896, v907, v921, v936, v956, v981, v1003, v1024);
      sub_24FF37EE0(v31, &qword_27F3B43D0, &qword_24FF63E00);
      sub_24FF5F840();
      sub_24FF5F44C();
      swift_allocError();
      sub_24FF5F1B8();
      v217 = v585 - 9;
LABEL_116:
      *v215 = v217;
      v215[1] = v245;
      sub_24FF426C0(v214, v215);
      v586 = *(v196 + 8);
      v587 = sub_24FF5F628();
      v586(v587);
      v588 = sub_24FF5FA38();
      v6 = v1013;
      v586(v588);
      sub_24FF5F03C();
      sub_24FF58FDC(v50, v589);
      v590 = sub_24FF5F688();
      v591(v590);
      goto LABEL_149;
    case 4:
      sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0);
      sub_24FF5F6A8();
      v962 = v58;
      v58();
      sub_24FF57D68();
      v59 = *(v6 + 768);
      v60 = *(v6 + 760);
      v61 = *(v6 + 560);
      v988 = *(v6 + 192);
      if (*(v988 + 16))
      {
        v62 = *(v59 + 16);
        sub_24FF5F76C();
        v62(v61, v64 + v63 + *(v59 + 72) * v65, v60);
        sub_24FF5F558();
        sub_24FF24B98(v66, v67, v68, v69);
      }

      else
      {
        sub_24FF5F4D8();
        sub_24FF24B98(v317, v318, v319, v60);
        v62 = *(v59 + 16);
      }

      v320 = *(v6 + 760);
      v321 = *(v6 + 560);
      v322 = *(v6 + 552);
      v324 = *(v6 + 304);
      v323 = *(v6 + 312);
      v62(v322, *(v6 + 352), v320);
      sub_24FF5F6C4();
      sub_24FF24B98(v325, v326, v327, v320);
      v328 = *(v324 + 48);
      sub_24FF5EB34(v321, v323, &qword_27F3B42C8, &qword_24FF641A0);
      v329 = v1009;
      sub_24FF5EB34(v322, v323 + v328, &qword_27F3B42C8, &qword_24FF641A0);
      v330 = sub_24FF5F81C();
      v332 = sub_24FF24B70(v330, v331, v320);
      v333 = v1009[95];
      if (v332 == 1)
      {
        sub_24FF37EE0(v1009[69], &qword_27F3B42C8, &qword_24FF641A0);
        v334 = sub_24FF5F944();
        sub_24FF37EE0(v334, v335, &qword_24FF641A0);
        sub_24FF5F6DC(v323 + v328, 1, v333);
        if (!v247)
        {
          goto LABEL_77;
        }

        v336 = sub_24FF37EE0(v1009[39], &qword_27F3B42C8, &qword_24FF641A0);
      }

      else
      {
        sub_24FF5EB34(v1009[39], v1009[68], &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F6DC(v323 + v328, 1, v333);
        if (v247)
        {
          v344 = v1009[96];
          v345 = v1009[95];
          v346 = v1009[68];
          sub_24FF5F920();
          sub_24FF37EE0(v347, v348, v349);
          sub_24FF5F920();
          sub_24FF37EE0(v350, v351, v352);
          (*(v344 + 8))(v346, v345);
LABEL_77:
          v336 = sub_24FF37EE0(v1009[39], &qword_27F3B4448, &qword_24FF64190);
LABEL_78:
          v353 = v329[131];
          v949 = v329[130];
          v972 = v329[132];
          v917 = v329[108];
          v931 = v329[125];
          v354 = v1009[96];
          v355 = v1009[95];
          v31 = v1009[67];
          v356 = v1009[44];
          v357 = sub_24FF5F71C(v336, v337, v338, v339, v340, v341, v342, v343, v879, v888, v898, v917, v931, v949, v972, v988, v1009);
          sub_24FF5F7DC(v357, v358, v359, v360, v361, v362, v363, v364, v884, v894, v905, v918, v932, v950, v973, v998, v1017);
          sub_24FF5F1E0();
          sub_24FF62098();
          sub_24FF5F7B4();
          sub_24FF5F5FC();
          sub_24FF5F858();
          sub_24FF5F054();
          sub_24FF5E51C(v365, v366, MEMORY[0x277CC9628]);
          v367 = sub_24FF62148();
          MEMORY[0x25305C910](v367);

          sub_24FF5F858();
          sub_24FF4CDBC(v999, v31);
          sub_24FF61D48();
          sub_24FF5F974();

          sub_24FF4EC68();
          sub_24FF5F44C();
          v368 = swift_allocError();
          sub_24FF5F274(v368, v369);
          swift_willThrow();
          (*(v354 + 8))(v919, v355);
          v6 = v1018;
          sub_24FF5F03C();
          sub_24FF58FDC(v933, v370);
          (*(v353 + 8))(v974, v951);
          sub_24FF5F1F0();
          v372 = v356;
          goto LABEL_148;
        }

        v459 = v1009[96];
        v460 = v1009[95];
        v461 = v1009[70];
        v462 = v1009[69];
        v329 = v1009[68];
        v940 = v1009[39];
        (v962)(v1009[107], v323 + v328, v460);
        sub_24FF5F054();
        sub_24FF5E51C(v463, v464, MEMORY[0x277CC9610]);
        v465 = sub_24FF61D38();
        v466 = *(v459 + 8);
        v467 = sub_24FF5F734();
        v466(v467);
        sub_24FF37EE0(v462, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF37EE0(v461, &qword_27F3B42C8, &qword_24FF641A0);
        v468 = sub_24FF5F54C();
        (v466)(v468, v460);
        v336 = sub_24FF37EE0(v940, &qword_27F3B42C8, &qword_24FF641A0);
        if ((v465 & 1) == 0)
        {
          goto LABEL_78;
        }
      }

      v469 = v329[26];
      v329[155] = v469;
      if (*(v469 + 16))
      {
        sub_24FF5F158();
        sub_24FF5C0FC();
        sub_24FF5C0FC();
        sub_24FF5C0FC();
        v470 = sub_24FF61BA8();
        v471 = sub_24FF62008();
        if (os_log_type_enabled(v470, v471))
        {
          sub_24FF5F220();
          v473 = *(v472 + 344);
          v474 = v1009[42];
          v978 = v1009[41];
          v475 = v1009[40];
          v476 = sub_24FF4CA88();
          v1028 = swift_slowAlloc();
          *v476 = 136315650;
          sub_24FF5F054();
          sub_24FF5E51C(v477, v478, MEMORY[0x277CC9628]);
          v479 = sub_24FF62148();
          v481 = v480;
          sub_24FF58FDC(v473, type metadata accessor for JsonFieldValueEvent);
          v482 = sub_24FF5BBE0(v479, v481, &v1028);

          *(v476 + 4) = v482;
          *(v476 + 12) = 2080;
          v329 = *(v474 + *(v475 + 20) + 8);

          sub_24FF58FDC(v474, type metadata accessor for JsonFieldValueEvent);
          v483 = sub_24FF5FA38();
          v486 = sub_24FF5BBE0(v483, v484, v485);
          sub_24FF5F54C();

          *(v476 + 14) = v486;
          *(v476 + 22) = 2080;
          v487 = v978 + *(v475 + 24);
          v488 = *v487;
          v489 = *(v487 + 8);
          v490 = *(v487 + 16);
          v329[21] = *v487;
          v329[22] = v489;
          *(v329 + 184) = v490;
          sub_24FF3B644(v488, v489, v490);
          sub_24FF61D48();
          sub_24FF58FDC(v978, type metadata accessor for JsonFieldValueEvent);
          v491 = sub_24FF5F61C();
          v494 = sub_24FF5BBE0(v491, v492, v493);

          *(v476 + 24) = v494;
          _os_log_impl(&dword_24FF22000, v470, v471, "Field value for object id=%s field=%s value=%s", v476, 0x20u);
          swift_arrayDestroy();
          sub_24FF42670();
          sub_24FF42670();
        }

        else
        {
          v708 = v329[41];

          sub_24FF58FDC(v708, type metadata accessor for JsonFieldValueEvent);
          v709 = sub_24FF32270();
          sub_24FF58FDC(v709, v710);
          v711 = sub_24FF4C758();
          sub_24FF58FDC(v711, v712);
        }

        v713 = v329[44];
        v714 = v329[40];
        v715 = (v329[33] + v329[133]);
        sub_24FF257B8(v715, v715[3]);
        v716 = v713 + *(v714 + 24);
        v717 = *v716;
        v718 = *(v716 + 8);
        v719 = *(v716 + 16);
        v329[15] = *v716;
        v329[16] = v718;
        *(v329 + 136) = v719;
        sub_24FF3B644(v717, v718, v719);
        v720 = swift_task_alloc();
        v329[156] = v720;
        *v720 = v329;
        v720[1] = sub_24FF54AB0;
        sub_24FF5FB04();

        __asm { BRAA            X4, X16 }
      }

      v626 = v329[132];
      v627 = v329[131];
      v628 = v329[130];
      v629 = v329[125];
      v6 = v1009[108];
      v630 = v1009[95];
      sub_24FF5F71C(v336, v337, v338, v339, v340, v341, v342, v343, v879, v888, v898, v910, v923, v940, v626, v1009[44], v1009);

      sub_24FF5F1E0();
      sub_24FF62098();

      sub_24FF5F260();
      v1028 = (v632 - 10);
      v1029 = v631;
      sub_24FF5F054();
      sub_24FF5E51C(v633, v634, MEMORY[0x277CC9628]);
      sub_24FF62148();
      sub_24FF5F974();

      sub_24FF4EC68();
      sub_24FF5F44C();
      v635 = swift_allocError();
      sub_24FF5F274(v635, v636);
      swift_willThrow();
      v637 = sub_24FF5F54C();
      v638(v637, v630);
      sub_24FF5F03C();
      sub_24FF58FDC(v629, v639);
      (*(v627 + 8))(v983, v628);
      v640 = type metadata accessor for JsonFieldValueEvent;
LABEL_147:
      v371 = v640;
      v372 = v1004;
LABEL_148:
      sub_24FF58FDC(v372, v371);
      goto LABEL_149;
    case 5:
      v35 = *(v49 + 32);
      sub_24FF5F6A8();
      v35();
      v152 = *(v6 + 192);
      if (v152[2])
      {
        goto LABEL_43;
      }

      v977 = *(*(v6 + 768) + 16);
      v977(*(v6 + 840), *(v6 + 848), *(v6 + 760));
      v440 = sub_24FF61BA8();
      v441 = sub_24FF62008();
      if (os_log_type_enabled(v440, v441))
      {
        sub_24FF42770();
        v1028 = sub_24FF5F6F4();
        *v50 = 136315138;
        sub_24FF5F054();
        sub_24FF5E51C(v442, v443, MEMORY[0x277CC9628]);
        sub_24FF62148();
        v444 = sub_24FF5F92C();
        v935 = v445;
        (v445)(v444);
        v446 = sub_24FF5FA44();
        v449 = sub_24FF5BBE0(v446, v447, v448);

        *(v50 + 4) = v449;
        _os_log_impl(&dword_24FF22000, v440, v441, "Root array starts with id=%s", v50, 0xCu);
        sub_24FF5F654();
        sub_24FF4C84C();
      }

      else
      {

        v605 = sub_24FF5F92C();
        v935 = v606;
        (v606)(v605);
      }

      v607 = v1009[107];
      v608 = v1009[106];
      v609 = v1009[104];
      v908 = v1009[103];
      v610 = v1009[95];
      v977(v609, v608, v610);
      sub_24FF5CCD8(v607, v609);
      v935(v607, v610);
      v977(v908, v608, v610);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v857 = sub_24FF4C6AC();
        v152 = sub_24FF4B31C(v857, v858, v859, v152);
      }

      v612 = v152[2];
      v611 = v152[3];
      v6 = v1009;
      if (v612 >= v611 >> 1)
      {
        v860 = sub_24FF5F8F0(v611);
        v152 = sub_24FF4B31C(v860, v612 + 1, 1, v152);
      }

      v613 = v1009[125];
      v935(v1009[106], v1009[95]);
      sub_24FF5F03C();
      sub_24FF58FDC(v613, v614);
      v152[2] = v612 + 1;
      sub_24FF5FA2C();
      v35();
      v1009[24] = v152;
      goto LABEL_167;
    case 6:
      v108 = *(v6 + 528);
      v170 = *(v49 + 32);
      sub_24FF5F6A8();
      v170();
      sub_24FF55C78(v108);
      sub_24FF5F598(v108);
      if (v247)
      {
        sub_24FF5F474();
        v31 = *(v6 + 528);

        sub_24FF37EE0(v31, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        v114 = v171 + 28;
LABEL_47:
        *v112 = v114;
        v112[1] = v108;
        sub_24FF426C0(v111, v112);
        v172 = sub_24FF5F61C();
        v173(v172);
LABEL_48:
        sub_24FF58FDC(v50, type metadata accessor for JsonStreamEvent);
        v174 = sub_24FF5F688();
        v175(v174);
LABEL_149:
        v10 = 0x280B15000uLL;
        goto LABEL_150;
      }

      v245 = *(v6 + 816);
      v3 = *(v6 + 760);
      v246 = *(v6 + 520);
      (v170)(*(v6 + 808), *(v6 + 528), v3);
      sub_24FF5CFA0(v245, v246);
      sub_24FF5F6DC(v246, 1, v3);
      if (v247)
      {
        v50 = *(v6 + 1000);
        v196 = *(v6 + 768);
        sub_24FF5F220();
        v31 = *(v248 + 520);
        sub_24FF5F71C(v249, v250, v251, v252, v253, v254, v255, v256, v879, v888, v898, v910, v923, v940, v960, v987, v1009);
        v257 = sub_24FF37EE0(v31, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F7DC(v257, v258, v259, v260, v261, v262, v263, v264, v882, v892, v903, v915, v929, v946, v968, v995, v1015);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        v217 = v265 - 2;
        goto LABEL_116;
      }

      sub_24FF37EE0(*(v6 + 520), &qword_27F3B42C8, &qword_24FF641A0);
      sub_24FF5F8FC();
      v510 = sub_24FF61878();
      if ((v510 & 1) == 0)
      {
LABEL_133:
        sub_24FF5F17C();
        v220 = *(v6 + 768);
        sub_24FF5F220();

        sub_24FF5F7DC(v662, v663, v664, v665, v666, v667, v668, v669, v879, v888, v898, v910, v923, v940, v960, v987, v1009);
        sub_24FF5F1E0();
        sub_24FF62098();
        sub_24FF5F7B4();
        sub_24FF5F5FC();
        sub_24FF5F858();
        sub_24FF5F054();
        v31 = sub_24FF5E51C(v670, v671, MEMORY[0x277CC9628]);
        v672 = sub_24FF62148();
        MEMORY[0x25305C910](v672);

        sub_24FF5F858();
        sub_24FF62148();
        sub_24FF5F974();

LABEL_134:
        sub_24FF4EC68();
        sub_24FF5F44C();
        v673 = swift_allocError();
        sub_24FF5F274(v673, v674);
LABEL_135:
        swift_willThrow();
        v675 = *(v220 + 8);
        v676 = sub_24FF5FA5C();
        v675(v676);
        v677 = sub_24FF5F628();
        v6 = v1009;
        v675(v677);
        sub_24FF5F03C();
        sub_24FF58FDC(v35, v678);
        (*(v3 + 8))(v987, v960);
        goto LABEL_149;
      }

      v511 = *(v6 + 208);
      if (*(v511 + 16))
      {
        sub_24FF5F17C();
        v220 = *(v6 + 768);
        sub_24FF5F220();

        sub_24FF5F1E0();
        sub_24FF62098();
        sub_24FF5F7B4();
        sub_24FF5F5FC();
        sub_24FF5F858();
        v512 = *(v511 + 16);

        v1009[32] = v512;
        sub_24FF62148();
        sub_24FF5F974();

        sub_24FF5F858();
        goto LABEL_134;
      }

      (*(*(v6 + 768) + 16))(*(v6 + 800), *(v6 + 816), *(v6 + 760));
      v783 = sub_24FF61BA8();
      v784 = sub_24FF62008();
      v785 = os_log_type_enabled(v783, v784);
      v193 = *(v6 + 1000);
      v786 = *(v6 + 816);
      v787 = *(v6 + 808);
      v788 = *(v6 + 768);
      v789 = *(v6 + 760);
      if (v785)
      {
        v6 = sub_24FF42770();
        v1007 = v787;
        v790 = sub_24FF4CA88();
        v1028 = v790;
        *v6 = 136315138;
        sub_24FF5F054();
        sub_24FF5E51C(v791, v792, MEMORY[0x277CC9628]);
        sub_24FF62148();
        v793 = *(v788 + 8);
        v794 = sub_24FF5F688();
        v793(v794);
        v795 = sub_24FF32440();
        v798 = sub_24FF5BBE0(v795, v796, v797);

        *(v6 + 4) = v798;
        _os_log_impl(&dword_24FF22000, v783, v784, "Root array ended with id=%s", v6, 0xCu);
        sub_24FF25A6C(v790);
        sub_24FF42670();
        sub_24FF5F54C();
        sub_24FF42670();

        (v793)(v1007, v789);
        (v793)(v786, v789);
        sub_24FF5F03C();
        v800 = v193;
      }

      else
      {

        v840 = *(v788 + 8);
        v841 = sub_24FF5F688();
        v840(v841);
        (v840)(v787, v789);
        v842 = sub_24FF427BC();
        v840(v842);
LABEL_165:
        v799 = type metadata accessor for JsonStreamEvent;
        v800 = v193;
      }

      sub_24FF58FDC(v800, v799);
LABEL_167:
      v835 = swift_task_alloc();
      *(v6 + 1080) = v835;
      *v835 = v6;
      v835[1] = sub_24FF50790;
      sub_24FF2BBD4();
      sub_24FF5FB04();

      return MEMORY[0x2822005A8](v836, v837, v838);
    case 7:
      v115 = *(v6 + 792);
      v116 = sub_24FF25460(&qword_27F3B42A0, &unk_24FF641C0);
      v117 = (v48 + *(v116 + 64));
      v118 = *v117;
      v31 = v117[1];
      (*(v49 + 32))(v115, v48 + *(v116 + 48), v50);
      v119 = *(v6 + 208);
      if (!*(v119 + 16))
      {
        sub_24FF5F458();
        v401 = v1009[96];
        sub_24FF5F4C8();

        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        *v402 = v403;
        v402[1] = v118;
        sub_24FF426C0(v404, v402);
        v405 = *(v401 + 8);
        v406 = sub_24FF5FA50();
        v405(v406);
        sub_24FF5F03C();
        v407 = sub_24FF5F54C();
        sub_24FF58FDC(v407, v408);
        v409 = sub_24FF5F944();
        v411 = v410(v409);
        v419 = sub_24FF5FA08(v411, v412, v413, v414, v415, v416, v417, v418, v879, v888, v898, v910, v923, v940, v960, v987);
        v405(v419);
        goto LABEL_149;
      }

      sub_24FF5FAF0();
      if (!*(*(v119 + v120 + *(v121 + 72) * v122 + *(v123 + 20)) + 16) || (, v124 = sub_24FF4C758(), sub_24FF3AFC8(v124, v125), v127 = v126, , (v127 & 1) == 0))
      {
        v297 = *(v6 + 1048);
        v948 = *(v6 + 1040);
        v971 = *(v6 + 1056);
        sub_24FF5F458();
        v298 = v1009[96];
        sub_24FF5F4C8();

        sub_24FF5F1E0();
        sub_24FF62098();

        sub_24FF5F260();
        v1028 = (v300 + 4);
        v1029 = v299;
        v301 = sub_24FF4C758();
        MEMORY[0x25305C910](v301);

        v302 = v1029;
        sub_24FF4EC68();
        sub_24FF5F44C();
        v31 = swift_allocError();
        *v303 = v1028;
        v303[1] = v302;
        v10 = 0x280B15000uLL;
        sub_24FF426C0(v31, v303);
        v304 = *(v298 + 8);
        v305 = sub_24FF5FA50();
        v304(v305);
        sub_24FF5F03C();
        v306 = sub_24FF5F54C();
        sub_24FF58FDC(v306, v307);
        v308 = (*(v297 + 8))(v971, v948);
        v316 = sub_24FF5FA08(v308, v309, v310, v311, v312, v313, v314, v315, v879, v888, v898, v910, v923, v948, v971, v987);
        v304(v316);
        goto LABEL_150;
      }

      v128 = *(v6 + 856);
      v129 = *(v6 + 832);
      v990 = *(v6 + 792);
      v130 = *(v6 + 768);
      v131 = *(v6 + 760);
      sub_24FF5F248();
      sub_24FF5C0FC();

      sub_24FF5F110();
      sub_24FF5FA5C();
      sub_24FF57D68();
      v132 = *(v130 + 16);
      v132(v129, v990, v131);
      v133 = sub_24FF427BC();
      sub_24FF5CCD8(v133, v134);
      v135 = *(v130 + 8);
      v135(v128, v131);
      v136 = v1009[24];
      v964 = v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v861 = sub_24FF5F1C8();
        v136 = sub_24FF4B31C(v861, v862, v863, v864);
      }

      v138 = v136[2];
      v137 = v136[3];
      v139 = v138 + 1;
      v943 = v132;
      if (v138 >= v137 >> 1)
      {
        sub_24FF5F8F0(v137);
        v866 = v865;
        sub_24FF5F558();
        v871 = sub_24FF4B31C(v867, v868, v869, v870);
        v139 = v866;
        v136 = v871;
      }

      v912 = v1009[125];
      v926 = v1009[122];
      v140 = v1009[99];
      v141 = v1009[95];
      v889 = v1009[57];
      v142 = v1009[50];
      v143 = v1009[49];
      v900 = v1009[48];
      v144 = v1009[47];
      v136[2] = v139;
      sub_24FF5F4B0();
      v943(v146 + v145 * v138, v140, v141);
      v1009[24] = v136;
      v943(v144, v140, v141);
      swift_storeEnumTagMultiPayload();
      sub_24FF5F09C();
      sub_24FF5C0FC();
      sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
      sub_24FF61F78();
      v6 = v1009;
      (*(v143 + 8))(v142, v900);
      sub_24FF5F06C();
      sub_24FF58FDC(v144, v147);
      sub_24FF5F230();
      sub_24FF58FDC(v889, v148);
      v964(v140, v141);
      sub_24FF5F03C();
      sub_24FF58FDC(v912, v149);
      v964(v926, v141);
      goto LABEL_167;
    case 8:
      v176 = *(v6 + 784);
      v177 = *(v6 + 512);
      v178 = sub_24FF25460(&qword_27F3B42A0, &unk_24FF641C0);
      v179 = *(v49 + 32);
      v180 = (v48 + *(v178 + 64));
      v182 = *v180;
      v181 = v180[1];
      v179(v176, v48 + *(v178 + 48), v50);
      sub_24FF55C78(v177);
      sub_24FF5F598(v177);
      if (v247)
      {
        sub_24FF5F7C0();
        v992 = v184;
        v1011 = v183;
        v185 = *(v6 + 768);
        v186 = *(v6 + 760);
        v31 = *(v6 + 512);

        sub_24FF37EE0(v31, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        *v188 = v187 + 28;
        *(v188 + 8) = v181;
        *(v188 + 16) = v182;
        swift_willThrow();
        v189 = *(v185 + 8);
        v190 = sub_24FF5FA44();
        v189(v190);
        sub_24FF5F03C();
        sub_24FF58FDC(v177, v191);
        (*(v6 + 200))(v992, v50);
        (v189)(v1011, v186);
        goto LABEL_149;
      }

      v266 = *(v6 + 784);
      v267 = *(v6 + 760);
      v268 = *(v6 + 504);
      v179(*(v6 + 776), *(v6 + 512), v267);
      v269 = v6 + 200;
      sub_24FF5CFA0(v266, v268);
      sub_24FF5F6DC(v268, 1, v267);
      if (v270)
      {
        sub_24FF5F7C0();
        v6 = v1009[98];
        v271 = v1009[97];
        v272 = v1009[96];
        v273 = v1009[95];
        v31 = v1009[63];
        sub_24FF5F71C(v274, v275, v276, v277, v278, v279, v280, v281, v879, v888, v898, v910, v923, v940, v283, v282, v1009);

        v284 = sub_24FF37EE0(v31, &qword_27F3B42C8, &qword_24FF641A0);
        sub_24FF5F7DC(v284, v285, v286, v287, v288, v289, v290, v291, v883, v893, v904, v916, v930, v947, v969, v996, v1016);
        sub_24FF5F840();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        *v293 = v292 - 2;
        *(v293 + 8) = v181;
        *(v293 + 16) = v182;
        swift_willThrow();
        v294 = *(v272 + 8);
        v294(v271, v273);
        v295 = sub_24FF5F54C();
        v294(v295, v273);
        sub_24FF5F03C();
        sub_24FF58FDC(v268, v296);
        (*(v269 + 8))(v970, v266);
        v294(v997, v273);
        goto LABEL_149;
      }

      sub_24FF37EE0(*(v6 + 504), &qword_27F3B42C8, &qword_24FF641A0);
      v513 = sub_24FF61878();
      if ((v513 & 1) == 0)
      {
        v679 = *(v6 + 1048);
        v958 = *(v6 + 1040);
        v984 = *(v6 + 1056);
        sub_24FF5F458();
        sub_24FF5FA68();
        v681 = *(v680 + 768);
        sub_24FF5F4C8();

        sub_24FF5F7DC(v682, v683, v684, v685, v686, v687, v688, v689, v879, v888, v898, v910, v923, v958, v984, v987, v1009);
        sub_24FF5F1E0();
        sub_24FF62098();
        sub_24FF5F7B4();
        sub_24FF5F5FC();
        sub_24FF5F858();
        sub_24FF5F054();
        v31 = sub_24FF5E51C(v690, v691, MEMORY[0x277CC9628]);
        v692 = sub_24FF62148();
        MEMORY[0x25305C910](v692);

        sub_24FF5F858();
        sub_24FF62148();
        sub_24FF5F974();

        sub_24FF4EC68();
        sub_24FF5F44C();
        v693 = swift_allocError();
        sub_24FF5F274(v693, v694);
        swift_willThrow();
        v695 = *(v681 + 8);
        (v695)(v179, v268);
        v696 = sub_24FF5FA50();
        v695(v696);
        sub_24FF5F03C();
        v697 = sub_24FF5F54C();
        sub_24FF58FDC(v697, v698);
        v699 = (*(v679 + 8))(v985, v959);
        v707 = sub_24FF5FA08(v699, v700, v701, v702, v703, v704, v705, v706, v887, v897, v909, v922, v939, v959, v985, v1005);
        v695(v707);
        goto LABEL_149;
      }

      v514 = *(v6 + 208);
      if (!*(v514 + 16))
      {
        v801 = *(v6 + 1056);
        v802 = *(v6 + 1048);
        v803 = *(v6 + 1040);
        v6 = v1009[125];
        v986 = v801;
        v1008 = v1009[122];
        sub_24FF5FA68();
        v805 = *(v804 + 768);
        sub_24FF5F4C8();

        sub_24FF4EC68();
        sub_24FF5F44C();
        swift_allocError();
        sub_24FF5F1B8();
        *v806 = v807;
        v806[1] = 0x800000024FF67800;
        sub_24FF426C0(v808, v806);
        v809 = *(v805 + 8);
        (v809)(v179, v268);
        v810 = sub_24FF5FA50();
        v809(v810);
        sub_24FF5F03C();
        v811 = sub_24FF5F54C();
        sub_24FF58FDC(v811, v812);
        v813 = (*(v802 + 8))(v986, v803);
        v821 = sub_24FF5FA08(v813, v814, v815, v816, v817, v818, v819, v820, v879, v888, v898, v910, v923, v940, v986, v1008);
        v809(v821);
        goto LABEL_149;
      }

      v515 = *(v6 + 424);
      v516 = *(v6 + 408);
      sub_24FF5FAF0();
      v521 = *(v514 + v517 + *(v518 + 72) * v519 + *(v520 + 20));

      v522 = sub_24FF5F828();
      sub_24FF4CC34(v522, v523, v521, v524);

      sub_24FF5F598(v516);
      if (v247)
      {
        v525 = *(v6 + 1048);
        v979 = *(v6 + 1040);
        v1001 = *(v6 + 1056);
        v954 = *(v6 + 1000);
        v526 = *(v6 + 976);
        v527 = *(v6 + 784);
        v528 = *(v6 + 768);
        sub_24FF5F220();
        v31 = *(v529 + 408);
        sub_24FF5F71C(v530, v531, v532, v533, v534, v535, v536, v537, v879, v888, v898, v910, v923, v954, v979, v1001, v1009);

        sub_24FF37EE0(v31, &qword_27F3B43C8, &qword_24FF63DF8);
        sub_24FF5F1E0();
        sub_24FF62098();

        sub_24FF5F260();
        v1028 = (v539 + 4);
        v1029 = v538;
        v540 = sub_24FF5F828();
        MEMORY[0x25305C910](v540);

        sub_24FF4EC68();
        sub_24FF5F44C();
        v541 = swift_allocError();
        sub_24FF5F274(v541, v542);
        swift_willThrow();
        v543 = *(v528 + 8);
        v544 = sub_24FF5FA38();
        v543(v544);
        (v543)(v527, v6);
        sub_24FF5F03C();
        sub_24FF58FDC(v955, v545);
        (*(v525 + 8))(v1002, v980);
        v546 = v6;
        v6 = v1022;
        (v543)(v526, v546);
        goto LABEL_149;
      }

      sub_24FF5F110();
      sub_24FF57D68();

      v822 = sub_24FF61BA8();
      sub_24FF62008();
      sub_24FF5F8E4();

      if (sub_24FF5FBE4())
      {
        sub_24FF42770();
        v824 = sub_24FF5F6F4();
        v1028 = v824;
        *v515 = 136315138;
        v825 = sub_24FF5F828();
        v828 = sub_24FF5BBE0(v825, v826, v827);

        *(v515 + 4) = v828;
        sub_24FF5F778(&dword_24FF22000, v829, v830, "Array %s ended, completing the stream for the field");
        sub_24FF25A6C(v824);
        sub_24FF42670();
        sub_24FF4C84C();
      }

      else
      {
      }

      v843 = *(v6 + 1000);
      v844 = *(v6 + 976);
      v845 = *(v6 + 768);
      v846 = *(v6 + 760);
      v847 = *(v6 + 440);
      *(v6 + 248) = 0;
      sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
      sub_24FF61F88();
      sub_24FF5F230();
      sub_24FF58FDC(v847, v848);
      v849 = *(v845 + 8);
      v850 = sub_24FF5F944();
      v849(v850);
      v851 = sub_24FF5FA44();
      v849(v851);
      sub_24FF5F03C();
      sub_24FF58FDC(v843, v852);
      (v849)(v844, v846);
      goto LABEL_167;
    default:
      v3 = *(v49 + 32);
      sub_24FF5F6A8();
      (v3)();
      if (*(*(v6 + 192) + 16))
      {
LABEL_43:
        sub_24FF5F17C();
        sub_24FF5F220();

        sub_24FF5F7DC(v153, v154, v155, v156, v157, v158, v159, v160, v879, v888, v898, v910, v923, v940, v960, v987, v1009);
        sub_24FF5F1E0();
        sub_24FF62098();
        sub_24FF5F7B4();
        sub_24FF5F858();

        v162 = MEMORY[0x25305C9D0](v161, v6);
        v164 = v163;

        MEMORY[0x25305C910](v162, v164);

        v165 = v1029;
        sub_24FF4EC68();
        sub_24FF5F44C();
        v31 = swift_allocError();
        *v166 = v1028;
        v166[1] = v165;
        v10 = 0x280B15000uLL;
        sub_24FF426C0(v31, v166);
        v167 = sub_24FF5F628();
        v6 = v1010;
        v168(v167);
        sub_24FF5F03C();
        sub_24FF58FDC(v35, v169);
        (*(v3 + 8))(v991, v965);
        goto LABEL_150;
      }

      v953 = v3;
      v420 = *(v6 + 960);
      v421 = *(v6 + 952);
      v422 = *(v6 + 768);
      v423 = *(v6 + 760);
      v424 = *(v422 + 16);
      *(v6 + 1088) = v424;
      *(v6 + 1096) = (v422 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v424(v421, v420, v423);
      v425 = sub_24FF61BA8();
      sub_24FF62008();
      sub_24FF5F968();
      v427 = os_log_type_enabled(v425, v426);
      v428 = *(v6 + 768);
      v976 = v424;
      if (v427)
      {
        v429 = sub_24FF42770();
        v1028 = sub_24FF4CA88();
        *v429 = 136315138;
        sub_24FF5F054();
        sub_24FF5E51C(v430, v431, MEMORY[0x277CC9628]);
        sub_24FF62148();
        sub_24FF5FA7C();
        v432 = *(v428 + 8);
        v433 = sub_24FF5F740();
        v432(v433);
        v434 = sub_24FF5BBE0(v424, v6, &v1028);
        sub_24FF5F54C();

        *(v429 + 4) = v434;
        sub_24FF5F4E4();
        _os_log_impl(v435, v436, v437, v438, v439, 0xCu);
        sub_24FF5F654();
        sub_24FF42670();
      }

      else
      {

        v432 = *(v428 + 8);
        v592 = sub_24FF5F740();
        v432(v592);
      }

      *(v6 + 1104) = v432;
      v424(*(v6 + 944), *(v6 + 960), *(v6 + 760));
      v593 = *(v6 + 192);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v853 = sub_24FF4C6AC();
        v593 = sub_24FF4B31C(v853, v854, v855, v593);
      }

      v595 = *(v593 + 2);
      v594 = *(v593 + 3);
      if (v595 >= v594 >> 1)
      {
        v856 = sub_24FF5F8F0(v594);
        v593 = sub_24FF4B31C(v856, v595 + 1, 1, v593);
      }

      v1025 = *(v6 + 1072);
      v937 = *(v6 + 960);
      v596 = *(v6 + 760);
      v597 = *(v6 + 752);
      v598 = v6;
      v599 = *(v6 + 648);
      v600 = v598[33];
      *(v593 + 2) = v595 + 1;
      sub_24FF5F76C();
      v953(&v593[v601 + *(v602 + 72) * v595]);
      v598[24] = v593;
      sub_24FF61B58();
      sub_24FF5694C();
      v604 = v603;

      v976(v597, v937, v596);
      *(v597 + *(v599 + 20)) = v604;
      v598[139] = *(v600 + v1025);
      goto LABEL_155;
  }
}