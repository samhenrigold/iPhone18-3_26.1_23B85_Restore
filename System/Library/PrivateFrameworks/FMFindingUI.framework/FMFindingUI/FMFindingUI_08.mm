uint64_t sub_24A5BCC10(uint64_t a1)
{
  v1 = *(a1 + 99);
  if (v1 <= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = *(a1 + 99);
  }

  v3 = v2 - 7;
  if (v1 >= 4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

double sub_24A5BCC30(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0x8000000;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

__n128 sub_24A5BCC68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A5BCC7C(uint64_t a1, int a2)
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

uint64_t sub_24A5BCC9C(uint64_t result, int a2, int a3)
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

unint64_t sub_24A5BCCE4()
{
  result = qword_27EF514F8;
  if (!qword_27EF514F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF514F8);
  }

  return result;
}

unint64_t sub_24A5BCD3C()
{
  result = qword_27EF51500;
  if (!qword_27EF51500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51500);
  }

  return result;
}

unint64_t sub_24A5BCD94()
{
  result = qword_27EF51508;
  if (!qword_27EF51508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51508);
  }

  return result;
}

uint64_t sub_24A5BCDE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463614665646F6ELL && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_24A62F634() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74636146676E6972 && a2 == 0xEA0000000000726FLL || (sub_24A62F634() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6361704F676E6972 && a2 == 0xEB00000000797469 || (sub_24A62F634() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F46636974706168 && a2 == 0xEB00000000656372 || (sub_24A62F634() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72655065736C7570 && a2 == 0xEB00000000646F69)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A62F634();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24A5BCFB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A508FA4(&qword_27EF51510, &qword_24A63A468);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  sub_24A50A204(a1, a1[3]);
  sub_24A5BD240();
  sub_24A62F764();
  if (v2)
  {
    return sub_24A508C54(a1);
  }

  HIBYTE(v17) = 0;
  sub_24A5B0FDC();
  sub_24A62F544();
  v9 = v18;
  HIBYTE(v17) = 1;
  sub_24A62F544();
  v10 = v18;
  HIBYTE(v17) = 2;
  sub_24A62F544();
  v11 = v18;
  LOBYTE(v18) = 3;
  sub_24A62F524();
  v13 = v12;
  LOBYTE(v18) = 4;
  sub_24A62F514();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  result = sub_24A508C54(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  return result;
}

unint64_t sub_24A5BD240()
{
  result = qword_27EF51518;
  if (!qword_27EF51518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51518);
  }

  return result;
}

unint64_t sub_24A5BD2A8()
{
  result = qword_27EF51528;
  if (!qword_27EF51528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51528);
  }

  return result;
}

unint64_t sub_24A5BD300()
{
  result = qword_27EF51530;
  if (!qword_27EF51530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51530);
  }

  return result;
}

unint64_t sub_24A5BD358()
{
  result = qword_27EF51538;
  if (!qword_27EF51538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51538);
  }

  return result;
}

uint64_t sub_24A5BD3AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  type metadata accessor for PFAnimationCoordinator(0);
  sub_24A5BE744(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator, &unk_24A635090);
  sub_24A62E444();
  swift_getKeyPath();
  sub_24A62E464();

  v4 = v36;
  v21 = v37;
  type metadata accessor for VFXManager.Values(0);
  sub_24A5BE744(&qword_27EF50A08, type metadata accessor for VFXManager.Values, &unk_24A63710C);
  sub_24A62E444();
  swift_getKeyPath();
  sub_24A62E464();

  v19 = *&v46[8];
  v20 = *v46;
  v5 = *&v46[16];
  sub_24A62E444();
  swift_getKeyPath();
  sub_24A62E464();

  v6 = v30;
  v7 = v31;
  sub_24A62E444();
  swift_getKeyPath();
  sub_24A62E464();

  v22 = v41;
  v23 = v40;
  v8 = *(&v41 + 1);
  v18 = sub_24A62E854();
  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v9 = *v46;
    sub_24A62EA64();
    v11 = v10;
    v13 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v14 = *v46;
    v15 = sub_24A62E854();
    v30 = v36;
    LOBYTE(v31) = v37;
    *(&v31 + 1) = v55[0];
    DWORD1(v31) = *(v55 + 3);
    *(&v31 + 1) = *v46;
    v32 = *&v46[8];
    v33 = v6;
    *&v34 = v7;
    *(&v34 + 1) = v40;
    v35 = v41;
    v25 = v34;
    v26 = v41;
    v24 = *&v46[8];
    *&v36 = v18;
    WORD4(v36) = 256;
    *&v37 = *v46;
    *(&v37 + 1) = *v46;
    *&v38 = v11;
    *(&v38 + 1) = v13;
    v39 = *v46;
    v28 = v37;
    v29 = v38;
    v27 = v36;
    v16 = v31;
    *a2 = v30;
    *(a2 + 16) = v16;
    *(a2 + 64) = v25;
    *(a2 + 80) = v26;
    *(a2 + 32) = v24;
    *(a2 + 48) = v6;
    *(a2 + 112) = v28;
    *(a2 + 128) = v29;
    *(a2 + 96) = v27;
    *(a2 + 144) = v14;
    *(a2 + 152) = v15;
    *(a2 + 160) = 256;
    sub_24A5BE7B4(&v30, v46);
    sub_24A50D63C(&v36, v46, &qword_27EF51568, qword_24A63A770);
    v40 = v18;
    LOWORD(v41) = 256;
    *(&v41 + 1) = v9;
    v42 = v9;
    v43 = v11;
    v44 = v13;
    v45 = v14;
    sub_24A50D6A4(&v40, &qword_27EF51568, qword_24A63A770);
    *v46 = v4;
    v46[16] = v21;
    *&v46[17] = v55[0];
    *&v46[20] = *(v55 + 3);
    v47 = v20;
    v48 = v19;
    v49 = v5;
    v50 = v6;
    v51 = v7;
    v52 = v23;
    v53 = v22;
    v54 = v8;
    return sub_24A5BE7EC(v46);
  }

  else
  {
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

__n128 sub_24A5BD848@<Q0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v25[0] = *v2;
  v25[1] = v4;
  v25[2] = v2[2];
  v5 = sub_24A62E9C4();
  v7 = v6;
  sub_24A5BD3AC(v25, &v14);
  v34 = v22;
  v35 = v23;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v37[8] = v22;
  v37[9] = v23;
  v37[4] = v18;
  v37[5] = v19;
  v37[6] = v20;
  v37[7] = v21;
  v37[0] = v14;
  v37[1] = v15;
  v36 = v24;
  v38 = v24;
  v37[2] = v16;
  v37[3] = v17;
  sub_24A50D63C(&v26, &v13, &qword_27EF51560, &qword_24A63A638);
  sub_24A50D6A4(v37, &qword_27EF51560, &qword_24A63A638);
  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = v35;
  *(a2 + 144) = v34;
  *(a2 + 160) = v8;
  *(a2 + 176) = v36;
  v9 = v31;
  *(a2 + 80) = v30;
  *(a2 + 96) = v9;
  v10 = v33;
  *(a2 + 112) = v32;
  *(a2 + 128) = v10;
  v11 = v27;
  *(a2 + 16) = v26;
  *(a2 + 32) = v11;
  result = v29;
  *(a2 + 48) = v28;
  *(a2 + 64) = result;
  return result;
}

id sub_24A5BD978()
{
  v13 = *(v0 + 24);
  v14 = *(v0 + 5);
  v1 = sub_24A508FA4(&qword_27EF51588, &unk_24A63A8D0);
  MEMORY[0x24C21A2B0](&v12);
  v2 = v12;
  v13 = *(v0 + 72);
  v14 = *(v0 + 11);
  MEMORY[0x24C21A2B0](&v12, v1);
  v3 = v12;
  v13 = v0[3];
  v14 = *(v0 + 8);
  v4 = sub_24A508FA4(&qword_27EF51590, &qword_24A63A8E0);
  MEMORY[0x24C21A2B0](&v12, v4);
  v5 = v12;
  v13 = *v0;
  LOBYTE(v14) = *(v0 + 16);
  v6 = sub_24A508FA4(&qword_27EF4FCB8, &qword_24A635BE0);
  MEMORY[0x24C21A2B0](&v12, v6);
  v7 = v12;
  v8 = type metadata accessor for PulseCircleView();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseDuration] = v2;
  *&v9[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseFrequency] = v3;
  *&v9[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseScale] = v5;
  v9[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_isPulseActive] = v7;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

double sub_24A5BDAE0(uint64_t a1)
{
  v10 = *(v1 + 72);
  v11 = *(v1 + 11);
  v3 = sub_24A508FA4(&qword_27EF51588, &unk_24A63A8D0);
  MEMORY[0x24C21A2B0](&v9);
  *(a1 + OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseFrequency) = v9;
  v10 = *v1;
  LOBYTE(v11) = *(v1 + 16);
  v4 = sub_24A508FA4(&qword_27EF4FCB8, &qword_24A635BE0);
  MEMORY[0x24C21A2B0](&v9, v4);
  v5 = LOBYTE(v9);
  v6 = *(a1 + OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_isPulseActive);
  *(a1 + OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_isPulseActive) = LOBYTE(v9);
  if (v5 != v6)
  {
    sub_24A5BDDF0();
  }

  v10 = *(v1 + 24);
  v11 = *(v1 + 5);
  MEMORY[0x24C21A2B0](&v9, v3);
  *(a1 + OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseDuration) = v9;
  v10 = v1[3];
  v11 = *(v1 + 8);
  v7 = sub_24A508FA4(&qword_27EF51590, &qword_24A63A8E0);
  MEMORY[0x24C21A2B0](&v9, v7);
  result = v9;
  *(a1 + OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseScale) = v9;
  return result;
}

uint64_t sub_24A5BDCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A5BE984();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24A5BDD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A5BE984();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24A5BDD6C(uint64_t a1)
{
  sub_24A5BE984();
  sub_24A62E5D4();
  __break(1u);
}

void sub_24A5BDDF0()
{
  v1 = v0;
  v2 = sub_24A62EA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A62EAF4();
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v13).n128_u64[0];
  if (v1[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_isPulseActive] == 1)
  {
    v18 = *&v1[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseDuration];
    v19 = *&v1[OBJC_IVAR____TtC11FMFindingUIP33_D6AB94E07425295D98119D392D5C15B115PulseCircleView_pulseScale];
    v53 = v5;
    v49 = &v47 - v15;
    v50 = v14;
    v55 = v16;
    [v1 bounds];
    v54 = v3;
    v24 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v51 = v2;
    v25 = v24;
    v26 = [objc_opt_self() whiteColor];
    v52 = v6;
    v27 = v26;
    v28 = [v26 colorWithAlphaComponent_];

    [v25 setBackgroundColor_];
    v29 = [v25 layer];
    [v1 bounds];
    [v29 setCornerRadius_];

    [v1 addSubview_];
    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = v19;
    v60 = sub_24A5BE5C4;
    v61 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v48 = v7;
    v58 = sub_24A5A8458;
    v59 = &unk_285DA83D0;
    v32 = _Block_copy(&aBlock);
    v33 = v25;

    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    v60 = sub_24A5BE620;
    v61 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_24A5A1470;
    v59 = &unk_285DA8420;
    v35 = _Block_copy(&aBlock);
    v36 = v33;

    [v30 animateWithDuration:0x20000 delay:v32 options:v35 animations:v18 completion:0.0];

    _Block_release(v35);
    _Block_release(v32);
    sub_24A545E8C();
    v37 = sub_24A62F014();
    sub_24A62EAE4();
    v38 = v49;
    sub_24A62EB54();
    v39 = *(v55 + 8);
    v55 += 8;
    v47 = v39;
    v40 = v12;
    v41 = v50;
    v39(v40, v50);
    v42 = swift_allocObject();
    *(v42 + 16) = v1;
    v60 = sub_24A5BE630;
    v61 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_24A5A8458;
    v59 = &unk_285DA8470;
    v43 = _Block_copy(&aBlock);
    v44 = v1;

    sub_24A62EAB4();
    aBlock = MEMORY[0x277D84F90];
    sub_24A5BE744(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
    v45 = v53;
    v46 = v51;
    sub_24A62F254();
    MEMORY[0x24C21A910](v38, v9, v45, v43);
    _Block_release(v43);

    (*(v54 + 8))(v45, v46);
    (*(v48 + 8))(v9, v52);
    v47(v38, v41);
  }
}

id sub_24A5BE494(void *a1, CGFloat a2)
{
  CGAffineTransformMakeScale(&v4, a2, a2);
  [a1 setTransform_];
  return [a1 setAlpha_];
}

id sub_24A5BE530()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PulseCircleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24A5BE58C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_24A5BE5D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24A5BE5E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5BE654(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_24A5BE6B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24A5BE744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_24A5BE81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_24A5BE838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_24A5BE880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A5BE930()
{
  result = qword_27EF51580;
  if (!qword_27EF51580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51580);
  }

  return result;
}

unint64_t sub_24A5BE984()
{
  result = qword_27EF51598;
  if (!qword_27EF51598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51598);
  }

  return result;
}

void sub_24A5BE9EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24A5BEA54(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = a2[1];
  if (*a2)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_24A5D1190;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_24A5173CC(v6, v7);
  a3(v4, v5, v9, v8);

  return sub_24A50D354(v9, v8);
}

uint64_t sub_24A5BEB18(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void *))
{
  v12 = a1;
  v13 = a2 & 1;
  if (a3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v9 = sub_24A5D1164;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v11[0] = v9;
  v11[1] = v8;
  sub_24A5173CC(a3, a4);
  a5(&v12, v11);

  return sub_24A50D354(v9, v8);
}

uint64_t sub_24A5BEC08@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_24A5BEC44(char a1, void (*a2)(uint64_t *__return_ptr, char *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

void sub_24A5BEC98(uint64_t a1)
{
  v3 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration) = a1;

  v11 = sub_24A5BC4E8(v10, v9);

  if (v11)
  {
  }

  else
  {
    v12 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    sub_24A5D0DA8(v1 + v12, v8, type metadata accessor for FMFindingViewState);
    sub_24A5D0DA8(v1 + v12, v5, type metadata accessor for FMFindingViewState);
    (*((*MEMORY[0x277D85000] & *v1) + 0x4B8))(v8, v5);

    sub_24A5D0E10(v5, type metadata accessor for FMFindingViewState);
    sub_24A5D0E10(v8, type metadata accessor for FMFindingViewState);
  }
}

uint64_t sub_24A5BEE50(_BYTE *a1)
{
  v3 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A5D0DA8(v1 + v9, v8, type metadata accessor for FMFindingViewState);
  swift_beginAccess();
  sub_24A5D0FCC(a1, v1 + v9);
  swift_endAccess();
  sub_24A5D0DA8(v1 + v9, v5, type metadata accessor for FMFindingViewState);
  v10 = sub_24A629198(v5, v8);
  sub_24A5D0E10(v5, type metadata accessor for FMFindingViewState);
  if (!v10)
  {
    sub_24A5D0DA8(v1 + v9, v5, type metadata accessor for FMFindingViewState);
    (*((*MEMORY[0x277D85000] & *v1) + 0x4B8))(v8, v5);
    sub_24A5D0E10(a1, type metadata accessor for FMFindingViewState);
    a1 = v5;
  }

  sub_24A5D0E10(a1, type metadata accessor for FMFindingViewState);
  return sub_24A5D0E10(v8, type metadata accessor for FMFindingViewState);
}

char *FMFindingViewController.__allocating_init(session:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24A5CF524(a1);

  return v4;
}

char *FMFindingViewController.init(session:)(uint64_t a1)
{
  v1 = sub_24A5CF524(a1);

  return v1;
}

id FMFindingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FMFindingViewController.__deallocating_deinit()
{
  v1 = v0;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C118);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "FMFindingViewController deinit", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v6 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView];
  sub_24A5F571C();
  sub_24A5F5354();

  v8.receiver = v1;
  v8.super_class = type metadata accessor for FMFindingViewController(0);
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_24A5BF584()
{
  v1 = sub_24A62EA94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A62EAD4();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
  swift_beginAccess();
  v9 = *(v8 + 3);
  v10 = *(v8 + 4);
  sub_24A528F98(v8, v9);
  (*(v10 + 152))(0, 0, v9, v10);
  swift_endAccess();
  sub_24A50A204(v8, *(v8 + 3));
  sub_24A581E4C();
  sub_24A50A204(v8, *(v8 + 3));
  sub_24A57B8D4();
  v11 = *(*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v12 = (v11 >> 13) & 3;
  if (!v12)
  {
    if (v11)
    {
      return;
    }

    goto LABEL_6;
  }

  v13 = v11 & 0x9E00;
  if (v12 == 1 || v13 != 33280)
  {
LABEL_6:
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v15 = sub_24A62F014();
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    aBlock[4] = sub_24A5D0F70;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA8DE8;
    v17 = _Block_copy(aBlock);
    v18 = v0;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A5D0C64(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v7, v4, v17);
    _Block_release(v17);

    (*(v2 + 8))(v4, v1);
    (*(v5 + 8))(v7, v20);
  }
}

double sub_24A5BF95C()
{
  v1 = (v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
  swift_beginAccess();
  sub_24A50A204(v1, v1[3]);
  sub_24A57A50C();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];
  sub_24A528F98(v1, v3);
  v5 = *(v4 + 152);

  v5(sub_24A5D1CD4, v2, v3, v4);
  swift_endAccess();

  return result;
}

void sub_24A5BFAA8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FMFindingViewController(0);
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  sub_24A5C0C24();
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  [v1 addSubview_];

  sub_24A5C2420();
  v3 = v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType];
  if (v3 < 2)
  {
    sub_24A5C26C0();
    sub_24A61FCA4();
    goto LABEL_7;
  }

  if (v3 == 2)
  {
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview_];

      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_7:
  sub_24A5C28D8();
  if (v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_reducedMotion] == 1)
  {
    sub_24A5C4464();
  }
}

uint64_t sub_24A5BFBF8(char a1)
{
  v2 = v1;
  v4 = sub_24A62EA94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMFindingViewController(0);
  v19.receiver = v2;
  v19.super_class = v12;
  objc_msgSendSuper2(&v19, sel_viewWillAppear_, a1 & 1);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v13 = sub_24A62F014();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  aBlock[4] = sub_24A5D04C0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA85D0;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_24A62EAB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A5D0C64(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v11, v7, v15);
  _Block_release(v15);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

id sub_24A5BFEE0(void *a1)
{
  v2 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v22 - v7;
  result = [a1 view];
  if (result)
  {
    v10 = result;
    [result layoutSubviews];

    v11 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
    sub_24A5F60A0();

    sub_24A60FBF0();
    v12 = (a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
    swift_beginAccess();
    sub_24A50A204(v12, v12[3]);
    sub_24A57A50C();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    v14 = v12[3];
    v15 = v12[4];
    sub_24A528F98(v12, v14);
    v16 = *(v15 + 152);

    v16(sub_24A5D1AE0, v13, v14, v15);
    swift_endAccess();

    v17 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    sub_24A5D0DA8(a1 + v17, v8, type metadata accessor for FMFindingViewState);
    sub_24A5D0DA8(a1 + v17, v4, type metadata accessor for FMFindingViewState);
    (*((*MEMORY[0x277D85000] & *a1) + 0x4B8))(v8, v4);
    sub_24A5D0E10(v4, type metadata accessor for FMFindingViewState);
    sub_24A5D0E10(v8, type metadata accessor for FMFindingViewState);
    sub_24A598770();
    v18 = a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willAppearHandler;
    result = swift_beginAccess();
    v19 = *v18;
    if (*v18)
    {
      v20 = *(v18 + 1);

      v19(v21);
      return sub_24A50D354(v19, v20);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24A5C01CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_24A5CA748(a1, a2);
  }
}

void sub_24A5C0290(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FMFindingViewController(0);
  objc_msgSendSuper2(&v7, sel_viewDidAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView];
  v4 = *&v3[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_24A5D6718(0, 1.0);
  }
}

id sub_24A5C03C8(char a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willDisappearHandler];
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);

    v5(v7);
    sub_24A50D354(v5, v6);
  }

  v8 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
  swift_beginAccess();
  v9 = *(v8 + 3);
  v10 = *(v8 + 4);
  sub_24A528F98(v8, v9);
  (*(v10 + 152))(0, 0, v9, v10);
  swift_endAccess();
  sub_24A50A204(v8, *(v8 + 3));
  sub_24A581E4C();
  sub_24A50A204(v8, *(v8 + 3));
  sub_24A57B8D4();
  sub_24A590DEC(0, 1);
  v12.receiver = v2;
  v12.super_class = type metadata accessor for FMFindingViewController(0);
  return objc_msgSendSuper2(&v12, sel_viewWillDisappear_, a1 & 1);
}

id sub_24A5C0558(char a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView];
  sub_24A5F571C();
  sub_24A5F5354();

  sub_24A60FDA0();
  v5 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pulseTimer;
  [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pulseTimer] invalidate];
  v6 = *&v2[v5];
  *&v2[v5] = 0;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for FMFindingViewController(0);
  return objc_msgSendSuper2(&v8, sel_viewDidDisappear_, a1 & 1);
}

void sub_24A5C06C0(void *a1, double a2, double a3)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A62E314();
  sub_24A506EB8(v7, qword_27EF5C118);
  v8 = v3;
  v9 = sub_24A62E2F4();
  v10 = sub_24A62EF64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136315138;
    sub_24A5CEC7C();
    type metadata accessor for UIInterfaceOrientation(0);
    v13 = sub_24A62EC44();
    v15 = sub_24A509BA8(v13, v14, &aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24A503000, v9, v10, "FMFindingViewController: Interface orientation changed to: %s", v11, 0xCu);
    sub_24A508C54(v12);
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  v16 = sub_24A5CEC7C();
  v17 = type metadata accessor for FMFindingViewController(0);
  v31.receiver = v8;
  v31.super_class = v17;
  objc_msgSendSuper2(&v31, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if ((~[v8 supportedInterfaceOrientations] & 0x18) != 0)
  {
    v18 = v16 == 1;
    [*&v8[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView] setHidden_];
    [*&v8[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView] setHidden_];
    [*&v8[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer] setHidden_];
    [*&v8[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView] setHidden_];
    v19 = swift_allocObject();
    *(v19 + 16) = v8;
    *(v19 + 24) = v16 == 1;
    v29 = sub_24A5D0518;
    v30 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_24A58F36C;
    v28 = &unk_285DA8620;
    v20 = _Block_copy(&aBlock);
    v21 = v8;

    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v18;
    v29 = sub_24A5D0524;
    v30 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_24A58F36C;
    v28 = &unk_285DA8670;
    v23 = _Block_copy(&aBlock);
    v24 = v21;

    [a1 animateAlongsideTransition:v20 completion:v23];
    _Block_release(v23);
    _Block_release(v20);
  }

  else
  {
    [*&v8[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView] setHidden_];
  }
}

id sub_24A5C0A54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (a3)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [*(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView) setAlpha_];
  [*(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView) setAlpha_];
  [*(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer) setAlpha_];
  v6 = *(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView);

  return [v6 setAlpha_];
}

id sub_24A5C0AFC(uint64_t a1, uint64_t a2, char a3)
{
  [*(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView) setHidden_];
  [*(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView) setHidden_];
  [*(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer) setHidden_];
  v5 = *(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView);

  return [v5 setHidden_];
}

