void sub_29D8E64D0(void *a1, uint64_t a2, uint64_t a3, id a4)
{
  ObjectType = swift_getObjectType();
  if (qword_2A17B0D68 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    sub_29D9334A8();
    sub_29D9334A8();
    sub_29D9334A8();
    v7 = swift_allocObject();
    v7[2] = a3;
    v7[3] = a4;
    v7[4] = ObjectType;

    v8 = sub_29D939D28();

    v42 = sub_29D8E82CC;
    v43 = v7;
    aBlock = MEMORY[0x29EDCA5F8];
    v39 = 1107296256;
    v40 = sub_29D799960;
    v41 = &unk_2A244D970;
    v9 = _Block_copy(&aBlock);

    v10 = objc_opt_self();
    v11 = [v10 actionWithTitle:v8 style:0 handler:{v9, 0xE000000000000000}];
    _Block_release(v9);

    v12 = v11;
    sub_29D9334A8();
    v13 = swift_allocObject();
    v13[2] = a3;
    v13[3] = a4;
    v13[4] = ObjectType;

    v14 = sub_29D939D28();

    v42 = sub_29D8E8308;
    v43 = v13;
    aBlock = MEMORY[0x29EDCA5F8];
    v39 = 1107296256;
    v40 = sub_29D799960;
    v41 = &unk_2A244D9C0;
    v15 = _Block_copy(&aBlock);

    v16 = [v10 actionWithTitle:v14 style:1 handler:{v15, 0xE000000000000000}];
    _Block_release(v15);

    v17 = qword_2A1A25718;
    ObjectType = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_29D937898();
    sub_29D69C6C0(v18, qword_2A1A2C008);
    v19 = sub_29D937878();
    v20 = sub_29D93A2A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136446722;
      v23 = sub_29D93AF08();
      v25 = sub_29D6C2364(v23, v24, &aBlock);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_29D6C2364(0xD000000000000041, 0x800000029D96D8A0, &aBlock);
      *(v21 + 22) = 2080;
      v26 = sub_29D939DA8();
      v28 = sub_29D6C2364(v26, v27, &aBlock);

      *(v21 + 24) = v28;
      _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s.%{public}s]: Showing warning for %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v22, -1, -1);
      MEMORY[0x29ED6BE30](v21, -1, -1);
    }

    a3 = MEMORY[0x29EDCA170];
    sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D941B10;
    *(inited + 32) = ObjectType;
    *(inited + 40) = v12;
    a4 = v12;
    v30 = sub_29D939D28();
    v31 = sub_29D939D28();

    v32 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

    if ((inited & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x29ED6AE30](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v33 = *(inited + 32);
    }

    v34 = v33;
    [v32 addAction_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v35 = *(inited + 40);
      goto LABEL_12;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
  }

  v35 = MEMORY[0x29ED6AE30](1, inited);
LABEL_12:
  v36 = v35;
  [v32 addAction_];

  swift_setDeallocating();
  swift_arrayDestroy();
  [v32 setPreferredAction_];
  [a1 presentViewController:v32 animated:1 completion:0];
}

void sub_29D8E6B8C(int a1, void *a2, uint64_t a3)
{
  v67 = a2;
  ObjectType = swift_getObjectType();
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v62 - v8;
  v10 = sub_29D9346B8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0x2A17B0000uLL;
  v70 = a1;
  v68 = a3;
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (qword_2A17B0D68 == -1)
      {
        goto LABEL_17;
      }
    }

    else if (qword_2A17B0D68 == -1)
    {
      goto LABEL_17;
    }

LABEL_45:
    swift_once();
    goto LABEL_17;
  }

  if (a1 == 2)
  {
    v66 = ObjectType;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v62 = sub_29D9334A8();
    v63 = v23;
    v69 = sub_29D9334A8();
    v18 = v24;
    v19 = sub_29D9334A8();
    v21 = v25;
    v22 = MEMORY[0x29EDC1720];
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v66 = ObjectType;
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v62 = sub_29D9334A8();
    v63 = v16;
    v69 = sub_29D9334A8();
    v18 = v17;
    v19 = sub_29D9334A8();
    v21 = v20;
    v22 = MEMORY[0x29EDC1728];
LABEL_13:
    (*(v11 + 104))(v14, *v22, v10);
    sub_29D934698();
    (*(v11 + 8))(v14, v10);
    v26 = v18;
    v27 = sub_29D8E75EC(v19, v21, v9);

    v28 = v9;
    v29 = v63;
    sub_29D742868(v28, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
    v15 = 0x2A17B0000;
    goto LABEL_18;
  }

  if (qword_2A17B0D68 != -1)
  {
    goto LABEL_45;
  }

LABEL_17:
  v69 = sub_29D9334A8();
  v26 = v30;
  v27 = 0;
  v62 = 0;
  v29 = 0;
LABEL_18:
  if (*(v15 + 3432) != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    sub_29D9334A8();
    v31 = sub_29D939D28();

    v32 = [objc_opt_self() actionWithTitle:v31 style:1 handler:0];

    sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_29D940030;
    *(v33 + 32) = v32;
    v73 = v33;
    if (v27)
    {
      v34 = v27;
      v35 = v32;
      v36 = v34;
      MEMORY[0x29ED6A300]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D939F78();
      }

      sub_29D939FA8();
      v37 = v73;
    }

    else
    {
      v37 = v33;
      v36 = v32;
    }

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v38 = sub_29D937898();
    sub_29D69C6C0(v38, qword_2A1A2C008);
    v39 = sub_29D937878();
    v40 = sub_29D93A2A8();
    v41 = os_log_type_enabled(v39, v40);
    v65 = v32;
    v66 = v27;
    v64 = v36;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v63 = v29;
      v43 = v42;
      v44 = swift_slowAlloc();
      v72 = v44;
      *v43 = 136446722;
      v45 = sub_29D93AF08();
      v47 = v26;
      v48 = sub_29D6C2364(v45, v46, &v72);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2082;
      *(v43 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D966800, &v72);
      *(v43 + 22) = 2082;
      v71 = v70;
      v49 = sub_29D939DA8();
      v51 = sub_29D6C2364(v49, v50, &v72);

      *(v43 + 24) = v51;
      v26 = v47;
      _os_log_impl(&dword_29D677000, v39, v40, "[%{public}s.%{public}s]: Showing blocking alert due to reason %{public}s", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v44, -1, -1);
      v52 = v43;
      v29 = v63;
      MEMORY[0x29ED6BE30](v52, -1, -1);
    }

    if (v29)
    {
      v29 = sub_29D939D28();
    }

    v53 = sub_29D939D28();

    v54 = [objc_opt_self() alertControllerWithTitle:v29 message:v53 preferredStyle:1];

    if (v37 >> 62)
    {
      break;
    }

    v29 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_44;
    }

LABEL_32:
    v55 = 0;
    v27 = &selRef_initWithResultsHandler_;
    while (1)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x29ED6AE30](v55, v37);
      }

      else
      {
        if (v55 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v56 = *(v37 + 8 * v55 + 32);
      }

      v26 = v56;
      v57 = (v55 + 1);
      if (__OFADD__(v55, 1))
      {
        break;
      }

      [v54 addAction_];

      ++v55;
      if (v57 == v29)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v29 = sub_29D93A928();
  if (v29)
  {
    goto LABEL_32;
  }

LABEL_44:

  v58 = v64;
  [v54 setPreferredAction_];
  v59 = v67;
  v60 = swift_getObjectType();
  [v59 presentViewController:v54 animated:1 completion:0];

  v61 = (*(v68 + 8))(v60);
  sub_29D8E5270(v61, 1, v70);
}

id sub_29D8E75EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v8);
  v10 = aBlock - v9;
  sub_29D6D962C(a3, aBlock - v9);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_29D8C8D38(v10, v12 + v11);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v13 = sub_29D939D28();
  aBlock[4] = sub_29D8E8334;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D799960;
  aBlock[3] = &unk_2A244DA10;
  v14 = _Block_copy(aBlock);

  v15 = [objc_opt_self() actionWithTitle:v13 style:0 handler:v14];
  _Block_release(v14);

  return v15;
}

uint64_t sub_29D8E77EC()
{
  v0 = sub_29D9346B8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC1718], v0);
  sub_29D9346A8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_29D8E78D0(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v9 = sub_29D937898();
  sub_29D69C6C0(v9, qword_2A1A2C008);
  v10 = sub_29D937878();
  v11 = sub_29D93A2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446466;
    v14 = sub_29D93AF08();
    v16 = sub_29D6C2364(v14, v15, &v18);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29D6C2364(0xD000000000000041, 0x800000029D96D8A0, &v18);
    _os_log_impl(&dword_29D677000, v10, v11, a5, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);
  }

  return a2(a6, 0);
}

void sub_29D8E7A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v6 = MEMORY[0x2A1C7C4A8](v4, v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v36 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v36 - v14;
  v16 = sub_29D9336F8();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D962C(a2, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_29D742868(v15, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    v21 = [objc_opt_self() defaultWorkspace];
    if (v21)
    {
      v22 = v21;
      v23 = sub_29D9336B8();
      [v22 openSensitiveURL:v23 withOptions:0];

      (*(v17 + 8))(v20, v16);
      return;
    }

    (*(v17 + 8))(v20, v16);
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v24 = sub_29D937898();
  sub_29D69C6C0(v24, qword_2A1A2C008);
  sub_29D6D962C(a2, v12);
  v25 = sub_29D937878();
  v26 = sub_29D93A288();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315650;
    v29 = sub_29D93AF08();
    v31 = sub_29D6C2364(v29, v30, &v37);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D969840, &v37);
    *(v27 + 22) = 2080;
    sub_29D6D962C(v12, v8);
    v32 = sub_29D939DA8();
    v34 = v33;
    sub_29D742868(v12, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
    v35 = sub_29D6C2364(v32, v34, &v37);

    *(v27 + 24) = v35;
    _os_log_impl(&dword_29D677000, v25, v26, "[%s.%s]: Unable to create alert action from url %s", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v28, -1, -1);
    MEMORY[0x29ED6BE30](v27, -1, -1);
  }

  else
  {

    sub_29D742868(v12, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
  }
}

void sub_29D8E7F70(int a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2C008);
    v6 = a2;
    v7 = sub_29D937878();
    v8 = sub_29D93A288();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446466;
      v11 = sub_29D93AF08();
      v13 = sub_29D6C2364(v11, v12, &v18);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      v14 = a2;
      sub_29D6A0CD0();
      v15 = sub_29D939DA8();
      v17 = sub_29D6C2364(v15, v16, &v18);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s] error submitting event %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v10, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D8E81D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D8E81F0()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_29D8E4E50(v0 + v2, v4, v5);
}

void sub_29D8E8334(uint64_t a1)
{
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29D8E7A84(a1, v1 + v5, v6);
}

void sub_29D8E8400()
{
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v0 = sub_29D937898();
  sub_29D69C6C0(v0, qword_2A1A2C008);
  v1 = sub_29D937878();
  v2 = sub_29D93A268();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446466;
    v5 = sub_29D93AF08();
    v7 = sub_29D6C2364(v5, v6, &v8);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_29D6C2364(0xD000000000000025, 0x800000029D966850, &v8);
    _os_log_impl(&dword_29D677000, v1, v2, "[%{public}s.%{public}s]: User dismissed modal view", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  sub_29D8E5640(0, 0, 0, 0);
}

void sub_29D8E8640(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v6 = a1;
  v7 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = MEMORY[0x29EDCA1A0];
    goto LABEL_6;
  }

  if (!sub_29D93A928())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29D872D84(0);
  v8 = sub_29D93A9E8();
LABEL_6:
  if (sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8) == MEMORY[0x29EDC99B0])
  {
    if (v7)
    {

      sub_29D935E88();
      sub_29D93A8D8();
      sub_29D69567C(0, a2, a3);
      sub_29D6E5B70(a4, a2, a3);
      sub_29D93A118();
      v6 = v46;
      v13 = v47;
      v14 = v48;
      v15 = v49;
      v16 = v50;
    }

    else
    {
      v35 = -1 << *(v6 + 32);
      v13 = v6 + 56;
      v14 = ~v35;
      v36 = -v35;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v16 = v37 & *(v6 + 56);

      sub_29D935E88();
      v15 = 0;
    }

    while ((v6 & 0x8000000000000000) == 0)
    {
      if (v16)
      {
        v38 = v15;
        goto LABEL_44;
      }

      v41 = v15;
      do
      {
        v38 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_60;
        }

        if (v38 >= ((v14 + 64) >> 6))
        {
          v42 = v6;
          goto LABEL_56;
        }

        v16 = *(v13 + 8 * v38);
        ++v41;
      }

      while (!v16);
      v15 = v38;
LABEL_44:
      v39 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v40 = *(*(v6 + 48) + ((v38 << 9) | (8 * v39)));
LABEL_45:
      sub_29D8EB2A8(v40);
    }

    if (sub_29D93A958())
    {
      sub_29D69567C(0, a2, a3);
      swift_dynamicCast();
      v40 = v45;
      goto LABEL_45;
    }

    v42 = v6;
LABEL_56:
    sub_29D7AF2E8(v42);
LABEL_57:

    return;
  }

  v43 = a3;
  if (v7)
  {

    sub_29D935E88();
    sub_29D93A8D8();
    sub_29D69567C(0, a2, a3);
    sub_29D6E5B70(a4, a2, a3);
    sub_29D93A118();
    v6 = v46;
    v9 = v47;
    v10 = v48;
    v11 = v49;
    v12 = v50;
  }

  else
  {
    v17 = -1 << *(v6 + 32);
    v9 = v6 + 56;
    v10 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v12 = v19 & *(v6 + 56);

    sub_29D935E88();
    v11 = 0;
  }

  v20 = (v10 + 64) >> 6;
  v21 = v8 + 56;
  while (v6 < 0)
  {
    if (!sub_29D93A958())
    {
LABEL_38:
      sub_29D7AF2E8(v6);
      goto LABEL_57;
    }

    sub_29D69567C(0, a2, v43);
    swift_dynamicCast();
    v24 = v45;
LABEL_29:
    v27 = sub_29D93A6F8();
    v28 = -1 << *(v8 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v21 + 8 * (v29 >> 6))) != 0)
    {
      v22 = __clz(__rbit64((-1 << v29) & ~*(v21 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = 0;
      v32 = (63 - v28) >> 6;
      do
      {
        if (++v30 == v32 && (v31 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v33 = v30 == v32;
        if (v30 == v32)
        {
          v30 = 0;
        }

        v31 |= v33;
        v34 = *(v21 + 8 * v30);
      }

      while (v34 == -1);
      v22 = __clz(__rbit64(~v34)) + (v30 << 6);
    }

    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v8 + 48) + 8 * v22) = v24;
    ++*(v8 + 16);
  }

  if (v12)
  {
    v23 = v11;
LABEL_28:
    v26 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v45 = *(*(v6 + 48) + ((v23 << 9) | (8 * v26)));
    v24 = v45;
    goto LABEL_29;
  }

  v25 = v11;
  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_38;
    }

    v12 = *(v9 + 8 * v23);
    ++v25;
    if (v12)
    {
      v11 = v23;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_29D8E8B1C()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  result = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA460]);
  *(v0 + 32) = result;
  qword_2A1A2BD20 = v0;
  return result;
}

uint64_t sub_29D8E8BAC(uint64_t a1)
{
  v3 = sub_29D9341E8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v38 = v6;
  v39 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3178(0);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v40 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D934148();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29D934178();
  v14 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35, v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 16);
  v45 = v1;
  v43 = v3;
  v34 = v18;
  v18((v1 + OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_context), a1, v3);
  v44 = a1;
  v33[1] = sub_29D9341B8();
  sub_29D7CA0B0(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v19 = sub_29D933F58();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29D93DDB0;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x29EDC3780], v19);
  if (qword_2A1A22C90 != -1)
  {
    swift_once();
  }

  if (qword_2A1A2BD20 >> 62)
  {
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    sub_29D935E88();
    sub_29D93AB48();
  }

  else
  {
    sub_29D935E88();
    sub_29D93AD88();
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
  }

  (*(v36 + 104))(v13, *MEMORY[0x29EDC3898], v37);
  sub_29D934158();
  v23 = v45;
  (*(v14 + 32))(v45 + OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_domain, v17, v35);
  v24 = v39;
  v26 = v43;
  v25 = v44;
  v34(v39, v44, v43);
  v27 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v28 = swift_allocObject();
  (*(v4 + 32))(v28 + v27, v24, v26);
  sub_29D6C320C(0);
  sub_29D8EA570(&qword_2A1A24AE0, sub_29D6C320C, MEMORY[0x29EDB8A00]);
  v29 = v40;
  sub_29D938378();
  sub_29D8EA570(&qword_2A1A24A20, sub_29D6C3178, MEMORY[0x29EDB8AE8]);
  v30 = v42;
  v31 = sub_29D938418();
  (*(v4 + 8))(v25, v26);
  (*(v41 + 8))(v29, v30);
  *(v23 + OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_publisher) = v31;
  return v23;
}

uint64_t sub_29D8E9178@<X0>(uint64_t *a2@<X8>)
{
  sub_29D934188();
  sub_29D693E2C(v9, v9[3]);
  v3 = sub_29D934118();
  v4 = sub_29D8E922C();
  v6 = sub_29D73BA9C(v4, v5);

  sub_29D69417C(v9);
  v7 = sub_29D8E96E8(v6);

  *a2 = v7;
  return result;
}

uint64_t sub_29D8E922C()
{
  v0 = sub_29D937898();
  v39 = *(v0 - 8);
  v40 = v0;
  MEMORY[0x2A1C7C4A8](v0, v1);
  v42 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29D9342F8();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v38 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  v41 = &v38 - v14;
  v15 = sub_29D934358();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69BECC(0);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9341D8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v41;
    (*(v4 + 32))(v41, v23, v3);
    sub_29D934D28();
    v25 = *(v4 + 16);
    v25(v12, v24, v3);
    v26 = sub_29D937878();
    v27 = sub_29D93A288();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_29D6C2364(0xD000000000000010, 0x800000029D96DC70, &v43);
      *(v28 + 12) = 2082;
      v25(v8, v12, v3);
      v30 = sub_29D939DA8();
      v32 = v31;
      v33 = *(v4 + 8);
      v33(v12, v3);
      v34 = sub_29D6C2364(v30, v32, &v43);

      *(v28 + 14) = v34;
      _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s] Failed to get country code: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v29, -1, -1);
      MEMORY[0x29ED6BE30](v28, -1, -1);

      (*(v39 + 8))(v42, v40);
      v33(v41, v3);
    }

    else
    {

      v37 = *(v4 + 8);
      v37(v12, v3);
      (*(v39 + 8))(v42, v40);
      v37(v41, v3);
    }

    return 0;
  }

  else
  {
    (*(v16 + 32))(v19, v23, v15);
    v35 = sub_29D934348();
    (*(v16 + 8))(v19, v15);
    return v35;
  }
}

uint64_t sub_29D8E96E8(uint64_t a1)
{
  v3 = sub_29D9341E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  sub_29D6C3390(0);
  v8 = v7;
  v23 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3488(0);
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v24 = v1;
  LOBYTE(a1) = sub_29D934198();
  sub_29D6B7D8C(0);
  v27 = v16;
  sub_29D8EA570(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  if (a1)
  {
    v17 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D8EA570(&qword_2A1A224E0, sub_29D6C3390, MEMORY[0x29EDB8940]);
    v17 = sub_29D938418();
    (*(v23 + 8))(v11, v8);
  }

  v28 = v17;
  (*(v4 + 16))(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_29D6B7D8C(0);
  sub_29D6B7370(0, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
  sub_29D938468();

  sub_29D8EA570(&qword_2A1A22618, sub_29D6C3488, MEMORY[0x29EDB8908]);
  v20 = v26;
  v21 = sub_29D938418();
  (*(v25 + 8))(v15, v20);
  return v21;
}

uint64_t sub_29D8E9AA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v47 = a2;
  v57 = a4;
  v58 = a1;
  v4 = sub_29D9349C8();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v49 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_29D933F58();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v45 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10, v12);
  v59 = &v43[-v13];
  v46 = sub_29D935108();
  v44 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46, v14);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_29D935788();
  v55 = *(v17 - 8);
  v56 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v20 = &v43[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for HypertensionNotificationsSettingsCellViewController(0);
  v21 = sub_29D933FF8();
  v52 = v22;
  v53 = v21;
  v54 = v23;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9350E8();
  sub_29D9334A8();
  sub_29D935758();
  (*(v8 + 104))(v59, *MEMORY[0x29EDC3780], v7);
  v24 = sub_29D9341B8();
  v25 = sub_29D935778();
  v27 = v26;
  v28 = v25;
  (*(v8 + 16))(v45, v59, v7);
  sub_29D935E88();
  sub_29D6AA230(v28, v27);
  v58 = v24;
  v29 = v28;
  v30 = v57;
  sub_29D9340A8();
  sub_29D935768();
  sub_29D9350F8();
  (*(v44 + 8))(v16, v46);
  sub_29D934098();
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v31 = v7;
  v32 = v8;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = sub_29D934298();
  *(inited + 40) = v34;
  sub_29D6E35C8(inited);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  v35 = v30;
  sub_29D9340D8();
  v36 = v49;
  v37 = v50;
  v38 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x29EDC19C0], v51);
  sub_29D9349B8();
  (*(v37 + 8))(v36, v38);
  sub_29D9340E8();
  sub_29D934088();
  if (qword_2A1A22C90 != -1)
  {
    swift_once();
  }

  v39 = sub_29D935E88();
  v40 = sub_29D7AF540(v39);

  sub_29D8E8640(v40, &qword_2A1A24918, 0x29EDBAA68, &qword_2A17B4C40);

  sub_29D9340B8();

  sub_29D6AA284(v29, v27);
  (*(v32 + 8))(v59, v31);
  (*(v55 + 8))(v20, v56);
  v41 = sub_29D9340F8();
  return (*(*(v41 - 8) + 56))(v35, 0, 1, v41);
}

