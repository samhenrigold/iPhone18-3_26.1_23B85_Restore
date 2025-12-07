uint64_t sub_29D7BDEF0(uint64_t a1, uint64_t a2)
{
  **(*(*sub_29D693E2C((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x2A1C73CD0]();
}

uint64_t sub_29D7BDF4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 104) = a4;
  sub_29D939FF8();
  *(v8 + 96) = sub_29D939FE8();
  v10 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D7BDFEC, v10, v9);
}

uint64_t sub_29D7BDFEC()
{
  v19 = v0;
  v1 = *(v0 + 104);

  if (v1 == 11)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v2 = sub_29D937898();
    sub_29D69C6C0(v2, qword_2A1A2C008);
    v3 = sub_29D937878();
    v4 = sub_29D93A288();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136446466;
      v7 = sub_29D93AF08();
      v9 = sub_29D6C2364(v7, v8, &v18);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      v10 = sub_29D93A628();
      v12 = sub_29D6C2364(v10, v11, &v18);

      *(v5 + 14) = v12;
      _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s]: Cannot find a matching article for classificationGuidelines%s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v6, -1, -1);
      MEMORY[0x29ED6BE30](v5, -1, -1);
    }
  }

  else
  {
    sub_29D899F00(*(v0 + 64), *(v0 + 104), (v0 + 16));
    sub_29D693E2C((v0 + 16), *(v0 + 40));
    sub_29D934588();
    sub_29D693E2C((v0 + 16), *(v0 + 40));
    sub_29D934578();
    objc_allocWithZone(sub_29D934568());
    v13 = sub_29D934558();
    sub_29D69417C((v0 + 16));
    v14 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v15 = sub_29D936F08();
      sub_29D936978();
      [v15 presentViewController:v14 animated:1 completion:0];
    }

    else
    {
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_29D7BE2F4(char *a1)
{
  ObjectType = swift_getObjectType();
  sub_29D7BE708(0, &unk_2A17B37B0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *&a1[qword_2A17B4E70];
  v8 = objc_allocWithZone(MEMORY[0x29EDBAA48]);
  v9 = a1;
  v10 = [v8 initWithHealthStore_];
  v11 = sub_29D93A028();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = v9;
  v12[6] = ObjectType;
  sub_29D6BEBA4(0, 0, v6, &unk_29D9499C8, v12);
}

void sub_29D7BE484()
{
  sub_29D7BEECC(v0 + qword_2A17B4E88, &unk_2A1A24700, MEMORY[0x29EDC2D78]);

  sub_29D7BEECC(v0 + qword_2A17B4E98, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  sub_29D68B77C(v0 + qword_2A17D0AA0);
  sub_29D68B77C(v0 + qword_2A17D0AA8);

  v1 = qword_2A17B4EA8;
  v2 = sub_29D9346E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_2A17B4EB0);
}

void sub_29D7BE5D0(uint64_t a1)
{
  sub_29D7BEECC(a1 + qword_2A17B4E88, &unk_2A1A24700, MEMORY[0x29EDC2D78]);

  sub_29D7BEECC(a1 + qword_2A17B4E98, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  sub_29D68B77C(a1 + qword_2A17D0AA0);
  sub_29D68B77C(a1 + qword_2A17D0AA8);

  v2 = qword_2A17B4EA8;
  v3 = sub_29D9346E8();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_2A17B4EB0);
}

void sub_29D7BE708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void (*sub_29D7BE7DC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17D0AA0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D7787F8;
}

void (*sub_29D7BE894(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17D0AA8;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D7797E4;
}

unint64_t sub_29D7BE938()
{
  v4 = MEMORY[0x29EDCA190];
  v0 = sub_29D7BC24C();
  sub_29D88BF0C(v0);
  v1 = sub_29D7BCB00();
  sub_29D88BF0C(v1);
  v2 = sub_29D775B18(v4);

  return v2;
}

id sub_29D7BEA48(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_29D7BEA90()
{
  result = qword_2A1A22420;
  if (!qword_2A1A22420)
  {
    sub_29D7BECC0(255, &qword_2A1A22410, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22420);
  }

  return result;
}

unint64_t sub_29D7BEB20()
{
  result = qword_2A17B2C70;
  if (!qword_2A17B2C70)
  {
    sub_29D710880(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2C70);
  }

  return result;
}

uint64_t sub_29D7BEB78(uint64_t a1, uint64_t a2)
{
  sub_29D7BE708(0, &qword_2A17B4EC8, type metadata accessor for HypertensionNotificationsSettingsViewModel);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7BEBF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D6AC948;

  return sub_29D7BDAC4(a1, v4, v5, v6, v7, v8);
}

void sub_29D7BECC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D7BED60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 32);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29D6C383C;

  return sub_29D7BDF4C(a1, v4, v5, v10, v6, v7, v8, v9);
}

uint64_t sub_29D7BEE3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsSettingsViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7BEEAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D7BEECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D7BE708(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D7BEF28(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D7BE708(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D7BEF94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7BEFFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_29D7BF05C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    sub_29D935E88();
    v5 = v4;

    return sub_29D935E88();
  }

  return result;
}

uint64_t sub_29D7BF0B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29D7BF0C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29D7BF110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D7BF188(uint64_t a1)
{
  if (sub_29D7BF3A8(a1))
  {
    sub_29D7BFF64(0);
    sub_29D7C0058(&qword_2A17B4F08, sub_29D7BFF64, MEMORY[0x29EDC2110]);
    sub_29D935438();
    sub_29D9353F8();
    sub_29D935248();
    sub_29D935408();
  }

  else
  {
    sub_29D935248();
    swift_allocObject();
    sub_29D935238();
    sub_29D935438();

    sub_29D9353F8();

    sub_29D7BFF64(0);
    sub_29D7C0058(&qword_2A17B4F08, sub_29D7BFF64, MEMORY[0x29EDC2110]);

    sub_29D935418();
  }

  sub_29D7C00A0(0);
  sub_29D7C0058(&qword_2A17B4F18, sub_29D7C00A0, MEMORY[0x29EDC22A8]);

  v1 = sub_29D9353F8();

  return v1;
}

uint64_t sub_29D7BF3A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D936378();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  sub_29D7C015C(0);
  v8 = v7;
  v45 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7C0358(0);
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936368();
  v16 = sub_29D9354E8();
  v18 = v17;
  if (v16 == sub_29D9354E8() && v18 == v19)
  {
    goto LABEL_3;
  }

  v20 = sub_29D93AD78();

  if (v20)
  {
    return 0;
  }

  sub_29D936368();
  v22 = sub_29D9354E8();
  v24 = v23;
  if (v22 == sub_29D9354E8() && v24 == v25)
  {
LABEL_3:

    return 0;
  }

  v26 = sub_29D93AD78();

  if (v26)
  {
    return 0;
  }

  sub_29D7C0420(v2 + 16, &v54);
  if (v55)
  {
    sub_29D6959E8(&v54, &v50);
    goto LABEL_18;
  }

  v27 = sub_29D936338();
  v28 = [v27 profileIdentifier];
  v29 = [v28 type];

  if (v29 == 1)
  {
    v30 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v27];

    if (v30)
    {
      *(&v51 + 1) = sub_29D6B8230();
      v52 = MEMORY[0x29EDC2EA8];
      *&v50 = v30;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v52 = 0;
  v50 = 0u;
  v51 = 0u;
LABEL_16:
  if (v55)
  {
    sub_29D7C0518(&v54);
  }

LABEL_18:
  if (!*(&v51 + 1))
  {
    sub_29D7C0518(&v50);
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    sub_29D93AA18();
    MEMORY[0x29ED6A240](91, 0xE100000000000000);
    v56[0] = &_s22AFibBurdenPDFComponentVN;
    sub_29D7C05A0();
    v41 = sub_29D939DA8();
    MEMORY[0x29ED6A240](v41);

    MEMORY[0x29ED6A240](0xD00000000000003ELL, 0x800000029D962DE0);
    v42 = v50;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v43, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v42;
    *&v50 = 0;
    sub_29D9371E8();

    return 0;
  }

  sub_29D6959E8(&v50, v56);
  sub_29D6945AC(v56, &v50);
  v53 = *MEMORY[0x29EDC5120];
  v31 = v53;
  *&v54 = sub_29D81EC50();
  sub_29D7C05E8(0, &qword_2A17B4F60, MEMORY[0x29EDC9E90]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29D93DDB0;
  *(v32 + 32) = sub_29D81E240() & 1;
  sub_29D6AD548();
  v44[1] = v33;
  v44[2] = sub_29D7C0058(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
  sub_29D938518();

  sub_29D7C0058(&qword_2A17B4F68, sub_29D7C015C, MEMORY[0x29EDB88B0]);
  v34 = sub_29D938418();
  (*(v45 + 8))(v11, v8);
  *&v54 = v34;
  v36 = v46;
  v35 = v47;
  (*(v46 + 16))(v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v47);
  v37 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v38 = swift_allocObject();
  (*(v36 + 32))(v38 + v37, v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
  sub_29D7C0710(0, &qword_2A17B4F50, MEMORY[0x29EDC9A40]);
  sub_29D938468();

  sub_29D7C0058(&qword_2A17B4F70, sub_29D7C0358, MEMORY[0x29EDB8908]);
  v39 = v49;
  sub_29D9383F8();
  (*(v48 + 8))(v15, v39);
  sub_29D936458();
  sub_29D935588();

  sub_29D7BFFF8(0);
  sub_29D7C0058(&qword_2A17B4F00, sub_29D7BFFF8, MEMORY[0x29EDC1E90]);
  v40 = sub_29D9355C8();

  sub_29D7C06BC(&v50);
  sub_29D69417C(v56);
  return v40;
}

void sub_29D7BFB9C(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D933A58();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v9 = sub_29D936338();
    sub_29D936DB8();
    v10 = sub_29D9350D8();
    v12 = v11;
    sub_29D7C0710(0, &qword_2A17B54F0, MEMORY[0x29EDC9E90]);
    sub_29D9359D8();
    v18 = a2;
    v13 = swift_allocObject();
    v17 = xmmword_29D93DDB0;
    *(v13 + 16) = xmmword_29D93DDB0;
    sub_29D7C04B0(0, &qword_2A17B1138, &qword_2A17B1140, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
    v14 = swift_allocObject();
    *(v14 + 16) = v17;
    *(v14 + 56) = &type metadata for AFibBurdenPDFItem;
    *(v14 + 64) = sub_29D7C0770();
    v15 = swift_allocObject();
    *(v14 + 32) = v15;
    v15[2] = v10;
    v15[3] = v12;
    v15[4] = 0xD000000000000011;
    v15[5] = 0x800000029D962E20;
    v15[6] = v9;
    sub_29D935E88();
    v16 = v9;
    sub_29D933A48();
    sub_29D933A18();
    (*(v5 + 8))(v8, v4);
    a2 = v18;
    sub_29D9359C8();
  }

  else
  {
    v13 = MEMORY[0x29EDCA190];
  }

  *a2 = v13;
}

uint64_t sub_29D7BFE8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D935D08();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CC8();
  v7 = sub_29D935CF8();
  (*(v3 + 8))(v6, v2);
  return v7;
}

void sub_29D7BFF64(uint64_t a1)
{
  if (!qword_2A17B4EF0)
  {
    sub_29D7BFFF8(255);
    sub_29D7C0058(&qword_2A17B4F00, sub_29D7BFFF8, MEMORY[0x29EDC1E90]);
    v1 = sub_29D9357B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4EF0);
    }
  }
}

void sub_29D7BFFF8(uint64_t a1)
{
  if (!qword_2A17B4EF8)
  {
    sub_29D936458();
    v1 = sub_29D935208();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4EF8);
    }
  }
}

uint64_t sub_29D7C0058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D7C00A0(uint64_t a1)
{
  if (!qword_2A17B4F10)
  {
    sub_29D7BFF64(255);
    sub_29D935248();
    sub_29D7C0058(&qword_2A17B4F08, sub_29D7BFF64, MEMORY[0x29EDC2110]);
    v1 = sub_29D935C38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4F10);
    }
  }
}

void sub_29D7C015C(uint64_t a1)
{
  if (!qword_2A17B4F20)
  {
    sub_29D7C0248(255);
    sub_29D6AD548();
    sub_29D7C0058(&qword_2A17B4F40, sub_29D7C0248, MEMORY[0x29EDB89C0]);
    sub_29D7C0058(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
    v1 = sub_29D938088();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4F20);
    }
  }
}

void sub_29D7C0248(uint64_t a1)
{
  if (!qword_2A17B4F28)
  {
    sub_29D7C05E8(255, &qword_2A17B4F30, MEMORY[0x29EDC9A40]);
    sub_29D7C02E4();
    v1 = sub_29D9381B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4F28);
    }
  }
}

unint64_t sub_29D7C02E4()
{
  result = qword_2A17B4F38;
  if (!qword_2A17B4F38)
  {
    sub_29D7C05E8(255, &qword_2A17B4F30, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4F38);
  }

  return result;
}

void sub_29D7C0358(uint64_t a1)
{
  if (!qword_2A17B4F48)
  {
    sub_29D6AD548();
    sub_29D7C0710(255, &qword_2A17B4F50, MEMORY[0x29EDC9A40]);
    sub_29D7C0058(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4F48);
    }
  }
}

uint64_t sub_29D7C0420(uint64_t a1, uint64_t a2)
{
  sub_29D7C04B0(0, &qword_2A1A246D8, &qword_2A1A246E0, MEMORY[0x29EDC2D90], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D7C04B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D6B7370(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D7C0518(uint64_t a1)
{
  sub_29D7C04B0(0, &qword_2A1A246D8, &qword_2A1A246E0, MEMORY[0x29EDC2D90], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D7C05A0()
{
  result = qword_2A17B4F58;
  if (!qword_2A17B4F58)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B4F58);
  }

  return result;
}

void sub_29D7C05E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_29D7C063C(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D936378();

  sub_29D7BFB9C(a1, a2);
}

void sub_29D7C0710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D9359D8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D7C0770()
{
  result = qword_2A17B4F78;
  if (!qword_2A17B4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4F78);
  }

  return result;
}

id sub_29D7C07C4(void *a1)
{
  *(v1 + 16) = [objc_opt_self() millimeterOfMercuryUnit];
  result = [objc_opt_self() displayTypeWithIdentifier_];
  if (result)
  {
    *(v1 + 24) = result;
    *(v1 + 32) = [objc_allocWithZone(MEMORY[0x29EDBAE60]) initWithHealthStore_];
    *(v1 + 40) = [*(v1 + 24) hk:*(v1 + 16) numberFormatterForUnit:?];
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = v4;
    v7 = [v5 hk:v6 valueFormatterForUnit:?];

    *(v1 + 48) = v7;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7C08CC(void *a1)
{
  v2 = v1;
  v4 = v2[5];
  sub_29D6B73CC();
  [a1 doubleValueForUnit_];
  v5 = sub_29D93A6C8();
  v6 = [v4 stringFromNumber:v5 displayType:v2[3] unitController:v2[4]];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_29D939D68();

  return v7;
}

uint64_t sub_29D7C097C()
{
  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t sub_29D7C09F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C69666F7270;
  v6 = 0x6163696669746F6ELL;
  v7 = 0xEC0000006E6F6974;
  if (a1 != 4)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x686372616573;
  if (a1 != 1)
  {
    v9 = 0x676E6972616873;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x7972616D6D7573;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656C69666F7270)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC0000006E6F6974;
      if (v10 != 0x6163696669746F6ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
LABEL_34:
        v13 = sub_29D93AD78();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x686372616573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x676E6972616873)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x7972616D6D7573)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_29D7C0BE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006D6F6F52;
  v3 = 0x6570795461746164;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0x73676E6974746573;
    }

    if (v4 == 2)
    {
      v6 = 0x800000029D956D90;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7972616D6D7573;
    }

    else
    {
      v5 = 0x6570795461746164;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEC0000006D6F6F52;
    }
  }

  v7 = 0xD000000000000018;
  v8 = 0x800000029D956D90;
  if (a2 != 2)
  {
    v7 = 0x73676E6974746573;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x7972616D6D7573;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29D93AD78();
  }

  return v11 & 1;
}

uint64_t sub_29D7C0D2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF4A50426D6F6F52;
  v3 = 0x6570795461746164;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x696472616F626E6FLL;
      v6 = 0xEA0000000000676ELL;
    }

    else
    {
      v6 = 0x800000029D957720;
      v5 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x6570795461746164;
    }

    if (v4)
    {
      v6 = 0x800000029D957700;
    }

    else
    {
      v6 = 0xEF4A50426D6F6F52;
    }
  }

  v7 = 0x696472616F626E6FLL;
  v8 = 0x800000029D957720;
  if (a2 == 2)
  {
    v8 = 0xEA0000000000676ELL;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a2)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000029D957700;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29D93AD78();
  }

  return v11 & 1;
}

uint64_t sub_29D7C0E84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x725068746C616568;
  v5 = 0xED0000656C69666FLL;
  if (a1 != 5)
  {
    v4 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v6 = 0x6570795461746164;
  v7 = 0xEC0000006D6F6F52;
  if (a1 != 3)
  {
    v6 = 0x684368746C616568;
    v7 = 0xEF7473696C6B6365;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6573776F7262;
  if (a1 != 1)
  {
    v9 = 0x6163696669746F6ELL;
    v8 = 0xEC0000006E6F6974;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x7972616D6D7573;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v12 = 0x6163696669746F6ELL;
        v13 = 1852795252;
LABEL_32:
        v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v10 != v12)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v14 = 0xE600000000000000;
      if (v10 != 0x6573776F7262)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v10 != 0x7972616D6D7573)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 != 3)
      {
        v14 = 0xEF7473696C6B6365;
        if (v10 != 0x684368746C616568)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v12 = 0x6570795461746164;
      v13 = 1836019538;
      goto LABEL_32;
    }

    if (a2 == 5)
    {
      v14 = 0xED0000656C69666FLL;
      if (v10 != 0x725068746C616568)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
LABEL_39:
        v15 = sub_29D93AD78();
        goto LABEL_40;
      }
    }
  }

LABEL_37:
  if (v11 != v14)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_29D7C10F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x6361725074736562;
    v10 = 0xED00007365636974;
    if (a1 != 6)
    {
      v9 = 0x756F4A6E69676562;
      v10 = 0xEC0000006C616E72;
    }

    v11 = 0x546C616E72756F6ALL;
    v12 = 0xEB00000000657079;
    if (a1 != 4)
    {
      v11 = 0x7265646E696D6572;
      v12 = 0xEC00000065707954;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6F54737365636361;
    v5 = 0xEC00000066667543;
    if (a1 != 2)
    {
      v4 = 0x48756F5965636E6FLL;
      v5 = 0xEF66667543657661;
    }

    v6 = 0xD000000000000012;
    if (a1)
    {
      v6 = 0x74756F62414A5042;
    }

    else
    {
      v3 = 0x800000029D957200;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xED00007365636974;
        if (v7 != 0x6361725074736562)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v14 = 0x756F4A6E69676562;
      v15 = 1818324594;
    }

    else
    {
      if (a2 == 4)
      {
        v13 = 0xEB00000000657079;
        if (v7 != 0x546C616E72756F6ALL)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v14 = 0x7265646E696D6572;
      v15 = 1701869908;
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x74756F62414A5042)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v13 = 0x800000029D957200;
        if (v7 != 0xD000000000000012)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_44;
    }

    if (a2 != 2)
    {
      v13 = 0xEF66667543657661;
      if (v7 != 0x48756F5965636E6FLL)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    v14 = 0x6F54737365636361;
    v15 = 1717990723;
  }

  v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v7 != v14)
  {
LABEL_46:
    v16 = sub_29D93AD78();
    goto LABEL_47;
  }

LABEL_44:
  if (v8 != v13)
  {
    goto LABEL_46;
  }

  v16 = 1;
LABEL_47:

  return v16 & 1;
}