void sub_24A5C0C24()
{
  v1 = v0;
  v2 = type metadata accessor for FMFindingSessionState(0);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  [v7 setBackgroundColor_];

  v10 = [v1 navigationController];
  if (v10)
  {
    v11 = v10;
    sub_24A51D5B0();
  }

  v12 = [v1 view];
  if (!v12)
  {
    goto LABEL_51;
  }

  v13 = v12;
  [v12 addSubview_];

  v14 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView];
  v15 = [v8 blackColor];
  [v14 setBackgroundColor_];

  [v14 setUserInteractionEnabled_];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v17 = v16;
  [v16 addSubview_];

  sub_24A5C2200();
  v18 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_titleLabel;
  v19 = &v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style];
  [*&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_titleLabel] setFont_];
  [*&v1[v18] setAdjustsFontForContentSizeCategory_];
  [*&v1[v18] setNumberOfLines_];
  [*&v1[v18] setTextAlignment_];
  v20 = *&v1[v18];
  v21 = [v8 whiteColor];
  v22 = [v21 colorWithAlphaComponent_];

  [v20 setTextColor_];
  v23 = *&v1[v18];
  sub_24A5D2200(0x454C5449545F3152, 0xE800000000000000);
  v24 = sub_24A62EBE4();

  [v23 setText_];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v26 = v25;
  [v25 addSubview_];

  v27 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel;
  [*&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel] setFont_];
  [*&v1[v27] setAdjustsFontForContentSizeCategory_];
  [*&v1[v27] setNumberOfLines_];
  [*&v1[v27] setTextAlignment_];
  v28 = *&v1[v27];
  v29 = [v8 whiteColor];
  [v28 setTextColor_];

  v30 = *&v1[v27];
  v31 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session];
  v32 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  v197 = v31;
  sub_24A5D0DA8(&v31[v32], v5, type metadata accessor for FMFindingSessionState);
  v33 = v30;
  sub_24A5ABC04();
  sub_24A5D0E10(v5, type metadata accessor for FMFindingSessionState);
  v34 = sub_24A62EBE4();

  [v33 setText_];

  v35 = [v1 view];
  if (!v35)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v36 = v35;
  [v35 addSubview_];

  v37 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton;
  v38 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton];
  v39 = sub_24A5D2200(0xD000000000000016, 0x800000024A641CC0);
  v40 = &v38[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend];
  *v40 = v39;
  v40[1] = v41;

  v42 = *&v38[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label];

  v43 = v42;
  v44 = sub_24A62EBE4();

  [v43 setText_];

  v45 = *&v1[v37];
  v46 = [v8 whiteColor];
  v47 = [v8 whiteColor];
  v48 = [v47 colorWithAlphaComponent_];

  sub_24A62A8A4(0x6B72616D78, 0xE500000000000000, v46, v48);
  v49 = [v1 view];
  if (!v49)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v50 = v49;
  v195 = v8;
  [v49 addSubview_];

  v51 = *&v1[v37];
  v196 = type metadata accessor for FMFindingViewController(0);
  v202 = v196;
  v201[0] = v1;
  v52 = v51;
  v198 = v1;
  v53 = sub_24A5D2200(0xD000000000000016, 0x800000024A641CC0);
  v55 = v54;
  v56 = [v52 layer];
  [v56 removeAllAnimations];

  v57 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  v58 = [*&v52[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
  [v58 removeAllAnimations];

  v59 = [*&v52[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
  [v59 removeAllAnimations];

  v60 = *&v52[v57];
  sub_24A50D63C(v201, v199, &unk_27EF50780, &qword_24A638470);
  v61 = v200;
  if (v200)
  {
    v62 = sub_24A50A204(v199, v200);
    v63 = *(v61 - 8);
    v64 = MEMORY[0x28223BE20](v62);
    v66 = &v189 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v63 + 16))(v66, v64);
    v67 = v60;
    v68 = sub_24A62F624();
    (*(v63 + 8))(v66, v61);
    sub_24A508C54(v199);
  }

  else
  {
    v69 = v60;
    v68 = 0;
  }

  [v60 addTarget:v68 action:sel_closeActionWithSender_ forControlEvents:64];

  swift_unknownObjectRelease();

  v70 = sub_24A62EBE4();
  [v52 setAccessibilityLabel_];

  sub_24A50D7EC(0, &qword_27EF50940, 0x277D75088);
  sub_24A50D63C(v201, v199, &unk_27EF50780, &qword_24A638470);
  v71 = sub_24A5921B4(v53, v55, v199, sel_closeActionWithSender_);
  v72 = sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v73 = swift_allocObject();
  v191 = xmmword_24A6339F0;
  *(v73 + 16) = xmmword_24A6339F0;
  *(v73 + 32) = v71;
  v74 = v71;
  v75 = sub_24A62ED54();

  [v52 setAccessibilityCustomActions_];

  sub_24A50D6A4(v201, &unk_27EF50780, &qword_24A638470);
  v76 = *&v197[OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType];
  v77 = (v76 >> 13) & 3;
  v194 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType;
  v192 = v72;
  if (v77)
  {
    v78 = v77 == 1;
    v79 = v198;
    if (v78)
    {
      v76 = (v76 >> 8) & 0xFFFFFF9F;
    }

    else if ((v76 & 0x8000) != 0)
    {
      v76 = (v76 >> 8) & 0x1F;
    }

    else
    {
      v76 = v76;
    }
  }

  else
  {
    v76 >>= 8;
    v79 = v198;
  }

  v80 = *&v79[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton];
  v193 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton;
  if (v76 == 2)
  {
    v202 = v196;
    v201[0] = v79;
    v189 = sel_openMessagesActionWithSender_;
    v81 = v79;
    v82 = v80;
    v190 = "R1_PLAY_SOUND_BUTTON_LEGEND";
    v83 = sub_24A5D22F4(0xD000000000000018, 0x800000024A641D00);
    v85 = v84;
    v86 = [v82 layer];
    [v86 removeAllAnimations];

    v87 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
    v88 = [*&v82[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
    [v88 removeAllAnimations];

    v89 = [*&v82[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
    [v89 removeAllAnimations];

    v90 = *&v82[v87];
    sub_24A50D63C(v201, v199, &unk_27EF50780, &qword_24A638470);
    v91 = v200;
    if (v200)
    {
      v92 = sub_24A50A204(v199, v200);
      v93 = *(v91 - 8);
      v94 = MEMORY[0x28223BE20](v92);
      v96 = &v189 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v93 + 16))(v96, v94);
      v97 = v90;
      v98 = sub_24A62F624();
      (*(v93 + 8))(v96, v91);
      sub_24A508C54(v199);
    }

    else
    {
      v117 = v90;
      v98 = 0;
    }

    v118 = &property descriptor for FMFindingViewController.dismissedHandler;
    v119 = v189;
    [v90 addTarget:v98 action:v189 forControlEvents:64];

    swift_unknownObjectRelease();

    v120 = sub_24A62EBE4();
    [v82 setAccessibilityLabel_];

    sub_24A50D63C(v201, v199, &unk_27EF50780, &qword_24A638470);
    v121 = sub_24A5921B4(v83, v85, v199, v119);
    v122 = swift_allocObject();
    *(v122 + 16) = v191;
    *(v122 + 32) = v121;
    v123 = v121;
    v124 = sub_24A62ED54();

    [v82 setAccessibilityCustomActions_];

    sub_24A50D6A4(v201, &unk_27EF50780, &qword_24A638470);
    v125 = v198;
    v126 = v193;
    v127 = *&v198[v193];
    v128 = sub_24A5D22F4(0xD000000000000018, v190 | 0x8000000000000000);
    v129 = &v127[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend];
    *v129 = v128;
    v129[1] = v130;

    v131 = *&v127[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label];

    v132 = v131;
    v133 = sub_24A62EBE4();

    [v132 setText_];

    v134 = *&v125[v126];
    v135 = v195;
    v136 = [v195 whiteColor];
    v137 = [v135 whiteColor];
    v138 = [v137 colorWithAlphaComponent_];

    v139 = 0x2E6567617373656DLL;
    v140 = 0xEC0000006C6C6966;
  }

  else
  {
    v202 = v196;
    v201[0] = v79;
    v189 = sel_playSoundActionWithSender_;
    v99 = v79;
    v100 = v80;
    v190 = "R1_CLOSE_BUTTON_LEGEND";
    v101 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A641CE0);
    v103 = v102;
    v104 = [v100 layer];
    [v104 removeAllAnimations];

    v105 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
    v106 = [*&v100[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
    [v106 removeAllAnimations];

    v107 = [*&v100[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
    [v107 removeAllAnimations];

    v108 = *&v100[v105];
    sub_24A50D63C(v201, v199, &unk_27EF50780, &qword_24A638470);
    v109 = v200;
    if (v200)
    {
      v110 = sub_24A50A204(v199, v200);
      v111 = *(v109 - 8);
      v112 = MEMORY[0x28223BE20](v110);
      v114 = &v189 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v111 + 16))(v114, v112);
      v115 = v108;
      v116 = sub_24A62F624();
      (*(v111 + 8))(v114, v109);
      sub_24A508C54(v199);
    }

    else
    {
      v141 = v108;
      v116 = 0;
    }

    v118 = &property descriptor for FMFindingViewController.dismissedHandler;
    v142 = v189;
    [v108 addTarget:v116 action:v189 forControlEvents:64];

    swift_unknownObjectRelease();

    v143 = sub_24A62EBE4();
    [v100 setAccessibilityLabel_];

    sub_24A50D63C(v201, v199, &unk_27EF50780, &qword_24A638470);
    v144 = sub_24A5921B4(v101, v103, v199, v142);
    v145 = swift_allocObject();
    *(v145 + 16) = v191;
    *(v145 + 32) = v144;
    v146 = v144;
    v147 = sub_24A62ED54();

    [v100 setAccessibilityCustomActions_];

    sub_24A50D6A4(v201, &unk_27EF50780, &qword_24A638470);
    v125 = v198;
    v148 = v193;
    v149 = *&v198[v193];
    v150 = sub_24A5D2200(0xD00000000000001BLL, v190 | 0x8000000000000000);
    v151 = &v149[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend];
    *v151 = v150;
    v151[1] = v152;

    v153 = *&v149[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label];

    v154 = v153;
    v155 = sub_24A62EBE4();

    [v154 setText_];

    v134 = *&v125[v148];
    v156 = v195;
    v136 = [v195 whiteColor];
    v157 = [v156 whiteColor];
    v138 = [v157 colorWithAlphaComponent_];

    v139 = 0x2E72656B61657073;
    v140 = 0xEE006C6C69662E32;
  }

  sub_24A62A8A4(v139, v140, v136, v138);

  v158 = *&v197[v194];
  v159 = (v158 >> 13) & 3;
  v160 = &property descriptor for FMFindingViewController.dismissedHandler;
  if (v159)
  {
    if (v159 == 1)
    {
      if (((v158 >> 8) & 0xFFFFFF9F) != 3)
      {
        goto LABEL_40;
      }
    }

    else if ((v158 & 0x8000) != 0)
    {
      if (((v158 >> 8) & 0x1F) != 3)
      {
        goto LABEL_40;
      }
    }

    else if (*&v197[v194] != 3)
    {
      goto LABEL_40;
    }

LABEL_37:
    if ((sub_24A592DD4() & 1) == 0)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v158 >> 8 == 3)
  {
    goto LABEL_37;
  }

LABEL_40:
  v161 = [v125 v118[210]];
  if (!v161)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return;
  }

  v162 = v161;
  v163 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton;
  [v161 addSubview_];

  v164 = *&v125[v163];
  [v164 setAlpha_];
  [v125 accessibilityShowViewHandler];

  sub_24A59232C(0);
  if ((sub_24A592DD4() & 1) == 0)
  {
    return;
  }

LABEL_42:
  v165 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton;
  v166 = *&v125[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton];
  v202 = v196;
  v201[0] = v125;
  v197 = sel_torchActionWithSender_;
  v167 = v125;
  v168 = v166;
  v169 = [v168 layer];
  [v169 removeAllAnimations];

  v170 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  v171 = [*&v168[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
  [v171 removeAllAnimations];

  v172 = [*&v168[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
  [v172 removeAllAnimations];

  v173 = *&v168[v170];
  sub_24A50D63C(v201, v199, &unk_27EF50780, &qword_24A638470);
  v174 = v200;
  if (v200)
  {
    v175 = sub_24A50A204(v199, v200);
    v176 = *(v174 - 8);
    v177 = MEMORY[0x28223BE20](v175);
    v179 = &v189 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v176 + 16))(v179, v177);
    v180 = v173;
    v181 = sub_24A62F624();
    v182 = v179;
    v118 = &property descriptor for FMFindingViewController.dismissedHandler;
    (*(v176 + 8))(v182, v174);
    v160 = &property descriptor for FMFindingViewController.dismissedHandler;
    sub_24A508C54(v199);
  }

  else
  {
    v183 = v173;
    v181 = 0;
  }

  [v173 addTarget:v181 action:v197 forControlEvents:64];

  swift_unknownObjectRelease();
  [v168 setAccessibilityLabel_];
  [v168 setAccessibilityCustomActions_];

  sub_24A50D6A4(v201, &unk_27EF50780, &qword_24A638470);
  v184 = [v167 v118[210]];
  if (!v184)
  {
    goto LABEL_57;
  }

  v185 = v184;
  v186 = v198;
  [v184 v160[152]];

  sub_24A58FF64();
  v187 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem;
  if (*&v167[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem])
  {

    sub_24A62EB34();
  }

  *&v167[v187] = 0;

  v188 = *&v186[v165];
  [v188 setAlpha_];
  [v167 accessibilityShowViewHandler];
}

id sub_24A5C2200()
{
  v1 = sub_24A5CEC7C();
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C118);
  v3 = v0;
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    v18 = sub_24A5CEC7C();
    type metadata accessor for UIInterfaceOrientation(0);
    v8 = sub_24A62EC44();
    v10 = sub_24A509BA8(v8, v9, &v19);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v1 == 1;
    _os_log_impl(&dword_24A503000, v4, v5, "FMFindingViewController: Update orientation view. Current orientation: %s, isPortrait: %{BOOL}d", v6, 0x12u);
    sub_24A508C54(v7);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  v11 = ~[v3 supportedInterfaceOrientations];
  v12 = *&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView];
  if ((v11 & 0x18) != 0)
  {
    v14 = v1 == 1;
    v15 = v1 != 1;
    v16 = v14;
    [v12 setHidden_];
    [*&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView] setHidden_];
    [*&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer] setHidden_];
    v12 = *&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView];
    v13 = v15;
  }

  else
  {
    v13 = 1;
  }

  return [v12 setHidden_];
}

void sub_24A5C2420()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel;
  v2 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style];
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel] setFont_];
  [*&v0[v1] setAdjustsFontForContentSizeCategory_];
  [*&v0[v1] setAdjustsFontSizeToFitWidth_];
  [*&v0[v1] setNumberOfLines_];
  v3 = *&v0[v1];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 whiteColor];
  [v5 setTextColor_];

  [*&v0[v1] setTextAlignment_];
  [*&v0[v1] setAlpha_];
  v7 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView] addArrangedSubview_];
  v8 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel] setFont_];
  [*&v0[v8] setAdjustsFontForContentSizeCategory_];
  [*&v0[v8] setAdjustsFontSizeToFitWidth_];
  [*&v0[v8] setNumberOfLines_];
  v9 = *&v0[v8];
  v10 = [v4 whiteColor];
  [v9 setTextColor_];

  [*&v0[v8] setTextAlignment_];
  [*&v0[v8] setAlpha_];
  [*&v0[v7] addArrangedSubview_];
  [*&v0[v7] setAxis_];
  [*&v0[v7] setAlignment_];
  [*&v0[v7] setDistribution_];
  [*&v0[v7] setSpacing_];
  v11 = [v0 view];
  if (v11)
  {
    v12 = v11;
    [v11 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A5C26C0()
{
  v1 = type metadata accessor for FMFindingSessionState(0);
  *&v2 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView];
    [v5 addSubview_];

    v8 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session];
    v9 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    sub_24A5D0DA8(v8 + v9, v4, type metadata accessor for FMFindingSessionState);
    v10 = *(v4 + 1);
    if (*(v10 + 16))
    {
      v11 = sub_24A515AC8(&v4[*(v1 + 36)]);
      if (v12)
      {
        sub_24A508AE4(*(v10 + 56) + 40 * v11, v20);
        sub_24A508CA0(v20, v21);
        sub_24A5D0E10(v4, type metadata accessor for FMFindingSessionState);
        v13 = v22;
        v14 = v23;
        sub_24A50A204(v21, v22);
        v15 = (*(v14 + 8))(v13, v14);
        v16 = (v7 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_deviceName);
        *v16 = v15;
        v16[1] = v17;

        return sub_24A508C54(v21);
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_24A62F444();
  __break(1u);
  return result;
}

void sub_24A5C28D8()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];
  v3 = v2;

  v245 = objc_opt_self();
  v4 = [v245 currentDevice];
  v246 = [v4 userInterfaceIdiom];

  v5 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A633820;
  v7 = [*&v0[v5] topAnchor];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_72;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  v12 = [*&v0[v5] bottomAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v14 = v13;
  v15 = [v13 bottomAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v6 + 40) = v16;
  v17 = [*&v0[v5] leadingAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v6 + 48) = v21;
  v22 = [*&v0[v5] trailingAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v24 trailingAnchor];

  v27 = [v22 constraintEqualToAnchor_];
  *(v6 + 56) = v27;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v28 = sub_24A62ED54();

  v249 = v25;
  [v25 activateConstraints_];

  v29 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_titleLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_titleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style];
  v31 = 64;
  if (v246 == 1)
  {
    v31 = 72;
  }

  v32 = 40;
  if (v246 == 1)
  {
    v32 = 48;
  }

  v33 = *&v30[v32];
  v34 = *&v30[v31];
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_24A635FE0;
  v36 = [*&v0[v29] topAnchor];
  v37 = [v0 &selRef_heading];
  if (!v37)
  {
    goto LABEL_75;
  }

  v38 = v37;
  v39 = [v37 topAnchor];

  v40 = [v36 constraintEqualToAnchor:v39 constant:v33];
  *(v35 + 32) = v40;
  v41 = [*&v0[v29] leadingAnchor];
  v42 = [v0 view];
  if (!v42)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v43 = v42;
  v44 = [v42 safeAreaLayoutGuide];

  v45 = [v44 leadingAnchor];
  v46 = [v41 constraintEqualToAnchor:v45 constant:v34];

  *(v35 + 40) = v46;
  v47 = [*&v0[v29] trailingAnchor];
  v48 = [v0 view];
  if (!v48)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v49 = v48;
  v50 = [v48 safeAreaLayoutGuide];

  v51 = [v50 trailingAnchor];
  v52 = [v47 constraintEqualToAnchor:v51 constant:-v34];

  *(v35 + 48) = v52;
  v53 = sub_24A62ED54();

  [v25 activateConstraints_];

  v54 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_24A635FE0;
  v56 = [*&v0[v54] topAnchor];
  v57 = [*&v0[v29] bottomAnchor];
  v247 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style];
  v58 = [v56 constraintEqualToAnchor:v57 constant:*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style + 56]];

  *(v55 + 32) = v58;
  v59 = [*&v0[v54] leadingAnchor];
  v60 = [v0 view];
  if (!v60)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v61 = v60;
  v62 = [v60 safeAreaLayoutGuide];

  v63 = [v62 leadingAnchor];
  v64 = [v59 constraintEqualToAnchor:v63 constant:v34];

  *(v55 + 40) = v64;
  v65 = [*&v0[v54] trailingAnchor];
  v66 = [v0 view];
  if (!v66)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v67 = v66;
  v68 = [v66 safeAreaLayoutGuide];

  v69 = [v68 trailingAnchor];
  v70 = [v65 constraintEqualToAnchor:v69 constant:-v34];

  *(v55 + 48) = v70;
  v71 = sub_24A62ED54();

  [v25 activateConstraints_];

  v72 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer];
  [v72 setTranslatesAutoresizingMaskIntoConstraints_];
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_24A635FE0;
  v74 = [v72 topAnchor];
  v75 = [*&v0[v54] bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:6.0];

  *(v73 + 32) = v76;
  v77 = [v72 leadingAnchor];
  v78 = [v0 view];
  if (!v78)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v79 = v78;
  v80 = [v78 safeAreaLayoutGuide];

  v81 = [v80 leadingAnchor];
  v82 = v247[8];
  v83 = [v77 constraintEqualToAnchor:v81 constant:v82 + -5.0];

  *(v73 + 40) = v83;
  v84 = [v72 trailingAnchor];
  v85 = [v0 view];
  if (!v85)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v86 = v85;
  v87 = [v85 safeAreaLayoutGuide];

  v88 = [v87 trailingAnchor];
  v89 = [v84 constraintLessThanOrEqualToAnchor:v88 constant:-v82];

  *(v73 + 48) = v89;
  v90 = sub_24A62ED54();

  [v25 activateConstraints_];

  v91 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView] setTranslatesAutoresizingMaskIntoConstraints_];
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_24A633820;
  v93 = [*&v0[v91] centerYAnchor];
  v94 = [v0 view];
  if (!v94)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v95 = v94;
  v96 = [v94 centerYAnchor];

  v97 = [v93 constraintEqualToAnchor:v96 constant:v247[15]];
  *(v92 + 32) = v97;
  v98 = [*&v0[v91] centerXAnchor];
  v99 = [v0 view];
  if (!v99)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v100 = v99;
  v101 = [v99 centerXAnchor];

  v102 = [v98 constraintEqualToAnchor_];
  *(v92 + 40) = v102;
  v103 = [*&v0[v91] widthAnchor];
  v104 = v247[14];
  v105 = [v103 constraintEqualToConstant_];

  *(v92 + 48) = v105;
  v106 = [*&v0[v91] heightAnchor];
  v107 = [v106 constraintLessThanOrEqualToConstant_];

  *(v92 + 56) = v107;
  v108 = sub_24A62ED54();

  [v25 activateConstraints_];

  v109 = v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType];
  v110 = &unk_24A633000;
  if (v109 < 2)
  {
    v111 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView];
    [v111 setTranslatesAutoresizingMaskIntoConstraints_];
    v112 = 11;
    if (v3 >= 414.0)
    {
      v112 = 10;
    }

    v113 = v247[v112];
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_24A6339F0;
    v115 = [v111 bottomAnchor];
    v116 = [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton] topAnchor];
    v117 = [v115 constraintEqualToAnchor:v116 constant:-v113];

    *(v114 + 32) = v117;
    v118 = sub_24A62ED54();

    [v25 &selRef:v118 setPreferredEdgeInsets:? + 3];

    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_24A633810;
    v120 = [v111 leadingAnchor];
    v121 = [v0 view];
    if (v121)
    {
      v122 = v121;
      v123 = [v121 safeAreaLayoutGuide];

      v124 = [v123 leadingAnchor];
      v125 = [v120 constraintEqualToAnchor:v124 constant:v82];

      *(v119 + 32) = v125;
      v126 = [v111 trailingAnchor];
      v127 = [v0 view];
      if (v127)
      {
        v128 = v127;
        v129 = (v119 + 40);
        v130 = [v127 safeAreaLayoutGuide];

        v131 = [v130 trailingAnchor];
        v132 = [v126 constraintEqualToAnchor:v131 constant:-v82];
        v133 = &property descriptor for FMFindingViewController.dismissedHandler;
        goto LABEL_38;
      }

LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v134 = v247;
  v133 = &property descriptor for FMFindingViewController.dismissedHandler;
  if (v109 != 2)
  {
    goto LABEL_39;
  }

  v135 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView];
  [v135 setTranslatesAutoresizingMaskIntoConstraints_];
  v136 = [v245 currentDevice];
  v137 = [v136 userInterfaceIdiom];

  v138 = swift_allocObject();
  *(v138 + 16) = xmmword_24A635FE0;
  if (v137 == 1)
  {
    v139 = [v135 bottomAnchor];
    v140 = [v0 view];
    if (!v140)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v141 = v140;
    v142 = [v140 safeAreaLayoutGuide];

    v143 = [v142 bottomAnchor];
    v144 = v247[9];
    v145 = [v139 constraintEqualToAnchor:v143 constant:-v144];

    *(v138 + 32) = v145;
    v146 = [v135 leadingAnchor];
    v147 = [v0 view];
    if (!v147)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v148 = v147;
    v149 = [v147 safeAreaLayoutGuide];

    v150 = [v149 leadingAnchor];
    v151 = [v146 constraintEqualToAnchor:v150 constant:v144];

    *(v138 + 40) = v151;
    v152 = [v135 trailingAnchor];
    v153 = [v0 view];
    if (!v153)
    {
LABEL_102:
      __break(1u);
      return;
    }

    v154 = v153;
    v155 = [v153 safeAreaLayoutGuide];

    v156 = [v155 trailingAnchor];
    v157 = [v152 constraintEqualToAnchor:v156 constant:-v144];
  }

  else
  {
    v158 = [v135 bottomAnchor];
    v159 = [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton] topAnchor];
    v160 = [v158 constraintEqualToAnchor:v159 constant:-8.0];

    *(v138 + 32) = v160;
    v161 = [v135 leadingAnchor];
    v162 = [v0 view];
    if (!v162)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v163 = v162;
    v164 = [v162 safeAreaLayoutGuide];

    v165 = [v164 leadingAnchor];
    v166 = [v161 constraintEqualToAnchor:v165 constant:v82];

    *(v138 + 40) = v166;
    v152 = [v135 trailingAnchor];
    v167 = [v0 view];
    if (!v167)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v168 = v167;
    v169 = [v167 safeAreaLayoutGuide];

    v156 = [v169 trailingAnchor];
    v157 = [v152 &selRef_resourceOptions + 6];
  }

  v170 = v157;

  *(v138 + 48) = v170;
  v171 = sub_24A62ED54();

  [v249 &selRef:v171 setPreferredEdgeInsets:? + 3];

  v172 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView];
  [v172 setTranslatesAutoresizingMaskIntoConstraints_];
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_24A633820;
  v174 = [v172 topAnchor];
  v175 = [v0 view];
  if (!v175)
  {
    goto LABEL_94;
  }

  v176 = v175;
  v177 = [v175 topAnchor];

  v178 = [v174 constraintEqualToAnchor_];
  *(v173 + 32) = v178;
  v179 = [v172 bottomAnchor];
  v180 = [v0 view];
  if (!v180)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v181 = v180;
  v182 = [v180 bottomAnchor];

  v183 = [v179 constraintEqualToAnchor_];
  *(v173 + 40) = v183;
  v184 = [v172 leadingAnchor];
  v185 = [v0 view];
  if (!v185)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v186 = v185;
  v187 = [v185 leadingAnchor];

  v188 = [v184 constraintEqualToAnchor_];
  *(v173 + 48) = v188;
  v126 = [v172 trailingAnchor];
  v189 = [v0 view];
  if (!v189)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v190 = v189;
  v129 = (v173 + 56);
  v131 = [v189 trailingAnchor];

  v132 = [v126 constraintEqualToAnchor_];