uint64_t sub_29D8EA330()
{
  v1 = OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_context;
  v4 = sub_29D9341E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HypertensionNotificationsSettingsGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A22C78;
  if (!qword_2A1A22C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8EA484@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart50HypertensionNotificationsSettingsGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D8EA500@<X0>(uint64_t *a1@<X8>)
{
  sub_29D9341E8();

  return sub_29D8E9178(a1);
}

uint64_t sub_29D8EA570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D8EA5B8@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v70 = a1;
  v83 = a3;
  sub_29D6C36A4(0);
  v85 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v84 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D934148();
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v78 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D934178();
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v82 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D9341E8();
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v79 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D937178();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D937158();
  v69 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D9371A8();
  v26 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  v74 = v30;
  v32 = MEMORY[0x2A1C7C4A8](v30, v31);
  v86 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v36 = &v69 - v35;
  v75 = a2;
  v76 = sub_29D8EB124();
  v71 = v37;
  v38 = sub_29D9340F8();
  v39 = *(*(v38 - 8) + 56);
  v77 = v36;
  v39(v36, 1, 1, v38);
  (*(v26 + 16))(v29, v70, v25);
  if ((*(v26 + 88))(v29, v25) != *MEMORY[0x29EDC2D70])
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v55 = sub_29D937898();
    sub_29D69C6C0(v55, qword_2A1A2C008);
    v56 = sub_29D937878();
    v57 = sub_29D93A2A8();
    v58 = os_log_type_enabled(v56, v57);
    v52 = v77;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v87[0] = v60;
      *v59 = 136315394;
      *(v59 + 4) = sub_29D6C2364(0xD000000000000010, 0x800000029D96DC70, v87);
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D96DC90, v87);
      _os_log_impl(&dword_29D677000, v56, v57, "[%s.%s] Not creating hypertension notifications settings feed item.", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v60, -1, -1);
      MEMORY[0x29ED6BE30](v59, -1, -1);
    }

    v51 = v79;
    (*(v26 + 8))(v29, v25);
    goto LABEL_14;
  }

  (*(v26 + 96))(v29, v25);
  v40 = v69;
  (*(v69 + 32))(v24, v29, v21);
  sub_29D937108();
  v41 = sub_29D937188();
  (*(v17 + 8))(v20, v16);
  v42 = [v41 areAllRequirementsSatisfied];

  if (!v42)
  {
    (*(v40 + 8))(v24, v21);
    v51 = v79;
    v52 = v77;
LABEL_14:
    v54 = v75;
    goto LABEL_15;
  }

  v70 = v24;
  v43 = v76;
  v44 = v71;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v45 = sub_29D937898();
  sub_29D69C6C0(v45, qword_2A1A2C008);
  v46 = sub_29D937878();
  v47 = sub_29D93A2A8();
  v48 = v40;
  if (os_log_type_enabled(v46, v47))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v87[0] = v50;
    *v49 = 136315394;
    *(v49 + 4) = sub_29D6C2364(0xD000000000000010, 0x800000029D96DC70, v87);
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D96DC90, v87);
    _os_log_impl(&dword_29D677000, v46, v47, "[%s.%s] Creating hypertension notifications settings feed item", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v50, -1, -1);
    MEMORY[0x29ED6BE30](v49, -1, -1);
  }

  v51 = v79;
  v52 = v77;
  type metadata accessor for HypertensionNotificationsSettingsGeneratorPipeline(0);
  v53 = v86;
  v54 = v75;
  sub_29D8E9AA8(v75, v43, v44, v86);
  (*(v48 + 8))(v70, v21);
  sub_29D754518(v52);
  sub_29D6C37D4(v53, v52);
LABEL_15:
  (*(v72 + 16))(v51, v54, v73);
  sub_29D9341B8();
  sub_29D7CA0B0(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v61 = sub_29D933F58();
  v62 = *(v61 - 8);
  v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_29D93DDB0;
  (*(v62 + 104))(v64 + v63, *MEMORY[0x29EDC3780], v61);
  if (qword_2A1A22C90 != -1)
  {
    swift_once();
  }

  if (qword_2A1A2BD20 >> 62)
  {
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    sub_29D935E88();
    sub_29D93AB48();
  }

  else
  {
    sub_29D935E88();
    sub_29D93AD88();
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
  }

  (*(v80 + 104))(v78, *MEMORY[0x29EDC3898], v81);
  sub_29D934158();
  sub_29D6D0B8C(v52, v86);
  sub_29D938338();
  v65 = sub_29D934228();
  v66 = MEMORY[0x29EDC38C8];
  v67 = v83;
  v83[3] = v65;
  v67[4] = v66;
  sub_29D693F78(v67);
  sub_29D8EA570(&qword_2A1A22360, sub_29D6C36A4, MEMORY[0x29EDB8AB8]);
  sub_29D934218();
  return sub_29D754518(v52);
}

uint64_t sub_29D8EB0A4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_29D8EA5B8(a1, v6, a2);
}

unint64_t sub_29D8EB124()
{
  v0 = sub_29D933A58();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9341B8();
  v6 = sub_29D933FA8();

  if (v6)
  {
    v7 = [v6 identifier];

    sub_29D933A38();
    v8 = sub_29D933A18();
    v10 = v9;
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v10 = 0xE800000000000000;
    v8 = 0x636974736F6E6761;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_29D93AA18();

  v12 = 0xD000000000000029;
  v13 = 0x800000029D96DD60;
  MEMORY[0x29ED6A240](v8, v10);

  return v12;
}

void sub_29D8EB2A8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29D93A6F8();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_29D93A708();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

id sub_29D8EB3E8(unsigned __int8 a1)
{
  v2 = *(v1 + 16);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = objc_allocWithZone(type metadata accessor for BloodPressureJournalHypertensiveCrisisViewController(0));

      return sub_29D82F1F4(v7);
    }

    v11 = objc_allocWithZone(type metadata accessor for BloodPressureJournalLoggingBestPracticesViewController(0));
    v12 = &v11[qword_2A17B22E8];
    *v12 = 0;
    v12[1] = 0;
    *&v11[qword_2A17B22F0] = v2;
    v11[qword_2A17B22F8] = 1;
    *&v11[qword_2A17B2300] = *(v2 + 24);

    v5 = 1;
  }

  else
  {
    if (a1)
    {
      v9 = objc_allocWithZone(type metadata accessor for BloodPressureJournalAddDataMainViewController(0));

      return sub_29D78B96C(v10);
    }

    v3 = objc_allocWithZone(type metadata accessor for BloodPressureJournalLoggingBestPracticesViewController(0));
    v4 = &v3[qword_2A17B22E8];
    *v4 = 0;
    v4[1] = 0;
    *&v3[qword_2A17B22F0] = v2;
    v3[qword_2A17B22F8] = 0;
    *&v3[qword_2A17B2300] = *(v2 + 24);

    v5 = 0;
  }

  return sub_29D81C20C(v5);
}

uint64_t sub_29D8EB548()
{

  return swift_deallocClassInstance();
}

id sub_29D8EB5AC()
{
  result = [objc_opt_self() systemFontOfSize:17.0 weight:*MEMORY[0x29EDC7700]];
  qword_2A17B7A00 = result;
  return result;
}

id sub_29D8EB5F8()
{
  result = [objc_opt_self() systemBackgroundColor];
  qword_2A17B7A08 = result;
  return result;
}

id sub_29D8EB634()
{
  if (qword_2A17B0C28 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17D0950;
  qword_2A17B7A10 = qword_2A17D0950;

  return v1;
}

id sub_29D8EB698()
{
  v1 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView);
  }

  else
  {
    v4 = sub_29D8EB6F8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D8EB6F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = [v0 tintColor];
  [v0 setBackgroundColor_];

  v3 = objc_opt_self();
  sub_29D6A0C58();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D941B10;
  v5 = [v0 heightAnchor];
  v6 = [v5 constraintEqualToConstant_];

  *(v4 + 32) = v6;
  v7 = [v0 widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  *(v4 + 40) = v8;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v9 = sub_29D939F18();

  [v3 activateConstraints_];

  return v0;
}

id sub_29D8EB8B8()
{
  v1 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel);
  }

  else
  {
    v4 = v0;
    if (qword_2A17B0D28 != -1)
    {
      swift_once();
    }

    sub_29D7513E4(*(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView_number));
    if (qword_2A17B0D20 != -1)
    {
      swift_once();
    }

    v5 = qword_2A17B7A08;
    if (qword_2A17B0D18 != -1)
    {
      swift_once();
    }

    v6 = qword_2A17B7A00;
    v7 = objc_allocWithZone(MEMORY[0x29EDC7B38]);
    v8 = v6;
    v9 = [v7 init];
    [v9 setTextColor_];
    v10 = sub_29D939D28();

    [v9 setText_];

    [v9 setFont_];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *(v0 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_29D8EBA80()
{
  v1 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    if (*(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView_title + 8))
    {
      sub_29D935E88();
      v5 = sub_29D939D28();
    }

    else
    {
      v5 = 0;
    }

    [v4 setText_];

    v6 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    [v4 setNumberOfLines_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_29D8EBBB8()
{
  v1 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_29D935E88();
    v5 = sub_29D939D28();

    [v4 setText_];

    v6 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    [v4 setNumberOfLines_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_29D8EBCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &v5[OBJC_IVAR____TtC5Heart16NumberedTextView_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView] = 0;
  *&v5[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel] = 0;
  *&v5[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel] = 0;
  *&v5[OBJC_IVAR____TtC5Heart16NumberedTextView_number] = a1;
  *v6 = a2;
  *(v6 + 1) = a3;
  v7 = &v5[OBJC_IVAR____TtC5Heart16NumberedTextView_details];
  *v7 = a4;
  *(v7 + 1) = a5;
  v10.receiver = v5;
  v10.super_class = type metadata accessor for NumberedTextView();
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D8EBE40();

  return v8;
}

double sub_29D8EBE40()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D8EB698();
  [v1 addSubview_];

  v3 = sub_29D8EB8B8();
  [v1 addSubview_];

  v4 = sub_29D8EBA80();
  [v1 addSubview_];

  v5 = sub_29D8EBBB8();
  [v1 addSubview_];

  v59 = objc_opt_self();
  sub_29D6A0C58();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D946510;
  v7 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView;
  v8 = [*&v1[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberBubbleView] leadingAnchor];
  v9 = [v1 &selRef_initWithLoggingCategory_healthDataSource_ + 1];
  v10 = [v8 constraintEqualToAnchor:v9 constant:12.0];

  *(v6 + 32) = v10;
  v11 = [*&v1[v7] topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintGreaterThanOrEqualToAnchor_];

  *(v6 + 40) = v13;
  v14 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel;
  v15 = [*&v1[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___numberLabel] centerYAnchor];
  v16 = [*&v1[v7] centerYAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v6 + 48) = v17;
  v18 = [*&v1[v14] centerXAnchor];
  v19 = [*&v1[v7] centerXAnchor];
  v20 = [v18 &selRef:v19 showAdaptively:? sender:? animated:? + 5];

  *(v6 + 56) = v20;
  v21 = [*&v1[v14] firstBaselineAnchor];
  v22 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel;
  v23 = [*&v1[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___titleLabel] firstBaselineAnchor];
  v24 = [v21 &selRef:v23 showAdaptively:? sender:? animated:? + 5];

  *(v6 + 64) = v24;
  v25 = [*&v1[v22] topAnchor];
  v26 = [v1 topAnchor];
  v27 = [v25 constraintGreaterThanOrEqualToAnchor_];

  *(v6 + 72) = v27;
  v28 = [*&v1[v22] leadingAnchor];
  v29 = [*&v1[v7] trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:6.0];

  *(v6 + 80) = v30;
  v31 = [*&v1[v22] trailingAnchor];
  v32 = [v1 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:-12.0];

  *(v6 + 88) = v33;
  v34 = OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel;
  v35 = [*&v1[OBJC_IVAR____TtC5Heart16NumberedTextView____lazy_storage___detailLabel] topAnchor];
  v36 = [*&v1[v22] bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:4.0];

  *(v6 + 96) = v37;
  v38 = [*&v1[v34] leadingAnchor];
  v39 = [*&v1[v22] leadingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v6 + 104) = v40;
  v41 = [*&v1[v34] trailingAnchor];
  v42 = [*&v1[v22] trailingAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v6 + 112) = v43;
  v44 = [*&v1[v34] bottomAnchor];
  v45 = [v1 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v6 + 120) = v46;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v47 = sub_29D939F18();

  [v59 activateConstraints_];

  v48 = *&v1[v22];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v49 = v48;
  v50 = sub_29D93A658();
  [v49 setFont_];

  v51 = *&v1[v34];
  v52 = sub_29D93A658();
  [v51 setFont_];

  sub_29D6B2AD0(0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_29D93F680;
  v54 = sub_29D937BC8();
  v55 = MEMORY[0x29EDC7870];
  *(v53 + 32) = v54;
  *(v53 + 40) = v55;
  v56 = sub_29D937968();
  v57 = MEMORY[0x29EDC77A0];
  *(v53 + 48) = v56;
  *(v53 + 56) = v57;
  sub_29D93A678();
  sub_29D936978();

  return result;
}

id sub_29D8EC5A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NumberedTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D8EC698()
{
  v0 = sub_29D8EBA80();
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v1 = sub_29D93A658();
  [v0 setFont_];

  v2 = sub_29D8EBBB8();
  v3 = sub_29D93A658();
  [v2 setFont_];
}

uint64_t sub_29D8EC7BC(uint64_t a1)
{
  v161 = a1;
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v177 = &v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_29D939D18();
  v183 = *(v169 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v169, v4);
  v179 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v153 - v8;
  v10 = sub_29D9376E8();
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v13 = v12;
  v14 = sub_29D934548();
  v15 = *(*(v14 - 8) + 72);
  v16 = *(v14 - 8);
  v17 = *(v16 + 80);
  v18 = (v17 + 32) & ~v17;
  v166 = 8 * v15;
  v162 = 7 * v15;
  v158 = v17;
  v160 = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29D943DD0;
  v159 = v18;
  v157 = v19;
  v20 = v19 + v18;
  sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v21 = qword_2A1A2C038;
  sub_29D9376B8();
  *v20 = sub_29D93A6A8();
  *(v20 + 8) = 0;
  v22 = *MEMORY[0x29EDC1608];
  v23 = *(v16 + 104);
  v174 = v16 + 104;
  v178 = v23;
  (v23)(v20, v22, v14);
  sub_29D939D08();
  v181 = v14;
  if (qword_2A1A242A8 != -1)
  {
    swift_once();
  }

  v24 = (v20 + v15);
  v25 = qword_2A1A2BE68;
  v182 = qword_2A1A2BE68;
  v26 = qword_2A1A2BE78;
  v180 = qword_2A1A2BE70;
  v27 = v183;
  v28 = *(v183 + 16);
  v173 = v183 + 16;
  v171 = v20;
  v172 = v28;
  v29 = v179;
  v28(v179, v9, v169);
  sub_29D935E88();
  v170 = v25;
  sub_29D933A98();
  v30 = sub_29D939D98();
  v31 = v27;
  v32 = v30;
  v34 = v33;
  v35 = *(v31 + 8);
  v183 = v31 + 8;
  v176 = v35;
  v36 = v169;
  v35(v9, v169);
  *v24 = v32;
  v24[1] = v34;
  (v178)(v20 + v15, *MEMORY[0x29EDC1610], v181);
  v167 = v15;
  v164 = (2 * v15);
  v37 = (v171 + 2 * v15);
  sub_29D939D08();
  v38 = v172;
  v172(v29, v9, v36);
  v175 = v26;
  sub_29D935E88();
  v170 = v170;
  sub_29D933A98();
  v39 = sub_29D939D98();
  v41 = v40;
  v176(v9, v36);
  *v37 = v39;
  v37[1] = v41;
  v37[2] = 0;
  LODWORD(v168) = *MEMORY[0x29EDC15D0];
  v178(v37);
  v165 = &v164[v15];
  v42 = v171;
  v43 = &v164[v15 + v171];
  sub_29D939D08();
  v44 = v179;
  v38(v179, v9, v36);
  sub_29D935E88();
  v156 = v170;
  sub_29D933A98();
  v45 = v44;
  v46 = sub_29D939D98();
  v48 = v47;
  v49 = v36;
  v176(v9, v36);
  *v43 = v46;
  *(v43 + 1) = v48;
  v43[16] = 0;
  LODWORD(v170) = *MEMORY[0x29EDC1630];
  v178(v43);
  v50 = v167;
  v163 = 4 * v167;
  v51 = (v42 + 4 * v167);
  sub_29D939D08();
  v172(v45, v9, v36);
  sub_29D935E88();
  v155 = v156;
  sub_29D933A98();
  v52 = sub_29D939D98();
  v54 = v53;
  v55 = v176;
  v176(v9, v49);
  *v51 = v52;
  v51[1] = v54;
  v51[2] = 0;
  v56 = v178;
  (v178)(v51, v168, v181);
  v156 = (v163 + v50);
  v57 = (v171 + v163 + v50);
  sub_29D939D08();
  v172(v179, v9, v49);
  sub_29D935E88();
  v154 = v155;
  sub_29D933A98();
  v58 = sub_29D939D98();
  v60 = v59;
  v55(v9, v49);
  *v57 = v58;
  *(v57 + 1) = v60;
  v57[16] = 0;
  v61 = v57;
  v62 = v170;
  v56(v61, v170, v181);
  v155 = (2 * v165);
  v63 = (v171 + 2 * v165);
  sub_29D939D08();
  v172(v179, v9, v49);
  sub_29D935E88();
  v154 = v154;
  sub_29D933A98();
  v64 = sub_29D939D98();
  v66 = v65;
  v67 = v49;
  v68 = v49;
  v69 = v176;
  v176(v9, v68);
  *v63 = v64;
  *(v63 + 1) = v66;
  v63[16] = 0;
  (v178)(v63, v62, v181);
  v70 = sub_29D8EDCE0(v161);
  v184 = v157;
  sub_29D88BEE0(v70);
  v71 = v159;
  v72 = swift_allocObject();
  v161 = v72;
  *(v72 + 16) = xmmword_29D954840;
  v171 = v72 + v71;
  sub_29D939D08();
  v73 = v67;
  v74 = v67;
  v75 = v172;
  v172(v179, v9, v73);
  sub_29D935E88();
  v160 = v154;
  sub_29D933A98();
  v76 = sub_29D939D98();
  v78 = v77;
  v69(v9, v74);
  v79 = v171;
  *v171 = v76;
  v79[1] = v78;
  v79[2] = 0;
  v80 = v79;
  (v178)();
  v81 = v80 + v167;
  sub_29D939D08();
  v75(v179, v9, v74);
  sub_29D935E88();
  v167 = v160;
  sub_29D933A98();
  v82 = sub_29D939D98();
  v84 = v83;
  v85 = v176;
  v176(v9, v74);
  *v81 = v82;
  *(v81 + 1) = v84;
  v81[16] = 0;
  v86 = v170;
  (v178)(v81, v170, v181);
  v87 = &v164[v171];
  sub_29D939D08();
  v75(v179, v9, v74);
  sub_29D935E88();
  v167 = v167;
  sub_29D933A98();
  v88 = sub_29D939D98();
  v90 = v89;
  v91 = v169;
  v85(v9, v169);
  *v87 = v88;
  *(v87 + 1) = v90;
  v87[16] = 0;
  v92 = v178;
  (v178)(v87, v86, v181);
  v93 = &v165[v171];
  sub_29D939D08();
  v94 = v91;
  v95 = v91;
  v96 = v172;
  v172(v179, v9, v94);
  sub_29D935E88();
  v167 = v167;
  sub_29D933A98();
  v97 = sub_29D939D98();
  v99 = v98;
  v176(v9, v95);
  *v93 = v97;
  *(v93 + 1) = v99;
  v93[16] = 0;
  v100 = v181;
  v92(v93, v170, v181);
  v101 = (v171 + v163);
  sub_29D939D08();
  v102 = v179;
  v96(v179, v9, v95);
  sub_29D935E88();
  v167 = v167;
  sub_29D933A98();
  v103 = sub_29D939D98();
  v105 = v104;
  v176(v9, v95);
  *v101 = v103;
  v101[1] = v105;
  v101[2] = 0;
  (v178)(v101, v168, v100);
  v106 = v171;
  v107 = &v156[v171];
  sub_29D939D08();
  v172(v102, v9, v95);
  sub_29D935E88();
  v167 = v167;
  sub_29D933A98();
  v108 = sub_29D939D98();
  v110 = v109;
  v111 = v176;
  v176(v9, v95);
  *v107 = v108;
  *(v107 + 1) = v110;
  v107[16] = 0;
  (v178)(v107, v170, v181);
  v168 = &v155[v106];
  sub_29D939D08();
  v112 = v95;
  v113 = v172;
  v172(v179, v9, v95);
  sub_29D935E88();
  v164 = v167;
  sub_29D933A98();
  v167 = sub_29D939D98();
  v165 = v114;
  v111(v9, v95);
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_29D946CA0;
  sub_29D939D08();
  v116 = v179;
  v113(v179, v9, v112);
  sub_29D935E88();
  v164 = v164;
  sub_29D933A98();
  v117 = sub_29D939D98();
  v119 = v118;
  v176(v9, v112);
  *(v115 + 32) = v117;
  *(v115 + 40) = v119;
  sub_29D939D08();
  v113(v116, v9, v112);
  sub_29D935E88();
  v164 = v164;
  sub_29D933A98();
  v120 = v116;
  v121 = sub_29D939D98();
  v123 = v122;
  v124 = v169;
  v125 = v176;
  v176(v9, v169);
  *(v115 + 48) = v121;
  *(v115 + 56) = v123;
  sub_29D939D08();
  v126 = v120;
  v127 = v172;
  v172(v126, v9, v124);
  sub_29D935E88();
  v164 = v164;
  sub_29D933A98();
  v128 = sub_29D939D98();
  v130 = v129;
  v131 = v169;
  v125(v9, v169);
  *(v115 + 64) = v128;
  *(v115 + 72) = v130;
  sub_29D939D08();
  v127(v179, v9, v131);
  sub_29D935E88();
  v164 = v164;
  sub_29D933A98();
  v132 = sub_29D939D98();
  v134 = v133;
  v135 = v131;
  v136 = v131;
  v137 = v176;
  v176(v9, v136);
  *(v115 + 80) = v132;
  *(v115 + 88) = v134;
  v138 = v168;
  v139 = v165;
  *v168 = v167;
  *(v138 + 1) = v139;
  *(v138 + 2) = v115;
  (v178)();
  v140 = (v171 + v162);
  sub_29D939D08();
  v141 = v179;
  v127(v179, v9, v135);
  sub_29D935E88();
  v168 = v164;
  sub_29D933A98();
  v142 = sub_29D939D98();
  v144 = v143;
  v137(v9, v135);
  *v140 = v142;
  *(v140 + 1) = v144;
  v140[16] = 0;
  v145 = v181;
  v146 = v178;
  (v178)(v140, v170, v181);
  v147 = (v171 + v166);
  sub_29D939D08();
  v172(v141, v9, v135);
  sub_29D935E88();
  v148 = v168;
  sub_29D933A98();
  v149 = sub_29D939D98();
  v151 = v150;
  v176(v9, v135);
  *v147 = v149;
  v147[1] = v151;
  *(v147 + 16) = 0;
  v146(v147, v170, v145);
  sub_29D88BEE0(v161);
  return v184;
}

uint64_t sub_29D8EDCE0(uint64_t a1)
{
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v158 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D939D18();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v134 - v12;
  if (a1 == 1)
  {
    sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
    v155 = sub_29D934548();
    v80 = *(v155 - 8);
    v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v153 = *(v80 + 72);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_29D944710;
    v138 = v82;
    v152 = v82 + v81;
    sub_29D939D08();
    if (qword_2A1A242A8 != -1)
    {
      swift_once();
    }

    v83 = qword_2A1A2BE68;
    v84 = qword_2A1A2BE78;
    v85 = *(v6 + 16);
    v149 = qword_2A1A2BE70;
    v150 = v85;
    v156 = v10;
    v85(v10, v13, v5);
    v144 = v6 + 16;
    v148 = v84;
    sub_29D935E88();
    v151 = v83;
    sub_29D933A98();
    v140 = v83;
    v86 = sub_29D939D98();
    v87 = v6;
    v89 = v88;
    v90 = *(v87 + 8);
    v157 = v87 + 8;
    v90(v13, v5);
    v143 = v90;
    v91 = v152;
    *v152 = v86;
    *(v91 + 8) = v89;
    *(v91 + 16) = 0;
    v92 = *(v80 + 104);
    v141 = v80 + 104;
    v145 = v92;
    v93 = v91;
    v92();
    v94 = (v93 + v153);
    sub_29D84D460(0);
    v139 = v95;
    v142 = *(v95 + 48);
    sub_29D939D08();
    v96 = v150;
    v150(v156, v13, v5);
    sub_29D935E88();
    v137 = v151;
    sub_29D933A98();
    v97 = sub_29D939D98();
    v99 = v98;
    v90(v13, v5);
    *v94 = v97;
    v94[1] = v99;
    v146 = sub_29D9333D8();
    v100 = *(v146 - 8);
    v147 = *(v100 + 56);
    v151 = (v100 + 56);
    v147(v142 + v94, 1, 1, v146);
    LODWORD(v142) = *MEMORY[0x29EDC15F8];
    (v145)(v94);
    v136 = (2 * v153);
    v101 = v152;
    v102 = (v152 + 2 * v153);
    v103 = v139;
    v135 = *(v139 + 48);
    sub_29D939D08();
    v96(v156, v13, v5);
    sub_29D935E88();
    v137 = v137;
    sub_29D933A98();
    v104 = sub_29D939D98();
    v106 = v105;
    v143(v13, v5);
    *v102 = v104;
    v102[1] = v106;
    v147(v102 + v135, 1, 1, v146);
    v107 = v145;
    (v145)(v102, v142, v155);
    v108 = v5;
    v109 = v153;
    v110 = &v136[v153 + v101];
    v135 = *(v103 + 48);
    sub_29D939D08();
    v111 = v156;
    v112 = v108;
    v154 = v108;
    v150(v156, v13, v108);
    sub_29D935E88();
    v136 = v137;
    sub_29D933A98();
    v113 = sub_29D939D98();
    v115 = v114;
    v116 = v143;
    v143(v13, v112);
    *v110 = v113;
    v110[1] = v115;
    v147(v110 + v135, 1, 1, v146);
    v117 = v111;
    v118 = v142;
    (v107)(v110, v142, v155);
    v137 = (4 * v109);
    v119 = (v152 + 4 * v109);
    v135 = *(v139 + 48);
    sub_29D939D08();
    v120 = v154;
    v150(v117, v13, v154);
    sub_29D935E88();
    v136 = v136;
    sub_29D933A98();
    v121 = sub_29D939D98();
    v123 = v122;
    v116(v13, v120);
    *v119 = v121;
    v119[1] = v123;
    v125 = v146;
    v124 = v147;
    v147(v119 + v135, 1, 1, v146);
    v126 = v119;
    v127 = v145;
    (v145)(v126, v118, v155);
    v128 = &v137[v153 + v152];
    v153 = *(v139 + 48);
    sub_29D939D08();
    v150(v156, v13, v120);
    sub_29D935E88();
    v129 = v136;
    sub_29D933A98();
    v130 = sub_29D939D98();
    v132 = v131;
    v143(v13, v120);
    *v128 = v130;
    v128[1] = v132;
    v124(v128 + v153, 1, 1, v125);
    (v127)(v128, v142, v155);
    return v138;
  }

  if (!a1)
  {
    v14 = v10;
    v154 = v5;
    sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
    v152 = sub_29D934548();
    v15 = *(v152 - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v153 = *(v15 + 72);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_29D943DD0;
    v138 = v17;
    v155 = v17 + v16;
    sub_29D939D08();
    if (qword_2A1A242A8 != -1)
    {
      swift_once();
    }

    v18 = qword_2A1A2BE68;
    v19 = qword_2A1A2BE70;
    v20 = qword_2A1A2BE78;
    v21 = v6;
    v22 = *(v6 + 16);
    v149 = qword_2A1A2BE68;
    v150 = v22;
    v140 = (v6 + 16);
    v23 = v154;
    v22(v14, v13, v154);
    sub_29D935E88();
    v151 = v18;
    sub_29D933A98();
    v144 = v19;
    v24 = sub_29D939D98();
    v26 = v25;
    v27 = *(v21 + 8);
    v157 = v21 + 8;
    v148 = v27;
    v27(v13, v23);
    v28 = v155;
    *v155 = v24;
    *(v28 + 8) = v26;
    *(v28 + 16) = 0;
    v29 = *(v15 + 104);
    v141 = v15 + 104;
    v142 = v29;
    v30 = v28;
    v29();
    v31 = (v30 + v153);
    sub_29D84D460(0);
    v33 = *(v32 + 48);
    v145 = v32;
    v146 = v33;
    sub_29D939D08();
    v156 = v14;
    v34 = v23;
    v35 = v23;
    v36 = v150;
    v150(v14, v13, v34);
    v139 = v20;
    sub_29D935E88();
    v137 = v151;
    sub_29D933A98();
    v37 = sub_29D939D98();
    v39 = v38;
    v148(v13, v35);
    *v31 = v37;
    v31[1] = v39;
    v147 = sub_29D9333D8();
    v40 = *(v147 - 1);
    v143 = *(v40 + 56);
    v151 = (v40 + 56);
    (v143)(v31 + v146, 1, 1, v147);
    v41 = v31;
    LODWORD(v146) = *MEMORY[0x29EDC15F8];
    v42 = v146;
    v43 = v142;
    (v142)(v41);
    v136 = (2 * v153);
    v44 = (v155 + 2 * v153);
    v135 = *(v145 + 12);
    sub_29D939D08();
    v36(v156, v13, v35);
    sub_29D935E88();
    v137 = v137;
    sub_29D933A98();
    v45 = sub_29D939D98();
    v47 = v46;
    v48 = v35;
    v49 = v35;
    v50 = v148;
    v148(v13, v48);
    *v44 = v45;
    v44[1] = v47;
    (v143)(v44 + v135, 1, 1, v147);
    v51 = v152;
    v43(v44, v42, v152);
    v52 = &v136[v153 + v155];
    v135 = *(v145 + 12);
    sub_29D939D08();
    v150(v156, v13, v49);
    sub_29D935E88();
    v136 = v137;
    sub_29D933A98();
    v53 = sub_29D939D98();
    v55 = v54;
    v56 = v154;
    v50(v13, v154);
    *v52 = v53;
    v52[1] = v55;
    (v143)(v52 + v135, 1, 1, v147);
    (v142)(v52, v146, v51);
    v57 = v153;
    v137 = (4 * v153);
    v58 = (v155 + 4 * v153);
    v59 = v145;
    v60 = *(v145 + 12);
    sub_29D939D08();
    v150(v156, v13, v56);
    sub_29D935E88();
    v136 = v136;
    sub_29D933A98();
    v61 = sub_29D939D98();
    v63 = v62;
    v64 = v154;
    v148(v13, v154);
    *v58 = v61;
    v58[1] = v63;
    v65 = v58 + v60;
    v66 = v143;
    (v143)(v65, 1, 1, v147);
    (v142)(v58, v146, v152);
    v67 = &v137[v57 + v155];
    v135 = *(v59 + 12);
    sub_29D939D08();
    v68 = v156;
    v150(v156, v13, v64);
    sub_29D935E88();
    v137 = v136;
    sub_29D933A98();
    v69 = sub_29D939D98();
    v71 = v70;
    v72 = v154;
    v148(v13, v154);
    *v67 = v69;
    v67[1] = v71;
    v73 = v147;
    (v66)(v67 + v135, 1, 1, v147);
    v74 = v142;
    (v142)(v67, v146, v152);
    v75 = (v155 + 6 * v153);
    v155 = *(v145 + 12);
    sub_29D939D08();
    v150(v68, v13, v72);
    sub_29D935E88();
    v76 = v137;
    sub_29D933A98();
    v77 = sub_29D939D98();
    v79 = v78;
    v148(v13, v72);
    *v75 = v77;
    v75[1] = v79;
    (v143)(v75 + v155, 1, 1, v73);
    v74(v75, v146, v152);
    return v138;
  }

  return MEMORY[0x29EDCA190];
}

unint64_t sub_29D8EEF58()
{
  v1 = *v0;
  v2 = 0xD000000000000037;
  v3 = 0x416E776F6E6B6E55;
  if (!*v0)
  {
    v3 = 0xD000000000000038;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1 == 2)
  {
    return 0x697472414F474946;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D8EF054()
{
  v0 = sub_29D9376E8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A2C038;
  sub_29D9376B8();
  return sub_29D93A6A8();
}

uint64_t sub_29D8EF144()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA460]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D8EF204(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17[-v11];
  sub_29D939D08();
  if (qword_2A1A242A8 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A2BE68;
  (*(v5 + 16))(v9, v12, v4);
  sub_29D935E88();
  v14 = v13;
  sub_29D933A98();
  v15 = sub_29D939D98();
  (*(v5 + 8))(v12, v4);
  return v15;
}

uint64_t sub_29D8EF3F4()
{
  v0 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v2 = sub_29D939D18();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v15[-v9];
  sub_29D939D08();
  if (qword_2A1A242A8 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A2BE68;
  (*(v3 + 16))(v7, v10, v2);
  sub_29D935E88();
  v12 = v11;
  sub_29D933A98();
  v13 = sub_29D939D98();
  (*(v3 + 8))(v10, v2);
  return v13;
}

uint64_t type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource(uint64_t a1)
{
  result = qword_2A17B7A50;
  if (!qword_2A17B7A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8EF678@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 relevantStartDate];
  if (v3)
  {
    v4 = v3;
    sub_29D933998();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_29D9339F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_29D8EF71C(uint64_t a1, void **a2)
{
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A0A20(a1, v7);
  v8 = *a2;
  v9 = sub_29D9339F8();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_29D933958();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setRelevantStartDate_];
}

uint64_t sub_29D8EF840@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D937B88();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B18();
  v4 = sub_29D934D58();
  swift_allocObject();
  v5 = sub_29D934D38();
  a1[3] = v4;
  result = sub_29D8EFBC4(&qword_2A17B2C98, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
  a1[4] = result;
  *a1 = v5;
  return result;
}

id sub_29D8EF9FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8EFA54()
{
  v0 = sub_29D9356A8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935668();
  v5 = sub_29D935608();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29D8EFBC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D8EFC0C(void *a1)
{
  sub_29D934528();
  v2 = sub_29D9344E8();
  sub_29D6A0C58();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D940030;
  sub_29D8EFD98();
  swift_getKeyPath();
  *(v3 + 32) = sub_29D93A338();
  v4 = v2;
  v5 = sub_29D9344F8();

  v6 = sub_29D939F18();

  [v5 setSortDescriptors_];

  sub_29D693E2C(a1, a1[3]);
  v7 = v5;
  v8 = sub_29D933EC8();
  [objc_allocWithZone(MEMORY[0x29EDB8C58]) initWithFetchRequest:v7 managedObjectContext:v8 sectionNameKeyPath:0 cacheName:0];

  v9 = sub_29D936A38();
  sub_29D69417C(a1);
  return v9;
}

unint64_t sub_29D8EFD98()
{
  result = qword_2A17B50C0;
  if (!qword_2A17B50C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B50C0);
  }

  return result;
}

uint64_t sub_29D8EFDF0(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 doubleValue];
    v4 = v3;
    v5 = [objc_opt_self() sharedInstanceForHealthStore_];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() quantityTypeForIdentifier_];
      v8 = [v6 displayTypeForObjectType_];

      if (v8)
      {
        v9 = [objc_allocWithZone(MEMORY[0x29EDBAE60]) initWithHealthStore_];
        v10 = [objc_opt_self() _quantityWithBeatsPerMinute_];
        v11 = [objc_allocWithZone(MEMORY[0x29EDC4698]) initWithQuantity_];
        v12 = [v11 stringWithDisplayType:v8 unitController:v9];
        if (v12)
        {
          v13 = v12;
          v14 = sub_29D939D68();

          return v14;
        }
      }

      else
      {
      }
    }
  }

  result = sub_29D93AB28();
  __break(1u);
  return result;
}

id sub_29D8F007C(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  a2(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a3 = result;
  return result;
}

id sub_29D8F00D8()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0EB0 = qword_2A1A2C038;
  *algn_2A17D0EB8 = 0xD000000000000016;
  qword_2A17D0EC0 = 0x800000029D95C0E0;

  return v1;
}

id sub_29D8F015C()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0EC8 = qword_2A1A2C038;
  unk_2A17D0ED0 = 0xD000000000000019;
  qword_2A17D0ED8 = 0x800000029D957C10;

  return v1;
}

id sub_29D8F01E0()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0EE0 = qword_2A1A2C038;
  *algn_2A17D0EE8 = 0xD000000000000026;
  qword_2A17D0EF0 = 0x800000029D96E3C0;

  return v1;
}

id sub_29D8F0264()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0EF8 = qword_2A1A2C038;
  unk_2A17D0F00 = 0x617A696C61636F4CLL;
  qword_2A17D0F08 = 0xEB00000000656C62;

  return v1;
}

id sub_29D8F02EC()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0F10 = qword_2A1A2C038;
  *algn_2A17D0F18 = 0xD000000000000025;
  qword_2A17D0F20 = 0x800000029D96E250;

  return v1;
}

id sub_29D8F0370()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0F28 = qword_2A1A2C038;
  unk_2A17D0F30 = 0xD00000000000002FLL;
  qword_2A17D0F38 = 0x800000029D96E360;

  return v1;
}

id sub_29D8F03F4()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0F40 = qword_2A1A2C038;
  *algn_2A17D0F48 = 0xD000000000000028;
  qword_2A17D0F50 = 0x800000029D96E390;

  return v1;
}