uint64_t sub_29D7C13C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x776F4E746F6ELL;
  if (a1 != 5)
  {
    v5 = 0x7461446465646461;
    v4 = 0xE900000000000061;
  }

  v6 = 0xE400000000000000;
  v7 = 1701736292;
  if (a1 != 3)
  {
    v7 = 0x4A5042676F6CLL;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1954047342;
  if (a1 != 1)
  {
    v9 = 0x64616F4C77656976;
    v8 = 0xE900000000000073;
  }

  if (a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6C65636E6163;
  }

  if (a1)
  {
    v3 = v8;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xE400000000000000;
        if (v11 != 1954047342)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v13 = 0xE900000000000073;
        if (v11 != 0x64616F4C77656976)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6C65636E6163)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x776F4E746F6ELL)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v13 = 0xE900000000000061;
      if (v11 != 0x7461446465646461)
      {
LABEL_41:
        v14 = sub_29D93AD78();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xE400000000000000;
    if (v11 != 1701736292)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x4A5042676F6CLL)
    {
      goto LABEL_41;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t sub_29D7C15DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (v2 == 2)
    {
      v4 = 0x800000029D9576A0;
    }

    else
    {
      v4 = 0x800000029D9576C0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6361725074736562;
    }

    else
    {
      v3 = 0x6574616974696E69;
    }

    if (v2)
    {
      v4 = 0xED00007365636974;
    }

    else
    {
      v4 = 0xEF676E6967676F4CLL;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0xD000000000000014;
    }

    if (a2 == 2)
    {
      v6 = 0x800000029D9576A0;
    }

    else
    {
      v6 = 0x800000029D9576C0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6361725074736562;
    }

    else
    {
      v5 = 0x6574616974696E69;
    }

    if (a2)
    {
      v6 = 0xED00007365636974;
    }

    else
    {
      v6 = 0xEF676E6967676F4CLL;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_29D93AD78();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_29D7C1740(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00646577656956;
  if (a1 > 3u)
  {
    v3 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    if (a1 == 6)
    {
      v8 = 0x73676E6974746573;
      v3 = 0xEE00646577656956;
    }

    v5 = 0x800000029D956CA0;
    v9 = 0xD000000000000019;
    if (a1 != 4)
    {
      v9 = 0xD000000000000016;
      v5 = 0x800000029D956CC0;
    }

    v6 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v7 = v9;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    v3 = 0x800000029D956C60;
    v4 = 0xD000000000000014;
    if (a1 != 2)
    {
      v4 = 0xD00000000000001FLL;
      v3 = 0x800000029D956C80;
    }

    v5 = 0x800000029D956C20;
    if (a1)
    {
      v5 = 0x800000029D956C40;
    }

    v6 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v4;
    }
  }

  if (v6)
  {
    v10 = v5;
  }

  else
  {
    v10 = v3;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        if (v7 != 0x73676E6974746573)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v7 != 0x6E776F6E6B6E75)
        {
LABEL_43:
          v12 = sub_29D93AD78();
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000029D956CA0;
      if (v7 != 0xD000000000000019)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0x800000029D956CC0;
      if (v7 != 0xD000000000000016)
      {
        goto LABEL_43;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x800000029D956C60;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0x800000029D956C80;
      if (v7 != 0xD00000000000001FLL)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2)
    {
      v11 = "notificationViewed";
    }

    else
    {
      v11 = "dataTypeRoomViewed";
    }

    v2 = (v11 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_43;
    }
  }

  if (v10 != v2)
  {
    goto LABEL_43;
  }

  v12 = 1;
LABEL_44:

  return v12 & 1;
}

uint64_t sub_29D7C19A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000656C69546ELL;
  v3 = 0x6F69746F6D6F7270;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6570795461746164;
    }

    else
    {
      v5 = 0x6F69746F6D6F7270;
    }

    if (v4)
    {
      v6 = 0xEC0000006D6F6F52;
    }

    else
    {
      v6 = 0xED0000656C69546ELL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x684368746C616568;
    v6 = 0xEF7473696C6B6365;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6B6E694C70656564;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0x684368746C616568;
  v8 = 0xEF7473696C6B6365;
  v9 = 0xE800000000000000;
  v10 = 0x6B6E694C70656564;
  if (a2 != 3)
  {
    v10 = 0x6E776F6E6B6E75;
    v9 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x6570795461746164;
    v2 = 0xEC0000006D6F6F52;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_29D93AD78();
  }

  return v13 & 1;
}

uint64_t sub_29D7C1B58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x694465746F6D6572;
    }

    else
    {
      v5 = 1701736302;
    }

    if (v2)
    {
      v6 = 0xED0000656C626173;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0x61476E6F69676572;
    v4 = 0xEB00000000646574;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
      v4 = 0x800000029D956F50;
    }

    if (a1 == 2)
    {
      v5 = 0x6970784564656573;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xEA00000000007972;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x694465746F6D6572;
    }

    else
    {
      v11 = 1701736302;
    }

    if (a2)
    {
      v10 = 0xED0000656C626173;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x61476E6F69676572;
    v8 = 0x800000029D956F50;
    if (a2 == 3)
    {
      v8 = 0xEB00000000646574;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v9 = 0x6970784564656573;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEA00000000007972;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_29D93AD78();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_29D7C1D0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1954047342;
    }

    else
    {
      v4 = 0x7075746573;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6C65636E6163;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1701736292;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x726574616CLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1954047342;
    }

    else
    {
      v9 = 0x7075746573;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1701736292;
    if (a2 != 3)
    {
      v6 = 0x726574616CLL;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6C65636E6163;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_29D93AD78();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_29D7C1E64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006D6F6F52;
  v3 = 0xD000000000000010;
  v4 = 0x6570795461746164;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x6570795461746164;
    }

    if (v5)
    {
      v7 = 0x800000029D956D50;
    }

    else
    {
      v7 = 0xEC0000006D6F6F52;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0xE800000000000000;
    v6 = 0x73676E6974746573;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000018;
    }

    if (v5 == 3)
    {
      v7 = 0x800000029D956D70;
    }

    else
    {
      v7 = 0x800000029D956D90;
    }
  }

  if (a2 <= 1u)
  {
    v8 = 0x800000029D956D50;
    v9 = a2 == 0;
LABEL_20:
    if (v9)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    if (v9)
    {
      v11 = v2;
    }

    else
    {
      v11 = v8;
    }

    if (v6 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2 != 2)
  {
    v2 = 0x800000029D956D70;
    v4 = 0xD000000000000013;
    v8 = 0x800000029D956D90;
    v3 = 0xD000000000000018;
    v9 = a2 == 3;
    goto LABEL_20;
  }

  v11 = 0xE800000000000000;
  if (v6 != 0x73676E6974746573)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v7 != v11)
  {
LABEL_30:
    v12 = sub_29D93AD78();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_29D7C1FF4()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D7C20EC(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

uint64_t sub_29D7C21D0(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D7C22C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D7C35E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D7C22F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xEA00000000007972;
  v6 = 0x6970784564656573;
  v7 = 0xEB00000000646574;
  v8 = 0x61476E6F69676572;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000029D956F50;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x694465746F6D6572;
    v3 = 0xED0000656C626173;
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

uint64_t sub_29D7C2458()
{
  v0 = sub_29D934148();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D934178();
  sub_29D6FD494(v5, qword_2A1A2BE20);
  sub_29D69C6C0(v5, qword_2A1A2BE20);
  sub_29D933FE8();
  sub_29D7C3E9C(0);
  v6 = sub_29D933F58();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D93DDB0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x29EDC3750], v6);
  sub_29D6E4080(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  if (qword_2A1A23BB0 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v4, *MEMORY[0x29EDC3898], v0);
  sub_29D935E88();
  return sub_29D934168();
}

void sub_29D7C26AC()
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = *MEMORY[0x29EDBA870];
  v2 = [ObjCClassFromMetadata quantityTypeForIdentifier_];

  v7 = v2;
  v3 = MEMORY[0x29EDCA190];
  v6 = MEMORY[0x29EDCA190];
  if (v2)
  {
    v4 = v2;
    MEMORY[0x29ED6A300]();
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D939F78();
    }

    sub_29D939FA8();
    v3 = v6;
  }

  sub_29D7C3D5C(&v7);
  v5 = sub_29D7AF2C4(v3);

  qword_2A1A2BE38 = v5;
}

uint64_t sub_29D7C27C8()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EC0);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D963040);
  MEMORY[0x29ED6A240](0xD00000000000004CLL, 0x800000029D963160);
  return 0;
}

uint64_t sub_29D7C288C(void *a1)
{
  v1 = [a1 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v2 = sub_29D939F38();

  v3 = *(v2 + 16);
  if (v3)
  {
    v16 = MEMORY[0x29EDCA190];
    sub_29D7EE600(0, v3, 0);
    v4 = 32;
    v5 = v16;
    do
    {
      v6 = sub_29D939D68();
      v17 = v5;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_29D7EE600((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v5 = v17;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  sub_29D782F64(0, &qword_2A17B3628, MEMORY[0x29EDC9A40]);
  sub_29D738398(v13);
  v14 = sub_29D939CA8();

  return v14;
}

uint64_t sub_29D7C2A14(uint64_t (*a1)(uint64_t))
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EC0);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D963040);
  v2 = MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D963120);
  v3 = a1(v2);
  MEMORY[0x29ED6A240](v3);

  return 0;
}

uint64_t sub_29D7C2B08(uint64_t (*a1)(uint64_t))
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EC0);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D963040);
  v2 = MEMORY[0x29ED6A240](0xD000000000000032, 0x800000029D9630E0);
  v3 = a1(v2);
  MEMORY[0x29ED6A240](v3);

  return 0;
}

uint64_t sub_29D7C2BFC(uint64_t (*a1)(uint64_t))
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EC0);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D963040);
  v2 = MEMORY[0x29ED6A240](0xD00000000000003ALL, 0x800000029D963060);
  v3 = a1(v2);
  MEMORY[0x29ED6A240](v3);

  return 0;
}

uint64_t sub_29D7C2CF0(uint64_t (*a1)(uint64_t))
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EC0);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D963040);
  v2 = MEMORY[0x29ED6A240](0xD000000000000033, 0x800000029D9630A0);
  v3 = a1(v2);
  MEMORY[0x29ED6A240](v3);

  return 0;
}

uint64_t sub_29D7C2DE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = sub_29D933F58();
  v40 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9340F8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D933FE8();
  v16 = sub_29D933FD8();

  if ((v16 & 1) == 0 || (v17 = sub_29D7C3AEC(v3), v18 >> 60 == 15))
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v19, qword_2A1A2BF58);
    v41[0] = 0;
    sub_29D9371C8();
LABEL_6:
    v20 = 1;
    return (*(v11 + 56))(a3, v20, 1, v10);
  }

  v38 = v17;
  v39 = v18;
  v37 = a3;
  if (!v3)
  {

LABEL_11:
    a3 = v37;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v23, qword_2A1A2BF58);
    v41[0] = 0;
    sub_29D9371C8();
    sub_29D71847C(v38, v39);
    goto LABEL_6;
  }

  v22 = sub_29D93AD78();

  if (v22)
  {
    goto LABEL_11;
  }

  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v24, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = v3;
  v41[0] = 0;
  sub_29D9371C8();

  if (qword_2A1A23BB0 != -1)
  {
    swift_once();
  }

  v36 = qword_2A1A2BE38;
  sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
  v25 = sub_29D93A0F8();
  sub_29D782F64(0, &qword_2A1A21F18, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = sub_29D934278();
  *(inited + 40) = v27;
  v35 = sub_29D7DB014(inited, v25);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  v34 = "ontroller";
  type metadata accessor for AFibBurdenRescindedTileViewController(0);
  sub_29D933FF8();
  v33[1] = v28;
  (*(v40 + 104))(v9, *MEMORY[0x29EDC3750], v6);
  v30 = v38;
  v29 = v39;
  sub_29D7C3D48(v38, v39);
  v31 = a1;
  sub_29D9340A8();
  sub_29D935E88();
  sub_29D9340B8();
  sub_29D934078();
  v32 = sub_29D9340C8();
  sub_29D7A6488(v35);
  v32(v41, 0);
  sub_29D71847C(v30, v29);
  a3 = v37;
  (*(v11 + 32))(v37, v14, v10);
  v20 = 0;
  return (*(v11 + 56))(a3, v20, 1, v10);
}

uint64_t sub_29D7C33F8()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EC0);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D962EF0);
  MEMORY[0x29ED6A240](0xD000000000000048, 0x800000029D962F20);
  return 0;
}

unint64_t sub_29D7C34C0(unsigned __int8 a1)
{
  sub_29D93AA18();

  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xEA00000000007972;
  v5 = 0x6970784564656573;
  v6 = 0xEB00000000646574;
  v7 = 0x61476E6F69676572;
  if (a1 != 3)
  {
    v7 = 0xD000000000000012;
    v6 = 0x800000029D956F50;
  }

  if (a1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (a1)
  {
    v3 = 0x694465746F6D6572;
    v2 = 0xED0000656C626173;
  }

  if (a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a1 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x29ED6A240](v8, v9);

  return 0xD000000000000066;
}

unint64_t sub_29D7C35E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D7C3634()
{
  v0 = sub_29D9371B8();
  if ((sub_29D937198() & 1) == 0)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v4, qword_2A1A2BF58);
    sub_29D9371C8();

    return 0;
  }

  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = *MEMORY[0x29EDBA600];
  v3 = v0;
  if ([v3 isRequirementSatisfiedWithIdentifier_])
  {
    if ([v3 isRequirementSatisfiedWithIdentifier_])
    {
      if ([v3 isRequirementSatisfiedWithIdentifier_] && (objc_msgSend(v3, sel_isRequirementSatisfiedWithIdentifier_, *MEMORY[0x29EDBA5D0]) & 1) == 0)
      {
        if (qword_2A1A24678 != -1)
        {
          swift_once();
        }

        sub_29D6A9ED4(0);
        sub_29D69C6C0(v12, qword_2A1A2BF58);
        v13 = swift_allocObject();
        *(v13 + 16) = sub_29D7C3E74;
        *(v13 + 24) = v1;

        sub_29D9371C8();

        return 4;
      }

      else
      {
        if ([v3 isRequirementSatisfiedWithIdentifier_])
        {

          return 0;
        }

        if (qword_2A1A24678 != -1)
        {
          swift_once();
        }

        sub_29D6A9ED4(0);
        sub_29D69C6C0(v10, qword_2A1A2BF58);
        v11 = swift_allocObject();
        *(v11 + 16) = sub_29D7C3E74;
        *(v11 + 24) = v1;

        sub_29D9371C8();

        return 3;
      }
    }

    else
    {
      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }

      sub_29D6A9ED4(0);
      sub_29D69C6C0(v8, qword_2A1A2BF58);
      v9 = swift_allocObject();
      *(v9 + 16) = sub_29D7C3E74;
      *(v9 + 24) = v1;

      sub_29D9371C8();

      return 2;
    }
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v6, qword_2A1A2BF58);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_29D7C3E74;
    *(v7 + 24) = v1;

    sub_29D9371C8();

    return 1;
  }
}

uint64_t sub_29D7C3AEC(char a1)
{
  v1 = sub_29D937898();
  MEMORY[0x2A1C7C4A8](v1, v2);
  sub_29D933108();
  swift_allocObject();
  sub_29D9330F8();
  sub_29D7C3E20();
  v3 = sub_29D9330E8();

  return v3;
}

uint64_t sub_29D7C3D48(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29D6AA230(result, a2);
  }

  return result;
}

uint64_t sub_29D7C3D5C(uint64_t a1)
{
  sub_29D7C3DB8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D7C3DB8(uint64_t a1)
{
  if (!qword_2A1A22240)
  {
    sub_29D69567C(255, &qword_2A1A24940, 0x29EDBACB8);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22240);
    }
  }
}

unint64_t sub_29D7C3E20()
{
  result = qword_2A1A23568;
  if (!qword_2A1A23568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23568);
  }

  return result;
}

void sub_29D7C3E9C(uint64_t a1)
{
  if (!qword_2A1A24898)
  {
    sub_29D933F58();
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24898);
    }
  }
}

unint64_t sub_29D7C3F08()
{
  result = qword_2A1A24128;
  if (!qword_2A1A24128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24128);
  }

  return result;
}

unint64_t sub_29D7C3F5C()
{
  result = qword_2A1A24120;
  if (!qword_2A1A24120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24120);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenOnboardingPresentationContext(uint64_t a1)
{
  result = qword_2A17B4FF0;
  if (!qword_2A17B4FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7C3FFC(uint64_t a1)
{
  sub_29D7C4060();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_29D7C4060()
{
  if (!qword_2A17B5000)
  {
    v0 = sub_29D9350C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5000);
    }
  }
}

uint64_t sub_29D7C40A8()
{
  v1 = v0;
  v2 = sub_29D9350C8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71B998(v1, v10);
  if (swift_getEnumCaseMultiPayload() > 3)
  {
    return 0x6B6E694C70656564;
  }

  (*(v3 + 32))(v6, v10, v2);
  v11 = sub_29D935098();
  (*(v3 + 8))(v6, v2);
  return v11;
}

unint64_t sub_29D7C4224()
{
  v1 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  MEMORY[0x2A1C7C4A8](v1, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71B998(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0xD000000000000015;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v6 = 0x684368746C616568;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      return 0x6B6E694C70656564;
    }

    v6 = 0xD000000000000018;
  }

  v7 = sub_29D9350C8();
  (*(*(v7 - 8) + 8))(v4, v7);
  return v6;
}

uint64_t sub_29D7C43A8(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v3 = sub_29D9350C8();
  v63 = *(v3 - 8);
  v64 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v3, v4);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v61 = &v60 - v9;
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v60 - v12;
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v60 - v15;
  v17 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  v19 = MEMORY[0x2A1C7C4A8](v17, v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v25 = &v60 - v24;
  v27 = MEMORY[0x2A1C7C4A8](v23, v26);
  v29 = &v60 - v28;
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = &v60 - v31;
  sub_29D7C489C(0);
  v35 = MEMORY[0x2A1C7C4A8](v33 - 8, v34);
  v37 = &v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v35 + 56);
  sub_29D71B998(a1, v37);
  sub_29D71B998(v65, &v37[v38]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_29D71B998(v37, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v54 = v63;
        v53 = v64;
        (*(v63 + 32))(v13, &v37[v38], v64);
        v44 = sub_29D9350B8();
        v55 = *(v54 + 8);
        v55(v13, v53);
        v55(v29, v53);
        goto LABEL_21;
      }

      v21 = v29;
    }

    else
    {
      sub_29D71B998(v37, v32);
      if (!swift_getEnumCaseMultiPayload())
      {
        v57 = v63;
        v56 = v64;
        (*(v63 + 32))(v16, &v37[v38], v64);
        v44 = sub_29D9350B8();
        v58 = *(v57 + 8);
        v58(v16, v56);
        v58(v32, v56);
        goto LABEL_21;
      }

      v21 = v32;
    }

LABEL_17:
    (*(v63 + 8))(v21, v64);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_29D71B998(v37, v25);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v46 = v63;
      v47 = &v37[v38];
      v48 = v61;
      v49 = v64;
      (*(v63 + 32))(v61, v47, v64);
      v44 = sub_29D9350B8();
      v50 = *(v46 + 8);
      v50(v48, v49);
      v50(v25, v49);
      goto LABEL_21;
    }

    v21 = v25;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_29D71B998(v37, v21);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v41 = v62;
      v40 = v63;
      v42 = &v37[v38];
      v43 = v64;
      (*(v63 + 32))(v62, v42, v64);
      v44 = sub_29D9350B8();
      v45 = *(v40 + 8);
      v45(v41, v43);
      v45(v21, v43);
LABEL_21:
      v52 = type metadata accessor for AFibBurdenOnboardingPresentationContext;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v51 = swift_getEnumCaseMultiPayload();
  v52 = type metadata accessor for AFibBurdenOnboardingPresentationContext;
  if (v51 != 4)
  {
LABEL_18:
    v44 = 0;
    v52 = sub_29D7C489C;
    goto LABEL_22;
  }

  v44 = 1;
LABEL_22:
  sub_29D7C4900(v37, v52);
  return v44 & 1;
}

void sub_29D7C489C(uint64_t a1)
{
  if (!qword_2A17B5008)
  {
    type metadata accessor for AFibBurdenOnboardingPresentationContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B5008);
    }
  }
}

uint64_t sub_29D7C4900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BloodPressureJournalMeasurementsViewActionHandler(uint64_t a1)
{
  result = qword_2A17B5010;
  if (!qword_2A17B5010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7C49EC(uint64_t a1)
{
  v2 = sub_29D9369A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v6, a1, v2);
  v7 = sub_29D936548();
  (*(v3 + 8))(a1, v2);
  return v7;
}

uint64_t sub_29D7C4AF4()
{
  sub_29D936558();

  return swift_deallocClassInstance();
}

unint64_t sub_29D7C4B30()
{
  result = qword_2A17B1648;
  if (!qword_2A17B1648)
  {
    type metadata accessor for BloodPressureJournalMeasurementsViewActionHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1648);
  }

  return result;
}