LABEL_38:
  v134 = v247;
  v191 = v132;

  *v129 = v191;
  v192 = sub_24A62ED54();

  [v249 v133[161]];

  v110 = &unk_24A633000;
LABEL_39:
  v193 = v3 < 414.0;
  v194 = 17;
  if (v3 >= 414.0)
  {
    v194 = 16;
  }

  v195 = v134[v194];
  v196 = 19;
  if (!v193)
  {
    v196 = 18;
  }

  if (v246 == 1)
  {
    v196 = 20;
  }

  v197 = v134[v196];
  v198 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton] setTranslatesAutoresizingMaskIntoConstraints_];
  v199 = [v245 currentDevice];
  v200 = [v199 userInterfaceIdiom];

  v201 = swift_allocObject();
  v248 = v110[129];
  *(v201 + 16) = v248;
  v202 = [*&v0[v198] topAnchor];
  v203 = [v0 view];
  v204 = v203;
  if (v200 == 1)
  {
    if (v203)
    {
      v205 = [v203 topAnchor];

      v206 = [v202 constraintEqualToAnchor:v205 constant:v134[6]];
      *(v201 + 32) = v206;
      v207 = [*&v0[v198] trailingAnchor];
      v208 = [v0 view];
      if (v208)
      {
        v209 = v208;
        v210 = [v208 trailingAnchor];

        v211 = [v207 constraintEqualToAnchor:v210 constant:-v134[9]];
        goto LABEL_52;
      }

      goto LABEL_88;
    }

    goto LABEL_86;
  }

  if (!v203)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v212 = [v203 bottomAnchor];

  v213 = [v202 constraintEqualToAnchor:v212 constant:-v197];
  *(v201 + 32) = v213;
  v207 = [*&v0[v198] leadingAnchor];
  v214 = [v0 view];
  if (!v214)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v215 = v214;
  v210 = [v214 leadingAnchor];

  v211 = [v207 constraintEqualToAnchor:v210 constant:v195];
LABEL_52:
  v216 = v211;

  *(v201 + 40) = v216;
  v217 = sub_24A62ED54();

  [v249 v133[161]];

  v218 = *(*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v219 = (v218 >> 13) & 3;
  if (v219)
  {
    if (v219 == 1)
    {
      if (((v218 >> 8) & 0xFFFFFF9F) != 3)
      {
        goto LABEL_67;
      }
    }

    else if ((v218 & 0x8000) != 0)
    {
      if (((v218 >> 8) & 0x1F) != 3)
      {
        goto LABEL_67;
      }
    }

    else if (*(*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType) != 3)
    {
      goto LABEL_67;
    }

LABEL_60:
    if ((sub_24A592DD4() & 1) == 0)
    {
      return;
    }

    goto LABEL_61;
  }

  if (v218 >> 8 == 3)
  {
    goto LABEL_60;
  }

LABEL_67:
  v232 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton] setTranslatesAutoresizingMaskIntoConstraints_];
  v233 = swift_allocObject();
  *(v233 + 16) = v248;
  v234 = [*&v0[v232] topAnchor];
  v235 = [v0 view];
  if (!v235)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v236 = v235;
  v237 = [v235 bottomAnchor];

  v238 = [v234 constraintEqualToAnchor:v237 constant:-v197];
  *(v233 + 32) = v238;
  v239 = [*&v0[v232] trailingAnchor];
  v240 = [v0 view];
  if (!v240)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v241 = v240;
  v242 = [v240 trailingAnchor];

  v243 = [v239 constraintEqualToAnchor:v242 constant:-v195];
  *(v233 + 40) = v243;
  v244 = sub_24A62ED54();

  [v249 activateConstraints_];

  if ((sub_24A592DD4() & 1) == 0)
  {
    return;
  }

LABEL_61:
  v220 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton] setTranslatesAutoresizingMaskIntoConstraints_];
  v221 = swift_allocObject();
  *(v221 + 16) = v248;
  v222 = [*&v0[v220] topAnchor];
  v223 = [v0 view];
  if (!v223)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v224 = v223;
  v225 = [v223 bottomAnchor];

  v226 = [v222 constraintEqualToAnchor:v225 constant:-v197];
  *(v221 + 32) = v226;
  v227 = [*&v0[v220] centerXAnchor];
  v228 = [v0 view];
  if (!v228)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v229 = v228;
  v230 = [v228 centerXAnchor];

  v231 = [v227 constraintEqualToAnchor_];
  *(v221 + 40) = v231;
  v250 = sub_24A62ED54();

  [v249 activateConstraints_];
}

void sub_24A5C4464()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_snapshotContainer];
    v4 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView;
    [v1 insertSubview:v3 aboveSubview:*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView]];

    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = objc_opt_self();
    sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24A633820;
    v7 = [v3 topAnchor];
    v8 = [*&v0[v4] topAnchor];
    v9 = [v7 constraintEqualToAnchor_];

    *(v6 + 32) = v9;
    v10 = [v3 bottomAnchor];
    v11 = [*&v0[v4] bottomAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v6 + 40) = v12;
    v13 = [v3 leadingAnchor];
    v14 = [*&v0[v4] leadingAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v6 + 48) = v15;
    v16 = [v3 trailingAnchor];
    v17 = [*&v0[v4] trailingAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    *(v6 + 56) = v18;
    sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
    v19 = sub_24A62ED54();

    [v5 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

id sub_24A5C4718(void *a1, char a2)
{
  v2 = 0.0;
  if (a2)
  {
    v2 = 1.0;
  }

  return [a1 setAlpha_];
}

void sub_24A5C4734(_WORD *a1, unsigned __int16 *a2)
{
  v5 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!sub_24A629198(a2, a1))
  {
    v8 = *a2;
    v9 = (v8 >> 13) & 3;
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = sub_24A62DF44();
        v17[3] = v10;
        v17[4] = sub_24A5D0C64(&qword_27EF4FE90, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
        v11 = sub_24A5292E8(v17);
        (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D089D0], v10);
        LOBYTE(v10) = MEMORY[0x24C219850](v17);
        sub_24A508C54(v17);
        if (v10)
        {
LABEL_5:
          v12 = v2;
          sub_24A5C7770(1, a2);
          v13 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsController);
          v14 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
          swift_beginAccess();
          sub_24A5D0DA8(v12 + v14, v7, type metadata accessor for FMFindingViewState);
          v15 = v13;
          sub_24A5FD8E0(v7);

          sub_24A5D0E10(v7, type metadata accessor for FMFindingViewState);
          sub_24A5C6678();
          sub_24A5C4CDC(a1, a2);
          return;
        }
      }

      else if ((v8 & 0x8100) == 0x100)
      {
        goto LABEL_5;
      }
    }

    sub_24A5C4930(a1, a2);
  }
}

id sub_24A5C4930(uint64_t a1, __int16 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsController];
  v10 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A5D0DA8(&v3[v10], v8, type metadata accessor for FMFindingViewState);
  v11 = v9;
  sub_24A5FD8E0(v8);

  sub_24A5D0E10(v8, type metadata accessor for FMFindingViewState);
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  *(v12 + 24) = 1;
  if (v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_reducedMotion] != 1 || v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType] != 2)
  {
    sub_24A5C6C78(v3, 1);
    goto LABEL_6;
  }

  v13 = *&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView];
  v14 = v3;
  v15 = [v13 snapshotViewAfterScreenUpdates_];
  if (!v15)
  {
LABEL_6:

    goto LABEL_7;
  }

  v16 = v15;
  v27 = objc_opt_self();
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = sub_24A5D0E70;
  v17[5] = v12;
  v32 = sub_24A5D0EC4;
  v33 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_24A5A8458;
  v31 = &unk_285DA8D20;
  v18 = _Block_copy(&aBlock);
  v19 = v14;
  v20 = v16;

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v32 = sub_24A5BE620;
  v33 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_24A5A1470;
  v31 = &unk_285DA8D70;
  v22 = _Block_copy(&aBlock);
  v23 = v20;

  [v27 animateWithDuration:5242884 delay:v18 options:v22 animations:0.5 completion:0.0];

  _Block_release(v22);
  _Block_release(v18);
LABEL_7:
  sub_24A5C6678();
  sub_24A5C6580();
  sub_24A5C816C();
  sub_24A5C90AC();
  sub_24A620310(a1, a2);
  v24 = *(*&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v25 = (v24 >> 13) & 3;
  if (v25 && (v25 == 1 || (v24 & 0x80000000) == 0))
  {
    sub_24A5C92A4(a1, a2);
  }

  else
  {
    sub_24A5C9A78(a1, a2);
  }

  return [v3 accessibilityDistanceAndDirectionUpdated];
}

void sub_24A5C4CDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((~[v3 supportedInterfaceOrientations] & 0x18) != 0 && sub_24A5CEC7C() != 1)
  {
    return;
  }

  v6 = type metadata accessor for FMFindingViewState(0);
  v7 = a2 + *(v6 + 32);
  v8 = *(v7 + 80);
  v186 = *(v7 + 64);
  *v187 = v8;
  *&v187[13] = *(v7 + 93);
  v9 = *(v7 + 32);
  v185 = *(v7 + 48);
  v184 = v9;
  v10 = *(v7 + 16);
  v182 = *v7;
  v183 = v10;
  v11 = a1 + *(v6 + 32);
  v12 = *v11;
  v13 = *(v11 + 56);
  v190 = *(v11 + 40);
  v191 = v13;
  v192 = *(v11 + 72);
  v193 = *(v11 + 88);
  v14 = *(v11 + 8);
  v189 = *(v11 + 24);
  v188 = v14;
  v15 = *&v187[16];
  if ((*&v187[16] & 0xFF000000) == 0x4000000)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v17 = sub_24A62E314();
    sub_24A506EB8(v17, qword_27EF5C118);
    v18 = sub_24A62E2F4();
    v19 = sub_24A62EF24();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24A503000, v18, v19, "🧭 FMFindingViewCtrl: Requesting scatter haptic.", v20, 2u);
      MEMORY[0x24C21BBE0](v20, -1, -1);
    }

    v21 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
    swift_beginAccess();
    sub_24A50A204(v21, *(v21 + 3));
    sub_24A57F510();
  }

  else
  {
    if ((*&v187[16] & 0xFF000000) == 0x5000000)
    {
      v16 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
      swift_beginAccess();
      sub_24A50A204(v16, *(v16 + 3));
      sub_24A581E4C();
      return;
    }

    if ((*&v187[16] & 0xFE000000) != 0x6000000)
    {
      v22 = (v11 + 8);
      v23 = *&v182;
      v24 = *(v11 + 96) | (*(v11 + 100) << 32);
      v195 = v182;
      v25 = *(v7 + 56);
      v198 = *(v7 + 40);
      v199 = v25;
      v200 = *(v7 + 72);
      v201 = *(v7 + 88);
      v26 = *(v7 + 24);
      v196 = *(v7 + 8);
      v197 = v26;
      v27 = HIWORD(*&v187[16]);
      v202 = *&v187[16];
      v28 = ((*&v187[16] & 0xFFFF0000) >> 16);
      v203 = v187[18];
      if (v28 != 2)
      {
        if (v28 == 3)
        {
          v29 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
          swift_beginAccess();
          sub_24A50A204(v29, *(v29 + 3));
          sub_24A57FDA8();
          return;
        }

        v36 = v24 & 0xFE000000;
        v143 = v6;
        if (v187[18] != 1)
        {
          if ((v24 & 0xFC000000 | 0x2000000) == 0x6000000)
          {
LABEL_81:
            memset(v181, 0, 98);
            v181[98] = -1;
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        if ((v24 & 0xFC000000 | 0x2000000) == 0x6000000)
        {
          if ((v24 & 0x4000000 | 0x2000000) == 0x6000000)
          {
            memset(v172, 0, sizeof(v172));
            v174 = -1;
            v37 = 16711680;
            v173 = 0;
LABEL_76:
            *&v194[32] = v172[2];
            *&v194[48] = v172[3];
            *&v194[64] = v172[4];
            *&v194[80] = v172[5];
            v82 = HIWORD(v37);
            *v194 = v172[0];
            *&v194[16] = v172[1];
            if (HIWORD(v37) <= 0xFEu)
            {
              v206 = v172[2];
              v207 = v172[3];
              v208 = v172[4];
              v209 = v172[5];
              v204 = v172[0];
              v205 = v172[1];
              *v165 = 0;
              v165[98] = 0;
              *&v165[96] = 0;
              v144 = *v165;
              v145 = *&v165[16];
              *&v149[15] = v165[95];
              v148 = *&v165[64];
              *v149 = *&v165[80];
              v146 = *&v165[32];
              v147 = *&v165[48];
              v211 = BYTE2(v37);
              v210 = v37;
              v83 = v37;
              sub_24A50D63C(v172, v156, &qword_27EF50210, &qword_24A635DE0);
              v142 = sub_24A5B00E4(&v204, &v144);
              sub_24A50D6A4(v165, &qword_27EF50210, &qword_24A635DE0);
              sub_24A50D6A4(v172, &qword_27EF50210, &qword_24A635DE0);
              *&v156[32] = *&v194[32];
              *&v156[48] = *&v194[48];
              *&v156[64] = *&v194[64];
              *&v156[80] = *&v194[80];
              *v156 = *v194;
              *&v156[16] = *&v194[16];
              v156[98] = v82;
              *&v156[96] = v83;
              v36 = v24 & 0xFE000000;
              sub_24A50D6A4(v156, &qword_27EF50210, &qword_24A635DE0);
              if (v142)
              {
LABEL_80:
                if ((v24 & 0xFF000000) == 0x4000000)
                {
                  goto LABEL_81;
                }

                if (qword_27EF4E9A0 != -1)
                {
                  swift_once();
                }

                v84 = sub_24A62E314();
                sub_24A506EB8(v84, qword_27EF5C118);
                v85 = sub_24A62E2F4();
                v86 = sub_24A62EF24();
                if (os_log_type_enabled(v85, v86))
                {
                  v87 = swift_slowAlloc();
                  *v87 = 0;
                  _os_log_impl(&dword_24A503000, v85, v86, "🧭 FMFindingViewCtrl: Haptics: Playing near haptic", v87, 2u);
                  MEMORY[0x24C21BBE0](v87, -1, -1);
                }

                v88 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
                swift_beginAccess();
                sub_24A50A204(v88, *(v88 + 3));
                sub_24A57F510();
LABEL_95:
                v97 = *v7;
                if ((*(v7 + 96) & 0xFC0000) != 0 || (*(v7 + 96) & 0xFC000000) == 0x4000000)
                {
                  v97 = 0.0;
                }

                v99 = fmin(v97 * v97 * 1.8, 0.7);
                v100 = *&v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration];
                v101 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state];
                swift_beginAccess();
                v102 = &v101[*(v143 + 32)];
                v103 = *(v102 + 5);
                *&v156[64] = *(v102 + 4);
                *&v156[80] = v103;
                *&v156[93] = *(v102 + 93);
                v104 = *(v102 + 3);
                *&v156[32] = *(v102 + 2);
                *&v156[48] = v104;
                v105 = *(v102 + 1);
                *v156 = *v102;
                *&v156[16] = v105;
                v106 = *(v100 + 16);

                if (v106)
                {
                  sub_24A508CE4(v156, v165);
                  v107 = sub_24A515A5C(v156);
                  if (v108)
                  {
                    v109 = *(*(v100 + 56) + 40 * v107 + 32);
                    sub_24A517ABC(v156);

LABEL_106:
                    v110 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
                    swift_beginAccess();
                    sub_24A50A204(v110, *(v110 + 3));
                    v164[3] = MEMORY[0x277D839F8];
                    *v164 = v109;
                    sub_24A580A00(v164, v99, v109);
                    v33 = &unk_27EF50780;
                    v34 = &qword_24A638470;
                    v35 = v164;
                    goto LABEL_107;
                  }
                }

                else
                {
                  sub_24A508CE4(v156, v165);
                }

                sub_24A577158(v165);

                sub_24A517ABC(v156);
                v109 = *&v165[32];
                goto LABEL_106;
              }
            }

            else
            {
              *&v156[32] = v172[2];
              *&v156[48] = v172[3];
              *&v156[64] = v172[4];
              *&v156[80] = v172[5];
              *v156 = v172[0];
              *&v156[16] = v172[1];
              *&v156[96] = v37;
              v156[98] = BYTE2(v37);
              *&v156[104] = 0;
              v163 = 0;
              v162 = 0;
              sub_24A50D6A4(v156, &qword_27EF516E8, &qword_24A63AA68);
            }

            if ((v36 | 0x2000000) == 0x6000000)
            {
              goto LABEL_80;
            }

            v22 = &v188;
LABEL_88:
            v89 = v22[3];
            v177 = v22[2];
            v178 = v89;
            v179 = v22[4];
            v90 = v22[1];
            v175 = *v22;
            v176 = v90;
            *&v156[40] = v190;
            *&v156[56] = v191;
            *&v156[72] = v192;
            *&v156[8] = v188;
            v180 = *(v22 + 10);
            *v156 = v12;
            *&v156[88] = v193;
            *&v156[24] = v189;
            v156[100] = BYTE4(v24);
            *&v156[96] = v24;
            sub_24A50D63C(v156, v165, &qword_27EF4F670, &qword_24A634D70);
            *v181 = v12;
            *&v181[40] = v177;
            *&v181[56] = v178;
            *&v181[72] = v179;
            *&v181[8] = v175;
            *&v181[88] = v180;
            *&v181[24] = v176;
            v181[98] = BYTE2(v24);
            *&v181[96] = v24;
LABEL_89:
            *&v194[64] = *&v181[64];
            *&v194[80] = *&v181[80];
            *&v194[95] = *&v181[95];
            *v194 = *v181;
            *&v194[16] = *&v181[16];
            *&v194[48] = *&v181[48];
            *&v194[32] = *&v181[32];
            v91 = sub_24A5AED58(v194);
            sub_24A50D6A4(v181, &qword_27EF50210, &qword_24A635DE0);
            if (v91 == 2)
            {
              if (qword_27EF4E9A0 != -1)
              {
                swift_once();
              }

              v92 = sub_24A62E314();
              sub_24A506EB8(v92, qword_27EF5C118);
              v93 = sub_24A62E2F4();
              v94 = sub_24A62EF24();
              if (os_log_type_enabled(v93, v94))
              {
                v95 = swift_slowAlloc();
                *v95 = 0;
                _os_log_impl(&dword_24A503000, v93, v94, "🧭 FMFindingViewCtrl: Haptics: Playing level decreased haptic", v95, 2u);
                MEMORY[0x24C21BBE0](v95, -1, -1);
              }

              v96 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
              swift_beginAccess();
              sub_24A50A204(v96, *(v96 + 3));
              sub_24A581808();
            }

            goto LABEL_95;
          }

LABEL_75:
          v78 = v22[3];
          v79 = v22[1];
          v168 = v22[2];
          v169 = v78;
          v80 = v22[3];
          v170 = v22[4];
          v81 = v22[1];
          v166 = *v22;
          v167 = v81;
          *&v156[40] = v168;
          *&v156[56] = v80;
          *&v156[72] = v22[4];
          *&v156[8] = v166;
          v171 = *(v22 + 10);
          *v156 = v12;
          *&v156[88] = *(v22 + 10);
          *&v156[24] = v79;
          v156[100] = BYTE4(v24);
          *&v156[96] = v24;
          sub_24A50D63C(v156, v165, &qword_27EF4F670, &qword_24A634D70);
          v37 = v24 & 0xFFFFFF;
          *(&v172[2] + 8) = v168;
          *(&v172[3] + 8) = v169;
          *(&v172[4] + 8) = v170;
          *(v172 + 8) = v166;
          *v172 = v12;
          *(&v172[5] + 1) = v171;
          *(&v172[1] + 8) = v167;
          v174 = BYTE2(v24);
          v173 = v24;
          goto LABEL_76;
        }

        if ((v24 & 0xFF0000) != 0x10000)
        {
          goto LABEL_75;
        }

        v47 = [objc_opt_self() currentDevice];
        v48 = [v47 userInterfaceIdiom];

        if (v48 == 1)
        {
          v49 = 0.3;
        }

        else
        {
          v49 = 0.45;
        }

        v50 = 1.0 - v49;
        v51 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_inBand;
        if (v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_inBand])
        {
          v52 = v49 + v50 * 0.6;
          v53 = v49 + v50 * 0.65;
          v54 = v49 + v50 * 0.85;
          if (v54 < *&v182)
          {
            if (qword_27EF4E9A0 != -1)
            {
              swift_once();
            }

            v55 = sub_24A62E314();
            sub_24A506EB8(v55, qword_27EF5C118);
            v56 = sub_24A62E2F4();
            v57 = sub_24A62EF24();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 134217984;
              *(v58 + 4) = v54;
              _os_log_impl(&dword_24A503000, v56, v57, "🧭 FMFindingViewCtrl Haptics: exiting band, above %f ", v58, 0xCu);
              MEMORY[0x24C21BBE0](v58, -1, -1);
            }

            v3[v51] = 0;
            v52 = v49 + v50 * 0.6;
          }

          v59 = v50 * 0.15;
          v60 = v49 + v50 * 0.35;
          v61 = v49 + v50 * 0.4;
          if (v52 < v23 && v23 < v53)
          {
            v63 = v52;
            if (qword_27EF4E9A0 != -1)
            {
              swift_once();
            }

            v64 = sub_24A62E314();
            sub_24A506EB8(v64, qword_27EF5C118);
            v65 = sub_24A62E2F4();
            v66 = sub_24A62EF24();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *v67 = 134218240;
              *(v67 + 4) = v63;
              *(v67 + 12) = 2048;
              *(v67 + 14) = v53;
              _os_log_impl(&dword_24A503000, v65, v66, "🧭 FMFindingViewCtrl Haptics: exiting band, between %f and %f", v67, 0x16u);
              MEMORY[0x24C21BBE0](v67, -1, -1);
            }

            v3[v51] = 0;
          }

          v68 = v49 + v59;
          if (v60 < v23 && v23 < v61)
          {
            if (qword_27EF4E9A0 != -1)
            {
              swift_once();
            }

            v70 = sub_24A62E314();
            sub_24A506EB8(v70, qword_27EF5C118);
            v71 = sub_24A62E2F4();
            v72 = sub_24A62EF24();
            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              *v73 = 134218240;
              *(v73 + 4) = v60;
              *(v73 + 12) = 2048;
              *(v73 + 14) = v61;
              _os_log_impl(&dword_24A503000, v71, v72, "🧭 FMFindingViewCtrl Haptics: exiting band, between %f and %f", v73, 0x16u);
              MEMORY[0x24C21BBE0](v73, -1, -1);
            }

            v3[v51] = 0;
          }

          if (v23 < v68)
          {
            if (qword_27EF4E9A0 != -1)
            {
              swift_once();
            }

            v74 = sub_24A62E314();
            sub_24A506EB8(v74, qword_27EF5C118);
            v75 = sub_24A62E2F4();
            v76 = sub_24A62EF24();
            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              *v77 = 134217984;
              *(v77 + 4) = v68;
              _os_log_impl(&dword_24A503000, v75, v76, "🧭 FMFindingViewCtrl Haptics: exiting band, below %f", v77, 0xCu);
              MEMORY[0x24C21BBE0](v77, -1, -1);
            }

            v3[v51] = 0;
          }

          goto LABEL_95;
        }

        v111 = v49 + v50 * 0.25;
        if (v111 < *&v182 && v12 > 0.0 && v12 <= v111)
        {
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v112 = sub_24A62E314();
          sub_24A506EB8(v112, qword_27EF5C118);
          v113 = sub_24A62E2F4();
          v114 = sub_24A62EF24();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            *v115 = 0;
            _os_log_impl(&dword_24A503000, v113, v114, "🧭 FMFindingViewCtrl Haptics: Playing level increased haptic for ring 1", v115, 2u);
            MEMORY[0x24C21BBE0](v115, -1, -1);
          }

          v116 = sub_24A62E2F4();
          v117 = sub_24A62EF24();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            *v118 = 134218496;
            *(v118 + 4) = v23;
            *(v118 + 12) = 2048;
            *(v118 + 14) = v12;
            *(v118 + 22) = 2048;
            *(v118 + 24) = v111;
            _os_log_impl(&dword_24A503000, v116, v117, "🧭 FMFindingViewCtrl Haptics: Playing: curr:%f, old:%f, scale: %f", v118, 0x20u);
            MEMORY[0x24C21BBE0](v118, -1, -1);
          }

          v119 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
          swift_beginAccess();
          sub_24A50A204(v119, *(v119 + 3));
          sub_24A581798();
          goto LABEL_145;
        }

        v120 = v49 + v50 * 0.5;
        if (v120 >= *&v182 || v12 <= 0.0 || v12 > v120)
        {
          v132 = v49 + v50 * 0.75;
          v133 = v132 >= *&v182 || v12 > v132;
          if (v133 || v12 <= 0.0)
          {
            goto LABEL_95;
          }

          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v134 = sub_24A62E314();
          sub_24A506EB8(v134, qword_27EF5C118);
          v135 = sub_24A62E2F4();
          v136 = sub_24A62EF24();
          if (os_log_type_enabled(v135, v136))
          {
            v137 = swift_slowAlloc();
            *v137 = 0;
            _os_log_impl(&dword_24A503000, v135, v136, "🧭 FMFindingViewCtrl Haptics: Playing level increased haptic for ring 3", v137, 2u);
            MEMORY[0x24C21BBE0](v137, -1, -1);
          }

          v138 = sub_24A62E2F4();
          v139 = sub_24A62EF24();
          if (os_log_type_enabled(v138, v139))
          {
            v140 = swift_slowAlloc();
            *v140 = 134218496;
            *(v140 + 4) = v23;
            *(v140 + 12) = 2048;
            *(v140 + 14) = v12;
            *(v140 + 22) = 2048;
            *(v140 + 24) = v132;
            _os_log_impl(&dword_24A503000, v138, v139, "🧭 FMFindingViewCtrl Haptics: Playing: curr:%f, old:%f, scale: %f", v140, 0x20u);
            MEMORY[0x24C21BBE0](v140, -1, -1);
          }

          v141 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
          swift_beginAccess();
          sub_24A50A204(v141, *(v141 + 3));
          sub_24A581798();
          v129 = sub_24A62E2F4();
          v130 = sub_24A62EF24();
          if (!os_log_type_enabled(v129, v130))
          {
            goto LABEL_144;
          }

          v131 = swift_slowAlloc();
          *v131 = 134217984;
          *(v131 + 4) = v132;
        }

        else
        {
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v121 = sub_24A62E314();
          sub_24A506EB8(v121, qword_27EF5C118);
          v122 = sub_24A62E2F4();
          v123 = sub_24A62EF24();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            *v124 = 0;
            _os_log_impl(&dword_24A503000, v122, v123, "🧭 FMFindingViewCtrl Haptics: Playing level increased haptic for ring 2", v124, 2u);
            MEMORY[0x24C21BBE0](v124, -1, -1);
          }

          v125 = sub_24A62E2F4();
          v126 = sub_24A62EF24();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            *v127 = 134218496;
            *(v127 + 4) = v23;
            *(v127 + 12) = 2048;
            *(v127 + 14) = v12;
            *(v127 + 22) = 2048;
            *(v127 + 24) = v120;
            _os_log_impl(&dword_24A503000, v125, v126, "🧭 FMFindingViewCtrl Haptics: Playing: curr:%f, old:%f, scale: %f", v127, 0x20u);
            MEMORY[0x24C21BBE0](v127, -1, -1);
          }

          v128 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
          swift_beginAccess();
          sub_24A50A204(v128, *(v128 + 3));
          sub_24A581798();
          v129 = sub_24A62E2F4();
          v130 = sub_24A62EF24();
          if (!os_log_type_enabled(v129, v130))
          {
            goto LABEL_144;
          }

          v131 = swift_slowAlloc();
          *v131 = 134217984;
          *(v131 + 4) = v120;
        }

        _os_log_impl(&dword_24A503000, v129, v130, "🧭 FMFindingViewCtrl Haptics: entering band %f ", v131, 0xCu);
        MEMORY[0x24C21BBE0](v131, -1, -1);