id sub_29D8F0478()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0F58 = qword_2A1A2C038;
  unk_2A17D0F60 = 0xD000000000000015;
  qword_2A17D0F68 = 0x800000029D96E340;

  return v1;
}

id sub_29D8F04FC()
{
  if (qword_2A17B0D38 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17D0EA8;
  qword_2A17D0F70 = qword_2A17D0EA8;
  *algn_2A17D0F78 = 0xD00000000000001CLL;
  qword_2A17D0F80 = 0x800000029D96E3F0;

  return v1;
}

id sub_29D8F0580()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A1A2BE98 = qword_2A1A2C038;
  unk_2A1A2BEA0 = 0xD000000000000020;
  qword_2A1A2BEA8 = 0x800000029D96E220;

  return v1;
}

unint64_t sub_29D8F0604()
{
  result = qword_2A17B7A68;
  if (!qword_2A17B7A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B7A68);
  }

  return result;
}

id sub_29D8F0650()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A17D0F88 = qword_2A1A2C038;
  unk_2A17D0F90 = 0xD00000000000002ALL;
  qword_2A17D0F98 = 0x800000029D96E410;

  return v1;
}

id sub_29D8F06D4()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  qword_2A1A2BE80 = qword_2A1A2C038;
  *algn_2A1A2BE88 = 0xD000000000000027;
  qword_2A1A2BE90 = 0x800000029D96E440;

  return v1;
}

id sub_29D8F0758()
{
  if (qword_2A1A21FE0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2BCC0;
  qword_2A1A2BE68 = qword_2A1A2BCC0;
  qword_2A1A2BE70 = 0xD00000000000002CLL;
  qword_2A1A2BE78 = 0x800000029D96E4B0;

  return v1;
}

id sub_29D8F07DC()
{
  if (qword_2A1A21FE0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2BCC0;
  qword_2A17D0FA0 = qword_2A1A2BCC0;
  *algn_2A17D0FA8 = 0xD000000000000030;
  qword_2A17D0FB0 = 0x800000029D96E470;

  return v1;
}

uint64_t sub_29D8F0860(uint64_t result, void *a2, uint64_t a3)
{
  if ((result & 1) == 0)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v5, qword_2A1A2BF58);
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v7 = a2;
    sub_29D9371E8();
  }

  return result;
}

uint64_t sub_29D8F0948(void *a1, uint64_t a2)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](0xD000000000000021, 0x800000029D96E5F0);
  v4 = a1;
  sub_29D8F3D14(0, &qword_2A17B7AF0, sub_29D6A0CD0, MEMORY[0x29EDC9C68]);
  v5 = sub_29D939DB8();
  MEMORY[0x29ED6A240](v5);

  return 91;
}

uint64_t sub_29D8F0A70()
{
  v1 = *v0;
  (v0[3])();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_29D6B7D8C(0);
  sub_29D8F3B3C(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D938588();

  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D8F0BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v4, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = a3;
  sub_29D9371C8();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 104);

    MEMORY[0x2A1C7C4A8](v7, v8);
    v9 = *(*v6 + *MEMORY[0x29EDC9DE8] + 16);
    v10 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v10));
    sub_29D8F418C(v6 + v9);
    os_unfair_lock_unlock((v6 + v10));
  }

  return result;
}

uint64_t sub_29D8F0D74(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](0xD000000000000020, 0x800000029D96E850);
  return 91;
}

uint64_t sub_29D8F0E08(uint64_t a1, uint64_t a2)
{
  sub_29D8F3E20(a1, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v4 = sub_29D9371A8();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_29D8F0ED8()
{
  v1 = *v0;
  sub_29D8F3FEC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v1;
  sub_29D8F4080(0);
  swift_allocObject();
  sub_29D938368();
  sub_29D8F3B3C(&qword_2A17B7B38, sub_29D8F4080, MEMORY[0x29EDB8AD8]);

  sub_29D938378();
  sub_29D8F3B3C(&qword_2A17B7B40, sub_29D8F3FEC, MEMORY[0x29EDB8AE8]);
  v10 = sub_29D938418();

  (*(v4 + 8))(v7, v3);
  return v10;
}

uint64_t sub_29D8F10FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 48);
    v10 = Strong;
    v11 = swift_allocObject();
    v11[2] = sub_29D8F41B4;
    v11[3] = v7;
    v11[4] = v10;
    v11[5] = a4;
    aBlock[4] = sub_29D8F4108;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D8F18C4;
    aBlock[3] = &unk_2A244DDB8;
    v12 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v9 fetchMobileCountryCodeFromCellularWithCompletion_];
    _Block_release(v12);

    return sub_29D936978();
  }

  else
  {
  }
}

void sub_29D8F127C(uint64_t a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33[1] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v9 = *(a5 + 16);
    v10 = [swift_unknownObjectRetain() ISOCode];
    if (!v10)
    {
      sub_29D939D68();
      v10 = sub_29D939D28();
    }

    v33[0] = 0;
    v11 = [v9 onboardingEligibilityForCountryCode:v10 error:v33];

    v14 = v33[0];
    if (v11)
    {
      v15 = *(a5 + 104);
      MEMORY[0x2A1C7C4A8](v12, v13);
      v16 = *(*v15 + *MEMORY[0x29EDC9DE8] + 16);
      v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
      v18 = v14;

      os_unfair_lock_lock((v15 + v17));
      sub_29D8F4124(v15 + v16);
      os_unfair_lock_unlock((v15 + v17));

      v19 = v11;
      a3(v11, 0);

      sub_29D936978();
      return;
    }

    v27 = v33[0];
    v28 = sub_29D933598();

    swift_willThrow();
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v29, qword_2A1A2BF58);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = a6;
    v33[0] = 0;
    v31 = v28;
    sub_29D9371E8();

    v32 = v28;
    a3(v28, 1);
    sub_29D936978();

    v26 = v28;
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v21, qword_2A1A2BF58);
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a6;
    v33[0] = 0;
    v23 = a2;
    sub_29D9371E8();

    v24 = a2;
    if (!a2)
    {
      type metadata accessor for HKError(0);
      sub_29D8F3B8C(MEMORY[0x29EDCA190]);
      sub_29D8F3B3C(&qword_2A17B1328, type metadata accessor for HKError, &unk_29D93F3E8);
      sub_29D933578();
      v24 = v33[0];
    }

    v25 = a2;
    a3(v24, 1);
    v26 = v24;
  }
}

uint64_t sub_29D8F1688(uint64_t a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002DLL, 0x800000029D96E7B0);
  MEMORY[0x29ED6A240](0xD00000000000002FLL, 0x800000029D96E820);
  if (a1)
  {
    swift_getErrorValue();
    sub_29D93ADF8();
    v4 = sub_29D939DA8();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x29ED6A240](v4, v6);

  return 0;
}

uint64_t sub_29D8F17BC(uint64_t a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002DLL, 0x800000029D96E7B0);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D96E7E0);
  swift_getErrorValue();
  v3 = sub_29D93ADF8();
  MEMORY[0x29ED6A240](v3);

  return 0;
}

uint64_t sub_29D8F18C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return sub_29D936978();
}

uint64_t sub_29D8F1944()
{
  v1 = v0;
  v69 = *v0;
  sub_29D8F3AE8(0, &qword_2A1A24A48, MEMORY[0x29EDB8AB0]);
  v3 = v2;
  v66 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v56 - v5;
  sub_29D8F3A78(0, &qword_2A1A24830, MEMORY[0x29EDB8B18]);
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v56 - v9;
  sub_29D8F3A78(0, &qword_2A17B7AA0, MEMORY[0x29EDB8AA0]);
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v60 = &v56 - v13;
  sub_29D8F39C4(0);
  v64 = *(v14 - 8);
  v65 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8F3AE8(0, &qword_2A17B7AC0, MEMORY[0x29EDC2EA0]);
  v58 = *(v17 - 8);
  v59 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v57 = &v56 - v19;
  sub_29D8F3D14(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v23 = &v56 - v22;
  v24 = v1[13];
  v25 = MEMORY[0x29EDC9DE8];
  v26 = v24 + *(*v24 + *MEMORY[0x29EDC9DE8] + 16);
  v27 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v24 + v27));
  v28 = type metadata accessor for AFibBurdenOnboardingFlowManager.State(0);
  LOBYTE(v26) = *(v26 + *(v28 + 24));
  os_unfair_lock_unlock((v24 + v27));

  if (v26)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v29, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v69;
    v71 = 0;
    sub_29D9371E8();

    LOBYTE(v71) = 1;
    sub_29D938338();
    sub_29D6A0CD0();
    sub_29D938318();
    (*(v66 + 8))(v6, v3);
    sub_29D8F3C90(&qword_2A1A24838, &qword_2A1A24830, MEMORY[0x29EDB8B18], MEMORY[0x29EDB8B20]);
    v30 = v68;
    v31 = sub_29D938418();
    v32 = v67;
LABEL_11:
    (*(v32 + 8))(v10, v30);
    return v31;
  }

  v33 = v1[13];
  v34 = v33 + *(*v33 + *v25 + 16);
  v35 = (*(*v33 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v33 + v35));
  v36 = *(v34 + *(v28 + 20));
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v33 + v35));

  if (!v36)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v43, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v69;
    v71 = 0;
    sub_29D9371E8();

    type metadata accessor for HKError(0);
    v70 = 3;
    sub_29D8F3B8C(MEMORY[0x29EDCA190]);
    sub_29D8F3B3C(&qword_2A17B1328, type metadata accessor for HKError, &unk_29D93F3E8);
    sub_29D933578();
    v70 = v71;
    sub_29D6A0CD0();
    v10 = v60;
    sub_29D938308();
    sub_29D8F3C90(&unk_2A17B7AD0, &qword_2A17B7AA0, MEMORY[0x29EDB8AA0], MEMORY[0x29EDB8AA8]);
    v30 = v62;
    v31 = sub_29D938418();
    v32 = v61;
    goto LABEL_11;
  }

  v37 = v1[13];
  v38 = *(*v37 + *v25 + 16);
  v39 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v37 + v39));
  sub_29D8F3D78(v37 + v38, v23, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  os_unfair_lock_unlock((v37 + v39));

  v40 = sub_29D9371A8();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v23, 1, v40) == 1)
  {
    sub_29D8F3E20(v23, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    v42 = v69;
  }

  else
  {
    v44 = sub_29D9371B8();
    (*(v41 + 8))(v23, v40);
    v45 = [v44 isRequirementSatisfiedWithIdentifier_];

    v42 = v69;
    if ((v45 & 1) == 0)
    {
      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }

      sub_29D6A9ED4(0);
      sub_29D69C6C0(v46, qword_2A1A2BF58);
      *(swift_allocObject() + 16) = v42;
      v71 = 0;
      sub_29D9371C8();

      swift_getObjectType();
      v47 = v57;
      sub_29D93A408();
      *(swift_allocObject() + 16) = v42;
      sub_29D93A608();

      (*(v58 + 8))(v47, v59);
    }
  }

  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v48, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = v42;
  v71 = 0;
  sub_29D9371C8();

  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v49 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D693E2C(v1 + 7, v1[10]);
  sub_29D934328();
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = v36;
  v51[4] = v42;
  v52 = MEMORY[0x29EDB8AD0];
  sub_29D8F3A78(0, &qword_2A17B7AB0, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_29D938368();
  sub_29D8F3C90(&qword_2A17B7AB8, &qword_2A17B7AB0, v52, MEMORY[0x29EDB8AD8]);

  v53 = v63;
  sub_29D938378();
  sub_29D8F3B3C(&unk_2A17B7AE0, sub_29D8F39C4, MEMORY[0x29EDB8AE8]);
  v54 = v65;
  v31 = sub_29D938418();
  sub_29D936978();

  (*(v64 + 8))(v53, v54);
  return v31;
}