uint64_t sub_29D7C4BB4()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[2];

  if (!v3)
  {
LABEL_6:
    LOBYTE(v8) = 0;
    v9 = (v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isJournalComplete);
    if ((*(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isJournalComplete) & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = v1[4];
  v5 = objc_allocWithZone(MEMORY[0x29EDC5210]);
  v6 = v3;
  v7 = [v5 initWithJournal:v6 healthStore:v4];
  if (![v7 buildSummary])
  {

    goto LABEL_6;
  }

  v8 = [swift_unknownObjectRetain() isComplete];

  swift_unknownObjectRelease_n();
  v9 = (v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isJournalComplete);
  if (v8 == *(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isJournalComplete))
  {
LABEL_4:
    *v9 = v8;

    goto LABEL_8;
  }

LABEL_7:
  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v2;
  *(v10 + 24) = v8;
  v0[2] = v2;
  sub_29D7C6CDC(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E08();

LABEL_8:
  v11 = v0[1];

  return v11();
}

uint64_t sub_29D7C4DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x2A1C73D48](sub_29D7C4DD0, 0, 0);
}

uint64_t sub_29D7C4DD0()
{
  v1 = v0[3];
  v0[5] = *(v0[4] + 40);
  v2 = v1;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_29D7C4E80;
  v4 = v0[3];

  return sub_29D7023D4(0, v4);
}

uint64_t sub_29D7C4E80(char a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2A1C73D48](sub_29D7C4F80, 0, 0);
}

uint64_t sub_29D7C4F80()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__hasValidSamples;
  if (v1 == *(v2 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__hasValidSamples))
  {

    *(v2 + v3) = v1;
  }

  else
  {
    v4 = *(v0 + 24);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    *(v5 + 24) = v1;
    *(v0 + 16) = v2;
    sub_29D7C6CDC(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
    sub_29D933E08();
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_29D7C50E8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = swift_allocObject();
    swift_weakInit();
    v10[4] = sub_29D7C6D88;
    v10[5] = v3;
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1107296256;
    v10[2] = sub_29D8E44F0;
    v10[3] = &unk_2A2446270;
    v4 = _Block_copy(v10);
    v5 = v1;

    [v2 closeJournal:v5 completion:v4];
    _Block_release(v4);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v6 = sub_29D937898();
    sub_29D69C6C0(v6, qword_2A1A2C008);
    v7 = sub_29D937878();
    v8 = sub_29D93A268();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_29D677000, v7, v8, "BPJ Notification Settings: Did tap to end journal", v9, 2u);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }
  }
}

void sub_29D7C529C(char a1, void *a2, uint64_t a3)
{
  v6 = sub_29D939968();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v11 = sub_29D939998();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (a2)
  {
    v17 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v18 = sub_29D937898();
    sub_29D69C6C0(v18, qword_2A1A2C008);
    v19 = a2;
    v20 = sub_29D937878();
    v21 = sub_29D93A288();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = sub_29D93ADF8();
      v26 = sub_29D6C2364(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_29D677000, v20, v21, "Error closing journal: %s", v22, 0xCu);
      sub_29D69417C(v23);
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    else
    {
    }
  }

  else if (a1)
  {
    v27 = v14;
    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v28 = sub_29D93A468();
    aBlock[4] = sub_29D7C6D90;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2446298;
    v29 = _Block_copy(aBlock);

    sub_29D939988();
    aBlock[0] = MEMORY[0x29EDCA190];
    sub_29D7C6CDC(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
    sub_29D7C6D24(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D6FC864();
    sub_29D93A888();
    MEMORY[0x29ED6A880](0, v16, v10, v29);
    _Block_release(v29);

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v16, v27);
  }
}

uint64_t sub_29D7C56FC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(*(result + 40) + 16))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x2A1C7C4A8](KeyPath, v3);
      sub_29D7C6CDC(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);

      sub_29D933E08();
    }
  }

  return result;
}

void sub_29D7C5854()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_29D7C5A5C(v0);
    v4 = sub_29D7C5F68(v2, v0);
    sub_29D6A0C58();
    v5 = swift_allocObject();
    if (v4)
    {
      *(v5 + 16) = xmmword_29D941B10;
      *(v5 + 32) = v3;
      *(v5 + 40) = v4;
    }

    else
    {
      *(v5 + 16) = xmmword_29D940030;
      *(v5 + 32) = v3;
    }

    sub_29D69567C(0, &qword_2A17B4DB8, 0x29EDC5208);
    v6 = v3;
    v7 = v4;
    v8 = sub_29D939F18();
    v9 = [v2 updatedJournalWithTimeIntervals_];

    v10 = *(v0 + 24);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v9;
    v12[4] = v5;
    v15[4] = sub_29D7C6CB0;
    v15[5] = v12;
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 1107296256;
    v15[2] = sub_29D8E44F0;
    v15[3] = &unk_2A24461F8;
    v13 = _Block_copy(v15);
    v14 = v9;

    [v10 saveJournal:v14 completion:v13];
    _Block_release(v13);
  }
}

id sub_29D7C5A5C(uint64_t a1)
{
  v34 = a1;
  v39 = sub_29D9339F8();
  v1 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39, v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D933AB8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D933CE8();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D933318();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x29EDB9C78], v5);
  sub_29D933AC8();
  (*(v6 + 8))(v9, v5);
  sub_29D7C6D24(0, &qword_2A17B1A90, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v18 = sub_29D933CC8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29D93F680;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, *MEMORY[0x29EDB9CC8], v18);
  v24(v23 + v20, *MEMORY[0x29EDB9CE0], v18);
  sub_29D6E3748(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v25 = *(v34 + 40);
  swift_getKeyPath();
  v40 = v25;
  sub_29D7C6CDC(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);

  sub_29D933E18();

  v26 = OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__wakeupTime;
  swift_beginAccess();
  v27 = v25 + v26;
  v28 = v39;
  (*(v1 + 16))(v4, v27, v39);

  sub_29D933B48();

  (*(v1 + 8))(v4, v28);
  (*(v35 + 8))(v13, v36);
  v29 = objc_allocWithZone(MEMORY[0x29EDC5208]);
  v30 = sub_29D933288();
  v31 = [v29 initWithDayWindowType:0 scheduledTime:v30];

  (*(v37 + 8))(v17, v38);
  return v31;
}

id sub_29D7C5F68(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_29D9339F8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D933AB8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D933CE8();
  v41 = *(v13 - 8);
  v42 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D933318();
  v43 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 journalType];
  result = 0;
  if (!v21)
  {
    (*(v9 + 104))(v12, *MEMORY[0x29EDB9C78], v8);
    sub_29D933AC8();
    (*(v9 + 8))(v12, v8);
    sub_29D7C6D24(0, &qword_2A17B1A90, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
    v23 = sub_29D933CC8();
    v24 = *(v23 - 8);
    v38 = v3;
    v39 = v17;
    v25 = v24;
    v26 = *(v24 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_29D93F680;
    v29 = v28 + v27;
    v30 = *(v25 + 104);
    v30(v29, *MEMORY[0x29EDB9CC8], v23);
    v30(v29 + v26, *MEMORY[0x29EDB9CE0], v23);
    sub_29D6E3748(v28);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v31 = *(v40 + 40);
    swift_getKeyPath();
    v44 = v31;
    sub_29D7C6CDC(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);

    sub_29D933E18();

    v32 = OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__bedTime;
    swift_beginAccess();
    v33 = v38;
    (*(v4 + 16))(v7, v31 + v32, v38);

    sub_29D933B48();

    (*(v4 + 8))(v7, v33);
    (*(v41 + 8))(v16, v42);
    v34 = objc_allocWithZone(MEMORY[0x29EDC5208]);
    v35 = sub_29D933288();
    v36 = [v34 initWithDayWindowType:1 scheduledTime:v35];

    (*(v43 + 8))(v20, v39);
    return v36;
  }

  return result;
}

void sub_29D7C64A0(char a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v52 = a3;
  v51 = sub_29D939968();
  v9 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D939998();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  if (a2)
  {
    v49 = v9;
    v50 = a5;
    v18 = a2;
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
      v48 = a4;
      v24 = v23;
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = sub_29D93ADF8();
      v28 = sub_29D6C2364(v26, v27, aBlock);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29D677000, v21, v22, "Error updating journal: %s", v24, 0xCu);
      sub_29D69417C(v25);
      v29 = v25;
      v17 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      MEMORY[0x29ED6BE30](v29, -1, -1);
      v30 = v24;
      a4 = v48;
      MEMORY[0x29ED6BE30](v30, -1, -1);
    }

    else
    {
    }

    v9 = v49;
    a5 = v50;
  }

  if (a1)
  {
    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v50 = sub_29D93A468();
    v31 = swift_allocObject();
    v32 = v16;
    v33 = v51;
    *(v31 + 16) = v52;
    *(v31 + 24) = a4;
    aBlock[4] = sub_29D7C6CD4;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2446248;
    v34 = a4;
    v35 = _Block_copy(aBlock);

    v36 = v34;

    sub_29D939988();
    aBlock[0] = MEMORY[0x29EDCA190];
    sub_29D7C6CDC(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
    sub_29D7C6D24(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D6FC864();
    sub_29D93A888();
    v37 = v50;
    MEMORY[0x29ED6A880](0, v32, v12, v35);
    _Block_release(v35);

    (*(v9 + 8))(v12, v33);
    (*(v53 + 8))(v32, v54);
  }

  if (v17[227] != -1)
  {
    swift_once();
  }

  v38 = sub_29D937898();
  sub_29D69C6C0(v38, qword_2A1A2C008);
  sub_29D935E88();
  v39 = sub_29D937878();
  v40 = sub_29D93A268();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    v43 = sub_29D69567C(0, &qword_2A17B4DB8, 0x29EDC5208);
    v44 = MEMORY[0x29ED6A340](a5, v43);
    v46 = sub_29D6C2364(v44, v45, aBlock);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_29D677000, v39, v40, "Successfully updated journal with time intervals: %s", v41, 0xCu);
    sub_29D69417C(v42);
    MEMORY[0x29ED6BE30](v42, -1, -1);
    MEMORY[0x29ED6BE30](v41, -1, -1);
  }
}

uint64_t sub_29D7C6A50(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v4 = a2;
    sub_29D7F1064(a2);
  }

  return result;
}

uint64_t sub_29D7C6AD0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D7C6B94@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_29D7C6CDC(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_29D7C6CBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D7C6CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D7C6D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D7C6DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = sub_29D7C7368(a1, a2);
  v10 = v5[2];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v8;
  v14[4] = sub_29D7C76B8;
  v14[5] = v11;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1107296256;
  v14[2] = sub_29D8E44F0;
  v14[3] = &unk_2A24462E8;
  v12 = _Block_copy(v14);
  v13 = v9;

  [v10 saveObject:v13 withCompletion:v12];
  _Block_release(v12);
}

uint64_t sub_29D7C6EFC(int a1, void *a2, void *a3, uint64_t (*a4)(void, void *), uint64_t a5, uint64_t a6)
{
  v47 = a4;
  v10 = sub_29D933A58();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v46 = a1;
    v45 = a5;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v15 = sub_29D937898();
    sub_29D69C6C0(v15, qword_2A1A2C008);
    v16 = a3;
    v17 = sub_29D937878();
    v18 = sub_29D93A2A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48 = v44;
      *v19 = 136446466;
      v20 = sub_29D93AF08();
      v22 = sub_29D6C2364(v20, v21, &v48);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = [v16 UUID];
      sub_29D933A38();

      sub_29D7C76DC();
      v24 = sub_29D93AD38();
      v26 = v25;
      (*(v11 + 8))(v14, v10);
      v27 = sub_29D6C2364(v24, v26, &v48);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s] Successfully saved blood pressure sample with UUID: %s.", v19, 0x16u);
      v28 = v44;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v28, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }

    LOBYTE(a1) = v46;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v29 = sub_29D937898();
    sub_29D69C6C0(v29, qword_2A1A2C008);
    v30 = a2;
    v31 = sub_29D937878();
    v32 = sub_29D93A288();

    if (os_log_type_enabled(v31, v32))
    {
      v46 = a1;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v33 = 136446466;
      v36 = sub_29D93AF08();
      v38 = sub_29D6C2364(v36, v37, &v48);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2112;
      if (a2)
      {
        v39 = a2;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = v40;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      LOBYTE(a1) = v46;
      *(v33 + 14) = v40;
      *v34 = v41;
      _os_log_impl(&dword_29D677000, v31, v32, "[%{public}s] Error when saving sample: %@", v33, 0x16u);
      sub_29D7C778C(v34, sub_29D6ACA98);
      MEMORY[0x29ED6BE30](v34, -1, -1);
      sub_29D69417C(v35);
      MEMORY[0x29ED6BE30](v35, -1, -1);
      MEMORY[0x29ED6BE30](v33, -1, -1);
    }
  }

  return v47(a1 & 1, a2);
}

id sub_29D7C7368(uint64_t a1, uint64_t a2)
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v4 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v5 = sub_29D933958();
  v6 = sub_29D933958();
  v7 = objc_opt_self();
  v8 = [v7 quantitySampleWithType:v4 quantity:a1 startDate:v5 endDate:v6];

  v9 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  v10 = sub_29D933958();
  v11 = sub_29D933958();
  v12 = [v7 quantitySampleWithType:v9 quantity:a2 startDate:v10 endDate:v11];

  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v13 = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D941B10;
  *(inited + 32) = v8;
  *(inited + 40) = v12;
  v15 = v8;
  v16 = v12;
  sub_29D7AF358(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D7C7734(0);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_29D93DDB0;
  *(v17 + 32) = sub_29D939D68();
  *(v17 + 40) = v18;
  *(v17 + 72) = MEMORY[0x29EDC9A98];
  *(v17 + 48) = 1;
  sub_29D73F010(v17);
  swift_setDeallocating();
  sub_29D7C778C(v17 + 32, sub_29D74D460);
  v19 = sub_29D933958();
  v20 = sub_29D933958();
  sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  sub_29D702E20();
  v21 = sub_29D93A0C8();

  v22 = sub_29D939C58();

  v23 = [objc_opt_self() correlationWithType:v13 startDate:v19 endDate:v20 objects:v21 metadata:v22];

  return v23;
}

uint64_t sub_29D7C76C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D7C76DC()
{
  result = qword_2A17B3C50;
  if (!qword_2A17B3C50)
  {
    sub_29D933A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3C50);
  }

  return result;
}

void sub_29D7C7734(uint64_t a1)
{
  if (!qword_2A17B7B00)
  {
    sub_29D74D460();
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7B00);
    }
  }
}

uint64_t sub_29D7C778C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D7C78AC()
{
  sub_29D9351F8();

  return swift_deallocClassInstance();
}

uint64_t sub_29D7C795C(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D935D08();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CC8();
  v7 = sub_29D935CF8();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_29D7C7A8C()
{
  type metadata accessor for AFibBurdenLifeFactorDescriptionCell();
  sub_29D7C7D48(&qword_2A17B5058, type metadata accessor for AFibBurdenLifeFactorDescriptionCell, &unk_29D943544);
  return sub_29D93A348();
}

void *sub_29D7C7AFC@<X0>(void *a1@<X8>)
{
  v2 = sub_29D936F28();
  v4 = v3;
  v5 = sub_29D715378();
  v7 = v6;
  type metadata accessor for TitleSubtitleView();
  sub_29D7C7D48(&qword_2A17B5060, type metadata accessor for TitleSubtitleView, &unk_29D94B6D4);
  v8 = sub_29D9350D8();
  v10 = v9;
  a1[3] = &type metadata for TitleSubtitleItem;
  a1[4] = sub_29D7C7D90();
  result = swift_allocObject();
  *a1 = result;
  result[2] = 0xD000000000000011;
  result[3] = 0x800000029D9633E0;
  result[4] = v8;
  result[5] = v10;
  result[6] = v2;
  result[7] = v4;
  result[8] = v5;
  result[9] = v7;
  return result;
}

id sub_29D7C7C40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorAppRecommendationsFetchedResultsControllerDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D7C7C90()
{
  type metadata accessor for TitleSubtitleView();
  sub_29D7C7D48(&qword_2A17B5060, type metadata accessor for TitleSubtitleView, &unk_29D94B6D4);
  return sub_29D93A368();
}

uint64_t sub_29D7C7D48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D7C7D90()
{
  result = qword_2A17B5068;
  if (!qword_2A17B5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5068);
  }

  return result;
}

uint64_t sub_29D7C7DE4(_OWORD *a1)
{
  v2 = sub_29D933A58();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v7 = MEMORY[0x29EDC9E90];
  sub_29D7C8038(0, &qword_2A17B5530, sub_29D7C8004, MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  v17 = xmmword_29D93DDB0;
  *(v8 + 16) = xmmword_29D93DDB0;
  sub_29D7C8038(0, &qword_2A17B1138, sub_29D6FC5F4, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v17;
  *(v9 + 56) = &type metadata for AFibBurdenLifeFactorDescriptionItem;
  *(v9 + 64) = sub_29D7639C4();
  v10 = swift_allocObject();
  *(v9 + 32) = v10;
  v11 = a1[1];
  v10[1] = *a1;
  v10[2] = v11;
  v12 = a1[3];
  v10[3] = a1[2];
  v10[4] = v12;
  *(v8 + 32) = v9;
  v19 = 0x3C53447961727241;
  v20 = 0xE800000000000000;
  sub_29D7C809C(a1, v18);
  sub_29D933A48();
  v13 = sub_29D933A18();
  v15 = v14;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x29ED6A240](v13, v15);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  return sub_29D9351E8();
}

void sub_29D7C8038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7C80F8(uint64_t a1, uint64_t a2)
{
  sub_29D7CA15C(0, &qword_2A1A22330, MEMORY[0x29EDC2D78], MEMORY[0x29EDB8AC0]);
  v4 = v3;
  v25 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v24 - v6;
  sub_29D69BECC(0);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D934358();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *MEMORY[0x29EDBA6B0];
  sub_29D7CA1D0(a2, v11, sub_29D69BECC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_29D7CA238(v11);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v18 = sub_29D934348();
    v19 = v20;
    (*(v13 + 8))(v16, v12);
  }

  v21 = sub_29D8FC9F4(v17, v18, v19);

  if (v21)
  {
    v22 = sub_29D6B74EC();
  }

  else
  {
    sub_29D9371A8();
    sub_29D938348();
    sub_29D7CA294();
    v22 = sub_29D938418();
    (*(v25 + 8))(v7, v4);
  }

  return v22;
}

uint64_t sub_29D7C83E0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D7C843C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a4;
  sub_29D7C964C(0, &qword_2A1A24AF8, MEMORY[0x29EDB89D0]);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v42 - v9;
  v11 = sub_29D937898();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v42 - v18;
  sub_29D7C9708(0, &qword_2A1A24870, MEMORY[0x29EDC9E90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D93DDB0;
  *(v20 + 32) = sub_29D7C9798(a1, a2);
  sub_29D934198();
  if ((sub_29D934418() & 1) == 0)
  {
    sub_29D934D28();
    v29 = sub_29D937878();
    v30 = sub_29D93A2A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v11;
      v33 = v32;
      v46 = v32;
      v47 = a3;
      *v31 = 136446210;
      swift_getMetatypeMetadata();
      v34 = sub_29D939DA8();
      v36 = sub_29D6C2364(v34, v35, &v46);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_29D677000, v29, v30, "[%{public}s]: In foreground mode, so will continue to listen for updates", v31, 0xCu);
      sub_29D69417C(v33);
      MEMORY[0x29ED6BE30](v33, -1, -1);
      MEMORY[0x29ED6BE30](v31, -1, -1);

      (*(v12 + 8))(v16, v42);
      goto LABEL_9;
    }

    v37 = *(v12 + 8);
    v38 = v16;
LABEL_8:
    v37(v38, v11);
    goto LABEL_9;
  }

  sub_29D934D28();
  v21 = sub_29D937878();
  v22 = sub_29D93A2A8();
  if (!os_log_type_enabled(v21, v22))
  {

    v37 = *(v12 + 8);
    v38 = v19;
    goto LABEL_8;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v42 = v11;
  v25 = v24;
  v46 = v24;
  v47 = a3;
  *v23 = 136446210;
  swift_getMetatypeMetadata();
  v26 = sub_29D939DA8();
  v28 = sub_29D6C2364(v26, v27, &v46);

  *(v23 + 4) = v28;
  _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s]: In background mode, so will finish after 1 update", v23, 0xCu);
  sub_29D69417C(v25);
  MEMORY[0x29ED6BE30](v25, -1, -1);
  MEMORY[0x29ED6BE30](v23, -1, -1);

  (*(v12 + 8))(v19, v42);
LABEL_9:
  v47 = v20;
  sub_29D7CA15C(0, &qword_2A1A24AD8, sub_29D6CE0BC, MEMORY[0x29EDB89F8]);
  sub_29D7C9708(0, &qword_2A1A249B0, MEMORY[0x29EDC9A40]);
  sub_29D7C9DF8(&qword_2A1A24AE0, &qword_2A1A24AD8, sub_29D6CE0BC);
  sub_29D7C9D40();
  sub_29D9381D8();
  sub_29D7C9DB4(&qword_2A1A24B00, &qword_2A1A24AF8, MEMORY[0x29EDB89D0], MEMORY[0x29EDB89D8]);
  v39 = v44;
  v40 = sub_29D938418();
  result = (*(v43 + 8))(v10, v39);
  *v45 = v40;
  return result;
}