LABEL_144:

LABEL_145:
        v3[v51] = 1;
        goto LABEL_95;
      }

      v30 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
      swift_beginAccess();
      sub_24A50A204(v30, *(v30 + 3));
      sub_24A581E4C();
      v152 = v184;
      v153 = v185;
      v154 = v186;
      v155 = *v187;
      v150 = v182;
      v151 = v183;
      if ((v24 & 0xFD000000) == 0x5000000 || (v24 & 0xFD000000 | 0x2000000) == 0x6000000)
      {
        memset(v194, 0, 98);
        v194[98] = -1;
        v31 = 16711680;
      }

      else
      {
        v43 = v22[3];
        *&v156[40] = v22[2];
        *&v156[56] = v43;
        *&v156[72] = v22[4];
        v44 = v22[1];
        *&v156[8] = *v22;
        v31 = v24 & 0xFFFFFF;
        *v156 = v12;
        *&v156[88] = *(v22 + 10);
        *&v156[24] = v44;
        *&v156[96] = v24;
        v156[100] = BYTE4(v24);
        sub_24A50D63C(v156, v165, &qword_27EF4F670, &qword_24A634D70);
        *v194 = v12;
        v45 = v22[3];
        *&v194[40] = v22[2];
        *&v194[56] = v45;
        *&v194[72] = v22[4];
        v46 = v22[1];
        *&v194[8] = *v22;
        *&v194[88] = *(v22 + 10);
        *&v194[24] = v46;
        v194[98] = BYTE2(v24);
        *&v194[96] = v24;
      }

      *&v165[37] = *&v194[32];
      *&v165[53] = *&v194[48];
      *&v165[69] = *&v194[64];
      *&v165[85] = *&v194[80];
      *&v165[5] = *v194;
      v32 = HIWORD(v31);
      *&v165[21] = *&v194[16];
      if (BYTE2(v15) == 255)
      {
        if (v32 > 0xFE)
        {
          v146 = v152;
          v147 = v153;
          v148 = v154;
          *v149 = v155;
          v144 = v150;
          v145 = v151;
          *&v149[16] = v15;
          v149[18] = v27;
          sub_24A508CE4(&v182, v156);
          v33 = &qword_27EF50210;
          v34 = &qword_24A635DE0;
          v35 = &v144;
LABEL_107:
          sub_24A50D6A4(v35, v33, v34);
          return;
        }
      }

      else if (v32 <= 0xFE)
      {
        *&v181[32] = *&v194[32];
        *&v181[48] = *&v194[48];
        *&v181[64] = *&v194[64];
        *&v181[80] = *&v194[80];
        *v181 = *v194;
        *&v181[16] = *&v194[16];
        v181[98] = BYTE2(v31);
        *&v181[96] = v31;
        v148 = *&v194[64];
        *v149 = *&v194[80];
        v146 = *&v194[32];
        v147 = *&v194[48];
        v144 = *v194;
        v145 = *&v194[16];
        *&v149[15] = *&v181[95];
        v206 = v152;
        v207 = v153;
        v208 = v154;
        v209 = v155;
        v204 = v150;
        v205 = v151;
        v211 = v27;
        v210 = v15;
        sub_24A508CE4(&v182, v156);
        sub_24A508CE4(&v182, v156);
        sub_24A50D63C(v194, v156, &qword_27EF50210, &qword_24A635DE0);
        v42 = sub_24A5B00E4(&v204, &v144);
        sub_24A50D6A4(v194, &qword_27EF50210, &qword_24A635DE0);
        sub_24A517ABC(&v182);
        sub_24A50D6A4(v181, &qword_27EF50210, &qword_24A635DE0);
        *&v156[32] = v152;
        *&v156[48] = v153;
        *&v156[64] = v154;
        *&v156[80] = v155;
        *v156 = v150;
        *&v156[16] = v151;
        v156[98] = v27;
        *&v156[96] = v15;
        sub_24A50D6A4(v156, &qword_27EF50210, &qword_24A635DE0);
        if (v42)
        {
          return;
        }

        goto LABEL_27;
      }

      *&v156[32] = v152;
      *&v156[48] = v153;
      *&v156[64] = v154;
      *&v156[80] = v155;
      *v156 = v150;
      *&v156[16] = v151;
      *&v156[96] = v15;
      v156[98] = v27;
      *&v156[99] = *v165;
      v157 = *&v165[16];
      v158 = *&v165[32];
      *&v161[13] = *&v165[93];
      *v161 = *&v165[80];
      v160 = *&v165[64];
      v159 = *&v165[48];
      v163 = BYTE2(v31);
      v162 = v31;
      sub_24A508CE4(&v182, &v144);
      sub_24A50D6A4(v156, &qword_27EF516E8, &qword_24A63AA68);
LABEL_27:
      if ((v24 & 0xFF000000) != 0x4000000)
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v38 = sub_24A62E314();
        sub_24A506EB8(v38, qword_27EF5C118);
        v39 = sub_24A62E2F4();
        v40 = sub_24A62EF24();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_24A503000, v39, v40, "🧭 FMFindingViewCtrl: Playing here haptic", v41, 2u);
          MEMORY[0x24C21BBE0](v41, -1, -1);
        }

        sub_24A50A204(v30, *(v30 + 3));
        sub_24A581798();
      }
    }
  }
}

double sub_24A5C6580()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel);
  v2 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  v3 = type metadata accessor for FMFindingViewState(0);
  v4 = v1;

  v5 = sub_24A62EBE4();

  [v4 setText_];

  v6 = (v2 + *(v3 + 24));
  v7 = v6[1];
  v8 = (*(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView) + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_deviceName);
  *v8 = *v6;
  v8[1] = v7;

  return result;
}

void sub_24A5C6678()
{
  v1 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v1);
  v3 = (v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v4);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType);
  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      v15 = v5;
      v16 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
      swift_beginAccess();
      v17 = (v16 + *(v1 + 32));
      v18 = v17[5];
      v54[3] = v17[4];
      v54[4] = v18;
      *(&v54[4] + 13) = *(v17 + 93);
      v19 = v17[1];
      v53 = *v17;
      v54[0] = v19;
      v20 = v17[3];
      v54[1] = v17[2];
      v54[2] = v20;
      v21 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session);
      v22 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
      swift_beginAccess();
      sub_24A5D0DA8(v21 + v22, v7, type metadata accessor for FMFindingSessionState);
      v23 = *(v7 + 1);
      if (*(v23 + 16))
      {
        v24 = *(v15 + 36);
        sub_24A508CE4(&v53, v52);
        v25 = sub_24A515AC8(&v7[v24]);
        if (v26)
        {
          sub_24A508AE4(*(v23 + 56) + 40 * v25, v51);
          sub_24A508CA0(v51, v52);
          sub_24A5D0E10(v7, type metadata accessor for FMFindingSessionState);
          v27 = (v16 + *(v1 + 60));
          v28 = *v27;
          v29 = v27[1];

          sub_24A508250(&v53, v52, v28, v29);

          sub_24A517ABC(&v53);
          sub_24A508C54(v52);
          return;
        }
      }

      else
      {
        sub_24A508CE4(&v53, v52);
      }

      sub_24A62F444();
      __break(1u);
    }
  }

  else
  {
    v9 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    sub_24A5D0DA8(v9, v3, type metadata accessor for FMFindingViewState);
    v10 = v3 + *(v1 + 32);
    v11 = *(v10 + 24);
    if ((v11 & 0xFC000000 | 0x2000000) == 0x6000000 || (v30 = v11 | (v10[100] << 32), (v30 & 0xFF0000) != 0x40000))
    {
LABEL_3:
      sub_24A5D0E10(v3, type metadata accessor for FMFindingViewState);
      v12 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView);
      v13 = v12 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distance;
      if ((*(v9 + *(v1 + 32) + 96) | 0x2000000u) >> 25 == 3)
      {
        *v13 = 0;
        *(v13 + 8) = 1;
        v14 = v12 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide;
        *v14 = 0;
        *(v14 + 4) = 1;
      }

      else
      {
        *v13 = 0;
        *(v13 + 8) = 1;
        v33 = v12 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide;
        *v33 = 0x2000;
        *(v33 + 4) = 0;
      }

      *(v12 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold) = 2;
      v34 = *(v12 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring);
      sub_24A55C6B4(1.79769313e308);
      *(v34 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      return;
    }

    v31 = *(v10 + 2);
    if (v31 == 1)
    {
      v53 = *v10;
      *(&v54[1] + 8) = *(v10 + 40);
      *(&v54[2] + 8) = *(v10 + 56);
      *(&v54[3] + 8) = *(v10 + 72);
      v32 = *(v10 + 11);
      *&v54[0] = 1;
      *(&v54[4] + 1) = v32;
      *(v54 + 8) = *(v10 + 24);
      LODWORD(v54[5]) = v30;
      BYTE4(v54[5]) = BYTE4(v30);
      sub_24A50D63C(&v53, v52, &qword_27EF4F670, &qword_24A634D70);
      goto LABEL_3;
    }

    v53 = *v10;
    *(&v54[1] + 8) = *(v10 + 40);
    *(&v54[2] + 8) = *(v10 + 56);
    *(&v54[3] + 8) = *(v10 + 72);
    v35 = *(v10 + 11);
    *&v54[0] = v31;
    *(&v54[4] + 1) = v35;
    *(v54 + 8) = *(v10 + 24);
    LOWORD(v54[5]) = v30;
    v36 = sub_24A51A858();
    if ((v37 & 0xFF00000000) == 0x200000000)
    {
      goto LABEL_3;
    }

    v38 = v36;
    v39 = v37;
    v40 = *&v36;
    v41 = *v3;
    sub_24A5D0E10(v3, type metadata accessor for FMFindingViewState);
    if (v41)
    {
      v42 = v39;
    }

    else
    {
      v42 = 1;
    }

    if (v41 >> 14 <= 2)
    {
      v42 = v39;
    }

    v43 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView);
    v44 = v43 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distance;
    *v44 = v38;
    *(v44 + 8) = 0;
    v45 = v43 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_guide;
    *v45 = v42;
    *(v45 + 4) = 0;
    *(v43 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_threshold) = BYTE4(v39) & 1;
    v46 = *(v43 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_distanceSpring);
    v47 = v46 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
    swift_beginAccess();
    v48 = *(v46 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    if (*(v47 + 280) + v48 == 1.79769313e308)
    {
      sub_24A55C6B4(v40);
      *(v46 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v49 = v43 + OBJC_IVAR____TtC11FMFindingUI16FMR1DistanceView_presentedDistance;
      *v49 = v38;
      *(v49 + 8) = 0;
    }

    else
    {
      v50 = v40 - v48;
      *(v47 + 280) = v50;
      *(v47 + 240) = v50;
      *(v47 + 248) = 0;
    }
  }
}