uint64_t sub_29D8F25D0(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD000000000000043, 0x800000029D96E5A0);
  return 0;
}

uint64_t sub_29D8F269C(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD00000000000003FLL, 0x800000029D96E740);
  return 0;
}

uint64_t sub_29D8F276C(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD00000000000002CLL, 0x800000029D96E620);
  return 91;
}

uint64_t sub_29D8F2834(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D96E710);
  return 91;
}

uint64_t sub_29D8F28FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_29D8F3D14(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v11 = MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v35 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = qword_2A1A24678;

    if (v20 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v21, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a5;
    aBlock[0] = 0;
    sub_29D9371C8();

    sub_29D8F3D14(0, &qword_2A17B7B00, sub_29D74D460, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D93DDB0;
    *(inited + 32) = sub_29D939D68();
    *(inited + 40) = v23;
    *(inited + 72) = MEMORY[0x29EDC9A98];
    *(inited + 48) = 1;
    sub_29D73F010(inited);
    swift_setDeallocating();
    sub_29D798AB0(inited + 32);
    v24 = objc_allocWithZone(MEMORY[0x29EDBABA0]);
    v25 = sub_29D939C58();

    v36 = [v24 initWithDictionary_];

    v38 = a5;
    sub_29D8F2EDC(a5, v16);
    v37 = *(v19 + 16);
    v26 = [a4 ISOCode];
    if (!v26)
    {
      sub_29D939D68();
      v26 = sub_29D939D28();
    }

    v27 = [a4 provenance];
    sub_29D8F3D78(v16, v13, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    v28 = sub_29D9339F8();
    v29 = *(v28 - 8);
    v30 = 0;
    if ((*(v29 + 48))(v13, 1, v28) != 1)
    {
      v30 = sub_29D933958();
      (*(v29 + 8))(v13, v28);
    }

    v31 = swift_allocObject();
    v31[2] = a4;
    v31[3] = sub_29D8F3D08;
    v31[4] = v17;
    v31[5] = v19;
    v31[6] = v38;
    aBlock[4] = sub_29D8F3DF8;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D8E44F0;
    aBlock[3] = &unk_2A244DCA0;
    v32 = _Block_copy(aBlock);
    v33 = v36;
    swift_unknownObjectRetain();

    [v37 setCurrentOnboardingVersionCompletedForCountryCode:v26 countryCodeProvenance:v27 date:v30 settings:v33 completion:v32];
    _Block_release(v32);

    sub_29D8F3E20(v16, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  }

  else
  {
  }
}

uint64_t sub_29D8F2E14(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD00000000000001ELL, 0x800000029D96E6F0);
  return 91;
}

uint64_t sub_29D8F2EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D9339F8();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v21 - v10;
  v12 = HKHRAFibBurdenOnboardingDateOverride();
  if (v12)
  {
    v22 = a1;
    v13 = v12;
    sub_29D933998();

    v14 = *(v23 + 32);
    v14(a2, v11, v4);
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v15, qword_2A1A2BF58);
    (*(v23 + 16))(v8, a2, v4);
    v16 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    v14(v18 + v16, v8, v4);
    *(v18 + v17) = v22;
    v24 = 0;
    sub_29D9371C8();

    return (*(v23 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v20 = *(v23 + 56);

    return v20(a2, 1, 1, v4);
  }
}

uint64_t sub_29D8F316C(uint64_t a1, uint64_t a2)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD000000000000024, 0x800000029D96E6C0);
  sub_29D9339F8();
  sub_29D8F3B3C(&qword_2A17B7B10, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
  v3 = sub_29D93AD38();
  MEMORY[0x29ED6A240](v3);

  return 91;
}

void sub_29D8F32A4(int a1, id a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v11 = a2;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v12, qword_2A1A2BF58);
    v13 = swift_allocObject();
    v13[2] = a3;
    v13[3] = a2;
    v13[4] = a7;
    swift_unknownObjectRetain();
    v14 = a2;
    sub_29D9371E8();

    v15 = a2;
    a4(a2, 1);
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v17, qword_2A1A2BF58);
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a7;
    swift_unknownObjectRetain();
    sub_29D9371C8();

    v19 = *(a6 + 104);
    v20 = v19 + *(*v19 + *MEMORY[0x29EDC9DE8] + 16);
    v21 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v19 + v21));
    *(v20 + *(type metadata accessor for AFibBurdenOnboardingFlowManager.State(0) + 24)) = 1;
    os_unfair_lock_unlock((v19 + v21));

    a4(1, 0);
  }
}

uint64_t sub_29D8F351C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD000000000000036, 0x800000029D96E650);
  sub_29D8F3960();
  sub_29D93AB08();
  MEMORY[0x29ED6A240](0x203A726F72726520, 0xE800000000000000);
  swift_getErrorValue();
  v4 = sub_29D93ADF8();
  MEMORY[0x29ED6A240](v4);

  return 0;
}

uint64_t sub_29D8F3670(uint64_t a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96E580);
  MEMORY[0x29ED6A240](0xD00000000000002CLL, 0x800000029D96E690);
  sub_29D8F3960();
  sub_29D93AB08();
  return 0;
}