uint64_t sub_29D7C8944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D9341B8();
  v5 = [objc_opt_self() hasPairedWatch];
  v7[3] = sub_29D933F18();
  v7[4] = &off_2A2447A08;
  v7[0] = sub_29D933F08();
  sub_29D6A1A4C(v4, a1, v5, v7, a2);

  return sub_29D69417C(v7);
}

uint64_t sub_29D7C89EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a1;
  v31 = a3;
  sub_29D6C36D8(0);
  v29[2] = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36A4(0);
  v32 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v29[1] = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = sub_29D934148();
  v11 = *(v29[0] - 8);
  MEMORY[0x2A1C7C4A8](v29[0], v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D934178();
  MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v17 = sub_29D9341E8();
  MEMORY[0x2A1C7C4A8](v17, v18);
  (*(v20 + 16))(v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_29D9341B8();
  sub_29D7CA0B0(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v21 = sub_29D933F58();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29D93DDB0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x29EDC36F0], v21);
  (*(v11 + 104))(v14, *MEMORY[0x29EDC3898], v29[0]);
  sub_29D934158();
  sub_29D7CA1D0(v30, v7, sub_29D6C36D8);
  sub_29D938338();
  v25 = sub_29D934228();
  v26 = MEMORY[0x29EDC38C8];
  v27 = v31;
  v31[3] = v25;
  v27[4] = v26;
  sub_29D693F78(v27);
  sub_29D7CA114(&qword_2A1A22360, sub_29D6C36A4, MEMORY[0x29EDB8AB8]);
  return sub_29D934218();
}

uint64_t sub_29D7C8E00()
{
  v1 = OBJC_IVAR____TtC5Heart35HeartFeatureStatusGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeartFeatureStatusGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A25638;
  if (!qword_2A1A25638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7C8F00(uint64_t a1)
{
  result = sub_29D934178();
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

uint64_t sub_29D7C8FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart35HeartFeatureStatusGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D7C902C(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v43 = *v2;
  v44 = a2;
  v40 = sub_29D9341E8();
  v3 = *(v40 - 8);
  v39 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v40, v4);
  v38 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x29EDB8AE0];
  sub_29D7C964C(0, &qword_2A1A24A18, MEMORY[0x29EDB8AE0]);
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  MEMORY[0x2A1C7C4A8](v6, v8);
  v42 = v35 - v9;
  v37 = sub_29D934148();
  v10 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D934178();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[1] = sub_29D9341B8();
  sub_29D7CA0B0(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v19 = sub_29D933F58();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29D93DDB0;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x29EDC36F0], v19);
  (*(v10 + 104))(v13, *MEMORY[0x29EDC3898], v37);
  sub_29D934158();
  v23 = v41;
  (*(v15 + 32))(v41 + OBJC_IVAR____TtC5Heart35HeartFeatureStatusGeneratorPipeline_domain, v18, v14);
  v24 = v38;
  v25 = v36;
  v26 = v40;
  (*(v3 + 16))(v38, v36, v40);
  v27 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v28 = (v39 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v3 + 32))(v29 + v27, v24, v26);
  v30 = v43;
  *(v29 + v28) = v44;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
  sub_29D7CA15C(0, &qword_2A1A24AD8, sub_29D6CE0BC, MEMORY[0x29EDB89F8]);
  sub_29D7C9DF8(&qword_2A1A24AE0, &qword_2A1A24AD8, sub_29D6CE0BC);

  v31 = v42;
  sub_29D938378();
  sub_29D7C9DB4(&qword_2A1A24A20, &qword_2A1A24A18, v45, MEMORY[0x29EDB8AE8]);
  v32 = v46;
  v33 = sub_29D938418();
  (*(v3 + 8))(v25, v26);
  (*(v47 + 8))(v31, v32);
  result = v23;
  *(v23 + OBJC_IVAR____TtC5Heart35HeartFeatureStatusGeneratorPipeline_publisher) = v33;
  return result;
}

uint64_t sub_29D7C95A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D7C843C(v1 + v4, v6, v7, a1);
}

void sub_29D7C964C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D7CA15C(255, &qword_2A1A24AD8, sub_29D6CE0BC, MEMORY[0x29EDB89F8]);
    v7 = v6;
    v8 = sub_29D7C9DF8(&qword_2A1A24AE0, &qword_2A1A24AD8, sub_29D6CE0BC);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D7C9708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D7CA15C(255, &qword_2A1A24AD8, sub_29D6CE0BC, MEMORY[0x29EDB89F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D7C9798(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v47 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v7;
  sub_29D6C3390(0);
  v37 = *(v8 - 1);
  v38 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7C9E5C(0, &qword_2A1A22620, sub_29D6C36D8);
  v45 = v12;
  v43 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v41 = &v36 - v14;
  sub_29D6C3488(0);
  v46 = v15;
  v44 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v42 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);

  sub_29D934188();
  sub_29D693E2C(v49, v49[3]);
  v19 = sub_29D934118();
  v20 = v18();

  sub_29D69417C(v49);
  v49[0] = v20;
  LOBYTE(a2) = sub_29D934198();
  v21 = MEMORY[0x29EDC2D78];
  sub_29D7CA15C(0, &qword_2A1A22410, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
  v23 = v22;
  v39 = sub_29D7C9DF8(&qword_2A1A22420, &qword_2A1A22410, v21);
  v40 = v23;
  if (a2)
  {
    v24 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D7CA114(&qword_2A1A224E0, sub_29D6C3390, MEMORY[0x29EDB8940]);
    v25 = v38;
    v24 = sub_29D938418();

    (*(v37 + 8))(v11, v25);
  }

  v49[0] = v24;
  v38 = *(v5 + 16);
  v26 = v47;
  v38(v47, a1, v4);
  v37 = a1;
  v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v28 = swift_allocObject();
  v36 = *(v5 + 32);
  v36(v28 + v27, v26, v4);
  sub_29D6C36D8(0);
  v29 = v41;
  sub_29D938468();

  v38(v26, v37, v4);
  v30 = swift_allocObject();
  v36(v30 + v27, v26, v4);
  sub_29D6CE0BC();
  v31 = v42;
  v32 = v45;
  sub_29D9380E8();

  (*(v43 + 8))(v29, v32);
  sub_29D7CA114(&qword_2A1A22618, sub_29D6C3488, MEMORY[0x29EDB8908]);
  v33 = v46;
  v34 = sub_29D938418();
  (*(v44 + 8))(v31, v33);
  return v34;
}

unint64_t sub_29D7C9D40()
{
  result = qword_2A1A249A8;
  if (!qword_2A1A249A8)
  {
    sub_29D7C9708(255, &qword_2A1A249B0, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A249A8);
  }

  return result;
}

uint64_t sub_29D7C9DB4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D7C964C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D7C9DF8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D7CA15C(255, a2, a3, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D7C9E5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = MEMORY[0x29EDC2D78];
    sub_29D7CA15C(255, &qword_2A1A22410, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
    a3(255);
    sub_29D7C9DF8(&qword_2A1A22420, &qword_2A1A22410, v5);
    v6 = sub_29D9380F8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D7C9F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D9341E8();

  return sub_29D7C8944(a1, a2);
}

uint64_t sub_29D7C9FA8()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D7CA030@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D7C89EC(a1, v6, a2);
}

void sub_29D7CA0B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7CA114(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D7CA15C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D7CA1D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7CA238(uint64_t a1)
{
  sub_29D69BECC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D7CA294()
{
  result = qword_2A17B1B60;
  if (!qword_2A17B1B60)
  {
    sub_29D7CA15C(255, &qword_2A1A22330, MEMORY[0x29EDC2D78], MEMORY[0x29EDB8AC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1B60);
  }

  return result;
}

void sub_29D7CA558()
{
  v1 = v0;
  sub_29D7CB55C(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &aBlock[-2] - v4;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  v6 = [swift_getObjCClassFromMetadata() atrialFibrillationEventType];
  if (v6)
  {
    v7 = v6;
    sub_29D934528();
    sub_29D7CB55C(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
    v8 = sub_29D933F58();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    v25 = xmmword_29D93DDB0;
    *(v11 + 16) = xmmword_29D93DDB0;
    (*(v9 + 104))(v11 + v10, *MEMORY[0x29EDC3710], v8);
    sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29D940030;
    *(v12 + 32) = v7;
    v13 = sub_29D9331D8();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    sub_29D6AA3B4(0, &qword_2A17B50A8, MEMORY[0x29EDC37E0]);
    v14 = swift_allocObject();
    *(v14 + 16) = v25;
    v15 = v7;
    *(v14 + 32) = sub_29D93A208();
    v16 = MEMORY[0x29ED648C0](v11, v12, v5, v14);

    sub_29D7CB714(v5, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
    v17 = v16;
    v18 = sub_29D9344F8();

    sub_29D693E2C(&v1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthExperienceStore], *&v1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthExperienceStore + 24]);
    v19 = sub_29D933EC8();
    v20 = swift_allocObject();
    v20[2] = v1;
    v20[3] = v18;
    v20[4] = v15;
    aBlock[4] = sub_29D7CB5C0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F10;
    aBlock[3] = &unk_2A2446408;
    v21 = _Block_copy(aBlock);
    v22 = v15;
    v23 = v1;
    v24 = v18;

    [v19 performBlock_];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_29D7CA96C(char *a1, uint64_t a2, void *a3)
{
  v91 = a3;
  v4 = sub_29D937898();
  v5 = *(v4 - 8);
  v93 = v4;
  v94 = v5;
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v92 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v88 - v11;
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v16 = &v88 - v15;
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v20 = &v88 - v19;
  v22 = MEMORY[0x2A1C7C4A8](v18, v21);
  v24 = &v88 - v23;
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v88 - v26;
  sub_29D693E2C(&a1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthExperienceStore], *&a1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthExperienceStore + 24]);
  v28 = sub_29D933EC8();
  sub_29D934528();
  v36 = sub_29D93A5A8();
  v37 = v27;
  v89 = v24;
  v90 = v12;

  if (!(v36 >> 62))
  {
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_60:

    v29 = v92;
    sub_29D937858();
    v30 = v91;
    v31 = sub_29D937878();
    v32 = sub_29D93A298();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&dword_29D677000, v31, v32, "Missing feed item when trying to decode Summaries data for %@", v33, 0xCu);
      sub_29D6ACA3C(v34);
      MEMORY[0x29ED6BE30](v34, -1, -1);
      MEMORY[0x29ED6BE30](v33, -1, -1);
    }

    goto LABEL_5;
  }

  if (!sub_29D93A928())
  {
    goto LABEL_60;
  }

LABEL_8:
  if ((v36 & 0xC000000000000001) != 0)
  {
LABEL_63:
    v38 = MEMORY[0x29ED6AE30](0, v36);
  }

  else
  {
    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_65;
    }

    v38 = *(v36 + 32);
  }

  v92 = v38;
  v39 = [v38 userData];
  if (v39)
  {
    v40 = v39;
    v41 = sub_29D933738();
    v43 = v42;

    v44 = sub_29D933718();
    sub_29D6AA284(v41, v43);
  }

  else
  {
    v44 = 0;
  }

  v45 = [objc_allocWithZone(MEMORY[0x29EDC4470]) initWithData_];

  if (!v45)
  {

    sub_29D937858();
    v57 = sub_29D937878();
    v58 = sub_29D93A298();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_29D677000, v57, v58, "Unable to decode chart feed item data", v59, 2u);
      MEMORY[0x29ED6BE30](v59, -1, -1);
    }

    (*(v94 + 8))(v37, v93);
    return;
  }

  v91 = v45;
  v46 = [v45 chartModel];
  if (!v46)
  {
    __break(1u);
    goto LABEL_67;
  }

  v47 = v46;
  v48 = [v46 hasSixMonthData];

  if (!v48)
  {

    v29 = v90;
    sub_29D937858();
    v60 = sub_29D937878();
    v61 = sub_29D93A298();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = "Missing data charting model";
LABEL_29:
      _os_log_impl(&dword_29D677000, v60, v61, v63, v62, 2u);
      MEMORY[0x29ED6BE30](v62, -1, -1);
    }

LABEL_30:

LABEL_5:
    (*(v94 + 8))(v29, v93);
    return;
  }

  v49 = [v91 chartModel];
  if (!v49)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v50 = v49;
  v90 = [v49 sixMonthData];

  if (!v90)
  {

    v29 = v89;
    sub_29D937858();
    v60 = sub_29D937878();
    LOBYTE(v61) = sub_29D93A298();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = "Unable to decode sharable charting model";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if ([v90 type] != 11)
  {

    sub_29D937818();
    v64 = v90;
    v65 = sub_29D937878();
    v66 = sub_29D93A288();

    if (!os_log_type_enabled(v65, v66))
    {

LABEL_58:
      (*(v94 + 8))(v20, v93);
      return;
    }

    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v95 = v64;
    v96[0] = v68;
    *v67 = 136315138;
    sub_29D69567C(0, &qword_2A17B50B0, 0x29EDC4468);
    v69 = v64;
    v70 = sub_29D939DB8();
    v72 = sub_29D6C2364(v70, v71, v96);

    *(v67 + 4) = v72;
    _os_log_impl(&dword_29D677000, v65, v66, "Unsupported chart model %s", v67, 0xCu);
    sub_29D69417C(v68);
    MEMORY[0x29ED6BE30](v68, -1, -1);
    MEMORY[0x29ED6BE30](v67, -1, -1);

LABEL_53:
    goto LABEL_58;
  }

  v51 = [v90 queryDataObject];
  if (v51)
  {
    v52 = v51;
    v53 = sub_29D933738();
    v55 = v54;

    v56 = sub_29D933718();
    sub_29D6AA284(v53, v55);
  }

  else
  {
    v56 = 0;
  }

  v20 = v16;
  v73 = [objc_allocWithZone(MEMORY[0x29EDC4500]) initWithData_];

  if (!v73)
  {
LABEL_68:
    __break(1u);
    return;
  }

  v74 = [v73 samples];

  if (!v74 || (v96[0] = 0, sub_29D69567C(0, &qword_2A17B50B8, 0x29EDC4508), sub_29D939F28(), v74, (v24 = v96[0]) == 0))
  {
    sub_29D937818();
    v79 = v90;
    v65 = sub_29D937878();
    v80 = sub_29D93A288();

    if (!os_log_type_enabled(v65, v80))
    {

      goto LABEL_58;
    }

    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v95 = v79;
    v96[0] = v82;
    *v81 = 136315138;
    sub_29D69567C(0, &qword_2A17B50B0, 0x29EDC4468);
    v83 = v79;
    v84 = sub_29D939DB8();
    v86 = sub_29D6C2364(v84, v85, v96);

    *(v81 + 4) = v86;
    _os_log_impl(&dword_29D677000, v65, v80, "Cound not decode query data %s", v81, 0xCu);
    sub_29D69417C(v82);
    MEMORY[0x29ED6BE30](v82, -1, -1);
    MEMORY[0x29ED6BE30](v81, -1, -1);

    goto LABEL_53;
  }

  v75 = *&a1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_resultsHandler + 8];
  v93 = *&a1[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_resultsHandler];
  v94 = v75;
  v96[0] = MEMORY[0x29EDCA190];
  v20 = (v24 & 0xFFFFFFFFFFFFFF8);
  if (!(v24 >> 62))
  {
    v36 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_40;
  }

LABEL_65:
  v36 = sub_29D93A928();
LABEL_40:
  v76 = 0;
  v77 = MEMORY[0x29EDCA190];
  while (v36 != v76)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v78 = MEMORY[0x29ED6AE30](v76, v24);
    }

    else
    {
      if (v76 >= *(v20 + 2))
      {
        goto LABEL_62;
      }

      v78 = *(v24 + 8 * v76 + 32);
    }

    a1 = v78;
    v37 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v16 = [objc_opt_self() createWithCodableNotificationSample_];

    ++v76;
    if (v16)
    {
      MEMORY[0x29ED6A300]();
      if (*((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a1 = *((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D939F78();
      }

      sub_29D939FA8();
      v77 = v96[0];
      v76 = v37;
    }
  }

  v93(v77, 0);

  v87 = v90;
}

id sub_29D7CB4A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D7CB55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7CB5CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29D7CB5EC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC5Heart43SummariesAtrialFibrillationListDataProvider_store);
  if (v3)
  {
    sub_29D708D30(v2 + OBJC_IVAR____TtC5Heart43SummariesAtrialFibrillationListDataProvider_healthExperienceStore, &v13);
    if (v14)
    {
      sub_29D6959E8(&v13, v15);
      sub_29D6945AC(v15, &v13);
      v6 = type metadata accessor for SummariesAtrialFibrillationDataFetcher();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthStore] = v3;
      sub_29D6945AC(&v13, &v7[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthExperienceStore]);
      v8 = &v7[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_resultsHandler];
      *v8 = a1;
      *(v8 + 1) = a2;
      v12.receiver = v7;
      v12.super_class = v6;
      v9 = v3;

      v10 = objc_msgSendSuper2(&v12, sel_init);
      sub_29D69417C(&v13);
      sub_29D69417C(v15);
      return v10;
    }

    sub_29D7CB714(&v13, &qword_2A17B2B10, sub_29D708DB0);
  }

  return 0;
}