void sub_24A5C6C78(uint64_t a1, int a2)
{
  v138 = a2;
  v3 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v3);
  v137 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v136 = &v134 - v6;
  MEMORY[0x28223BE20](v7);
  v135 = &v134 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = (&v134 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v134 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v134 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v134 - v19;
  v139 = a1;
  v140 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView;
  v21 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
  v22 = a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A5D0DA8(v22, v20, type metadata accessor for FMFindingViewState);
  v141 = v3;
  v23 = *&v20[*(v3 + 32) + 96];
  v24 = v21;
  sub_24A5D0E10(v20, type metadata accessor for FMFindingViewState);
  v25 = *&v24[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v25)
  {
    if ((v23 & 0xFC000000) == 0x4000000)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = 1.0;
    }

    v27 = v25;
    sub_24A5D7C5C(1, v26);
  }

  sub_24A5D0DA8(v22, v17, type metadata accessor for FMFindingViewState);
  v28 = sub_24A627CB8();
  v30 = v29;
  sub_24A5D0E10(v17, type metadata accessor for FMFindingViewState);
  if ((v30 & 1) == 0)
  {
    v31 = *(v139 + v140);
    v32 = *&v31[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    if (v32)
    {
      v33 = *&v28;
      v34 = v31;
      v35 = v32;
      sub_24A5D6718(0, v33);
    }
  }

  sub_24A5D0DA8(v22, v14, type metadata accessor for FMFindingViewState);
  *&v36 = COERCE_DOUBLE(sub_24A627F7C());
  v38 = v37;
  sub_24A5D0E10(v14, type metadata accessor for FMFindingViewState);
  v39 = v138;
  v40 = v140;
  if ((v38 & 1) == 0)
  {
    v41 = *&v36;
    v42 = *(v139 + v140);
    v43 = *&v42[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    v44 = v42;
    if (v43)
    {
      v45 = v43;
      sub_24A5D695C(v39 & 1, v41);
    }

    v42[OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity] = v41 > 0.0;
    sub_24A5F5B78(1);
  }

  sub_24A5D0DA8(v22, v11, type metadata accessor for FMFindingViewState);
  v46 = *v11;
  if (v46 >= 0xC000 && (v46 & 1) == 0)
  {
    goto LABEL_16;
  }

  v47 = v11 + *(v141 + 32);
  v48 = *(v47 + 24);
  if ((v48 & 0xFC000000 | 0x2000000) == 0x6000000)
  {
    goto LABEL_16;
  }

  v60 = v48 | (v47[100] << 32);
  if ((v60 & 0xFF0000) != 0x40000)
  {
    goto LABEL_16;
  }

  v61 = v47[40];
  if (*(v47 + 2) == 1)
  {
    v149 = *v47;
    *v150 = 1;
    *&v150[8] = *(v47 + 24);
    v150[24] = v61;
    *&v150[25] = *(v47 + 41);
    *&v150[41] = *(v47 + 57);
    *&v150[57] = *(v47 + 73);
    *&v150[72] = *(v47 + 11);
    *&v150[80] = v60;
    v150[84] = BYTE4(v60);
    sub_24A50D63C(&v149, v147, &qword_27EF4F670, &qword_24A634D70);
LABEL_16:
    sub_24A5D0E10(v11, type metadata accessor for FMFindingViewState);
    v49 = v139;
    goto LABEL_17;
  }

  if ((v47[40] & 1) == 0)
  {
    goto LABEL_16;
  }

  v129 = *(v47 + 4);
  sub_24A5D0E10(v11, type metadata accessor for FMFindingViewState);
  v49 = v139;
  v130 = *(v139 + v40);
  v131 = *&v130[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v131)
  {
    v132 = v130;
    v133 = v131;
    sub_24A5D6984(v129, 0, 1);
  }

LABEL_17:
  v50 = v135;
  sub_24A5D0DA8(v22, v135, type metadata accessor for FMFindingViewState);
  v51 = sub_24A6282C8();
  v53 = v52;
  sub_24A5D0E10(v50, type metadata accessor for FMFindingViewState);
  v54 = v140;
  v55 = *(v49 + v140);
  if ((v53 & 1) == 0)
  {
    v56 = *&v55[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    if (v56)
    {
      v57 = *&v51;
      v58 = v55;
      v59 = v56;
      sub_24A5D6A2C(v39 & 1, v57);

      v54 = v140;
      v55 = *(v49 + v140);
    }

    else
    {
      v54 = v140;
    }
  }

  v62 = v136;
  sub_24A5D0DA8(v22, v136, type metadata accessor for FMFindingViewState);
  v63 = v55;
  v64 = sub_24A627670();
  v66 = v65;
  sub_24A5D0E10(v62, type metadata accessor for FMFindingViewState);
  v67 = &v63[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedRadiusFactor];
  *v67 = v64;
  v68 = v66 & 1;
  v67[8] = v66 & 1;
  v63[OBJC_IVAR____TtC11FMFindingUI8FMPFView_lastAskedSprungRadiusFactor] = 1;
  v69 = *&v63[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v69)
  {
    v70 = v69;
    sub_24A5D7078(v64, v68, 1);
  }

  v71 = v137;
  sub_24A5D0DA8(v22, v137, type metadata accessor for FMFindingViewState);
  v72 = v71 + *(v141 + 32);
  v73 = *(v72 + 96) | (*(v72 + 100) << 32);
  if ((*(v72 + 96) & 0xFC000000) == 0x4000000 || (*(v72 + 96) & 0xFF0000) != 0x40000)
  {
LABEL_30:
    sub_24A5D0E10(v71, type metadata accessor for FMFindingViewState);
    v78 = *(v49 + v54);
    v78[OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown] = 0;
    v79 = &v78[OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity];
    *v79 = 0;
    v79[8] = 0;
    v80 = *&v78[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    if (v80)
    {
      v81 = v78;
      v82 = v80;
      v83 = 0;
LABEL_39:
      sub_24A5D7928(v83);

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v74 = *(v72 + 56);
  v75 = *(v72 + 57);
  v76 = *(v72 + 80);
  if (*(v72 + 16) == 1)
  {
    v77 = *(v72 + 88);
    v149 = *v72;
    *v150 = 1;
    *&v150[8] = *(v72 + 24);
    *&v150[24] = *(v72 + 40);
    v150[40] = v74;
    v150[41] = v75;
    *&v150[42] = *(v72 + 58);
    *&v150[56] = *(v72 + 72);
    *&v150[64] = v76;
    *&v150[72] = v77;
    *&v150[80] = v73;
    v150[84] = BYTE4(v73);
    sub_24A50D63C(&v149, v147, &qword_27EF4F670, &qword_24A634D70);
    goto LABEL_30;
  }

  if (*(v72 + 56) & 1) != 0 || (v84 = 0.0, (*(v72 + 57)))
  {
    v85 = (v76 + -1.0) * 0.5;
    v86 = 1.0 - fmin(v85, 1.0);
    if (v85 < 0.0)
    {
      v84 = 1.0;
    }

    else
    {
      v84 = v86;
    }
  }

  sub_24A5D0E10(v71, type metadata accessor for FMFindingViewState);
  v78 = *(v49 + v54);
  v78[OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown] = 1;
  v87 = &v78[OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity];
  *v87 = v84;
  *(v87 + 8) = 0;
  v88 = *&v78[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v88)
  {
    v81 = v78;
    v82 = v88;
    v83 = v74 & 1;
    goto LABEL_39;
  }

LABEL_40:
  v81 = v78;
LABEL_41:
  sub_24A5F5B78(v39 & 1);

  v89 = *(v49 + v54);
  v90 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration;
  v91 = *(v49 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration);
  v92 = v22 + *(v141 + 32);
  v93 = *(v92 + 80);
  *&v150[48] = *(v92 + 64);
  *&v150[64] = v93;
  *&v150[77] = *(v92 + 93);
  v94 = *(v92 + 48);
  *&v150[16] = *(v92 + 32);
  *&v150[32] = v94;
  v95 = *(v92 + 16);
  v149 = *v92;
  *v150 = v95;
  v96 = *(v91 + 16);
  v97 = v89;

  if (v96)
  {
    sub_24A508CE4(&v149, v147);
    v98 = sub_24A515A5C(&v149);
    if (v99)
    {
      v100 = *(*(v91 + 56) + 40 * v98 + 16);
      sub_24A517ABC(&v149);

      goto LABEL_46;
    }
  }

  else
  {
    sub_24A508CE4(&v149, v147);
  }

  sub_24A577158(v143);

  sub_24A517ABC(&v149);
  v100 = *&v143[2];
LABEL_46:
  v101 = *&v97[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v101)
  {
    v102 = v101;
    sub_24A5D75E0(v39 & 1, v100);
  }

  v103 = *(v49 + v54);
  v104 = *(v49 + v90);
  v105 = v22 + *(v141 + 32);
  v106 = *(v105 + 80);
  v147[4] = *(v105 + 64);
  v148[0] = v106;
  *(v148 + 13) = *(v105 + 93);
  v107 = *(v105 + 48);
  v147[2] = *(v105 + 32);
  v147[3] = v107;
  v108 = *(v105 + 16);
  v147[0] = *v105;
  v147[1] = v108;
  v109 = *(v104 + 16);
  v110 = v103;

  if (v109)
  {
    sub_24A508CE4(v147, v145);
    v111 = sub_24A515A5C(v147);
    if (v112)
    {
      v113 = *(*(v104 + 56) + 40 * v111 + 8);
      sub_24A517ABC(v147);

      goto LABEL_53;
    }
  }

  else
  {
    sub_24A508CE4(v147, v145);
  }

  sub_24A577158(v144);

  sub_24A517ABC(v147);
  v113 = *&v144[1];
LABEL_53:
  v114 = *&v110[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v114)
  {
    v115 = v114;
    sub_24A5D7498(v39 & 1, v113);
  }

  v116 = *(v49 + v54);
  v117 = *(v49 + v90);
  v118 = v22 + *(v141 + 32);
  v119 = *(v118 + 80);
  v145[4] = *(v118 + 64);
  v146[0] = v119;
  *(v146 + 13) = *(v118 + 93);
  v120 = *(v118 + 48);
  v145[2] = *(v118 + 32);
  v145[3] = v120;
  v121 = *(v118 + 16);
  v145[0] = *v118;
  v145[1] = v121;
  v122 = *(v117 + 16);
  v123 = v116;

  if (v122)
  {
    sub_24A508CE4(v145, v142);
    v124 = sub_24A515A5C(v145);
    if (v125)
    {
      v126 = *(*(v117 + 56) + 40 * v124);
      sub_24A517ABC(v145);

      goto LABEL_60;
    }
  }

  else
  {
    sub_24A508CE4(v145, v142);
  }

  sub_24A577158(v142);

  sub_24A517ABC(v145);
  v126 = *v142;
LABEL_60:
  v127 = *&v123[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v127)
  {
    v128 = v127;
    sub_24A5D7384(v39 & 1, v126);
  }
}

void sub_24A5C7770(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = (a2 + *(type metadata accessor for FMFindingViewState(0) + 32));
  v6 = *(v5 + 4);
  v7 = *(v5 + 5);
  v8 = *(v5 + 2);
  v165 = *(v5 + 3);
  v166 = v6;
  v167[0] = v7;
  *(v167 + 13) = *(v5 + 93);
  v9 = *(v5 + 1);
  v162 = *v5;
  v163 = v9;
  v164 = v8;
  sub_24A577158(&v160);
  v10 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView;
  v11 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
  v11[OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown] = 0;
  v12 = &v11[OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropRGBAColorSpringsIntensity];
  *v12 = 0;
  v12[8] = 0;
  v13 = *&v11[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  v153 = v10;
  v14 = v11;
  if (v13)
  {
    v15 = v13;
    sub_24A5D7928(0);
  }

  v152 = a1;
  sub_24A5F5B78(a1 & 1);

  v16 = objc_opt_self();
  v17 = sub_24A62EBE4();
  v151 = MGGetSInt32Answer();

  v18 = [v16 mainScreen];
  [v18 nativeScale];
  v20 = v19;

  v21 = objc_opt_self();
  v22 = [v21 currentDevice];
  v150 = [v22 userInterfaceIdiom] == 1;

  v23 = [v16 mainScreen];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v169.origin.x = v25;
  v169.origin.y = v27;
  v169.size.width = v29;
  v169.size.height = v31;
  Width = CGRectGetWidth(v169);
  v33 = [v16 mainScreen];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v170.origin.x = v35;
  v170.origin.y = v37;
  v170.size.width = v39;
  v170.size.height = v41;
  v42 = CGRectGetWidth(v170);
  if ((v5[12] & 0xFC0000) != 0 || (v5[12] & 0xFC000000) == 0x4000000)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = *v5;
  }

  v45 = [v21 currentDevice];
  v46 = [v45 userInterfaceIdiom];

  if (v46 == 1)
  {
    v47 = 0.75;
  }

  else
  {
    v47 = 0.45;
  }

  v48 = [v21 currentDevice];
  v49 = [v48 userInterfaceIdiom];

  if (v49 == 1)
  {
    v50 = 0.3;
  }

  else
  {
    v50 = 0.135;
  }

  *&v159[13] = *(v5 + 93);
  v51 = *(v5 + 5);
  v158[4] = *(v5 + 4);
  *v159 = v51;
  v52 = *(v5 + 1);
  v158[0] = *v5;
  v158[1] = v52;
  v53 = *(v5 + 3);
  v158[2] = *(v5 + 2);
  v158[3] = v53;
  if ((*&v159[16] & 0xFF000000) != 0x4000000)
  {
    if ((*&v159[16] & 0xFF000000) == 0x5000000)
    {
      v54 = *&v153[v3];
      v55 = *&v54[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
      if (v55 && (v56 = v54, v57 = v55, sub_24A5D7C5C(1, 1.0), v57, v56, v54 = *&v153[v3], (v58 = *&v54[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene]) != 0))
      {
        v59 = v54;
        v60 = v58;
        sub_24A5D695C(1, 0.0);
      }

      else
      {
        v59 = v54;
      }

      v59[OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity] = 0;
      sub_24A5F5B78(1);

      v88 = *&v153[v3];
      v89 = *&v88[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
      if (v89)
      {
        v90 = v88;
        v91 = v89;
        sub_24A5D6A2C(0, 0.0);

        v92 = *&v153[v3];
        v93 = *&v92[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
        if (v93)
        {
          v94 = v92;
          v95 = v93;
          sub_24A5D75E0(v152 & 1, 0.0);

          v96 = *&v153[v3];
          v97 = *&v96[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
          if (v97)
          {
            v98 = v161;
            v99 = v96;
            v100 = v97;
            sub_24A5D7498(0, v98);

            v101 = *&v153[v3];
            v102 = *&v101[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
            if (v102)
            {
              v103 = v160;
              v154 = v101;
              v85 = v102;
              v86 = v103;
              v87 = 0;
              goto LABEL_36;
            }
          }
        }
      }

      return;
    }

    v61 = v159[18];
    if ((*&v159[16] & 0xFE000000) != 0x6000000)
    {
      v104 = dbl_24A63A930[v150];
      v105 = *&v153[v3];
      v106 = *&v105[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
      if (v106)
      {
        sub_24A508CE4(v158, v156);
        v107 = v105;
        v108 = v106;
        sub_24A5D7C5C(1, 1.0);
      }

      else
      {
        v109 = *(v5 + 5);
        v156[4] = *(v5 + 4);
        v157[0] = v109;
        *(v157 + 13) = *(v5 + 93);
        v110 = *(v5 + 1);
        v156[0] = *v5;
        v156[1] = v110;
        v111 = *(v5 + 3);
        v156[2] = *(v5 + 2);
        v156[3] = v111;
        sub_24A50D63C(v156, v155, &qword_27EF4F670, &qword_24A634D70);
      }

      v112 = *&v153[v3];
      v113 = *&v112[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
      v114 = v112;
      if (v113)
      {
        v115 = v113;
        sub_24A5D695C(v152 & 1, 1.0);
      }

      v112[OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity] = 1;
      v116 = v104 * v151 / v20;
      sub_24A5F5B78(1);

      v117 = *&v153[v3];
      v118 = *&v117[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
      if (v118)
      {
        v119 = v117;
        v120 = v118;
        sub_24A5D6A2C(0, 1.0);

        v121 = *&v153[v3];
        v122 = *&v121[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
        if (v122)
        {
          v123 = v121;
          v124 = v122;
          sub_24A5D75E0(v152 & 1, 1.0);
        }
      }

      v125 = v116 / v42;
      if (v61 <= 1u)
      {
        v126 = 32.0 / Width;
        v127 = (32.0 / Width + v125) * 0.5;
        if (v61)
        {
          v144 = *&v153[v3];
          v145 = *&v144[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
          if (!v145)
          {
            return;
          }

          v146 = v144;
          v147 = v145;
          sub_24A5D7384(1, v127);

          v133 = *&v153[v3];
          v134 = *&v133[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
          if (!v134)
          {
            return;
          }

          v135 = v50 + (v44 + -0.5 + v44 + -0.5) * (v47 - v50);
        }

        else
        {
          v128 = *&v153[v3];
          v129 = *&v128[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
          if (!v129)
          {
            return;
          }

          v130 = v126 + (v127 - v126) * (v44 + v44);
          v131 = v128;
          v132 = v129;
          sub_24A5D7384(1, v130);

          v133 = *&v153[v3];
          v134 = *&v133[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
          if (!v134)
          {
            return;
          }

          v135 = (v44 + v44) * v50 + 0.0;
        }

        v148 = v133;
        v149 = v134;
        sub_24A5D7498(1, v135);

        return;
      }

      if (v61 - 2 >= 2)
      {
        sub_24A62F444();
        __break(1u);
      }

      else
      {
        v136 = *&v153[v3];
        v137 = *&v136[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
        if (v137 && (v138 = v136, v139 = v137, sub_24A5D7384(1, v125), v139, v138, v140 = *&v153[v3], (v141 = *&v140[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene]) != 0))
        {
          v142 = v140;
          v143 = v141;
          sub_24A5D7498(1, v47);

          sub_24A517ABC(v158);
        }

        else
        {
          sub_24A517ABC(v158);
        }
      }

      return;
    }
  }

  v62 = *&v153[v3];
  v63 = *&v62[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v63 && (v64 = v62, v65 = v63, sub_24A5D7C5C(1, 0.0), v65, v64, v62 = *&v153[v3], (v66 = *&v62[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene]) != 0))
  {
    v67 = v62;
    v68 = v66;
    sub_24A5D695C(1, 0.0);
  }

  else
  {
    v67 = v62;
  }

  v67[OBJC_IVAR____TtC11FMFindingUI8FMPFView_useGreenBackdropBlurAndOpacity] = 0;
  sub_24A5F5B78(1);

  v69 = *&v153[v3];
  v70 = *&v69[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
  if (v70)
  {
    v71 = v69;
    v72 = v70;
    sub_24A5D6A2C(0, 0.0);

    v73 = *&v153[v3];
    v74 = *&v73[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    if (v74)
    {
      v75 = v73;
      v76 = v74;
      sub_24A5D75E0(v152 & 1, 0.0);

      v77 = *&v153[v3];
      v78 = *&v77[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
      if (v78)
      {
        v79 = v161;
        v80 = v77;
        v81 = v78;
        sub_24A5D7498(1, v79);

        v82 = *&v153[v3];
        v83 = *&v82[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
        if (v83)
        {
          v84 = v160;
          v154 = v82;
          v85 = v83;
          v86 = v84;
          v87 = 1;
LABEL_36:
          sub_24A5D7384(v87, v86);
        }
      }
    }
  }
}

void sub_24A5C816C()
{
  v1 = sub_24A62E214();
  v2 = *(v1 - 8);
  v118 = v1;
  v119 = v2;
  MEMORY[0x28223BE20](v1);
  v114 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v113 = &v105 - v5;
  MEMORY[0x28223BE20](v6);
  v112 = &v105 - v7;
  v8 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v8 - 8);
  v117 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v105 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session) + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A5D0DA8(v13, v12, type metadata accessor for FMFindingSessionState);
  v14 = *(v12 + 1);
  v15 = *(v14 + 16);
  if (!v15)
  {

    v16 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v115 = v13;
  v116 = v0;
  v16 = sub_24A5E4FC4(v15, 0);
  v17 = sub_24A5CE86C(&v121, (v16 + 4), v15, v14);
  v18 = v121;
  v13 = *(&v122 + 1);
  v19 = v122;
  swift_bridgeObjectRetain_n();
  sub_24A55B6D4(v18);
  if (v17 == v15)
  {
    v13 = v115;
    v0 = v116;
LABEL_5:
    *&v121 = v16;
    sub_24A5CDB08(&v121);

    v20 = v121;
    sub_24A5D0E10(v12, type metadata accessor for FMFindingSessionState);
    v21 = *(v20 + 16);
    if (v21 <= 1 || (v22 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state, swift_beginAccess(), v23 = type metadata accessor for FMFindingViewState(0), *(v22 + *(v23 + 28)) != 1) || (v24 = v23, (v25 = sub_24A50CF2C(v20)) == 0))
    {
      v42 = [*(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer) subviews];
      sub_24A50D7EC(0, &qword_27EF513A8, 0x277D75D18);
      v43 = sub_24A62ED64();

      if (v43 >> 62)
      {
        goto LABEL_56;
      }

      for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
      {
        v45 = 0;
        while (1)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x24C21ACB0](v45, v43);
          }

          else
          {
            if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v46 = *(v43 + 8 * v45 + 32);
          }

          v47 = v46;
          v48 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          [v46 removeFromSuperview];

          ++v45;
          if (v48 == i)
          {
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        ;
      }

LABEL_57:

      v97 = v117;
      sub_24A5D0DA8(v13, v117, type metadata accessor for FMFindingSessionState);
      sub_24A50D63C(v97 + 24, &v121, &unk_27EF522E0, qword_24A637660);
      v98 = *(&v122 + 1);
      sub_24A50D6A4(&v121, &unk_27EF522E0, qword_24A637660);
      if (v98)
      {
        v99 = 0;
      }

      else
      {
        v99 = *(*(v97 + 16) + 16) > 1uLL;
      }

      sub_24A5D0E10(v97, type metadata accessor for FMFindingSessionState);
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v100 = sub_24A62E314();
      sub_24A506EB8(v100, qword_27EF5C118);

      v101 = sub_24A62E2F4();
      v102 = sub_24A62EF34();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 134218240;
        v104 = *(v20 + 16);

        *(v103 + 4) = v104;

        *(v103 + 12) = 1024;
        *(v103 + 14) = v99;
        _os_log_impl(&dword_24A503000, v101, v102, "FMFindingViewCtrl: Hiding picker view, findables count: %ld shouldShowPartPicker: %{BOOL}d", v103, 0x12u);
        MEMORY[0x24C21BBE0](v103, -1, -1);
      }

      else
      {
      }

      return;
    }

    v27 = v25;
    v111 = v24;
    v117 = v22;
    v19 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerView;
    v28 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerView);
    if (!v28)
    {
LABEL_43:
      v73 = v20;
      v74 = v0;
      v75 = v26;
      v76 = (*(v26 + 40))(v73, v27, v26);
      [v76 setTranslatesAutoresizingMaskIntoConstraints_];
      [v76 addTarget:v74 action:sel_handlePartPickerWithSender_ forControlEvents:4096];
      [*(v74 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer) addArrangedSubview_];
      v77 = *v19;
      *v19 = v76;
      *(v19 + 8) = v75;
      v16 = v76;

      if (qword_27EF4E9A0 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_67;
    }

    v109 = v26;
    v110 = v25;
    v115 = v13;
    v116 = v0;
    v29 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    v31 = *(v29 + 32);
    v106 = v28;
    v107 = ObjectType;
    v32 = v31(ObjectType, v29);
    v33 = *(v32 + 16);
    v34 = MEMORY[0x277D84F90];
    v108 = v19;
    if (v33)
    {
      v120 = MEMORY[0x277D84F90];
      sub_24A58D8A8(0, v33, 0);
      v105 = v32;
      v35 = v32 + 32;
      v36 = v120;
      v37 = v112;
      do
      {
        sub_24A508AE4(v35, &v121);
        v38 = *(&v122 + 1);
        v39 = v123;
        sub_24A50A204(&v121, *(&v122 + 1));
        (*(v39 + 16))(v38, v39);
        sub_24A508C54(&v121);
        v120 = v36;
        v41 = *(v36 + 16);
        v40 = *(v36 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_24A58D8A8((v40 > 1), v41 + 1, 1);
          v36 = v120;
        }

        *(v36 + 16) = v41 + 1;
        (*(v119 + 32))(v36 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v41, v37, v118);
        v35 += 40;
        --v33;
      }

      while (v33);

      v34 = MEMORY[0x277D84F90];
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    v120 = v34;
    sub_24A58D8A8(0, v21, 0);
    v49 = v120;
    v50 = v20 + 32;
    v51 = v113;
    do
    {
      sub_24A508AE4(v50, &v121);
      v52 = *(&v122 + 1);
      v53 = v123;
      sub_24A50A204(&v121, *(&v122 + 1));
      (*(v53 + 16))(v52, v53);
      sub_24A508C54(&v121);
      v120 = v49;
      v55 = *(v49 + 16);
      v54 = *(v49 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_24A58D8A8((v54 > 1), v55 + 1, 1);
        v49 = v120;
      }

      *(v49 + 16) = v55 + 1;
      (*(v119 + 32))(v49 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v55, v51, v118);
      v50 += 40;
      --v21;
    }

    while (v21);
    v56 = sub_24A5C8E98(v36, v49);

    v27 = v110;
    v13 = v115;
    v19 = v108;
    if (v107 != v110)
    {

      v0 = v116;
      v26 = v109;
      goto LABEL_40;
    }

    v0 = v116;
    v57 = v109;
    if (v56)
    {
      v58 = v106;
      [v106 removeFromSuperview];
      v59 = *v19;
      *v19 = 0;
      *(v19 + 8) = 0;

      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v60 = sub_24A62E314();
      sub_24A506EB8(v60, qword_27EF5C118);
      v61 = v58;
      v62 = sub_24A62E2F4();
      v63 = sub_24A62EF64();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v121 = v65;
        *v64 = 136315394;
        v66 = sub_24A62F7B4();
        v68 = sub_24A509BA8(v66, v67, &v121);

        *(v64 + 4) = v68;
        *(v64 + 12) = 2080;
        v69 = sub_24A62F7B4();
        v71 = sub_24A509BA8(v69, v70, &v121);

        *(v64 + 14) = v71;
        v27 = v110;
        _os_log_impl(&dword_24A503000, v62, v63, "FMFindingViewCtrl: Replacing picker view, old: %s new: %s", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21BBE0](v65, -1, -1);
        MEMORY[0x24C21BBE0](v64, -1, -1);

        v26 = v109;
        v0 = v116;
        goto LABEL_40;
      }

      v0 = v116;
    }

    else
    {
    }

    v26 = v57;
LABEL_40:
    if (*v19)
    {

      v72 = *v19;
      if (!*v19)
      {
        return;
      }

LABEL_47:
      v86 = *(v19 + 8);
      v87 = *(v13 + 8);
      v88 = v118;
      v89 = v119;
      v90 = v114;
      (*(v119 + 16))(v114, v117 + *(v111 + 20), v118);
      if (*(v87 + 16))
      {
        v91 = v72;

        v92 = sub_24A515AC8(v90);
        if (v93)
        {
          sub_24A508AE4(*(v87 + 56) + 40 * v92, &v121);
          (*(v89 + 8))(v90, v88);

LABEL_53:
          v96 = swift_getObjectType();
          (*(v86 + 16))(&v121, v96, v86);

          return;
        }

        (*(v89 + 8))(v90, v88);
      }

      else
      {
        v94 = *(v89 + 8);
        v95 = v72;
        v94(v90, v88);
      }

      v123 = 0;
      v121 = 0u;
      v122 = 0u;
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_67:
  swift_once();
LABEL_44:
  v78 = sub_24A62E314();
  sub_24A506EB8(v78, qword_27EF5C118);
  v79 = sub_24A62E2F4();
  v80 = sub_24A62EF64();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v121 = v82;
    *v81 = 136315138;
    v83 = sub_24A62F7B4();
    v85 = sub_24A509BA8(v83, v84, &v121);

    *(v81 + 4) = v85;
    _os_log_impl(&dword_24A503000, v79, v80, "🧭 FMFindingViewCtrl: Installed new picker view: %s", v81, 0xCu);
    sub_24A508C54(v82);
    MEMORY[0x24C21BBE0](v82, -1, -1);
    MEMORY[0x24C21BBE0](v81, -1, -1);
  }

  v72 = *v19;
  if (*v19)
  {
    goto LABEL_47;
  }
}

uint64_t sub_24A5C8E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_24A5D0C64(&qword_27EF501E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v22 = sub_24A62EBD4();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_24A5C90AC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session) + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v2 = (v1 >> 13) & 3;
  v3 = v1 >> 8;
  v4 = (v1 >> 8) & 0xFFFFFF9F;
  if ((v1 & 0x8000) != 0)
  {
    v5 = (v1 >> 8) & 0x1F;
  }

  else
  {
    v5 = *(*(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session) + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  }

  if (v2 == 1)
  {
    v5 = v4;
  }

  if (!v2)
  {
    v5 = v3;
  }

  if (v5 == 2)
  {

    sub_24A59232C(1);
  }

  else
  {
    v6 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if (v7 == 2 || (v7 & 1) == 0)
    {
      v12 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
      swift_beginAccess();
      v13 = *(v12 + *(type metadata accessor for FMFindingViewState(0) + 32) + 96);
      if ((v13 & 0xFE000000) == 0x4000000)
      {
        v14 = 0;
      }

      else
      {
        if ((v13 & 0xFE000000 | 0x1000000) == 0x7000000)
        {
          return;
        }

        v14 = 1;
      }

      sub_24A59232C(v14);
    }

    else
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v8 = sub_24A62E314();
      sub_24A506EB8(v8, qword_27EF5C118);
      v9 = sub_24A62E2F4();
      v10 = sub_24A62EF64();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_24A503000, v9, v10, "🧭 FMFindingViewCtrl: Ignoring play sound button state update since play sound action is in progress.", v11, 2u);
        MEMORY[0x24C21BBE0](v11, -1, -1);
      }
    }
  }
}

void sub_24A5C92A4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMFindingViewState(0);
  if (sub_24A62E1E4())
  {
    v4 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    v5 = v4 + *(v3 + 32);
    *&v60[13] = *(v5 + 93);
    v6 = *(v5 + 80);
    v59 = *(v5 + 64);
    *v60 = v6;
    v7 = *(v5 + 16);
    v55 = *v5;
    v56 = v7;
    v8 = *(v5 + 48);
    v57 = *(v5 + 32);
    v58 = v8;
    if ((*&v60[16] & 0xFF000000) == 0x4000000)
    {
      v13 = v2;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v14 = sub_24A62E314();
      sub_24A506EB8(v14, qword_27EF5C118);
      v15 = sub_24A62E2F4();
      v16 = sub_24A62EF24();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_24A503000, v15, v16, "FMFindingViewCtrl: Requesting scatter haptic.", v17, 2u);
        MEMORY[0x24C21BBE0](v17, -1, -1);
      }

      v18 = (v13 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
      swift_beginAccess();
      sub_24A50A204(v18, v18[3]);
      sub_24A57F510();
      goto LABEL_17;
    }

    if ((*&v60[16] & 0xFF000000) == 0x5000000)
    {
      v9 = (v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
      swift_beginAccess();
      sub_24A50A204(v9, v9[3]);
      sub_24A581E4C();
      return;
    }

    if ((*&v60[16] & 0xFE000000) != 0x6000000)
    {
      if (((*&v60[16] & 0xFFFF0000) >> 16) == 3)
      {
        v19 = (v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
        swift_beginAccess();
        sub_24A50A204(v19, v19[3]);
        v66 = v56;
        v67 = v57;
        v65 = v55;
        *(v70 + 13) = *&v60[13];
        v69 = v59;
        v70[0] = *v60;
        v68 = v58;
        sub_24A50D63C(&v65, v63, &qword_27EF4F670, &qword_24A634D70);
        sub_24A57FDA8();
LABEL_17:
        sub_24A517ABC(&v55);
        return;
      }

      if (v60[19] == 2)
      {
        v21 = (v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
        swift_beginAccess();
        sub_24A50A204(v21, v21[3]);
        v65 = v55;
        v66 = v56;
        *(v70 + 13) = *&v60[13];
        v69 = v59;
        v70[0] = *v60;
        v67 = v57;
        v68 = v58;
        sub_24A50D63C(&v65, v63, &qword_27EF4F670, &qword_24A634D70);
        v22 = v2;
        sub_24A581808();
      }

      else
      {
        if (v60[19] != 1)
        {
          v23 = *(v5 + 80);
          v69 = *(v5 + 64);
          v70[0] = v23;
          *(v70 + 13) = *(v5 + 93);
          v24 = *(v5 + 16);
          v65 = *v5;
          v66 = v24;
          v25 = *(v5 + 48);
          v67 = *(v5 + 32);
          v68 = v25;
          sub_24A50D63C(&v65, v63, &qword_27EF4F670, &qword_24A634D70);
          goto LABEL_31;
        }

        if (v60[18] == 1)
        {
          v26 = (v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
          swift_beginAccess();
          sub_24A50A204(v26, v26[3]);
          v65 = v55;
          v66 = v56;
          *(v70 + 13) = *&v60[13];
          v69 = v59;
          v70[0] = *v60;
          v67 = v57;
          v68 = v58;
          sub_24A50D63C(&v65, v63, &qword_27EF4F670, &qword_24A634D70);
          v22 = v2;
          sub_24A581DDC();
        }

        else
        {
          if (!v60[18])
          {
            v20 = (v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
            swift_beginAccess();
            sub_24A50A204(v20, v20[3]);
            memset(v52, 0, sizeof(v52));
            v65 = v55;
            v66 = v56;
            *(v70 + 13) = *&v60[13];
            v69 = v59;
            v70[0] = *v60;
            v67 = v57;
            v68 = v58;
            sub_24A50D63C(&v65, v63, &qword_27EF4F670, &qword_24A634D70);
            sub_24A57FE58(v52);
            sub_24A50D6A4(v52, &unk_27EF50780, &qword_24A638470);
            goto LABEL_31;
          }

          v27 = (v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
          swift_beginAccess();
          sub_24A50A204(v27, v27[3]);
          v65 = v55;
          v66 = v56;
          *(v70 + 13) = *&v60[13];
          v69 = v59;
          v70[0] = *v60;
          v67 = v57;
          v68 = v58;
          sub_24A50D63C(&v65, v63, &qword_27EF4F670, &qword_24A634D70);
          v22 = v2;
          sub_24A581798();
        }
      }

      v2 = v22;
LABEL_31:
      v28 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController;
      swift_beginAccess();
      sub_24A508AE4(v2 + v28, v54);
      sub_24A50A204(v54, v54[3]);
      v29 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration;
      v30 = v2;
      v31 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration);
      v32 = v4 + *(v3 + 32);
      *(v70 + 13) = *(v32 + 93);
      v33 = *(v32 + 80);
      v69 = *(v32 + 64);
      v70[0] = v33;
      v34 = *(v32 + 48);
      v67 = *(v32 + 32);
      v68 = v34;
      v35 = *(v32 + 16);
      v65 = *v32;
      v66 = v35;
      v36 = *(v31 + 16);

      if (v36)
      {
        sub_24A508CE4(&v65, v63);
        v37 = sub_24A515A5C(&v65);
        if (v38)
        {
          v39 = *(*(v31 + 56) + 40 * v37 + 24);
          sub_24A517ABC(&v65);

          goto LABEL_36;
        }
      }

      else
      {
        sub_24A508CE4(&v65, v63);
      }

      sub_24A577158(v61);

      sub_24A517ABC(&v65);
      v39 = v62;
LABEL_36:
      v40 = *(v30 + v29);
      v41 = v4 + *(v3 + 32);
      v42 = *(v41 + 80);
      v63[4] = *(v41 + 64);
      v64[0] = v42;
      *(v64 + 13) = *(v41 + 93);
      v43 = *(v41 + 48);
      v63[2] = *(v41 + 32);
      v63[3] = v43;
      v44 = *(v41 + 16);
      v63[0] = *v41;
      v63[1] = v44;
      v45 = *(v40 + 16);

      if (v45)
      {
        sub_24A508CE4(v63, v52);
        v46 = sub_24A515A5C(v63);
        if (v47)
        {
          v48 = *(*(v40 + 56) + 40 * v46 + 32);
          sub_24A517ABC(v63);

          v49 = v48;
LABEL_41:
          memset(v51, 0, sizeof(v51));
          sub_24A580A00(v51, v39, v49);
          sub_24A517ABC(&v55);
          sub_24A50D6A4(v51, &unk_27EF50780, &qword_24A638470);
          sub_24A508C54(v54);
          return;
        }
      }

      else
      {
        sub_24A508CE4(v63, v52);
      }

      sub_24A577158(v52);

      sub_24A517ABC(v63);
      v49 = v53;
      goto LABEL_41;
    }
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v10 = sub_24A62E314();
    sub_24A506EB8(v10, qword_27EF5C118);
    oslog = sub_24A62E2F4();
    v11 = sub_24A62EF24();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24A503000, oslog, v11, "FMFindingViewCtrl: Not playing haptics when switching between buds.", v12, 2u);
      MEMORY[0x24C21BBE0](v12, -1, -1);
    }
  }
}

void sub_24A5C9A78(uint64_t a1, __int16 *a2)
{
  v5 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v5);
  v7 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  v9 = v5[8];
  v10 = *(v8 + v9 + 96) & 0xFF000000;
  if (v10 == 0x4000000)
  {
    v11 = (v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
    swift_beginAccess();
    sub_24A50A204(v11, v11[3]);
    sub_24A581E4C();
    return;
  }

  if ((*(v8 + v9 + 96) & 0xFD000000) != 0x5000000 && v10 != 100663296)
  {
    v13 = *a2;
    v14 = (v13 >> 13) & 3;
    if (!v14 || v14 != 1 && (v13 & 0x80000000) != 0)
    {
      v15 = *(a2 + v5[11]);
      v80 = v2;
      if (v15)
      {
LABEL_11:
        *&v16 = COERCE_DOUBLE(sub_24A627670());
        if (v18)
        {
          return;
        }

        v19 = *&v16;
        sub_24A6279B4(v17);
        if (v20)
        {
          return;
        }

        v21 = v19;
        v22 = sub_24A62715C();
        if (v22 <= 1)
        {
          v23 = v80;
        }

        else
        {
          if (v22 == 2)
          {
            v24 = "compassReachMode";
            v23 = v80;
          }

          else
          {
            v23 = v80;
            if (v22 != 3)
            {
              if (*(a1 + v5[11]) == 1 || (v48 = v5[14], (*(a1 + v48) & 1) != 0))
              {
                v47 = 0;
                v49 = 0;
                v50 = 0;
                if (v15)
                {
                  goto LABEL_91;
                }

                goto LABEL_74;
              }

              if (v15)
              {
                v50 = 0;
                v47 = 0;
                goto LABEL_81;
              }

              v47 = 0;
LABEL_88:
              v50 = *(a2 + v48) ^ 1;
              goto LABEL_89;
            }

            v24 = "R_CANT_RECONNECT_ERROR";
          }

          if (0x800000024A63DD40 == (v24 | 0x8000000000000000))
          {

            if (*(a1 + v5[11]) & 1) != 0 || (v46 = v5[14], (*(a1 + v46)))
            {
              v47 = 1;
              if ((v15 & 1) == 0)
              {
                goto LABEL_74;
              }

              goto LABEL_70;
            }

            if (v15)
            {
              v50 = 0;
              v49 = 0;
              v47 = 1;
              goto LABEL_82;
            }

            v50 = *(a2 + v46) ^ 1;
            v47 = 1;
LABEL_89:
            v49 = v50;
            if (v21 <= 0.0)
            {
              goto LABEL_91;
            }

LABEL_90:
            v49 = 0;
            goto LABEL_91;
          }
        }

        v47 = sub_24A62F634();

        if (*(a1 + v5[11]) & 1) != 0 || (v48 = v5[14], (*(a1 + v48)))
        {
          if (v15)
          {
LABEL_70:
            v49 = 0;
            v50 = 0;
LABEL_91:
            v51 = (v23 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
            swift_beginAccess();
            v52 = sub_24A50A204(v51, v51[3]);
            v53 = *v52;
            v54 = *v52 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod;
            *v54 = 0;
            *(v54 + 8) = 1;
            v82 = 0u;
            *v83 = 0u;
            v55 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
            swift_beginAccess();
            sub_24A582118(&v82, v53 + v55);
            swift_endAccess();
            if (v47)
            {
              *(v53 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) = 1;
            }

            if (1.0 - v21 <= 2.22044605e-16)
            {
              v57 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
              if (*(v53 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem))
              {

                sub_24A62EB34();
              }

              *(v53 + v57) = 0;

              *(v53 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) = 0;
            }

            else
            {
              v56 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
              if (*(v53 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem))
              {

                sub_24A62EB34();
              }

              *(v53 + v56) = 0;

              v58 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic;
              if ((*(v53 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) & 1) == 0)
              {
                sub_24A57F864(1);
                *(v53 + v58) = 1;
              }

              if (v50)
              {
                sub_24A57FC4C();
                v59 = v21;
                sub_24A57CC58(v49 & 1, v59);
              }
            }

            return;
          }

LABEL_74:
          v49 = *(a2 + v5[14]) ^ 1;
          v50 = v49;
          goto LABEL_91;
        }

        if (v15)
        {
          v50 = 0;
LABEL_81:
          v49 = 0;
LABEL_82:
          if (v21 <= 0.0)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }

        goto LABEL_88;
      }

      v25 = a2 + v9;
      v26 = *(a2 + v9 + 96) | (*(a2 + v9 + 100) << 32);
      if ((v26 & 0xFC000000) != 0x4000000 && (v26 & 0xFF0000) == 0x40000)
      {
        v27 = v25[40];
        v28 = v25[56];
        v29 = v25[57];
        if (*(v25 + 2) == 1)
        {
          v82 = *v25;
          *v83 = 1;
          *&v83[8] = *(v25 + 24);
          v84 = v27;
          *v85 = *(v25 + 41);
          *&v85[7] = *(v25 + 6);
          v86 = v28;
          v87 = v29;
          *&v89[14] = *(v25 + 11);
          *v89 = *(v25 + 74);
          v88 = *(v25 + 58);
          v91 = BYTE4(v26);
          v90 = v26;
          sub_24A50D63C(&v82, v81, &qword_27EF4F670, &qword_24A634D70);
          goto LABEL_21;
        }

        if (v25[40])
        {
          if (v25[56])
          {
            if (v25[57])
            {
              goto LABEL_11;
            }

            v33 = sub_24A62715C();
            v79[1] = "compassReachMode";
            if (v33 <= 1)
            {
              v34 = v80;
            }

            else
            {
              if (v33 == 2)
              {
                v35 = "compassReachMode";
                v34 = v80;
              }

              else
              {
                v34 = v80;
                if (v33 != 3)
                {
LABEL_111:
                  v62 = sub_24A62715C();
                  if (v62 > 1)
                  {
                    if (v62 == 2)
                    {
                      v63 = v80;
                    }

                    else
                    {
                      v63 = v80;
                      if (v62 != 3)
                      {
                        goto LABEL_129;
                      }
                    }

LABEL_128:
                    v66 = sub_24A62F634();

                    if ((v66 & 1) == 0)
                    {
LABEL_129:
                      sub_24A5D0DA8(v8, v7, type metadata accessor for FMFindingViewState);
                      v67 = sub_24A6272B0();
                      v68 = v80;
                      v69 = *&v67;
                      v71 = v70;
                      v73 = v72;
                      sub_24A5D0E10(v7, type metadata accessor for FMFindingViewState);
                      if ((v73 & 1) == 0)
                      {
                        v74 = v69;
                        v75 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController;
                        swift_beginAccess();
                        sub_24A508AE4(v68 + v75, &v82);
                        sub_24A50A204(&v82, *&v83[8]);
                        v81[3] = v5;
                        v76 = sub_24A5292E8(v81);
                        sub_24A5D0DA8(v8, v76, type metadata accessor for FMFindingViewState);
                        sub_24A580A00(v81, v74, v71);
                        sub_24A50D6A4(v81, &unk_27EF50780, &qword_24A638470);
                        sub_24A508C54(&v82);
                      }

                      return;
                    }

LABEL_133:
                    v78 = (v63 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
                    swift_beginAccess();
                    sub_24A50A204(v78, v78[3]);
                    sub_24A57F4E4();
                    return;
                  }

                  if (v62)
                  {
                    v63 = v80;
                    goto LABEL_128;
                  }

LABEL_125:

                  v63 = v80;
                  goto LABEL_133;
                }

                v35 = "R_CANT_RECONNECT_ERROR";
              }

              if (0x800000024A63DD40 == (v35 | 0x8000000000000000))
              {

LABEL_110:
                v61 = (v34 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
LABEL_117:
                swift_beginAccess();
                sub_24A50A204(v61, v61[3]);
                v82 = 0u;
                *v83 = 0u;
                sub_24A580B94(&v82);
LABEL_54:
                sub_24A50D6A4(&v82, &unk_27EF50780, &qword_24A638470);
                return;
              }
            }

            v60 = sub_24A62F634();

            if (v60)
            {
              goto LABEL_110;
            }

            goto LABEL_111;
          }

          if (v25[57])
          {
            goto LABEL_11;
          }

          v43 = sub_24A62715C();
          if (v43 <= 1)
          {
            v44 = v80;
          }

          else
          {
            if (v43 == 2)
            {
              v45 = "compassReachMode";
              v44 = v80;
            }

            else
            {
              v44 = v80;
              if (v43 != 3)
              {
                goto LABEL_118;
              }

              v45 = "R_CANT_RECONNECT_ERROR";
            }

            if (0x800000024A63DD40 == (v45 | 0x8000000000000000))
            {

LABEL_116:
              v61 = (v44 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
              goto LABEL_117;
            }
          }

          v64 = sub_24A62F634();

          if (v64)
          {
            goto LABEL_116;
          }

LABEL_118:
          v65 = sub_24A62715C();
          if (v65 <= 1)
          {
            if (!v65)
            {
              goto LABEL_125;
            }
          }

          else if (v65 != 2)
          {
            v63 = v80;
            if (v65 != 3)
            {
              return;
            }

LABEL_132:
            v77 = sub_24A62F634();

            if ((v77 & 1) == 0)
            {
              return;
            }

            goto LABEL_133;
          }

          v63 = v80;
          goto LABEL_132;
        }

        if (v25[57])
        {
          goto LABEL_11;
        }
      }

LABEL_21:
      v30 = sub_24A62715C();
      if (v30 <= 1)
      {
        v31 = v80;
      }

      else
      {
        if (v30 == 2)
        {
          v32 = "compassReachMode";
          v31 = v80;
        }

        else
        {
          v31 = v80;
          if (v30 != 3)
          {
            goto LABEL_38;
          }

          v32 = "R_CANT_RECONNECT_ERROR";
        }

        if (0x800000024A63DD40 == (v32 | 0x8000000000000000))
        {

LABEL_37:
          v37 = (v31 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
          swift_beginAccess();
          sub_24A50A204(v37, v37[3]);
          v82 = 0u;
          *v83 = 0u;
          sub_24A580B94(&v82);
          v38 = v80;
          sub_24A50D6A4(&v82, &unk_27EF50780, &qword_24A638470);
LABEL_52:
          if ((*(a1 + v5[8] + 96) & 0xFE000000 | 0x1000000) != 0x5000000)
          {
            return;
          }

          v42 = (v38 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
          swift_beginAccess();
          sub_24A50A204(v42, v42[3]);
          v82 = 0u;
          *v83 = 0u;
          sub_24A57FE58(&v82);
          goto LABEL_54;
        }
      }

      v36 = sub_24A62F634();

      if (v36)
      {
        goto LABEL_37;
      }

LABEL_38:
      v39 = sub_24A62715C();
      if (v39 <= 1)
      {
        if (!v39)
        {

          goto LABEL_51;
        }
      }

      else if (v39 != 2)
      {
        v38 = v80;
        if (v39 != 3)
        {
LABEL_49:
          if (*(a1 + v5[8] + 99) << 24 == 83886080)
          {
            goto LABEL_52;
          }

          v41 = (v38 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
          swift_beginAccess();
          sub_24A50A204(v41, v41[3]);
          sub_24A57F510();
LABEL_51:
          v38 = v80;
          goto LABEL_52;
        }

LABEL_48:
        v40 = sub_24A62F634();

        if (v40)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }

      v38 = v80;
      goto LABEL_48;
    }
  }
}

void sub_24A5CA748(uint64_t a1, uint64_t a2)
{
  v5 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v33 - v6;
  v8 = type metadata accessor for FMFindingViewState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  v13 = *(v2 + v12);
  v14 = (v13 >> 13) & 3;
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = sub_24A62DF44();
      v34 = v15;
      v35 = sub_24A5D0C64(&qword_27EF4FE90, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
      v16 = sub_24A5292E8(v33);
      (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D089D0], v15);
      LOBYTE(v15) = MEMORY[0x24C219850](v33);
      sub_24A508C54(v33);
      if (v15)
      {
        return;
      }

      goto LABEL_7;
    }

    if ((v13 & 0x8000) == 0)
    {
      if ((v13 & 0x100) != 0)
      {
        return;
      }

LABEL_7:
      if (a1)
      {
        v17 = *(a1 + OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_isTap);
        if (v17 != 2 && (v17 & 1) != 0)
        {
          v18 = v2;
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v19 = sub_24A62E314();
          sub_24A506EB8(v19, qword_27EF5C118);
          v20 = sub_24A62E2F4();
          v21 = sub_24A62EF24();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&dword_24A503000, v20, v21, "FMFindingViewCtrl: Pulsing BT node.", v22, 2u);
            MEMORY[0x24C21BBE0](v22, -1, -1);
          }

          v23 = *(v18 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
          v24 = *&v23[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
          if (v24)
          {
            v25 = v23;
            v26 = v24;
            sub_24A5D6DB0();
          }
        }
      }

      return;
    }
  }

  sub_24A50D63C(a2, v33, &unk_27EF50780, &qword_24A638470);
  if (!v34)
  {
    sub_24A50D6A4(v33, &unk_27EF50780, &qword_24A638470);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_23;
  }

  v27 = swift_dynamicCast();
  (*(v9 + 56))(v7, v27 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_23:
    sub_24A50D6A4(v7, &qword_27EF4FA80, &qword_24A634D40);
    return;
  }

  sub_24A5D1350(v7, v11, type metadata accessor for FMFindingViewState);
  sub_24A6272B0();
  if ((v28 & 1) == 0)
  {
    v29 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView);
    v30 = *&v29[OBJC_IVAR____TtC11FMFindingUI8FMPFView_skScene];
    if (v30)
    {
      v31 = v29;
      v32 = v30;
      sub_24A5D6AD4(1, 0);
    }
  }

  sub_24A5D0E10(v11, type metadata accessor for FMFindingViewState);
}

uint64_t sub_24A5CABB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = sub_24A5D15F0(a3, a4);
  *(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown) = 0;
  if (a5)
  {
    return a5(result);
  }

  return result;
}

uint64_t sub_24A5CAC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  *(a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown) = 0;
  if (a3)
  {
    return a3(a1);
  }

  return a1;
}

void sub_24A5CAC44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A62E214();
  v174 = *(v4 - 8);
  v175 = v4;
  MEMORY[0x28223BE20](v4);
  v171 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v172 = &v166 - v7;
  MEMORY[0x28223BE20](v8);
  v170 = &v166 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v166 - v11;
  MEMORY[0x28223BE20](v13);
  v169 = &v166 - v14;
  MEMORY[0x28223BE20](v15);
  v173 = &v166 - v16;
  v17 = type metadata accessor for FMFindingSession.Error(0);
  MEMORY[0x28223BE20](v17);
  v176 = (&v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = &v166 - v20;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v22 = sub_24A62E314();
  sub_24A506EB8(v22, qword_27EF5C118);
  sub_24A5D0DA8(a1, v21, type metadata accessor for FMFindingSession.Error);
  v23 = sub_24A62E2F4();
  v24 = sub_24A62EF64();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v168 = v1;
    v26 = v25;
    v27 = swift_slowAlloc();
    aBlock = v27;
    *v26 = 136315138;
    sub_24A5D0C64(&qword_27EF4F668, type metadata accessor for FMFindingSession.Error, &unk_24A63C080);
    v28 = sub_24A62F6A4();
    v167 = a1;
    v29 = v12;
    v31 = v30;
    sub_24A5D0E10(v21, type metadata accessor for FMFindingSession.Error);
    v32 = sub_24A509BA8(v28, v31, &aBlock);
    v12 = v29;
    a1 = v167;

    *(v26 + 4) = v32;
    _os_log_impl(&dword_24A503000, v23, v24, "🧭 FMFindingViewCtrl: Encountered error: %s.", v26, 0xCu);
    sub_24A508C54(v27);
    MEMORY[0x24C21BBE0](v27, -1, -1);
    v33 = v26;
    v2 = v168;
    MEMORY[0x24C21BBE0](v33, -1, -1);
  }

  else
  {

    sub_24A5D0E10(v21, type metadata accessor for FMFindingSession.Error);
  }

  v34 = a1;
  v35 = v176;
  sub_24A5D0DA8(v34, v176, type metadata accessor for FMFindingSession.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        return;
      }

      v73 = sub_24A62E2F4();
      v74 = sub_24A62EF64();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_24A503000, v73, v74, "🧭 FMFindingViewCtrl: Showing low battery alert.", v75, 2u);
        MEMORY[0x24C21BBE0](v75, -1, -1);
      }

      sub_24A5D2200(0xD000000000000014, 0x800000024A63DCF0);
      sub_24A5D2200(0xD000000000000026, 0x800000024A63DD10);
      v76 = swift_allocObject();
      *(v76 + 16) = v2;
      v77 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount];
      if (v77 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = v77 + 1;
        v78 = v2;
        v79 = sub_24A62EBE4();

        v80 = sub_24A62EBE4();

        v67 = [objc_opt_self() alertControllerWithTitle:v79 message:v80 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v81 = swift_allocObject();
        v81[2] = v78;
        v81[3] = sub_24A5D0D2C;
        v81[4] = v76;
        v69 = v78;

        v70 = sub_24A62EBE4();

        v182 = sub_24A5D1CD0;
        v183 = v81;
        aBlock = MEMORY[0x277D85DD0];
        v179 = 1107296256;
        v180 = sub_24A5BE9EC;
        v181 = &unk_285DA8B18;
        v71 = _Block_copy(&aBlock);

        v72 = [objc_opt_self() actionWithTitle:v70 style:0 handler:v71];
        goto LABEL_36;
      }

      v143 = v2;

      v148 = swift_allocObject();
      *(v148 + 16) = v143;
      v182 = sub_24A5D1C80;
      v183 = v148;
      aBlock = MEMORY[0x277D85DD0];
      v179 = 1107296256;
      v145 = &unk_285DA8AC8;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v97 = sub_24A62E2F4();
      v98 = sub_24A62EF64();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_24A503000, v97, v98, "🧭 FMFindingViewCtrl: Showing switch to precise finding required error alert.", v99, 2u);
        MEMORY[0x24C21BBE0](v99, -1, -1);
      }

      sub_24A5D2200(0xD00000000000002ALL, 0x800000024A63DC90);
      sub_24A5D2200(0xD00000000000002CLL, 0x800000024A63DCC0);
      v100 = swift_allocObject();
      *(v100 + 16) = v2;
      v101 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount];
      if (v101 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = v101 + 1;
        v102 = v2;
        v103 = sub_24A62EBE4();

        v104 = sub_24A62EBE4();

        v67 = [objc_opt_self() alertControllerWithTitle:v103 message:v104 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v105 = swift_allocObject();
        v105[2] = v102;
        v105[3] = sub_24A5D0CEC;
        v105[4] = v100;
        v69 = v102;

        v70 = sub_24A62EBE4();

        v182 = sub_24A5D1CD0;
        v183 = v105;
        aBlock = MEMORY[0x277D85DD0];
        v179 = 1107296256;
        v180 = sub_24A5BE9EC;
        v181 = &unk_285DA8A50;
        v71 = _Block_copy(&aBlock);

        v72 = [objc_opt_self() actionWithTitle:v70 style:0 handler:v71];
        goto LABEL_36;
      }

      v143 = v2;

      v144 = swift_allocObject();
      *(v144 + 16) = v143;
      v182 = sub_24A5D1C80;
      v183 = v144;
      aBlock = MEMORY[0x277D85DD0];
      v179 = 1107296256;
      v145 = &unk_285DA8A00;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v59 = sub_24A62E2F4();
      v60 = sub_24A62EF64();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_24A503000, v59, v60, "🧭 FMFindingViewCtrl: Showing person no longer friend.", v61, 2u);
        MEMORY[0x24C21BBE0](v61, -1, -1);
      }

      sub_24A5D22F4(0xD000000000000019, 0x800000024A63DC10);
      sub_24A5D22F4(0xD00000000000001BLL, 0x800000024A63DC30);
      v62 = swift_allocObject();
      *(v62 + 16) = v2;
      v63 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount];
      if (v63 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = v63 + 1;
        v64 = v2;
        v65 = sub_24A62EBE4();

        v66 = sub_24A62EBE4();

        v67 = [objc_opt_self() alertControllerWithTitle:v65 message:v66 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v68 = swift_allocObject();
        v68[2] = v64;
        v68[3] = sub_24A5D0C24;
        v68[4] = v62;
        v69 = v64;

        v70 = sub_24A62EBE4();

        v182 = sub_24A5D1CD0;
        v183 = v68;
        aBlock = MEMORY[0x277D85DD0];
        v179 = 1107296256;
        v180 = sub_24A5BE9EC;
        v181 = &unk_285DA88C0;
        v71 = _Block_copy(&aBlock);

        v72 = [objc_opt_self() actionWithTitle:v70 style:0 handler:v71];
LABEL_36:
        v122 = v72;
        _Block_release(v71);

        [v67 addAction_];
        v69[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown] = 1;
        [v69 presentViewController:v67 animated:1 completion:0];

LABEL_48:

        return;
      }

      v143 = v2;

      v146 = swift_allocObject();
      *(v146 + 16) = v143;
      v182 = sub_24A5D1C80;
      v183 = v146;
      aBlock = MEMORY[0x277D85DD0];
      v179 = 1107296256;
      v145 = &unk_285DA8870;
    }

    else
    {
      sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DB80);
      sub_24A5D2200(0xD000000000000020, 0x800000024A63DBA0);
      v116 = swift_allocObject();
      *(v116 + 16) = v2;
      v117 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount];
      if (v117 < 3)
      {
        *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = v117 + 1;
        v118 = v2;
        v119 = sub_24A62EBE4();

        v120 = sub_24A62EBE4();

        v67 = [objc_opt_self() alertControllerWithTitle:v119 message:v120 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v121 = swift_allocObject();
        v121[2] = v118;
        v121[3] = sub_24A5D0BDC;
        v121[4] = v116;
        v69 = v118;

        v70 = sub_24A62EBE4();

        v182 = sub_24A5D0C20;
        v183 = v121;
        aBlock = MEMORY[0x277D85DD0];
        v179 = 1107296256;
        v180 = sub_24A5BE9EC;
        v181 = &unk_285DA87F8;
        v71 = _Block_copy(&aBlock);

        v72 = [objc_opt_self() actionWithTitle:v70 style:0 handler:v71];
        goto LABEL_36;
      }

      v143 = v2;

      v147 = swift_allocObject();
      *(v147 + 16) = v143;
      v182 = sub_24A5D1C80;
      v183 = v147;
      aBlock = MEMORY[0x277D85DD0];
      v179 = 1107296256;
      v145 = &unk_285DA87A8;
    }

    v180 = sub_24A5A8458;
    v181 = v145;
    v149 = _Block_copy(&aBlock);
    v150 = v143;

    [v150 dismissViewControllerAnimated:1 completion:v149];
    _Block_release(v149);

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v123 = v2;
      v124 = v173;
      v125 = v174;
      v126 = v175;
      (*(v174 + 32))(v173, v35, v175);
      v127 = v169;
      (*(v125 + 16))(v169, v124, v126);
      v128 = sub_24A62E2F4();
      v129 = sub_24A62EF64();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = v127;
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        aBlock = v132;
        *v131 = 136315138;
        sub_24A5D0C64(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v133 = v175;
        v134 = sub_24A62F614();
        v136 = v135;
        v137 = v130;
        v138 = *(v174 + 8);
        v138(v137, v133);
        v139 = sub_24A509BA8(v134, v136, &aBlock);

        *(v131 + 4) = v139;
        _os_log_impl(&dword_24A503000, v128, v129, "🧭 FMFindingViewCtrl: Showing item in use alert for %s.", v131, 0xCu);
        sub_24A508C54(v132);
        MEMORY[0x24C21BBE0](v132, -1, -1);
        MEMORY[0x24C21BBE0](v131, -1, -1);
      }

      else
      {

        v138 = *(v174 + 8);
        v138(v127, v175);
      }

      sub_24A5D2200(0xD00000000000001BLL, 0x800000024A641B00);
      sub_24A5D2200(0xD00000000000001DLL, 0x800000024A641B20);
      v151 = swift_allocObject();
      *(v151 + 16) = v123;
      v152 = *&v123[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount];
      if (v152 >= 3)
      {
        v162 = v123;

        v163 = swift_allocObject();
        *(v163 + 16) = v162;
        v182 = sub_24A5D1C80;
        v183 = v163;
        aBlock = MEMORY[0x277D85DD0];
        v179 = 1107296256;
        v180 = sub_24A5A8458;
        v181 = &unk_285DA8938;
        v164 = _Block_copy(&aBlock);
        v165 = v162;

        [v165 dismissViewControllerAnimated:1 completion:v164];
        _Block_release(v164);
      }

      else
      {
        *&v123[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = v152 + 1;
        v153 = v123;
        v154 = sub_24A62EBE4();

        v155 = sub_24A62EBE4();

        v156 = [objc_opt_self() alertControllerWithTitle:v154 message:v155 preferredStyle:1];

        sub_24A5D2200(0xD00000000000001ELL, 0x800000024A63DBD0);
        v157 = swift_allocObject();
        v157[2] = v153;
        v157[3] = sub_24A5D0CAC;
        v157[4] = v151;
        v158 = v153;

        v159 = sub_24A62EBE4();

        v182 = sub_24A5D1CD0;
        v183 = v157;
        aBlock = MEMORY[0x277D85DD0];
        v179 = 1107296256;
        v180 = sub_24A5BE9EC;
        v181 = &unk_285DA8988;
        v160 = _Block_copy(&aBlock);

        v161 = [objc_opt_self() actionWithTitle:v159 style:0 handler:v160];
        _Block_release(v160);

        [v156 addAction_];
        v158[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown] = 1;
        [v158 presentViewController:v156 animated:1 completion:0];
      }

      v138(v173, v175);
    }

    else
    {
      sub_24A5D0E10(v35, type metadata accessor for FMFindingSession.Error);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v83 = v174;
      v82 = v175;
      (*(v174 + 32))(v12, v35, v175);
      v84 = v170;
      (*(v83 + 16))(v170, v12, v82);
      v85 = v12;
      v86 = sub_24A62E2F4();
      v87 = sub_24A62EF64();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        aBlock = v89;
        *v88 = 136315138;
        sub_24A5D0C64(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v90 = v175;
        v91 = sub_24A62F614();
        v93 = v92;
        v94 = v84;
        v95 = *(v174 + 8);
        v95(v94, v90);
        v96 = sub_24A509BA8(v91, v93, &aBlock);

        *(v88 + 4) = v96;
        _os_log_impl(&dword_24A503000, v86, v87, "🧭 FMFindingViewCtrl: localizer state error for %s.", v88, 0xCu);
        sub_24A508C54(v89);
        MEMORY[0x24C21BBE0](v89, -1, -1);
        MEMORY[0x24C21BBE0](v88, -1, -1);

        v95(v85, v90);
        return;
      }

      v140 = v175;
      v141 = *(v174 + 8);
      v141(v84, v175);
      v142 = v12;
      goto LABEL_42;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v37 = *(v35 + *(sub_24A508FA4(&qword_27EF4F658, &unk_24A633E10) + 48));
      v38 = v174;
      v39 = v172;
      v40 = v35;
      v41 = v175;
      (*(v174 + 32))(v172, v40, v175);
      v42 = v171;
      (*(v38 + 16))(v171, v39, v41);
      v43 = v37;
      v44 = sub_24A62E2F4();
      v45 = sub_24A62EF64();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock = v47;
        *v46 = 136315394;
        sub_24A5D0C64(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v48 = v175;
        v49 = sub_24A62F614();
        v50 = v42;
        v52 = v51;
        v53 = *(v174 + 8);
        v53(v50, v48);
        v54 = sub_24A509BA8(v49, v52, &aBlock);

        *(v46 + 4) = v54;
        *(v46 + 12) = 2080;
        v177 = v37;
        v55 = v37;
        sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
        v56 = sub_24A62EC44();
        v58 = sub_24A509BA8(v56, v57, &aBlock);

        *(v46 + 14) = v58;
        _os_log_impl(&dword_24A503000, v44, v45, "🧭 FMFindingViewCtrl: precision finding config error for %s: %s.", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21BBE0](v47, -1, -1);
        MEMORY[0x24C21BBE0](v46, -1, -1);

        v53(v172, v48);
        return;
      }

      v140 = v175;
      v141 = *(v174 + 8);
      v141(v42, v175);
      v142 = v39;
LABEL_42:
      v141(v142, v140);
      return;
    }

    v106 = *v35;
    v107 = *v35;
    v108 = sub_24A62E2F4();
    v109 = sub_24A62EF64();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v177 = v106;
      aBlock = v111;
      *v110 = 136315138;
      v112 = v106;
      sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
      v113 = sub_24A62EC44();
      v115 = sub_24A509BA8(v113, v114, &aBlock);

      *(v110 + 4) = v115;
      _os_log_impl(&dword_24A503000, v108, v109, "🧭 FMFindingViewCtrl: precision finding AR error: %s.", v110, 0xCu);
      sub_24A508C54(v111);
      MEMORY[0x24C21BBE0](v111, -1, -1);
      MEMORY[0x24C21BBE0](v110, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24A5CC720(uint64_t a1)
{
  sub_24A598DB4();
  v2 = a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_dismissedHandler;
  result = swift_beginAccess();
  v4 = *v2;
  if (*v2)
  {
    v5 = *(v2 + 8);

    v4(v6);
    return sub_24A50D354(v4, v5);
  }

  return result;
}

void sub_24A5CC7A8(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v5 = sub_24A62E314();
      sub_24A506EB8(v5, qword_27EF5C118);
      v6 = sub_24A62E2F4();
      v7 = sub_24A62EF64();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMFindingViewCtrl: Playing ranging sound command sent", v8, 2u);
        MEMORY[0x24C21BBE0](v8, -1, -1);
      }

      v9 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton];
      sub_24A62B1A8(0x4008000000000000, 0);
    }

    else
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v10 = sub_24A62E314();
      sub_24A506EB8(v10, qword_27EF5C118);
      v11 = sub_24A62E2F4();
      v12 = sub_24A62EF64();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_24A503000, v11, v12, "🧭 FMFindingViewCtrl: Playing ranging sound command failed", v13, 2u);
        MEMORY[0x24C21BBE0](v13, -1, -1);
      }

      sub_24A59232C(1);
    }
  }
}

void sub_24A5CC998(char a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    if (a1 != 2 && (a1 & 1) != 0)
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v9 = sub_24A62E314();
      sub_24A506EB8(v9, qword_27EF5C118);
      v10 = sub_24A62E2F4();
      v11 = sub_24A62EF64();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMFindingViewCtrl: Done playing ranging sound", v12, 2u);
        MEMORY[0x24C21BBE0](v12, -1, -1);
      }

      sub_24A59232C(1);
    }
  }

  else if (a1 == 2 || (a1 & 1) == 0)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMFindingViewCtrl: Now playing ranging sound", v8, 2u);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }
  }
}

uint64_t sub_24A5CCB90()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24A5CCBD4(char a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_24A5CC998(v4);
}

void (*sub_24A5CCC2C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24A5CCCC0;
}

void sub_24A5CCCC0(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_24A5CC998(v5);

  free(v1);
}

uint64_t sub_24A5CCD08@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1, uint64_t a2)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_playSoundHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A517E5C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4, v5);
}