uint64_t sub_29D8F3774()
{
  sub_29D936978();

  sub_29D936978();
  sub_29D936978();
  sub_29D69417C((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenOnboardingFlowManager.State(uint64_t a1)
{
  result = qword_2A17B7A78;
  if (!qword_2A17B7A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8F3874(uint64_t a1)
{
  sub_29D8F3D14(319, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29D8F3D14(319, &qword_2A17B7A88, sub_29D8F3960, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29D8F3960()
{
  result = qword_2A17B7A90;
  if (!qword_2A17B7A90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B7A90);
  }

  return result;
}

void sub_29D8F39C4(uint64_t a1)
{
  if (!qword_2A17B7AA8)
  {
    v1 = MEMORY[0x29EDB8AD0];
    sub_29D8F3A78(255, &qword_2A17B7AB0, MEMORY[0x29EDB8AD0]);
    sub_29D8F3C90(&qword_2A17B7AB8, &qword_2A17B7AB0, v1, MEMORY[0x29EDB8AD8]);
    v2 = sub_29D938388();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B7AA8);
    }
  }
}

void sub_29D8F3A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29D6A0CD0();
    v7 = a3(a1, MEMORY[0x29EDC9A98], v6, MEMORY[0x29EDC9F20]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D8F3AE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

uint64_t sub_29D8F3B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D8F3B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D8C5D20();
    v3 = sub_29D93ABA8();
    v4 = a1 + 32;

    while (1)
    {
      sub_29D8F3F88(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_29D6907F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29D6940E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29D8F3C90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D8F3A78(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D8F3D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8F3D78(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D8F3D14(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D8F3E08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D8F3E20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D8F3D14(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D8F3E98(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2A1C733A0](v2, 40, 7);
}

uint64_t sub_29D8F3EFC()
{
  v1 = *(sub_29D9339F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D8F316C(v0 + v2, v3);
}

uint64_t sub_29D8F3F88(uint64_t a1, uint64_t a2)
{
  sub_29D74D460();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D8F3FEC(uint64_t a1)
{
  if (!qword_2A17B7B20)
  {
    sub_29D8F4080(255);
    sub_29D8F3B3C(&qword_2A17B7B38, sub_29D8F4080, MEMORY[0x29EDB8AD8]);
    v1 = sub_29D938388();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7B20);
    }
  }
}

void sub_29D8F4080(uint64_t a1)
{
  if (!qword_2A17B7B28)
  {
    sub_29D69567C(255, &qword_2A17B7B30, 0x29EDBAB88);
    sub_29D6A0CD0();
    v1 = sub_29D938358();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7B28);
    }
  }
}

uint64_t sub_29D8F4124(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for AFibBurdenOnboardingFlowManager.State(0) + 20);
  swift_unknownObjectRetain();
  result = sub_29D936978();
  *(a1 + v4) = v3;
  return result;
}

uint64_t type metadata accessor for AFibBurdenPDFChartViewModel(uint64_t a1)
{
  result = qword_2A17B7B48;
  if (!qword_2A17B7B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8F422C(uint64_t a1)
{
  sub_29D9331D8();
  if (v1 <= 0x3F)
  {
    sub_29D8F4318(319);
    if (v2 <= 0x3F)
    {
      sub_29D69567C(319, &qword_2A17B7B58, 0x29EDBAE50);
      if (v3 <= 0x3F)
      {
        sub_29D69567C(319, &qword_2A17B7B60, 0x29EDC4678);
        if (v4 <= 0x3F)
        {
          sub_29D8F4370();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_29D8F4318(uint64_t a1)
{
  if (!qword_2A17B1ED0)
  {
    type metadata accessor for AFibBurdenPDFChartPoint(255);
    v1 = sub_29D939FB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1ED0);
    }
  }
}

void sub_29D8F4370()
{
  if (!qword_2A17B7B68)
  {
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7B68);
    }
  }
}

uint64_t getEnumTagSinglePayload for AFibBurdenPDFChartViewModel.DataRange(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AFibBurdenPDFChartViewModel.DataRange(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_29D8F4468()
{
  v1 = type metadata accessor for AFibBurdenPDFChartViewModel(0);
  v3 = MEMORY[0x2A1C7C4A8](v1, v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + *(v3 + 28)) displayCategory];
  v7 = [v6 color];

  if (v7)
  {

    return sub_29D939528();
  }

  else
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v9 = sub_29D937898();
    sub_29D69C6C0(v9, qword_2A1A2BF28);
    sub_29D8F4C04(v0, v5, type metadata accessor for AFibBurdenPDFChartViewModel);
    v10 = sub_29D937878();
    v11 = sub_29D93A298();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v14 = [*&v5[*(v1 + 28)] description];
      v15 = sub_29D939D68();
      v17 = v16;

      sub_29D8F4C6C(v5, type metadata accessor for AFibBurdenPDFChartViewModel);
      v18 = sub_29D6C2364(v15, v17, &v20);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_29D677000, v10, v11, "%s doesn't have a displayCategory color", v12, 0xCu);
      sub_29D69417C(v13);
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);
    }

    else
    {

      sub_29D8F4C6C(v5, type metadata accessor for AFibBurdenPDFChartViewModel);
    }

    return sub_29D939558();
  }
}

uint64_t sub_29D8F4700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D9331D8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v44[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AFibBurdenPDFChartPoint(0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v15 = &v44[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    LOBYTE(a2) = 0;
    v6 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v17 = *(v6 + *(v11 + 20));
    v10 = *(v13 + 72);
    a3 = -1;
    v18 = v17;
    do
    {
      sub_29D8F4C04(v6, v15, type metadata accessor for AFibBurdenPDFChartPoint);
      v19 = *(v11 + 20);
      v20 = *&v15[v19];
      if (v17 <= v20)
      {
        v17 = *&v15[v19];
      }

      if (v20 < v18)
      {
        v18 = *&v15[v19];
      }

      if (a2)
      {
        a2 = 1;
      }

      else
      {
        v21 = *&v15[*(v11 + 24)];
        if (*(v21 + 16))
        {
          sub_29D93AE58();
          MEMORY[0x29ED6B260](0);
          v22 = sub_29D93AE98() & ~(-1 << *(v21 + 32));
          a2 = (*(v21 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v22) & 1;
        }

        else
        {
          a2 = 0;
        }
      }

      sub_29D8F4C6C(v15, type metadata accessor for AFibBurdenPDFChartPoint);
      v6 += v10;
      --v16;
    }

    while (v16);
    if (v18 <= v17)
    {
      return a2;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_2A1A24660 != -1)
  {
LABEL_21:
    swift_once();
  }

  v24 = sub_29D937898();
  sub_29D69C6C0(v24, qword_2A1A2BF28);
  (*(v7 + 16))(v10, a3, v6);
  v25 = a2;
  v26 = sub_29D937878();
  v27 = sub_29D93A2A8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44[0] = v29;
    *v28 = 136446723;
    v43 = type metadata accessor for AFibBurdenPDFChartViewModel(0);
    sub_29D8F4BBC();
    v30 = sub_29D939DA8();
    v32 = sub_29D6C2364(v30, v31, v44);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2085;
    v33 = [v25 localization];
    v34 = [v33 displayName];

    v35 = sub_29D939D68();
    v37 = v36;

    v38 = sub_29D6C2364(v35, v37, v44);

    *(v28 + 14) = v38;
    *(v28 + 22) = 2085;
    sub_29D8AC344();
    v39 = sub_29D93AD38();
    v41 = v40;
    (*(v7 + 8))(v10, v6);
    v42 = sub_29D6C2364(v39, v41, v44);

    *(v28 + 24) = v42;
    _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s] No data for display type %{sensitive}s in PDF page for %{sensitive}s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v29, -1, -1);
    MEMORY[0x29ED6BE30](v28, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return 2;
}

unint64_t sub_29D8F4BBC()
{
  result = qword_2A17B7B70;
  if (!qword_2A17B7B70)
  {
    type metadata accessor for AFibBurdenPDFChartViewModel(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B7B70);
  }

  return result;
}

uint64_t sub_29D8F4C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8F4C6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D8F4CCC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v8 = sub_29D9334A8();
  if (a1)
  {
    v37 = a3;
    v10 = [a2 minimumQuantity];
    if (v10 && (v11 = v10, [v10 _value], v11, (v12 = objc_msgSend(a2, sel_maximumQuantity)) != 0) && (v13 = v12, objc_msgSend(v12, sel__value), v13, (v14 = objc_msgSend(v37, sel_minimumQuantity)) != 0) && (v15 = v14, objc_msgSend(v14, sel__value), v15, (v16 = objc_msgSend(v37, sel_maximumQuantity)) != 0) && (v17 = v16, objc_msgSend(v16, sel__value), v17, (v18 = objc_msgSend(a2, sel_averageQuantity)) != 0) && (v19 = v18, objc_msgSend(v18, sel__value), v19, (v20 = objc_msgSend(v37, sel_averageQuantity)) != 0))
    {
      v21 = v20;
      [v20 _value];

      v22 = [objc_opt_self() millimeterOfMercuryUnit];
      v23 = [v22 unitString];

      sub_29D939D68();
      sub_29D9334A8();
      sub_29D9334A8();
      v24 = sub_29D9334A8();
      MEMORY[0x2A1C7C4A8](v24, v25);
      sub_29D934F08();
      v26 = sub_29D9370F8();
      v27 = MEMORY[0x29EDC2C70];
      a4[3] = v26;
      a4[4] = v27;
      sub_29D693F78(a4);
      sub_29D9370E8();
    }

    else
    {

      if (qword_2A1A24658 != -1)
      {
        swift_once();
      }

      v28 = sub_29D937898();
      sub_29D69C6C0(v28, qword_2A1A2BF10);
      v29 = sub_29D937878();
      v30 = sub_29D93A288();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v38 = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_29D6C2364(0xD000000000000028, 0x800000029D96E8A0, &v38);
        _os_log_impl(&dword_29D677000, v29, v30, "[%{public}s] Expected data, missing statistics for summary section", v31, 0xCu);
        sub_29D69417C(v32);
        MEMORY[0x29ED6BE30](v32, -1, -1);
        MEMORY[0x29ED6BE30](v31, -1, -1);
      }

      v33 = sub_29D9370A8();
      v34 = MEMORY[0x29EDC2C58];
      a4[3] = v33;
      a4[4] = v34;
      sub_29D693F78(a4);
      sub_29D937098();
    }
  }

  else
  {
    MEMORY[0x2A1C7C4A8](v8, v9);
    sub_29D934F08();
    v35 = sub_29D9370F8();
    v36 = MEMORY[0x29EDC2C70];
    a4[3] = v35;
    a4[4] = v36;
    sub_29D693F78(a4);
    sub_29D9370E8();
  }
}

uint64_t sub_29D8F52A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a1;
  sub_29D93AD38();
  sub_29D934FC8();
  v5 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v6 = sub_29D939D28();

  type metadata accessor for Key(0);
  sub_29D7DB4F4();
  v7 = sub_29D939C58();

  v8 = [v5 initWithString:v6 attributes:v7];

  v13[3] = sub_29D9370F8();
  v13[4] = MEMORY[0x29EDC2C70];
  sub_29D693F78(v13);
  sub_29D9370C8();

  v9 = sub_29D935808();
  sub_29D69417C(v13);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93DDB0;
  *(v10 + 32) = v9;
  v11 = MEMORY[0x29ED65BE0]();

  return v11;
}

uint64_t sub_29D8F5460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v45 = a8;
  v44 = a7;
  v43 = a6;
  v42 = a5;
  v41 = a4;
  v40 = a15;
  sub_29D8F6B44(0, &qword_2A17B4E38, MEMORY[0x29EDC2C48], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v27 - 8, v28);
  v30 = &v40 - v29;
  v31 = sub_29D937068();
  MEMORY[0x2A1C7C4A8](v31 - 8, v32);
  v33 = sub_29D934EE8();
  v34 = [v33 CGColor];

  sub_29D934EF8();
  sub_29D937038();
  v35 = sub_29D937048();
  (*(*(v35 - 8) + 56))(v30, 0, 1, v35);
  sub_29D934FE8();
  sub_29D937058();
  v46 = a1;
  v47 = a2;
  v48 = a3;
  v49 = v41;
  v50 = v42;
  v51 = v43;
  v52 = v44;
  v53 = a9;
  v54 = a10;
  v55 = v45;
  v56 = v40;
  v57 = a16;
  v58 = a11;
  v59 = a12;
  v60 = a17;
  v61 = a18;
  v62 = a13;
  v63 = a14;
  v64[3] = sub_29D937088();
  v64[4] = MEMORY[0x29EDC2C50];
  sub_29D693F78(v64);
  sub_29D937078();
  v36 = sub_29D935808();
  sub_29D69417C(v64);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_29D93DDB0;
  *(v37 + 32) = v36;
  v38 = MEMORY[0x29ED65BE0]();

  return v38;
}

uint64_t sub_29D8F57A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v78 = a1;
  sub_29D93AD38();
  sub_29D934FC8();
  v26 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v27 = sub_29D939D28();

  type metadata accessor for Key(0);
  sub_29D7DB4F4();
  v28 = sub_29D939C58();

  v29 = [v26 initWithString:v27 attributes:v28];

  v30 = sub_29D9370F8();
  v80 = v30;
  v81 = MEMORY[0x29EDC2C70];
  sub_29D693F78(&v78);
  sub_29D9370C8();

  v31 = sub_29D935808();
  result = sub_29D69417C(&v78);
  if ((*&a9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (a9 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a9 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v78 = sub_29D93AD38();
  v79 = v33;
  result = MEMORY[0x29ED6A240](45, 0xE100000000000000);
  if ((*&a10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a10 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a10 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v75 = v31;
  v34 = sub_29D93AD38();
  MEMORY[0x29ED6A240](v34);

  sub_29D934FC8();
  v35 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v36 = sub_29D939D28();

  v37 = sub_29D939C58();

  v38 = [v35 initWithString:v36 attributes:v37];

  v78 = 32;
  v79 = 0xE100000000000000;
  MEMORY[0x29ED6A240](a8, a15);
  sub_29D934F58();
  v39 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v40 = sub_29D939D28();

  v41 = sub_29D939C58();

  v42 = [v39 initWithString:v40 attributes:v41];

  [v38 appendAttributedString_];
  MEMORY[0x2A1C7C4A8](v43, v44);
  v80 = v30;
  v81 = MEMORY[0x29EDC2C70];
  sub_29D693F78(&v78);
  sub_29D9370C8();

  v45 = sub_29D935808();
  result = sub_29D69417C(&v78);
  if ((*&a11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a11 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a11 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v78 = sub_29D93AD38();
  v79 = v46;
  result = MEMORY[0x29ED6A240](45, 0xE100000000000000);
  if ((*&a12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a12 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a12 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v74 = v45;
  v47 = sub_29D93AD38();
  MEMORY[0x29ED6A240](v47);

  sub_29D934FC8();
  v48 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v49 = sub_29D939D28();

  v50 = sub_29D939C58();

  v51 = [v48 initWithString:v49 attributes:v50];

  v78 = 32;
  v79 = 0xE100000000000000;
  MEMORY[0x29ED6A240](a8, a15);
  sub_29D934F58();
  v52 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v53 = sub_29D939D28();

  v54 = sub_29D939C58();

  v55 = [v52 initWithString:v53 attributes:v54];

  [v51 appendAttributedString_];
  MEMORY[0x2A1C7C4A8](v56, v57);
  v80 = v30;
  v81 = MEMORY[0x29EDC2C70];
  sub_29D693F78(&v78);
  sub_29D9370C8();

  v58 = sub_29D935808();
  result = sub_29D69417C(&v78);
  if ((*&a13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a13 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a13 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v78 = sub_29D93AD38();
  v79 = v59;
  result = MEMORY[0x29ED6A240](47, 0xE100000000000000);
  if ((*&a14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a14 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a14 < 9.22337204e18)
  {
    v60 = sub_29D93AD38();
    v76 = v58;
    MEMORY[0x29ED6A240](v60);

    sub_29D934FC8();
    v61 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v62 = sub_29D939D28();

    v63 = sub_29D939C58();

    v64 = [v61 initWithString:v62 attributes:v63];

    v78 = 32;
    v79 = 0xE100000000000000;
    MEMORY[0x29ED6A240](a8, a15);
    sub_29D934F58();
    v65 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v66 = sub_29D939D28();

    v67 = sub_29D939C58();

    v68 = [v65 initWithString:v66 attributes:v67];

    [v64 appendAttributedString_];
    MEMORY[0x2A1C7C4A8](v69, v70);
    v80 = v30;
    v81 = MEMORY[0x29EDC2C70];
    sub_29D693F78(&v78);
    sub_29D9370C8();

    v71 = sub_29D935808();
    sub_29D69417C(&v78);
    sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_29D946CA0;
    *(v72 + 32) = v75;
    *(v72 + 40) = v74;
    *(v72 + 48) = v76;
    *(v72 + 56) = v71;
    v73 = MEMORY[0x29ED65BE0]();

    return v73;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_29D8F62AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = sub_29D936678();
  v8 = MEMORY[0x29EDC2868];
  v15 = v7;
  v16 = MEMORY[0x29EDC2868];
  sub_29D693F78(v14);
  sub_29D936668();
  v9 = sub_29D935808();
  sub_29D69417C(v14);
  v15 = v7;
  v16 = v8;
  sub_29D693F78(v14);
  sub_29D936668();
  v10 = sub_29D935808();
  sub_29D69417C(v14);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93F680;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v12 = MEMORY[0x29ED65BE0]();

  return v12;
}

uint64_t sub_29D8F63FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v17 = sub_29D936FC8();
  v18 = MEMORY[0x29EDC2C28];
  sub_29D693F78(v16);
  sub_29D8F65BC(a4 & 1);
  v7 = sub_29D935808();
  sub_29D69417C(v16);
  sub_29D934F78();
  v8 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v9 = sub_29D939D28();
  type metadata accessor for Key(0);
  sub_29D7DB4F4();
  v10 = sub_29D939C58();

  v11 = [v8 initWithString:v9 attributes:v10];

  v17 = sub_29D69567C(0, &qword_2A17B47E8, 0x29EDB9F30);
  v18 = MEMORY[0x29EDC2CE0];
  v16[0] = v11;
  v12 = sub_29D935808();
  sub_29D69417C(v16);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D93F680;
  *(v13 + 32) = v7;
  *(v13 + 40) = v12;
  v14 = MEMORY[0x29ED65BE0]();

  return v14;
}

void sub_29D8F65BC(char a1)
{
  v2 = objc_opt_self();
  if (a1)
  {
    v3 = 8.0;
  }

  else
  {
    v3 = 7.0;
  }

  v4 = &selRef_systemPinkColor;
  if ((a1 & 1) == 0)
  {
    v4 = &selRef_blackColor;
  }

  v5 = [v2 *v4];
  v6 = [objc_opt_self() hk:v3 compactFontOfSize:*MEMORY[0x29EDC76D8] weight:?];
  v7 = [objc_opt_self() configurationWithFont_];

  v8 = sub_29D939D28();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  if (v9)
  {

    v10 = v5;
    sub_29D934ED8();
    sub_29D936FB8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D8F6794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29D936678();
  v4 = MEMORY[0x29EDC2868];
  v11 = v3;
  v12 = MEMORY[0x29EDC2868];
  sub_29D693F78(v10);
  sub_29D936668();
  v5 = sub_29D935808();
  sub_29D69417C(v10);
  v11 = v3;
  v12 = v4;
  sub_29D693F78(v10);
  sub_29D936668();
  v6 = sub_29D935808();
  sub_29D69417C(v10);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29D93F680;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v8 = MEMORY[0x29ED65BE0]();

  return v8;
}

uint64_t sub_29D8F68D4(uint64_t a1, uint64_t a2)
{
  sub_29D934F78();
  v2 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v3 = sub_29D939D28();
  type metadata accessor for Key(0);
  sub_29D7DB4F4();
  v4 = sub_29D939C58();

  v5 = [v2 initWithString:v3 attributes:v4];

  v10[3] = sub_29D69567C(0, &qword_2A17B47E8, 0x29EDB9F30);
  v10[4] = MEMORY[0x29EDC2CE0];
  v10[0] = v5;
  v6 = sub_29D935808();
  sub_29D69417C(v10);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29D93DDB0;
  *(v7 + 32) = v6;
  v8 = MEMORY[0x29ED65BE0]();

  return v8;
}

uint64_t sub_29D8F6A3C(void *a1)
{
  v7[3] = sub_29D69567C(0, &qword_2A17B7B78, 0x29EDBA038);
  v7[4] = MEMORY[0x29EDC2CE0];
  v7[0] = a1;
  v2 = a1;
  v3 = sub_29D935808();
  sub_29D69417C(v7);
  sub_29D8F6B44(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93DDB0;
  *(v4 + 32) = v3;
  v5 = MEMORY[0x29ED65BE0]();

  return v5;
}

void sub_29D8F6B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8F6C80@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D9386B8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D938818();
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9389D8();
  sub_29D938978();
  return sub_29D8F6D54(v9, v5, a1);
}

uint64_t sub_29D8F6D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29D9376C8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D938818();
  (*(*(v11 - 8) + 32))(a3, a1, v11);
  v12 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs(0);
  v13 = v12[5];
  v14 = sub_29D9386B8();
  (*(*(v14 - 8) + 32))(a3 + v13, a2, v14);
  *(a3 + v12[6]) = 0x4024000000000000;
  *(a3 + v12[7]) = 0x4030000000000000;
  *(a3 + v12[8]) = 0x4010000000000000;
  *(a3 + v12[9]) = 0x4020000000000000;
  v15 = v12[10];
  v16 = [objc_opt_self() systemMintColor];
  *(a3 + v15) = sub_29D939528();
  v17 = v12[11];
  if (qword_2A17B0E20 != -1)
  {
    swift_once();
  }

  v18 = sub_29D69C6C0(v6, qword_2A17D1150);
  v19 = *(v7 + 16);
  v19(v10, v18, v6);
  *(a3 + v17) = sub_29D9395E8();
  v20 = v12[12];
  *(a3 + v20) = sub_29D939518();
  *(a3 + v12[13]) = 0x4008000000000000;
  v21 = (a3 + v12[14]);
  *v21 = sub_29D938EE8();
  v21[1] = 1056964608;
  *(a3 + v12[15]) = 0x4041000000000000;
  *(a3 + v12[16]) = 0x4030000000000000;
  v22 = v12[17];
  sub_29D8F7384(0, &qword_2A17B5BE0, MEMORY[0x29EDC9E90]);
  v23 = swift_allocObject();
  v31 = xmmword_29D93F680;
  *(v23 + 16) = xmmword_29D93F680;
  if (qword_2A17B0E10 != -1)
  {
    swift_once();
  }

  v24 = sub_29D69C6C0(v6, qword_2A17D1120);
  v19(v10, v24, v6);
  *(v23 + 32) = sub_29D9395E8();
  if (qword_2A17B0E18 != -1)
  {
    swift_once();
  }

  v25 = sub_29D69C6C0(v6, qword_2A17D1138);
  v19(v10, v25, v6);
  *(v23 + 40) = sub_29D9395E8();
  *(a3 + v22) = v23;
  v26 = v12[18];
  v27 = swift_allocObject();
  *(v27 + 16) = v31;
  if (qword_2A17B0E00 != -1)
  {
    swift_once();
  }

  v28 = sub_29D69C6C0(v6, qword_2A17D10F0);
  v19(v10, v28, v6);
  *(v27 + 32) = sub_29D9395E8();
  if (qword_2A17B0E08 != -1)
  {
    swift_once();
  }

  v29 = sub_29D69C6C0(v6, qword_2A17D1108);
  v19(v10, v29, v6);
  result = sub_29D9395E8();
  *(v27 + 40) = result;
  *(a3 + v26) = v27;
  return result;
}

uint64_t type metadata accessor for LearnHypertensionJournalSummaryViewSpecs(uint64_t a1)
{
  result = qword_2A17B7B80;
  if (!qword_2A17B7B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8F7224(uint64_t a1)
{
  sub_29D938818();
  if (v1 <= 0x3F)
  {
    sub_29D9386B8();
    if (v2 <= 0x3F)
    {
      sub_29D8F732C();
      if (v3 <= 0x3F)
      {
        sub_29D8F7384(319, &qword_2A17B7B90, MEMORY[0x29EDC9A40]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29D8F732C()
{
  if (!qword_2A17B3FB0)
  {
    v0 = sub_29D938C48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3FB0);
    }
  }
}

void sub_29D8F7384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDBCA98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for AFibBurdenPDFAFibChart(uint64_t a1)
{
  result = qword_2A17B7B98;
  if (!qword_2A17B7B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8F744C(uint64_t a1)
{
  sub_29D8FA8F0(319, &qword_2A17B1E90, MEMORY[0x29EDCA210], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AFibBurdenPDFChartViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_29D8F7524();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_29D8F7524()
{
  result = qword_2A17B7BA8;
  if (!qword_2A17B7BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B7BA8);
  }

  return result;
}

uint64_t sub_29D8F7594(uint64_t a1)
{
  v2 = sub_29D938828();
  MEMORY[0x2A1C7C4A8](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29D938A18();
}

uint64_t sub_29D8F765C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v148 = a1;
  v3 = sub_29D938828();
  v146 = *(v3 - 8);
  v147 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v145 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D5530(0, &qword_2A17B1EB0, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v141 = &v116 - v8;
  sub_29D8FA1E0(0);
  v129 = v9;
  v127 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v126 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FAD68(0);
  v132 = v12;
  v130 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v128 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FAE3C(0);
  v138 = v15;
  v133 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v131 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FAF5C(0);
  v140 = v18;
  v139 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v135 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FB3F0(0, &qword_2A17B7C48, sub_29D8FB0F0, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v136 = v21;
  MEMORY[0x2A1C7C4A8](v21, v22);
  v143 = &v116 - v23;
  sub_29D8FA2B8(0);
  v144 = v24;
  v142 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v150 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6C48(0);
  v123 = v27;
  v29 = MEMORY[0x2A1C7C4A8](v27, v28);
  v121 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v119 = &v116 - v32;
  v33 = sub_29D9339F8();
  v122 = *(v33 - 8);
  v35 = MEMORY[0x2A1C7C4A8](v33, v34);
  v37 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35, v38);
  v40 = &v116 - v39;
  sub_29D6D6634(0);
  v124 = v41;
  MEMORY[0x2A1C7C4A8](v41, v42);
  v151 = &v116 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29D9331D8();
  v45 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44, v46);
  v48 = &v116 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for AFibBurdenPDFAFibChart(0);
  v50 = v2 + v49[6];
  v51 = v2 + v49[7];
  v52 = *v51;
  v53 = *(v51 + 2);
  v54 = v49[9];
  v117 = v49[8];
  v125 = v2;
  v118 = *(v2 + v54);
  v55 = v51[8];
  v56 = (v50 + *(type metadata accessor for AFibBurdenPDFChartViewModel(0) + 32));
  v57 = *v56;
  v59 = v56[1];
  v58 = v56[2];
  if (v57 == 2)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = v59;
  }

  if (v57 == 2)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = v58;
  }

  sub_29D8BE424(v60, v61, v57 == 2, 2, v52, v55, v53, &v153);
  v134 = v45;
  v62 = *(v45 + 16);
  v120 = v50;
  v137 = v44;
  v62(v48, v50, v44);
  sub_29D9331A8();
  v149 = v48;
  sub_29D933178();
  sub_29D8FB508(&qword_2A17B4730, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  result = sub_29D939CD8();
  if (result)
  {
    v117 += v125;
    v64 = v122;
    v65 = *(v122 + 32);
    v66 = v119;
    v67 = v40;
    v68 = v33;
    (v65)(v119, v67, v33);
    v69 = v123;
    (v65)(v66 + *(v123 + 48), v37, v33);
    v70 = v121;
    sub_29D8FB550(v66, v121, sub_29D6D6C48);
    v125 = *(v69 + 48);
    v71 = v151;
    v65();
    v72 = *(v64 + 8);
    v72(v125 + v70, v68);
    sub_29D8FB5B8(v66, v70, sub_29D6D6C48);
    v73 = *(v69 + 48);
    v74 = v124;
    (v65)(v71 + *(v124 + 36), v70 + v73, v68);
    v72(v70, v68);
    v75 = v150;
    v76 = sub_29D8F84C4(v120, v118, v150);
    v125 = &v116;
    MEMORY[0x2A1C7C4A8](v76, v77);
    v78 = v149;
    *(&v116 - 2) = v75;
    *(&v116 - 1) = v78;
    sub_29D8FA244(0);
    sub_29D8FAA90();
    v79 = v126;
    sub_29D937E58();
    v80 = sub_29D938028();
    v123 = *(*(v80 - 8) + 56);
    v81 = v141;
    (v123)(v141, 1, 1, v80);
    v82 = sub_29D8FB508(&qword_2A17B7C30, sub_29D8FA1E0, MEMORY[0x29EDB8690]);
    v83 = sub_29D6D66C8();
    v84 = v128;
    v85 = v129;
    sub_29D939348();
    sub_29D7D53D4(v81);
    v86 = (*(v127 + 8))(v79, v85);
    MEMORY[0x2A1C7C4A8](v86, v87);
    *(&v116 - 2) = v117;
    *&v154 = v85;
    *(&v154 + 1) = v74;
    *&v155 = v82;
    *(&v155 + 1) = v83;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v89 = MEMORY[0x29EDB8608];
    v90 = MEMORY[0x29EDB8600];
    v91 = v131;
    v92 = v132;
    sub_29D939328();
    (*(v130 + 8))(v84, v92);
    v152 = v153;
    (v123)(v81, 1, 1, v80);
    sub_29D6D7108(0, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    v94 = v93;
    *&v154 = v92;
    *(&v154 + 1) = v89;
    *&v155 = OpaqueTypeConformance2;
    *(&v155 + 1) = v90;
    v95 = swift_getOpaqueTypeConformance2();
    v96 = sub_29D6D69EC();
    v97 = v135;
    v98 = v138;
    sub_29D939358();
    sub_29D7D53D4(v81);
    v99 = (*(v133 + 8))(v91, v98);
    MEMORY[0x2A1C7C4A8](v99, v100);
    *(&v116 - 2) = &v153;
    *&v154 = v98;
    *(&v154 + 1) = v94;
    *&v155 = v95;
    *(&v155 + 1) = v96;
    swift_getOpaqueTypeConformance2();
    v101 = v143;
    v102 = v140;
    sub_29D939338();
    (*(v139 + 8))(v97, v102);
    sub_29D9398B8();
    sub_29D938718();
    v103 = (v101 + *(v136 + 36));
    v104 = v155;
    *v103 = v154;
    v103[1] = v104;
    v103[2] = v156;
    KeyPath = swift_getKeyPath();
    v106 = [objc_opt_self() sharedApplication];
    v107 = [v106 userInterfaceLayoutDirection];

    sub_29D8FB2C0(v151, sub_29D6D6634);
    v109 = v146;
    v108 = v147;
    v110 = MEMORY[0x29EDBC548];
    if (v107 != 1)
    {
      v110 = MEMORY[0x29EDBC540];
    }

    v111 = v145;
    (*(v146 + 104))(v145, *v110, v147);
    sub_29D8FB320(0);
    v113 = v148;
    v114 = (v148 + *(v112 + 36));
    sub_29D7D5530(0, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    (*(v109 + 32))(v114 + *(v115 + 28), v111, v108);
    *v114 = KeyPath;
    sub_29D68A2CC(v101, v113);
    (*(v142 + 8))(v150, v144);
    (*(v134 + 8))(v149, v137);
    return sub_29D6D6E00(&v153);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8F84C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v37[2] = a3;
  v5 = type metadata accessor for AFibBurdenPDFChartViewModel(0);
  v6 = (v5 - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v10 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FB550(a1, v10, type metadata accessor for AFibBurdenPDFChartViewModel);
  type metadata accessor for AFibBurdenPDFAFibAnnotationFormatter(0);
  v11 = swift_allocObject();
  sub_29D8FB550(v10, v11 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_viewModel, type metadata accessor for AFibBurdenPDFChartViewModel);
  *(v11 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_unitController) = a2;
  v12 = *&v10[v6[9]];
  *(v11 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_displayType) = v12;
  v13 = *&v10[v6[8]];
  v14 = a2;
  v15 = v12;
  v16 = v13;
  sub_29D8FB2C0(v10, type metadata accessor for AFibBurdenPDFChartViewModel);
  *(v11 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_unit) = v16;
  v42 = *(a1 + v6[7]);
  sub_29D8FB550(a1, v10, type metadata accessor for AFibBurdenPDFChartViewModel);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_29D8FB5B8(v10, v18 + v17, type metadata accessor for AFibBurdenPDFChartViewModel);
  *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  sub_29D7D5530(0, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
  v37[1] = v19;
  v37[0] = sub_29D9331D8();
  sub_29D8FA3BC(0);
  sub_29D6D6118();
  sub_29D8FA574(255);
  v21 = v20;
  sub_29D8FB3F0(255, &qword_2A17B7C08, sub_29D69A8C4, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v23 = v22;
  sub_29D8FA6A4(255);
  v25 = v24;
  sub_29D8FA7A4(255);
  v27 = v26;
  sub_29D8FA86C(255);
  v29 = v28;
  v30 = sub_29D937F78();
  sub_29D935E88();
  v38 = v30;
  v39 = MEMORY[0x29EDB86E0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v29;
  v39 = MEMORY[0x29EDBCA98];
  v40 = OpaqueTypeConformance2;
  v41 = MEMORY[0x29EDBCA88];
  v32 = swift_getOpaqueTypeConformance2();
  v38 = v27;
  v39 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v38 = v25;
  v39 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_29D8FA940();
  v38 = v21;
  v39 = v23;
  v40 = v34;
  v41 = v35;
  swift_getOpaqueTypeConformance2();
  sub_29D8FB508(&qword_2A17B1F88, type metadata accessor for AFibBurdenPDFChartPoint, &unk_29D951654);
  return sub_29D9397B8();
}

uint64_t sub_29D8F88D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a1;
  v74 = a3;
  sub_29D8FA2B8(0);
  v79 = v4;
  v76 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v75 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D9339F8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FB3F0(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = v56 - v14;
  v65 = sub_29D937F78();
  v80 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65, v16);
  v18 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FA9F8(0);
  v78 = v19;
  v64 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v20);
  v63 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D61A0(0);
  v71 = v22;
  v69 = *(v22 - 8);
  v24 = MEMORY[0x2A1C7C4A8](v22, v23);
  v67 = v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v66 = v56 - v28;
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v62 = v56 - v31;
  MEMORY[0x2A1C7C4A8](v30, v32);
  v77 = v56 - v33;
  sub_29D938C18();
  v70 = a2;
  sub_29D9331A8();
  sub_29D937D48();

  v34 = *(v8 + 8);
  v61 = v11;
  v68 = v8 + 8;
  v59 = v34;
  v34(v11, v7);
  v60 = v15;
  v72 = v7;
  sub_29D937F48();
  if (qword_2A17B0C88 != -1)
  {
    swift_once();
  }

  v58 = qword_2A17D0CC0;
  v83[0] = qword_2A17D0CC0;

  v35 = v63;
  v36 = v65;
  v37 = MEMORY[0x29EDBCA98];
  v38 = MEMORY[0x29EDB86E0];
  v39 = MEMORY[0x29EDBCA88];
  sub_29D937C48();
  v40 = *(v80 + 8);
  v80 += 8;
  v57 = v40;
  v40(v18, v36);
  sub_29D9386D8();
  v83[0] = v36;
  v83[1] = v37;
  v83[2] = v38;
  v83[3] = v39;
  v56[1] = swift_getOpaqueTypeConformance2();
  v41 = v78;
  sub_29D937C98();
  sub_29D6D70B4(v82);
  v64 = *(v64 + 8);
  (v64)(v35, v41);
  sub_29D938C18();
  v42 = v61;
  sub_29D933178();
  v43 = v72;
  sub_29D937D48();

  v59(v42, v43);
  sub_29D937F48();
  v83[0] = v58;
  sub_29D937C48();

  v57(v18, v36);
  sub_29D9386D8();
  v44 = v62;
  v45 = v78;
  sub_29D937C98();
  sub_29D6D70B4(v83);
  (v64)(v35, v45);
  v47 = v75;
  v46 = v76;
  (*(v76 + 16))(v75, v73, v79);
  v81[0] = v47;
  v48 = v69;
  v49 = *(v69 + 16);
  v50 = v66;
  v51 = v77;
  v52 = v71;
  v49(v66, v77, v71);
  v81[1] = v50;
  v53 = v67;
  v49(v67, v44, v52);
  v81[2] = v53;
  sub_29D90AAC4(v81, v74);
  v54 = *(v48 + 8);
  v54(v44, v52);
  v54(v51, v52);
  v54(v53, v52);
  v54(v50, v52);
  return (*(v46 + 8))(v47, v79);
}

uint64_t sub_29D8F9158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a3;
  v89 = a2;
  v102 = a4;
  v5 = type metadata accessor for AFibBurdenPDFChartPoint(0);
  v6 = *(v5 - 8);
  v87 = v5 - 8;
  v95 = v6;
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v96 = v8;
  v97 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D937DD8();
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v99 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_29D938C38();
  v93 = *(v94 - 8);
  MEMORY[0x2A1C7C4A8](v94, v12);
  v92 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D7108(0, &qword_2A17B1F90, MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v84 = v73 - v16;
  v17 = sub_29D9339F8();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FB3F0(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v24 = MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v103 = v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v73[1] = v73 - v27;
  v79 = sub_29D937F78();
  v80 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79, v28);
  v77 = v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FA86C(0);
  v82 = v30;
  v83 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30, v31);
  v76 = v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FA7A4(0);
  v85 = v33;
  v86 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v34);
  v78 = v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FA6A4(0);
  v75 = v36;
  v88 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36, v37);
  v81 = v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FA574(0);
  v91 = v39;
  v90 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39, v40);
  v74 = v73 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D938C18();
  sub_29D9331A8();
  sub_29D937D48();

  v42 = *(v18 + 8);
  v42(v21, v17);
  sub_29D938C18();
  sub_29D933178();
  sub_29D937D48();

  v42(v21, v17);
  sub_29D938C18();
  v43 = *(v87 + 28);
  v87 = a1;
  v44 = *(a1 + v43);
  v45 = [*(v89 + *(type metadata accessor for AFibBurdenPDFChartViewModel(0) + 28)) presentation];
  [v45 scaleFactor];
  v47 = v46;

  v108[0] = v44 * v47;
  sub_29D937D48();

  v48 = v77;
  v49 = v75;
  sub_29D937F68();
  v50 = MEMORY[0x29EDB86E0];
  v51 = v76;
  v52 = *&v79;
  sub_29D937C58();
  v53 = v74;
  (*(v80 + 8))(v48, COERCE_DOUBLE(*&v52));
  v104 = sub_29D8F4468();
  v108[0] = v52;
  v108[1] = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = MEMORY[0x29EDBCA98];
  v56 = MEMORY[0x29EDBCA88];
  v57 = v78;
  v58 = v82;
  sub_29D937C48();

  (*(v83 + 8))(v51, v58);
  sub_29D9386D8();
  v104 = v58;
  v105 = v55;
  v106 = OpaqueTypeConformance2;
  v107 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v81;
  v61 = v85;
  sub_29D937C98();
  sub_29D6D70B4(v108);
  v62 = v61;
  (*(v86 + 8))(v57, v61);
  v63 = v93;
  v64 = v92;
  v65 = v94;
  (*(v93 + 104))(v92, *MEMORY[0x29EDBC6F8], v94);
  v104 = v62;
  v105 = v59;
  v66 = swift_getOpaqueTypeConformance2();
  sub_29D937C38();
  (*(v63 + 8))(v64, v65);
  (*(v88 + 8))(v60, v49);
  v67 = v99;
  if (v44 >= 0.9)
  {
    sub_29D937DC8();
  }

  else
  {
    sub_29D937DB8();
  }

  v68 = v97;
  sub_29D8FB550(v87, v97, type metadata accessor for AFibBurdenPDFChartPoint);
  v69 = (*(v95 + 80) + 24) & ~*(v95 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = v98;
  sub_29D8FB5B8(v68, v70 + v69, type metadata accessor for AFibBurdenPDFChartPoint);

  sub_29D9398A8();
  sub_29D8FB3F0(0, &qword_2A17B7C08, sub_29D69A8C4, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v104 = v49;
  v105 = v66;
  swift_getOpaqueTypeConformance2();
  sub_29D8FA940();
  v71 = v91;
  sub_29D937C08();

  (*(v100 + 8))(v67, v101);
  return (*(v90 + 8))(v53, v71);
}

double sub_29D8F9D84@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_29D933468();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  sub_29D930258(a1);
  v6 = sub_29D9392E8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  KeyPath = swift_getKeyPath();
  sub_29D9398A8();
  sub_29D938718();
  *&v15[39] = v18;
  *&v15[23] = v17;
  *&v15[7] = v16;
  *(a2 + 41) = *v15;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 57) = *&v15[16];
  result = *&v15[32];
  *(a2 + 73) = *&v15[32];
  *(a2 + 88) = *(&v18 + 1);
  return result;
}

uint64_t sub_29D8F9EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D8FB508(&qword_2A17B7BC0, type metadata accessor for AFibBurdenPDFAFibChart, &unk_29D954BF8);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29D8F9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29D8FB508(&qword_2A17B7BC0, type metadata accessor for AFibBurdenPDFAFibChart, &unk_29D954BF8);

  return a4(a1, a2, v6);
}

uint64_t sub_29D8FA000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D8FB508(&qword_2A17B7BB8, type metadata accessor for AFibBurdenPDFAFibChart, &unk_29D954BB8);
  *v3 = v1;
  v3[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29D8FA188(uint64_t a1)
{
  result = sub_29D8FB508(&qword_2A17B7BC0, type metadata accessor for AFibBurdenPDFAFibChart, &unk_29D954BF8);
  *(a1 + 8) = result;
  return result;
}

void sub_29D8FA1E0(uint64_t a1)
{
  if (!qword_2A17B7BC8)
  {
    sub_29D8FA244(255);
    sub_29D8FAA90();
    v1 = sub_29D937E68();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7BC8);
    }
  }
}

void sub_29D8FA244(uint64_t a1)
{
  if (!qword_2A17B7BD0)
  {
    sub_29D8FA2B8(255);
    sub_29D6D61A0(255);
    v1 = sub_29D937BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7BD0);
    }
  }
}

void sub_29D8FA2B8(uint64_t a1)
{
  if (!qword_2A17B7BD8)
  {
    sub_29D7D5530(255, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
    sub_29D9331D8();
    sub_29D8FA3BC(255);
    sub_29D6D6118();
    sub_29D8FB508(&qword_2A17B1EF0, MEMORY[0x29EDB98E8], MEMORY[0x29EDB98F8]);
    v1 = sub_29D9397E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7BD8);
    }
  }
}

void sub_29D8FA3BC(uint64_t a1)
{
  if (!qword_2A17B7BE0)
  {
    sub_29D8FA574(255);
    sub_29D8FB3F0(255, &qword_2A17B7C08, sub_29D69A8C4, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D8FA6A4(255);
    sub_29D8FA7A4(255);
    sub_29D8FA86C(255);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D8FA940();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7BE0);
    }
  }
}

void sub_29D8FA574(uint64_t a1)
{
  if (!qword_2A17B7BE8)
  {
    sub_29D8FA6A4(255);
    sub_29D8FA7A4(255);
    sub_29D8FA86C(255);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7BE8);
    }
  }
}

void sub_29D8FA6A4(uint64_t a1)
{
  if (!qword_2A17B7BF0)
  {
    sub_29D8FA7A4(255);
    sub_29D8FA86C(255);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7BF0);
    }
  }
}

void sub_29D8FA7A4(uint64_t a1)
{
  if (!qword_2A17B7BF8)
  {
    sub_29D8FA86C(255);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7BF8);
    }
  }
}

void sub_29D8FA86C(uint64_t a1)
{
  if (!qword_2A17B7C00)
  {
    sub_29D937F78();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7C00);
    }
  }
}

void sub_29D8FA8F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D8FA940()
{
  result = qword_2A17B7C10;
  if (!qword_2A17B7C10)
  {
    sub_29D8FB3F0(255, &qword_2A17B7C08, sub_29D69A8C4, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D72B0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7C10);
  }

  return result;
}

void sub_29D8FA9F8(uint64_t a1)
{
  if (!qword_2A17B1F00)
  {
    sub_29D937F78();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1F00);
    }
  }
}

unint64_t sub_29D8FAA90()
{
  result = qword_2A17B7C18;
  if (!qword_2A17B7C18)
  {
    sub_29D8FA244(255);
    sub_29D8FAB8C();
    sub_29D8FA9F8(255);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7C18);
  }

  return result;
}

unint64_t sub_29D8FAB8C()
{
  result = qword_2A17B7C20;
  if (!qword_2A17B7C20)
  {
    sub_29D8FA2B8(255);
    sub_29D8FA574(255);
    sub_29D8FB3F0(255, &qword_2A17B7C08, sub_29D69A8C4, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D8FA6A4(255);
    sub_29D8FA7A4(255);
    sub_29D8FA86C(255);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D8FA940();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7C20);
  }

  return result;
}

void sub_29D8FAD68(uint64_t a1)
{
  if (!qword_2A17B7C28)
  {
    sub_29D8FA1E0(255);
    sub_29D6D6634(255);
    sub_29D8FB508(&qword_2A17B7C30, sub_29D8FA1E0, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7C28);
    }
  }
}

void sub_29D8FAE3C(uint64_t a1)
{
  if (!qword_2A17B7C38)
  {
    sub_29D8FAD68(255);
    sub_29D8FA1E0(255);
    sub_29D6D6634(255);
    sub_29D8FB508(&qword_2A17B7C30, sub_29D8FA1E0, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7C38);
    }
  }
}

void sub_29D8FAF5C(uint64_t a1)
{
  if (!qword_2A17B7C40)
  {
    sub_29D8FAE3C(255);
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D8FAD68(255);
    sub_29D8FA1E0(255);
    sub_29D6D6634(255);
    sub_29D8FB508(&qword_2A17B7C30, sub_29D8FA1E0, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7C40);
    }
  }
}

void sub_29D8FB0F0(uint64_t a1)
{
  if (!qword_2A17B7C50)
  {
    sub_29D8FAF5C(255);
    sub_29D8FAE3C(255);
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D8FAD68(255);
    sub_29D8FA1E0(255);
    sub_29D6D6634(255);
    sub_29D8FB508(&qword_2A17B7C30, sub_29D8FA1E0, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7C50);
    }
  }
}

uint64_t sub_29D8FB2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D8FB320(uint64_t a1)
{
  if (!qword_2A17B7C58)
  {
    sub_29D8FB3F0(255, &qword_2A17B7C48, sub_29D8FB0F0, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D7D5530(255, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7C58);
    }
  }
}

void sub_29D8FB3F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D8FB45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFibBurdenPDFChartViewModel(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D8F9158(a1, v2 + v6, v7, a2);
}

uint64_t sub_29D8FB508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D8FB550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8FB5B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_29D8FB620@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AFibBurdenPDFChartPoint(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_29D8F9D84(v4, a1);
}

unint64_t sub_29D8FB6A4()
{
  result = qword_2A17B7C60;
  if (!qword_2A17B7C60)
  {
    sub_29D8FB320(255);
    sub_29D8FB724();
    sub_29D6D74DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7C60);
  }

  return result;
}

unint64_t sub_29D8FB724()
{
  result = qword_2A17B7C68;
  if (!qword_2A17B7C68)
  {
    sub_29D8FB3F0(255, &qword_2A17B7C48, sub_29D8FB0F0, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D8FAF5C(255);
    sub_29D8FAE3C(255);
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D8FAD68(255);
    sub_29D8FA1E0(255);
    sub_29D6D6634(255);
    sub_29D8FB508(&qword_2A17B7C30, sub_29D8FA1E0, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7C68);
  }

  return result;
}

uint64_t sub_29D8FB950(uint64_t *a1, int a2)
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

uint64_t sub_29D8FB998(uint64_t result, int a2, int a3)
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

uint64_t sub_29D8FBA18()
{
  v1 = v0;
  sub_29D7C0420(v0 + 40, &v13);
  if (v14)
  {
    sub_29D6959E8(&v13, &v15);
    goto LABEL_10;
  }

  v2 = sub_29D936338();
  v3 = [v2 profileIdentifier];
  v4 = [v3 type];

  if (v4 != 1)
  {

LABEL_8:
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v2];

  if (!v5)
  {
    goto LABEL_8;
  }

  *(&v16 + 1) = sub_29D6B8230();
  v17 = MEMORY[0x29EDC2EA8];
  *&v15 = v5;
  if (v14)
  {
LABEL_9:
    sub_29D7C0518(&v13);
  }

LABEL_10:
  if (*(&v16 + 1))
  {
    sub_29D6959E8(&v15, v18);
    sub_29D936318();
    v6 = sub_29D8FBD58(&v15);
    sub_29D69417C(&v15);
    sub_29D6945AC(v18, &v15);
    sub_29D8FC1B4(0);
    swift_allocObject();

    sub_29D8FC2D8(&v15, v6);
    v7 = sub_29D936358();
    v9 = *(v1 + 24);
    v8 = *(v1 + 32);
    type metadata accessor for AFibBurdenChartSection(0);
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_29D7B31F0(v7, v9, v8);
    sub_29D8FC0F8(0);
    swift_allocObject();
    v10 = sub_29D935ED8();

    sub_29D69417C(v18);
  }

  else
  {
    sub_29D7C0518(&v15);
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v11, qword_2A1A2BF58);
    v18[0] = 0;
    sub_29D9371E8();
    return 0;
  }

  return v10;
}

uint64_t sub_29D8FBCB0()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  sub_29D8FC9AC();
  v0 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD00000000000003ELL, 0x800000029D962DE0);
  return 0;
}

uint64_t sub_29D8FBD58(void *a1)
{
  v2 = sub_29D9356A8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v22[-v9];
  sub_29D693E2C(a1, a1[3]);
  v11 = sub_29D933EC8();
  v12 = sub_29D93A598();

  sub_29D75A420(0);
  v14 = objc_allocWithZone(v13);
  v15 = v12;
  v16 = sub_29D936A38();
  sub_29D935658();
  sub_29D935618();
  v17 = *(v3 + 8);
  v17(v7, v2);
  v18 = sub_29D935638();
  *v19 = 0x4034000000000000;
  v18(v22, 0);
  sub_29D8FC1D4(&unk_2A17B6100, sub_29D75A420, MEMORY[0x29EDC2988]);
  v20 = sub_29D9355A8();

  v17(v10, v2);
  return v20;
}

uint64_t sub_29D8FBF70()
{
  if (sub_29D8FBA18())
  {
    sub_29D8FC0F8(0);
    sub_29D8FC1D4(&qword_2A17B7C88, sub_29D8FC0F8, MEMORY[0x29EDC24E8]);
    sub_29D935438();
    sub_29D9353F8();
    sub_29D935428();
  }

  else
  {
    sub_29D8FC0F8(0);
    sub_29D8FC1D4(&qword_2A17B7C88, sub_29D8FC0F8, MEMORY[0x29EDC24E8]);
    sub_29D935428();
  }

  sub_29D8FC21C(0);
  sub_29D8FC1D4(&qword_2A17B7C98, sub_29D8FC21C, MEMORY[0x29EDC22A8]);

  v0 = sub_29D9353F8();

  return v0;
}

void sub_29D8FC0F8(uint64_t a1)
{
  if (!qword_2A17B7C70)
  {
    sub_29D8FC1B4(255);
    type metadata accessor for AFibBurdenChartSection(255);
    sub_29D8FC1D4(&qword_2A17B7C80, sub_29D8FC1B4, MEMORY[0x29EDC2030]);
    v1 = sub_29D935EE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7C70);
    }
  }
}