uint64_t sub_29D7CB714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D7CB55C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D7CB784(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29D93A8D8();
    sub_29D7CE038();
    sub_29D7CDCE0(&qword_2A1A24938, sub_29D7CE038, MEMORY[0x29EDCA2F0]);
    sub_29D93A118();
    v1 = v17[4];
    v2 = v17[5];
    v3 = v17[6];
    v4 = v17[7];
    v5 = v17[8];
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
    sub_29D935E88();
    v4 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_29D7AF2E8(v1);
      return;
    }

    while (1)
    {
      v15 = sub_29D934238();
      v16 = sub_29D9340C8();
      sub_29D7AF194(v15);

      v16(v17, 0);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v14 = sub_29D93A958();
      if (v14)
      {
        v17[10] = v14;
        sub_29D7CE038();
        swift_dynamicCast();
        v13 = v17[0];
        v11 = v4;
        v12 = v5;
        if (v17[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_29D7CB9C0@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration(0);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7CDDD4(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7CDF80(v2, v14, sub_29D7CDDD4);
  v15 = 1;
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  sub_29D7CDF18(v14, v10, type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration);
  a1(v10);
  if (!v3)
  {
    sub_29D7CDE38(v10, type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration);
    v15 = 0;
LABEL_4:
    v16 = sub_29D9340F8();
    return (*(*(v16 - 8) + 56))(a2, v15, 1, v16);
  }

  result = sub_29D7CDE38(v10, type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration);
  __break(1u);
  return result;
}

uint64_t sub_29D7CBBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v45 = a1;
  v52 = a3;
  v43 = sub_29D9342D8();
  v42 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43, v3);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D76F8C0(0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v48 = sub_29D9342A8();
  v47 = *(v48 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v48, v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v40 = &v38 - v12;
  v13 = sub_29D934798();
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v51 = sub_29D934A18();
  v50 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A2C038;
  sub_29D934788();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9349E8();
  v19 = sub_29D9341B8();
  type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration(0);
  v20 = v46;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    sub_29D872AC4(MEMORY[0x29EDCA190]);
  }

  type metadata accessor for ElectrocardiogramPromotionTileActionHandler(0);
  sub_29D7CDCE0(&unk_2A17B2778, type metadata accessor for ElectrocardiogramPromotionTileActionHandler, &unk_29D9428E0);
  sub_29D934038();

  v21 = v44;
  sub_29D7CDF80(v20, v44, sub_29D76F8C0);
  v22 = v47;
  v23 = v48;
  v24 = (*(v47 + 48))(v21, 1, v48);
  v49 = v17;
  if (v24 == 1)
  {
    sub_29D7CDE38(v21, sub_29D76F8C0);
  }

  else
  {
    v25 = v40;
    (*(v22 + 32))(v40, v21, v23);
    (*(v22 + 16))(v39, v25, v23);
    v26 = v41;
    sub_29D9342E8();
    v27 = v43;
    sub_29D934068();
    (*(v42 + 8))(v26, v27);
    (*(v22 + 8))(v25, v23);
  }

  v28 = MEMORY[0x29EDC9E90];
  sub_29D7CDFE8(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  v48 = xmmword_29D940030;
  *(inited + 16) = xmmword_29D940030;
  v30 = objc_opt_self();
  *(inited + 32) = [v30 electrocardiogramType];
  sub_29D6E3D70(inited);
  v32 = v31;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D7CB784(v32);

  sub_29D7CDFE8(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], v28);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_29D93DDB0;
  *(v33 + 32) = sub_29D934248();
  *(v33 + 40) = v34;
  v35 = sub_29D9340C8();
  sub_29D7AF194(v33);
  swift_setDeallocating();
  sub_29D6AA360(v33 + 32);
  v35(v53, 0);
  v36 = swift_initStackObject();
  *(v36 + 16) = v48;
  *(v36 + 32) = [v30 electrocardiogramType];
  sub_29D6E3D70(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D9340B8();
  sub_29D934088();
  return (*(v50 + 8))(v49, v51);
}

uint64_t sub_29D7CC42C(uint64_t a1, uint64_t a2)
{
  sub_29D6C36A4(0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7CDD28(0);
  v42 = v8;
  v49 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  v51 = v11;
  v13 = MEMORY[0x2A1C7C4A8](v11, v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v42 - v17;
  v19 = sub_29D9340F8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v44 = &v42 - v26;
  sub_29D7CDDD4(0);
  MEMORY[0x2A1C7C4A8](v27 - 8, v28);
  v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7CCF74(a2, v30);
  v43 = v2;
  v52 = v2;
  v53 = a1;
  v50 = v30;
  sub_29D7CB9C0(sub_29D7CDE08, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_29D7CDE38(v18, sub_29D6C36D8);
    (*(v20 + 56))(v15, 1, 1, v19);
    v31 = v45;
    sub_29D938338();
    sub_29D7CDCE0(&qword_2A1A22360, sub_29D6C36A4, MEMORY[0x29EDB8AB8]);
    v32 = v47;
    v33 = sub_29D938418();
    (*(v46 + 8))(v31, v32);
  }

  else
  {
    v34 = *(v20 + 32);
    v35 = v44;
    v34(v44, v18, v19);
    v54 = sub_29D7CCA78();
    v36 = v35;
    (*(v20 + 16))(v24, v35, v19);
    v37 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v38 = swift_allocObject();
    v34((v38 + v37), v24, v19);
    sub_29D6AD548();
    sub_29D7CDCE0(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
    v39 = v48;
    sub_29D938468();

    sub_29D7CDCE0(&qword_2A17B50F0, sub_29D7CDD28, MEMORY[0x29EDB8908]);
    v40 = v42;
    v33 = sub_29D938418();
    (*(v49 + 8))(v39, v40);
    (*(v20 + 8))(v36, v19);
  }

  sub_29D7CDE38(v50, sub_29D7CDDD4);
  return v33;
}

uint64_t sub_29D7CC99C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_29D9340F8();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a3, a2, v5);
  sub_29D934078();
  v6 = *(v8 + 56);

  return v6(a3, 0, 1, v5);
}

uint64_t sub_29D7CCA78()
{
  v1 = *v0;
  sub_29D7CDB7C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934188();
  sub_29D693E2C(v11, v11[3]);
  sub_29D934118();
  sub_29D69417C(v11);
  sub_29D936B48();
  swift_allocObject();
  v11[0] = sub_29D936B38();
  v10 = sub_29D9366B8();
  *(swift_allocObject() + 16) = v1;
  sub_29D6D05A0(0);
  sub_29D7CDFE8(0, &qword_2A1A24A48, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AB0]);
  sub_29D7CDCE0(&qword_2A1A24AA0, sub_29D6D05A0, MEMORY[0x29EDB8A00]);
  sub_29D7CDC5C();
  sub_29D938488();

  sub_29D7CDCE0(&qword_2A17B50E8, sub_29D7CDB7C, MEMORY[0x29EDB8928]);
  v8 = sub_29D938418();
  (*(v4 + 8))(v7, v3);

  return v8;
}

uint64_t sub_29D7CCD3C@<X0>(void **a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_29D937898();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_29D934D28();
  v11 = v10;
  v12 = sub_29D937878();
  v13 = sub_29D93A288();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[1] = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446466;
    v17 = sub_29D93AF08();
    v19 = sub_29D6C2364(v17, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v25[2] = v10;
    v20 = v10;
    sub_29D6A0CD0();
    v21 = sub_29D939DA8();
    v23 = sub_29D6C2364(v21, v22, &v26);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] Failed to fetch dismissal state: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v16, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  LOBYTE(v26) = 0;
  return sub_29D938338();
}

uint64_t sub_29D7CCF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v77 = a2;
  v5 = *v3;
  v68 = v3;
  v67 = v5;
  v6 = sub_29D937898();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v76 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D76F8C0(0);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D937178();
  isa = v12[-1].isa;
  v71 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D937118();
  v72 = *(v16 - 8);
  v73 = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D9371A8();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v23, v26);
  v29 = &v67 - v28;
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = &v67 - v31;
  v33 = *(v21 + 16);
  v33(&v67 - v31, a1, v20);
  v34 = (*(v21 + 88))(v32, v20);
  if (v34 == *MEMORY[0x29EDC2D70])
  {
    v35 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration(0);
    (*(*(v35 - 8) + 56))(v77, 1, 1, v35);
    return (*(v21 + 8))(v32, v20);
  }

  else if (v34 == *MEMORY[0x29EDC2D68])
  {
    (*(v21 + 96))(v32, v20);
    v37 = v72;
    v38 = v32;
    v39 = v73;
    (*(v72 + 32))(v19, v38, v73);
    sub_29D937108();
    v40 = sub_29D937188();
    (*(isa + 1))(v15, v71);
    v41 = [v40 areAllRequirementsSatisfied];

    if (v41)
    {
      v42 = sub_29D7CD760();
      v43 = sub_29D9342A8();
      v44 = *(v43 - 8);
      v45 = MEMORY[0x29EDC3908];
      if (!v42)
      {
        v45 = MEMORY[0x29EDC3900];
      }

      v46 = v69;
      (*(*(v43 - 8) + 104))(v69, *v45, v43);
      (*(v44 + 56))(v46, 0, 1, v43);
      (*(v37 + 8))(v19, v39);
      v47 = v77;
      sub_29D7CDF18(v46, v77, sub_29D76F8C0);
      v48 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration(0);
      v49 = (v47 + *(v48 + 20));
      *v49 = 0xD000000000000016;
      v49[1] = 0x800000029D963700;
      return (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    }

    else
    {
      (*(v37 + 8))(v19, v39);
      v64 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration(0);
      return (*(*(v64 - 8) + 56))(v77, 1, 1, v64);
    }
  }

  else
  {
    sub_29D934D28();
    v33(v29, a1, v20);
    v50 = sub_29D937878();
    v51 = sub_29D93A288();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      LODWORD(v72) = v51;
      v53 = v52;
      v73 = swift_slowAlloc();
      v78 = v73;
      *v53 = 136446466;
      v54 = sub_29D93AF08();
      v71 = v50;
      v56 = sub_29D6C2364(v54, v55, &v78);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2080;
      v33(v25, v29, v20);
      v57 = sub_29D939DA8();
      v59 = v58;
      v60 = *(v21 + 8);
      v60(v29, v20);
      v61 = sub_29D6C2364(v57, v59, &v78);

      *(v53 + 14) = v61;
      v62 = v71;
      _os_log_impl(&dword_29D677000, v71, v72, "[%{public}s] Unknown feature status received: %s", v53, 0x16u);
      v63 = v73;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v63, -1, -1);
      MEMORY[0x29ED6BE30](v53, -1, -1);
    }

    else
    {

      v60 = *(v21 + 8);
      v60(v29, v20);
    }

    (*(v74 + 8))(v76, v75);
    v65 = v77;
    v66 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration(0);
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
    return (v60)(v32, v20);
  }
}

BOOL sub_29D7CD760()
{
  v15[1] = *MEMORY[0x29EDCA608];
  sub_29D7CDA98(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v15[0] = 0;
  v6 = [v5 dateOfBirthComponentsWithError_];
  v7 = v15[0];
  if (v6)
  {
    sub_29D933298();
    v8 = v7;

    v9 = 0;
  }

  else
  {
    v10 = v15[0];
    v11 = sub_29D933598();

    swift_willThrow();
    v9 = 1;
  }

  v12 = sub_29D933318();
  (*(*(v12 - 8) + 56))(v4, v9, 1, v12);
  sub_29D7CDE38(v4, sub_29D7CDA98);
  return v6 != 0;
}

uint64_t sub_29D7CD920()
{
  sub_29D7CDFE8(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  *(inited + 32) = [objc_opt_self() electrocardiogramType];
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D7CD9E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC3790];
  v3 = sub_29D933F58();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_29D7CDACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration(uint64_t a1)
{
  result = qword_2A1A22920;
  if (!qword_2A1A22920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7CDB7C(uint64_t a1)
{
  if (!qword_2A17B50E0)
  {
    sub_29D6D05A0(255);
    sub_29D7CDFE8(255, &qword_2A1A24A48, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AB0]);
    sub_29D7CDCE0(&qword_2A1A24AA0, sub_29D6D05A0, MEMORY[0x29EDB8A00]);
    sub_29D7CDC5C();
    v1 = sub_29D938118();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B50E0);
    }
  }
}

unint64_t sub_29D7CDC5C()
{
  result = qword_2A1A22340;
  if (!qword_2A1A22340)
  {
    sub_29D7CDFE8(255, &qword_2A1A24A48, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22340);
  }

  return result;
}

uint64_t sub_29D7CDCE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D7CDD28(uint64_t a1)
{
  if (!qword_2A1A225B8)
  {
    sub_29D6AD548();
    sub_29D6C36D8(255);
    sub_29D7CDCE0(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A225B8);
    }
  }
}

uint64_t sub_29D7CDE38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D7CDE98@<X0>(uint64_t a2@<X8>)
{
  v4 = *(sub_29D9340F8() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_29D7CC99C(v5, a2);
}

uint64_t sub_29D7CDF18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7CDF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D7CDFE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D7CE038()
{
  result = qword_2A1A24940;
  if (!qword_2A1A24940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A24940);
  }

  return result;
}

void sub_29D7CE0AC(uint64_t a1)
{
  sub_29D76F8C0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29D7CE120()
{
  v1 = sub_29D937B88();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v28 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x29EDC23F8];
  sub_29D7CF44C(0, &qword_2A17B50F8, &qword_2A17B5100, MEMORY[0x29EDC23F8]);
  v25 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v24 - v8;
  sub_29D7C0358(0);
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v29[0] = sub_29D81D934(ObjectType, v15);
  sub_29D6AD548();
  v17 = MEMORY[0x29EDC9A40];
  sub_29D7CF640(0, &qword_2A17B5100, v4, MEMORY[0x29EDC9A40]);
  sub_29D7CF564(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);

  sub_29D938468();

  sub_29D7CF640(0, &qword_2A17B4F50, MEMORY[0x29EDC2240], v17);
  v18 = v25;
  sub_29D9380E8();
  (*(v6 + 8))(v9, v18);
  sub_29D7CF564(&qword_2A17B4F70, sub_29D7C0358, MEMORY[0x29EDB8908]);
  v19 = v26;
  sub_29D9383F8();
  (*(v27 + 8))(v14, v19);
  sub_29D936458();
  sub_29D935588();

  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B18();
  v20 = sub_29D934D58();
  swift_allocObject();
  v21 = sub_29D934D38();
  v29[3] = v20;
  v29[4] = sub_29D7CF564(&qword_2A17B2C98, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
  v29[0] = v21;
  sub_29D7BFFF8(0);
  sub_29D7CF564(&qword_2A17B4F00, sub_29D7BFFF8, MEMORY[0x29EDC1E90]);
  sub_29D935598();

  sub_29D69417C(v29);
  sub_29D7CF5AC(0);
  sub_29D7CF564(&unk_2A17B5110, sub_29D7CF5AC, MEMORY[0x29EDC1E08]);
  v22 = sub_29D9355C8();

  return v22;
}

uint64_t sub_29D7CE6A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D933A58();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_29D7CF640(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29D9359D8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93DDB0;
  sub_29D776128(v9);
  sub_29D933A48();
  sub_29D933A18();
  (*(v5 + 8))(v8, v4);
  result = sub_29D9359C8();
  *a2 = v10;
  return result;
}

uint64_t sub_29D7CE874(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D935D08();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CB8();
  v7 = sub_29D935CF8();
  (*(v3 + 8))(v6, v2);
  return v7;
}

void *sub_29D7CE948()
{
  sub_29D7CF640(0, &qword_2A17B1130, MEMORY[0x29EDC23F8], MEMORY[0x29EDC9E90]);
  sub_29D935DA8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D944EA0;
  v4 = v0;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D959550);

  sub_29D935D88();

  sub_29D9334A8();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D959530);
  sub_29D935D88();

  sub_29D9334A8();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D956C00);
  sub_29D935D88();

  sub_29D9334A8();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0x746361466566694CLL, 0xEB0000000073726FLL);
  sub_29D935D88();

  sub_29D9334A8();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000017, 0x800000029D959570);
  sub_29D935D88();

  if (*(v5 + 40) != 1)
  {
    return v4;
  }

  v1 = v4;
  v2 = v4[2];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v2 - 1) > v4[3] >> 1)
  {
LABEL_12:
    v1 = sub_29D68FF80(1, v2, 1, v4);
  }

  sub_29D91B1E8(0, 1, 0);
  return v1;
}

uint64_t sub_29D7CEFC0(uint64_t a1)
{
  v2 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingStartViewController(0));

  sub_29D843318(0, a1, &off_2A24464A8);
  v4 = v3;

  return v4;
}

void sub_29D7CF110(void *a1)
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = sub_29D937878();
  v4 = sub_29D93A288();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = sub_29D93AF08();
    v9 = sub_29D6C2364(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D9637E0, &v13);
    _os_log_impl(&dword_29D677000, v3, v4, "[%s.%s]: Presenting AFib History article", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D8AD070();
  v10 = objc_allocWithZone(sub_29D934568());
  v11 = sub_29D934558();
  v12 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [a1 presentViewController:v12 animated:1 completion:0];
}

uint64_t sub_29D7CF3DC()
{
  sub_29D936978();

  return swift_deallocClassInstance();
}

void sub_29D7CF44C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29D6AD548();
    sub_29D7CF640(255, a3, a4, MEMORY[0x29EDC9A40]);
    sub_29D7CF564(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
    v7 = sub_29D9380F8();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *sub_29D7CF51C@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if ((*a1 & 1) != 0 || *(v2 + 40) == 1)
  {
    result = sub_29D7CE948();
  }

  else
  {
    result = MEMORY[0x29EDCA190];
  }

  *a2 = result;
  return result;
}

uint64_t sub_29D7CF564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D7CF5AC(uint64_t a1)
{
  if (!qword_2A17B5108)
  {
    sub_29D7BFFF8(255);
    sub_29D7CF564(&qword_2A17B4F00, sub_29D7BFFF8, MEMORY[0x29EDC1E90]);
    v1 = sub_29D935158();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5108);
    }
  }
}

void sub_29D7CF640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7CF6A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = *v3;
  v21 = a1;
  sub_29D7CFFCC(0, &qword_2A17B4090, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC2EA0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v20 - v9;
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3[2];
  swift_getObjectType();
  sub_29D9339A8();
  sub_29D93A3F8();
  v17 = swift_allocObject();
  v18 = v20;
  v17[2] = v21;
  v17[3] = a2;
  v17[4] = v16;
  v17[5] = v18;

  swift_unknownObjectRetain();
  sub_29D93A5F8();

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_29D7CF8EC(char a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29D69C75C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v48 = a3;
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
      v47 = a4;
      v22 = v21;
      v50 = v21;
      *v20 = 136446466;
      v23 = sub_29D93AF08();
      v25 = sub_29D6C2364(v23, v24, &v50);
      v46 = a6;
      v26 = v25;

      *(v20 + 4) = v26;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_29D6C2364(0xD000000000000032, 0x800000029D95FE80, &v50);
      _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s.%{public}s]:Successfully set onboarding acknowledged setting", v20, 0x16u);
      swift_arrayDestroy();
      v27 = v22;
      a4 = v47;
      MEMORY[0x29ED6BE30](v27, -1, -1);
      v28 = v20;
      v29 = v46;
      MEMORY[0x29ED6BE30](v28, -1, -1);
    }

    else
    {

      v29 = a6;
    }

    swift_getObjectType();
    sub_29D93A408();
    v44 = swift_allocObject();
    v44[2] = v48;
    v44[3] = a4;
    v44[4] = v29;

    sub_29D93A608();

    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v30 = sub_29D937898();
    sub_29D69C6C0(v30, qword_2A1A2C008);
    v31 = a2;
    v32 = sub_29D937878();
    v33 = sub_29D93A288();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 136446722;
      v36 = sub_29D93AF08();
      v38 = sub_29D6C2364(v36, v37, &v50);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v34 + 14) = sub_29D6C2364(0xD000000000000032, 0x800000029D95FE80, &v50);
      *(v34 + 22) = 2080;
      v49 = a2;
      v39 = a2;
      sub_29D7CFFCC(0, &qword_2A17B7AF0, sub_29D6A0CD0, MEMORY[0x29EDC9C68]);
      v40 = sub_29D939DA8();
      v42 = sub_29D6C2364(v40, v41, &v50);

      *(v34 + 24) = v42;
      _os_log_impl(&dword_29D677000, v32, v33, "[%{public}s.%{public}s]: Failed to set onboarding acknowledged setting with error: %s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v35, -1, -1);
      MEMORY[0x29ED6BE30](v34, -1, -1);
    }

    return a3(0, a2);
  }
}

uint64_t sub_29D7CFD9C(char a1, void *a2, uint64_t (*a3)(uint64_t, void *, uint64_t (*)(uint64_t, void *), uint64_t, uint64_t), uint64_t a4, uint64_t a5)
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
    v12 = sub_29D93A2A8();

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
      _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s] Error when saving feature setting: %@", v13, 0x16u);
      sub_29D6ACA3C(v14);
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

void sub_29D7CFFCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D7D0030()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  [objc_opt_self() setTachycardiaThresholdHeartRate_];
}

uint64_t sub_29D7D00B0()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;

  return sub_29D934788();
}