uint64_t sub_24A5CCDA8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A517E50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_playSoundHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3, v4);
  return sub_24A50D354(v8, v9);
}

uint64_t sub_24A5CCF10@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willAppearHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A59502C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4, v5);
}

uint64_t sub_24A5CCFB0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A5D1C6C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willAppearHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3, v4);
  return sub_24A50D354(v8, v9);
}

uint64_t sub_24A5CD118@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willDisappearHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A59502C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4, v5);
}

uint64_t sub_24A5CD1B8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A5D1C6C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willDisappearHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3, v4);
  return sub_24A50D354(v8, v9);
}

uint64_t sub_24A5CD320@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_dismissedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A5493F0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4, v5);
}

uint64_t sub_24A5CD3C0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A5D113C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_dismissedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3, v4);
  return sub_24A50D354(v8, v9);
}

uint64_t sub_24A5CD528@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_flashLightHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A5D1100;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A5173CC(v4, v5);
}

uint64_t sub_24A5CD5C8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A5D10BC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_flashLightHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24A5173CC(v3, v4);
  return sub_24A50D354(v8, v9);
}

id FMFindingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A62EBE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void (*sub_24A5CD808(uint64_t **a1))(void *a1)
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
  v2[4] = sub_24A5CCC2C(v2);
  return sub_24A514324;
}