uint64_t sub_29D8FC1D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D8FC21C(uint64_t a1)
{
  if (!qword_2A17B7C90)
  {
    sub_29D8FC0F8(255);
    sub_29D935248();
    sub_29D8FC1D4(&qword_2A17B7C88, sub_29D8FC0F8, MEMORY[0x29EDC24E8]);
    v1 = sub_29D935C38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7C90);
    }
  }
}

void *sub_29D8FC2D8(void *a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  sub_29D7C015C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8FC904(0, &qword_2A17B60E0, MEMORY[0x29EDC2008]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v24 - v14;
  *(v2 + *(*v2 + qword_2A17D1068 + 16)) = 0;
  *(v2 + *(*v2 + qword_2A17D1068 + 24)) = 0;
  v16 = v2 + *(*v2 + qword_2A17D1068 + 32);
  sub_29D6945AC(a1, v16);
  v17 = *MEMORY[0x29EDBA570];
  *(v16 + 40) = *MEMORY[0x29EDBA570];
  (*(v12 + 104))(v15, *MEMORY[0x29EDC1FF8], v11);
  v18 = v17;

  v19 = sub_29D935538();
  sub_29D81F02C(v19 + *(*v19 + qword_2A17D1068 + 32), v28);
  swift_retain_n();
  v27 = sub_29D81EC50();
  sub_29D7C05E8(0, &qword_2A17B4F60, MEMORY[0x29EDC9E90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D93DDB0;
  *(v20 + 32) = sub_29D81E240() & 1;
  sub_29D6AD548();
  sub_29D8FC1D4(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
  sub_29D938518();

  sub_29D8FC1D4(&qword_2A17B4F68, sub_29D7C015C, MEMORY[0x29EDB88B0]);
  v21 = sub_29D938418();
  (*(v6 + 8))(v9, v5);
  sub_29D7C06BC(v28);
  v28[0] = v21;
  swift_allocObject();
  swift_weakInit();

  v22 = sub_29D938588();

  sub_29D69417C(v25);

  *(v19 + *(*v19 + qword_2A17D1068 + 24)) = v22;

  return v19;
}

uint64_t sub_29D8FC768(char a1, uint64_t a2)
{
  sub_29D8FC904(0, &qword_2A17B60E0, MEMORY[0x29EDC2008]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12[-v7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + *(*Strong + qword_2A17D1068 + 16)) = a1 & 1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = MEMORY[0x29EDC2000];
    if ((a1 & 1) == 0)
    {
      v11 = MEMORY[0x29EDC1FF8];
    }

    (*(v5 + 104))(v8, *v11, v4);
    sub_29D935528();
  }

  return result;
}

void sub_29D8FC904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D75A38C(255);
    v7 = v6;
    v8 = sub_29D8FC1D4(&qword_2A17B3C00, sub_29D75A38C, MEMORY[0x29EDC2110]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D8FC9AC()
{
  result = qword_2A17B7CA0;
  if (!qword_2A17B7CA0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B7CA0);
  }

  return result;
}

id sub_29D8FC9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [v3 profileIdentifier];
  v7 = [v6 type];

  if (v7 != 1)
  {
    return 0;
  }

  v8 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
  if (!a3)
  {
    return [v8 initWithFeatureIdentifier:a1 healthStore:v3];
  }

  v9 = v8;
  v10 = sub_29D939D28();
  v11 = [v9 initWithFeatureIdentifier:a1 healthStore:v3 currentCountryCode:v10];

  return v11;
}

uint64_t type metadata accessor for HypertensionNotificationsHypertensionWarning(uint64_t a1)
{
  result = qword_2A17B7CB0;
  if (!qword_2A17B7CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8FCB70()
{
  v1 = (v0 + qword_2A17B7CA8);
  *v1 = 0;
  v1[1] = 0;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();

  return sub_29D936C78();
}

void sub_29D8FCCA8()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243F7D8);
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243F818);
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    v6 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243F858);
    swift_arrayDestroy();
    v7 = sub_29D939D28();

    [v6 setDetailTextAccessibilityIdentifier_];

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v8 = qword_2A1A2C038;
    v9 = sub_29D939D28();
    v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

    v11 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
    v12 = v11;
    [v12 setContentMode_];
    v13 = [v0 contentView];
    [v13 addSubview_];

    v14 = [v0 contentView];
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    v16 = [v0 contentView];
    [v12 hk:v16 alignConstraintsWithView:?];

    v17 = [v12 heightAnchor];
    v18 = [v0 view];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 heightAnchor];

      v21 = [v17 constraintEqualToAnchor:v20 multiplier:0.34];
      [v21 setActive_];

      sub_29D93A538();
      static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243F898);
      swift_arrayDestroy();
      sub_29D936C58();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29D8FD0E4(void *a1)
{
  v1 = a1;
  sub_29D8FCCA8();
}

void sub_29D8FD12C()
{
  v1 = *&v0[qword_2A17B7CA8];
  if (v1)
  {
    swift_unknownObjectRetain();
    sub_29D8FDA44(v0, v1, 2, &unk_2A244E048, &off_2A244E010);

    sub_29D936978();
  }
}

void sub_29D8FD1A0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_29D93A868();
  sub_29D936978();
  v5 = *&v4[qword_2A17B7CA8];
  if (v5)
  {
    swift_unknownObjectRetain();
    sub_29D8FDA44(v4, v5, 2, &unk_2A244E048, &off_2A244E010);

    sub_29D936978();
    sub_29D69417C(v6);
  }

  else
  {
    sub_29D69417C(v6);
  }
}

uint64_t sub_29D8FD2A4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B7CA8);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D8FD2F0(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  v6 = a1;
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446722;
    nullsub_1();
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D969A70, &v22);
    *(v9 + 22) = 2082;
    v14 = sub_29D939DA8();
    v16 = sub_29D6C2364(v14, v15, &v22);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  v17 = *&a2[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = 3;
  *(v18 + 32) = v6;
  *(v18 + 40) = &off_2A2447F28;
  *(v18 + 48) = ObjectType;
  v19 = v6;
  v20 = a2;
  sub_29D8FDCA8(3, v19, sub_29D8FEAC0, v18, v17);
}

uint64_t sub_29D8FD55C(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  v6 = a1;
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446722;
    nullsub_1();
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D969A70, &v22);
    *(v9 + 22) = 2082;
    v14 = sub_29D939DA8();
    v16 = sub_29D6C2364(v14, v15, &v22);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  v17 = *&a2[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = 5;
  *(v18 + 32) = v6;
  *(v18 + 40) = &off_2A2448080;
  *(v18 + 48) = ObjectType;
  v19 = v6;
  v20 = a2;
  sub_29D8FE104(5, v19, sub_29D8FEA84, v18, v17);
}

uint64_t sub_29D8FD7C8(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  v6 = a1;
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446722;
    nullsub_1();
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D969A70, &v22);
    *(v9 + 22) = 2082;
    v14 = sub_29D939DA8();
    v16 = sub_29D6C2364(v14, v15, &v22);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  v17 = *&a2[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 40) = &off_2A24405F0;
  *(v18 + 48) = ObjectType;
  v19 = v6;
  v20 = a2;
  sub_29D8FE628(0, v19, sub_29D8FEAC0, v18, v17);
}

uint64_t sub_29D8FDA44(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v10 = sub_29D937898();
  sub_29D69C6C0(v10, qword_2A1A2C008);
  v11 = a1;
  v12 = sub_29D937878();
  v13 = sub_29D93A2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136446722;
    nullsub_1();
    v16 = sub_29D93AF08();
    v24 = a5;
    v18 = sub_29D6C2364(v16, v17, &v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D969A70, &v25);
    *(v14 + 22) = 2082;
    v19 = sub_29D939DA8();
    v21 = sub_29D6C2364(v19, v20, &v25);

    *(v14 + 24) = v21;
    a5 = v24;
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v15, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = v11;
  *(v22 + 40) = a5;
  *(v22 + 48) = ObjectType;
  sub_29D8E597C(5, a2, a3, v11, a5, ObjectType);
}