uint64_t sub_29D7D0144(char a1)
{
  if (a1)
  {
    [objc_opt_self() tachycardiaThresholdHeartRate];
    v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D6B73CC();
    v2 = sub_29D93A6E8();
    v3 = sub_29D8EFDF0(v2, v1);
    v5 = v4;

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D6CC0B8(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D93DDB0;
    *(v6 + 56) = MEMORY[0x29EDC99B0];
    *(v6 + 64) = sub_29D69AD24();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v7 = sub_29D939D38();
    v9 = v8;

    sub_29D9334A8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29D93DDB0;
    v11 = *MEMORY[0x29EDC5260];
    v12 = MEMORY[0x29EDC9C10];
    *(v10 + 56) = MEMORY[0x29EDC9BA8];
    *(v10 + 64) = v12;
    *(v10 + 32) = v11;
    v13 = sub_29D939D38();
    v15 = v14;

    sub_29D6CBFE8();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D93F680;
    *(v16 + 32) = v7;
    *(v16 + 40) = v9;
    *(v16 + 48) = v13;
  }

  else
  {
    sub_29D6CBFE8();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D93F680;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    *(v16 + 32) = sub_29D9334A8();
    *(v16 + 40) = v17;
    v18 = sub_29D9334A8();
    v15 = v19;
    *(v16 + 48) = v18;
  }

  *(v16 + 56) = v15;
  return v16;
}

uint64_t sub_29D7D04B0()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D7D0568()
{
  sub_29D7D0728(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D93DDB0;
  v1 = sub_29D936338();
  sub_29D936348();
  *(v0 + 56) = &type metadata for AFibBurdenAboutItem;
  *(v0 + 64) = sub_29D71AF54();
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  sub_29D719E5C(v1, &v6, (v2 + 16));
  v3 = sub_29D936DB8();
  v4 = MEMORY[0x29EDC2B10];
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  return v0;
}

uint64_t sub_29D7D0620(uint64_t a1)
{
  v2 = sub_29D936058();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_29D936038();
  v8 = sub_29D936048();
  (*(v3 + 8))(v6, v2);
  return v8;
}

void sub_29D7D0728(uint64_t a1)
{
  if (!qword_2A17B5180)
  {
    sub_29D7D0780(255);
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5180);
    }
  }
}

void sub_29D7D0780(uint64_t a1)
{
  if (!qword_2A17B5188)
  {
    sub_29D695734(255, &qword_2A17B1080, MEMORY[0x29EDC1910], 1);
    sub_29D7D0808();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B5188);
    }
  }
}

unint64_t sub_29D7D0808()
{
  result = qword_2A17B5190;
  if (!qword_2A17B5190)
  {
    sub_29D695734(255, &qword_2A17B5198, MEMORY[0x29EDC1DA8], 0);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A17B5190);
  }

  return result;
}

uint64_t sub_29D7D0878(uint64_t a1)
{
  v2 = sub_29D7D08C4();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29D7D08C4()
{
  result = qword_2A17B51A0;
  if (!qword_2A17B51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B51A0);
  }

  return result;
}

uint64_t type metadata accessor for IRNFeatureRegulatoryInfoTransformProvider(uint64_t a1)
{
  result = qword_2A17B51A8;
  if (!qword_2A17B51A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7D09A4()
{
  if (qword_2A17B0D78 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

double sub_29D7D0A40()
{
  if (qword_2A17B0D78 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9336E8();

  return result;
}

uint64_t type metadata accessor for BloodPressureDataTypeDetailViewController(uint64_t a1)
{
  result = qword_2A17B51D8;
  if (!qword_2A17B51D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_29D7D0BB4()
{
  v1 = qword_2A17B51C0;
  if (*(v0 + qword_2A17B51C0))
  {
    v2 = *(v0 + qword_2A17B51C0);
  }

  else
  {
    v3 = sub_29D936468();
    type metadata accessor for BloodPressureJournalLoggingAnalyticsUtilities();
    v2 = swift_allocObject();
    v2[3] = 0;
    v2[4] = 0;
    v2[2] = v3;
    type metadata accessor for BloodPressureJournalAnalyticsUtilities();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v2[5] = v4;
    *(v0 + v1) = v2;
    v5 = v3;
  }

  return v2;
}

uint64_t sub_29D7D0C64()
{
  sub_29D7D1ADC(0, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  v3 = MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v20 - v7;
  if (v0[qword_2A17B51B8])
  {
    return 4;
  }

  v10 = [v0 navigationController];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [v10 viewControllers];

  sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
  v13 = sub_29D939F38();

  if (v13 >> 62)
  {
    result = sub_29D93A928();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_11:

LABEL_12:
    v18 = sub_29D9350C8();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    goto LABEL_13;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x29ED6AE30](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 traitCollection];

  sub_29D93A4B8();
  v17 = sub_29D9350C8();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
LABEL_13:
  sub_29D7D1B30(v8, v5);
  v19 = sub_29D7D1BB0(v5);
  sub_29D7D1D84(v8, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  return v19;
}

void sub_29D7D0ED8(char a1)
{
  sub_29D7D1ADC(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v23 - v5;
  if (![v1 isViewLoaded])
  {
    goto LABEL_12;
  }

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 window];

  if (v9)
  {

    v10 = v1;
    if (sub_29D7D11A4())
    {
      v11 = sub_29D936468();
      type metadata accessor for BloodPressureJournalLoggingFlowManager();
      *(swift_initStackObject() + 16) = v11;
      sub_29D7D0BB4();
      v12 = qword_2A17B51B8;
      v13 = v1[qword_2A17B51B8];
      v14 = sub_29D9339F8();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
      if (v13)
      {
        v15 = 3;
      }

      else
      {
        v15 = 1;
      }

      sub_29D8D1130(0, 6, v15, v6, 2, 2);

      sub_29D7D1D84(v6, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
      v16 = sub_29D936468();
      type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
      v17 = swift_allocObject();
      v17[4] = 0;
      v17[5] = 0;
      v17[2] = v16;
      type metadata accessor for BloodPressureJournalAnalyticsUtilities();
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = 0;
      v17[3] = v18;
      v19 = v16;
      v20 = sub_29D7D0C64();
      sub_29D6AA594(v20, 4);

      if (v10[v12])
      {
        v21 = 3;
      }

      else
      {
        v21 = 1;
      }

      sub_29D783980(v10, a1 & 1, v21, v10[qword_2A17B51C8]);
    }

    else
    {
      sub_29D9364C8();
      v22 = sub_29D9364D8();

      v22(a1 & 1);
    }
  }

  else
  {
LABEL_12:
    v1[qword_2A17B51D0] = 1;
  }
}

id sub_29D7D11A4()
{
  swift_getObjectType();
  v0 = sub_29D9371A8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D936378();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x29EDBA6B8];
  sub_29D9364A8();
  v11 = sub_29D936338();
  (*(v6 + 8))(v9, v5);
  v12 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v10 healthStore:v11];

  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  v13 = sub_29D9371B8();
  v14 = [v13 areAllRequirementsSatisfied];

  (*(v1 + 8))(v4, v0);
  return v14;
}

id sub_29D7D158C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_29D936468();
  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v4 = swift_allocObject();
  v4[4] = 0;
  v4[5] = 0;
  v4[2] = v3;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = 0;
  v4[3] = v5;
  v6 = v3;
  v7 = sub_29D7D0C64();
  sub_29D6AA594(v7, 0);

  v9.receiver = v2;
  v9.super_class = type metadata accessor for BloodPressureDataTypeDetailViewController(0);
  return objc_msgSendSuper2(&v9, sel_viewDidLoad);
}

void sub_29D7D163C(void *a1)
{
  v1 = a1;
  sub_29D7D158C(v1);
}

void sub_29D7D1684(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for BloodPressureDataTypeDetailViewController(0);
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a3);
  if (v4[qword_2A17B51D0] == 1)
  {
    v4[qword_2A17B51D0] = 0;
    sub_29D7D0ED8(1);
  }
}

uint64_t sub_29D7D1708(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_29D936378();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = objc_allocWithZone(v3);
  v11[qword_2A17B51B8] = 0;
  *&v11[qword_2A17B51C0] = 0;
  v11[qword_2A17B51C8] = 0;
  v11[qword_2A17B51D0] = 0;
  (*(v7 + 16))(v10, a2, v6);
  sub_29D6945AC(a3, v15);
  v12 = sub_29D936498();
  sub_29D69417C(a3);
  (*(v7 + 8))(a2, v6);
  return v12;
}

uint64_t sub_29D7D1870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29D936378();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v3);
  v10[qword_2A17B51B8] = 0;
  *&v10[qword_2A17B51C0] = 0;
  v10[qword_2A17B51C8] = 0;
  v10[qword_2A17B51D0] = 0;
  (*(v6 + 16))(v9, a2, v5);
  v11 = sub_29D936488();
  (*(v6 + 8))(a2, v5);
  return v11;
}

id sub_29D7D19B8(void *a1)
{
  v1[qword_2A17B51B8] = 0;
  *&v1[qword_2A17B51C0] = 0;
  v1[qword_2A17B51C8] = 0;
  v1[qword_2A17B51D0] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BloodPressureDataTypeDetailViewController(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_29D7D1A8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureDataTypeDetailViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D7D1ADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_29D7D1B30(uint64_t a1, uint64_t a2)
{
  sub_29D7D1ADC(0, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7D1BB0(uint64_t a1)
{
  sub_29D7D1ADC(0, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v12 - v4;
  v6 = sub_29D9350C8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1, v6) != 1)
  {
    sub_29D7D1B30(a1, v5);
    v9 = (*(v7 + 88))(v5, v6);
    if (v9 == *MEMORY[0x29EDC1D20])
    {
      v8 = 0;
      goto LABEL_15;
    }

    if (v9 == *MEMORY[0x29EDC1D68])
    {
      v8 = 1;
      goto LABEL_15;
    }

    if (v9 == *MEMORY[0x29EDC1D70])
    {
      v8 = 3;
      goto LABEL_15;
    }

    if (v9 == *MEMORY[0x29EDC1D40] || v9 == *MEMORY[0x29EDC1D28])
    {
      v8 = 2;
      goto LABEL_15;
    }

    (*(v7 + 8))(v5, v6);
  }

  v8 = 5;
LABEL_15:
  sub_29D7D1D84(a1, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  return v8;
}

uint64_t sub_29D7D1D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D7D1ADC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for AFibBurdenPDFLineChart(uint64_t a1)
{
  result = qword_2A17B51E8;
  if (!qword_2A17B51E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7D1E54@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, void *a2@<X1>, int a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v119 = a5;
  v131 = a4;
  LODWORD(v129) = a3;
  v128 = a2;
  v122 = a6;
  v116 = sub_29D938828();
  v127 = *(v116 - 8);
  MEMORY[0x2A1C7C4A8](v116, v7);
  v126 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D5530(0, &qword_2A17B1EB0, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v124 = &v105 - v11;
  sub_29D7D436C(0);
  v111 = v12;
  v109 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v108 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D4E7C(0);
  v114 = v15;
  v112 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v110 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D4F50(0);
  v120 = v18;
  v115 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v113 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D5070(0);
  v123 = v21;
  v121 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v117 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D5594(0, &qword_2A17B5290, sub_29D7D5204, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v118 = v24;
  MEMORY[0x2A1C7C4A8](v24, v25);
  v125 = &v105 - v26;
  sub_29D6D6C48(0);
  v106 = v27;
  v29 = MEMORY[0x2A1C7C4A8](v27, v28);
  v31 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29, v32);
  v34 = &v105 - v33;
  v35 = sub_29D9339F8();
  v36 = *(v35 - 8);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v40 = &v105 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v41);
  v43 = &v105 - v42;
  sub_29D6D6634(0);
  v130 = v44;
  MEMORY[0x2A1C7C4A8](v44, v45);
  v132 = &v105 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_29D9331D8();
  v48 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47, v49);
  v51 = &v105 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = (a1 + *(type metadata accessor for AFibBurdenPDFChartViewModel(0) + 32));
  v53 = *v52;
  v55 = v52[1];
  v54 = v52[2];
  if (v53 == 2)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = v55;
  }

  if (v53 == 2)
  {
    v57 = 0.0;
  }

  else
  {
    v57 = v54;
  }

  sub_29D8BE424(v56, v57, v53 == 2, 3, v128, v129, v131, &v134);
  v128 = v48;
  v58 = v48[2];
  v107 = a1;
  v129 = v47;
  v58(v51, a1, v47);
  sub_29D9331A8();
  v131 = v51;
  sub_29D933178();
  sub_29D7D5680(&qword_2A17B4730, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  result = sub_29D939CD8();
  if (result)
  {
    v60 = *(v36 + 32);
    v60(v34, v43, v35);
    v61 = v106;
    v60(&v34[*(v106 + 12)], v40, v35);
    sub_29D6D6F1C(v34, v31, sub_29D6D6C48);
    v105 = *(v61 + 12);
    v62 = v132;
    v60(v132, v31, v35);
    v63 = *(v36 + 8);
    v63(&v31[v105], v35);
    sub_29D6D6F84(v34, v31, sub_29D6D6C48);
    v60((v62 + *(v130 + 9)), &v31[*(v61 + 12)], v35);
    v64 = (v63)(v31, v35);
    v106 = &v105;
    MEMORY[0x2A1C7C4A8](v64, v65);
    v66 = v131;
    *(&v105 - 2) = v107;
    *(&v105 - 1) = v66;
    sub_29D7D43D0(0);
    sub_29D7D4B84();
    v67 = v108;
    sub_29D937E58();
    v68 = sub_29D938028();
    v107 = *(*(v68 - 8) + 56);
    v69 = v124;
    v107(v124, 1, 1, v68);
    v70 = sub_29D7D5680(&qword_2A17B5278, sub_29D7D436C, MEMORY[0x29EDB8690]);
    v71 = sub_29D6D66C8();
    v72 = v110;
    v73 = v111;
    v74 = v130;
    sub_29D939348();
    sub_29D7D53D4(v69);
    v75 = (*(v109 + 8))(v67, v73);
    MEMORY[0x2A1C7C4A8](v75, v76);
    *(&v105 - 2) = v119;
    *&v135 = v73;
    *(&v135 + 1) = v74;
    *&v136 = v70;
    *(&v136 + 1) = v71;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v78 = MEMORY[0x29EDB8608];
    v79 = MEMORY[0x29EDB8600];
    v80 = v113;
    v81 = v114;
    sub_29D939328();
    (*(v112 + 8))(v72, v81);
    v133 = v134;
    v107(v69, 1, 1, v68);
    sub_29D6D7108(0, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    v83 = v82;
    *&v135 = v81;
    *(&v135 + 1) = v78;
    *&v136 = OpaqueTypeConformance2;
    *(&v136 + 1) = v79;
    v84 = swift_getOpaqueTypeConformance2();
    v85 = sub_29D6D69EC();
    v86 = v117;
    v87 = v120;
    sub_29D939358();
    sub_29D7D53D4(v69);
    v88 = (*(v115 + 8))(v80, v87);
    v130 = &v105;
    MEMORY[0x2A1C7C4A8](v88, v89);
    *(&v105 - 2) = &v134;
    *&v135 = v87;
    *(&v135 + 1) = v83;
    *&v136 = v84;
    *(&v136 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    v90 = v125;
    v91 = v123;
    sub_29D939338();
    (*(v121 + 8))(v86, v91);
    sub_29D9398B8();
    sub_29D938718();
    v92 = (v90 + *(v118 + 36));
    v93 = v136;
    *v92 = v135;
    v92[1] = v93;
    v92[2] = v137;
    KeyPath = swift_getKeyPath();
    v95 = [objc_opt_self() sharedApplication];
    v96 = [v95 userInterfaceLayoutDirection];

    sub_29D6D6CD4(v132);
    v97 = v127;
    v98 = MEMORY[0x29EDBC548];
    if (v96 != 1)
    {
      v98 = MEMORY[0x29EDBC540];
    }

    v99 = v126;
    v100 = v116;
    (*(v127 + 104))(v126, *v98, v116);
    sub_29D7D5460(0);
    v102 = v122;
    v103 = (v122 + *(v101 + 36));
    sub_29D7D5530(0, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    (*(v97 + 32))(v103 + *(v104 + 28), v99, v100);
    *v103 = KeyPath;
    sub_29D6822E4(v90, v102);
    (*(v128 + 1))(v131, v129);
    return sub_29D6D6E00(&v134);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7D2B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v101 = a3;
  v108 = sub_29D9339F8();
  v110 = *(v108 - 8);
  MEMORY[0x2A1C7C4A8](v108, v4);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D5594(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v105 = &v85 - v9;
  v96 = sub_29D937F78();
  v109 = *(v96 - 8);
  MEMORY[0x2A1C7C4A8](v96, v10);
  v90 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D4AEC(0, &qword_2A17B1F00, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0]);
  v106 = v12;
  v95 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v94 = &v85 - v14;
  sub_29D6D61A0(0);
  v100 = v15;
  v99 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v98 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v97 = &v85 - v21;
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v93 = &v85 - v24;
  MEMORY[0x2A1C7C4A8](v23, v25);
  v104 = &v85 - v26;
  v27 = type metadata accessor for AFibBurdenPDFChartViewModel(0);
  v28 = v27 - 8;
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v27, v31);
  sub_29D7D4444(0);
  v92 = v32;
  v91 = *(v32 - 8);
  v34 = MEMORY[0x2A1C7C4A8](v32, v33);
  v103 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v38 = &v85 - v37;
  v112[0] = *(a1 + *(v28 + 28));
  sub_29D6D6F1C(a1, &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AFibBurdenPDFChartViewModel);
  v39 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v40 = swift_allocObject();
  sub_29D6D6F84(&v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39, type metadata accessor for AFibBurdenPDFChartViewModel);
  sub_29D7D5530(0, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
  v89 = v41;
  v88 = sub_29D9331D8();
  sub_29D7D4548(0);
  v87 = v42;
  v86 = sub_29D6D6118();
  sub_29D7D46F8(255);
  v44 = v43;
  sub_29D7D4870(255);
  v46 = v45;
  v47 = MEMORY[0x29EDB86D0];
  sub_29D7D4AEC(255, &qword_2A17B5240, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
  v49 = v48;
  sub_29D7D49B8(255);
  v51 = v50;
  v52 = sub_29D937F38();
  sub_29D935E88();
  v113 = v52;
  v114 = MEMORY[0x29EDBCA98];
  v115 = v47;
  v116 = MEMORY[0x29EDBCA88];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_29D7D4A44();
  v55 = sub_29D7D4A98();
  v113 = MEMORY[0x29EDBCB20];
  v114 = v54;
  v115 = v55;
  v56 = swift_getOpaqueTypeConformance2();
  v113 = v49;
  v114 = v51;
  v115 = OpaqueTypeConformance2;
  v116 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v113 = v46;
  v114 = v57;
  v58 = swift_getOpaqueTypeConformance2();
  v113 = v44;
  v114 = v58;
  swift_getOpaqueTypeConformance2();
  sub_29D7D5680(&qword_2A17B1F88, type metadata accessor for AFibBurdenPDFChartPoint, &unk_29D951654);
  v102 = v38;
  sub_29D9397B8();
  sub_29D938C18();
  sub_29D9331A8();
  v59 = v90;
  v60 = v108;
  sub_29D937D48();

  v61 = *(v110 + 8);
  v62 = v6;
  v110 += 8;
  v89 = v61;
  v61(v6, v60);
  sub_29D937F48();
  if (qword_2A17B0C88 != -1)
  {
    swift_once();
  }

  v87 = qword_2A17D0CC0;
  v113 = qword_2A17D0CC0;

  v63 = v94;
  v64 = v96;
  v65 = MEMORY[0x29EDBCA98];
  v66 = MEMORY[0x29EDB86E0];
  v67 = MEMORY[0x29EDBCA88];
  sub_29D937C48();
  v68 = *(v109 + 8);
  v109 += 8;
  v88 = v68;
  v68(v59, v64);
  sub_29D9386D8();
  v113 = v64;
  v114 = v65;
  v115 = v66;
  v116 = v67;
  v86 = swift_getOpaqueTypeConformance2();
  v69 = v106;
  sub_29D937C98();
  sub_29D6D70B4(v112);
  v95 = *(v95 + 8);
  (v95)(v63, v69);
  sub_29D938C18();
  sub_29D933178();
  v70 = v108;
  sub_29D937D48();

  v89(v62, v70);
  sub_29D937F48();
  v113 = v87;
  sub_29D937C48();

  v88(v59, v64);
  sub_29D9386D8();
  v71 = v93;
  v72 = v106;
  sub_29D937C98();
  sub_29D6D70B4(&v113);
  (v95)(v63, v72);
  v73 = v91;
  v74 = v103;
  v75 = v92;
  (*(v91 + 16))(v103, v102, v92);
  v111[0] = v74;
  v76 = v99;
  v77 = *(v99 + 16);
  v78 = v97;
  v79 = v104;
  v80 = v100;
  v77(v97, v104, v100);
  v111[1] = v78;
  v81 = v98;
  v77(v98, v71, v80);
  v111[2] = v81;
  sub_29D90AA7C(v111, v101);
  v82 = *(v76 + 8);
  v82(v71, v80);
  v82(v79, v80);
  v83 = *(v73 + 8);
  v83(v102, v75);
  v82(v81, v80);
  v82(v78, v80);
  return (v83)(v103, v75);
}

uint64_t sub_29D7D378C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v84 = a3;
  sub_29D7D49B8(0);
  v5 = *(v4 - 8);
  v82 = v4;
  v83 = v5;
  MEMORY[0x2A1C7C4A8](v4, v6);
  v81 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D7108(0, &qword_2A17B1F90, MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v73 = &v63 - v10;
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v66 = &v63 - v18;
  sub_29D7D5594(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v65 = &v63 - v21;
  v70 = sub_29D937F38();
  v71 = *(v70 - 8);
  MEMORY[0x2A1C7C4A8](v70, v22);
  v68 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D4AEC(0, &qword_2A17B5240, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
  v25 = *(v24 - 8);
  v74 = v24;
  v75 = v25;
  MEMORY[0x2A1C7C4A8](v24, v26);
  v67 = &v63 - v27;
  sub_29D7D4870(0);
  v29 = *(v28 - 8);
  v76 = v28;
  v77 = v29;
  MEMORY[0x2A1C7C4A8](v28, v30);
  v69 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D46F8(0);
  v33 = *(v32 - 8);
  v78 = v32;
  v79 = v33;
  MEMORY[0x2A1C7C4A8](v32, v34);
  v72 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_29D938C18();
  v64 = a1;
  sub_29D9331A8();
  v36 = sub_29D933958();
  v37 = *(v12 + 8);
  v37(v16, v11);
  sub_29D933178();
  v38 = sub_29D933958();
  v37(v16, v11);
  v39 = HKDateMid();

  v40 = v66;
  sub_29D933998();

  sub_29D937D48();

  v37(v40, v11);
  sub_29D938C18();
  v87 = *(v64 + *(type metadata accessor for AFibBurdenPDFChartPoint(0) + 20));
  sub_29D937D48();

  v41 = v68;
  sub_29D937F28();
  v87 = sub_29D8F4468();
  v42 = MEMORY[0x29EDBCA98];
  v43 = MEMORY[0x29EDBCA88];
  v44 = v67;
  v45 = v70;
  v46 = MEMORY[0x29EDB86D0];
  sub_29D937C48();

  v47 = v41;
  v48 = v45;
  (*(v71 + 8))(v47, v45);
  v49 = sub_29D7D4A44();
  v50 = sub_29D7D4A98();
  v51 = MEMORY[0x29EDBCB20];
  v52 = v81;
  sub_29D937DA8();
  v87 = v48;
  v88 = v42;
  v89 = v46;
  v90 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = v51;
  v88 = v49;
  v89 = v50;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v69;
  v56 = v74;
  v57 = v82;
  sub_29D937C68();
  (*(v83 + 8))(v52, v57);
  (*(v75 + 8))(v44, v56);
  v87 = v56;
  v88 = v57;
  v89 = OpaqueTypeConformance2;
  v90 = v54;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v72;
  v60 = v76;
  sub_29D937C28();
  (*(v77 + 8))(v55, v60);
  sub_29D9386D8();
  v85 = v60;
  v86 = v58;
  swift_getOpaqueTypeConformance2();
  v61 = v78;
  sub_29D937C98();
  sub_29D6D70B4(&v87);
  return (*(v79 + 8))(v59, v61);
}

uint64_t sub_29D7D4048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D7D5680(&qword_2A17B5208, type metadata accessor for AFibBurdenPDFLineChart, &unk_29D94A578);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29D7D40FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29D7D5680(&qword_2A17B5208, type metadata accessor for AFibBurdenPDFLineChart, &unk_29D94A578);

  return a4(a1, a2, v6);
}

uint64_t sub_29D7D418C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D7D5680(&qword_2A17B5200, type metadata accessor for AFibBurdenPDFLineChart, &unk_29D94A538);
  *v3 = v1;
  v3[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29D7D4314(uint64_t a1)
{
  result = sub_29D7D5680(&qword_2A17B5208, type metadata accessor for AFibBurdenPDFLineChart, &unk_29D94A578);
  *(a1 + 8) = result;
  return result;
}

void sub_29D7D436C(uint64_t a1)
{
  if (!qword_2A17B5210)
  {
    sub_29D7D43D0(255);
    sub_29D7D4B84();
    v1 = sub_29D937E68();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5210);
    }
  }
}

void sub_29D7D43D0(uint64_t a1)
{
  if (!qword_2A17B5218)
  {
    sub_29D7D4444(255);
    sub_29D6D61A0(255);
    v1 = sub_29D937BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5218);
    }
  }
}

void sub_29D7D4444(uint64_t a1)
{
  if (!qword_2A17B5220)
  {
    sub_29D7D5530(255, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
    sub_29D9331D8();
    sub_29D7D4548(255);
    sub_29D6D6118();
    sub_29D7D5680(&qword_2A17B1EF0, MEMORY[0x29EDB98E8], MEMORY[0x29EDB98F8]);
    v1 = sub_29D9397E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B5220);
    }
  }
}

void sub_29D7D4548(uint64_t a1)
{
  if (!qword_2A17B5228)
  {
    sub_29D7D46F8(255);
    sub_29D7D4870(255);
    sub_29D7D4AEC(255, &qword_2A17B5240, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
    sub_29D7D49B8(255);
    sub_29D937F38();
    swift_getOpaqueTypeConformance2();
    sub_29D7D4A44();
    sub_29D7D4A98();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5228);
    }
  }
}

void sub_29D7D46F8(uint64_t a1)
{
  if (!qword_2A17B5230)
  {
    sub_29D7D4870(255);
    sub_29D7D4AEC(255, &qword_2A17B5240, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
    sub_29D7D49B8(255);
    sub_29D937F38();
    swift_getOpaqueTypeConformance2();
    sub_29D7D4A44();
    sub_29D7D4A98();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5230);
    }
  }
}

void sub_29D7D4870(uint64_t a1)
{
  if (!qword_2A17B5238)
  {
    sub_29D7D4AEC(255, &qword_2A17B5240, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
    sub_29D7D49B8(255);
    sub_29D937F38();
    swift_getOpaqueTypeConformance2();
    sub_29D7D4A44();
    sub_29D7D4A98();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5238);
    }
  }
}

void sub_29D7D49B8(uint64_t a1)
{
  if (!qword_2A17B5248)
  {
    sub_29D7D4A44();
    sub_29D7D4A98();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5248);
    }
  }
}

unint64_t sub_29D7D4A44()
{
  result = qword_2A17B5250;
  if (!qword_2A17B5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5250);
  }

  return result;
}

unint64_t sub_29D7D4A98()
{
  result = qword_2A17B5258;
  if (!qword_2A17B5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5258);
  }

  return result;
}

void sub_29D7D4AEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29D7D4B84()
{
  result = qword_2A17B5260;
  if (!qword_2A17B5260)
  {
    sub_29D7D43D0(255);
    sub_29D7D4CA8();
    sub_29D7D4AEC(255, &qword_2A17B1F00, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0]);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5260);
  }

  return result;
}

unint64_t sub_29D7D4CA8()
{
  result = qword_2A17B5268;
  if (!qword_2A17B5268)
  {
    sub_29D7D4444(255);
    sub_29D7D46F8(255);
    sub_29D7D4870(255);
    sub_29D7D4AEC(255, &qword_2A17B5240, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
    sub_29D7D49B8(255);
    sub_29D937F38();
    swift_getOpaqueTypeConformance2();
    sub_29D7D4A44();
    sub_29D7D4A98();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5268);
  }

  return result;
}

void sub_29D7D4E7C(uint64_t a1)
{
  if (!qword_2A17B5270)
  {
    sub_29D7D436C(255);
    sub_29D6D6634(255);
    sub_29D7D5680(&qword_2A17B5278, sub_29D7D436C, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5270);
    }
  }
}