uint64_t sub_24A5CDA18(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A5D0DA8(a2, v5, type metadata accessor for FMFindingViewState);
  return sub_24A5BEE50(v5);
}

id sub_24A5CDAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session) + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession);
  if (v5)
  {
    return [*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView) session:v5 didUpdateFrame:a3];
  }

  return result;
}

void sub_24A5CDB08(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24A5E87E4(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_24A5CDC04(v4);
  *a1 = v2;
}

void sub_24A5CDB9C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_24A5CDBD4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_24A5CDC04(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24A62F5F4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
        v5 = sub_24A62ED94();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24A5CDE24(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24A5CDD0C(0, v2, 1, a1);
  }
}

uint64_t sub_24A5CDD0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = a2;
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
LABEL_4:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      sub_24A508AE4(v10, v15);
      sub_24A508AE4(v10 - 40, v14);
      v11 = sub_24A5ABE68(v15, v14);
      sub_24A508C54(v14);
      result = sub_24A508C54(v15);
      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        sub_24A508CA0(v10, v15);
        v12 = *(v10 - 24);
        *v10 = *(v10 - 40);
        *(v10 + 16) = v12;
        *(v10 + 32) = *(v10 - 8);
        result = sub_24A508CA0(v15, v10 - 40);
        v10 -= 40;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 += 40;
      --v8;
      if (v5 != v16)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_24A5CDE24(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v6 = a1;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_95:
    v7 = *v6;
    if (*v6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_97;
    }

    goto LABEL_135;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v93 = v10;
    if (v11 >= v7)
    {
      v7 = v11;
    }

    else
    {
      v12 = *v5;
      sub_24A508AE4(v12 + 40 * v11, v96);
      sub_24A508AE4(v12 + 40 * v10, v95);
      v13 = sub_24A5ABE68(v96, v95);
      if (v4)
      {
LABEL_106:
        sub_24A508C54(v95);
        sub_24A508C54(v96);
LABEL_107:

        return;
      }

      v14 = v13;
      sub_24A508C54(v95);
      sub_24A508C54(v96);
      v15 = v10 + 2;
      v16 = 40 * v10;
      v17 = v12 + 40 * v10 + 80;
      v5 = a3;
      while (v7 != v15)
      {
        sub_24A508AE4(v17, v96);
        sub_24A508AE4(v17 - 40, v95);
        v18 = sub_24A5ABE68(v96, v95);
        sub_24A508C54(v95);
        sub_24A508C54(v96);
        ++v15;
        v17 += 40;
        if ((v14 ^ v18))
        {
          v7 = v15 - 1;
          break;
        }
      }

      v10 = v93;
      if (v14)
      {
        if (v7 < v93)
        {
          goto LABEL_129;
        }

        if (v93 < v7)
        {
          v19 = 40 * v7 - 40;
          v20 = v7;
          v21 = v93;
          do
          {
            if (v21 != --v20)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v22 = v26 + v16;
              v23 = v26 + v19;
              sub_24A508CA0((v26 + v16), v96);
              v24 = *(v23 + 32);
              v25 = *(v23 + 16);
              *v22 = *v23;
              *(v22 + 16) = v25;
              *(v22 + 32) = v24;
              sub_24A508CA0(v96, v23);
              v10 = v93;
            }

            ++v21;
            v19 -= 40;
            v16 += 40;
          }

          while (v21 < v20);
          v5 = a3;
        }
      }

      v6 = a1;
    }

    v27 = v5[1];
    if (v7 >= v27)
    {
      goto LABEL_30;
    }

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_125;
    }

    if (v7 - v10 >= a4)
    {
      goto LABEL_30;
    }

    if (__OFADD__(v10, a4))
    {
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (v10 + a4 >= v27)
    {
      v28 = v5[1];
    }

    else
    {
      v28 = v10 + a4;
    }

    if (v28 < v10)
    {
      goto LABEL_128;
    }

    if (v7 == v28)
    {
LABEL_30:
      v29 = v7;
      if (v7 < v10)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v76 = *v5;
      v77 = *v5 + 40 * v7;
      v78 = v10 - v7;
      v92 = v28;
      do
      {
        v88 = v78;
        v79 = v78;
        v5 = v77;
        do
        {
          sub_24A508AE4(v77, v96);
          sub_24A508AE4(v77 - 40, v95);
          v80 = sub_24A5ABE68(v96, v95);
          if (v4)
          {
            goto LABEL_106;
          }

          v81 = v80;
          sub_24A508C54(v95);
          sub_24A508C54(v96);
          if ((v81 & 1) == 0)
          {
            break;
          }

          if (!v76)
          {
            goto LABEL_131;
          }

          sub_24A508CA0(v77, v96);
          v82 = *(v77 - 24);
          *v77 = *(v77 - 40);
          *(v77 + 16) = v82;
          *(v77 + 32) = *(v77 - 8);
          sub_24A508CA0(v96, v77 - 40);
          v77 -= 40;
        }

        while (!__CFADD__(v79++, 1));
        ++v7;
        v77 = (v5 + 5);
        v78 = v88 - 1;
        v29 = v92;
      }

      while (v7 != v92);
      v6 = a1;
      v10 = v93;
      if (v92 < v93)
      {
        goto LABEL_124;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_24A5E802C(0, *(v9 + 2) + 1, 1, v9);
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v9 = sub_24A5E802C((v30 > 1), v31 + 1, 1, v9);
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v29;
    v34 = *v6;
    if (!*v6)
    {
      goto LABEL_134;
    }

    v91 = v29;
    if (v31)
    {
      break;
    }

    v5 = a3;
LABEL_82:
    v7 = v5[1];
    v8 = v91;
    if (v91 >= v7)
    {
      goto LABEL_95;
    }
  }

  v5 = a3;
  while (1)
  {
    v35 = v32 - 1;
    if (v32 >= 4)
    {
      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_111;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_112;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_114;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_117;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_123;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

    if (v32 == 3)
    {
      v36 = *(v9 + 4);
      v37 = *(v9 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_51:
      if (v39)
      {
        goto LABEL_113;
      }

      v52 = &v9[16 * v32];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_116;
      }

      v58 = &v9[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_119;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_120;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v32 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_65;
    }

    v62 = &v9[16 * v32];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_65:
    if (v57)
    {
      goto LABEL_115;
    }

    v65 = &v9[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_118;
    }

    if (v68 < v56)
    {
      goto LABEL_82;
    }

LABEL_72:
    v7 = v35 - 1;
    if (v35 - 1 >= v32)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_130;
    }

    v73 = *&v9[16 * v7 + 32];
    v74 = *&v9[16 * v35 + 40];
    sub_24A5CE4D4((*a3 + 40 * v73), (*a3 + 40 * *&v9[16 * v35 + 32]), *a3 + 40 * v74, v34);
    if (v4)
    {
      goto LABEL_107;
    }

    if (v74 < v73)
    {
      goto LABEL_109;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_24A5E8018(v9);
    }

    if (v7 >= *(v9 + 2))
    {
      goto LABEL_110;
    }

    v75 = &v9[16 * v7];
    *(v75 + 4) = v73;
    *(v75 + 5) = v74;
    v97 = v9;
    sub_24A5E7F8C(v35);
    v9 = v97;
    v32 = *(v97 + 2);
    if (v32 <= 1)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
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
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  v9 = sub_24A5E8018(v9);
LABEL_97:
  v97 = v9;
  v84 = *(v9 + 2);
  if (v84 < 2)
  {
    goto LABEL_107;
  }

  while (*v5)
  {
    v85 = *&v9[16 * v84];
    v86 = *&v9[16 * v84 + 24];
    sub_24A5CE4D4((*v5 + 40 * v85), (*v5 + 40 * *&v9[16 * v84 + 16]), *v5 + 40 * v86, v7);
    if (v4)
    {
      goto LABEL_107;
    }

    if (v86 < v85)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_24A5E8018(v9);
    }

    if (v84 - 2 >= *(v9 + 2))
    {
      goto LABEL_122;
    }

    v87 = &v9[16 * v84];
    *v87 = v85;
    *(v87 + 1) = v86;
    v97 = v9;
    sub_24A5E7F8C(v84 - 1);
    v9 = v97;
    v84 = *(v97 + 2);
    if (v84 <= 1)
    {
      goto LABEL_107;
    }
  }

LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

uint64_t sub_24A5CE4D4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 40;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 40;
  if (v10 >= v12)
  {
    if (a4 != __src || &__src[40 * v12] <= a4)
    {
      memmove(a4, __src, 40 * v12);
    }

    v13 = v5 + 40 * v12;
    if (v11 < 40 || v7 <= v8)
    {
LABEL_43:
      v20 = v7;
      goto LABEL_44;
    }

    v21 = -v5;
    v40 = -v5;
    while (1)
    {
      v20 = v7 - 40;
      v22 = v13 - 40;
      v23 = v21 + v13;
      v6 -= 40;
      while (1)
      {
        sub_24A508AE4(v22, v39);
        sub_24A508AE4((v7 - 40), v38);
        v26 = sub_24A5ABE68(v39, v38);
        if (v4)
        {
          sub_24A508C54(v38);
          sub_24A508C54(v39);
          v35 = v23 / 40;
          if (v7 >= v5 && v7 < v5 + 40 * v35 && v7 == v5)
          {
            return 1;
          }

          v33 = 40 * v35;
          v34 = v7;
          goto LABEL_48;
        }

        v27 = v26;
        sub_24A508C54(v38);
        sub_24A508C54(v39);
        if (v27)
        {
          break;
        }

        if (v6 + 40 != v22 + 40)
        {
          v28 = *v22;
          v29 = *(v22 + 16);
          *(v6 + 32) = *(v22 + 32);
          *v6 = v28;
          *(v6 + 16) = v29;
        }

        v24 = v22 - 40;
        v23 -= 40;
        v6 -= 40;
        v25 = v22 > v5;
        v22 -= 40;
        if (!v25)
        {
          v13 = v24 + 40;
          goto LABEL_43;
        }
      }

      if ((v6 + 40) != v7)
      {
        v30 = *v20;
        v31 = *(v7 - 24);
        *(v6 + 32) = *(v7 - 1);
        *v6 = v30;
        *(v6 + 16) = v31;
      }

      v13 = v22 + 40;
      if (v22 + 40 > v5)
      {
        v7 -= 40;
        v21 = v40;
        if (v20 > v8)
        {
          continue;
        }
      }

      v13 = v22 + 40;
      goto LABEL_44;
    }
  }

  if (a4 != __dst || &__dst[40 * v10] <= a4)
  {
    memmove(a4, __dst, 40 * v10);
  }

  v13 = v5 + 40 * v10;
  if (v9 < 40 || v7 >= v6)
  {
LABEL_16:
    v20 = v8;
LABEL_44:
    v36 = (v13 - v5) / 40;
    if (v20 >= v5 && v20 < v5 + 40 * v36 && v20 == v5)
    {
      return 1;
    }

    v33 = 40 * v36;
    v34 = v20;
LABEL_48:
    memmove(v34, v5, v33);
    return 1;
  }

  while (1)
  {
    sub_24A508AE4(v7, v39);
    sub_24A508AE4(v5, v38);
    v14 = sub_24A5ABE68(v39, v38);
    if (v4)
    {
      break;
    }

    v15 = v14;
    sub_24A508C54(v38);
    sub_24A508C54(v39);
    if ((v15 & 1) == 0)
    {
      v16 = v5;
      v17 = v8 == v5;
      v5 += 40;
      if (v17)
      {
        goto LABEL_14;
      }

LABEL_13:
      v18 = *v16;
      v19 = *(v16 + 16);
      *(v8 + 4) = *(v16 + 32);
      *v8 = v18;
      *(v8 + 1) = v19;
      goto LABEL_14;
    }

    v16 = v7;
    v17 = v8 == v7;
    v7 += 40;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_14:
    v8 += 40;
    if (v5 >= v13 || v7 >= v6)
    {
      goto LABEL_16;
    }
  }

  sub_24A508C54(v38);
  sub_24A508C54(v39);
  v32 = (v13 - v5) / 40;
  if (v8 < v5 || v8 >= v5 + 40 * v32 || v8 != v5)
  {
    v33 = 40 * v32;
    v34 = v8;
    goto LABEL_48;
  }

  return 1;
}

void *sub_24A5CE86C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_24A508AE4(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_24A508CA0(v20, v21);
      sub_24A508CA0(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_24A5CE9D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_24A62E214();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

id sub_24A5CEC7C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_24A50D7EC(0, &qword_27EF516F0, 0x277D75940);
  sub_24A5D1A78();
  v2 = sub_24A62EE64();

  v3 = sub_24A629468(v2);

  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_24A5CED74(uint64_t a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFindingViewState(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  if ([objc_opt_self() isMainThread])
  {
    sub_24A5D0DA8(a1, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFindingViewState);
    return sub_24A5BEE50(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  else
  {
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v22 = v7;
    v14 = v1;
    v21 = sub_24A62F014();
    sub_24A5D0DA8(a1, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFindingViewState);
    v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_24A5D1350(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for FMFindingViewState);
    aBlock[4] = sub_24A5D158C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA90B8;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A5D0C64(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    v19 = v21;
    MEMORY[0x24C21A950](0, v9, v6, v17);
    _Block_release(v17);

    (*(v4 + 8))(v6, v3);
    return (*(v23 + 8))(v9, v22);
  }
}

void sub_24A5CF148(uint64_t a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFindingSession.Error(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  if ([objc_opt_self() isMainThread])
  {

    sub_24A5CAC44(a1);
  }

  else
  {
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v21 = v7;
    v13 = v1;
    v20 = sub_24A62F014();
    sub_24A5D0DA8(a1, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMFindingSession.Error);
    v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    sub_24A5D1350(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for FMFindingSession.Error);
    aBlock[4] = sub_24A5D13B8;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA9068;
    v16 = _Block_copy(aBlock);
    v17 = v13;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A5D0C64(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    v18 = v20;
    MEMORY[0x24C21A950](0, v9, v6, v16);
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    (*(v22 + 8))(v9, v21);
  }
}

char *sub_24A5CF524(uint64_t a1)
{
  v2 = v1;
  v72 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v72);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v71 - v7;
  v9 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isInternalBuild;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 isInternalBuild];

  v2[v11] = v13;
  v14 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style;
  if (qword_27EF4EA38 != -1)
  {
    swift_once();
  }

  v82[8] = xmmword_27EF5C5E0;
  v82[9] = unk_27EF5C5F0;
  v82[10] = xmmword_27EF5C600;
  v83 = qword_27EF5C610;
  v82[4] = xmmword_27EF5C5A0;
  v82[5] = unk_27EF5C5B0;
  v82[6] = xmmword_27EF5C5C0;
  v82[7] = unk_27EF5C5D0;
  v82[0] = xmmword_27EF5C560;
  v82[1] = *&qword_27EF5C570;
  v82[2] = xmmword_27EF5C580;
  v82[3] = unk_27EF5C590;
  memmove(&v2[v14], &xmmword_27EF5C560, 0xB8uLL);
  v15 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_sleepPreventer;
  type metadata accessor for FMFindingSleepPreventer();
  *&v2[v15] = swift_initStaticObject();
  v16 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_snapshotContainer;
  v17 = objc_allocWithZone(MEMORY[0x277D75D18]);
  sub_24A5D1AFC(v82, v80);
  *&v2[v16] = [v17 init];
  v18 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_reducedMotion;
  v2[v18] = UIAccessibilityIsReduceMotionEnabled();
  v19 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_titleLabel;
  *&v2[v19] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v20 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel;
  *&v2[v20] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v21 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerView];
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer;
  *&v2[v22] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v23 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView;
  *&v2[v23] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v24 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel;
  *&v2[v24] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v25 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel;
  *&v2[v25] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v26 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton;
  v27 = type metadata accessor for FMR1GlyphButton();
  v28 = objc_allocWithZone(v27);
  *&v2[v26] = sub_24A629644(0, 0, 0, 0);
  v29 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController];
  v30 = type metadata accessor for FMR1HapticsController();
  v31 = [objc_allocWithZone(v30) init];
  v29[3] = v30;
  v29[4] = &off_285DA5E60;
  *v29 = v31;
  v32 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton;
  v33 = objc_allocWithZone(v27);
  *&v2[v32] = sub_24A629644(0, 0, 0, 0);
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem] = 0;
  v34 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton;
  v35 = objc_allocWithZone(v27);
  *&v2[v34] = sub_24A629644(0, 0, 0, 0);
  v36 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView;
  v37 = objc_allocWithZone(type metadata accessor for FMR1DistanceView());
  LOBYTE(v80[0]) = 1;
  *&v2[v36] = sub_24A5F75FC(0, 1, 0x100000000);
  v38 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo];
  *(v38 + 14) = 0;
  *(v38 + 5) = 0u;
  *(v38 + 6) = 0u;
  *(v38 + 3) = 0u;
  *(v38 + 4) = 0u;
  *(v38 + 1) = 0u;
  *(v38 + 2) = 0u;
  *v38 = 0u;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundItemWorkItem] = 0;
  v39 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_lastTimeFoundItemVideo];
  *(v39 + 1) = 0;
  *(v39 + 2) = 0;
  *v39 = 0;
  v39[24] = 1;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem] = 0;
  v40 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView;
  *&v2[v40] = [objc_allocWithZone(type metadata accessor for FMBTDistanceView()) init];
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pulseTimer] = 0;
  v41 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView;
  *&v2[v41] = [objc_allocWithZone(type metadata accessor for FMIncorrectOrientationView()) init];
  v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_inBand] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_insufficientFeaturesARTrackingErrorCount] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_updateTorchPeriodicCount] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_gotFirstARFrame] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount] = 0;
  v42 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration;
  if (qword_27EF4EA58 != -1)
  {
    swift_once();
  }

  *&v2[v42] = qword_27EF5C6F8;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_FMR1MaxErrorAlertCount] = 3;
  v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying] = 2;
  v43 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_playSoundHandler];
  *v43 = 0;
  v43[1] = 0;
  v44 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willAppearHandler];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willDisappearHandler];
  *v45 = 0;
  v45[1] = 0;
  v46 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_dismissedHandler];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_flashLightHandler];
  *v47 = 0;
  v47[1] = 0;
  v48 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType;
  v49 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_findingType);
  v50 = (v49 >> 13) & 3;
  if (v50)
  {
    if (v50 == 1)
    {
      LOBYTE(v50) = 2;
    }

    else
    {
      LOBYTE(v50) = (v49 & 1) == 0;
      if (v49 >= 0)
      {
        LOBYTE(v50) = 2;
      }
    }
  }

  v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType] = v50;
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session] = a1;
  v51 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A5D0DA8(a1 + v51, v8, type metadata accessor for FMFindingSessionState);

  v52 = v71;
  sub_24A626F08(v8, 10, v71);
  sub_24A5D1350(v52, &v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state], type metadata accessor for FMFindingViewState);
  sub_24A5D0DA8(a1 + v51, v8, type metadata accessor for FMFindingSessionState);
  type metadata accessor for FMFindingStateTransitionCoordinator(0);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator] = sub_24A6099C0(v8);
  sub_24A5D0DA8(a1 + v51, v5, type metadata accessor for FMFindingSessionState);
  v53 = *(v5 + 1);
  if (*(v53 + 16) && (v54 = sub_24A515AC8(&v5[*(v72 + 36)]), (v55 & 1) != 0))
  {
    sub_24A508AE4(*(v53 + 56) + 40 * v54, v78);
    sub_24A508CA0(v78, v79);
    sub_24A5D0E10(v5, type metadata accessor for FMFindingSessionState);
    v56 = *(a1 + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_arSession);
    v57 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType;
    v75 = v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_experienceType];
    LOWORD(v74[0]) = *(a1 + v48);
    sub_24A5D1B58(v76);
    v80[8] = v76[8];
    v80[9] = v76[9];
    v80[10] = v76[10];
    v81 = v77;
    v80[4] = v76[4];
    v80[5] = v76[5];
    v80[6] = v76[6];
    v80[7] = v76[7];
    v80[0] = v76[0];
    v80[1] = v76[1];
    v80[2] = v76[2];
    v80[3] = v76[3];
    objc_allocWithZone(type metadata accessor for FMPFView());
    v58 = v56;
    *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView] = sub_24A5F6330(&v75, v74, v80, v56);
    sub_24A508AE4(v79, v74);
    v75 = v2[v57];
    v59 = objc_allocWithZone(type metadata accessor for FMR1InstructionsController());
    v60 = sub_24A5FF084(v74, &v75);
    v61 = 0;
    *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsController] = v60;
    if (v2[v57] != 2)
    {
      v62 = objc_allocWithZone(type metadata accessor for FMAVPlayerView());
      v61 = sub_24A59ED80(0, 0.5);
    }

    *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerView] = v61;
    v63 = type metadata accessor for FMFindingViewController(0);
    v73.receiver = v2;
    v73.super_class = v63;
    v64 = objc_msgSendSuper2(&v73, sel_initWithNibName_bundle_, 0, 0);
    v65 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_stateTransitionCoordinator;
    *(*&v64[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session] + OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_delegate + 8) = &off_285DAB1A0;
    swift_unknownObjectWeakAssign();
    *(*&v64[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView] + OBJC_IVAR____TtC11FMFindingUI8FMPFView_fmpfdelegate + 8) = &off_285DA5048;
    swift_unknownObjectWeakAssign();
    *(*&v64[v65] + OBJC_IVAR____TtC11FMFindingUI35FMFindingStateTransitionCoordinator_delegate + 8) = &off_285DA8730;
    swift_unknownObjectWeakAssign();
    *(*&v64[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsController] + OBJC_IVAR____TtC11FMFindingUI26FMR1InstructionsController_delegate + 8) = &off_285DAB7D0;
    swift_unknownObjectWeakAssign();
    v66 = objc_opt_self();
    v67 = v64;
    v68 = [v66 defaultCenter];
    [v68 addObserver:v67 selector:sel_applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];

    v69 = [v66 defaultCenter];
    [v69 addObserver:v67 selector:sel_applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];

    sub_24A508C54(v79);
    return v67;
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