uint64_t sub_29D8FDCA8(char a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (a1 == 5)
  {
    sub_29D693E2C((a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider), *(a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider + 24));
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = ObjectType;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_29D8FEABC;
    *(v16 + 24) = v15;

    sub_29D933ED8();

    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;

    sub_29D7CF6A4(sub_29D8FEAB8, v14);
LABEL_10:
  }

  if (a1)
  {
    v18 = 5;
    return a3(v18);
  }

  v31 = a2;
  v32 = &off_2A2447F28;
  sub_29D695734(0, &qword_2A17B7CC0, &protocol descriptor for HypertensionNotificationsOnboardingViewControllerProtocol, 0);
  sub_29D695734(0, &qword_2A17B7CC8, &protocol descriptor for HypertensionNotificationsDetailProviding, 1);
  v11 = a2;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_29D8FE560(v29);
    goto LABEL_15;
  }

  sub_29D679D3C(v29, v33);
  v12 = *(*sub_29D693E2C(v33, v34) + qword_2A17B18C0);
  if (v12 == 2 || (v13 = *(*sub_29D693E2C(v33, v34) + qword_2A17B18C8), v13 == 2))
  {
    sub_29D69417C(v33);
LABEL_15:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v19 = sub_29D937898();
    sub_29D69C6C0(v19, qword_2A1A2C008);
    v20 = sub_29D937878();
    v21 = sub_29D93A298();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33[0] = v23;
      *v22 = 136446466;
      nullsub_1();
      v24 = sub_29D93AF08();
      v26 = sub_29D6C2364(v24, v25, v33);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, v33);
      _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s.%{public}s]: Confirm details screen should provide details", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    v18 = 4;
    return a3(v18);
  }

  if (v12)
  {
    if (v13)
    {
      v27 = 1;
    }

    else
    {
      v28 = objc_opt_self();
      if ([v28 isHeartRateEnabled])
      {
        if ([v28 isWristDetectionEnabled])
        {
          v27 = 5;
        }

        else
        {
          v27 = 3;
        }
      }

      else
      {
        v27 = 2;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  a3(v27);
  return sub_29D69417C(v33);
}

uint64_t sub_29D8FE104(char a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (a1 == 5)
  {
    sub_29D693E2C((a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider), *(a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider + 24));
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = ObjectType;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_29D8FEABC;
    *(v16 + 24) = v15;

    sub_29D933ED8();

    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;

    sub_29D7CF6A4(sub_29D8FEAB8, v14);
LABEL_10:
  }

  if (a1)
  {
    v18 = 5;
    return a3(v18);
  }

  v31 = a2;
  v32 = &off_2A2448080;
  sub_29D695734(0, &qword_2A17B7CC0, &protocol descriptor for HypertensionNotificationsOnboardingViewControllerProtocol, 0);
  sub_29D695734(0, &qword_2A17B7CC8, &protocol descriptor for HypertensionNotificationsDetailProviding, 1);
  v11 = a2;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_29D8FE560(v29);
    goto LABEL_15;
  }

  sub_29D679D3C(v29, v33);
  v12 = *(*sub_29D693E2C(v33, v34) + qword_2A17B18C0);
  if (v12 == 2 || (v13 = *(*sub_29D693E2C(v33, v34) + qword_2A17B18C8), v13 == 2))
  {
    sub_29D69417C(v33);
LABEL_15:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v19 = sub_29D937898();
    sub_29D69C6C0(v19, qword_2A1A2C008);
    v20 = sub_29D937878();
    v21 = sub_29D93A298();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33[0] = v23;
      *v22 = 136446466;
      nullsub_1();
      v24 = sub_29D93AF08();
      v26 = sub_29D6C2364(v24, v25, v33);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, v33);
      _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s.%{public}s]: Confirm details screen should provide details", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    v18 = 4;
    return a3(v18);
  }

  if (v12)
  {
    if (v13)
    {
      v27 = 1;
    }

    else
    {
      v28 = objc_opt_self();
      if ([v28 isHeartRateEnabled])
      {
        if ([v28 isWristDetectionEnabled])
        {
          v27 = 5;
        }

        else
        {
          v27 = 3;
        }
      }

      else
      {
        v27 = 2;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  a3(v27);
  return sub_29D69417C(v33);
}

uint64_t sub_29D8FE560(uint64_t a1)
{
  sub_29D8FE5BC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D8FE5BC(uint64_t a1)
{
  if (!qword_2A17B7CD0)
  {
    sub_29D695734(255, &qword_2A17B7CC8, &protocol descriptor for HypertensionNotificationsDetailProviding, 1);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7CD0);
    }
  }
}

uint64_t sub_29D8FE628(char a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (a1 == 5)
  {
    sub_29D693E2C((a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider), *(a5 + OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider + 24));
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = ObjectType;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_29D8FEA9C;
    *(v16 + 24) = v15;

    sub_29D933ED8();

    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;

    sub_29D7CF6A4(sub_29D8FEAB0, v14);
LABEL_10:
  }

  if (a1)
  {
    v18 = 5;
    return a3(v18);
  }

  v31 = a2;
  v32 = &off_2A24405F0;
  sub_29D695734(0, &qword_2A17B7CC0, &protocol descriptor for HypertensionNotificationsOnboardingViewControllerProtocol, 0);
  sub_29D695734(0, &qword_2A17B7CC8, &protocol descriptor for HypertensionNotificationsDetailProviding, 1);
  v11 = a2;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_29D8FE560(v29);
    goto LABEL_15;
  }

  sub_29D679D3C(v29, v33);
  v12 = *(*sub_29D693E2C(v33, v34) + qword_2A17B18C0);
  if (v12 == 2 || (v13 = *(*sub_29D693E2C(v33, v34) + qword_2A17B18C8), v13 == 2))
  {
    sub_29D69417C(v33);
LABEL_15:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v19 = sub_29D937898();
    sub_29D69C6C0(v19, qword_2A1A2C008);
    v20 = sub_29D937878();
    v21 = sub_29D93A298();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33[0] = v23;
      *v22 = 136446466;
      nullsub_1();
      v24 = sub_29D93AF08();
      v26 = sub_29D6C2364(v24, v25, v33);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, v33);
      _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s.%{public}s]: Confirm details screen should provide details", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    v18 = 4;
    return a3(v18);
  }

  if (v12)
  {
    if (v13)
    {
      v27 = 1;
    }

    else
    {
      v28 = objc_opt_self();
      if ([v28 isHeartRateEnabled])
      {
        if ([v28 isWristDetectionEnabled])
        {
          v27 = 5;
        }

        else
        {
          v27 = 3;
        }
      }

      else
      {
        v27 = 2;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  a3(v27);
  return sub_29D69417C(v33);
}

uint64_t type metadata accessor for HypertensionNotificationsFeatureRegulatoryInfoTransformProvider(uint64_t a1)
{
  result = qword_2A17B7CD8;
  if (!qword_2A17B7CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8FEB54()
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

double sub_29D8FEBF0()
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9336E8();

  return result;
}

void sub_29D8FECB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a3 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_lockedDeliveredCountryCode);
    v5 = MEMORY[0x2A1C7C4A8](a1, a2);

    os_unfair_lock_lock((v4 + 32));
    sub_29D900174((v4 + 16));
    os_unfair_lock_unlock((v4 + 32));
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = a2;
    v19 = sub_29D937878();
    v9 = sub_29D93A288();

    if (os_log_type_enabled(v19, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v10 = 136446466;
      v13 = sub_29D93AF08();
      v15 = sub_29D6C2364(v13, v14, &v20);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2112;
      if (a2)
      {
        v16 = a2;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v10 + 14) = v17;
      *v11 = v18;
      _os_log_impl(&dword_29D677000, v19, v9, "[%{public}s] Unable to retrieve onboarding record with error %@", v10, 0x16u);
      sub_29D900A70(v11, &qword_2A1A21FC0, sub_29D751594);
      MEMORY[0x29ED6BE30](v11, -1, -1);
      sub_29D69417C(v12);
      MEMORY[0x29ED6BE30](v12, -1, -1);
      MEMORY[0x29ED6BE30](v10, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D8FEF38(uint64_t *a1, void *a2)
{

  v4 = [a2 onboardingCompletion];
  if (v4 && (v5 = v4, v6 = [v4 countryCode], v5, v6))
  {
    v7 = sub_29D939D68();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *a1 = v7;
  a1[1] = v9;
}

char *sub_29D8FEFE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D9371B8();
  v3 = [v2 isRequirementSatisfiedWithIdentifier_];

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *&result[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_wristDetectEnabled];
    v6 = result;

    os_unfair_lock_lock((v5 + 20));
    *(v5 + 16) = v3;
    os_unfair_lock_unlock((v5 + 20));
  }

  return result;
}

uint64_t sub_29D8FF0A0(char a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43[2] = a7;
  v45 = a6;
  v12 = sub_29D9339F8();
  v44 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D900880(0, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v19 = v43 - v18;
  v20 = sub_29D933318();
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v25 = 1;
    return a3(v25);
  }

  v43[0] = v24;
  v43[1] = a4;
  v26 = a5;
  *(a5 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_detailsChanged) = a1 & 1;
  sub_29D935A58();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_29D900A70(v19, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
LABEL_12:
    v25 = 2;
    return a3(v25);
  }

  v27 = v21;
  v28 = *(v21 + 32);
  v29 = v43[0];
  v28(v43[0], v19, v20);
  v30 = *MEMORY[0x29EDBAFD0];
  v31 = sub_29D933288();
  (*(v26 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_dateProvider))();
  v32 = sub_29D933958();
  (*(v44 + 8))(v15, v12);
  v33 = [v31 hk:v32 ageWithCurrentDate:?];

  if (v33 >= v30)
  {
    (*(v27 + 8))(v29, v20);
    goto LABEL_12;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v34 = sub_29D937898();
  sub_29D69C6C0(v34, qword_2A1A2C008);
  v35 = sub_29D937878();
  v36 = sub_29D93A2A8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46 = v38;
    *v37 = 136446210;
    v39 = sub_29D93AF08();
    v41 = sub_29D6C2364(v39, v40, &v46);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_29D677000, v35, v36, "[%{public}s] User not old enough to continue onboarding", v37, 0xCu);
    sub_29D69417C(v38);
    MEMORY[0x29ED6BE30](v38, -1, -1);
    MEMORY[0x29ED6BE30](v37, -1, -1);
  }

  a3(0);
  return (*(v27 + 8))(v43[0], v20);
}

uint64_t sub_29D8FF4DC(unsigned __int8 *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (v5 == 2)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v6 = sub_29D937898();
    sub_29D69C6C0(v6, qword_2A1A2C008);
    v7 = sub_29D937878();
    v8 = sub_29D93A298();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136446466;
      v11 = sub_29D93AF08();
      v13 = sub_29D6C2364(v11, v12, &v31);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, &v31);
      _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: Haven't retrieved feature status by the time we got to setup complete", v9, 0x16u);
      v14 = 2;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v10, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);

      return a2(v14);
    }

LABEL_11:

    v14 = 2;
    return a2(v14);
  }

  if (v5)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v15 = sub_29D937898();
    sub_29D69C6C0(v15, qword_2A1A2C008);
    v7 = sub_29D937878();
    v16 = sub_29D93A278();
    if (os_log_type_enabled(v7, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136446466;
      v19 = sub_29D93AF08();
      v21 = sub_29D6C2364(v19, v20, &v31);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, &v31);
      _os_log_impl(&dword_29D677000, v7, v16, "[%{public}s.%{public}s]: Wrist detect enabled, proceeding", v17, 0x16u);
      v14 = 2;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v18, -1, -1);
      MEMORY[0x29ED6BE30](v17, -1, -1);

      return a2(v14);
    }

    goto LABEL_11;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v22 = sub_29D937898();
  sub_29D69C6C0(v22, qword_2A1A2C008);
  v23 = sub_29D937878();
  v24 = sub_29D93A278();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136446466;
    v27 = sub_29D93AF08();
    v29 = sub_29D6C2364(v27, v28, &v31);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, &v31);
    _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s.%{public}s]: Wrist detect disabled, warning", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v26, -1, -1);
    MEMORY[0x29ED6BE30](v25, -1, -1);
  }

  v14 = 3;
  return a2(v14);
}

uint64_t sub_29D8FF944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_29D69C75C();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_featureAvailabilityProvider);
  swift_getObjectType();
  sub_29D93A408();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v13;
  v14[5] = ObjectType;

  swift_unknownObjectRetain();
  sub_29D93A608();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_29D8FFAB0(char a1, void *a2, uint64_t (*a3)(void, void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29D69C75C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    sub_29D939D68();
    sub_29D93A3E8();
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a6;

    sub_29D93A608();

    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v19 = sub_29D937898();
    sub_29D69C6C0(v19, qword_2A1A2C008);
    v20 = a2;
    v21 = sub_29D937878();
    v22 = sub_29D93A288();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v23 = 136446466;
      v26 = sub_29D93AF08();
      v28 = sub_29D6C2364(v26, v27, &v33);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2112;
      if (a2)
      {
        v29 = a2;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v23 + 14) = v30;
      *v24 = v31;
      _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s] Error when setting feature enable setting: %@", v23, 0x16u);
      sub_29D900A70(v24, &qword_2A1A21FC0, sub_29D751594);
      MEMORY[0x29ED6BE30](v24, -1, -1);
      sub_29D69417C(v25);
      MEMORY[0x29ED6BE30](v25, -1, -1);
      MEMORY[0x29ED6BE30](v23, -1, -1);
    }

    return a3(0, a2);
  }
}

uint64_t sub_29D8FFDD4(char a1, void *a2, uint64_t (*a3)(uint64_t, void *, uint64_t (*)(uint64_t, void *), uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = 1;
    v7 = 0;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v9 = sub_29D937898();
    sub_29D69C6C0(v9, qword_2A1A2C008);
    v10 = a2;
    v11 = sub_29D937878();
    v12 = sub_29D93A288();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v13 = 136446466;
      v16 = sub_29D93AF08();
      v18 = sub_29D6C2364(v16, v17, &v23);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2112;
      if (a2)
      {
        v19 = a2;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        v21 = v20;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      *(v13 + 14) = v20;
      *v14 = v21;
      _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s] Error when setting notification details entered setting: %@", v13, 0x16u);
      sub_29D900A70(v14, &qword_2A1A21FC0, sub_29D751594);
      MEMORY[0x29ED6BE30](v14, -1, -1);
      sub_29D69417C(v15);
      MEMORY[0x29ED6BE30](v15, -1, -1);
      MEMORY[0x29ED6BE30](v13, -1, -1);
    }

    v6 = 0;
    v7 = a2;
  }

  return a3(v6, v7, a3, a4, a5);
}

id sub_29D900014(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardioFitnessOnboardingModel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D90010C()
{
  v1 = (*v0 + OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_mostRecentSampleDateProvider);
  v2 = v1[3];
  v3 = v1[4];
  sub_29D693E2C(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t sub_29D9001A8(unsigned __int8 a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v62 = a3;
  ObjectType = swift_getObjectType();
  sub_29D900880(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v56 - v15;
  v17 = sub_29D935AB8();
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v27 = &v56 - v26;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      v47 = *&a5[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_wristDetectEnabled];
      MEMORY[0x2A1C7C4A8](v23, v24);
      *(&v56 - 4) = v62;
      *(&v56 - 3) = v48;
      *(&v56 - 2) = ObjectType;

      os_unfair_lock_lock((v47 + 20));
      sub_29D9008D4((v47 + 16));
      os_unfair_lock_unlock((v47 + 20));
    }
  }

  else
  {
    if (a1)
    {
      v36 = v25;
      v59 = ObjectType;
      v60 = a4;
      v61 = v23;
      v63 = a2;
      v64 = a7;
      sub_29D695734(0, &qword_2A17B7D28, &protocol descriptor for CardioFitnessOnboardingViewControllerProtocol, 0);
      sub_29D695734(0, &qword_2A17B7D30, &protocol descriptor for CardioFitnessOnboardingChangedHealthDetailProviding, 1);
      v37 = a2;
      if (swift_dynamicCast())
      {
        v38 = *(*(*sub_29D693E2C(&v65, *(&v66 + 1)) + qword_2A17B3488) + qword_2A17B5D00);
        v39 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
        swift_beginAccess();
        sub_29D7D9B18(v38 + v39, v16);
        sub_29D69417C(&v65);
        v40 = v36;
        if ((*(v36 + 48))(v16, 1, v61) != 1)
        {
          v57 = *(v36 + 32);
          v41 = v61;
          v57(v27, v16, v61);
          v58 = *&a5[OBJC_IVAR____TtC5Heart28CardioFitnessOnboardingModel_detailsProvider];
          (*(v40 + 16))(v21, v27, v41);
          v42 = (*(v40 + 80) + 40) & ~*(v40 + 80);
          v43 = swift_allocObject();
          v44 = v60;
          *(v43 + 2) = v62;
          *(v43 + 3) = v44;
          *(v43 + 4) = a5;
          v57(&v43[v42], v21, v41);
          *&v43[(v18 + v42 + 7) & 0xFFFFFFFFFFFFFFF8] = v59;

          v45 = a5;
          sub_29D935A08();

          return (*(v40 + 8))(v27, v41);
        }
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
        sub_29D9008F4(&v65);
        (*(v36 + 56))(v16, 1, 1, v61);
      }

      sub_29D900A70(v16, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v49 = sub_29D937898();
      sub_29D69C6C0(v49, qword_2A1A2C008);
      v29 = sub_29D937878();
      v50 = sub_29D93A298();
      if (os_log_type_enabled(v29, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v65 = v52;
        *v51 = 136446466;
        v53 = sub_29D93AF08();
        v55 = sub_29D6C2364(v53, v54, &v65);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2082;
        *(v51 + 14) = sub_29D6C2364(0xD00000000000003ALL, 0x800000029D96E990, &v65);
        _os_log_impl(&dword_29D677000, v29, v50, "[%{public}s.%{public}s]: Confirm details screen should provide details", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v52, -1, -1);
        MEMORY[0x29ED6BE30](v51, -1, -1);
      }
    }

    else
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v28 = sub_29D937898();
      sub_29D69C6C0(v28, qword_2A1A2C008);
      v29 = sub_29D937878();
      v30 = sub_29D93A2A8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v65 = v32;
        *v31 = 136446210;
        v33 = sub_29D93AF08();
        v35 = sub_29D6C2364(v33, v34, &v65);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_29D677000, v29, v30, "[%{public}s] Proceeding from start", v31, 0xCu);
        sub_29D69417C(v32);
        MEMORY[0x29ED6BE30](v32, -1, -1);
        MEMORY[0x29ED6BE30](v31, -1, -1);
      }
    }
  }

  return v62(2);
}

void sub_29D900880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D9008F4(uint64_t a1)
{
  sub_29D900950(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D900950(uint64_t a1)
{
  if (!qword_2A17B7D38)
  {
    sub_29D695734(255, &qword_2A17B7D30, &protocol descriptor for CardioFitnessOnboardingChangedHealthDetailProviding, 1);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7D38);
    }
  }
}

uint64_t sub_29D9009BC(char a1, char a2)
{
  v5 = *(sub_29D935AB8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D8FF0A0(a1, a2 & 1, v7, v8, v9, v2 + v6, v10);
}

uint64_t sub_29D900A70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D900880(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D900AE0()
{
  result = qword_2A17B7D40;
  if (!qword_2A17B7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7D40);
  }

  return result;
}

unint64_t sub_29D900B48()
{
  result = qword_2A17B7D48;
  if (!qword_2A17B7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7D48);
  }

  return result;
}

id sub_29D900B9C(void *a1, void *a2, void *a3)
{
  v4 = [a1 userInterfaceStyle];
  if (v4)
  {
    v5 = v4 == 2;
    v6 = a3;
    if (!v5)
    {
      v6 = a2;
    }
  }

  else
  {
    v6 = a3;
  }

  return v6;
}

uint64_t sub_29D900BFC()
{
  v0 = sub_29D8AA8CC();
  sub_29D8E8608(v0);
  v2 = v1;

  return v2;
}

uint64_t sub_29D900C68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D934798();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D9371B8();
  v7 = [v6 areAllRequirementsSatisfied];

  if (v7)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v8 = sub_29D937898();
    sub_29D69C6C0(v8, qword_2A1A2C008);
    v9 = sub_29D937878();
    v10 = sub_29D93A2A8();
    v11 = os_log_type_enabled(v9, v10);
    v39 = a1;
    if (v11)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v42 = v13;
      *v12 = 136446466;
      v14 = sub_29D93AF08();
      v16 = sub_29D6C2364(v14, v15, &v42);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D958D30, &v42);
      _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s.%{public}s]: Creating cardio fitness promo tile configuration", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);
    }

    v17 = sub_29D939D68();
    v40 = v18;
    v41 = v17;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v19 = qword_2A1A2C038;
    sub_29D934788();
    type metadata accessor for HeartHealthPluginDelegate();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = objc_opt_self();
    v22 = [v21 bundleForClass_];
    v38[1] = v5;
    v38[0] = sub_29D9334A8();

    v23 = [v21 bundleForClass_];
    sub_29D9334A8();

    v24 = [v21 bundleForClass_];
    sub_29D9334A8();

    v25 = v39;
    sub_29D9349E8();
    v26 = sub_29D934A18();
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v28 = sub_29D937898();
    sub_29D69C6C0(v28, qword_2A1A2C008);
    v29 = sub_29D937878();
    v30 = sub_29D93A2A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v31 = 136446466;
      v33 = sub_29D93AF08();
      v35 = sub_29D6C2364(v33, v34, &v42);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      *(v31 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D958D30, &v42);
      _os_log_impl(&dword_29D677000, v29, v30, "[%{public}s.%{public}s]: Onboarding initiation context not satisfied, no promotion tile", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v32, -1, -1);
      MEMORY[0x29ED6BE30](v31, -1, -1);
    }

    v36 = sub_29D934A18();
    v37 = *(*(v36 - 8) + 56);

    return v37(a1, 1, 1, v36);
  }
}

uint64_t sub_29D9012A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D9371B8();
  v5 = [v4 areAllRequirementsSatisfied];

  if (v5)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v6 = sub_29D937898();
    sub_29D69C6C0(v6, qword_2A1A2C008);
    v7 = sub_29D937878();
    v8 = sub_29D93A2A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136446466;
      v11 = sub_29D93AF08();
      v13 = sub_29D6C2364(v11, v12, &v26);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D958CD0, &v26);
      _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: All requirements met for onboarding promotion, not hiding from discover", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v10, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }

    v14 = sub_29D9340F8();
    v15 = *(*(v14 - 8) + 16);

    return v15(a2, a1, v14);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2C008);
    v18 = sub_29D937878();
    v19 = sub_29D93A2A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446466;
      v22 = sub_29D93AF08();
      v24 = sub_29D6C2364(v22, v23, &v26);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D958CD0, &v26);
      _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s.%{public}s]: Not all requirements for onboarding promotion met, hiding from discover", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    v25 = sub_29D9340F8();
    (*(*(v25 - 8) + 16))(a2, a1, v25);
    return sub_29D934078();
  }
}

uint64_t type metadata accessor for CardioFitnessPromotionActionHandler(uint64_t a1)
{
  result = qword_2A1A239E0;
  if (!qword_2A1A239E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D9017B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63270](a1, WitnessTable);
}

uint64_t sub_29D90181C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63268](a1, a2, a3, WitnessTable);
}

void sub_29D9018A4()
{
  v1 = sub_29D9350C8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D936638();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v25[-1] - v13;
  v24 = v0;
  sub_29D936B88();
  sub_29D936608();
  v15 = *(v7 + 8);
  v15(v14, v6);
  sub_29D693E2C(v25, v26);
  sub_29D936598();
  v16 = (*(v2 + 88))(v5, v1);
  v18 = v16 == *MEMORY[0x29EDC1D20] || v16 == *MEMORY[0x29EDC1D68] || v16 == *MEMORY[0x29EDC1D80];
  v19 = v18;
  if (!v18)
  {
    (*(v2 + 8))(v5, v1);
  }

  sub_29D69417C(v25);
  sub_29D936B88();
  sub_29D936608();
  v15(v11, v6);
  sub_29D693E2C(v25, v26);
  v20 = sub_29D936588();
  v21 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingViewController());
  v22 = sub_29D827BF4(v20, v19);
  sub_29D69417C(v25);
  sub_29D936B88();
  v23 = sub_29D936618();
  v15(v11, v6);
  [v23 presentViewController:v22 animated:1 completion:0];
}