void sub_29D7D4F50(uint64_t a1)
{
  if (!qword_2A17B5280)
  {
    sub_29D7D4E7C(255);
    sub_29D7D436C(255);
    sub_29D6D6634(255);
    sub_29D7D5680(&qword_2A17B5278, sub_29D7D436C, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5280);
    }
  }
}

void sub_29D7D5070(uint64_t a1)
{
  if (!qword_2A17B5288)
  {
    sub_29D7D4F50(255);
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D7D4E7C(255);
    sub_29D7D436C(255);
    sub_29D6D6634(255);
    sub_29D7D5680(&qword_2A17B5278, sub_29D7D436C, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5288);
    }
  }
}

void sub_29D7D5204(uint64_t a1)
{
  if (!qword_2A17B5298)
  {
    sub_29D7D5070(255);
    sub_29D7D4F50(255);
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D7D4E7C(255);
    sub_29D7D436C(255);
    sub_29D6D6634(255);
    sub_29D7D5680(&qword_2A17B5278, sub_29D7D436C, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5298);
    }
  }
}

uint64_t sub_29D7D53D4(uint64_t a1)
{
  sub_29D7D5530(0, &qword_2A17B1EB0, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D7D5460(uint64_t a1)
{
  if (!qword_2A17B52A0)
  {
    sub_29D7D5594(255, &qword_2A17B5290, sub_29D7D5204, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D7D5530(255, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B52A0);
    }
  }
}

void sub_29D7D5530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D7D5594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29D7D5600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFibBurdenPDFChartViewModel(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D7D378C(a1, v6, a2);
}

uint64_t sub_29D7D5680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D7D56C8()
{
  result = qword_2A17B52A8;
  if (!qword_2A17B52A8)
  {
    sub_29D7D5460(255);
    sub_29D7D5748();
    sub_29D6D74DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B52A8);
  }

  return result;
}

unint64_t sub_29D7D5748()
{
  result = qword_2A17B52B0;
  if (!qword_2A17B52B0)
  {
    sub_29D7D5594(255, &qword_2A17B5290, sub_29D7D5204, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D7D5070(255);
    sub_29D7D4F50(255);
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D7D4E7C(255);
    sub_29D7D436C(255);
    sub_29D6D6634(255);
    sub_29D7D5680(&qword_2A17B5278, sub_29D7D436C, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B52B0);
  }

  return result;
}

unint64_t sub_29D7D5A28(void *a1)
{
  v2 = v1;
  v4 = [a1 healthDataSource];
  if (v4)
  {
    v5 = v4;
    v6 = sub_29D73F010(MEMORY[0x29EDCA190]);
    v7 = *(v2 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_onboardingStep);
    if (v7 <= 2)
    {
      if (*(v2 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_onboardingStep))
      {
        if (v7 == 1)
        {
          v8 = 0x7472617453746567;
          v9 = 0xEA00000000006465;
        }

        else
        {
          v9 = 0xEA0000000000736BLL;
          v8 = 0x726F577449776F68;
        }
      }

      else
      {
        v9 = 0xE500000000000000;
        v8 = 0x7472617473;
      }
    }

    else if (*(v2 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_onboardingStep) > 4u)
    {
      if (v7 == 5)
      {
        v9 = 0x800000029D95A400;
        v8 = 0xD000000000000013;
      }

      else
      {
        v9 = 0xEA00000000006E6FLL;
        v8 = 0x6974656C706D6F63;
      }
    }

    else if (v7 == 3)
    {
      v8 = 0xD000000000000010;
      v9 = 0x800000029D95A420;
    }

    else
    {
      v9 = 0xEB0000000073726FLL;
      v8 = 0x746361466566696CLL;
    }

    v10 = MEMORY[0x29EDC99B0];
    v61 = MEMORY[0x29EDC99B0];
    *&v60 = v8;
    *(&v60 + 1) = v9;
    sub_29D6940E0(&v60, v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v6;
    sub_29D69242C(v59, 1885697139, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v12 = v62;
    v13 = sub_29D7C40A8();
    v61 = v10;
    *&v60 = v13;
    *(&v60 + 1) = v14;
    sub_29D6940E0(&v60, v59);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v12;
    sub_29D69242C(v59, 0x747865746E6F63, 0xE700000000000000, v15);
    v16 = v62;
    v17 = sub_29D7C4224();
    v61 = v10;
    *&v60 = v17;
    *(&v60 + 1) = v18;
    sub_29D6940E0(&v60, v59);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v59, 0x6E616E65766F7270, 0xEA00000000006563, v19);
    v20 = v16;
    v62 = v16;
    v21 = *(v2 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_countryCode);
    if (v21)
    {
      v22 = [v21 ISOCode];
      v23 = sub_29D939D68();
      v25 = v24;

      v61 = v10;
      *&v60 = v23;
      *(&v60 + 1) = v25;
      sub_29D6940E0(&v60, v59);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      sub_29D69242C(v59, 0x437972746E756F63, 0xEB0000000065646FLL, v26);
      v62 = v20;
    }

    else
    {
      sub_29D8C42F8(0x437972746E756F63, 0xEB0000000065646FLL, &v60);
      sub_29D7D62BC(&v60, sub_29D70C44C);
    }

    v27 = sub_29D939D68();
    v29 = v28;
    v30 = [a1 environmentDataSource];
    v31 = [v30 activePairedDeviceProductType];

    if (v31)
    {
      v32 = sub_29D939D68();
      v34 = v33;

      v61 = MEMORY[0x29EDC99B0];
      *&v60 = v32;
      *(&v60 + 1) = v34;
      sub_29D6940E0(&v60, v59);
      v35 = v62;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      sub_29D69242C(v59, v27, v29, v36);

      v62 = v35;
    }

    else
    {
      sub_29D8C42F8(v27, v29, &v60);

      sub_29D7D62BC(&v60, sub_29D70C44C);
    }

    v37 = sub_29D939D68();
    v39 = v38;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v40 = sub_29D937898();
    v41 = sub_29D69C6C0(v40, qword_2A1A2BF28);
    type metadata accessor for AFibBurdenOnboardingStepAnalyticsEvent(0);
    v42 = sub_29D93A308();
    v43 = MEMORY[0x29EDC99B0];
    v61 = MEMORY[0x29EDC99B0];
    *&v60 = v42;
    *(&v60 + 1) = v44;
    sub_29D6940E0(&v60, v59);
    v45 = v62;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v59, v37, v39, v46);

    v62 = v45;
    v47 = sub_29D939D68();
    v49 = v48;
    v50 = [a1 environmentDataSource];
    v51 = sub_29D8A35A8(v5, v50, v41);

    v61 = sub_29D6B73CC();
    *&v60 = v51;
    sub_29D6940E0(&v60, v59);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v59, v47, v49, v52);

    v53 = HKHRAFibBurdenAnalyticsPropertyValueForVersion();
    v54 = sub_29D939D68();
    v56 = v55;

    v61 = v43;
    *&v60 = v54;
    *(&v60 + 1) = v56;
    sub_29D6940E0(&v60, v59);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v59, 0x5665727574616566, 0xEE006E6F69737265, v57);
    sub_29D936978();
    return v45;
  }

  else
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7D613C()
{
  sub_29D7D62BC(v0 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_presentationContext, type metadata accessor for AFibBurdenOnboardingPresentationContext);
  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenOnboardingStepAnalyticsEvent(uint64_t a1)
{
  result = qword_2A17B52B8;
  if (!qword_2A17B52B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7D6218(uint64_t a1)
{
  result = type metadata accessor for AFibBurdenOnboardingPresentationContext(319);
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

uint64_t sub_29D7D62BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D7D631C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D7D96A8(*a1);
  *a2 = result;
  return result;
}

void *sub_29D7D6354@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_29D7D6374()
{
  v1 = *v0;
  sub_29D93AE58();
  if (!(v1 >> 6))
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x29ED6B260](v2);
    goto LABEL_7;
  }

  if (v1 >> 6 != 1)
  {
    v1 &= 0x3Fu;
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x29ED6B260](1);
  v1 &= 1u;
LABEL_7:
  MEMORY[0x29ED6B260](v1);
  return sub_29D93AE98();
}

uint64_t sub_29D7D63FC()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x29ED6B260](v2);
    return MEMORY[0x29ED6B260](v1);
  }

  if (v1 >> 6 != 1)
  {
    v1 &= 0x3Fu;
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x29ED6B260](1);
  v1 &= 1u;
  return MEMORY[0x29ED6B260](v1);
}

uint64_t sub_29D7D6460(uint64_t a1)
{
  v2 = *v1;
  sub_29D93AE58();
  if (!(v2 >> 6))
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x29ED6B260](v3);
    goto LABEL_7;
  }

  if (v2 >> 6 != 1)
  {
    v2 &= 0x3Fu;
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x29ED6B260](1);
  v2 &= 1u;
LABEL_7:
  MEMORY[0x29ED6B260](v2);
  return sub_29D93AE98();
}