void _s11FMFindingUI0A14ViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isInternalBuild;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 isInternalBuild];

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_style;
  if (qword_27EF4EA38 != -1)
  {
    swift_once();
  }

  v40[8] = xmmword_27EF5C5E0;
  v40[9] = unk_27EF5C5F0;
  v40[10] = xmmword_27EF5C600;
  v41 = qword_27EF5C610;
  v40[4] = xmmword_27EF5C5A0;
  v40[5] = unk_27EF5C5B0;
  v40[6] = xmmword_27EF5C5C0;
  v40[7] = unk_27EF5C5D0;
  v40[0] = xmmword_27EF5C560;
  v40[1] = *&qword_27EF5C570;
  v40[2] = xmmword_27EF5C580;
  v40[3] = unk_27EF5C590;
  memmove((v1 + v5), &xmmword_27EF5C560, 0xB8uLL);
  v6 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_sleepPreventer;
  type metadata accessor for FMFindingSleepPreventer();
  *(v1 + v6) = swift_initStaticObject();
  v7 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_snapshotContainer;
  v8 = objc_allocWithZone(MEMORY[0x277D75D18]);
  sub_24A5D1AFC(v40, v39);
  *(v1 + v7) = [v8 init];
  v9 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_reducedMotion;
  *(v1 + v9) = UIAccessibilityIsReduceMotionEnabled();
  v10 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_titleLabel;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_nameLabel;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerView);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pickerViewContainer;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v14 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabelsStackView;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v15 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v16 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel;
  *(v1 + v16) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v17 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_closeButton;
  v18 = type metadata accessor for FMR1GlyphButton();
  v19 = objc_allocWithZone(v18);
  *(v1 + v17) = sub_24A629644(0, 0, 0, 0);
  v20 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_hapticsController);
  v21 = type metadata accessor for FMR1HapticsController();
  v22 = [objc_allocWithZone(v21) init];
  v20[3] = v21;
  v20[4] = &off_285DA5E60;
  *v20 = v22;
  v23 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton;
  v24 = objc_allocWithZone(v18);
  *(v1 + v23) = sub_24A629644(0, 0, 0, 0);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem) = 0;
  v25 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton;
  v26 = objc_allocWithZone(v18);
  *(v1 + v25) = sub_24A629644(0, 0, 0, 0);
  v27 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_r1DistanceView;
  v28 = objc_allocWithZone(type metadata accessor for FMR1DistanceView());
  v39[0] = 1;
  *(v1 + v27) = sub_24A5F75FC(0, 1, 0x100000000);
  v29 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundPlayerVideoInfo;
  *(v29 + 112) = 0;
  *(v29 + 80) = 0u;
  *(v29 + 96) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *v29 = 0u;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_foundItemWorkItem) = 0;
  v30 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_lastTimeFoundItemVideo;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
  *v30 = 0;
  *(v30 + 24) = 1;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_autoStopPlayingVideoWorkItem) = 0;
  v31 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_btDistanceView;
  *(v1 + v31) = [objc_allocWithZone(type metadata accessor for FMBTDistanceView()) init];
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_pulseTimer) = 0;
  v32 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_incorrectOrientationView;
  *(v1 + v32) = [objc_allocWithZone(type metadata accessor for FMIncorrectOrientationView()) init];
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_inBand) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_insufficientFeaturesARTrackingErrorCount) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_updateTorchPeriodicCount) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_gotFirstARFrame) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertCount) = 0;
  v33 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration;
  if (qword_27EF4EA58 != -1)
  {
    swift_once();
  }

  *(v1 + v33) = qword_27EF5C6F8;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_FMR1MaxErrorAlertCount) = 3;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying) = 2;
  v34 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_playSoundHandler);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willAppearHandler);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_willDisappearHandler);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_dismissedHandler);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_flashLightHandler);
  *v38 = 0;
  v38[1] = 0;
  sub_24A62F444();
  __break(1u);
}

uint64_t type metadata accessor for FMFindingViewController(uint64_t a1)
{
  result = qword_27EF516D8;
  if (!qword_27EF516D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A5D0488()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24A5D04C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24A5D04E0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A5D0530@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_24A5D0588(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_24A5CC998(v5);
}

uint64_t sub_24A5D0614(uint64_t a1)
{
  result = type metadata accessor for FMFindingViewState(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24A5D0C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A5D0D6C()
{
  v1 = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_errorAlertIsShown) = 0;
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_24A5D0DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A5D0E10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A5D0E7C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_24A5D0EC4()
{
  v1 = *(v0 + 24);
  (*(v0 + 32))([*(*(v0 + 16) + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_snapshotContainer) insertSubview:v1 atIndex:0]);

  return [v1 setAlpha_];
}

uint64_t sub_24A5D0F38()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5D0FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingViewState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5D1084()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5D10BC(char a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_24A5D1100@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_24A5D1190(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_24A5D11C8()
{
  v1 = *(type metadata accessor for FMFindingSession.Error(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_12;
    }

LABEL_8:
    v7 = sub_24A62E214();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      goto LABEL_8;
    case 3:
      v9 = sub_24A62E214();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v8 = *(v5 + *(sub_24A508FA4(&qword_27EF4F658, &unk_24A633E10) + 48));
      goto LABEL_11;
    case 4:
LABEL_9:
      v8 = *v5;
LABEL_11:

      break;
  }

LABEL_12:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A5D1350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A5D141C()
{
  v1 = type metadata accessor for FMFindingViewState(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  v6 = sub_24A62E214();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = v0 + v3 + *(v1 + 32);
  v8 = *(v7 + 96);
  if ((v8 | 0x2000000u) >> 25 != 3)
  {
    sub_24A508BE4(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 80), *(v7 + 88), v8, SBYTE2(v8));
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24A5D158C()
{
  v1 = *(type metadata accessor for FMFindingViewState(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24A5CDA18(v2, v3);
}

uint64_t sub_24A5D15F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF50948, &qword_24A63AA70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - v8;
  v10 = sub_24A62E024();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[2] = 0xD0000000000000C5;
  v34[3] = 0x800000024A641BC0;
  if (a2)
  {
    v15 = 8250;
  }

  else
  {
    v15 = 0;
  }

  if (a2)
  {
    v16 = 0xE200000000000000;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v34[0] = 0xD000000000000027;
  v34[1] = 0x800000024A641C90;
  if (a2)
  {
    v17 = a1;
  }

  else
  {
    v17 = 0;
  }

  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  MEMORY[0x24C21A5D0](v15, v16, v12);

  MEMORY[0x24C21A5D0](v17, v18);

  sub_24A62E004();
  sub_24A55BEBC();
  v19 = sub_24A62F204();
  v21 = v20;
  (*(v11 + 8))(v14, v10);

  if (v21)
  {
    strcpy(v34, "&Description=");
    HIWORD(v34[1]) = -4864;
    MEMORY[0x24C21A5D0](v19, v21);

    MEMORY[0x24C21A5D0](v34[0], v34[1]);
  }

  sub_24A62E0E4();

  v22 = [objc_opt_self() defaultWorkspace];
  if (v22)
  {
    v23 = v22;
    sub_24A50D63C(v9, v6, &qword_27EF50948, &qword_24A63AA70);
    v24 = sub_24A62E0F4();
    v25 = *(v24 - 8);
    v26 = 0;
    if ((*(v25 + 48))(v6, 1, v24) != 1)
    {
      v26 = sub_24A62E0B4();
      (*(v25 + 8))(v6, v24);
    }

    sub_24A59C5C8(MEMORY[0x277D84F90]);
    v27 = sub_24A62EB74();

    v28 = [v23 openSensitiveURL:v26 withOptions:v27];

    if ((v28 & 1) == 0)
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v29 = sub_24A62E314();
      sub_24A506EB8(v29, qword_27EF5C118);
      v30 = sub_24A62E2F4();
      v31 = sub_24A62EF64();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_24A503000, v30, v31, "🧭 FMFindingViewCtrl: Failed sending request to Tap-To-Radar", v32, 2u);
        MEMORY[0x24C21BBE0](v32, -1, -1);
      }
    }
  }

  return sub_24A50D6A4(v9, &qword_27EF50948, &qword_24A63AA70);
}

unint64_t sub_24A5D1A78()
{
  result = qword_27EF516F8;
  if (!qword_27EF516F8)
  {
    sub_24A50D7EC(255, &qword_27EF516F0, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF516F8);
  }

  return result;
}

double sub_24A5D1B58(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 161) = 0u;
  return result;
}

uint64_t sub_24A5D1CD8()
{
  result = sub_24A55BB74(0x393531433830, 0xE600000000000000);
  qword_27EF5C738 = result;
  return result;
}

uint64_t sub_24A5D1D08()
{
  result = sub_24A55BB74(0x373441393630, 0xE600000000000000);
  qword_27EF5C740 = result;
  return result;
}

uint64_t sub_24A5D1D38()
{
  v0 = sub_24A62E814();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_24A62E874();
  qword_27EF5C748 = result;
  return result;
}

uint64_t sub_24A5D1E5C(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_24A62E814();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(&unk_27EF51700, qword_24A63AAA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24A636580;
  v11 = *MEMORY[0x277CE0EE0];
  v12 = *(v7 + 104);
  v12(v9, v11, v6);
  sub_24A62E874();
  *(v10 + 32) = sub_24A62E9A4();
  *(v10 + 40) = v13;
  v12(v9, v11, v6);
  sub_24A62E874();
  *(v10 + 48) = sub_24A62E9A4();
  *(v10 + 56) = v14;
  v12(v9, v11, v6);
  sub_24A62E874();
  *(v10 + 64) = sub_24A62E9A4();
  *(v10 + 72) = v15;
  result = sub_24A62E9B4();
  *a5 = result;
  return result;
}

uint64_t sub_24A5D203C()
{
  v0 = sub_24A62E814();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508FA4(&unk_27EF51700, qword_24A63AAA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24A633A00;
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  sub_24A62E874();
  *(v4 + 32) = sub_24A62E9A4();
  *(v4 + 40) = v7;
  v6(v3, v5, v0);
  sub_24A62E874();
  *(v4 + 48) = sub_24A62E9A4();
  *(v4 + 56) = v8;
  result = sub_24A62E9B4();
  qword_27EF5C760 = result;
  return result;
}

uint64_t sub_24A5D2200(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMFindingUILocalizer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_24A62F384();

  MEMORY[0x24C21A5D0](a1, a2);
  v6 = sub_24A62E054();

  return v6;
}

uint64_t sub_24A5D22F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMFindingUILocalizer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_24A62F384();

  MEMORY[0x24C21A5D0](a1, a2);
  v6 = sub_24A62E054();

  return v6;
}

uint64_t sub_24A5D2428(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMFindingUILocalizer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_24A62F384();

  MEMORY[0x24C21A5D0](a1, a2);
  v6 = sub_24A62E054();

  return v6;
}

void sub_24A5D253C(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedRadiusFactor;
  *v3 = a1;
  *(v3 + 8) = 0;
  v4 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style;
  v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style + 72);
  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_pixelsPerInch);
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = (1.0 - a1) * *(v4 + 48) + *(v4 + 40) * a1;
  v11 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
  v12 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode);
  if (v12)
  {
    [v12 setScale_];
  }

  v13 = [*(v4 + 56) colorWithAlphaComponent_];
  v14 = *(v1 + v11);
  if (v14)
  {
    v16 = v13;
    v15 = v14;
    [v15 setColor_];

    v13 = v16;
  }
}

void sub_24A5D26B4(double a1)
{
  v2 = v1;
  if (v1[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyDiskRadius] == 1)
  {
    v4 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring;
    v5 = *&v1[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring];
    if (!sub_24A5B19C4())
    {
      sub_24A55C858(a1);
      *(v5 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v6 = *&v2[v4];
      v7 = (v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v8 = v7[35] + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      if (vabdd_f64(v8, *v7 + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v8 = *v7 + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      }

      v9 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
      *v9 = v8;
      *(v9 + 8) = 0;
      [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode] setPosition_];
    }
  }

  if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyDotScale] == 1)
  {
    v10 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring;
    v11 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring];
    if (!sub_24A5B19C4())
    {
      sub_24A55C858(a1);
      *(v11 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v12 = *&v2[v10];
      v13 = (v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v14 = *v13 + *(v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v13[35] + *(v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v14) <= *(v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v14 = v13[35] + *(v12 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      v15 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale];
      *v15 = v14;
      *(v15 + 8) = 0;
      [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode] setScale_];
    }
  }

  if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyAngle] == 1)
  {
    v16 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring;
    v17 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring];
    if (!sub_24A5B19C4() && v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interactiveAngleFactor + 8] == 1)
    {
      sub_24A55C858(a1);
      *(v17 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v18 = *&v2[v16];
      v19 = (v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v20 = *v19 + *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v19[35] + *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v20) <= *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v20 = v19[35] + *(v18 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      v21 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle];
      *v21 = v20;
      *(v21 + 8) = 0;
      if (!*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
      {
        [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode] setZRotation_];
      }
    }
  }

  if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyOpacity] == 1)
  {
    v22 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacitySpring;
    v23 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacitySpring];
    if (!sub_24A5B19C4())
    {
      sub_24A55C858(a1);
      *(v23 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v24 = *&v2[v22];
      v25 = (v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      if (vabdd_f64(v25[35] + *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v25 + *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v26 = *v25 + *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      }

      else
      {
        v26 = v25[35] + *(v24 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      v27 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOpacity];
      *v27 = v26;
      *(v27 + 8) = 0;
      [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode] setAlpha_];
      [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] setAlpha_];
    }
  }

  if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyBrightness] == 1)
  {
    v28 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightnessSpring;
    v29 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightnessSpring];
    if (!sub_24A5B19C4())
    {
      sub_24A55C858(a1);
      *(v29 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v30 = *&v2[v28];
      v31 = (v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      if (vabdd_f64(v31[35] + *(v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v31 + *(v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v32 = *v31 + *(v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      }

      else
      {
        v32 = v31[35] + *(v30 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      v33 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness];
      *v33 = v32;
      *(v33 + 8) = 0;
      v34 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor];
      v35 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode];
      v36 = v34;
      sub_24A60CFCC(v36, v32);
    }
  }

  if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyOffset] == 1)
  {
    v37 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_xOffsetSpring;
    v38 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_xOffsetSpring];
    if (!sub_24A5B19C4() || !sub_24A5B19C4())
    {
      sub_24A55C858(a1);
      *(v38 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v39 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring;
      v40 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring];
      sub_24A55C858(a1);
      *(v40 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v41 = *&v2[v37];
      v42 = (v41 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      if (vabdd_f64(v42[35] + *(v41 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), *v42 + *(v41 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v41 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v43 = *v42 + *(v41 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      }

      else
      {
        v43 = v42[35] + *(v41 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      v44 = *&v2[v39];
      v45 = (v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v46 = v45[35] + *(v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      if (vabdd_f64(v46, *v45 + *(v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v46 = *v45 + *(v44 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      }

      v47 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOffset];
      *v47 = v43;
      v47[1] = v46;
      *(v47 + 16) = 0;
      [v2 setPosition_];
    }
  }

  if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor] == 1)
  {
    v48 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactorSpring;
    v49 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactorSpring];
    if (!sub_24A5B19C4() && (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactor + 8] & 1) == 0)
    {
      sub_24A55C858(a1);
      *(v49 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v50 = *&v2[v48];
      v51 = (v50 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v52 = *v51 + *(v50 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v51[35] + *(v50 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v52) <= *(v50 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v52 = v51[35] + *(v50 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      sub_24A5D253C(v52);
    }
  }

  v53 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_headingSpring;
  v54 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_headingSpring];
  if (!sub_24A5B19C4() && *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
  {
    sub_24A55C858(a1);
    *(v54 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    v55 = *&v2[v53];
    v56 = (v55 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    swift_beginAccess();
    v57 = *v56 + *(v55 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    if (vabdd_f64(v56[35] + *(v55 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v57) <= *(v55 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v57 = v56[35] + *(v55 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    }

    *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAbsoluteHeading] = v57;
    [v2 setZRotation_];
  }

  v58 = *(*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDiskNode);
  v59 = *(v58 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_sizeSpring);
  sub_24A55C858(a1);
  *(v59 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  v60 = *(v58 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_opacitySpring);
  sub_24A55C858(a1);
  *(v60 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  sub_24A5D8CD4();
  sub_24A6082B8(a1);
  sub_24A61F414(*&a1, 0);
}