uint64_t sub_29D901B90(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D901C90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessPromotionActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D901D68(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_29D901DB4(uint64_t a1)
{
  v123 = a1;
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v133 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v122 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v115 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v115 - v14;
  v16 = sub_29D9376E8();
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v19 = v18;
  v20 = sub_29D934548();
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = (v22 + 32) & ~v22;
  v135 = *(v21 + 72);
  v118 = v22;
  v120 = v19;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29D944700;
  v119 = v23;
  v117 = v24;
  v138 = v24 + v23;
  sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v25 = qword_2A1A2C038;
  sub_29D9376B8();
  v26 = sub_29D93A6A8();
  v27 = v138;
  *v138 = v26;
  v27[8] = 0;
  v28 = *MEMORY[0x29EDC1608];
  v29 = *(v21 + 104);
  v131 = v21 + 104;
  v134 = v29;
  (v29)(v27, v28, v20);
  v30 = &v27[v135];
  sub_29D939D08();
  v130 = v20;
  if (qword_2A1A242B0 != -1)
  {
    swift_once();
  }

  v31 = qword_2A1A2BE80;
  v125 = qword_2A1A2BE80;
  v132 = *algn_2A1A2BE88;
  v32 = qword_2A1A2BE90;
  v33 = *(v5 + 16);
  v136 = v5 + 16;
  v137 = v33;
  v34 = v12;
  v33(v12, v15, v4);
  v127 = v32;
  sub_29D935E88();
  v126 = v31;
  sub_29D933A98();
  v35 = sub_29D939D98();
  v37 = v36;
  v139 = *(v5 + 8);
  v139(v15, v4);
  v38 = v134;
  v39 = v135;
  v40 = v138;
  *(v138 + v135) = v35;
  *(v30 + 1) = v37;
  v38(v30, *MEMORY[0x29EDC1610], v130);
  v128 = v5 + 8;
  v116 = (2 * v39);
  v41 = &v40[2 * v39];
  sub_29D939D08();
  v129 = v34;
  v137(v34, v15, v4);
  sub_29D935E88();
  v126 = v126;
  sub_29D933A98();
  v42 = sub_29D939D98();
  v44 = v43;
  v121 = v4;
  v139(v15, v4);
  *v41 = v42;
  v41[1] = v44;
  v41[2] = 0;
  v124 = *MEMORY[0x29EDC15D0];
  v45 = v134;
  v134(v41);
  v46 = &v116[v135 + v138];
  sub_29D939D08();
  v137(v129, v15, v4);
  sub_29D935E88();
  v116 = v126;
  sub_29D933A98();
  v47 = sub_29D939D98();
  v49 = v48;
  v50 = v121;
  v139(v15, v121);
  *v46 = v47;
  *(v46 + 1) = v49;
  v46[16] = 0;
  LODWORD(v126) = *MEMORY[0x29EDC1630];
  v45(v46);
  v51 = v122;
  sub_29D939D08();
  v52 = v135;
  v115 = 4 * v135;
  v53 = (v138 + 4 * v135);
  v137(v15, v51, v50);
  sub_29D935E88();
  v116 = v116;
  sub_29D933A98();
  v54 = sub_29D939D98();
  v56 = v55;
  v139(v51, v50);
  *v53 = v54;
  *(v53 + 1) = v56;
  v53[16] = 0;
  (v134)(v53, v126, v130);
  v57 = (v138 + v115 + v52);
  sub_29D939D08();
  v137(v129, v15, v50);
  sub_29D935E88();
  v122 = v116;
  sub_29D933A98();
  v58 = sub_29D939D98();
  v60 = v59;
  v139(v15, v50);
  *v57 = v58;
  v57[1] = v60;
  v57[2] = 0;
  v61 = v130;
  (v134)(v57, v124, v130);
  v62 = (v138 + 6 * v135);
  sub_29D939D08();
  v63 = v129;
  v137(v129, v15, v50);
  sub_29D935E88();
  v116 = v122;
  sub_29D933A98();
  v64 = sub_29D939D98();
  v66 = v65;
  v139(v15, v50);
  *v62 = v64;
  *(v62 + 1) = v66;
  v62[16] = 0;
  v67 = v134;
  (v134)(v62, v126, v61);
  v122 = (8 * v135);
  v68 = (v138 + 7 * v135);
  sub_29D939D08();
  v137(v63, v15, v50);
  sub_29D935E88();
  v116 = v116;
  sub_29D933A98();
  v69 = sub_29D939D98();
  v71 = v70;
  v139(v15, v50);
  *v68 = v69;
  v68[1] = v71;
  v68[2] = 0;
  v72 = v130;
  v67(v68, v124, v130);
  v73 = &v122[v138];
  sub_29D939D08();
  v74 = v137;
  v137(v129, v15, v50);
  sub_29D935E88();
  v116 = v116;
  sub_29D933A98();
  v75 = sub_29D939D98();
  v77 = v76;
  v139(v15, v50);
  *v73 = v75;
  *(v73 + 1) = v77;
  v73[16] = 0;
  (v134)(v73, v126, v72);
  v78 = &v122[v135 + v138];
  sub_29D939D08();
  v74(v129, v15, v50);
  sub_29D935E88();
  v122 = v116;
  sub_29D933A98();
  v79 = sub_29D939D98();
  v81 = v80;
  v139(v15, v50);
  *v78 = v79;
  v78[1] = v81;
  v78[2] = 0;
  (v134)(v78, v124, v130);
  v82 = v135;
  v83 = (v138 + 10 * v135);
  sub_29D939D08();
  v137(v129, v15, v50);
  sub_29D935E88();
  v122 = v122;
  sub_29D933A98();
  v84 = sub_29D939D98();
  v86 = v85;
  v139(v15, v50);
  *v83 = v84;
  *(v83 + 1) = v86;
  v83[16] = 0;
  v87 = v130;
  (v134)(v83, v126, v130);
  v88 = v138;
  v89 = (v138 + 11 * v82);
  sub_29D939D08();
  v137(v129, v15, v50);
  sub_29D935E88();
  v122 = v122;
  sub_29D933A98();
  v90 = sub_29D939D98();
  v92 = v91;
  v139(v15, v50);
  *v89 = v90;
  *(v89 + 1) = v92;
  v89[16] = 0;
  (v134)(v89, v126, v87);
  v93 = &v88[12 * v135];
  sub_29D939D08();
  v137(v129, v15, v50);
  sub_29D935E88();
  v122 = v122;
  sub_29D933A98();
  v94 = sub_29D939D98();
  v96 = v95;
  v139(v15, v50);
  *v93 = v94;
  v93[1] = v96;
  v93[2] = 0;
  (v134)(v93, v124, v130);
  v97 = (v138 + 13 * v135);
  sub_29D939D08();
  v98 = v129;
  v137(v129, v15, v50);
  sub_29D935E88();
  v138 = v122;
  sub_29D933A98();
  v99 = sub_29D939D98();
  v101 = v100;
  v139(v15, v50);
  *v97 = v99;
  *(v97 + 1) = v101;
  v97[16] = 0;
  v102 = v97;
  v103 = v130;
  v104 = v134;
  (v134)(v102, v126, v130);
  v105 = sub_29D902F1C(v123);
  v140 = v117;
  sub_29D88BEE0(v105);
  v106 = v119;
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_29D93DDB0;
  v108 = v107 + v106;
  sub_29D939D08();
  v109 = v121;
  v137(v98, v15, v121);
  sub_29D935E88();
  v110 = v138;
  sub_29D933A98();
  v111 = sub_29D939D98();
  v113 = v112;
  v139(v15, v109);
  *v108 = v111;
  *(v108 + 8) = v113;
  *(v108 + 16) = 0;
  v104(v108, v126, v103);
  sub_29D88BEE0(v107);
  return v140;
}

uint64_t sub_29D902F1C(uint64_t a1)
{
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v179 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D939D18();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v180 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v157 - v11;
  switch(a1)
  {
    case 2:
      sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
      v171 = sub_29D934548();
      v118 = *(*(v171 - 8) + 72);
      v177 = *(v171 - 8);
      v119 = (*(v177 + 80) + 32) & ~*(v177 + 80);
      v175 = v118;
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_29D946CA0;
      v176 = v120;
      v121 = v120 + v119;
      sub_29D939D08();
      if (qword_2A1A242B0 != -1)
      {
        swift_once();
      }

      v122 = qword_2A1A2BE80;
      v172 = qword_2A1A2BE80;
      v162 = *algn_2A1A2BE88;
      v123 = qword_2A1A2BE90;
      v173 = *(v6 + 16);
      v124 = v180;
      (v173)(v180, v12, v5);
      v168 = (v6 + 16);
      sub_29D935E88();
      v167 = v122;
      sub_29D933A98();
      v125 = sub_29D939D98();
      v126 = v5;
      v127 = v6;
      v128 = v125;
      v130 = v129;
      v131 = *(v127 + 8);
      v178 = v127 + 8;
      v174 = v131;
      v131(v12, v126);
      *v121 = v128;
      *(v121 + 8) = v130;
      *(v121 + 16) = 0;
      v132 = *MEMORY[0x29EDC1630];
      v133 = *(v177 + 104);
      v177 += 104;
      v170 = v133;
      v133(v121, v132, v171);
      v134 = (v121 + v175);
      sub_29D84D460(0);
      v169 = v135;
      v163 = v135[12];
      sub_29D939D08();
      (v173)(v124, v12, v126);
      v159 = v123;
      sub_29D935E88();
      v161 = v167;
      sub_29D933A98();
      v136 = sub_29D939D98();
      v138 = v137;
      v174(v12, v126);
      *v134 = v136;
      v134[1] = v138;
      v166 = sub_29D9333D8();
      v139 = *(v166 - 8);
      v164 = *(v139 + 56);
      v167 = (v139 + 56);
      (v164)(v163 + v134, 1, 1, v166);
      LODWORD(v163) = *MEMORY[0x29EDC15F8];
      v140 = v171;
      (v170)(v134);
      v160 = 2 * v175;
      v141 = (v121 + 2 * v175);
      v158 = v169[12];
      sub_29D939D08();
      v142 = v126;
      (v173)(v180, v12, v126);
      sub_29D935E88();
      v161 = v161;
      sub_29D933A98();
      v143 = sub_29D939D98();
      v145 = v144;
      v146 = v142;
      v174(v12, v142);
      *v141 = v143;
      v141[1] = v145;
      (v164)(v141 + v158, 1, 1, v166);
      v147 = v140;
      v148 = v170;
      (v170)(v141, v163, v140);
      v149 = (v121 + v160 + v175);
      v150 = v169[12];
      sub_29D939D08();
      v151 = v146;
      (v173)(v180, v12, v146);
      sub_29D935E88();
      v152 = v161;
      sub_29D933A98();
      v153 = sub_29D939D98();
      v155 = v154;
      v174(v12, v151);
      *v149 = v153;
      v149[1] = v155;
      (v164)(v149 + v150, 1, 1, v166);
      v148(v149, v163, v147);
      return v176;
    case 1:
      sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
      v174 = sub_29D934548();
      v71 = *(*(v174 - 1) + 72);
      v177 = *(v174 - 1);
      v72 = (*(v177 + 80) + 32) & ~*(v177 + 80);
      v175 = v71;
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_29D944710;
      v176 = v73;
      v170 = v73 + v72;
      sub_29D939D08();
      if (qword_2A1A242B0 != -1)
      {
        swift_once();
      }

      v74 = qword_2A1A2BE80;
      v172 = *algn_2A1A2BE88;
      v173 = qword_2A1A2BE80;
      v75 = qword_2A1A2BE90;
      v168 = *(v6 + 16);
      v162 = v6 + 16;
      v76 = v180;
      v168(v180, v12, v5);
      sub_29D935E88();
      v169 = v74;
      sub_29D933A98();
      v77 = sub_29D939D98();
      v79 = v78;
      v171 = *(v6 + 8);
      v178 = v6 + 8;
      (v171)(v12, v5);
      v80 = v170;
      *v170 = v77;
      *(v80 + 8) = v79;
      *(v80 + 16) = 0;
      v163 = *(v177 + 104);
      v177 += 104;
      v81 = v80;
      v163();
      v82 = (v81 + v175);
      sub_29D84D460(0);
      v84 = v83;
      v166 = *(v83 + 48);
      v160 = v83;
      sub_29D939D08();
      v165 = v5;
      v168(v76, v12, v5);
      v161 = v75;
      sub_29D935E88();
      v159 = v169;
      sub_29D933A98();
      v85 = sub_29D939D98();
      v87 = v86;
      (v171)(v12, v5);
      *v82 = v85;
      v82[1] = v87;
      v167 = sub_29D9333D8();
      v88 = *(v167 - 1);
      v89 = *(v88 + 56);
      v169 = (v88 + 56);
      (v89)(v82 + v166, 1, 1, v167);
      v164 = v89;
      LODWORD(v166) = *MEMORY[0x29EDC15F8];
      v90 = v174;
      v91 = v163;
      (v163)(v82);
      v158 = 2 * v175;
      v92 = v170;
      v93 = (v170 + 2 * v175);
      v157 = *(v84 + 48);
      sub_29D939D08();
      v94 = v165;
      v168(v180, v12, v165);
      sub_29D935E88();
      v159 = v159;
      sub_29D933A98();
      v95 = sub_29D939D98();
      v97 = v96;
      (v171)(v12, v94);
      *v93 = v95;
      v93[1] = v97;
      (v89)(v93 + v157, 1, 1, v167);
      v91(v93, v166, v90);
      v98 = (v92 + v158 + v175);
      v99 = v160;
      v157 = *(v160 + 48);
      sub_29D939D08();
      v100 = v168;
      v168(v180, v12, v94);
      sub_29D935E88();
      v158 = v159;
      sub_29D933A98();
      v101 = sub_29D939D98();
      v103 = v102;
      (v171)(v12, v94);
      *v98 = v101;
      v98[1] = v103;
      (v164)(v98 + v157, 1, 1, v167);
      (v163)(v98, v166, v174);
      v159 = (4 * v175);
      v104 = (v170 + 4 * v175);
      v157 = *(v99 + 48);
      sub_29D939D08();
      v105 = v180;
      v100(v180, v12, v94);
      sub_29D935E88();
      v158 = v158;
      sub_29D933A98();
      v106 = sub_29D939D98();
      v108 = v107;
      (v171)(v12, v94);
      *v104 = v106;
      v104[1] = v108;
      v109 = v167;
      (v164)(v104 + v157, 1, 1, v167);
      v110 = v104;
      v111 = v166;
      v112 = v163;
      (v163)(v110, v166, v174);
      v113 = (v159 + v175 + v170);
      v175 = *(v160 + 48);
      sub_29D939D08();
      v168(v105, v12, v94);
      sub_29D935E88();
      v114 = v158;
      sub_29D933A98();
      v115 = sub_29D939D98();
      v117 = v116;
      (v171)(v12, v94);
      *v113 = v115;
      v113[1] = v117;
      (v164)(v113 + v175, 1, 1, v109);
      v112(v113, v111, v174);
      return v176;
    case 0:
      sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
      v174 = sub_29D934548();
      v13 = *(*(v174 - 1) + 72);
      v177 = *(v174 - 1);
      v14 = (*(v177 + 80) + 32) & ~*(v177 + 80);
      v175 = v13;
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_29D943DD0;
      v176 = v15;
      v173 = v15 + v14;
      sub_29D939D08();
      if (qword_2A1A242B0 != -1)
      {
        swift_once();
      }

      v16 = qword_2A1A2BE80;
      v161 = qword_2A1A2BE80;
      v17 = qword_2A1A2BE90;
      v168 = *(v6 + 16);
      v169 = *algn_2A1A2BE88;
      v170 = v6 + 16;
      v168(v180, v12, v5);
      sub_29D935E88();
      v167 = v16;
      sub_29D933A98();
      v18 = sub_29D939D98();
      v20 = v19;
      v21 = *(v6 + 8);
      v21(v12, v5);
      v172 = v21;
      v178 = v6 + 8;
      v22 = v173;
      *v173 = v18;
      *(v22 + 8) = v20;
      *(v22 + 16) = 0;
      v23 = *(v177 + 104);
      v177 += 104;
      v164 = v23;
      v24 = v22;
      v23();
      v25 = (v24 + v175);
      sub_29D84D460(0);
      v171 = v26;
      v160 = *(v26 + 48);
      sub_29D939D08();
      v168(v180, v12, v5);
      v166 = v17;
      sub_29D935E88();
      v159 = v167;
      sub_29D933A98();
      v27 = sub_29D939D98();
      v29 = v28;
      v21(v12, v5);
      *v25 = v27;
      v25[1] = v29;
      v162 = sub_29D9333D8();
      v30 = *(v162 - 8);
      v163 = *(v30 + 56);
      v167 = (v30 + 56);
      (v163)(v25 + v160, 1, 1, v162);
      LODWORD(v160) = *MEMORY[0x29EDC15F8];
      v31 = v25;
      v32 = v174;
      (v164)(v31);
      v33 = v175;
      v158 = 2 * v175;
      v34 = (v173 + 2 * v175);
      v157 = *(v171 + 48);
      sub_29D939D08();
      v165 = v5;
      v168(v180, v12, v5);
      sub_29D935E88();
      v159 = v159;
      sub_29D933A98();
      v35 = sub_29D939D98();
      v37 = v36;
      v172(v12, v5);
      *v34 = v35;
      v34[1] = v37;
      (v163)(v34 + v157, 1, 1, v162);
      (v164)(v34, v160, v32);
      v38 = (v158 + v33);
      v39 = v173;
      v40 = &v38[v173];
      v157 = *(v171 + 48);
      sub_29D939D08();
      v41 = v12;
      v42 = v12;
      v43 = v165;
      v44 = v168;
      v168(v180, v41, v165);
      sub_29D935E88();
      v158 = v159;
      sub_29D933A98();
      v45 = sub_29D939D98();
      v47 = v46;
      v172(v42, v43);
      *v40 = v45;
      v40[1] = v47;
      v48 = v162;
      (v163)(v40 + v157, 1, 1, v162);
      v49 = v164;
      (v164)(v40, v160, v174);
      v159 = (4 * v175);
      v50 = (v39 + 4 * v175);
      v157 = *(v171 + 48);
      v51 = v42;
      sub_29D939D08();
      v52 = v165;
      v44(v180, v42, v165);
      sub_29D935E88();
      v158 = v158;
      sub_29D933A98();
      v53 = sub_29D939D98();
      v55 = v54;
      v172(v42, v52);
      *v50 = v53;
      v50[1] = v55;
      v56 = v163;
      (v163)(v50 + v157, 1, 1, v48);
      v57 = v160;
      (v49)(v50, v160, v174);
      v58 = (v159 + v175 + v173);
      v157 = *(v171 + 48);
      sub_29D939D08();
      v59 = v165;
      v168(v180, v42, v165);
      sub_29D935E88();
      v159 = v158;
      sub_29D933A98();
      v60 = sub_29D939D98();
      v62 = v61;
      v172(v42, v59);
      *v58 = v60;
      v58[1] = v62;
      v56(v58 + v157, 1, 1, v162);
      v63 = v57;
      v64 = v174;
      v65 = v164;
      (v164)(v58, v63, v174);
      v66 = (v173 + 6 * v175);
      v175 = *(v171 + 48);
      sub_29D939D08();
      v168(v180, v42, v59);
      sub_29D935E88();
      v67 = v159;
      sub_29D933A98();
      v68 = sub_29D939D98();
      v70 = v69;
      v172(v51, v59);
      *v66 = v68;
      v66[1] = v70;
      (v163)(v66 + v175, 1, 1, v162);
      (v65)(v66, v160, v64);
      return v176;
  }

  return MEMORY[0x29EDCA190];
}

unint64_t sub_29D9047BC()
{
  v1 = *v0;
  v2 = 0xD000000000000034;
  v3 = 0xD000000000000034;
  if (*v0)
  {
    v3 = 0;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1 == 2)
  {
    return 0xD000000000000035;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D9048A4()
{
  v0 = sub_29D9376E8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A2C038;
  sub_29D9376B8();
  return sub_29D93A6A8();
}

uint64_t sub_29D9049B4(uint64_t a1)
{
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2BF10);
  v3 = sub_29D937878();
  v4 = sub_29D93A278();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_29D93A628();
    v9 = sub_29D6C2364(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29D677000, v3, v4, "Creating article with blood pressure guidelines: %s", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  return a1;
}

uint64_t sub_29D904B14(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17[-v11];
  sub_29D939D08();
  if (qword_2A1A242B0 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A2BE80;
  (*(v5 + 16))(v9, v12, v4);
  sub_29D935E88();
  v14 = v13;
  sub_29D933A98();
  v15 = sub_29D939D98();
  (*(v5 + 8))(v12, v4);
  return v15;
}

uint64_t sub_29D904D04()
{
  v0 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v2 = sub_29D939D18();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v15[-v9];
  sub_29D939D08();
  if (qword_2A1A242B0 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A2BE80;
  (*(v3 + 16))(v7, v10, v2);
  sub_29D935E88();
  v12 = v11;
  sub_29D933A98();
  v13 = sub_29D939D98();
  (*(v3 + 8))(v10, v2);
  return v13;
}

uint64_t sub_29D904EFC()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D9403F0;
  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  *(inited + 32) = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  *(inited + 48) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D905038()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D905118(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

uint64_t sub_29D9051E4(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D9052C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D9059FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D9052F0(unint64_t *a1@<X8>)
{
  v2 = 0xEF676E6967676F4CLL;
  v3 = 0x6574616974696E69;
  v4 = 0xD000000000000012;
  v5 = 0x800000029D9576A0;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000014;
    v5 = 0x800000029D9576C0;
  }

  if (*v1)
  {
    v3 = 0x6361725074736562;
    v2 = 0xED00007365636974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_29D905390()
{
  result = qword_2A17B7D50;
  if (!qword_2A17B7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7D50);
  }

  return result;
}

double sub_29D9053FC(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

unint64_t sub_29D905500@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D905A48(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_29D905530@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6C65636E6163;
  v5 = 0xE600000000000000;
  v6 = 0x776F4E746F6ELL;
  if (v2 != 5)
  {
    v6 = 0x7461446465646461;
    v5 = 0xE900000000000061;
  }

  v7 = 0xE400000000000000;
  v8 = 1701736292;
  result = 0x4A5042676F6CLL;
  if (v2 != 3)
  {
    v8 = 0x4A5042676F6CLL;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xE400000000000000;
  v11 = 1954047342;
  if (v2 != 1)
  {
    v11 = 0x64616F4C77656976;
    v10 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_29D905600()
{
  result = qword_2A17B7D58;
  if (!qword_2A17B7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7D58);
  }

  return result;
}

uint64_t sub_29D905660()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D90573C(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

uint64_t sub_29D905804(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D9058DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D905A94(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D90590C(unint64_t *a1@<X8>)
{
  v2 = 0xEF4A50426D6F6F52;
  v3 = 0x6570795461746164;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x696472616F626E6FLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000014;
    v4 = 0x800000029D957720;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000029D957700;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_29D9059A8()
{
  result = qword_2A17B7D60;
  if (!qword_2A17B7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7D60);
  }

  return result;
}

unint64_t sub_29D9059FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_29D905A48(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_29D905A94(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_29D905AE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (sub_29D934DB8())
  {
    v5 = sub_29D906080(a2);
  }

  else
  {
    sub_29D9063C4();
  }

  v38 = v5;
  v6 = *(v2 + 16);
  v52 = 0;
  v53 = 0;
  v51 = v6;
  v33 = v6;
  sub_29D935E88();
  sub_29D68C234(&v45);
  v49 = v46;
  v50 = v47;
  for (i = v45; v47; i = v45)
  {
    v34 = i;
    sub_29D679D3C((&i + 8), v43);
    sub_29D693E2C(v43, v44);
    v7 = sub_29D935818();
    sub_29D68D79C(v7);

    sub_29D693E2C(v43, v44);
    v8 = sub_29D935818();
    v9 = 0;
    v10 = *(v8 + 16);
    v36 = v8 + 32;
    v37 = v8;
    v35 = v10;
    while (1)
    {
      v11 = 0uLL;
      v12 = v10;
      v13 = 0uLL;
      v14 = 0uLL;
      if (v9 != v10)
      {
        if (v9 >= *(v37 + 16))
        {
          goto LABEL_58;
        }

        v12 = v9 + 1;
        *&v40 = v9;
        sub_29D6945AC(v36 + 40 * v9, &v40 + 8);
        v11 = v40;
        v13 = v41;
        v14 = v42;
      }

      v45 = v11;
      v46 = v13;
      v47 = v14;
      if (!v14)
      {
        break;
      }

      v9 = v12;
      v39 = v11;
      sub_29D679D3C((&v45 + 8), &v40);
      if ((v39 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return;
      }

      if (v39 >= *(v38 + 2))
      {
        goto LABEL_57;
      }

      sub_29D934E48();
      if (sub_29D934DB8())
      {
        v15 = *(v3 + 24);
        if (v39 >= *(v15 + 16))
        {
          goto LABEL_9;
        }

        v16 = *(v15 + 8 * v39 + 32);
        sub_29D935E88();
        sub_29D934E48();
        v17 = 0.0;
        v18 = 0.0;
        if (!v39)
        {
          v19 = *(v3 + 32);
          if (*(v19 + 16))
          {
            v20 = *(v19 + 32);
          }

          else
          {
            v20 = 0.0;
          }

          if (sub_29D934DB8())
          {
            v28 = 0.3;
          }

          else
          {
            v28 = 0.7;
          }

          sub_29D934E58();
          v18 = v28 * (CGRectGetWidth(v56) * 0.5 - *(v3 + 40) - v20);
        }

        v29 = *(v16 + 16);
        if (v29)
        {
          v30 = (v16 + 32);
          do
          {
            sub_29D934E48();
            sub_29D934E58();
            sub_29D934DD8();
            sub_29D693E2C(v30, v30[3]);
            sub_29D935118();
            Width = CGRectGetWidth(v57);

            if (v17 >= Width)
            {
              v32 = v17;
            }

            else
            {
              v32 = Width;
            }

            if (Width > v32)
            {
              v32 = Width;
            }

            if (v32 > v18)
            {
              v17 = v32;
            }

            else
            {
              v17 = v18;
            }

            v30 += 5;
            --v29;
          }

          while (v29);
        }

        sub_29D693E2C(&v40, *(&v41 + 1));
        sub_29D935118();
        CGRectGetWidth(v58);
        sub_29D934DC8();
        sub_29D934DC8();
        sub_29D934DD8();
      }

      else
      {
        if (v39 != 1)
        {
          sub_29D934E38();
          goto LABEL_9;
        }

        v21 = *(v3 + 24);
        if (*(v21 + 16) < 2uLL)
        {
          goto LABEL_59;
        }

        v22 = *(v21 + 40);
        sub_29D935E88();
        sub_29D934E48();
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = (v22 + 32);
          v25 = 0.0;
          do
          {
            sub_29D934E48();
            sub_29D934E58();
            sub_29D934DD8();
            sub_29D693E2C(v24, v24[3]);
            sub_29D935118();
            v26 = CGRectGetWidth(v54);

            if (v25 >= v26)
            {
              v27 = v25;
            }

            else
            {
              v27 = v26;
            }

            if (v26 > v27)
            {
              v27 = v26;
            }

            if (v27 > 0.0)
            {
              v25 = v27;
            }

            else
            {
              v25 = 0.0;
            }

            v24 += 5;
            --v23;
          }

          while (v23);
        }

        sub_29D693E2C(&v40, *(&v41 + 1));
        sub_29D935118();
        CGRectGetWidth(v55);
        sub_29D934E38();
      }

      v3 = v2;
      v10 = v35;
LABEL_9:
      sub_29D693E2C(&v40, *(&v41 + 1));
      sub_29D935128();

      sub_29D69417C(&v40);
    }

    sub_29D934E38();
    if (v34 < *(v33 + 16) - 1)
    {
      sub_29D934E38();
    }

    sub_29D69417C(v43);
    sub_29D68C234(&v45);
    v49 = v46;
    v50 = v47;
  }
}