uint64_t sub_29D7D64F0()
{
  v1 = v0;
  sub_29D7DA298(0, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v57 = &v51 - v4;
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v51 - v12;
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v17 = &v51 - v16;
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v21 = &v51 - v20;
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v51 - v23;
  v25 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_29D7D9B18(v1 + v25, v24);
  v26 = sub_29D935AB8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = v27 + 48;
  if (v28(v24, 1, v26))
  {
LABEL_2:
    v30 = &qword_2A17B52E8;
    v31 = MEMORY[0x29EDC2268];
    v32 = v24;
LABEL_3:
    sub_29D7DA48C(v32, v30, v31);
    return 0;
  }

  v54 = v17;
  v55 = v29;
  v56 = v28;
  v52 = v9;
  v53 = v13;
  sub_29D935A18();
  v35 = v34;
  sub_29D7DA48C(v24, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  if (v35)
  {
    return 0;
  }

  v36 = v1;
  v37 = v25;
  sub_29D7D9B18(v36 + v25, v21);
  v38 = v26;
  v39 = v26;
  v40 = v56;
  if (v56(v21, 1, v39))
  {
    sub_29D7DA48C(v21, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  }

  else
  {
    v44 = sub_29D935A18();
    v46 = v45;
    sub_29D7DA48C(v21, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
    if ((v46 & 1) == 0 && !v44)
    {
      return 0;
    }
  }

  v41 = v54;
  sub_29D7D9B18(v36 + v37, v54);
  if (v40(v41, 1, v38))
  {
    sub_29D7DA48C(v41, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
    v42 = sub_29D933318();
    v43 = v57;
    (*(*(v42 - 8) + 56))(v57, 1, 1, v42);
LABEL_14:
    v30 = &qword_2A17B2D20;
    v48 = MEMORY[0x29EDB9950];
LABEL_15:
    v31 = v48;
    v32 = v43;
    goto LABEL_3;
  }

  v43 = v57;
  sub_29D935A58();
  sub_29D7DA48C(v41, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v47 = sub_29D933318();
  if ((*(*(v47 - 8) + 48))(v43, 1, v47) == 1)
  {
    goto LABEL_14;
  }

  sub_29D7DA48C(v43, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v43 = v53;
  sub_29D7D9B18(v36 + v37, v53);
  if (v40(v43, 1, v38))
  {
    v30 = &qword_2A17B52E8;
    v48 = MEMORY[0x29EDC2268];
    goto LABEL_15;
  }

  v49 = sub_29D935A98();
  sub_29D7DA48C(v43, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  if (!v49)
  {
    return 0;
  }

  v24 = v52;
  sub_29D7D9B18(v36 + v37, v52);
  if (v40(v24, 1, v38))
  {
    goto LABEL_2;
  }

  v50 = sub_29D935AA8();
  sub_29D7DA48C(v24, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  if (!v50)
  {
    return 0;
  }

  return 1;
}

double sub_29D7D6A84(uint64_t a1)
{
  v3 = MEMORY[0x29EDC2268];
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v17[-v6];
  v8 = sub_29D935AB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v7, a1, v8);
  v11 = *(v9 + 56);
  v11(v7, 0, 1, v8);
  v12 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_29D7DA368(v7, v1 + v12);
  swift_endAccess();
  v10(v7, a1, v8);
  v11(v7, 0, 1, v8);
  v18 = v1;
  v19 = v7;
  sub_29D82356C(sub_29D7DA3E8, v17, &unk_2A243DE48);
  v14 = v13;
  sub_29D7DA43C();
  swift_arrayDestroy();
  sub_29D7DA48C(v7, &qword_2A17B52E8, v3);
  *(v1 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker) = 4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = sub_29D776320(v14);

    sub_29D82474C(v15);

    sub_29D936978();
  }

  else
  {
  }

  return result;
}

uint64_t sub_29D7D6CBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7[3] = a3;
  v5 = *a1;
  v7[2] = a2;
  result = sub_29D823698(sub_29D7DA2EC, v7, v5);
  *a4 = result;
  return result;
}

void sub_29D7D6D10(uint64_t a1)
{
  v165 = a1;
  v163 = *v1;
  v2 = sub_29D933DB8();
  v164 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2, v3);
  v162 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v152 = &v146 - v8;
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v153 = &v146 - v11;
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v157 = &v146 - v14;
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v151 = &v146 - v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v146 - v19;
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v23 = MEMORY[0x2A1C7C4A8](v21 - 8, v22);
  v154 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v156 = &v146 - v27;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v31 = &v146 - v30;
  v33 = MEMORY[0x2A1C7C4A8](v29, v32);
  v155 = &v146 - v34;
  v36 = MEMORY[0x2A1C7C4A8](v33, v35);
  v161 = &v146 - v37;
  MEMORY[0x2A1C7C4A8](v36, v38);
  v40 = &v146 - v39;
  v41 = sub_29D935AB8();
  v42 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41, v43);
  v45 = &v146 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  v159 = v46;
  sub_29D7D9B18(v1 + v46, v40);
  v47 = *(v42 + 48);
  if (v47(v40, 1, v41) == 1)
  {
    sub_29D7DA48C(v40, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v48 = sub_29D937898();
    sub_29D69C6C0(v48, qword_2A1A2C008);
    v49 = sub_29D937878();
    v50 = sub_29D93A288();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v169[0] = v52;
      *v51 = 136446466;
      v53 = sub_29D93AF08();
      v55 = sub_29D6C2364(v53, v54, v169);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      *(v51 + 14) = sub_29D6C2364(0xD000000000000014, 0x800000029D963CC0, v169);
      _os_log_impl(&dword_29D677000, v49, v50, "[%{public}s.%{public}s]: Attempted to change details before we received them.", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v52, -1, -1);
      MEMORY[0x29ED6BE30](v51, -1, -1);
    }

    return;
  }

  v158 = v42;
  v56 = *(v42 + 32);
  v160 = v45;
  v150 = v41;
  v148 = v42 + 32;
  v147 = v56;
  v56(v45, v40, v41);
  v57 = v164;
  v58 = v164[2];
  v149 = v2;
  v58(v20, v165, v2);
  v59 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker;
  v60 = sub_29D7D96B8(v20, *(v1 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker));
  if (v60 > 0xFBu)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v61 = sub_29D937898();
    sub_29D69C6C0(v61, qword_2A1A2C008);
    v62 = v162;
    v63 = v149;
    v58(v162, v165, v149);
    v64 = sub_29D937878();
    v65 = sub_29D93A298();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v158;
    if (v66)
    {
      v68 = v57;
      v69 = swift_slowAlloc();
      v70 = v62;
      v71 = swift_slowAlloc();
      v169[0] = v71;
      *v69 = 136446722;
      v72 = sub_29D93AF08();
      v74 = sub_29D6C2364(v72, v73, v169);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2082;
      *(v69 + 14) = sub_29D6C2364(0xD000000000000014, 0x800000029D963CC0, v169);
      *(v69 + 22) = 2082;
      sub_29D7DA320(&qword_2A17B5368, MEMORY[0x29EDB9D70], MEMORY[0x29EDB9D90]);
      v75 = sub_29D93AD38();
      v77 = v76;
      (v68[1])(v70, v63);
      v78 = sub_29D6C2364(v75, v77, v169);

      *(v69 + 24) = v78;
      _os_log_impl(&dword_29D677000, v64, v65, "[%{public}s.%{public}s]: Unable to determine row for index path %{public}s", v69, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v71, -1, -1);
      MEMORY[0x29ED6BE30](v69, -1, -1);
    }

    else
    {

      (v57[1])(v62, v63);
    }

    (*(v67 + 8))(v160, v150);
    return;
  }

  v79 = v60;
  if (!(v60 >> 6))
  {
    v87 = *(v1 + v59);
    v88 = v150;
    if (v87 == 4)
    {
      *(v1 + v59) = v60;
      v89 = v157;
      MEMORY[0x29ED64160](v60 + 1, 0);
      v90 = v158;
      v92 = v160;
      v91 = v161;
      (*(v158 + 16))(v161, v160, v88);
      (*(v90 + 56))(v91, 0, 1, v88);
      sub_29D7D8280(v79 | 0x80, v91, v169);
      sub_29D7DA48C(v91, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      Strong = swift_unknownObjectWeakLoadStrong();
      v94 = v149;
      if (!Strong)
      {
        (v57[1])(v89, v149);
        (*(v90 + 8))(v92, v88);
        goto LABEL_53;
      }

      v95 = v57;
      v96 = v170;
      v97 = v171;
      v98 = sub_29D693E2C(v169, v170);
      v167 = v96;
      v168 = *(v97 + 8);
      v99 = sub_29D693F78(v166);
      (*(*(v96 - 8) + 16))(v99, v98, v96);
      sub_29D935B68();
      sub_29D936978();
      (v95[1])(v89, v94);
      (*(v90 + 8))(v92, v88);
LABEL_50:
      sub_29D69417C(v166);
LABEL_53:
      sub_29D69417C(v169);
      return;
    }

    v114 = v60;
    v115 = v158;
    if (v87 != v60)
    {
      v131 = v57;
      v132 = v153;
      MEMORY[0x29ED64160](v87 + 1, 0);
      *(v1 + v59) = v79;
      v133 = v152;
      MEMORY[0x29ED64160](v114 + 1, 0);
      v134 = v161;
      (*(v115 + 16))(v161, v160, v88);
      (*(v115 + 56))(v134, 0, 1, v88);
      sub_29D7D8280(v79 | 0x80, v134, v169);
      sub_29D7DA48C(v134, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_29D935B18();
        v135 = swift_unknownObjectWeakLoadStrong();
        if (v135)
        {
          v136 = *(v135 + qword_2A17B3480);
          if (v136)
          {
            v137 = v136;
            [v137 setEnabled_];

            v132 = v153;
          }

          sub_29D936978();
        }

        sub_29D936978();
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {
        v144 = v131[1];
        v145 = v149;
        v144(v133, v149);
        v144(v132, v145);
        (*(v115 + 8))(v160, v88);
        goto LABEL_53;
      }

      v138 = v170;
      v139 = v171;
      v140 = sub_29D693E2C(v169, v170);
      v167 = v138;
      v168 = *(v139 + 8);
      v141 = sub_29D693F78(v166);
      (*(*(v138 - 8) + 16))(v141, v140, v138);
      sub_29D935B68();
      sub_29D936978();
      v142 = v131[1];
      v143 = v149;
      v142(v133, v149);
      v142(v132, v143);
      (*(v115 + 8))(v160, v88);
      goto LABEL_50;
    }

    *(v1 + v59) = 4;
    v116 = v151;
    MEMORY[0x29ED64160](v60 + 1, 0);
    v117 = swift_unknownObjectWeakLoadStrong();
    v118 = v149;
    if (v117)
    {
      sub_29D935B18();
      v119 = swift_unknownObjectWeakLoadStrong();
      if (v119)
      {
        v120 = *(v119 + qword_2A17B3480);
        if (v120)
        {
          v121 = v120;
          [v121 setEnabled_];
          sub_29D936978();
          sub_29D936978();

          goto LABEL_57;
        }

        sub_29D936978();
      }

      sub_29D936978();
    }

LABEL_57:
    (v57[1])(v116, v118);
    (*(v115 + 8))(v160, v88);
    return;
  }

  v80 = v150;
  if (v60 >> 6 == 1)
  {
    v164 = v1;
    v81 = (v158 + 16);
    v82 = (v158 + 56);
    if (v60)
    {
      v83 = v160;
      sub_29D935A38();
      sub_29D935A48();
      v84 = v156;
      (*v81)(v156, v83, v80);
      v85 = *v82;
      (*v82)(v84, 0, 1, v80);
      v86 = v154;
      sub_29D7D9B18(v84, v154);
      if (v47(v86, 1, v80) == 1)
      {
        sub_29D7DA48C(v86, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      }

      else
      {
        sub_29D935A38();
        (*(v158 + 8))(v86, v80);
      }

      v122 = v164;
      v123 = v165;
      v124 = v161;
      v125 = v159;
      sub_29D7D80A8(v169);
    }

    else
    {
      v113 = v160;
      sub_29D935A78();
      sub_29D935A88();
      v84 = v155;
      (*v81)(v155, v113, v80);
      v85 = *v82;
      (*v82)(v84, 0, 1, v80);
      sub_29D7D9B18(v84, v31);
      if (v47(v31, 1, v80) == 1)
      {
        sub_29D7DA48C(v31, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      }

      else
      {
        sub_29D935A78();
        (*(v158 + 8))(v31, v80);
      }

      v122 = v164;
      v123 = v165;
      v124 = v161;
      v125 = v159;
      sub_29D7D7ED4(v169);
    }

    sub_29D7DA48C(v84, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
    v126 = swift_unknownObjectWeakLoadStrong();
    if (v126)
    {
      v127 = v126;
      v128 = v170;
      v129 = v171;
      v130 = sub_29D693E2C(v169, v170);
      sub_29D8256BC(v123, v130, v127, v128, *(v129 + 8));
      sub_29D936978();
    }

    sub_29D69417C(v169);
    v147(v124, v160, v80);
    v85(v124, 0, 1, v80);
    swift_beginAccess();
    sub_29D7DA368(v124, v122 + v125);
    swift_endAccess();
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v100 = sub_29D937898();
    sub_29D69C6C0(v100, qword_2A1A2C008);
    v101 = sub_29D937878();
    v102 = sub_29D93A288();
    v103 = os_log_type_enabled(v101, v102);
    v104 = v158;
    if (v103)
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v169[0] = v106;
      *v105 = 136446722;
      v107 = sub_29D93AF08();
      v109 = sub_29D6C2364(v107, v108, v169);

      *(v105 + 4) = v109;
      *(v105 + 12) = 2082;
      *(v105 + 14) = sub_29D6C2364(0xD000000000000014, 0x800000029D963CC0, v169);
      *(v105 + 22) = 2082;
      LOBYTE(v166[0]) = v79 & 0x3F;
      v110 = sub_29D939DA8();
      v112 = sub_29D6C2364(v110, v111, v169);

      *(v105 + 24) = v112;
      _os_log_impl(&dword_29D677000, v101, v102, "[%{public}s.%{public}s]: Should not be able to tap on picker %{public}s", v105, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v106, -1, -1);
      MEMORY[0x29ED6BE30](v105, -1, -1);
    }

    (*(v104 + 8))(v160, v80);
  }
}

uint64_t sub_29D7D7ED4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  sub_29D9334A8();

  v6 = [v4 bundleForClass_];
  sub_29D9334A8();

  a2[3] = sub_29D935298();
  a2[4] = sub_29D7DA320(&qword_2A17B5360, MEMORY[0x29EDC1ED8], MEMORY[0x29EDC1ED0]);
  sub_29D693F78(a2);
  return sub_29D935288();
}

uint64_t sub_29D7D80A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  sub_29D9334A8();

  v6 = [v4 bundleForClass_];
  sub_29D9334A8();

  a2[3] = sub_29D935298();
  a2[4] = sub_29D7DA320(&qword_2A17B5360, MEMORY[0x29EDC1ED8], MEMORY[0x29EDC1ED0]);
  sub_29D693F78(a2);
  return sub_29D935288();
}

uint64_t sub_29D7D8280@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v97 = a2;
  v98 = a3;
  sub_29D7DA298(0, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v95 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v94 - v9;
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v15 = MEMORY[0x2A1C7C4A8](v13, v14);
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v19 = &v94 - v18;
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v23 = &v94 - v22;
  v25 = MEMORY[0x2A1C7C4A8](v21, v24);
  v27 = &v94 - v26;
  v29 = MEMORY[0x2A1C7C4A8](v25, v28);
  v31 = &v94 - v30;
  v33 = MEMORY[0x2A1C7C4A8](v29, v32);
  v35 = &v94 - v34;
  v37 = MEMORY[0x2A1C7C4A8](v33, v36);
  v39 = &v94 - v38;
  v41 = MEMORY[0x2A1C7C4A8](v37, v40);
  v43 = &v94 - v42;
  MEMORY[0x2A1C7C4A8](v41, v44);
  v48 = &v94 - v45;
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if (a1)
      {
        sub_29D7D9B18(v97, v27);
        v49 = sub_29D935AB8();
        v50 = *(v49 - 8);
        if ((*(v50 + 48))(v27, 1, v49) == 1)
        {
          sub_29D7DA48C(v27, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
        }

        else
        {
          sub_29D935A38();
          (*(v50 + 8))(v27, v49);
        }

        return sub_29D7D80A8(v98);
      }

      else
      {
        sub_29D7D9B18(v97, v31);
        v55 = sub_29D935AB8();
        v56 = *(v55 - 8);
        if ((*(v56 + 48))(v31, 1, v55) == 1)
        {
          sub_29D7DA48C(v31, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
        }

        else
        {
          sub_29D935A78();
          (*(v56 + 8))(v31, v55);
        }

        return sub_29D7D7ED4(v98);
      }
    }

    else
    {
      if ((a1 & 0x3Fu) > 1)
      {
        if ((a1 & 0x3F) == 2)
        {
          sub_29D7D9B18(v97, v19);
          v59 = sub_29D935AB8();
          v60 = *(v59 - 8);
          if ((*(v60 + 48))(v19, 1, v59) == 1)
          {
            sub_29D7DA48C(v19, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
          }

          else
          {
            sub_29D935AA8();
            (*(v60 + 8))(v19, v59);
          }

          sub_29D6945AC(v96 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_valueFormatter, v99);
          v89 = sub_29D9353C8();
          v90 = objc_allocWithZone(v89);
          v84 = sub_29D9353A8();
          sub_29D7DA320(&qword_2A17B5320, type metadata accessor for ConfirmDetailsModel, &unk_29D94A87C);
          swift_unknownObjectRetain();
          sub_29D9353B8();
          v85 = v98;
          v98[3] = v89;
          v86 = &unk_2A17B5328;
          v87 = MEMORY[0x29EDC1F98];
          v88 = MEMORY[0x29EDC1F90];
        }

        else
        {
          v71 = v47;
          sub_29D7D9B18(v97, v47);
          v72 = sub_29D935AB8();
          v73 = *(v72 - 8);
          if ((*(v73 + 48))(v71, 1, v72) == 1)
          {
            sub_29D7DA48C(v71, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
          }

          else
          {
            sub_29D935A98();
            (*(v73 + 8))(v71, v72);
          }

          sub_29D6945AC(v96 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_valueFormatter, v99);
          v92 = sub_29D935318();
          v93 = objc_allocWithZone(v92);
          v84 = sub_29D9352F8();
          sub_29D7DA320(&qword_2A17B5310, type metadata accessor for ConfirmDetailsModel, &unk_29D94A854);
          swift_unknownObjectRetain();
          sub_29D935308();
          v85 = v98;
          v98[3] = v92;
          v86 = &unk_2A17B5318;
          v87 = MEMORY[0x29EDC1F38];
          v88 = MEMORY[0x29EDC1F30];
        }
      }

      else if ((a1 & 0x3F) != 0)
      {
        v67 = v46;
        sub_29D7D9B18(v97, v46);
        v68 = sub_29D935AB8();
        v69 = *(v68 - 8);
        if ((*(v69 + 48))(v67, 1, v68) == 1)
        {
          sub_29D7DA48C(v67, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
          v70 = sub_29D933318();
          (*(*(v70 - 8) + 56))(v95, 1, 1, v70);
        }

        else
        {
          sub_29D935A58();
          (*(v69 + 8))(v67, v68);
        }

        v91 = sub_29D9354C8();
        swift_allocObject();
        v84 = sub_29D9354A8();
        sub_29D7DA320(&qword_2A17B5300, type metadata accessor for ConfirmDetailsModel, &unk_29D94A82C);
        swift_unknownObjectRetain();
        sub_29D9354B8();
        v85 = v98;
        v98[3] = v91;
        v86 = &unk_2A17B5308;
        v87 = MEMORY[0x29EDC1FE8];
        v88 = MEMORY[0x29EDC1FE0];
      }

      else
      {
        sub_29D7D9B18(v97, v23);
        v53 = sub_29D935AB8();
        v54 = *(v53 - 8);
        if ((*(v54 + 48))(v23, 1, v53) == 1)
        {
          sub_29D7DA48C(v23, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
        }

        else
        {
          sub_29D935A18();
          (*(v54 + 8))(v23, v53);
        }

        v82 = sub_29D935C68();
        v83 = objc_allocWithZone(v82);
        v84 = sub_29D935C48();
        sub_29D7DA320(&qword_2A17B5330, type metadata accessor for ConfirmDetailsModel, &unk_29D94A8A4);
        swift_unknownObjectRetain();
        sub_29D935C58();
        v85 = v98;
        v98[3] = v82;
        v86 = &unk_2A17B5338;
        v87 = MEMORY[0x29EDC22B8];
        v88 = MEMORY[0x29EDC22B0];
      }

      result = sub_29D7DA320(v86, v87, v88);
      v85[4] = result;
      *v85 = v84;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_29D7D9B18(v97, v39);
      v57 = sub_29D935AB8();
      v58 = *(v57 - 8);
      if ((*(v58 + 48))(v39, 1, v57) == 1)
      {
        sub_29D7DA48C(v39, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      }

      else
      {
        sub_29D935AA8();
        (*(v58 + 8))(v39, v57);
      }

      sub_29D6945AC(v96 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_valueFormatter, v99);
      v76 = sub_29D934EA8();
      v77 = v98;
      v98[3] = v76;
      v77[4] = sub_29D7DA320(&qword_2A17B5348, MEMORY[0x29EDC1C78], MEMORY[0x29EDC1C70]);
      sub_29D693F78(v77);
      return sub_29D934E98();
    }

    else
    {
      sub_29D7D9B18(v97, v35);
      v65 = sub_29D935AB8();
      v66 = *(v65 - 8);
      if ((*(v66 + 48))(v35, 1, v65) == 1)
      {
        sub_29D7DA48C(v35, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      }

      else
      {
        sub_29D935A98();
        (*(v66 + 8))(v35, v65);
      }

      sub_29D6945AC(v96 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_valueFormatter, v99);
      v80 = sub_29D934D78();
      v81 = v98;
      v98[3] = v80;
      v81[4] = sub_29D7DA320(&qword_2A17B5340, MEMORY[0x29EDC1C40], MEMORY[0x29EDC1C38]);
      sub_29D693F78(v81);
      return sub_29D934D68();
    }
  }

  else if (a1)
  {
    sub_29D7D9B18(v97, v43);
    v62 = sub_29D935AB8();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v43, 1, v62) == 1)
    {
      sub_29D7DA48C(v43, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      v64 = sub_29D933318();
      (*(*(v64 - 8) + 56))(v10, 1, 1, v64);
    }

    else
    {
      sub_29D935A58();
      (*(v63 + 8))(v43, v62);
    }

    v78 = sub_29D935228();
    v79 = v98;
    v98[3] = v78;
    v79[4] = sub_29D7DA320(&qword_2A17B5350, MEMORY[0x29EDC1EA8], MEMORY[0x29EDC1EA0]);
    sub_29D693F78(v79);
    return sub_29D935218();
  }

  else
  {
    sub_29D7D9B18(v97, &v94 - v45);
    v51 = sub_29D935AB8();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v48, 1, v51) == 1)
    {
      sub_29D7DA48C(v48, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
    }

    else
    {
      sub_29D935A18();
      (*(v52 + 8))(v48, v51);
    }

    v74 = sub_29D9353E8();
    v75 = v98;
    v98[3] = v74;
    v75[4] = sub_29D7DA320(&qword_2A17B5358, MEMORY[0x29EDC1FA8], MEMORY[0x29EDC1FA0]);
    sub_29D693F78(v75);
    return sub_29D9353D8();
  }

  return result;
}

uint64_t sub_29D7D91C4()
{
  sub_29D68B77C(v0 + 16);
  sub_29D7DA48C(v0 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_valueFormatter));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfirmDetailsModel(uint64_t a1)
{
  result = qword_2A17B52D8;
  if (!qword_2A17B52D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7D92B0(uint64_t a1)
{
  sub_29D7DA298(319, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for ConfirmDetailsModel.Row(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ConfirmDetailsModel.Row(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}