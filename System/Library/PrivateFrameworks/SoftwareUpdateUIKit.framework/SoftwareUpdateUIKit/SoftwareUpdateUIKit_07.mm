unint64_t sub_26AF90C6C()
{
  v2 = qword_2803DD910;
  if (!qword_2803DD910)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD910);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF90CE8()
{
  sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D8, &qword_26B08D280);
  sub_26B078BF0();
  swift_getWitnessTable();
  sub_26AF6B6FC();
  return swift_getWitnessTable();
}

uint64_t *sub_26AF90E54()
{
  if (qword_2803DB450 != -1)
  {
    swift_once();
  }

  return &qword_2803DD918;
}

id sub_26AF90EB4()
{
  type metadata accessor for TipsManager();
  result = TipsManager.__allocating_init()();
  qword_2803DD918 = result;
  return result;
}

uint64_t static TipsManager.shared.getter()
{
  v0 = sub_26AF90E54();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_26AF90F78()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_inManualControl);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_26AF90FE0(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_inManualControl);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

void *sub_26AF91138(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_26B078640();
  result = a2;
  a2[1] = v4;
  a2[2] = a1[2];
  return result;
}

void *sub_26AF9119C@<X0>(void *a1@<X8>)
{
  v5[11] = 0;
  __src = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_mockedComingSoonTip);
  swift_beginAccess();
  memcpy(__dst, __src, sizeof(__dst));
  sub_26AF9122C(__dst, v5);
  swift_endAccess();
  return memcpy(a1, __dst, 0x40uLL);
}

void *sub_26AF9122C(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];
  sub_26B078640();
  a2[1] = v3;
  a2[2] = a1[2];
  v4 = a1[3];
  sub_26B078640();
  a2[3] = v4;
  a2[4] = a1[4];
  v6 = a1[5];
  sub_26B078640();
  a2[5] = v6;
  a2[6] = a1[6];
  v8 = a1[7];
  sub_26B078640();
  result = a2;
  a2[7] = v8;
  return result;
}

void *sub_26AF912DC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v7 = __src;
  v6 = v1;
  sub_26AF9122C(__dst, v5);
  __srca = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_mockedComingSoonTip);
  swift_beginAccess();
  memcpy(v9, __srca, sizeof(v9));
  memcpy(__srca, __dst, 0x40uLL);
  sub_26AF913A4(v9);
  swift_endAccess();
  result = __dst;
  sub_26AF913A4(__dst);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_26AF913A4(void *a1)
{
}

uint64_t sub_26AF914A0()
{
  v48[2] = 0;
  v39 = [objc_opt_self() sharedDefaults];
  v40 = [v39 shouldShowComingSoonTip];
  MEMORY[0x277D82BD8](v39);
  if ((v40 & 1) == 0)
  {
    goto LABEL_28;
  }

  v37 = [objc_opt_self() sharedDefaults];
  v38 = [v37 comingSoonTipTitle];
  if (v38)
  {
    v33 = sub_26B079E00();
    v34 = v0;
    MEMORY[0x277D82BD8](v38);
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  MEMORY[0x277D82BD8](v37);
  v48[0] = v35;
  v48[1] = v36;
  sub_26AF01944(v48);
  if (v36)
  {
    v31 = [objc_opt_self() sharedDefaults];
    v32 = [v31 comingSoonTipTitle];
    if (v32)
    {
      v26 = sub_26B079E00();
      v27 = v1;
      MEMORY[0x277D82BD8](v32);
      v28 = v26;
      v29 = v27;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    *&v2 = MEMORY[0x277D82BD8](v31).n128_u64[0];
    if (!v29)
    {
LABEL_27:
      sub_26B07A650();
      __break(1u);
LABEL_28:
      v21 = 0;
      return v21 & 1;
    }

    v42 = v28;
    v43 = v29;
    v41[0] = sub_26B079D00("", 0, 1, v2);
    v41[1] = v3;
    v25 = MEMORY[0x26D66D0C0](v42, v43, v41[0], v3) ^ 1;
    sub_26AE9BCC0(v41);
    sub_26AE9BCC0(&v42);
    v30 = v25;
  }

  else
  {
    v30 = 0;
  }

  if ((v30 & 1) == 0)
  {
    v22 = [objc_opt_self() sharedDefaults];
    v23 = [v22 comingSoonTipMessage];
    if (v23)
    {
      v17 = sub_26B079E00();
      v18 = v4;
      MEMORY[0x277D82BD8](v23);
      v19 = v17;
      v20 = v18;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    MEMORY[0x277D82BD8](v22);
    v47[0] = v19;
    v47[1] = v20;
    sub_26AF01944(v47);
    if (!v20)
    {
      v14 = 0;
LABEL_25:
      v24 = v14;
      goto LABEL_16;
    }

    v15 = [objc_opt_self() sharedDefaults];
    v16 = [v15 comingSoonTipMessage];
    if (v16)
    {
      v10 = sub_26B079E00();
      v11 = v5;
      MEMORY[0x277D82BD8](v16);
      v12 = v10;
      v13 = v11;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *&v6 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    if (v13)
    {
      v45 = v12;
      v46 = v13;
      v44[0] = sub_26B079D00("", 0, 1, v6);
      v44[1] = v7;
      v9 = MEMORY[0x26D66D0C0](v45, v46, v44[0], v7) ^ 1;
      sub_26AE9BCC0(v44);
      sub_26AE9BCC0(&v45);
      v14 = v9;
      goto LABEL_25;
    }

    sub_26B07A650();
    __break(1u);
    goto LABEL_27;
  }

  v24 = 1;
LABEL_16:
  v21 = v24;
  return v21 & 1;
}

void *sub_26AF91B10@<X0>(uint64_t *a1@<X8>)
{
  if (sub_26AF90F78())
  {
    a1[3] = &type metadata for MockedComingSoonTip;
    a1[4] = sub_26AF91C40();
    v2 = swift_allocObject();
    *a1 = v2;
    return sub_26AF9119C((v2 + 16));
  }

  else if (sub_26AF914A0())
  {
    a1[3] = &type metadata for UserDefaultsBasedComingSoonTip;
    result = sub_26AF91D88();
    a1[4] = result;
  }

  else
  {
    v3 = *(v7 + OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_constellationComingSoonTip);
    v4 = *(v7 + OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_constellationComingSoonTip + 8);
    v5 = *(v7 + OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_constellationComingSoonTip + 16);
    sub_26B078640();
    a1[3] = &type metadata for ConstellationComingSoonTip;
    result = sub_26AF91D10();
    a1[4] = result;
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }

  return result;
}

unint64_t sub_26AF91C40()
{
  v2 = qword_2803DD938;
  if (!qword_2803DD938)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD938);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF91CB8()
{

  return swift_deallocObject();
}

unint64_t sub_26AF91D10()
{
  v2 = qword_2803DD940;
  if (!qword_2803DD940)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD940);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF91D88()
{
  v2 = qword_2803DD948;
  if (!qword_2803DD948)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD948);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF91E34(unsigned int a1)
{
  v622 = a1;
  v623 = sub_26AF97984;
  v625 = sub_26AF9A078;
  v627 = sub_26AF9A0C4;
  v631 = sub_26AF9798C;
  v632 = sub_26AF9A1C4;
  v635 = sub_26AF979F0;
  v637 = sub_26AF9A318;
  v639 = sub_26AF9A38C;
  v643 = sub_26AF9A414;
  v645 = sub_26AF99FFC;
  v647 = sub_26AF9A030;
  v649 = sub_26AF9A110;
  v651 = sub_26AF9A148;
  v653 = sub_26AF9A17C;
  v655 = sub_26AF9A210;
  v657 = sub_26AF9A248;
  v659 = sub_26AF9A27C;
  v662 = sub_26AF9A460;
  v500 = sub_26AF9B460;
  v501 = sub_26AF9B510;
  v502 = sub_26AF9B55C;
  v503 = sub_26AF97A14;
  v504 = sub_26AF9B65C;
  v505 = sub_26AF9B494;
  v506 = sub_26AF9B4C8;
  v507 = sub_26AF9B5A8;
  v508 = sub_26AF9B5E0;
  v509 = sub_26AF9B614;
  v510 = sub_26AF9B6A8;
  v511 = sub_26AF9B6FC;
  v512 = sub_26AF9B7F4;
  v513 = sub_26AF9B840;
  v514 = sub_26AF97A5C;
  v515 = sub_26AF9B940;
  v516 = sub_26AF9B744;
  v517 = sub_26AF9BA40;
  v518 = sub_26AF9BA8C;
  v519 = sub_26AF9B778;
  v520 = sub_26AF9B7AC;
  v521 = sub_26AF9B88C;
  v522 = sub_26AF9B8C4;
  v523 = sub_26AF9B8F8;
  v524 = sub_26AF9B98C;
  v525 = sub_26AF9B9C4;
  v526 = sub_26AF9B9F8;
  v527 = sub_26AF9BAD8;
  v528 = sub_26AF9A594;
  v529 = sub_26AF9A68C;
  v530 = sub_26AF9A6D8;
  v531 = sub_26AF97ACC;
  v532 = sub_26AF9A7D8;
  v533 = sub_26AF9A5DC;
  v534 = sub_26AF9A8D8;
  v535 = sub_26AF9A924;
  v536 = sub_26AF9A610;
  v537 = sub_26AF9A644;
  v538 = sub_26AF9A724;
  v539 = sub_26AF9A75C;
  v540 = sub_26AF9A790;
  v541 = sub_26AF9A824;
  v542 = sub_26AF9A85C;
  v543 = sub_26AF9A890;
  v544 = sub_26AF9A970;
  v545 = sub_26AF9A9C4;
  v546 = sub_26AF9AA74;
  v547 = sub_26AF9AAC0;
  v548 = sub_26AF97B3C;
  v549 = sub_26AF9ABC0;
  v550 = sub_26AF97B6C;
  v551 = sub_26AF9ACC0;
  v552 = sub_26AF9AD0C;
  v553 = sub_26AF9AD58;
  v554 = sub_26AF97BD4;
  v555 = sub_26AF9AEC0;
  v556 = sub_26AF9AF0C;
  v557 = sub_26AF9AF58;
  v558 = sub_26AF97C3C;
  v559 = sub_26AF9B0C0;
  v560 = sub_26AF97D50;
  v561 = sub_26AF9B1C0;
  v562 = sub_26AF97E64;
  v563 = sub_26AF9B2C0;
  v564 = sub_26AF97F78;
  v565 = sub_26AF9B3C0;
  v566 = sub_26AF9A9F8;
  v567 = sub_26AF9AA2C;
  v568 = sub_26AF9AB0C;
  v569 = sub_26AF9AB44;
  v570 = sub_26AF9AB78;
  v571 = sub_26AF9AC0C;
  v572 = sub_26AF9AC44;
  v573 = sub_26AF9AC78;
  v574 = sub_26AF9ADA4;
  v575 = sub_26AF9AE44;
  v576 = sub_26AF9AE78;
  v577 = sub_26AF9AFA4;
  v578 = sub_26AF9B044;
  v579 = sub_26AF9B078;
  v580 = sub_26AF9B10C;
  v581 = sub_26AF9B144;
  v582 = sub_26AF9B178;
  v583 = sub_26AF9B20C;
  v584 = sub_26AF9B244;
  v585 = sub_26AF9B278;
  v586 = sub_26AF9B30C;
  v587 = sub_26AF9B344;
  v588 = sub_26AF9B378;
  v589 = sub_26AF9B40C;
  v696 = 0;
  v695 = 0;
  v590 = 0;
  v694 = 0;
  v683 = 0;
  v601 = 0;
  v591 = sub_26B078740();
  v592 = *(v591 - 8);
  v593 = v591 - 8;
  v594 = (*(v592 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v595 = v244 - v594;
  v596 = sub_26B078710();
  v597 = *(v596 - 8);
  v598 = v596 - 8;
  v599 = (*(v597 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v601);
  v600 = v244 - v599;
  v602 = sub_26B0786E0();
  v603 = *(v602 - 8);
  v604 = v602 - 8;
  v605 = (*(v603 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v601);
  v606 = v244 - v605;
  v607 = sub_26B078580();
  v608 = *(v607 - 8);
  v609 = v607 - 8;
  v617 = *(v608 + 64);
  v610 = (v617 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v622);
  v611 = v244 - v610;
  v612 = (v617 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v613 = v244 - v612;
  v614 = (v617 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v615 = v244 - v614;
  v616 = (v617 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v618 = v244 - v616;
  v619 = (v617 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v620 = v244 - v619;
  v696 = v5 & 1;
  v695 = v6;
  sub_26B078550();
  MEMORY[0x277D82BE0](v621);
  v641 = 7;
  v624 = swift_allocObject();
  *(v624 + 16) = v621;
  v634 = 17;
  v636 = swift_allocObject();
  *(v636 + 16) = v622;
  v666 = sub_26B078570();
  v667 = sub_26B07A2A0();
  v646 = swift_allocObject();
  v629 = 32;
  *(v646 + 16) = 32;
  v648 = swift_allocObject();
  v630 = 8;
  *(v648 + 16) = 8;
  v640 = 32;
  v7 = swift_allocObject();
  v8 = v624;
  v626 = v7;
  *(v7 + 16) = v623;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v626;
  v628 = v9;
  *(v9 + 16) = v625;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v628;
  v650 = v11;
  *(v11 + 16) = v627;
  *(v11 + 24) = v12;
  v652 = swift_allocObject();
  *(v652 + 16) = v629;
  v654 = swift_allocObject();
  *(v654 + 16) = v630;
  v13 = swift_allocObject();
  v633 = v13;
  *(v13 + 16) = v631;
  *(v13 + 24) = 0;
  v14 = swift_allocObject();
  v15 = v633;
  v656 = v14;
  *(v14 + 16) = v632;
  *(v14 + 24) = v15;
  v658 = swift_allocObject();
  *(v658 + 16) = 0;
  v660 = swift_allocObject();
  *(v660 + 16) = 4;
  v16 = swift_allocObject();
  v17 = v636;
  v638 = v16;
  *(v16 + 16) = v635;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v638;
  v642 = v18;
  *(v18 + 16) = v637;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v642;
  v644 = v20;
  *(v20 + 16) = v639;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v644;
  v663 = v22;
  *(v22 + 16) = v643;
  *(v22 + 24) = v23;
  v665 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v661 = sub_26B07A760();
  v664 = v24;

  v25 = v646;
  v26 = v664;
  *v664 = v645;
  v26[1] = v25;

  v27 = v648;
  v28 = v664;
  v664[2] = v647;
  v28[3] = v27;

  v29 = v650;
  v30 = v664;
  v664[4] = v649;
  v30[5] = v29;

  v31 = v652;
  v32 = v664;
  v664[6] = v651;
  v32[7] = v31;

  v33 = v654;
  v34 = v664;
  v664[8] = v653;
  v34[9] = v33;

  v35 = v656;
  v36 = v664;
  v664[10] = v655;
  v36[11] = v35;

  v37 = v658;
  v38 = v664;
  v664[12] = v657;
  v38[13] = v37;

  v39 = v660;
  v40 = v664;
  v664[14] = v659;
  v40[15] = v39;

  v41 = v663;
  v42 = v664;
  v664[16] = v662;
  v42[17] = v41;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v666, v667))
  {
    v43 = v590;
    v493 = sub_26B07A420();
    v492 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v494 = sub_26AEA3B70(0, v492, v492);
    v495 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v496 = &v672;
    v672 = v493;
    v497 = &v671;
    v671 = v494;
    v498 = &v670;
    v670 = v495;
    sub_26AEA3BC4(2, &v672);
    sub_26AEA3BC4(3, v496);
    v668 = v645;
    v669 = v646;
    sub_26AEA3BD8(&v668, v496, v497, v498);
    v499 = v43;
    if (v43)
    {

      __break(1u);
    }

    else
    {
      v668 = v647;
      v669 = v648;
      sub_26AEA3BD8(&v668, &v672, &v671, &v670);
      v490 = 0;
      v668 = v649;
      v669 = v650;
      sub_26AEA3BD8(&v668, &v672, &v671, &v670);
      v489 = 0;
      v668 = v651;
      v669 = v652;
      sub_26AEA3BD8(&v668, &v672, &v671, &v670);
      v488 = 0;
      v668 = v653;
      v669 = v654;
      sub_26AEA3BD8(&v668, &v672, &v671, &v670);
      v487 = 0;
      v668 = v655;
      v669 = v656;
      sub_26AEA3BD8(&v668, &v672, &v671, &v670);
      v486 = 0;
      v668 = v657;
      v669 = v658;
      sub_26AEA3BD8(&v668, &v672, &v671, &v670);
      v485 = 0;
      v668 = v659;
      v669 = v660;
      sub_26AEA3BD8(&v668, &v672, &v671, &v670);
      v484 = 0;
      v668 = v662;
      v669 = v663;
      sub_26AEA3BD8(&v668, &v672, &v671, &v670);
      v483 = 0;
      _os_log_impl(&dword_26AE88000, v666, v667, "%s.%s: Setting up TipsManager (manual control: %{BOOL}d).", v493, 0x1Cu);
      sub_26AEA3C24(v494, 0, v492);
      sub_26AEA3C24(v495, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v491 = v483;
    }
  }

  else
  {
    v44 = v590;

    v491 = v44;
  }

  v480 = v491;
  v45 = MEMORY[0x277D82BD8](v666);
  v481 = *(v608 + 8);
  v482 = v608 + 8;
  v481(v620, v607, v45);
  MEMORY[0x277D82BE0](v621);
  if (v622)
  {
    v479 = 1;
  }

  else
  {
    v479 = sub_26AF914A0();
  }

  v478 = v479;
  MEMORY[0x277D82BD8](v621);
  if (v478)
  {
    sub_26B078550();
    MEMORY[0x277D82BE0](v621);
    v466 = 7;
    v459 = swift_allocObject();
    *(v459 + 16) = v621;
    v476 = sub_26B078570();
    v477 = sub_26B07A2A0();
    v463 = 17;
    v468 = swift_allocObject();
    v462 = 32;
    *(v468 + 16) = 32;
    v469 = swift_allocObject();
    v464 = 8;
    *(v469 + 16) = 8;
    v465 = 32;
    v46 = swift_allocObject();
    v47 = v459;
    v460 = v46;
    *(v46 + 16) = v500;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v460;
    v461 = v48;
    *(v48 + 16) = v501;
    *(v48 + 24) = v49;
    v50 = swift_allocObject();
    v51 = v461;
    v470 = v50;
    *(v50 + 16) = v502;
    *(v50 + 24) = v51;
    v471 = swift_allocObject();
    *(v471 + 16) = v462;
    v472 = swift_allocObject();
    *(v472 + 16) = v464;
    v52 = swift_allocObject();
    v467 = v52;
    *(v52 + 16) = v503;
    *(v52 + 24) = 0;
    v53 = swift_allocObject();
    v54 = v467;
    v474 = v53;
    *(v53 + 16) = v504;
    *(v53 + 24) = v54;
    v473 = sub_26B07A760();
    v475 = v55;

    v56 = v468;
    v57 = v475;
    *v475 = v505;
    v57[1] = v56;

    v58 = v469;
    v59 = v475;
    v475[2] = v506;
    v59[3] = v58;

    v60 = v470;
    v61 = v475;
    v475[4] = v507;
    v61[5] = v60;

    v62 = v471;
    v63 = v475;
    v475[6] = v508;
    v63[7] = v62;

    v64 = v472;
    v65 = v475;
    v475[8] = v509;
    v65[9] = v64;

    v66 = v474;
    v67 = v475;
    v475[10] = v510;
    v67[11] = v66;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v476, v477))
    {
      v68 = v480;
      v451 = sub_26B07A420();
      v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v452 = sub_26AEA3B70(0, v450, v450);
      v453 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v455 = &v677;
      v677 = v451;
      v456 = &v676;
      v676 = v452;
      v457 = &v675;
      v675 = v453;
      v454 = 2;
      sub_26AEA3BC4(2, &v677);
      sub_26AEA3BC4(v454, v455);
      v673 = v505;
      v674 = v468;
      sub_26AEA3BD8(&v673, v455, v456, v457);
      v458 = v68;
      if (v68)
      {

        __break(1u);
      }

      else
      {
        v673 = v506;
        v674 = v469;
        sub_26AEA3BD8(&v673, &v677, &v676, &v675);
        v448 = 0;
        v673 = v507;
        v674 = v470;
        sub_26AEA3BD8(&v673, &v677, &v676, &v675);
        v447 = 0;
        v673 = v508;
        v674 = v471;
        sub_26AEA3BD8(&v673, &v677, &v676, &v675);
        v446 = 0;
        v673 = v509;
        v674 = v472;
        sub_26AEA3BD8(&v673, &v677, &v676, &v675);
        v445 = 0;
        v673 = v510;
        v674 = v474;
        sub_26AEA3BD8(&v673, &v677, &v676, &v675);
        v444 = 0;
        _os_log_impl(&dword_26AE88000, v476, v477, "%s.%s: Resetting the datastore.", v451, 0x16u);
        sub_26AEA3C24(v452, 0, v450);
        sub_26AEA3C24(v453, 2, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();

        v449 = v444;
      }
    }

    else
    {
      v69 = v480;

      v449 = v69;
    }

    v70 = v449;
    v71 = MEMORY[0x277D82BD8](v476);
    v481(v618, v607, v71);
    sub_26B078690();
    v442 = v70;
    v443 = v70;
    if (v70)
    {
      v320 = v443;
      v318 = 0;
      MEMORY[0x26D66E1D0]();
      v683 = v320;
      sub_26B078550();
      MEMORY[0x277D82BE0](v621);
      v319 = 24;
      v330 = 7;
      v162 = swift_allocObject();
      v163 = v320;
      v321 = v162;
      *(v162 + 16) = v621;
      MEMORY[0x26D66E1D0](v163);
      v328 = swift_allocObject();
      *(v328 + 16) = v320;
      sub_26AED0174();

      v344 = sub_26B078570();
      v345 = sub_26B07A2C0();
      v326 = 17;
      v333 = swift_allocObject();
      v324 = 32;
      *(v333 + 16) = 32;
      v334 = swift_allocObject();
      v327 = 8;
      *(v334 + 16) = 8;
      v329 = 32;
      v164 = swift_allocObject();
      v165 = v321;
      v322 = v164;
      *(v164 + 16) = v511;
      *(v164 + 24) = v165;
      v166 = swift_allocObject();
      v167 = v322;
      v323 = v166;
      *(v166 + 16) = v512;
      *(v166 + 24) = v167;
      v168 = swift_allocObject();
      v169 = v323;
      v335 = v168;
      *(v168 + 16) = v513;
      *(v168 + 24) = v169;
      v336 = swift_allocObject();
      *(v336 + 16) = v324;
      v337 = swift_allocObject();
      *(v337 + 16) = v327;
      v170 = swift_allocObject();
      v325 = v170;
      *(v170 + 16) = v514;
      *(v170 + 24) = 0;
      v171 = swift_allocObject();
      v172 = v325;
      v338 = v171;
      *(v171 + 16) = v515;
      *(v171 + 24) = v172;
      v339 = swift_allocObject();
      *(v339 + 16) = 64;
      v340 = swift_allocObject();
      *(v340 + 16) = v327;
      v173 = swift_allocObject();
      v174 = v328;
      v331 = v173;
      *(v173 + 16) = v516;
      *(v173 + 24) = v174;
      v175 = swift_allocObject();
      v176 = v331;
      v332 = v175;
      *(v175 + 16) = v517;
      *(v175 + 24) = v176;
      v177 = swift_allocObject();
      v178 = v332;
      v342 = v177;
      *(v177 + 16) = v518;
      *(v177 + 24) = v178;
      v341 = sub_26B07A760();
      v343 = v179;

      v180 = v333;
      v181 = v343;
      *v343 = v519;
      v181[1] = v180;

      v182 = v334;
      v183 = v343;
      v343[2] = v520;
      v183[3] = v182;

      v184 = v335;
      v185 = v343;
      v343[4] = v521;
      v185[5] = v184;

      v186 = v336;
      v187 = v343;
      v343[6] = v522;
      v187[7] = v186;

      v188 = v337;
      v189 = v343;
      v343[8] = v523;
      v189[9] = v188;

      v190 = v338;
      v191 = v343;
      v343[10] = v524;
      v191[11] = v190;

      v192 = v339;
      v193 = v343;
      v343[12] = v525;
      v193[13] = v192;

      v194 = v340;
      v195 = v343;
      v343[14] = v526;
      v195[15] = v194;

      v196 = v342;
      v197 = v343;
      v343[16] = v527;
      v197[17] = v196;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v344, v345))
      {
        v198 = v318;
        v311 = sub_26B07A420();
        v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
        v312 = sub_26AEA3B70(1, v310, v310);
        v313 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v314 = &v682;
        v682 = v311;
        v315 = &v681;
        v681 = v312;
        v316 = &v680;
        v680 = v313;
        sub_26AEA3BC4(2, &v682);
        sub_26AEA3BC4(3, v314);
        v678 = v519;
        v679 = v333;
        sub_26AEA3BD8(&v678, v314, v315, v316);
        v317 = v198;
        if (v198)
        {

          __break(1u);
        }

        else
        {
          v678 = v520;
          v679 = v334;
          sub_26AEA3BD8(&v678, &v682, &v681, &v680);
          v308 = 0;
          v678 = v521;
          v679 = v335;
          sub_26AEA3BD8(&v678, &v682, &v681, &v680);
          v307 = 0;
          v678 = v522;
          v679 = v336;
          sub_26AEA3BD8(&v678, &v682, &v681, &v680);
          v306 = 0;
          v678 = v523;
          v679 = v337;
          sub_26AEA3BD8(&v678, &v682, &v681, &v680);
          v305 = 0;
          v678 = v524;
          v679 = v338;
          sub_26AEA3BD8(&v678, &v682, &v681, &v680);
          v304 = 0;
          v678 = v525;
          v679 = v339;
          sub_26AEA3BD8(&v678, &v682, &v681, &v680);
          v303 = 0;
          v678 = v526;
          v679 = v340;
          sub_26AEA3BD8(&v678, &v682, &v681, &v680);
          v302 = 0;
          v678 = v527;
          v679 = v342;
          sub_26AEA3BD8(&v678, &v682, &v681, &v680);
          v301 = 0;
          _os_log_impl(&dword_26AE88000, v344, v345, "%s.%s: Failed to reset datastore: %@", v311, 0x20u);
          sub_26AEA3C24(v312, 1, v310);
          sub_26AEA3C24(v313, 2, MEMORY[0x277D84F70] + 8);
          sub_26B07A400();

          v309 = v301;
        }
      }

      else
      {
        v199 = v318;

        v309 = v199;
      }

      v300 = v309;
      v200 = MEMORY[0x277D82BD8](v344);
      v481(v613, v607, v200);
      v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD958, &qword_26B08CE40);
      v298 = sub_26B07A760();
      v296 = v201;
      v202 = sub_26AF91D88();
      v203 = v296;
      *v296 = &type metadata for UserDefaultsBasedComingSoonTip;
      v203[1] = v202;
      sub_26AEA3B2C();
      v299 = v204;
      sub_26B078630();

      v441 = v300;
    }

    else
    {
      v441 = 0;
    }

    v440 = v441;
  }

  else
  {
    v440 = v480;
  }

  v72 = v440;
  v431 = sub_26B078760();
  v430 = sub_26B07A760();
  v436 = v73;
  sub_26B0786D0();
  sub_26B0786F0();
  (*(v603 + 8))(v606, v602);
  v432 = *(v431 - 8);
  v433 = v431 - 8;
  v435 = *(v432 + 72);
  v434 = v436 + v435;
  sub_26B078700();
  sub_26B078720();
  (*(v597 + 8))(v600, v596);
  v437 = v436 + 2 * v435;
  sub_26B078730();
  v438 = v72;
  v439 = v72;
  if (v72)
  {
    v246 = v439;
    v247 = 0;
    v245 = *(v432 + 8);
    v244[2] = v432 + 8;
    v245(v434, v431);
    v245(v436, v431);
    sub_26B07A780();
    v267 = v246;
    v266 = v247;
    v268 = v266;
    v270 = v267;
    MEMORY[0x26D66E1D0]();
    v694 = v270;
    sub_26B078550();
    MEMORY[0x277D82BE0](v621);
    v269 = 24;
    v280 = 7;
    v205 = swift_allocObject();
    v206 = v270;
    v271 = v205;
    *(v205 + 16) = v621;
    MEMORY[0x26D66E1D0](v206);
    v278 = swift_allocObject();
    *(v278 + 16) = v270;
    sub_26AED0174();

    v294 = sub_26B078570();
    v295 = sub_26B07A2C0();
    v276 = 17;
    v283 = swift_allocObject();
    v274 = 32;
    *(v283 + 16) = 32;
    v284 = swift_allocObject();
    v277 = 8;
    *(v284 + 16) = 8;
    v279 = 32;
    v207 = swift_allocObject();
    v208 = v271;
    v272 = v207;
    *(v207 + 16) = v528;
    *(v207 + 24) = v208;
    v209 = swift_allocObject();
    v210 = v272;
    v273 = v209;
    *(v209 + 16) = v529;
    *(v209 + 24) = v210;
    v211 = swift_allocObject();
    v212 = v273;
    v285 = v211;
    *(v211 + 16) = v530;
    *(v211 + 24) = v212;
    v286 = swift_allocObject();
    *(v286 + 16) = v274;
    v287 = swift_allocObject();
    *(v287 + 16) = v277;
    v213 = swift_allocObject();
    v275 = v213;
    *(v213 + 16) = v531;
    *(v213 + 24) = 0;
    v214 = swift_allocObject();
    v215 = v275;
    v288 = v214;
    *(v214 + 16) = v532;
    *(v214 + 24) = v215;
    v289 = swift_allocObject();
    *(v289 + 16) = 64;
    v290 = swift_allocObject();
    *(v290 + 16) = v277;
    v216 = swift_allocObject();
    v217 = v278;
    v281 = v216;
    *(v216 + 16) = v533;
    *(v216 + 24) = v217;
    v218 = swift_allocObject();
    v219 = v281;
    v282 = v218;
    *(v218 + 16) = v534;
    *(v218 + 24) = v219;
    v220 = swift_allocObject();
    v221 = v282;
    v292 = v220;
    *(v220 + 16) = v535;
    *(v220 + 24) = v221;
    v291 = sub_26B07A760();
    v293 = v222;

    v223 = v283;
    v224 = v293;
    *v293 = v536;
    v224[1] = v223;

    v225 = v284;
    v226 = v293;
    v293[2] = v537;
    v226[3] = v225;

    v227 = v285;
    v228 = v293;
    v293[4] = v538;
    v228[5] = v227;

    v229 = v286;
    v230 = v293;
    v293[6] = v539;
    v230[7] = v229;

    v231 = v287;
    v232 = v293;
    v293[8] = v540;
    v232[9] = v231;

    v233 = v288;
    v234 = v293;
    v293[10] = v541;
    v234[11] = v233;

    v235 = v289;
    v236 = v293;
    v293[12] = v542;
    v236[13] = v235;

    v237 = v290;
    v238 = v293;
    v293[14] = v543;
    v238[15] = v237;

    v239 = v292;
    v240 = v293;
    v293[16] = v544;
    v240[17] = v239;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v294, v295))
    {
      v241 = v268;
      v259 = sub_26B07A420();
      v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v260 = sub_26AEA3B70(1, v258, v258);
      v261 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v262 = &v688;
      v688 = v259;
      v263 = &v687;
      v687 = v260;
      v264 = &v686;
      v686 = v261;
      sub_26AEA3BC4(2, &v688);
      sub_26AEA3BC4(3, v262);
      v684 = v536;
      v685 = v283;
      sub_26AEA3BD8(&v684, v262, v263, v264);
      v265 = v241;
      if (v241)
      {

        __break(1u);
      }

      else
      {
        v684 = v537;
        v685 = v284;
        sub_26AEA3BD8(&v684, &v688, &v687, &v686);
        v256 = 0;
        v684 = v538;
        v685 = v285;
        sub_26AEA3BD8(&v684, &v688, &v687, &v686);
        v255 = 0;
        v684 = v539;
        v685 = v286;
        sub_26AEA3BD8(&v684, &v688, &v687, &v686);
        v254 = 0;
        v684 = v540;
        v685 = v287;
        sub_26AEA3BD8(&v684, &v688, &v687, &v686);
        v253 = 0;
        v684 = v541;
        v685 = v288;
        sub_26AEA3BD8(&v684, &v688, &v687, &v686);
        v252 = 0;
        v684 = v542;
        v685 = v289;
        sub_26AEA3BD8(&v684, &v688, &v687, &v686);
        v251 = 0;
        v684 = v543;
        v685 = v290;
        sub_26AEA3BD8(&v684, &v688, &v687, &v686);
        v250 = 0;
        v684 = v544;
        v685 = v292;
        sub_26AEA3BD8(&v684, &v688, &v687, &v686);
        v249 = 0;
        _os_log_impl(&dword_26AE88000, v294, v295, "%s.%s: Failed to configure Tips: %@", v259, 0x20u);
        sub_26AEA3C24(v260, 1, v258);
        sub_26AEA3C24(v261, 2, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();

        v257 = v249;
      }
    }

    else
    {
      v242 = v268;

      v257 = v242;
    }

    v248 = v257;
    v243 = MEMORY[0x277D82BD8](v294);
    v481(v611, v607, v243);

    v426 = v248;
  }

  else
  {
    sub_26B078750();
    (*(v592 + 8))(v595, v591);
    sub_26AEA3B2C();
    v427 = v74;
    sub_26B0787E0();
    v428 = 0;
    v429 = 0;

    v426 = v428;
  }

  v425 = v426;
  if (v622)
  {
    return sub_26AF90FE0(1);
  }

  result = sub_26AF914A0();
  if (result)
  {
    sub_26B078550();
    MEMORY[0x277D82BE0](v621);
    v396 = 24;
    v394 = 7;
    v376 = swift_allocObject();
    *(v376 + 16) = v621;
    v423 = sub_26B078570();
    v424 = sub_26B07A2A0();
    v391 = 17;
    v397 = swift_allocObject();
    v390 = 32;
    *(v397 + 16) = 32;
    v398 = swift_allocObject();
    v392 = 8;
    *(v398 + 16) = 8;
    v393 = 32;
    v76 = swift_allocObject();
    v77 = v376;
    v377 = v76;
    *(v76 + 16) = v545;
    *(v76 + 24) = v77;
    v78 = swift_allocObject();
    v79 = v377;
    v378 = v78;
    *(v78 + 16) = v546;
    *(v78 + 24) = v79;
    v80 = swift_allocObject();
    v81 = v378;
    v399 = v80;
    *(v80 + 16) = v547;
    *(v80 + 24) = v81;
    v400 = swift_allocObject();
    *(v400 + 16) = v390;
    v401 = swift_allocObject();
    *(v401 + 16) = v392;
    v82 = swift_allocObject();
    v379 = v82;
    *(v82 + 16) = v548;
    *(v82 + 24) = 0;
    v83 = swift_allocObject();
    v84 = v379;
    v402 = v83;
    *(v83 + 16) = v549;
    *(v83 + 24) = v84;
    v403 = swift_allocObject();
    *(v403 + 16) = 0;
    v404 = swift_allocObject();
    v383 = 4;
    *(v404 + 16) = 4;
    v85 = swift_allocObject();
    v380 = v85;
    *(v85 + 16) = v550;
    *(v85 + 24) = 0;
    v86 = swift_allocObject();
    v87 = v380;
    v381 = v86;
    *(v86 + 16) = v551;
    *(v86 + 24) = v87;
    v88 = swift_allocObject();
    v89 = v381;
    v382 = v88;
    *(v88 + 16) = v552;
    *(v88 + 24) = v89;
    v90 = swift_allocObject();
    v91 = v382;
    v405 = v90;
    *(v90 + 16) = v553;
    *(v90 + 24) = v91;
    v406 = swift_allocObject();
    *(v406 + 16) = 0;
    v407 = swift_allocObject();
    *(v407 + 16) = v383;
    v92 = swift_allocObject();
    v384 = v92;
    *(v92 + 16) = v554;
    *(v92 + 24) = 0;
    v93 = swift_allocObject();
    v94 = v384;
    v385 = v93;
    *(v93 + 16) = v555;
    *(v93 + 24) = v94;
    v95 = swift_allocObject();
    v96 = v385;
    v386 = v95;
    *(v95 + 16) = v556;
    *(v95 + 24) = v96;
    v97 = swift_allocObject();
    v98 = v386;
    v408 = v97;
    *(v97 + 16) = v557;
    *(v97 + 24) = v98;
    v409 = swift_allocObject();
    *(v409 + 16) = v390;
    v410 = swift_allocObject();
    *(v410 + 16) = v392;
    v99 = swift_allocObject();
    v387 = v99;
    *(v99 + 16) = v558;
    *(v99 + 24) = 0;
    v100 = swift_allocObject();
    v101 = v387;
    v411 = v100;
    *(v100 + 16) = v559;
    *(v100 + 24) = v101;
    v412 = swift_allocObject();
    *(v412 + 16) = v390;
    v413 = swift_allocObject();
    *(v413 + 16) = v392;
    v102 = swift_allocObject();
    v388 = v102;
    *(v102 + 16) = v560;
    *(v102 + 24) = 0;
    v103 = swift_allocObject();
    v104 = v388;
    v414 = v103;
    *(v103 + 16) = v561;
    *(v103 + 24) = v104;
    v415 = swift_allocObject();
    *(v415 + 16) = v390;
    v416 = swift_allocObject();
    *(v416 + 16) = v392;
    v105 = swift_allocObject();
    v389 = v105;
    *(v105 + 16) = v562;
    *(v105 + 24) = 0;
    v106 = swift_allocObject();
    v107 = v389;
    v417 = v106;
    *(v106 + 16) = v563;
    *(v106 + 24) = v107;
    v418 = swift_allocObject();
    *(v418 + 16) = v390;
    v419 = swift_allocObject();
    *(v419 + 16) = v392;
    v108 = swift_allocObject();
    v395 = v108;
    *(v108 + 16) = v564;
    *(v108 + 24) = 0;
    v109 = swift_allocObject();
    v110 = v395;
    v421 = v109;
    *(v109 + 16) = v565;
    *(v109 + 24) = v110;
    v420 = sub_26B07A760();
    v422 = v111;

    v112 = v397;
    v113 = v422;
    *v422 = v566;
    v113[1] = v112;

    v114 = v398;
    v115 = v422;
    v422[2] = v567;
    v115[3] = v114;

    v116 = v399;
    v117 = v422;
    v422[4] = v568;
    v117[5] = v116;

    v118 = v400;
    v119 = v422;
    v422[6] = v569;
    v119[7] = v118;

    v120 = v401;
    v121 = v422;
    v422[8] = v570;
    v121[9] = v120;

    v122 = v402;
    v123 = v422;
    v422[10] = v571;
    v123[11] = v122;

    v124 = v403;
    v125 = v422;
    v422[12] = v572;
    v125[13] = v124;

    v126 = v404;
    v127 = v422;
    v422[14] = v573;
    v127[15] = v126;

    v128 = v405;
    v129 = v422;
    v422[16] = v574;
    v129[17] = v128;

    v130 = v406;
    v131 = v422;
    v422[18] = v575;
    v131[19] = v130;

    v132 = v407;
    v133 = v422;
    v422[20] = v576;
    v133[21] = v132;

    v134 = v408;
    v135 = v422;
    v422[22] = v577;
    v135[23] = v134;

    v136 = v409;
    v137 = v422;
    v422[24] = v578;
    v137[25] = v136;

    v138 = v410;
    v139 = v422;
    v422[26] = v579;
    v139[27] = v138;

    v140 = v411;
    v141 = v422;
    v422[28] = v580;
    v141[29] = v140;

    v142 = v412;
    v143 = v422;
    v422[30] = v581;
    v143[31] = v142;

    v144 = v413;
    v145 = v422;
    v422[32] = v582;
    v145[33] = v144;

    v146 = v414;
    v147 = v422;
    v422[34] = v583;
    v147[35] = v146;

    v148 = v415;
    v149 = v422;
    v422[36] = v584;
    v149[37] = v148;

    v150 = v416;
    v151 = v422;
    v422[38] = v585;
    v151[39] = v150;

    v152 = v417;
    v153 = v422;
    v422[40] = v586;
    v153[41] = v152;

    v154 = v418;
    v155 = v422;
    v422[42] = v587;
    v155[43] = v154;

    v156 = v419;
    v157 = v422;
    v422[44] = v588;
    v157[45] = v156;

    v158 = v421;
    v159 = v422;
    v422[46] = v589;
    v159[47] = v158;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v423, v424))
    {
      v160 = v425;
      v369 = sub_26B07A420();
      v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v370 = sub_26AEA3B70(0, v368, v368);
      v371 = sub_26AEA3B70(6, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v372 = &v693;
      v693 = v369;
      v373 = &v692;
      v692 = v370;
      v374 = &v691;
      v691 = v371;
      sub_26AEA3BC4(2, &v693);
      sub_26AEA3BC4(8, v372);
      v689 = v566;
      v690 = v397;
      sub_26AEA3BD8(&v689, v372, v373, v374);
      v375 = v160;
      if (v160)
      {

        __break(1u);
      }

      else
      {
        v689 = v567;
        v690 = v398;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v367 = 0;
        v689 = v568;
        v690 = v399;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v366 = 0;
        v689 = v569;
        v690 = v400;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v365 = 0;
        v689 = v570;
        v690 = v401;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v364 = 0;
        v689 = v571;
        v690 = v402;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v363 = 0;
        v689 = v572;
        v690 = v403;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v362 = 0;
        v689 = v573;
        v690 = v404;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v361 = 0;
        v689 = v574;
        v690 = v405;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v360 = 0;
        v689 = v575;
        v690 = v406;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v359 = 0;
        v689 = v576;
        v690 = v407;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v358 = 0;
        v689 = v577;
        v690 = v408;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v357 = 0;
        v689 = v578;
        v690 = v409;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v356 = 0;
        v689 = v579;
        v690 = v410;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v355 = 0;
        v689 = v580;
        v690 = v411;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v354 = 0;
        v689 = v581;
        v690 = v412;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v353 = 0;
        v689 = v582;
        v690 = v413;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v352 = 0;
        v689 = v583;
        v690 = v414;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v351 = 0;
        v689 = v584;
        v690 = v415;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v350 = 0;
        v689 = v585;
        v690 = v416;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v349 = 0;
        v689 = v586;
        v690 = v417;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v348 = 0;
        v689 = v587;
        v690 = v418;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v347 = 0;
        v689 = v588;
        v690 = v419;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        v346 = 0;
        v689 = v589;
        v690 = v421;
        sub_26AEA3BD8(&v689, &v693, &v692, &v691);
        _os_log_impl(&dword_26AE88000, v423, v424, "%s.%s: Overring the default Coming Soon tip content and returning UserDefaultsBasedComingSoonTip instead.\nForce show: %{BOOL}d\nForce hide: %{BOOL}d\nTitle: %s\nMessage: %s\nImage system name: %s\nLearn More URL: %s", v369, 0x4Au);
        sub_26AEA3C24(v370, 0, v368);
        sub_26AEA3C24(v371, 6, MEMORY[0x277D84F70] + 8);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v161 = MEMORY[0x277D82BD8](v423);
    return (v481)(v615, v607, v161);
  }

  return result;
}

uint64_t sub_26AF97B6C()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = [v1 shouldShowComingSoonTip];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26AF97BD4()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = [v1 shouldHideComingSoonTip];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26AF97C3C()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = [v1 comingSoonTipTitle];
  if (v2)
  {
    sub_26B079E00();
    MEMORY[0x277D82BD8](v2);
  }

  MEMORY[0x277D82BD8](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400, &qword_26B089540);
  return sub_26B079E60();
}

uint64_t sub_26AF97D50()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = [v1 comingSoonTipMessage];
  if (v2)
  {
    sub_26B079E00();
    MEMORY[0x277D82BD8](v2);
  }

  MEMORY[0x277D82BD8](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400, &qword_26B089540);
  return sub_26B079E60();
}

uint64_t sub_26AF97E64()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = [v1 comingSoonTipImageSystemName];
  if (v2)
  {
    sub_26B079E00();
    MEMORY[0x277D82BD8](v2);
  }

  MEMORY[0x277D82BD8](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400, &qword_26B089540);
  return sub_26B079E60();
}

uint64_t sub_26AF97F78()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = [v1 comingSoonTipLearnMoreLink];
  if (v2)
  {
    sub_26B079E00();
    MEMORY[0x277D82BD8](v2);
  }

  MEMORY[0x277D82BD8](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400, &qword_26B089540);
  return sub_26B079E60();
}

uint64_t sub_26AF9808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v143 = a1;
  v144 = a2;
  v145 = a3;
  v146 = a4;
  v147 = a5;
  v148 = a6;
  v149 = a7;
  v150 = a8;
  v151 = sub_26AF9BB2C;
  v153 = sub_26AF9BD0C;
  v155 = sub_26AF9BD58;
  v157 = sub_26AF99CC0;
  v158 = sub_26AF9BE58;
  v160 = sub_26AF9BB74;
  v162 = sub_26AF9BF58;
  v164 = sub_26AF9BBC0;
  v166 = sub_26AF9C058;
  v168 = sub_26AF9BC0C;
  v170 = sub_26AF9C158;
  v175 = sub_26AF9BC58;
  v179 = sub_26AF9C258;
  v181 = sub_26AF9BC90;
  v183 = sub_26AF9BCC4;
  v185 = sub_26AF9BDA4;
  v187 = sub_26AF9BDDC;
  v189 = sub_26AF9BE10;
  v191 = sub_26AF9BEA4;
  v193 = sub_26AF9BEDC;
  v195 = sub_26AF9BF10;
  v197 = sub_26AF9BFA4;
  v199 = sub_26AF9BFDC;
  v201 = sub_26AF9C010;
  v203 = sub_26AF9C0A4;
  v205 = sub_26AF9C0DC;
  v207 = sub_26AF9C110;
  v209 = sub_26AF9C1A4;
  v211 = sub_26AF9C1DC;
  v213 = sub_26AF9C210;
  v216 = sub_26AF9C2A4;
  v238 = 0;
  v239 = 0;
  v236 = 0;
  v237 = 0;
  v234 = 0;
  v235 = 0;
  v232 = 0;
  v233 = 0;
  v231 = 0;
  v136 = 0;
  v137 = sub_26B078580();
  v138 = *(v137 - 8);
  v139 = v137 - 8;
  v140 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143);
  v141 = v102 - v140;
  v238 = v8;
  v239 = v9;
  v236 = v10;
  v237 = v11;
  v234 = v12;
  v235 = v13;
  v232 = v14;
  v233 = v15;
  v231 = v16;
  sub_26B078550();
  MEMORY[0x277D82BE0](v142);
  v177 = 7;
  v152 = swift_allocObject();
  *(v152 + 16) = v142;
  sub_26B078640();
  v176 = 32;
  v17 = swift_allocObject();
  v18 = v144;
  v161 = v17;
  *(v17 + 16) = v143;
  *(v17 + 24) = v18;
  sub_26B078640();
  v19 = swift_allocObject();
  v20 = v146;
  v165 = v19;
  *(v19 + 16) = v145;
  *(v19 + 24) = v20;
  sub_26B078640();
  v21 = swift_allocObject();
  v22 = v148;
  v169 = v21;
  *(v21 + 16) = v147;
  *(v21 + 24) = v22;
  sub_26B078640();
  v23 = swift_allocObject();
  v24 = v150;
  v178 = v23;
  *(v23 + 16) = v149;
  *(v23 + 24) = v24;
  v220 = sub_26B078570();
  v221 = sub_26B07A2A0();
  v173 = 17;
  v182 = swift_allocObject();
  v172 = 32;
  *(v182 + 16) = 32;
  v184 = swift_allocObject();
  v174 = 8;
  *(v184 + 16) = 8;
  v25 = swift_allocObject();
  v26 = v152;
  v154 = v25;
  *(v25 + 16) = v151;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v154;
  v156 = v27;
  *(v27 + 16) = v153;
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  v30 = v156;
  v186 = v29;
  *(v29 + 16) = v155;
  *(v29 + 24) = v30;
  v188 = swift_allocObject();
  *(v188 + 16) = v172;
  v190 = swift_allocObject();
  *(v190 + 16) = v174;
  v31 = swift_allocObject();
  v159 = v31;
  *(v31 + 16) = v157;
  *(v31 + 24) = 0;
  v32 = swift_allocObject();
  v33 = v159;
  v192 = v32;
  *(v32 + 16) = v158;
  *(v32 + 24) = v33;
  v194 = swift_allocObject();
  *(v194 + 16) = v172;
  v196 = swift_allocObject();
  *(v196 + 16) = v174;
  v34 = swift_allocObject();
  v35 = v161;
  v163 = v34;
  *(v34 + 16) = v160;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v163;
  v198 = v36;
  *(v36 + 16) = v162;
  *(v36 + 24) = v37;
  v200 = swift_allocObject();
  *(v200 + 16) = v172;
  v202 = swift_allocObject();
  *(v202 + 16) = v174;
  v38 = swift_allocObject();
  v39 = v165;
  v167 = v38;
  *(v38 + 16) = v164;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v167;
  v204 = v40;
  *(v40 + 16) = v166;
  *(v40 + 24) = v41;
  v206 = swift_allocObject();
  *(v206 + 16) = v172;
  v208 = swift_allocObject();
  *(v208 + 16) = v174;
  v42 = swift_allocObject();
  v43 = v169;
  v171 = v42;
  *(v42 + 16) = v168;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v171;
  v210 = v44;
  *(v44 + 16) = v170;
  *(v44 + 24) = v45;
  v212 = swift_allocObject();
  *(v212 + 16) = v172;
  v214 = swift_allocObject();
  *(v214 + 16) = v174;
  v46 = swift_allocObject();
  v47 = v178;
  v180 = v46;
  *(v46 + 16) = v175;
  *(v46 + 24) = v47;
  v48 = swift_allocObject();
  v49 = v180;
  v217 = v48;
  *(v48 + 16) = v179;
  *(v48 + 24) = v49;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v215 = sub_26B07A760();
  v218 = v50;

  v51 = v182;
  v52 = v218;
  *v218 = v181;
  v52[1] = v51;

  v53 = v184;
  v54 = v218;
  v218[2] = v183;
  v54[3] = v53;

  v55 = v186;
  v56 = v218;
  v218[4] = v185;
  v56[5] = v55;

  v57 = v188;
  v58 = v218;
  v218[6] = v187;
  v58[7] = v57;

  v59 = v190;
  v60 = v218;
  v218[8] = v189;
  v60[9] = v59;

  v61 = v192;
  v62 = v218;
  v218[10] = v191;
  v62[11] = v61;

  v63 = v194;
  v64 = v218;
  v218[12] = v193;
  v64[13] = v63;

  v65 = v196;
  v66 = v218;
  v218[14] = v195;
  v66[15] = v65;

  v67 = v198;
  v68 = v218;
  v218[16] = v197;
  v68[17] = v67;

  v69 = v200;
  v70 = v218;
  v218[18] = v199;
  v70[19] = v69;

  v71 = v202;
  v72 = v218;
  v218[20] = v201;
  v72[21] = v71;

  v73 = v204;
  v74 = v218;
  v218[22] = v203;
  v74[23] = v73;

  v75 = v206;
  v76 = v218;
  v218[24] = v205;
  v76[25] = v75;

  v77 = v208;
  v78 = v218;
  v218[26] = v207;
  v78[27] = v77;

  v79 = v210;
  v80 = v218;
  v218[28] = v209;
  v80[29] = v79;

  v81 = v212;
  v82 = v218;
  v218[30] = v211;
  v82[31] = v81;

  v83 = v214;
  v84 = v218;
  v218[32] = v213;
  v84[33] = v83;

  v85 = v217;
  v86 = v218;
  v218[34] = v216;
  v86[35] = v85;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v220, v221))
  {
    v87 = v136;
    v129 = sub_26B07A420();
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v130 = sub_26AEA3B70(0, v128, v128);
    v131 = sub_26AEA3B70(6, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v132 = &v226;
    v226 = v129;
    v133 = &v225;
    v225 = v130;
    v134 = &v224;
    v224 = v131;
    sub_26AEA3BC4(2, &v226);
    sub_26AEA3BC4(6, v132);
    v222 = v181;
    v223 = v182;
    sub_26AEA3BD8(&v222, v132, v133, v134);
    v135 = v87;
    if (v87)
    {

      __break(1u);
    }

    else
    {
      v222 = v183;
      v223 = v184;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v127 = 0;
      v222 = v185;
      v223 = v186;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v126 = 0;
      v222 = v187;
      v223 = v188;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v125 = 0;
      v222 = v189;
      v223 = v190;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v124 = 0;
      v222 = v191;
      v223 = v192;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v123 = 0;
      v222 = v193;
      v223 = v194;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v122 = 0;
      v222 = v195;
      v223 = v196;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v121 = 0;
      v222 = v197;
      v223 = v198;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v120 = 0;
      v222 = v199;
      v223 = v200;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v119 = 0;
      v222 = v201;
      v223 = v202;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v118 = 0;
      v222 = v203;
      v223 = v204;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v117 = 0;
      v222 = v205;
      v223 = v206;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v116 = 0;
      v222 = v207;
      v223 = v208;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v115 = 0;
      v222 = v209;
      v223 = v210;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v114 = 0;
      v222 = v211;
      v223 = v212;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v113 = 0;
      v222 = v213;
      v223 = v214;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v112 = 0;
      v222 = v216;
      v223 = v217;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      _os_log_impl(&dword_26AE88000, v220, v221, "%s.%s: Setting up the Mocked Coming Soon tip with:\n    title: %s\n    content: %s\n    imageSystemName: %s\n    learnMoreLink: %s", v129, 0x3Eu);
      sub_26AEA3C24(v130, 0, v128);
      sub_26AEA3C24(v131, 6, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v88 = MEMORY[0x277D82BD8](v220);
  (*(v138 + 8))(v141, v137, v88);
  v111 = 1;
  sub_26AF90FE0(1);
  sub_26B078640();
  v102[1] = &v230;
  v89 = sub_26AF913F4();
  v90 = v144;
  v103 = v89;
  *v91 = v143;
  v91[1] = v90;

  v109 = 0;
  v103();
  sub_26B078640();
  v104 = &v229;
  v92 = sub_26AF913F4();
  v93 = v146;
  v105 = v92;
  *(v94 + 16) = v145;
  *(v94 + 24) = v93;

  v105();
  sub_26B078640();
  v106 = &v228;
  v95 = sub_26AF913F4();
  v96 = v150;
  v107 = v95;
  *(v97 + 32) = v149;
  *(v97 + 40) = v96;

  v107();
  sub_26B078640();
  v108 = &v227;
  v98 = sub_26AF913F4();
  v99 = v148;
  v110 = v98;
  *(v100 + 48) = v147;
  *(v100 + 56) = v99;

  v110();
  return sub_26AFE8298(v111 & 1);
}

uint64_t sub_26AF99D24(uint64_t a1, uint64_t a2)
{
  sub_26B078640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400, &qword_26B089540);
  return sub_26B079E60();
}

uint64_t sub_26AF99D88(uint64_t a1, uint64_t a2)
{
  sub_26B078640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400, &qword_26B089540);
  return sub_26B079E60();
}

uint64_t sub_26AF99DEC(uint64_t a1, uint64_t a2)
{
  sub_26B078640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400, &qword_26B089540);
  return sub_26B079E60();
}

char *TipsManager.init()()
{
  v3 = 0;
  *OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_inManualControl = 0;
  sub_26AFEA910(&v3[OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_constellationComingSoonTip]);
  nullsub_66();
  sub_26AFE820C(&v3[OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_mockedComingSoonTip]);
  v2.receiver = v3;
  v2.super_class = type metadata accessor for TipsManager();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id TipsManager.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26AF9A398@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26AF9A460(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_26AF9A4D4();
  v5 = MEMORY[0x277D849A8];

  return sub_26B06A188(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_26AF9A4D4()
{
  v2 = qword_2803DD950;
  if (!qword_2803DD950)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF9ADA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_26AF9A4D4();
  v5 = MEMORY[0x277D849A8];

  return sub_26B06A188(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_26AF9AFA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_26AF9A4D4();
  v5 = MEMORY[0x277D849A8];

  return sub_26B06A188(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15 = a6;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v16 = a4;
  v18 = a5;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v24 = a4;
  v17 = type metadata accessor for SUUIEnvironmentContextModifier(0);
  v11 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v19 = (&v11 - v11);
  v23 = v7;
  v22 = v8;
  v21 = v9;
  v20 = v6;

  sub_26AF9D234(v12, v13, v14, v19);
  MEMORY[0x26D66C890](v19, v16, v17, v18);
  return sub_26AF9D2A4(v19);
}

uint64_t type metadata accessor for SUUIEnvironmentContextModifier(uint64_t a1)
{
  v2 = qword_2803DDA10;
  if (!qword_2803DDA10)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_26AF9C610@<X0>(void *a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD968, "|l");
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v7 = &v3 - v4;
  v8 = v1;
  sub_26AF9D384(v1, (&v3 - v4));
  sub_26B078A10();
  return sub_26AF9D458(v7);
}

uint64_t sub_26AF9C70C(uint64_t a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v4[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD968, "|l") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v5 = v4 - v4[0];
  v8 = v2;
  v7 = v1;
  sub_26AF9D384(v2, (v4 - v4[0]));
  sub_26AF9D4F4(v5, v4[1]);
  return sub_26AF9D458(v6);
}

uint64_t SUUIEnvironmentContextModifier.manager.getter()
{
  v2 = *(v0 + *(type metadata accessor for SUUIEnvironmentContextModifier(0) + 20));

  return v2;
}

uint64_t SUUIEnvironmentContextModifier.reactivePlatform.getter()
{
  v2 = *(v0 + *(type metadata accessor for SUUIEnvironmentContextModifier(0) + 24));

  return v2;
}

uint64_t SUUIEnvironmentContextModifier.reactiveAnalyticsReporter.getter()
{
  v2 = *(v0 + *(type metadata accessor for SUUIEnvironmentContextModifier(0) + 28));

  return v2;
}

uint64_t SUUIEnvironmentContextModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v11[1] = a1;
  v3 = v2;
  v42 = v3;
  v25 = sub_26AF9DA70;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v43 = type metadata accessor for SUUIEnvironmentContextModifier(0);
  v12 = *(v43 - 1);
  v20 = v12;
  v21 = *(v12 + 64);
  v13 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v23 = v11 - v13;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970, &qword_26B08CE80);
  v14 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v31 = v11 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD978, &qword_26B08CE88);
  v15 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v36 = v11 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD980, &qword_26B08CE90);
  v16 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v41 = v11 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD988, &qword_26B08CE98);
  v17 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v48 = v11 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD990, &qword_26B08CEA0);
  v18 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v52 = v11 - v18;
  v19 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v53 = v11 - v19;
  v60 = v11 - v19;
  v59 = a1;
  v58 = v7;
  sub_26AF9D67C(v7, v8);
  v22 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v26 = swift_allocObject();
  sub_26AF9D95C(v23, (v26 + v22));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998, &qword_26B08CEA8);
  sub_26AF9DAD4();
  sub_26B0796C0();
  v9 = v42;
  sub_26AEB3258(v25, v26);
  KeyPath = swift_getKeyPath();
  v27 = *(v9 + v43[6]);

  v29 = &v57;
  sub_26B0784C0();

  sub_26AF9DB8C();
  sub_26B079430();
  sub_26AF9DC30(v29);

  sub_26AF9DC6C(v31);
  v35 = swift_getKeyPath();
  v32 = *(v42 + v43[6]);

  v34 = &v56;
  v56 = v32;
  sub_26AF9DD7C();
  sub_26B079430();
  sub_26AF9DEAC();

  sub_26AF9DED8(v36);
  v40 = swift_getKeyPath();
  v37 = *(v42 + v43[5]);

  v39 = &v55;
  v55 = v37;
  sub_26AF9E038();
  sub_26B079430();
  sub_26AEECDD4(v39);

  sub_26AF9E168(v41);
  v47 = swift_getKeyPath();
  v44 = *(v42 + v43[7]);

  v46 = &v54;
  v54 = v44;
  sub_26AF9E300();
  sub_26B079430();
  sub_26AF3ED48();

  sub_26AF9E430(v48);
  v51 = sub_26AF9E5D0();
  sub_26AE9463C(v52, v50, v53);
  sub_26AF9E700(v52);
  sub_26AF9E8D8(v53, v52);
  sub_26AE94B4C(v52, v50, v49);
  sub_26AF9E700(v52);
  return sub_26AF9E700(v53);
}

uint64_t sub_26AF9CF78(uint64_t a1)
{
  v5 = a1;
  v6 = sub_26AF9F320;
  v12 = 0;
  v10 = sub_26B079120();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v9 = &v3 - v4;
  v12 = a1;
  sub_26AF9C610((&v3 - v4));
  v11 = v5;
  sub_26B079110();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_26AF9D070(void *a1)
{
  type metadata accessor for SUUIEnvironmentContextModifier(0);

  MEMORY[0x277D82BE0](a1);
  ReactiveUIManager.presentingViewController.setter(a1);
}

uint64_t sub_26AF9D0EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a2;
  v4[1] = a1;
  v11 = sub_26B078D30();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v8 = v4 - v5;
  (*(v9 + 16))(v4 - v5, v2);
  v7 = &v12;
  EnvironmentValues.platform.getter();
  memcpy(v6, v7, 0x28uLL);
  return (*(v9 + 8))(v8, v11);
}

int *sub_26AF9D234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_getKeyPath();
  sub_26B078A30();
  result = type metadata accessor for SUUIEnvironmentContextModifier(0);
  *(a4 + result[5]) = a1;
  *(a4 + result[6]) = a2;
  *(a4 + result[7]) = a3;
  return result;
}

uint64_t sub_26AF9D2A4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970, &unk_26B08AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079120();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  type metadata accessor for SUUIEnvironmentContextModifier(0);

  return a1;
}

void *sub_26AF9D384(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970, &unk_26B08AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B079120();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AF9D458(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970, &unk_26B08AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079120();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_26AF9D4F4(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_26AF9D5E0(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970, &unk_26B08AC60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_26B079120();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_26AF9D5E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970, &unk_26B08AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079120();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_26AF9D67C(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970, &unk_26B08AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B079120();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v11 = *a1;

    *a2 = v11;
  }

  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SUUIEnvironmentContextModifier(0);
  v4 = v6[5];
  v5 = *(a1 + v4);

  *(a2 + v4) = v5;
  v7 = v6[6];
  v8 = *(a1 + v7);

  *(a2 + v7) = v8;
  v9 = v6[7];
  v10 = *(a1 + v9);

  result = a2;
  *(a2 + v9) = v10;
  return result;
}

uint64_t sub_26AF9D7E4()
{
  v0 = *(*(type metadata accessor for SUUIEnvironmentContextModifier(0) - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970, &unk_26B08AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079120();
    (*(*(v1 - 8) + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

char *sub_26AF9D95C(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970, &unk_26B08AC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B079120();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  v3 = type metadata accessor for SUUIEnvironmentContextModifier(0);
  result = a2;
  *&a2[v3[5]] = *&a1[v3[5]];
  *&a2[v3[6]] = *&a1[v3[6]];
  *&a2[v3[7]] = *&a1[v3[7]];
  return result;
}

uint64_t sub_26AF9DA70()
{
  v1 = *(type metadata accessor for SUUIEnvironmentContextModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AF9CF78(v2);
}

unint64_t sub_26AF9DAD4()
{
  v2 = qword_2803DD9A0;
  if (!qword_2803DD9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD998, &qword_26B08CEA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF9DB8C()
{
  v2 = qword_2803DD9A8;
  if (!qword_2803DD9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD970, &qword_26B08CE80);
    sub_26AF9DAD4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9A8);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AF9DC30(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t sub_26AF9DC6C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998, &qword_26B08CEA8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970, &qword_26B08CE80) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

unint64_t sub_26AF9DD7C()
{
  v2 = qword_2803DD9B0;
  if (!qword_2803DD9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD978, &qword_26B08CE88);
    sub_26AF9DB8C();
    sub_26AF9DE24();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF9DE24()
{
  v2 = qword_2803DD9B8;
  if (!qword_2803DD9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD9C0, &qword_26B08CF00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF9DED8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998, &qword_26B08CEA8);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970, &qword_26B08CE80) + 36);
  if (*(a1 + v5))
  {
  }

  if (*(a1 + v5 + 16))
  {
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD978, &qword_26B08CE88) + 36);

  if (*(v3 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 8));
  }

  return a1;
}

unint64_t sub_26AF9E038()
{
  v2 = qword_2803DD9C8;
  if (!qword_2803DD9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD980, &qword_26B08CE90);
    sub_26AF9DD7C();
    sub_26AF9E0E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF9E0E0()
{
  v2 = qword_2803DD9D0;
  if (!qword_2803DD9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD9D8, &qword_26B08CF30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF9E168(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998, &qword_26B08CEA8);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970, &qword_26B08CE80) + 36);
  if (*(a1 + v5))
  {
  }

  if (*(a1 + v5 + 16))
  {
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD978, &qword_26B08CE88) + 36);

  if (*(v3 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD980, &qword_26B08CE90);

  return a1;
}

unint64_t sub_26AF9E300()
{
  v2 = qword_2803DD9E0;
  if (!qword_2803DD9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD988, &qword_26B08CE98);
    sub_26AF9E038();
    sub_26AF9E3A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF9E3A8()
{
  v2 = qword_2803DD9E8;
  if (!qword_2803DD9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD9F0, &unk_26B08CF60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF9E430(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998, &qword_26B08CEA8);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970, &qword_26B08CE80) + 36);
  if (*(a1 + v5))
  {
  }

  if (*(a1 + v5 + 16))
  {
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD978, &qword_26B08CE88) + 36);

  if (*(v3 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD980, &qword_26B08CE90);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD988, &qword_26B08CE98);

  return a1;
}

unint64_t sub_26AF9E5D0()
{
  v2 = qword_2803DD9F8;
  if (!qword_2803DD9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD990, &qword_26B08CEA0);
    sub_26AF9E300();
    sub_26AF9E678();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF9E678()
{
  v2 = qword_2803DDA00;
  if (!qword_2803DDA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA08, &qword_26B092A20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF9E700(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998, &qword_26B08CEA8);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970, &qword_26B08CE80) + 36);
  if (*(a1 + v5))
  {
  }

  if (*(a1 + v5 + 16))
  {
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD978, &qword_26B08CE88) + 36);

  if (*(v3 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD980, &qword_26B08CE90);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD988, &qword_26B08CE98);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD990, &qword_26B08CEA0);

  return a1;
}

uint64_t sub_26AF9E8D8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998, &qword_26B08CEA8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970, &qword_26B08CE80) + 36);
  if (*(a1 + v35))
  {
    v31 = *(a1 + v35);
    v32 = *(a1 + v35 + 8);

    v3 = (a2 + v35);
    *v3 = v31;
    v3[1] = v32;
  }

  else
  {
    *(a2 + v35) = *(a1 + v35);
  }

  v29 = a2 + v35;
  v30 = a1 + v35;
  if (*(a1 + v35 + 16))
  {
    v27 = *(v30 + 16);
    v28 = *(a1 + v35 + 24);

    *(v29 + 16) = v27;
    *(a2 + v35 + 24) = v28;
  }

  else
  {
    *(v29 + 16) = *(v30 + 16);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD978, &qword_26B08CE88);
  v23 = (a2 + *(v4 + 36));
  v24 = (a1 + *(v4 + 36));
  v22 = *v24;

  *v23 = v22;
  v25 = v23 + 1;
  v26 = v24 + 1;
  if (v24[4])
  {
    v5 = v24[4];
    v23[4] = v5;
    v23[5] = v24[5];
    (**(v5 - 8))(v25, v26);
  }

  else
  {
    memcpy(v25, v26, 0x28uLL);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD980, &qword_26B08CE90);
  v12 = (a2 + *(v6 + 36));
  v11 = (a1 + *(v6 + 36));
  v10 = *v11;

  *v12 = v10;
  v13 = v11[1];

  v12[1] = v13;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD988, &qword_26B08CE98);
  v16 = (a2 + *(v7 + 36));
  v15 = (a1 + *(v7 + 36));
  v14 = *v15;

  *v16 = v14;
  v17 = v15[1];

  v16[1] = v17;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD990, &qword_26B08CEA0);
  v20 = (a2 + *(v8 + 36));
  v19 = (a1 + *(v8 + 36));
  v18 = *v19;

  *v20 = v18;
  v21 = v19[1];

  result = a2;
  v20[1] = v21;
  return result;
}

uint64_t sub_26AF9ED30(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD968, "|l");
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_26AF9EE7C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD968, "|l");
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26AF9EF78(uint64_t a1)
{
  v6 = sub_26AF9F0B0(319);
  if (v1 <= 0x3F)
  {
    v6 = type metadata accessor for ReactiveUIManager(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_26B078530();
      if (v3 <= 0x3F)
      {
        v6 = sub_26AF9F14C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_26AF9F0B0(uint64_t a1)
{
  v5 = qword_2803DDA20;
  if (!qword_2803DDA20)
  {
    sub_26B079120();
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DDA20);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_26AF9F14C(uint64_t a1)
{
  v5 = qword_2803DDA28;
  if (!qword_2803DDA28)
  {
    type metadata accessor for ReactiveAnalyticsReporter(255);
    v4 = sub_26B07A430();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DDA28);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_26AF9F200()
{
  type metadata accessor for SUUIEnvironmentContextModifier(255);
  sub_26B078BF0();
  sub_26AF070EC();
  return swift_getWitnessTable();
}

void *sub_26AF9F28C(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t dispatch thunk of DeepLinkProviding.handleDeepLink(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v9 = (*(a3 + 8) + **(a3 + 8));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AF9F47C;

  return v9(a1, a2, a3);
}

uint64_t sub_26AF9F47C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t AlternateUpdateContentView.init(presenting:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v17 = a1;
  v23 = 0;
  v22 = 0;
  updated = type metadata accessor for AlternateUpdateContentView(0);
  v12 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v19 = (&v11 - v12);
  v23 = &v11 - v12;
  v22 = v2;
  swift_getKeyPath();
  sub_26B078A30();
  v13 = *(updated + 20);
  swift_getKeyPath();
  sub_26B078A30();
  v3 = updated;
  v4 = v21;
  v5 = v19 + v13;
  *v5 = v20;
  v14 = 1;
  v5[8] = v4 & 1;
  v15 = *(v3 + 24);
  v6 = sub_26AF9FAF0(0);
  v7 = v17;
  v8 = v19 + v15;
  *v8 = v6 & v14;
  *(v8 + 1) = v9;
  sub_26AF9FE1C(v7);
  sub_26AFA4748(v19, v18);
  return sub_26AF7D8E8(v19);
}

uint64_t type metadata accessor for AlternateUpdateContentView(uint64_t a1)
{
  v2 = qword_2803DDA98;
  if (!qword_2803DDA98)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_26AF9F7C0@<X0>(void *a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80, &qword_26B086048);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v7 = (&v3 - v4);
  v8 = v1;
  sub_26AE9181C(v1, (&v3 - v4));
  sub_26B078A10();
  return sub_26AE918F0(v7);
}

void *sub_26AF9F8BC(void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v4[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80, &qword_26B086048) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v5 = (v4 - v4[0]);
  v8 = v2;
  v7 = v1;
  sub_26AE9181C(v2, (v4 - v4[0]));
  sub_26AE91A90(v5, v4[1]);
  return sub_26AE918F0(v6);
}

uint64_t sub_26AF9F974()
{
  type metadata accessor for AlternateUpdateContentView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AF9FA10()
{
  v2 = *(v0 + *(type metadata accessor for AlternateUpdateContentView(0) + 20));

  return v2;
}

uint64_t sub_26AF9FA64(uint64_t a1, char a2)
{

  v3 = v2 + *(type metadata accessor for AlternateUpdateContentView(0) + 20);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
}

uint64_t sub_26AF9FB44()
{
  type metadata accessor for AlternateUpdateContentView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798B0();

  return v1 & 1;
}

uint64_t sub_26AF9FBDC(char a1)
{
  v8 = 0;
  v9 = a1 & 1;
  v2 = (v1 + *(type metadata accessor for AlternateUpdateContentView(0) + 24));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798C0();
  sub_26AE91DC8(v6);
}

uint64_t sub_26AF9FCA0()
{
  type metadata accessor for AlternateUpdateContentView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798D0();

  return v1;
}

uint64_t sub_26AF9FD50()
{
  v2 = *(v0 + *(type metadata accessor for AlternateUpdateContentView(0) + 24));

  return v2 & 1;
}

uint64_t sub_26AF9FDA4(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for AlternateUpdateContentView(0) + 24);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t AlternateUpdateContentView.presentedDescriptor.getter()
{
  v13 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v0 = &v4 - v5;
  v9 = &v4 - v5;
  v13 = v1;
  updated = type metadata accessor for AlternateUpdateContentView(0);
  (*(v7 + 16))(v0, v6 + *(updated + 28), v10);
  sub_26B079AD0();
  v11 = v12;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t sub_26AF9FFB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for AlternateUpdateContentView(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v9 = &v6 - v7;
  sub_26AFA4748(v2, (&v6 - v7));
  updated = AlternateUpdateContentView.presentedDescriptor.getter();
  v4 = v9;
  *v8 = updated;
  return sub_26AF7D8E8(v4);
}

uint64_t sub_26AFA005C(uint64_t *a1)
{
  v2 = *a1;

  return AlternateUpdateContentView.presentedDescriptor.setter(v2);
}

uint64_t AlternateUpdateContentView.presentedDescriptor.setter(uint64_t a1)
{

  type metadata accessor for AlternateUpdateContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  sub_26B079AE0();
}

void (*AlternateUpdateContentView.presentedDescriptor.modify(void *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 13810);
  *a1 = v2;
  type metadata accessor for AlternateUpdateContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  v2[4] = sub_26B079AC0();
  return sub_26AFA01E0;
}

void sub_26AFA01E0(void **a1)
{
  v1 = *a1;
  v1[4](v1, 0);
  free(v1);
}

uint64_t AlternateUpdateContentView.$presentedDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v10 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v1 = v5 - v5[0];
  v8 = v5 - v5[0];
  v10 = v2;
  updated = type metadata accessor for AlternateUpdateContentView(0);
  (*(v6 + 16))(v1, v5[1] + *(updated + 28), v9);
  sub_26B079AF0();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_26AFA0380@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for AlternateUpdateContentView(0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AFA0404(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v10);
  v7 = &v6 - v6;
  v13 = v3;
  v12 = v1;
  (*(v8 + 16))(v2);
  updated = type metadata accessor for AlternateUpdateContentView(0);
  (*(v8 + 40))(v1 + *(updated + 28), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t AlternateUpdateContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v41 = sub_26AFA4C5C;
  v23 = MEMORY[0x277CDE888];
  v108 = 0;
  v107 = 0;
  v62 = 0;
  updated = type metadata accessor for AlternateUpdateContentView(0);
  v24 = *(updated - 8);
  v37 = v24;
  v38 = *(v24 + 64);
  v25 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v40 = v20 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA30, &qword_26B08D240);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v66 = v20 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA38, &qword_26B08D248);
  v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v32 = v20 - v31;
  v33 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v34 = v20 - v33;
  v35 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v36 = v20 - v35;
  v108 = v20 - v35;
  v107 = v6;
  sub_26AFA4748(v6, v7);
  v8 = *(v37 + 80);
  v58 = 16;
  v39 = (v8 + 16) & ~v8;
  v42 = swift_allocObject();
  sub_26AFA4AE0(v40, (v42 + v39));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA40, &qword_26B08D250);
  v44 = sub_26AFA4CDC();
  v9 = sub_26AF44F30();
  v65 = 1;
  AdaptiveScrollView.init(enabledWhen:content:)(v9 & 1, v41, v42, v43, v99);
  v50 = v97;
  v97[0] = v99[0];
  v97[1] = v99[1];
  v98 = v100;
  v10 = [objc_opt_self() systemGroupedBackgroundColor];
  v11 = sub_26B079750();
  v49 = &v96;
  v96 = v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA50, &qword_26B08D258);
  v47 = sub_26AFA4D64();
  v46 = MEMORY[0x277CE0F78];
  v48 = MEMORY[0x277CE0F60];
  sub_26AEF8488(v45, MEMORY[0x277CE0F78]);
  sub_26B0793C0();
  sub_26AEF8E10();
  sub_26AFA4DEC();
  v54 = v92;
  v92[0] = v101;
  v92[1] = v102;
  v93 = v103;
  v94 = v104;
  v95 = v105;
  v51 = sub_26AF9FB44();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA60, &unk_26B08D260);
  v53 = sub_26AFA4E18();
  v12 = sub_26AF4DBD4();
  v55 = v106;
  View.visibilityTransition(when:duration:)(v51 & 1, v52, v53, v106, v12);
  sub_26AFA4EC0();
  v56 = __dst;
  v57 = 57;
  memcpy(__dst, v55, 0x39uLL);
  v74 = v91;
  memcpy(v91, __dst, 0x39uLL);
  sub_26B079D00("Available Update", v58, v65 & 1);
  v64 = sub_26B078E10();
  v59 = v13;
  v60 = v14;
  v61 = v15;
  v63 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v63);
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = v65 & 1;
  v83 = sub_26B0792C0();
  v84 = v16;
  v85 = v17;
  v86 = v18;
  v70 = v83;
  v71 = v16;
  v72 = v17;
  v73 = v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA70, &qword_26B08D270);
  v68 = sub_26AFA4EF8();
  v79 = v70;
  v80 = v71;
  v81 = v72 & 1 & v65;
  v82 = v73;
  sub_26B0794E0();
  sub_26AE95AFC(v70, v71, v72 & 1);

  sub_26AFA5044();
  v75 = sub_26AF9F974();
  v76 = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

  if (v76)
  {
    v21 = 11;
  }

  else
  {
    v21 = 10;
  }

  v20[0] = v21;
  v77 = v67;
  v78 = v68;
  swift_getOpaqueTypeConformance2();
  View.analyticsForNavigation(_:)(v20[0], v26);
  (*(v27 + 8))(v66, v26);
  v20[1] = sub_26AFA5088();
  sub_26AE9463C(v34, v30, v36);
  sub_26AFA5180(v34);
  sub_26AFA521C(v36, v32);
  sub_26AE94B4C(v32, v30, v22);
  sub_26AFA5180(v32);
  return sub_26AFA5180(v36);
}

uint64_t sub_26AFA0C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v23 = a2;
  v31 = 0;
  v13 = sub_26AFA6684;
  v29 = MEMORY[0x277CDEB28];
  v30 = nullsub_58;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAA8, &qword_26B08D3E0);
  v8 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v22 = &v8 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAB0, &qword_26B08D3E8);
  v9 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v24 = &v8 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAB8, &qword_26B08D3F0);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v10 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v37 = &v8 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA40, &qword_26B08D250);
  v11 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v42 = &v8 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v11);
  v43 = &v8 - v12;
  v51 = &v8 - v12;
  v50 = a1;
  v49 = v5;
  v14 = &v44;
  v45 = v5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAC0, &qword_26B08D3F8);
  v16 = sub_26AFA668C();
  sub_26AF4D96C();
  v18 = 0;
  v20 = 0;
  sub_26B079980();
  sub_26B078AE0();
  v19 = v6;
  v21 = sub_26AFA6714();
  sub_26AEAABD4();
  sub_26B079600();
  sub_26AFA679C(v22);
  v28 = sub_26AFA68F4();
  sub_26B079550();
  sub_26AFA6998(v24);
  v25 = sub_26AF9F974();
  v26 = *(v25 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_refreshPublisher);

  v34 = &v48;
  v48 = v26;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCF10, qword_26B08BA48);
  v46 = v27;
  v47 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AF6863C();
  sub_26B079720();

  (*(v35 + 8))(v37, v38);
  v41 = sub_26AFA4CDC();
  sub_26AE9463C(v42, v40, v43);
  sub_26AFA6AF0(v42);
  sub_26AFA6B9C(v43, v42);
  sub_26AE94B4C(v42, v40, v39);
  sub_26AFA6AF0(v42);
  return sub_26AFA6AF0(v43);
}

uint64_t sub_26AFA1170@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v45 = a1;
  v18 = sub_26AFA6C9C;
  v38 = MEMORY[0x277CDE800];
  v53 = sub_26AFA7084;
  v82 = 0;
  v81 = 0;
  v68 = __b;
  v58 = 73;
  v40 = 0;
  memset(__b, 0, 0x49uLL);
  v28 = 0;
  v8 = *(type metadata accessor for AlternateUpdateContentView(0) - 8);
  v46 = v8;
  v47 = *(v8 + 64);
  v9 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v49 = &v8 - v9;
  v30 = sub_26B078FF0();
  v20 = *(v30 - 8);
  v21 = v30 - 8;
  v10 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v29 = &v8 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAF8, &qword_26B08D420);
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v11 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v24 = &v8 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDB00, &qword_26B08D428);
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v12 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v35 = &v8 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE0, &qword_26B08D408);
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v13 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v43 = &v8 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDB08, &unk_26B08D430);
  v14 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v67 = &v8 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v69 = &v8 - v15;
  v82 = &v8 - v15;
  v81 = v4;
  v16 = v70;
  v70[2] = v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0C0, &unk_26B08BEA0);
  sub_26AF8AC30();
  sub_26B079240();
  v19 = sub_26B079190();
  v26 = sub_26AFA6CA4();
  sub_26AF0CF00();
  MEMORY[0x26D66C680](v19, v28, v40, v29, v25, v26);
  v32 = *(v20 + 8);
  v31 = v20 + 8;
  v32(v29, v30);
  (*(v22 + 8))(v24, v25);
  v27 = sub_26B079180();
  v79 = v25;
  v80 = v26;
  v39 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AF0CF00();
  MEMORY[0x26D66C680](v27, v28, v40, v29, v36, OpaqueTypeConformance2);
  v32(v29, v30);
  (*(v33 + 8))(v35, v36);
  v77 = v36;
  v78 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26B079700();
  (*(v41 + 8))(v43, v44);
  v62 = sub_26AFA6D2C();
  sub_26AE9463C(v67, v60, v69);
  sub_26AFA6E5C(v67);
  updated = AlternateUpdateContentView.presentedDescriptor.getter();
  v50 = sub_26AF9FCA0();
  v51 = v5;
  v52 = v6;
  sub_26AFA4748(v45, v49);
  v48 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v54 = swift_allocObject();
  sub_26AFA4AE0(v49, (v54 + v48));
  v56 = v75;
  AvailableUpdateView.init(presenting:isContentReady:onUpdateRequested:)(updated, v50, v51, v52 & 1, v53, v54, v75);
  v57 = __dst;
  memcpy(__dst, v56, v58);
  v59 = v74;
  memcpy(v74, v57, v58);
  v63 = sub_26AF71CC0();
  v61 = &type metadata for AvailableUpdateView;
  sub_26AE9463C(v59, &type metadata for AvailableUpdateView, v68);
  sub_26AF78E54(v59);
  sub_26AFA70FC(v69, v67);
  v65 = v73;
  v73[0] = v67;
  v66 = v72;
  sub_26AF78EE4(v68, v72);
  v73[1] = v66;
  v71[0] = v60;
  v71[1] = v61;
  v70[4] = v62;
  v70[5] = v63;
  sub_26AFD49C4(v65, 2uLL, v71, v64);
  sub_26AF78E54(v66);
  sub_26AFA6E5C(v67);
  sub_26AF78E54(v68);
  return sub_26AFA6E5C(v69);
}

uint64_t sub_26AFA18B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  v33 = MEMORY[0x277CE1A90];
  v34 = MEMORY[0x277CE1A88];
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v70 = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD820, &qword_26B08CAB8);
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v39 = v12 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD138, &unk_26B08D440);
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v44 = v12 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD828, &qword_26B08CAC0);
  v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v47 = v12 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v52 = v12 - v51;
  v53 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12 - v51);
  v54 = v12 - v53;
  v55 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12 - v53);
  v56 = v12 - v55;
  v86 = v12 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0C0, &unk_26B08BEA0);
  v58 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v59 = v12 - v58;
  v60 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12 - v58);
  v61 = v12 - v60;
  v62 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12 - v60);
  v63 = v12 - v62;
  v85 = v12 - v62;
  v84 = a1;
  v64 = sub_26AF9F974();
  v65 = ReactiveUIManager.currentState.getter();

  v68 = &v83;
  v83 = v65;
  v66 = &v82;
  v82 = 4;
  v67 = type metadata accessor for SUUIStatefulUIState(0);
  v69 = sub_26AE9BA40();
  if (sub_26B07A790())
  {
    v30 = 1;
  }

  else
  {
    v28 = sub_26AF9F974();
    v29 = ReactiveUIManager.currentState.getter();

    v81[10] = v29;
    v81[9] = 3;
    v30 = sub_26B07A790();
  }

  if (v30)
  {
    v14 = *sub_26AF90E54();
    MEMORY[0x277D82BE0](v14);
    v15 = v81;
    sub_26AF91B10(v81);
    MEMORY[0x277D82BD8](v14);
    sub_26AF9F5A4();
    v7 = sub_26B078620();
    v8 = sub_26AF9F5C0(v7);
    v16 = &v80;
    v80 = v8;
    v18 = sub_26AF8A83C();
    v17 = MEMORY[0x277CE0F78];
    v19 = MEMORY[0x277CE0F60];
    sub_26B079350();
    sub_26AEF8E10();
    (*(v36 + 8))(v39, v35);
    v76 = v35;
    v77 = v17;
    v78 = v18;
    v79 = v19;
    v24 = 1;
    swift_getOpaqueTypeConformance2();
    sub_26B079660();
    (*(v41 + 8))(v44, v40);
    v9 = sub_26AF9F5D8();
    v20 = &v75;
    v75 = v9;
    v22 = sub_26AF8A730();
    v21 = MEMORY[0x277CE04F8];
    v23 = MEMORY[0x277CE04E8];
    sub_26B079360();
    sub_26AFA74BC(v47);
    v71 = v45;
    v72 = v21;
    v73 = v22;
    v74 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26AE9463C(v54, v48, v56);
    v26 = *(v49 + 8);
    v27 = v49 + 8;
    v26(v54, v48);
    v70 = v54;
    v13 = *(v49 + 16);
    v12[1] = v49 + 16;
    v13(v52, v56, v48);
    sub_26AE94B4C(v52, v48, v54);
    v26(v52, v48);
    v13(v59, v54, v48);
    (*(v49 + 56))(v59, 0, 1, v48);
    sub_26AF09CCC(v59, v48, v61);
    sub_26AFA71A0(v59);
    sub_26AFA7254(v61, v63);
    v26(v54, v48);
    v26(v56, v48);
  }

  else
  {
    (*(v49 + 56))(v59, 1, 1, v48);
    v10 = sub_26AF8A730();
    v81[5] = v45;
    v81[6] = MEMORY[0x277CE04F8];
    v81[7] = v10;
    v81[8] = MEMORY[0x277CE04E8];
    swift_getOpaqueTypeConformance2();
    sub_26AF09CCC(v59, v48, v61);
    sub_26AFA71A0(v59);
    sub_26AFA7254(v61, v63);
  }

  sub_26AFA7388(v63, v61);
  sub_26AF8AC30();
  sub_26AE94B4C(v61, v57, v31);
  sub_26AFA71A0(v61);
  return sub_26AFA71A0(v63);
}

uint64_t sub_26AFA23DC(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v2 = *(a1 + 8);
  v7 = *a1;
  v8 = v2;
  v6 = a2;
  v4 = v7;
  v5 = v2;
  return sub_26AFA2438(&v4);
}

uint64_t sub_26AFA2438(uint64_t a1)
{
  v227 = a1;
  v183 = sub_26AFA54BC;
  v184 = sub_26AFA55CC;
  v185 = sub_26AFA5618;
  v186 = sub_26AFA4660;
  v187 = sub_26AFA5718;
  v188 = sub_26AFA5550;
  v189 = sub_26AFA5584;
  v190 = sub_26AFA5664;
  v191 = sub_26AFA569C;
  v192 = sub_26AFA56D0;
  v193 = sub_26AFA5764;
  v194 = sub_26AFA5930;
  v195 = sub_26AFA5A3C;
  v196 = sub_26AFA5A88;
  v197 = sub_26AFA4614;
  v198 = sub_26AFA5B88;
  v199 = sub_26AFA59C0;
  v200 = sub_26AFA59F4;
  v201 = sub_26AFA5AD4;
  v202 = sub_26AFA5B0C;
  v203 = sub_26AFA5B40;
  v204 = sub_26AFA5BD4;
  v205 = sub_26AFA5DA0;
  v206 = sub_26AFA5EAC;
  v207 = sub_26AFA5EF8;
  v208 = sub_26AFA45C8;
  v209 = sub_26AFA5FF8;
  v210 = sub_26AFA5E30;
  v211 = sub_26AFA5E64;
  v212 = sub_26AFA5F44;
  v213 = sub_26AFA5F7C;
  v214 = sub_26AFA5FB0;
  v215 = sub_26AFA6044;
  v262 = 0;
  v263 = 0;
  v261 = 0;
  v216 = 0;
  v241 = 0;
  v217 = sub_26B078AD0();
  v218 = *(v217 - 8);
  v219 = v217 - 8;
  v220 = (*(v218 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v221 = (v81 - v220);
  v222 = *(type metadata accessor for AlternateUpdateContentView(v2) - 8);
  v223 = v222;
  v224 = *(v222 + 64);
  v225 = (v224 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v241);
  v226 = v81 - v225;
  v228 = sub_26B078580();
  v229 = *(v228 - 8);
  v230 = v228 - 8;
  v231 = (*(v229 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v227);
  v232 = v81 - v231;
  v233 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v234 = v81 - v233;
  v235 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v236 = v81 - v235;
  v237 = *v7;
  v238 = *(v7 + 8);
  v262 = v237;
  v263 = v238;
  v261 = v1;
  v239 = sub_26AF9F974();
  v240 = ReactiveUIManager.environmentOptions.getter();

  v260[1] = v240;
  v243 = v260;
  v260[0] = 4;
  v242 = type metadata accessor for SUUIStatefulUIEnvironmentOptions(v241);
  sub_26AE9BB40();
  result = sub_26B07A980();
  if (result)
  {
    v258[1] = v237;
    v259 = v238;
    if (UpdateActionResult.success.getter())
    {
      v180 = sub_26AF9F974();
      v181 = ReactiveUIManager.hasHiddenDescriptors.getter();

      if (v181)
      {
        sub_26B078550();
        sub_26AFA4748(v182, v226);
        v159 = (*(v223 + 80) + 16) & ~*(v223 + 80);
        v167 = 7;
        v160 = swift_allocObject();
        sub_26AFA4AE0(v226, (v160 + v159));
        v178 = sub_26B078570();
        v179 = sub_26B07A2A0();
        v164 = 17;
        v169 = swift_allocObject();
        v163 = 32;
        *(v169 + 16) = 32;
        v170 = swift_allocObject();
        v165 = 8;
        *(v170 + 16) = 8;
        v166 = 32;
        v9 = swift_allocObject();
        v10 = v160;
        v161 = v9;
        *(v9 + 16) = v205;
        *(v9 + 24) = v10;
        v11 = swift_allocObject();
        v12 = v161;
        v162 = v11;
        *(v11 + 16) = v206;
        *(v11 + 24) = v12;
        v13 = swift_allocObject();
        v14 = v162;
        v171 = v13;
        *(v13 + 16) = v207;
        *(v13 + 24) = v14;
        v172 = swift_allocObject();
        *(v172 + 16) = v163;
        v173 = swift_allocObject();
        *(v173 + 16) = v165;
        v15 = swift_allocObject();
        v168 = v15;
        *(v15 + 16) = v208;
        *(v15 + 24) = 0;
        v16 = swift_allocObject();
        v17 = v168;
        v175 = v16;
        *(v16 + 16) = v209;
        *(v16 + 24) = v17;
        v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
        v174 = sub_26B07A760();
        v176 = v18;

        v19 = v169;
        v20 = v176;
        *v176 = v210;
        v20[1] = v19;

        v21 = v170;
        v22 = v176;
        v176[2] = v211;
        v22[3] = v21;

        v23 = v171;
        v24 = v176;
        v176[4] = v212;
        v24[5] = v23;

        v25 = v172;
        v26 = v176;
        v176[6] = v213;
        v26[7] = v25;

        v27 = v173;
        v28 = v176;
        v176[8] = v214;
        v28[9] = v27;

        v29 = v175;
        v30 = v176;
        v176[10] = v215;
        v30[11] = v29;
        sub_26AEA3B2C();

        if (os_log_type_enabled(v178, v179))
        {
          v31 = v216;
          v151 = sub_26B07A420();
          v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
          v152 = sub_26AEA3B70(0, v150, v150);
          v153 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v155 = &v248;
          v248 = v151;
          v156 = &v247;
          v247 = v152;
          v157 = &v246;
          v246 = v153;
          v154 = 2;
          sub_26AEA3BC4(2, &v248);
          sub_26AEA3BC4(v154, v155);
          v244 = v210;
          v245 = v169;
          sub_26AEA3BD8(&v244, v155, v156, v157);
          v158 = v31;
          if (v31)
          {

            __break(1u);
          }

          else
          {
            v244 = v211;
            v245 = v170;
            sub_26AEA3BD8(&v244, &v248, &v247, &v246);
            v149 = 0;
            v244 = v212;
            v245 = v171;
            sub_26AEA3BD8(&v244, &v248, &v247, &v246);
            v148 = 0;
            v244 = v213;
            v245 = v172;
            sub_26AEA3BD8(&v244, &v248, &v247, &v246);
            v147 = 0;
            v244 = v214;
            v245 = v173;
            sub_26AEA3BD8(&v244, &v248, &v247, &v246);
            v146 = 0;
            v244 = v215;
            v245 = v175;
            sub_26AEA3BD8(&v244, &v248, &v247, &v246);
            _os_log_impl(&dword_26AE88000, v178, v179, "%s.%s: Alternate update: update initiated, dismissing slow roll screen.", v151, 0x16u);
            sub_26AEA3C24(v152, 0, v150);
            sub_26AEA3C24(v153, 2, MEMORY[0x277D84F70] + 8);
            sub_26B07A400();
          }
        }

        else
        {
        }

        v32 = MEMORY[0x277D82BD8](v178);
        (*(v229 + 8))(v236, v228, v32);
        sub_26AF9F7C0(v221);
        sub_26B078AC0();
        return (*(v218 + 8))(v221, v217);
      }

      else
      {
        sub_26B078550();
        sub_26AFA4748(v182, v226);
        v125 = (*(v223 + 80) + 16) & ~*(v223 + 80);
        v133 = 7;
        v126 = swift_allocObject();
        sub_26AFA4AE0(v226, (v126 + v125));
        v144 = sub_26B078570();
        v145 = sub_26B07A2A0();
        v130 = 17;
        v135 = swift_allocObject();
        v129 = 32;
        *(v135 + 16) = 32;
        v136 = swift_allocObject();
        v131 = 8;
        *(v136 + 16) = 8;
        v132 = 32;
        v33 = swift_allocObject();
        v34 = v126;
        v127 = v33;
        *(v33 + 16) = v194;
        *(v33 + 24) = v34;
        v35 = swift_allocObject();
        v36 = v127;
        v128 = v35;
        *(v35 + 16) = v195;
        *(v35 + 24) = v36;
        v37 = swift_allocObject();
        v38 = v128;
        v137 = v37;
        *(v37 + 16) = v196;
        *(v37 + 24) = v38;
        v138 = swift_allocObject();
        *(v138 + 16) = v129;
        v139 = swift_allocObject();
        *(v139 + 16) = v131;
        v39 = swift_allocObject();
        v134 = v39;
        *(v39 + 16) = v197;
        *(v39 + 24) = 0;
        v40 = swift_allocObject();
        v41 = v134;
        v141 = v40;
        *(v40 + 16) = v198;
        *(v40 + 24) = v41;
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
        v140 = sub_26B07A760();
        v142 = v42;

        v43 = v135;
        v44 = v142;
        *v142 = v199;
        v44[1] = v43;

        v45 = v136;
        v46 = v142;
        v142[2] = v200;
        v46[3] = v45;

        v47 = v137;
        v48 = v142;
        v142[4] = v201;
        v48[5] = v47;

        v49 = v138;
        v50 = v142;
        v142[6] = v202;
        v50[7] = v49;

        v51 = v139;
        v52 = v142;
        v142[8] = v203;
        v52[9] = v51;

        v53 = v141;
        v54 = v142;
        v142[10] = v204;
        v54[11] = v53;
        sub_26AEA3B2C();

        if (os_log_type_enabled(v144, v145))
        {
          v55 = v216;
          v117 = sub_26B07A420();
          v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
          v118 = sub_26AEA3B70(0, v116, v116);
          v119 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v121 = &v253;
          v253 = v117;
          v122 = &v252;
          v252 = v118;
          v123 = &v251;
          v251 = v119;
          v120 = 2;
          sub_26AEA3BC4(2, &v253);
          sub_26AEA3BC4(v120, v121);
          v249 = v199;
          v250 = v135;
          sub_26AEA3BD8(&v249, v121, v122, v123);
          v124 = v55;
          if (v55)
          {

            __break(1u);
          }

          else
          {
            v249 = v200;
            v250 = v136;
            sub_26AEA3BD8(&v249, &v253, &v252, &v251);
            v115 = 0;
            v249 = v201;
            v250 = v137;
            sub_26AEA3BD8(&v249, &v253, &v252, &v251);
            v114 = 0;
            v249 = v202;
            v250 = v138;
            sub_26AEA3BD8(&v249, &v253, &v252, &v251);
            v113 = 0;
            v249 = v203;
            v250 = v139;
            sub_26AEA3BD8(&v249, &v253, &v252, &v251);
            v112 = 0;
            v249 = v204;
            v250 = v141;
            sub_26AEA3BD8(&v249, &v253, &v252, &v251);
            _os_log_impl(&dword_26AE88000, v144, v145, "%s.%s: Alternate update: update initiated but the alternate descriptor wasn't marked as hidden. Skipping on dismissal.", v117, 0x16u);
            sub_26AEA3C24(v118, 0, v116);
            sub_26AEA3C24(v119, 2, MEMORY[0x277D84F70] + 8);
            sub_26B07A400();
          }
        }

        else
        {
        }

        v56 = MEMORY[0x277D82BD8](v144);
        return (*(v229 + 8))(v234, v228, v56);
      }
    }

    else
    {
      sub_26B078550();
      sub_26AFA4748(v182, v226);
      v91 = (*(v223 + 80) + 16) & ~*(v223 + 80);
      v99 = 7;
      v92 = swift_allocObject();
      sub_26AFA4AE0(v226, (v92 + v91));
      v110 = sub_26B078570();
      v111 = sub_26B07A2A0();
      v96 = 17;
      v101 = swift_allocObject();
      v95 = 32;
      *(v101 + 16) = 32;
      v102 = swift_allocObject();
      v97 = 8;
      *(v102 + 16) = 8;
      v98 = 32;
      v57 = swift_allocObject();
      v58 = v92;
      v93 = v57;
      *(v57 + 16) = v183;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v93;
      v94 = v59;
      *(v59 + 16) = v184;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v94;
      v103 = v61;
      *(v61 + 16) = v185;
      *(v61 + 24) = v62;
      v104 = swift_allocObject();
      *(v104 + 16) = v95;
      v105 = swift_allocObject();
      *(v105 + 16) = v97;
      v63 = swift_allocObject();
      v100 = v63;
      *(v63 + 16) = v186;
      *(v63 + 24) = 0;
      v64 = swift_allocObject();
      v65 = v100;
      v107 = v64;
      *(v64 + 16) = v187;
      *(v64 + 24) = v65;
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
      v106 = sub_26B07A760();
      v108 = v66;

      v67 = v101;
      v68 = v108;
      *v108 = v188;
      v68[1] = v67;

      v69 = v102;
      v70 = v108;
      v108[2] = v189;
      v70[3] = v69;

      v71 = v103;
      v72 = v108;
      v108[4] = v190;
      v72[5] = v71;

      v73 = v104;
      v74 = v108;
      v108[6] = v191;
      v74[7] = v73;

      v75 = v105;
      v76 = v108;
      v108[8] = v192;
      v76[9] = v75;

      v77 = v107;
      v78 = v108;
      v108[10] = v193;
      v78[11] = v77;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v110, v111))
      {
        v79 = v216;
        v83 = sub_26B07A420();
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
        v84 = sub_26AEA3B70(0, v82, v82);
        v85 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v87 = v258;
        v258[0] = v83;
        v88 = &v257;
        v257 = v84;
        v89 = &v256;
        v256 = v85;
        v86 = 2;
        sub_26AEA3BC4(2, v258);
        sub_26AEA3BC4(v86, v87);
        v254 = v188;
        v255 = v101;
        sub_26AEA3BD8(&v254, v87, v88, v89);
        v90 = v79;
        if (v79)
        {

          __break(1u);
        }

        else
        {
          v254 = v189;
          v255 = v102;
          sub_26AEA3BD8(&v254, v258, &v257, &v256);
          v81[4] = 0;
          v254 = v190;
          v255 = v103;
          sub_26AEA3BD8(&v254, v258, &v257, &v256);
          v81[3] = 0;
          v254 = v191;
          v255 = v104;
          sub_26AEA3BD8(&v254, v258, &v257, &v256);
          v81[2] = 0;
          v254 = v192;
          v255 = v105;
          sub_26AEA3BD8(&v254, v258, &v257, &v256);
          v81[1] = 0;
          v254 = v193;
          v255 = v107;
          sub_26AEA3BD8(&v254, v258, &v257, &v256);
          _os_log_impl(&dword_26AE88000, v110, v111, "%s.%s: Alternate update: update initiated failed/cancelled, not dismissing slow roll.", v83, 0x16u);
          sub_26AEA3C24(v84, 0, v82);
          sub_26AEA3C24(v85, 2, MEMORY[0x277D84F70] + 8);
          sub_26B07A400();
        }
      }

      else
      {
      }

      v80 = MEMORY[0x277D82BD8](v110);
      return (*(v229 + 8))(v232, v228, v80);
    }
  }

  return result;
}

void *sub_26AFA4748(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520, &unk_26B086050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078AD0();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v15 = *a1;

    *a2 = v15;
  }

  swift_storeEnumTagMultiPayload();
  updated = type metadata accessor for AlternateUpdateContentView(0);
  v9 = a2 + updated[5];
  v3 = a1 + updated[5];
  v7 = *v3;
  v8 = v3[8];

  *v9 = v7;
  v9[8] = v8 & 1;
  v11 = a2 + updated[6];
  v4 = a1 + updated[6];
  *v11 = *v4;
  v12 = *(v4 + 1);

  *(v11 + 1) = v12;
  v14 = a2 + updated[7];
  v13 = a1 + updated[7];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v5 - 8) + 16))(v14, v13);
  return a2;
}

uint64_t sub_26AFA4920()
{
  updated = type metadata accessor for AlternateUpdateContentView(0);
  v0 = *(*(updated - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520, &unk_26B086050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(updated + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

char *sub_26AFA4AE0(char *a1, char *a2)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520, &unk_26B086050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078AD0();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v12 - 8) + 64));
  }

  updated = type metadata accessor for AlternateUpdateContentView(0);
  v4 = &a2[updated[5]];
  v5 = &a1[updated[5]];
  *v4 = *v5;
  v4[8] = v5[8];
  *&a2[updated[6]] = *&a1[updated[6]];
  v9 = &a2[updated[7]];
  v8 = &a1[updated[7]];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v6 - 8) + 32))(v9, v8);
  return a2;
}

uint64_t sub_26AFA4C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  updated = type metadata accessor for AlternateUpdateContentView(0);
  v4 = v2 + ((*(*(updated - 8) + 80) + 16) & ~*(*(updated - 8) + 80));

  return sub_26AFA0C30(a1, v4, a2);
}

unint64_t sub_26AFA4CDC()
{
  v2 = qword_2803DDA48;
  if (!qword_2803DDA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA40, &qword_26B08D250);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFA4D64()
{
  v2 = qword_2803DDA58;
  if (!qword_2803DDA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA50, &qword_26B08D258);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFA4E18()
{
  v2 = qword_2803DDA68;
  if (!qword_2803DDA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA60, &unk_26B08D260);
    sub_26AFA4D64();
    sub_26AEF9014();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFA4EF8()
{
  v2 = qword_2803DDA78;
  if (!qword_2803DDA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA70, &qword_26B08D270);
    sub_26AFA4FA0();
    sub_26AF6B6FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFA4FA0()
{
  v2 = qword_2803DDA80;
  if (!qword_2803DDA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA88, &qword_26B08D278);
    sub_26AFA4E18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA80);
    return WitnessTable;
  }

  return v2;
}

void sub_26AFA5044()
{
}

unint64_t sub_26AFA5088()
{
  v2 = qword_2803DDA90;
  if (!qword_2803DDA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA38, &qword_26B08D248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA70, &qword_26B08D270);
    sub_26AFA4EF8();
    swift_getOpaqueTypeConformance2();
    sub_26AF1B358();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFA5180(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA30, &qword_26B08D240);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA38, &qword_26B08D248);
  sub_26AF072D8();
  return a1;
}

uint64_t sub_26AFA521C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA30, &qword_26B08D240);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA38, &qword_26B08D248);
  v4 = a1 + *(v3 + 36);
  v9 = a2 + *(v3 + 36);
  *v9 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  sub_26AF07734();
  result = a2;
  *(v9 + 8) = v7;
  *(v9 + 16) = v8 & 1;
  return result;
}

uint64_t sub_26AFA52FC()
{
  updated = type metadata accessor for AlternateUpdateContentView(0);
  v0 = *(*(updated - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520, &unk_26B086050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(updated + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

uint64_t sub_26AFA54BC()
{
  type metadata accessor for AlternateUpdateContentView(0);

  return sub_26AFA4644();
}

uint64_t sub_26AFA5770()
{
  updated = type metadata accessor for AlternateUpdateContentView(0);
  v0 = *(*(updated - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520, &unk_26B086050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(updated + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

uint64_t sub_26AFA5930()
{
  type metadata accessor for AlternateUpdateContentView(0);

  return sub_26AFA45F8();
}

uint64_t sub_26AFA5BE0()
{
  updated = type metadata accessor for AlternateUpdateContentView(0);
  v0 = *(*(updated - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520, &unk_26B086050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(updated + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

uint64_t sub_26AFA5DA0()
{
  type metadata accessor for AlternateUpdateContentView(0);

  return sub_26AFA45AC();
}

uint64_t sub_26AFA60DC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80, &qword_26B086048);
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1, a2, v11);
  }

  else if (a2 == 2147483646)
  {
    v6 = -1;
    if (*(a1 + *(a3 + 24) + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + *(a3 + 24) + 8);
    }

    v3 = v6 - 1;
    if (v6 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 28), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v7;
}

uint64_t sub_26AFA62DC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80, &qword_26B086048);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + *(a4 + 28), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_26AFA6484(uint64_t a1)
{
  v6 = sub_26AE96BE8(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_26AE96B4C(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_26AE96C84(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_26AFA65BC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_26AFA65BC(uint64_t a1)
{
  v5 = qword_2803DE610;
  if (!qword_2803DE610)
  {
    type metadata accessor for ReactiveDescriptor(255);
    v4 = sub_26B079B10();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DE610);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_26AFA668C()
{
  v2 = qword_2803DDAC8;
  if (!qword_2803DDAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDAC0, &qword_26B08D3F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDAC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFA6714()
{
  v2 = qword_2803DDAD0;
  if (!qword_2803DDAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDAA8, &qword_26B08D3E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDAD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFA679C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAD8, &qword_26B08D400) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE0, &qword_26B08D408);
  (*(*(v1 - 8) + 8))();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE8, &unk_26B08D410) + 48);

  if (*(a1 + v3 + v5 + 40))
  {
  }

  if (*(a1 + v3 + v5 + 64))
  {
  }

  return a1;
}

unint64_t sub_26AFA68F4()
{
  v2 = qword_2803DDAF0;
  if (!qword_2803DDAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDAB0, &qword_26B08D3E8);
    sub_26AFA6714();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDAF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFA6998(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAD8, &qword_26B08D400) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE0, &qword_26B08D408);
  (*(*(v1 - 8) + 8))();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE8, &unk_26B08D410) + 48);

  if (*(a1 + v3 + v5 + 40))
  {
  }

  if (*(a1 + v3 + v5 + 64))
  {
  }

  return a1;
}

uint64_t sub_26AFA6AF0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAB8, &qword_26B08D3F0);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA40, &qword_26B08D250);

  return a1;
}

uint64_t sub_26AFA6B9C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAB8, &qword_26B08D3F0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA40, &qword_26B08D250);
  v6 = *(v8 + 52);
  v7 = *(a1 + v6);

  *(a2 + v6) = v7;
  v10 = *(v8 + 56);
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);

  result = a2;
  v4 = (a2 + v10);
  *v4 = v11;
  v4[1] = v12;
  return result;
}

unint64_t sub_26AFA6CA4()
{
  v2 = qword_2803DDB10;
  if (!qword_2803DDB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDAF8, &qword_26B08D420);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDB10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFA6D2C()
{
  v2 = qword_2803DDB18;
  if (!qword_2803DDB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDB08, &unk_26B08D430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDB00, &qword_26B08D428);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDAF8, &qword_26B08D420);
    sub_26AFA6CA4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDB18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFA6E5C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE0, &qword_26B08D408);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AFA6EC4()
{
  updated = type metadata accessor for AlternateUpdateContentView(0);
  v0 = *(*(updated - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520, &unk_26B086050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(updated + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

uint64_t sub_26AFA7084(uint64_t *a1)
{
  updated = type metadata accessor for AlternateUpdateContentView(0);
  v3 = v1 + ((*(*(updated - 8) + 80) + 16) & ~*(*(updated - 8) + 80));

  return sub_26AFA23DC(a1, v3);
}

uint64_t sub_26AFA70FC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE0, &qword_26B08D408);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDB08, &unk_26B08D430);
  result = a2;
  *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
  return result;
}

uint64_t sub_26AFA71A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_26AFA7254(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0C0, &unk_26B08BEA0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_26AFA7388(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0C0, &unk_26B08BEA0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AFA74BC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD138, &unk_26B08D440);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

BOOL static DeepLinkContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112) == *(a2 + 112) && (type metadata accessor for DeepLinkRequest(0), v6 = *(a1 + 120), , v5 = *(a2 + 120), , v7 = static DeepLinkRequest.== infix(_:_:)(v6, v5), , , (v7 & 1) != 0))
  {

    v4 = sub_26B07A7F0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (v4 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t DeepLinkContext.request.getter()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t DeepLinkContext.reactiveManager.getter()
{
  v2 = *(v0 + 128);

  return v2;
}

uint64_t sub_26AFA774C@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_26AFA7810();
}

uint64_t sub_26AFA77A8(void *a1)
{
  sub_26AFA7D38(a1, &v3);
  v2 = v3;

  sub_26AFA786C(v2);
}

uint64_t sub_26AFA7810()
{
  swift_beginAccess();
  v2 = *(v0 + 136);
  sub_26B078640();
  swift_endAccess();
  return v2;
}

uint64_t sub_26AFA786C(uint64_t a1)
{
  sub_26B078640();
  swift_beginAccess();
  *(v1 + 136) = a1;

  swift_endAccess();
}

uint64_t DeepLinkContext.init(request:reactiveManager:stateChangeTimeout:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_defaultActor_initialize();
  sub_26B0788B0();
  sub_26AFA7A40();
  *(v3 + 136) = sub_26B079C50();

  *(v3 + 120) = a1;

  *(v3 + 128) = a2;
  *(v3 + 112) = a3;

  return v8;
}

unint64_t sub_26AFA7A40()
{
  v2 = qword_2803DEF60;
  if (!qword_2803DEF60)
  {
    sub_26B0788B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEF60);
    return WitnessTable;
  }

  return v2;
}

uint64_t DeepLinkContext.deinit()
{

  sub_26AFA7B10((v0 + 136));
  swift_defaultActor_destroy();
  return v2;
}

void *sub_26AFA7D38(void *a1, void *a2)
{
  v4 = *a1;
  sub_26B078640();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t UpToDateView<>.init(label:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a7;
  v17 = a1;
  v25 = a2;
  v18 = a3;
  v19 = a4;
  v27 = a5;
  v22 = a6;
  v16 = sub_26AFA99EC;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v37[4] = a5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBFC8, &unk_26B088180);
  v21 = sub_26AEB3370();
  v37[0] = v20;
  v37[1] = v27;
  v37[2] = v21;
  v37[3] = v22;
  v28 = type metadata accessor for UpToDateView(0, v37);
  v14 = *(*(v28 - 8) + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v23 = &v13 - v13;
  v15 = v13;
  MEMORY[0x28223BE20](v7);
  v26 = (&v13 - v15);
  v36 = &v13 - v15;
  v34 = v8;
  v35 = v9;
  v32 = v10;
  v33 = v11;

  v30 = v17;
  v31 = v25;
  UpToDateView.init(_:actions:)(v16, v29, v18, v19, v20, v27, v23);

  sub_26AFA99F8(v23, v26, v27, v28);
  sub_26AFA9AC4(v26, v24, v27, v28);

  return sub_26AFA9BB8(v26, v27, v28);
}

{
  v24 = a7;
  v17 = a1;
  v25 = a2;
  v18 = a3;
  v19 = a4;
  v27 = a5;
  v22 = a6;
  v16 = sub_26AFAA2A0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v37[4] = a5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBFC8, &unk_26B088180);
  v21 = sub_26AEB3370();
  v37[0] = v20;
  v37[1] = v27;
  v37[2] = v21;
  v37[3] = v22;
  v28 = type metadata accessor for UpToDateView(0, v37);
  v14 = *(*(v28 - 8) + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v23 = &v13 - v13;
  v15 = v13;
  MEMORY[0x28223BE20](v7);
  v26 = (&v13 - v15);
  v36 = &v13 - v15;
  v34 = v8;
  v35 = v9;
  v32 = v10;
  v33 = v11;
  sub_26B078640();
  v30 = v17;
  v31 = v25;
  UpToDateView.init(_:actions:)(v16, v29, v18, v19, v20, v27, v23);

  sub_26AFA99F8(v23, v26, v27, v28);
  sub_26AFA9AC4(v26, v24, v27, v28);

  return sub_26AFA9BB8(v26, v27, v28);
}

uint64_t sub_26AFA7F8C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFB8, &qword_26B088140);
  sub_26B078A10();

  return v2;
}

uint64_t sub_26AFA802C()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_26AFA8084(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t UpToDateView.init(_:actions:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a7;
  v25 = a1;
  v30 = a3;
  v26 = a4;
  v35 = a5;
  v36 = a6;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v46[5] = a5;
  v46[4] = a6;
  v31 = *(a6 - 8);
  v32 = a6 - 8;
  v22 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v33 = &v21 - v22;
  v27 = *(v8 - 8);
  v28 = v8 - 8;
  v23 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v21 - v22);
  v29 = &v21 - v23;
  v46[0] = v9;
  v46[1] = v10;
  v46[2] = v11;
  v46[3] = v12;
  v37 = type metadata accessor for UpToDateView(0, v46);
  v24 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v38 = (&v21 - v24);
  v45 = &v21 - v24;
  v43 = v13;
  v44 = a2;
  v41 = v14;
  v42 = v15;
  swift_getKeyPath();
  sub_26B078A30();
  v16 = v25;
  v17 = v38;
  v18 = v40;
  *v38 = v39;
  *(v17 + 8) = v18 & 1;
  v16();
  v19 = (*(v27 + 32))(v38 + *(v37 + 52), v29, v35);
  v30(v19);
  (*(v31 + 32))(v38 + *(v37 + 56), v33, v36);
  return sub_26AFA9C98(v38, v34, v35, v36, v37);
}

uint64_t UpToDateView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v10 = a1;
  v17 = sub_26AFA9E08;
  v13 = sub_26AFA9E30;
  v14 = sub_26AFA9E58;
  v22 = MEMORY[0x277CDE158];
  v48 = 0;
  v47 = 0;
  v15 = a1[2];
  v56 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDB20, &qword_26B08D540);
  v11 = v10[3];
  v55 = v11;
  v12 = v10[4];
  v20 = sub_26AFA9D68();
  v21 = v10[5];
  v49 = v15;
  v50 = v16;
  v51 = v11;
  v52 = v12;
  v53 = v20;
  v54 = v21;
  v29 = sub_26B079010();
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v19 = *(v23 + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](sub_26AFA9E08);
  v27 = &v9 - v18;
  MEMORY[0x28223BE20](v3);
  v28 = &v9 - v4;
  v48 = &v9 - v4;
  v47 = v2;
  v42 = v5;
  v43 = v6;
  v44 = v7;
  v45 = v21;
  v46 = v2;
  v37 = v5;
  v38 = v6;
  v39 = v7;
  v40 = v21;
  v41 = v2;
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v35 = v21;
  v36 = v2;
  sub_26B079000();
  WitnessTable = swift_getWitnessTable();
  sub_26AE9463C(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_26AE94B4C(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t sub_26AFA87B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v17 = a1;
  v26 = a2;
  v23 = a4;
  v31 = 0;
  v30 = 0;
  v33 = a2;
  v32 = a3;
  v18 = *(a2 - 8);
  v19 = a2 - 8;
  v15 = v18[8];
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = &v13 - v14;
  v16 = v14;
  MEMORY[0x28223BE20](v5);
  v25 = &v13 - v16;
  v31 = &v13 - v16;
  v30 = v6;
  v29[0] = v7;
  v29[1] = v8;
  v29[2] = v9;
  v29[3] = v10;
  v11 = *(type metadata accessor for UpToDateView(0, v29) + 52);
  v21 = v18[2];
  v20 = v18 + 2;
  v21(v24, v17 + v11, v26);
  sub_26AE9463C(v24, v26, v25);
  v28 = v18[1];
  v27 = v18 + 1;
  v28(v24, v26);
  v21(v24, v25, v26);
  sub_26AE94B4C(v24, v26, v22);
  v28(v24, v26);
  return (v28)(v25, v26);
}

uint64_t sub_26AFA89B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v50 = a2;
  v49 = a3;
  v46[10] = a1;
  v41[0] = a2;
  v41[1] = a3;
  v41[2] = a4;
  v41[3] = a5;
  v6 = type metadata accessor for UpToDateView(0, v41);
  v20 = v42;
  sub_26AFA8C10(v6, v42);
  v16 = v43;
  v17 = v44;
  v7 = __swift_project_boxed_opaque_existential_1(v42, v43);
  v15 = *(v16 - 8);
  v14 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v18 = &v13 - v14;
  (*(v15 + 16))(v8);
  v37 = sub_26B0792E0();
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v19 = v34;
  v34[0] = v37;
  v34[1] = v9;
  v35 = v10 & 1;
  v36 = v11;
  v21 = &v45;
  sub_26B079660();
  sub_26AE95B40(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  v22 = __dst;
  v25 = 73;
  memcpy(__dst, v21, 0x49uLL);
  v23 = v33;
  memcpy(v33, __dst, 0x49uLL);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDB20, &qword_26B08D540);
  v28 = sub_26AFA9D68();
  v30 = v46;
  sub_26AE9463C(v23, v27, v46);
  sub_26AFAA8B8(v23);
  v24 = v48;
  memcpy(v48, v30, v25);
  sub_26AFAA900(v24, &v32);
  v29 = v31;
  memcpy(v31, v24, v25);
  sub_26AE94B4C(v29, v27, v26);
  sub_26AFAA8B8(v29);
  return sub_26AFAA8B8(v30);
}

uint64_t sub_26AFA8C10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v24 = a1;
  v34 = "The parameter is the OS version";
  v50 = 0;
  v36 = 0;
  v16 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v38 = &v16 - v16;
  v17 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v35 = &v16 - v17;
  v31 = sub_26B079DC0();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v20 = *(v29 + 64);
  v18 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v33 = &v16 - v18;
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v28 = &v16 - v19;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v32 = &v16 - v21;
  v50 = v4;
  v49 = *(v5 + 16);
  v48 = *(v5 + 24);
  v22 = 7;
  sub_26B079DB0();
  v26 = 1;
  sub_26B079D00("OSName ", v22, 1);
  v23 = v6;
  sub_26B079DA0();

  v46 = sub_26AFA9234(v24);
  v47 = v7;
  v39 = MEMORY[0x277D837D0];
  sub_26B079FC0();
  v25 = v8;
  sub_26B079D90();

  sub_26B079D00("", v36, v26 & 1);
  v27 = v9;
  sub_26B079DA0();

  (*(v29 + 16))(v28, v32, v31);
  (*(v29 + 32))(v33, v28, v31);
  (*(v29 + 8))(v32, v31);
  sub_26B079DD0();
  v37 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v37);
  sub_26AEFB5C4();
  v43 = v34;
  v44 = 31;
  v45 = 2;
  v42 = sub_26B079E40();
  v40 = v10;
  v41[3] = v39;
  v11 = sub_26AE95974();
  v12 = v40;
  v13 = v41;
  v14 = v11;
  result = v42;
  v41[4] = v14;
  *v13 = result;
  v13[1] = v12;
  return result;
}

uint64_t sub_26AFA9038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22 = a5;
  v17 = a1;
  v26 = a3;
  v23 = a4;
  v31 = 0;
  v30 = 0;
  v33 = a2;
  v32 = a3;
  v18 = *(a3 - 8);
  v19 = a3 - 8;
  v15 = v18[8];
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = &v13 - v14;
  v16 = v14;
  MEMORY[0x28223BE20](v5);
  v25 = &v13 - v16;
  v31 = &v13 - v16;
  v30 = v6;
  v29[0] = v7;
  v29[1] = v8;
  v29[2] = v9;
  v29[3] = v10;
  v11 = *(type metadata accessor for UpToDateView(0, v29) + 56);
  v21 = v18[2];
  v20 = v18 + 2;
  v21(v24, v17 + v11, v26);
  sub_26AE9463C(v24, v26, v25);
  v28 = v18[1];
  v27 = v18 + 1;
  v28(v24, v26);
  v21(v24, v25, v26);
  sub_26AE94B4C(v24, v26, v22);
  v28(v24, v26);
  return (v28)(v25, v26);
}

uint64_t sub_26AFA9234(uint64_t a1)
{
  v34 = v1;
  v33[3] = *(a1 + 16);
  v33[2] = *(a1 + 24);
  sub_26AFA7F8C(a1);
  v27 = sub_26B078500();

  if (v27)
  {
    v30[0] = sub_26B07A740();
    v30[1] = v2;
    v3 = sub_26B079D00("", 0, 1);
    MEMORY[0x26D66D910](v3);

    sub_26AFA7F8C(a1);
    v21 = sub_26B0784E0();
    v22 = v4;

    v29[0] = v21;
    v29[1] = v22;
    sub_26B07A720();
    sub_26AE9BCC0(v29);
    v5 = sub_26B079D00(" (", 2, 1);
    MEMORY[0x26D66D910](v5);

    sub_26AFA7F8C(a1);
    v23 = sub_26B0784D0();
    v24 = v6;

    v28[0] = v23;
    v28[1] = v24;
    sub_26B07A720();
    sub_26AE9BCC0(v28);
    v7 = sub_26B079D00(")", 1, 1);
    MEMORY[0x26D66D910](v7);

    sub_26B078640();
    sub_26AEB9F6C(v30);
    return sub_26B079EB0();
  }

  else
  {
    sub_26AFA7F8C(a1);
    sub_26B078520();

    v20 = sub_26B079F30();

    if (v20)
    {
      sub_26AFA7F8C(a1);
      v15 = sub_26B0784E0();

      return v15;
    }

    else
    {
      v33[0] = sub_26B07A740();
      v33[1] = v8;
      v9 = sub_26B079D00("");
      MEMORY[0x26D66D910](v9);

      sub_26AFA7F8C(a1);
      v16 = sub_26B0784E0();
      v17 = v10;

      v32[0] = v16;
      v32[1] = v17;
      sub_26B07A720();
      sub_26AE9BCC0(v32);
      v11 = sub_26B079D00(" ", 1, 1);
      MEMORY[0x26D66D910](v11);

      sub_26AFA7F8C(a1);
      v18 = sub_26B078520();
      v19 = v12;

      v31[0] = v18;
      v31[1] = v19;
      sub_26B07A720();
      sub_26AE9BCC0(v31);
      v13 = sub_26B079D00("", 0, 1);
      MEMORY[0x26D66D910](v13);

      sub_26B078640();
      sub_26AEB9F6C(v33);
      return sub_26B079EB0();
    }
  }
}

uint64_t sub_26AFA9720@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v12 = a1;
  v20 = a2;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
  v21 = *(v27 - 8);
  v22 = v27 - 8;
  v10 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v25 = &v10 - v10;
  v11 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v26 = &v10 - v11;
  v35 = &v10 - v11;
  v33 = v6;
  v34 = a2;

  v19 = &v30;
  v12();
  v15 = v31;
  v16 = v32;
  v7 = __swift_project_boxed_opaque_existential_1(v19, v31);
  v14 = *(v15 - 8);
  v13 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v17 = &v10 - v13;
  (*(v14 + 16))(v8);
  v18 = sub_26B079D00("checkmark.circle.fill", 21, 1);
  sub_26B079890();
  v24 = sub_26AEB3370();
  sub_26AE9463C(v25, v27, v26);
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v29(v25, v27);
  __swift_destroy_boxed_opaque_existential_1(v19);

  (*(v21 + 16))(v25, v26, v27);
  sub_26AE94B4C(v25, v27, v23);
  v29(v25, v27);
  return (v29)(v26, v27);
}

uint64_t sub_26AFA99F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  (*(*(*(a4 + 16) - 8) + 32))(a2 + *(a4 + 52), a1 + *(a4 + 52));
  (*(*(a3 - 8) + 32))(a2 + *(a4 + 56), a1 + *(a4 + 56));
  return a2;
}

uint64_t sub_26AFA9AC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);

  *a2 = v5;
  *(a2 + 8) = v6 & 1;
  (*(*(*(a4 + 16) - 8) + 16))(a2 + *(a4 + 52), a1 + *(a4 + 52));
  (*(*(a3 - 8) + 16))(a2 + *(a4 + 56), a1 + *(a4 + 56));
  return a2;
}

uint64_t sub_26AFA9BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  (*(*(*(a3 + 16) - 8) + 8))(a1 + *(a3 + 52));
  (*(*(a2 - 8) + 8))(a1 + *(a3 + 56));
  return a1;
}

uint64_t sub_26AFA9C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  (*(*(a3 - 8) + 32))(a2 + *(a5 + 52), a1 + *(a5 + 52));
  (*(*(a4 - 8) + 32))(a2 + *(a5 + 56), a1 + *(a5 + 56));
  return a2;
}

unint64_t sub_26AFA9D68()
{
  v2 = qword_2803DDB28[0];
  if (!qword_2803DDB28[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDB20, &qword_26B08D540);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2803DDB28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFAA070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v11 = a1;
  v12 = a2;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
  v16 = *(v22 - 8);
  v17 = v22 - 8;
  v9 = *(v16 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v20 = &v8 - v8;
  v10 = v8;
  MEMORY[0x28223BE20](v3);
  v21 = &v8 - v10;
  v28 = &v8 - v10;
  v26 = v4;
  v27 = v5;
  sub_26B078640();
  v15 = v25;
  v25[0] = v11;
  v25[1] = v12;
  v13 = sub_26B079D00("checkmark.circle.fill", 21, 1);
  v14 = v6;
  sub_26AE95974();
  sub_26B079890();
  v19 = sub_26AEB3370();
  sub_26AE9463C(v20, v22, v21);
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v20, v22);
  (*(v16 + 16))(v20, v21, v22);
  sub_26AE94B4C(v20, v22, v18);
  v24(v20, v22);
  return (v24)(v21, v22);
}

unint64_t sub_26AFAA350(uint64_t a1)
{
  v5 = sub_26AF7BC6C(319);
  if (v1 <= 0x3F)
  {
    v5 = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      v5 = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

uint64_t sub_26AFAA49C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = 255 - *(a1 + 8);
    if (v3 >= 0xFE)
    {
      v3 = -1;
    }

    return v3 + 1;
  }

  else
  {
    v6 = *(a3 + 16);
    if (a2 == *(*(v6 - 8) + 84))
    {
      return (*(*(v6 - 8) + 48))(a1 + *(a3 + 52), a2, v6);
    }

    else
    {
      v5 = *(a3 + 24);
      if (a2 == *(*(v5 - 8) + 84))
      {
        return (*(*(v5 - 8) + 48))(a1 + *(a3 + 56), a2, v5);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v7;
}

uint64_t sub_26AFAA664(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 8) = ~(a2 - 1);
  }

  else
  {
    v5 = *(a4 + 16);
    if (a3 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 56))(result + *(a4 + 52), a2, a2, v5);
    }

    else
    {
      v4 = *(a4 + 24);
      if (a3 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 56))(result + *(a4 + 56), a2, a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_26AFAA7F8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDB20, &qword_26B08D540);
  sub_26AFA9D68();
  sub_26B079010();
  return swift_getWitnessTable();
}

uint64_t sub_26AFAA8B8(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_26AFAA900(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_26AE95D28(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v7 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v7;
  memcpy((a2 + 32), (a1 + 32), 0x29uLL);
  return a2;
}

uint64_t sub_26AFAA9A4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 isAutoDownload];
  return swift_unknownObjectRelease();
}

uint64_t sub_26AFAAA08()
{
  sub_26AF07734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC9C0, &unk_26B08D610);
  sub_26B078A10();
  sub_26AF072D8();
  return v1;
}

uint64_t sub_26AFAAA98()
{
  v2 = *v0;
  sub_26AF07734();
  return v2;
}

uint64_t sub_26AFAAAD8(uint64_t a1, char a2)
{
  sub_26AF07734();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  sub_26AF072D8();
  return sub_26AF072D8();
}

uint64_t sub_26AFAAB3C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFB8, &qword_26B088140);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AFAABCC()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_26AFAAC08(uint64_t a1, char a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
}

uint64_t sub_26AFAAC58()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AFAACDC()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_26AFAAD18(uint64_t a1, char a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
}

uint64_t sub_26AFAAD68()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_26AFAAD94(uint64_t a1)
{

  *(v1 + 48) = a1;
}

void *sub_26AFAADD0@<X0>(void *a1@<X8>)
{
  v7 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130, &unk_26B088940);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v1 = (&v4 - v5);
  v9 = (&v4 - v5);
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  sub_26AEC26F8((v6 + *(updated + 32)), v1);
  sub_26B078A10();
  return sub_26AEC27CC(v9);
}

uint64_t type metadata accessor for AvailableUpdateProactiveSuggestionView(uint64_t a1)
{
  v2 = qword_2803DDCC8;
  if (!qword_2803DDCC8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_26AFAAF3C(void *a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130, &unk_26B088940) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = (&v5 - v6);
  sub_26AEC26F8(v2, (&v5 - v6));
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  sub_26AEC2950(v7, (v1 + *(updated + 32)));
  return sub_26AEC27CC(v8);
}

uint64_t sub_26AFAB040()
{
  type metadata accessor for AvailableUpdateProactiveSuggestionView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798B0();

  return v1 & 1;
}

uint64_t sub_26AFAB0D0(char a1)
{
  v2 = (v1 + *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) + 36));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798C0();
  sub_26AE91DC8(v6);
}

uint64_t sub_26AFAB17C()
{
  type metadata accessor for AvailableUpdateProactiveSuggestionView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798D0();

  return v1;
}

uint64_t sub_26AFAB224()
{
  v2 = *(v0 + *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) + 36));

  return v2 & 1;
}

uint64_t sub_26AFAB270(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) + 36);
  *v3 = a1;
  *(v3 + 8) = a2;
}

BOOL sub_26AFAB2CC(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_26AFAB58C()
{
  v2 = qword_2803DDBC0;
  if (!qword_2803DDBC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDBC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFAB67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  v34 = 0;
  v33 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v19 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v26 = (&v18 - v19);
  v34 = &v18 - v19;
  v33 = v2;
  swift_getKeyPath();
  sub_26B078A30();
  v3 = v26;
  v4 = v32;
  *v26 = v31;
  v22 = 1;
  *(v3 + 8) = v4 & 1;
  swift_getKeyPath();
  sub_26B078A30();
  v5 = v22;
  v6 = v26;
  v7 = v30;
  v26[2] = v29;
  *(v6 + 24) = v7 & 1 & v5;
  swift_getKeyPath();
  sub_26B078A30();
  v8 = updated;
  v9 = v22;
  v10 = v26;
  v11 = v28;
  v26[4] = v27;
  *(v10 + 40) = v11 & 1 & v9;
  v20 = *(v8 + 32);
  swift_getKeyPath();
  sub_26B078A30();
  v23 = *(updated + 36);
  v12 = sub_26AFAAFEC(0);
  v13 = v26 + v23;
  *v13 = v12 & v22;
  *(v13 + 1) = v14;

  v15 = v26;
  v16 = v24;
  v26[6] = v25;
  sub_26AFB4A80(v15, v16);

  return sub_26AFB4CA8(v26);
}

uint64_t sub_26AFAB8DC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v16 = sub_26AFB50D4;
  v34 = 0;
  v33 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v6 = *(updated - 8);
  v11 = v6;
  v12 = *(v6 + 64);
  v7 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v14 = &v6 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBC8, &unk_26B08D6E8);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v8 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v27 = &v6 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v8);
  v28 = &v6 - v9;
  v34 = &v6 - v9;
  v33 = v1;
  v4 = sub_26AFABC30();
  v22 = &v32;
  v32 = v4;
  KeyPath = swift_getKeyPath();
  sub_26AFB4A80(v10, v14);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  sub_26AFB4F68(v14, v17 + v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0, &qword_26B08D710);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD8, &qword_26B08D718);
  v20 = sub_26AFB5154();
  v21 = sub_26AFAB58C();
  sub_26AFB51DC();
  sub_26B079A40();
  v26 = sub_26AFB584C();
  sub_26AE9463C(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_26AE94B4C(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t sub_26AFABC30()
{
  v81 = v0;
  v80 = sub_26B07A760();

  v49 = ReactiveDescriptor.currentState.getter();
  v79 = v49;

  v78 = v49;
  v77 = 3;
  type metadata accessor for SUUIStatefulDescriptorState(0);
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    sub_26B07A760();
    *v1 = 4;
    sub_26AEA3B2C();
    v46 = v2;
    sub_26AFB596C(&v80);
    return v46;
  }

  v44 = *(v48 + 32);
  v43 = *(v48 + 40);

  v75 = v44;
  v76 = v43 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  v45 = ReactiveUIManager.currentState.getter();

  v74 = v45;
  v73 = 4;
  type metadata accessor for SUUIStatefulUIState(0);
  sub_26AE9BA40();
  if (sub_26B07A790())
  {

    sub_26B078A10();

    updated = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

    if (updated)
    {

      ReactiveDescriptor.currentState.getter();

      v41 = sub_26B07A790();
    }

    else
    {
      v41 = 0;
    }

    v40 = v41 ^ 1;
  }

  else
  {
    v40 = 0;
  }

  if (v40)
  {

    v38 = ReactiveDescriptor.hasAnyError.getter();

    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0, &qword_26B08D710);
    sub_26B07A090();
  }

  v36 = *(v48 + 32);
  v35 = *(v48 + 40);

  v71 = v36;
  v72 = v35 & 1;
  sub_26B078A10();

  v37 = ReactiveUIManager.currentState.getter();

  v70 = v37;
  v69 = 4;
  sub_26AE9AD9C();
  if ((sub_26B079D70() & 1) == 0)
  {
    v34 = 1;
    goto LABEL_25;
  }

  v31 = *(v48 + 32);
  v30 = *(v48 + 40);

  v67 = v31;
  v68 = v30 & 1;
  sub_26B078A10();

  v32 = ReactiveUIManager.targetedDescriptor.getter();

  v33 = *(v48 + 48);

  v65 = v32;
  v66 = v33;
  if (!v32)
  {
    if (!v66)
    {
      sub_26AF7E684();
      v29 = 1;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  sub_26AF7E6B0(&v65, v51);
  if (!v66)
  {

LABEL_23:
    sub_26AF7E5D0();
    v29 = 0;
    goto LABEL_22;
  }

  v50 = v66;
  type metadata accessor for ReactiveDescriptor(0);
  v28 = static ReactiveDescriptor.== infix(_:_:)(v51[0], v50);

  sub_26AF7E684();
  v29 = v28;
LABEL_22:

  v34 = v29 ^ 1;
LABEL_25:
  if (v34)
  {
    v26 = v80;
    sub_26B078640();
    v51[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0, &qword_26B08D710);
    sub_26AFB58E4();
    v27 = sub_26B07A250();

    if (v27)
    {
      sub_26B07A760();
      *v3 = 0;
      sub_26AEA3B2C();
      v25 = v4;
    }

    else
    {
      v24 = v80;
      sub_26B078640();
      v25 = v24;
    }

    sub_26AFB596C(&v80);
    return v25;
  }

  else
  {
    v64 = v49;
    v63 = 2;
    if (sub_26B07A790())
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_26B07A370();
    }

    if (v23)
    {
      v21 = *(v48 + 32);
      v20 = *(v48 + 40);

      v54 = v21;
      v55 = v20 & 1;
      sub_26B078A10();

      v22 = ReactiveUIManager.currentDownload.getter();

      if (v22)
      {
        KeyPath = swift_getKeyPath();
        ReactiveDownload.subscript.getter(KeyPath, &v52);
        v18 = v52;

        v19 = v18 & 1;
      }

      else
      {
        v19 = 2;
      }

      v53 = v19;
      if (v19 == 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = v53;
      }

      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v56 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0, &qword_26B08D710);
      sub_26B07A090();
    }

    v62 = v49;
    v61 = 4;
    if (sub_26B07A790())
    {
      v13 = *(v48 + 32);
      v12 = *(v48 + 40);

      v58 = v13;
      v59 = v12 & 1;
      sub_26B078A10();

      v14 = ReactiveUIManager.isTargetedUpdateScheduledForAutoInstall()();

      if (v14)
      {
        v57 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0, &qword_26B08D710);
        sub_26B07A090();
      }
    }

    v10 = v80;
    sub_26B078640();
    v60 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0, &qword_26B08D710);
    sub_26AFB58E4();
    v11 = sub_26B07A250();

    if (v11)
    {
      sub_26B07A760();
      *v5 = 0;
      sub_26AEA3B2C();
      v9 = v6;
    }

    else
    {
      v8 = v80;
      sub_26B078640();
      v9 = v8;
    }

    sub_26AFB596C(&v80);
    return v9;
  }
}

uint64_t sub_26AFAC624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a3;
  v8 = a1;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD8, &qword_26B08D718);
  v10 = *(*(v13 - 8) + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v15 = &v8 - v9;
  v11 = v9;
  MEMORY[0x28223BE20](v4);
  v16 = &v8 - v11;
  v19 = &v8 - v11;
  LODWORD(v5) = *v5;
  v18 = v5;
  v17 = a2;
  sub_26AFAC774(v5, v6);
  v14 = sub_26AFB51DC();
  sub_26AE9463C(v15, v13, v16);
  sub_26AFB60B0(v15);
  sub_26AFB5D30(v16, v15);
  sub_26AE94B4C(v15, v13, v12);
  sub_26AFB60B0(v15);
  return sub_26AFB60B0(v16);
}

uint64_t sub_26AFAC774@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v96 = a1;
  v61 = MEMORY[0x277CDEDF8];
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v102 = 0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC70, &qword_26B08D760);
  v63 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v64 = &v28 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC80, qword_26B08D768);
  v66 = (*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65);
  v67 = &v28 - v66;
  v68 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v66);
  v69 = &v28 - v68;
  v70 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v68);
  v71 = &v28 - v70;
  v128 = &v28 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (v73[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v76 = &v28 - v75;
  v77 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v75);
  v78 = &v28 - v77;
  v79 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v77);
  v80 = &v28 - v79;
  v127 = &v28 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC08, &qword_26B08D728);
  v82 = (*(*(v81 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81);
  v83 = &v28 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBF8, &qword_26B08D720);
  v85 = (*(*(v84 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84);
  v86 = &v28 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0, &qword_26B08D7B0);
  v88 = *(v87 - 8);
  v89 = v87 - 8;
  v90 = (v88[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v87);
  v91 = &v28 - v90;
  v92 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v90);
  v93 = &v28 - v92;
  v94 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v92);
  v95 = &v28 - v94;
  v126 = &v28 - v94;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD8, &qword_26B08D718);
  v98 = (*(*(v97 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v96);
  v99 = &v28 - v98;
  v100 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v101 = &v28 - v100;
  v125 = &v28 - v100;
  v124 = v11;
  v123 = v2;
  if (v11)
  {
    switch(v96)
    {
      case 1u:
        sub_26AFB0E8C(v69);
        v39 = sub_26AFB57B4();
        sub_26AE9463C(v69, v65, v71);
        sub_26AFB6640(v69);
        v120 = v69;
        sub_26AFB66F4(v71, v67);
        sub_26AE94B4C(v67, v65, v69);
        sub_26AFB6640(v67);
        sub_26AFB66F4(v69, v67);
        v20 = sub_26AFB5660();
        sub_26AE94BB0(v67, v65, v72, v39, v20, v64);
        sub_26AFB6640(v67);
        v38 = sub_26AFB5328();
        v21 = sub_26AFB570C();
        sub_26AE94CA8(v64, v81, v62, v38, v21, v86);
        sub_26AFB62F8(v64);
        v22 = sub_26AFB5280();
        sub_26AE94BB0(v86, v84, MEMORY[0x277CE1428], v22, MEMORY[0x277CE1410], v99);
        sub_26AFB6424(v86);
        sub_26AFB59B0(v99, v101);
        sub_26AFB6640(v69);
        sub_26AFB6640(v71);
        break;
      case 2u:
        sub_26AFB061C(v78);
        v47 = sub_26AFB5660();
        sub_26AE9463C(v78, v72, v80);
        v48 = v73[1];
        v49 = v73 + 1;
        v48(v78, v72);
        v119 = v78;
        v41 = v73[2];
        v40 = v73 + 2;
        v41(v76, v80, v72);
        sub_26AE94B4C(v76, v72, v78);
        v48(v76, v72);
        v41(v76, v78, v72);
        v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDC10, &unk_26B08D730);
        v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748, &qword_26B08A188);
        v44 = sub_26AFB5484();
        v45 = sub_26AE95974();
        v16 = sub_26AEFDA40();
        v111 = v42;
        v112 = MEMORY[0x277D837D0];
        v113 = v43;
        v114 = MEMORY[0x277CE0BD8];
        v115 = v44;
        v116 = v45;
        v117 = v16;
        v118 = MEMORY[0x277CE0BC8];
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        sub_26AE94CA8(v76, v87, v72, OpaqueTypeConformance2, v47, v83);
        v48(v76, v72);
        v46 = sub_26AFB5328();
        v18 = sub_26AFB570C();
        sub_26AE94BB0(v83, v81, v62, v46, v18, v86);
        sub_26AFB6828(v83);
        v19 = sub_26AFB5280();
        sub_26AE94BB0(v86, v84, MEMORY[0x277CE1428], v19, MEMORY[0x277CE1410], v99);
        sub_26AFB6424(v86);
        sub_26AFB59B0(v99, v101);
        v48(v78, v72);
        v48(v80, v72);
        break;
      case 3u:
        sub_26AFAD9DC(v93);
        v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDC10, &unk_26B08D730);
        v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748, &qword_26B08A188);
        v55 = sub_26AFB5484();
        v56 = sub_26AE95974();
        v12 = sub_26AEFDA40();
        v103 = v53;
        v104 = MEMORY[0x277D837D0];
        v105 = v54;
        v106 = MEMORY[0x277CE0BD8];
        v107 = v55;
        v108 = v56;
        v109 = v12;
        v110 = MEMORY[0x277CE0BC8];
        v57 = swift_getOpaqueTypeConformance2();
        sub_26AE9463C(v93, v87, v95);
        v58 = v88[1];
        v59 = v88 + 1;
        v58(v93, v87);
        v102 = v93;
        v51 = v88[2];
        v50 = v88 + 2;
        v51(v91, v95, v87);
        sub_26AE94B4C(v91, v87, v93);
        v58(v91, v87);
        v51(v91, v93, v87);
        v13 = sub_26AFB5660();
        sub_26AE94BB0(v91, v87, v72, v57, v13, v83);
        v58(v91, v87);
        v52 = sub_26AFB5328();
        v14 = sub_26AFB570C();
        sub_26AE94BB0(v83, v81, v62, v52, v14, v86);
        sub_26AFB6828(v83);
        v15 = sub_26AFB5280();
        sub_26AE94BB0(v86, v84, MEMORY[0x277CE1428], v15, MEMORY[0x277CE1410], v99);
        sub_26AFB6424(v86);
        sub_26AFB59B0(v99, v101);
        v58(v93, v87);
        v58(v95, v87);
        break;
      default:
        v122 = v80;
        sub_26AFB1AB8(v78);
        v35 = sub_26AFB5660();
        sub_26AE9463C(v78, v72, v80);
        v36 = v73[1];
        v37 = v73 + 1;
        v36(v78, v72);
        v121 = v78;
        v33 = v73[2];
        v32 = v73 + 2;
        v33(v76, v80, v72);
        sub_26AE94B4C(v76, v72, v78);
        v36(v76, v72);
        v33(v76, v78, v72);
        v23 = sub_26AFB57B4();
        sub_26AE94CA8(v76, v65, v72, v23, v35, v64);
        v36(v76, v72);
        v34 = sub_26AFB5328();
        v24 = sub_26AFB570C();
        sub_26AE94CA8(v64, v81, v62, v34, v24, v86);
        sub_26AFB62F8(v64);
        v25 = sub_26AFB5280();
        sub_26AE94BB0(v86, v84, MEMORY[0x277CE1428], v25, MEMORY[0x277CE1410], v99);
        sub_26AFB6424(v86);
        sub_26AFB59B0(v99, v101);
        v36(v78, v72);
        v36(v80, v72);
        break;
    }
  }

  else
  {
    sub_26B079B90();
    v29 = MEMORY[0x277CE1428];
    v30 = MEMORY[0x277CE1410];
    sub_26AE9463C(v31, MEMORY[0x277CE1428], v31);
    sub_26AE94B4C(v31, v29, v31);
    v26 = sub_26AFB5280();
    sub_26AE94CA8(v31, v84, v29, v26, v30, v99);
    sub_26AFB59B0(v99, v101);
  }

  sub_26AFB5D30(v101, v99);
  sub_26AFB51DC();
  sub_26AE94B4C(v99, v97, v60);
  sub_26AFB60B0(v99);
  return sub_26AFB60B0(v101);
}

uint64_t sub_26AFAD9DC@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v29 = 0;
  v16 = sub_26AFB6908;
  v26 = sub_26AFB6910;
  v28 = sub_26AFB044C;
  v44 = MEMORY[0x277CDEDF8];
  v74 = 0;
  v73 = 0;
  v21 = 0;
  v9 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v20 = &v8 - v9;
  v2 = sub_26B079DE0();
  v10 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v18 = &v8 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC10, &unk_26B08D730);
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v11 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v35 = &v8 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0, &qword_26B08D7B0);
  v45 = *(v51 - 8);
  v46 = v51 - 8;
  v12 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v49 = &v8 - v12;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v12);
  v50 = &v8 - v13;
  v74 = &v8 - v13;
  v73 = v1;
  v14 = &v56;
  v57 = v1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC30, &qword_26B08D740);
  sub_26AFB5530();
  sub_26B079A90();
  *&v17[1] = 1;
  sub_26B079D00("Cancel Auto Install", 19, 1);
  sub_26B079D80();
  v19 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v19);
  sub_26AEFB5C4();
  v71[2] = 0;
  v71[3] = 0;
  v72 = *v17 & 0x100;
  v4 = sub_26B079E40();
  v32 = v71;
  v71[0] = v4;
  v71[1] = v5;
  v6 = (v1 + *(type metadata accessor for AvailableUpdateProactiveSuggestionView(v21) + 36));
  v22 = *v6;
  v23 = *(v6 + 1);

  v69 = v22;
  v70 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798D0();
  v30 = v66;
  v31 = v67;
  v25 = v68;

  v27 = &v54;
  v55 = v24;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC748, &qword_26B08A188);
  v40 = sub_26AFB5484();
  v41 = sub_26AE95974();
  v42 = sub_26AEFDA40();
  v37 = MEMORY[0x277D837D0];
  v39 = MEMORY[0x277CE0BD8];
  v43 = MEMORY[0x277CE0BC8];
  sub_26B0795E0();

  sub_26AE9BCC0(v32);
  (*(v33 + 8))(v35, v36);
  v58 = v36;
  v59 = v37;
  v60 = v38;
  v61 = v39;
  v62 = v40;
  v63 = v41;
  v64 = v42;
  v65 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v49, v51, v50);
  v53 = *(v45 + 8);
  v52 = v45 + 8;
  v53(v49, v51);
  (*(v45 + 16))(v49, v50, v51);
  sub_26AE94B4C(v49, v51, v47);
  v53(v49, v51);
  return (v53)(v50, v51);
}

uint64_t sub_26AFAE188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v57 = a1;
  v102 = 0;
  v66 = 0;
  v62 = sub_26B079DC0();
  v60 = *(v62 - 8);
  v61 = v62 - 8;
  v43 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v64 = v20 - v43;
  v44 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v59 = v20 - v44;
  v45 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v63 = v20 - v45;
  v46 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66);
  v68 = v20 - v46;
  v47 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v57);
  v65 = v20 - v47;
  v102 = v8;
  v69 = 1;
  sub_26B079D00("Update Scheduled", 16, 1, v7);
  sub_26B079D80();
  v48 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v48);
  sub_26AEFB5C4();
  v96[2] = 0;
  v96[3] = 0;
  v97 = 0;
  v74 = 1;
  v98 = v69 & 1;
  v49 = sub_26B079E40();
  v50 = v9;
  v56 = 85;
  sub_26B079DB0();
  sub_26B079D00("", v66, v69 & 1);
  v51 = v10;
  sub_26B079DA0();

  v52 = *(v57 + 48);

  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, v96);
  v53 = v96[0];
  v54 = v96[1];

  sub_26B079D90();

  sub_26B079D00(" will be installed when ProductFamilyName is locked and has enough battery to update.", v56, v69 & 1);
  v58 = v11;
  sub_26B079DA0();

  (*(v60 + 16))(v59, v63, v62);
  (*(v60 + 32))(v64, v59, v62);
  (*(v60 + 8))(v63, v62);
  sub_26B079DD0();
  v67 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v67);
  sub_26AEFB5C4();
  v93[3] = 0;
  v93[4] = 0;
  v94 = 0;
  v95 = v69 & 1;
  v70 = sub_26B079E40();
  v71 = v12;
  v73 = sub_26B079D00("checkmark.circle.fill", 21, v69 & 1);
  v72 = v13;
  v14 = sub_26B079790();
  ProactiveSuggestionView.Icon.init(systemName:fill:)(v73, v72, v14, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], v93);
  v92[0] = v93[0];
  v92[1] = v93[1];
  v92[2] = v93[2];
  v15 = sub_26AFABC30();
  v78 = &v91;
  v91 = v15;
  v77 = &v90;
  v90 = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0, &qword_26B08D710);
  v76 = sub_26AFB8E98();
  sub_26AFB7C60();
  v79 = sub_26B07A010();
  sub_26AFB596C(v78);
  if (v79)
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD08, &unk_26B08DC30);
    v39 = sub_26B07A760();
    sub_26AFAE980(v16);
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD08, &unk_26B08DC30);
    v37 = sub_26B07A760();
    v36 = v18;
    sub_26AFAEBE4(v18);
    sub_26AFAE980(v36 + *(*(v38 - 8) + 72));
  }

  sub_26AEA3B2C();
  v41 = v17;
  v20[0] = v99;
  ProactiveSuggestionView<>.init(title:description:icon:actions:)(v49, v50, v70, v71, v92, v17, v99);
  v20[1] = v87;
  v20[2] = 80;
  memcpy(v87, v20[0], sizeof(v87));
  v26 = v86;
  memcpy(v86, v87, sizeof(v86));
  v22 = *(v57 + 32);
  v21 = *(v57 + 40);

  v84 = v22;
  v85 = v21 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  v23 = v83;

  v25 = ReactiveUIManager.isBusy.getter();

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40, &unk_26B08D748);
  sub_26AFB55D8();
  v27 = &v100;
  sub_26B0796A0();
  sub_26AFB7CDC(v26);
  v28 = v88;
  v31 = 104;
  memcpy(v88, v27, sizeof(v88));
  v29 = v82;
  memcpy(v82, v88, sizeof(v82));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC30, &qword_26B08D740);
  v33 = sub_26AFB5530();
  v35 = v101;
  sub_26AE9463C(v29, v32, v101);
  sub_26AFB8F20(v29);
  v30 = v89;
  memcpy(v89, v35, v31);
  sub_26AFB8FE0(v30, &v81);
  v34 = v80;
  memcpy(v80, v30, v31);
  sub_26AE94B4C(v34, v32, v42);
  sub_26AFB8F20(v34);
  return sub_26AFB8F20(v35);
}

uint64_t sub_26AFAE980@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v16 = 0;
  v20 = sub_26AFB43EC;
  v18 = sub_26AFB6AC4;
  v21 = 0;
  v9 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v6 = *(updated - 8);
  v11 = v6;
  v12 = *(v6 + 64);
  v7 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v14 = &v6 - v7;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810);
  v8 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v17 = &v6 - v8;
  v21 = v1;
  sub_26B078960();
  v4 = sub_26B078980();
  (*(*(v4 - 8) + 56))(v17, 0, 1);
  sub_26AFB4A80(v10, v14);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_26AFB4F68(v14, v19 + v13);
  return ProactiveSuggestionView.Action.init(label:role:action:)(v20, v16, v17, v18, v19, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], v15, MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8]);
}

uint64_t sub_26AFAEBE4@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15 = 0;
  v19 = sub_26AFB3760;
  v17 = sub_26AFB6CD4;
  v20 = 0;
  v7 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v5 = *(updated - 8);
  v10 = v5;
  v11 = *(v5 + 64);
  v6 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v13 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v16 = &v5 - v8;
  v20 = v1;
  v3 = sub_26B078980();
  (*(*(v3 - 8) + 56))(v16, 1);
  sub_26AFB4A80(v9, v13);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_26AFB4F68(v13, v18 + v12);
  return ProactiveSuggestionView.Action.init(label:role:action:)(v19, v15, v16, v17, v18, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], v14, MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8]);
}

uint64_t sub_26AFAEE48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v45 = a1;
  v51 = sub_26AFB89BC;
  v25 = sub_26AFB00F8;
  v73 = 0;
  v72 = 0;
  v69 = 0;
  v40 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v26 = *(updated - 8);
  v46 = v26;
  v47 = *(v26 + 64);
  v27 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v49 = &v18 - v27;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v50 = &v18 - v28;
  v29 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v39 = &v18 - v29;
  v3 = sub_26B079DE0();
  v30 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v37 = &v18 - v30;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20, &qword_26B0881A0);
  v57 = *(v59 - 8);
  v58 = v59 - 8;
  v31 = (v57[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v32 = &v18 - v31;
  v33 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v34 = &v18 - v33;
  v35 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v62 = &v18 - v35;
  v36 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v9);
  v55 = &v18 - v36;
  v73 = &v18 - v36;
  v72 = v11;
  *&v41[1] = 1;
  sub_26B079D00("Cancel Auto Install", 19, 1, v10);
  sub_26B079D80();
  v38 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v38);
  sub_26AEFB5C4();
  v70[2] = 0;
  v70[3] = 0;
  v71 = *v41 & 0x100;
  v12 = sub_26B079E40();
  v53 = v70;
  v70[0] = v12;
  v70[1] = v13;
  sub_26B078960();
  v42 = sub_26B078980();
  v14 = *(v42 - 8);
  v43 = *(v14 + 56);
  v44 = v14 + 56;
  v43(v50, 0, *&v41[1]);
  sub_26AFB4A80(v45, v49);
  v48 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v52 = swift_allocObject();
  sub_26AFB4F68(v49, v52 + v48);
  v54 = sub_26AE95974();
  sub_26B079910();
  v56 = sub_26AE9C224();
  sub_26AE9463C(v62, v59, v55);
  v60 = v57[1];
  v61 = v57 + 1;
  v60(v62, v59);
  v69 = v62;
  v19 = 0x100000000;
  sub_26B079D00("Don’t Cancel", 14, 0);
  sub_26B079D80();
  v18 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v18);
  sub_26AEFB5C4();
  v67[2] = 0;
  v67[3] = 0;
  v68 = *(&v19 + 3) & 0x100;
  v15 = sub_26B079E40();
  v20 = v67;
  v67[0] = v15;
  v67[1] = v16;
  sub_26B078970();
  (v43)(v50, v19, HIDWORD(v19), v42);
  sub_26B079910();
  sub_26AE9463C(v34, v59, v62);
  v60(v34, v59);
  v22 = v57[2];
  v21 = v57 + 2;
  v22(v34, v55, v59);
  v23 = v66;
  v66[0] = v34;
  v22(v32, v62, v59);
  v66[1] = v32;
  v65[0] = v59;
  v65[1] = v59;
  v63 = v56;
  v64 = v56;
  sub_26AFD49C4(v23, 2uLL, v65, v24);
  v60(v32, v59);
  v60(v34, v59);
  v60(v62, v59);
  return (v60)(v55, v59);
}

uint64_t sub_26AFAF6EC(uint64_t *a1)
{
  v41 = a1;
  v48 = 0;
  v56 = 0;
  v34 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v35 = *(updated - 8);
  v36 = v35;
  v37 = *(v35 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v38 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v40 = &v14 - v39;
  v42 = sub_26B078580();
  v43 = *(v42 - 8);
  v44 = v43;
  MEMORY[0x28223BE20](v41);
  v45 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4;
  sub_26B078550();
  v50 = sub_26B078570();
  v46 = v50;
  v49 = sub_26B07A2A0();
  v47 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v51 = sub_26B07A760();
  if (os_log_type_enabled(v50, v49))
  {
    v5 = v34;
    v25 = sub_26B07A420();
    v21 = v25;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v23 = 0;
    v26 = sub_26AEA3B70(0, v22, v22);
    v24 = v26;
    v27 = sub_26AEA3B70(v23, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v55 = v25;
    v54 = v26;
    v53 = v27;
    v28 = 0;
    v29 = &v55;
    sub_26AEA3BC4(0, &v55);
    sub_26AEA3BC4(v28, v29);
    v52 = v51;
    v30 = &v14;
    MEMORY[0x28223BE20](&v14);
    v31 = &v14 - 6;
    *(&v14 - 4) = v6;
    *(&v14 - 3) = &v54;
    *(&v14 - 2) = &v53;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v33 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v46, v47, "User Action: Clicked 'Cancel Auto Install' on the updateScheduledView confirmation Dialog", v21, 2u);
      v19 = 0;
      sub_26AEA3C24(v24, 0, v22);
      sub_26AEA3C24(v27, v19, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v20 = v33;
    }
  }

  else
  {

    v20 = v34;
  }

  (*(v44 + 8))(v45, v42);
  sub_26B07A140();
  v16 = 0;
  v7 = sub_26B07A160();
  (*(*(v7 - 8) + 56))(v40, 0, 1);
  sub_26AFB4A80(v41, v38);
  v15 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v8 = swift_allocObject();
  v9 = v15;
  v10 = v16;
  v11 = v8;
  v12 = v38;
  v17 = v11;
  *(v11 + 16) = v16;
  *(v11 + 24) = v10;
  sub_26AFB4F68(v12, v11 + v9);
  v18 = sub_26AFF12B8(v16, v16, v40, &unk_26B08DC70, v17, MEMORY[0x277D839B0]);
  sub_26AEA08A4(v40);
}

uint64_t sub_26AFAFC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[7] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[5] = a4;
  return MEMORY[0x2822009F8](sub_26AFAFCC8, 0, 0);
}

uint64_t sub_26AFAFCC8()
{
  *(v0 + 32) = v0;
  sub_26B07A130();
  *(v0 + 72) = sub_26B07A120();
  v3 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AFAFD68, v3, v1);
}

uint64_t sub_26AFAFD68()
{
  v1 = *(v0 + 64);
  *(v0 + 32) = v0;
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);

  *(v0 + 16) = v5;
  *(v0 + 24) = v4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  *(v0 + 80) = *(v0 + 48);

  v2 = swift_task_alloc();
  *(v6 + 88) = v2;
  *v2 = *(v6 + 32);
  v2[1] = sub_26AFAFE88;

  return ReactiveUIManager.unscheduleTargetedUpdate(delegate:)(0);
}

uint64_t sub_26AFAFE88(char a1)
{
  v5 = *v2;
  *(v5 + 32) = *v2;
  *(v5 + 25) = a1;
  *(v5 + 96) = v1;

  if (v1)
  {
    v3 = sub_26AFB005C;
  }

  else
  {

    v3 = sub_26AFB000C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26AFB000C()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  *(v0 + 32) = v0;
  *v2 = v1;
  return (*(*(v0 + 32) + 8))();
}

uint64_t sub_26AFB005C()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_26AFB00F8()
{
  v27 = 0;
  v20 = 0;
  v21 = sub_26B078580();
  v22 = *(v21 - 8);
  v23 = v22;
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v4 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B078550();
  v29 = sub_26B078570();
  v25 = v29;
  v28 = sub_26B07A2A0();
  v26 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v30 = sub_26B07A760();
  if (os_log_type_enabled(v29, v28))
  {
    v1 = v20;
    v11 = sub_26B07A420();
    v7 = v11;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v9 = 0;
    v12 = sub_26AEA3B70(0, v8, v8);
    v10 = v12;
    v13 = sub_26AEA3B70(v9, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v34 = v11;
    v33 = v12;
    v32 = v13;
    v14 = 0;
    v15 = &v34;
    sub_26AEA3BC4(0, &v34);
    sub_26AEA3BC4(v14, v15);
    v31 = v30;
    v16 = &v4;
    MEMORY[0x28223BE20](&v4);
    v17 = &v4 - 6;
    *(&v4 - 4) = v2;
    *(&v4 - 3) = &v33;
    *(&v4 - 2) = &v32;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v19 = v1;
    if (v1)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v25, v26, "User Action: Clicked 'Don’t Cancel' on the updateScheduledView's confirmation Dialog in AvailableUpdateProactiveSuggestionView", v7, 2u);
      v5 = 0;
      sub_26AEA3C24(v10, 0, v8);
      sub_26AEA3C24(v13, v5, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v6 = v19;
    }
  }

  else
  {

    v6 = v20;
  }

  return (*(v23 + 8))(v24, v21);
}

uint64_t sub_26AFB044C@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00("Are you sure you want to cancel Auto Install?", 45, 1);
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AFB061C@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v8 = sub_26AFB6D38;
  v21 = 0;
  v20 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
  v9 = *(v15 - 8);
  v10 = v15 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v13 = &v4 - v4;
  v5 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v4);
  v14 = &v4 - v5;
  v21 = &v4 - v5;
  v20 = v1;
  v6 = &v18;
  v19 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40, &unk_26B08D748);
  sub_26AFB55D8();
  sub_26B079A90();
  v12 = sub_26AFB5660();
  sub_26AE9463C(v13, v15, v14);
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v13, v15);
  (*(v9 + 16))(v13, v14, v15);
  sub_26AE94B4C(v13, v15, v11);
  v17(v13, v15);
  return (v17)(v14, v15);
}

uint64_t sub_26AFB0818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v53 = 0;
  v39 = v52;
  v34 = 80;
  memset(v52, 0, sizeof(v52));
  v17 = 0;
  v13 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v19 = &v13 - v13;
  v3 = sub_26B079DE0();
  v14 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v16 = &v13 - v14;
  v53 = a1;
  v20 = 1;
  sub_26B079D00("Download in Progress", 20, 1, v4);
  sub_26B079D80();
  v15 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v15);
  sub_26AEFB5C4();
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = v20 & 1;
  v29 = sub_26B079E40();
  v25 = v5;
  sub_26B079D00("ProductFamilyName has started downloading an update automatically. Once completed, ProductFamilyName will attempt to install the update later when ProductFamilyName is locked and the battery has enough charge.", 209, v20 & 1);
  sub_26B079D80();
  v18 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v18);
  sub_26AEFB5C4();
  v44[3] = 0;
  v44[4] = 0;
  v45 = 0;
  v46 = v20 & 1;
  v26 = sub_26B079E40();
  v27 = v6;
  v22 = sub_26B079D00("arrow.down.circle.fill", 22, v20 & 1);
  v21 = v7;
  v8 = [objc_opt_self() tertiaryLabelColor];
  v9 = sub_26B079750();
  ProactiveSuggestionView.Icon.init(systemName:fill:)(v22, v21, v9, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], v44);
  v28 = v43;
  v43[0] = v44[0];
  v43[1] = v44[1];
  v43[2] = v44[2];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD08, &unk_26B08DC30);
  v23 = sub_26B07A760();
  sub_26AFB0C28(v10);
  sub_26AEA3B2C();
  v30 = v51;
  ProactiveSuggestionView<>.init(title:description:icon:actions:)(v29, v25, v26, v27, v28, v11, v51);
  v31 = __dst;
  memcpy(__dst, v30, v34);
  v32 = v42;
  memcpy(v42, v31, v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40, &unk_26B08D748);
  v37 = sub_26AFB55D8();
  sub_26AE9463C(v32, v36, v39);
  sub_26AFB7CDC(v32);
  v33 = v55;
  memcpy(v55, v39, v34);
  sub_26AFB7D84(v33, &v41);
  v38 = v40;
  memcpy(v40, v33, v34);
  sub_26AE94B4C(v38, v36, v35);
  sub_26AFB7CDC(v38);
  return sub_26AFB7CDC(v39);
}

uint64_t sub_26AFB0C28@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15 = 0;
  v19 = sub_26AFB207C;
  v17 = sub_26AFB6EEC;
  v20 = 0;
  v7 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v5 = *(updated - 8);
  v10 = v5;
  v11 = *(v5 + 64);
  v6 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v13 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v16 = &v5 - v8;
  v20 = v1;
  v3 = sub_26B078980();
  (*(*(v3 - 8) + 56))(v16, 1);
  sub_26AFB4A80(v9, v13);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_26AFB4F68(v13, v18 + v12);
  return ProactiveSuggestionView.Action.init(label:role:action:)(v19, v15, v16, v17, v18, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], v14, MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8]);
}

uint64_t sub_26AFB0E8C@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
  v18 = *(v17 - 8);
  v19 = v18;
  v21 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v6 - v23;
  MEMORY[0x28223BE20](v6 - v23);
  v22 = v6 - v23;
  MEMORY[0x28223BE20](v2);
  v24 = v6 - v23;
  v37 = v6 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC80, qword_26B08D768);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v6 - v29;
  MEMORY[0x28223BE20](v6 - v29);
  v28 = v6 - v29;
  MEMORY[0x28223BE20](v6 - v29);
  v30 = v6 - v29;
  v36 = v6 - v29;
  v35 = v1;
  v31 = *(v1 + 48);

  v32 = ReactiveDescriptor.updateError.getter();
  if (v32)
  {
    v15 = v32;
    v11 = v32;
    v34 = v32;

    v3 = v11;
    v10 = v6;
    MEMORY[0x28223BE20](v6);
    v8 = &v6[-4];
    v6[-2] = v11;
    v6[-1] = v4;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40, &unk_26B08D748);
    sub_26AFB55D8();
    sub_26B079A90();

    v12 = sub_26AFB5660();
    sub_26AE9463C(v22, v17, v24);
    v13 = *(v19 + 8);
    v14 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v22, v17);
    v33 = v22;
    v7 = *(v19 + 16);
    v6[1] = v19 + 16;
    v7(v20, v24, v17);
    sub_26AE94B4C(v20, v17, v22);
    v13(v20, v17);
    v7(v26, v22, v17);
    (*(v19 + 56))(v26, 0, 1, v17);
    sub_26AF09CCC(v26, v17, v28);
    sub_26AFB6640(v26);
    sub_26AFB6F50(v28, v30);
    v13(v22, v17);
    v13(v24, v17);
  }

  else
  {

    (*(v19 + 56))(v26, 1, 1, v17);
    sub_26AFB5660();
    sub_26AF09CCC(v26, v17, v28);
    sub_26AFB6640(v26);
    sub_26AFB6F50(v28, v30);
  }

  sub_26AFB66F4(v30, v28);
  sub_26AFB57B4();
  sub_26AE94B4C(v28, v25, v16);
  sub_26AFB6640(v28);
  return sub_26AFB6640(v30);
}

uint64_t sub_26AFB1348@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v53 = a1;
  v52 = a2;
  v35 = *(a2 + 48);

  v34 = *(v35 + 24);
  MEMORY[0x277D82BE0](v34);

  v38 = *(a2 + 32);
  v37 = *(a2 + 40);

  v48 = v38;
  v49 = v37 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  v39 = ReactiveUIManager.currentDownload.getter();

  if (v39)
  {
    v30 = *(v39 + 16);
    MEMORY[0x277D82BE0](v30);

    swift_getObjectType();
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v23 = SUUIStatefulError.heading(_:download:)(v34, v31, v3);
  v24 = v4;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v34);
  v26 = *(a2 + 48);

  v25 = *(v26 + 24);
  MEMORY[0x277D82BE0](v25);

  sub_26AFAAB3C();
  v28 = *(a2 + 32);
  v27 = *(a2 + 40);

  v46[4] = v28;
  v47 = v27 & 1;
  sub_26B078A10();

  v29 = ReactiveUIManager.currentDownload.getter();

  if (v29)
  {
    MEMORY[0x277D82BE0](*(v29 + 16));

    swift_getObjectType();
  }

  v17 = SUUIStatefulError.body(_:platform:download:)(v25);
  v18 = v5;
  swift_unknownObjectRelease();

  *&v6 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  v20 = sub_26B079D00("exclamationmark.triangle.fill", 29, 1, v6);
  v19 = v7;
  v8 = sub_26B0797A0();
  v12 = MEMORY[0x277CE11C0];
  v13 = MEMORY[0x277CE0BC8];
  v14 = MEMORY[0x277CE11C0];
  ProactiveSuggestionView.Icon.init(systemName:fill:)(v20, v19, v8, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], v46);
  v45[0] = v46[0];
  v45[1] = v46[1];
  v45[2] = v46[2];
  v21 = [a1 traits];
  swift_getObjectType();
  v22 = [v21 insufficientDiskSpace];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD08, &unk_26B08DC30);
  if (v22)
  {
    sub_26B07A760();
    sub_26AFB1854(v9);
    sub_26AEA3B2C();
    v16 = v10;
  }

  else
  {
    v16 = sub_26B079C40();
  }

  ProactiveSuggestionView<>.init(title:description:icon:actions:)(v23, v24, v17, v18, v45, v16, v50);
  memcpy(__dst, v50, sizeof(__dst));
  memcpy(v42, __dst, sizeof(v42));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40, &unk_26B08D748);
  sub_26AFB55D8();
  sub_26AE9463C(v42, v15, __b);
  sub_26AFB7CDC(v42);
  memcpy(v44, __b, sizeof(v44));
  sub_26AFB7D84(v44, v41);
  memcpy(v40, v44, sizeof(v40));
  sub_26AE94B4C(v40, v15, a3);
  sub_26AFB7CDC(v40);
  return sub_26AFB7CDC(__b);
}

uint64_t sub_26AFB1854@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15 = 0;
  v19 = sub_26AFB2D00;
  v17 = sub_26AFB723C;
  v20 = 0;
  v7 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v5 = *(updated - 8);
  v10 = v5;
  v11 = *(v5 + 64);
  v6 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v13 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758, &unk_26B08F810) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v16 = &v5 - v8;
  v20 = v1;
  v3 = sub_26B078980();
  (*(*(v3 - 8) + 56))(v16, 1);
  sub_26AFB4A80(v9, v13);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_26AFB4F68(v13, v18 + v12);
  return ProactiveSuggestionView.Action.init(label:role:action:)(v19, v15, v16, v17, v18, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], v14, MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8]);
}

uint64_t sub_26AFB1AB8@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v6 = 0;
  v8 = sub_26AFB1CAC;
  v19 = 0;
  v18 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
  v9 = *(v15 - 8);
  v10 = v15 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v13 = &v4 - v4;
  v5 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v4);
  v14 = &v4 - v5;
  v19 = &v4 - v5;
  v18 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40, &unk_26B08D748);
  sub_26AFB55D8();
  sub_26B079A90();
  v12 = sub_26AFB5660();
  sub_26AE9463C(v13, v15, v14);
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v13, v15);
  (*(v9 + 16))(v13, v14, v15);
  sub_26AE94B4C(v13, v15, v11);
  v17(v13, v15);
  return (v17)(v14, v15);
}

uint64_t sub_26AFB1CAC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v34 = __b;
  v29 = 80;
  memset(__b, 0, sizeof(__b));
  v14 = 0;
  v10 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v9 - v10;
  v1 = sub_26B079DE0();
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v13 = &v9 - v11;
  v17 = 1;
  sub_26B079D00("Paused", 6, 1, v2);
  sub_26B079D80();
  v12 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v12);
  sub_26AEFB5C4();
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = v17 & 1;
  v24 = sub_26B079E40();
  v20 = v3;
  sub_26B079D00("The download will automatically resume when ProductFamilyName reconnects to the internet.", 89, v17 & 1);
  sub_26B079D80();
  v15 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v15);
  sub_26AEFB5C4();
  v39[3] = 0;
  v39[4] = 0;
  v40 = 0;
  v41 = v17 & 1;
  v21 = sub_26B079E40();
  v22 = v4;
  v19 = sub_26B079D00("exclamationmark.triangle.fill", 29, v17 & 1);
  v18 = v5;
  v6 = sub_26B0797A0();
  ProactiveSuggestionView.Icon.init(systemName:fill:)(v19, v18, v6, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], v39);
  v23 = v38;
  v38[0] = v39[0];
  v38[1] = v39[1];
  v38[2] = v39[2];
  v7 = sub_26AFB2048();
  v25 = v46;
  ProactiveSuggestionView<>.init(title:description:icon:actions:)(v24, v20, v21, v22, v23, v7, v46);
  v26 = __dst;
  memcpy(__dst, v25, v29);
  v27 = v37;
  memcpy(v37, v26, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40, &unk_26B08D748);
  v32 = sub_26AFB55D8();
  sub_26AE9463C(v27, v31, v34);
  sub_26AFB7CDC(v27);
  v28 = v49;
  memcpy(v49, v34, v29);
  sub_26AFB7D84(v28, &v36);
  v33 = v35;
  memcpy(v35, v28, v29);
  sub_26AE94B4C(v33, v31, v30);
  sub_26AFB7CDC(v33);
  return sub_26AFB7CDC(v34);
}

uint64_t sub_26AFB207C@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00("Install Once Downloaded", 23, 1);
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AFB224C(uint64_t *a1)
{
  v41 = a1;
  v48 = 0;
  v56 = 0;
  v34 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v35 = *(updated - 8);
  v36 = v35;
  v37 = *(v35 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v38 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v40 = &v14 - v39;
  v42 = sub_26B078580();
  v43 = *(v42 - 8);
  v44 = v43;
  MEMORY[0x28223BE20](v41);
  v45 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4;
  sub_26B078550();
  v50 = sub_26B078570();
  v46 = v50;
  v49 = sub_26B07A2A0();
  v47 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v51 = sub_26B07A760();
  if (os_log_type_enabled(v50, v49))
  {
    v5 = v34;
    v25 = sub_26B07A420();
    v21 = v25;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v23 = 0;
    v26 = sub_26AEA3B70(0, v22, v22);
    v24 = v26;
    v27 = sub_26AEA3B70(v23, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v55 = v25;
    v54 = v26;
    v53 = v27;
    v28 = 0;
    v29 = &v55;
    sub_26AEA3BC4(0, &v55);
    sub_26AEA3BC4(v28, v29);
    v52 = v51;
    v30 = &v14;
    MEMORY[0x28223BE20](&v14);
    v31 = &v14 - 6;
    *(&v14 - 4) = v6;
    *(&v14 - 3) = &v54;
    *(&v14 - 2) = &v53;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v33 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v46, v47, "User Action: Clicked 'Install Once Downloaded' on the automaticUpdateInProgressView in AvailableUpdateProactiveSuggestionView", v21, 2u);
      v19 = 0;
      sub_26AEA3C24(v24, 0, v22);
      sub_26AEA3C24(v27, v19, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v20 = v33;
    }
  }

  else
  {

    v20 = v34;
  }

  (*(v44 + 8))(v45, v42);
  sub_26B07A140();
  v16 = 0;
  v7 = sub_26B07A160();
  (*(*(v7 - 8) + 56))(v40, 0, 1);
  sub_26AFB4A80(v41, v38);
  v15 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v8 = swift_allocObject();
  v9 = v15;
  v10 = v16;
  v11 = v8;
  v12 = v38;
  v17 = v11;
  *(v11 + 16) = v16;
  *(v11 + 24) = v10;
  sub_26AFB4F68(v12, v11 + v9);
  v18 = sub_26AFF12B8(v16, v16, v40, &unk_26B08DC48, v17, MEMORY[0x277D839B0]);
  sub_26AEA08A4(v40);
}

uint64_t sub_26AFB27E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[7] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[5] = a4;
  return MEMORY[0x2822009F8](sub_26AFB2828, 0, 0);
}

uint64_t sub_26AFB2828()
{
  *(v0 + 32) = v0;
  sub_26B07A130();
  *(v0 + 72) = sub_26B07A120();
  v3 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AFB28C8, v3, v1);
}

uint64_t sub_26AFB28C8()
{
  v1 = *(v0 + 64);
  *(v0 + 32) = v0;
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);

  *(v0 + 16) = v4;
  *(v0 + 24) = v3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  *(v0 + 80) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_26AFB29A4, 0, 0);
}

uint64_t sub_26AFB29A4()
{
  v1 = v0[8];
  v0[4] = v0;
  v5 = *(v1 + 48);
  v0[11] = v5;

  v2 = swift_task_alloc();
  *(v4 + 96) = v2;
  *v2 = *(v4 + 32);
  v2[1] = sub_26AFB2A70;

  return ReactiveUIManager.promoteTargetedUpdate(_:delegate:)(v5, 0);
}

uint64_t sub_26AFB2A70(char a1)
{
  v5 = *v2;
  *(v5 + 32) = *v2;
  *(v5 + 25) = a1;
  *(v5 + 104) = v1;

  if (v1)
  {
    v3 = sub_26AFB2C54;
  }

  else
  {

    v3 = sub_26AFB2C04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26AFB2C04()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  *(v0 + 32) = v0;
  *v2 = v1;
  return (*(*(v0 + 32) + 8))();
}

uint64_t sub_26AFB2C54()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_26AFB2D00@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00("Manage ProductFamilyName Storage", 32, 1);
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AFB2ED0(uint64_t *a1)
{
  v53 = a1;
  v60 = 0;
  v72 = 0;
  v71 = 0;
  v39 = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130, &unk_26B088940);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v42 = (&v12 - v41);
  v43 = sub_26B078B00();
  v44 = *(v43 - 8);
  v45 = v44;
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0, &qword_26B08F2C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v48 = &v12 - v47;
  v49 = sub_26B0781B0();
  v50 = *(v49 - 8);
  v51 = v50;
  MEMORY[0x28223BE20](v60);
  v52 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v52;
  v54 = sub_26B078580();
  v55 = *(v54 - 8);
  v56 = v55;
  MEMORY[0x28223BE20](v53);
  v57 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v4;
  sub_26B078550();
  v62 = sub_26B078570();
  v58 = v62;
  v61 = sub_26B07A2A0();
  v59 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v63 = sub_26B07A760();
  if (os_log_type_enabled(v62, v61))
  {
    v5 = v39;
    v30 = sub_26B07A420();
    v26 = v30;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v28 = 0;
    v31 = sub_26AEA3B70(0, v27, v27);
    v29 = v31;
    v32 = sub_26AEA3B70(v28, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v67[0] = v30;
    v66 = v31;
    v65 = v32;
    v33 = 0;
    v34 = v67;
    sub_26AEA3BC4(0, v67);
    sub_26AEA3BC4(v33, v34);
    v64 = v63;
    v35 = &v12;
    MEMORY[0x28223BE20](&v12);
    v36 = &v12 - 6;
    *(&v12 - 4) = v6;
    *(&v12 - 3) = &v66;
    *(&v12 - 2) = &v65;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v38 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v58, v59, "User Action: Clicked 'Manage Storage' on errorView in in AvailableUpdateProactiveSuggestionView", v26, 2u);
      v24 = 0;
      sub_26AEA3C24(v29, 0, v27);
      sub_26AEA3C24(v32, v24, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v25 = v38;
    }
  }

  else
  {

    v25 = v39;
  }

  (*(v56 + 8))(v57, v54);
  v20 = *v53;
  v21 = *(v53 + 8);
  sub_26AF07734();
  v69 = v20;
  v70 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC9C0, &unk_26B08D610);
  sub_26B078A10();
  v23 = v68;
  v22 = v68;
  sub_26AF072D8();
  if (v23)
  {
    v19 = v22;
    v15 = v22;
    v16 = v53[6];

    v17 = ReactiveDescriptor.role.getter();

    v67[2] = v17;
    v67[1] = 0;
    v18 = type metadata accessor for SUUIStatefulDescriptorRole(0);
    sub_26AF2D17C();
    v7 = sub_26B07A790();
    if (v7)
    {
      v14 = 18;
    }

    else
    {
      v14 = 25;
    }

    ReactiveAnalyticsReporter.submitNavigation(_:)(v14);
  }

  v13 = 1;
  sub_26B079D00("settings-navigation://com.apple.Settings.General/STORAGE_MGMT", 61);
  v12 = v8;
  sub_26B0781A0();

  if ((*(v51 + 48))(v48, v13, v49) == 1)
  {
    return sub_26AEC02C0(v48);
  }

  v10 = v42;
  (*(v51 + 32))(v52, v48, v49);
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  sub_26AEC26F8((v53 + *(updated + 32)), v10);
  sub_26B078A10();
  sub_26AEC27CC(v42);
  sub_26B078AF0();
  (*(v45 + 8))(v46, v43);
  return (*(v51 + 8))(v52, v49);
}

uint64_t sub_26AFB3760@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00("Update Now", 10, 1);
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AFB3930(uint64_t *a1)
{
  v42 = a1;
  v49 = 0;
  v57 = 0;
  v35 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v36 = *(updated - 8);
  v37 = v36;
  v38 = *(v36 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v39 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v41 = &v15 - v40;
  v43 = sub_26B078580();
  v44 = *(v43 - 8);
  v45 = v44;
  MEMORY[0x28223BE20](v42);
  v46 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v4;
  sub_26B078550();
  v51 = sub_26B078570();
  v47 = v51;
  v50 = sub_26B07A2A0();
  v48 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v52 = sub_26B07A760();
  if (os_log_type_enabled(v51, v50))
  {
    v5 = v35;
    v26 = sub_26B07A420();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v24 = 0;
    v27 = sub_26AEA3B70(0, v23, v23);
    v25 = v27;
    v28 = sub_26AEA3B70(v24, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v56 = v26;
    v55 = v27;
    v54 = v28;
    v29 = 0;
    v30 = &v56;
    sub_26AEA3BC4(0, &v56);
    sub_26AEA3BC4(v29, v30);
    v53 = v52;
    v31 = &v15;
    MEMORY[0x28223BE20](&v15);
    v32 = &v15 - 6;
    *(&v15 - 4) = v6;
    *(&v15 - 3) = &v55;
    *(&v15 - 2) = &v54;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v34 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v47, v48, "User Action: Clicked 'Update Now' in updateScheduledView in AvailableUpdateProactiveSuggestionView", v22, 2u);
      v20 = 0;
      sub_26AEA3C24(v25, 0, v23);
      sub_26AEA3C24(v28, v20, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v21 = v34;
    }
  }

  else
  {

    v21 = v35;
  }

  (*(v45 + 8))(v46, v43);
  sub_26B07A140();
  v18 = 0;
  v7 = sub_26B07A160();
  (*(*(v7 - 8) + 56))(v41, 0, 1);
  sub_26AFB4A80(v42, v39);
  v16 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v8 = swift_allocObject();
  v9 = v16;
  v10 = v18;
  v11 = v8;
  v12 = v39;
  v17 = v11;
  *(v11 + 16) = v18;
  *(v11 + 24) = v10;
  sub_26AFB4F68(v12, v11 + v9);
  v13 = sub_26AFB874C();
  v19 = sub_26AFF12B8(v18, v18, v41, &unk_26B08DC58, v17, v13);
  sub_26AEA08A4(v41);
}

uint64_t sub_26AFB3ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[7] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[5] = a4;
  return MEMORY[0x2822009F8](sub_26AFB3F14, 0, 0);
}

uint64_t sub_26AFB3F14()
{
  *(v0 + 32) = v0;
  sub_26B07A130();
  *(v0 + 72) = sub_26B07A120();
  v3 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AFB3FB4, v3, v1);
}

uint64_t sub_26AFB3FB4()
{
  v1 = *(v0 + 64);
  *(v0 + 32) = v0;
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);

  *(v0 + 16) = v4;
  *(v0 + 24) = v3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();
  *(v0 + 80) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_26AFB4090, 0, 0);
}

uint64_t sub_26AFB4090()
{
  v1 = v0[8];
  v0[4] = v0;
  v5 = *(v1 + 48);
  v0[11] = v5;

  v2 = swift_task_alloc();
  *(v4 + 96) = v2;
  *v2 = *(v4 + 32);
  v2[1] = sub_26AFB415C;

  return ReactiveUIManager.install(_:delegate:)(v5, 0);
}

uint64_t sub_26AFB415C(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[13] = a1;
  v5[14] = v1;

  if (v1)
  {
    v3 = sub_26AFB4340;
  }

  else
  {

    v3 = sub_26AFB42F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26AFB42F0()
{
  v1 = v0[13];
  v2 = v0[7];
  v0[4] = v0;
  *v2 = v1;
  return (*(v0[4] + 8))();
}

uint64_t sub_26AFB4340()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_26AFB43EC@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00("Cancel Update", 13, 1);
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AFB45BC(uint64_t a1)
{
  v27 = a1;
  v34 = 0;
  v45 = 0;
  v26 = 0;
  v28 = sub_26B078580();
  v29 = *(v28 - 8);
  v30 = v29;
  MEMORY[0x28223BE20](v27);
  v31 = &v7[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = v2;
  sub_26B078550();
  v36 = sub_26B078570();
  v32 = v36;
  v35 = sub_26B07A2A0();
  v33 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v37 = sub_26B07A760();
  if (os_log_type_enabled(v36, v35))
  {
    v3 = v26;
    v17 = sub_26B07A420();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v15 = 0;
    v18 = sub_26AEA3B70(0, v14, v14);
    v16 = v18;
    v19 = sub_26AEA3B70(v15, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = v17;
    v40 = v18;
    v39 = v19;
    v20 = 0;
    v21 = &v41;
    sub_26AEA3BC4(0, &v41);
    sub_26AEA3BC4(v20, v21);
    v38 = v37;
    v22 = v7;
    MEMORY[0x28223BE20](v7);
    v23 = &v7[-48];
    *&v7[-32] = v4;
    *&v7[-24] = &v40;
    *&v7[-16] = &v39;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v25 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v32, v33, "User Action: Clicked 'Cancel Update' in updateScheduledView in AvailableUpdateProactiveSuggestionView", v13, 2u);
      v11 = 0;
      sub_26AEA3C24(v16, 0, v14);
      sub_26AEA3C24(v19, v11, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v30 + 8))(v31, v28);
  v5 = (v27 + *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) + 36));
  v8 = *v5;
  v10 = *(v5 + 1);

  v43 = v8;
  v44 = v10;
  v42 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  v9 = &v43;
  sub_26B0798C0();
  sub_26AE91DC8(v9);
}

uint64_t sub_26AFB4A80(uint64_t *a1, uint64_t a2)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_26AF07734();
  *a2 = v8;
  *(a2 + 8) = v9 & 1;
  v10 = a1[2];
  v11 = *(a1 + 24);

  *(a2 + 16) = v10;
  *(a2 + 24) = v11 & 1;
  v12 = a1[4];
  v13 = *(a1 + 40);

  *(a2 + 32) = v12;
  *(a2 + 40) = v13 & 1;
  v15 = a1[6];

  *(a2 + 48) = v15;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v17 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v7 = *(a1 + v17);

    *(a2 + v17) = v7;
  }

  swift_storeEnumTagMultiPayload();
  v3 = *(updated + 36);
  v5 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v6 = *(a1 + v3 + 8);

  result = a2;
  *(v5 + 8) = v6;
  return result;
}

uint64_t sub_26AFB4CA8(uint64_t a1)
{
  sub_26AF072D8();

  v3 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(a1 + v3);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AFB4DBC()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

__n128 sub_26AFB4F68(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v6 = *(updated + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v6), (a1 + v6), *(*(v8 - 8) + 64));
  }

  result = *(a1 + *(updated + 36));
  *(a2 + *(updated + 36)) = result;
  return result;
}

uint64_t sub_26AFB50D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v4 = v2 + ((*(*(updated - 8) + 80) + 16) & ~*(*(updated - 8) + 80));

  return sub_26AFAC624(a1, v4, a2);
}

unint64_t sub_26AFB5154()
{
  v2 = qword_2803DDBE0;
  if (!qword_2803DDBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDBD0, &qword_26B08D710);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDBE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB51DC()
{
  v2 = qword_2803DDBE8;
  if (!qword_2803DDBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDBD8, &qword_26B08D718);
    sub_26AFB5280();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDBE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB5280()
{
  v2 = qword_2803DDBF0;
  if (!qword_2803DDBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDBF8, &qword_26B08D720);
    sub_26AFB5328();
    sub_26AFB570C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDBF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB5328()
{
  v2 = qword_2803DDC00;
  if (!qword_2803DDC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC08, &qword_26B08D728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDC10, &unk_26B08D730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748, &qword_26B08A188);
    sub_26AFB5484();
    sub_26AE95974();
    sub_26AEFDA40();
    swift_getOpaqueTypeConformance2();
    sub_26AFB5660();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB5484()
{
  v2 = qword_2803DDC20;
  if (!qword_2803DDC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDC10, &unk_26B08D730);
    sub_26AFB5530();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB5530()
{
  v2 = qword_2803DDC28;
  if (!qword_2803DDC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC30, &qword_26B08D740);
    sub_26AFB55D8();
    sub_26AE9C354();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB55D8()
{
  v2 = qword_2803DDC38;
  if (!qword_2803DDC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDC40, &unk_26B08D748);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB5660()
{
  v2 = qword_2803DDC58;
  if (!qword_2803DDC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC60, &qword_26B08D758);
    sub_26AFB55D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB570C()
{
  v2 = qword_2803DDC68;
  if (!qword_2803DDC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC70, &qword_26B08D760);
    sub_26AFB57B4();
    sub_26AFB5660();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB57B4()
{
  v2 = qword_2803DDC78;
  if (!qword_2803DDC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC80, qword_26B08D768);
    sub_26AFB5660();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB584C()
{
  v2 = qword_2803DDC88;
  if (!qword_2803DDC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDBC8, &unk_26B08D6E8);
    sub_26AFB51DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB58E4()
{
  v2 = qword_2803DDC98;
  if (!qword_2803DDC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDBD0, &qword_26B08D710);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC98);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AFB59B0(const void *a1, void *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA8, &qword_26B08D7B8);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB0, &qword_26B08D7C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCC0, qword_26B08D7D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
        (*(*(v4 - 8) + 32))(a2, a1);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
        v7 = *(v6 - 8);
        if ((*(v7 + 48))(a1, 1))
        {
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC80, qword_26B08D768);
          memcpy(a2, a1, *(*(v3 - 8) + 64));
        }

        else
        {
          (*(v7 + 32))(a2, a1, v6);
          (*(v7 + 56))(a2, 0, 1, v6);
        }

        swift_storeEnumTagMultiPayload();
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB8, &qword_26B08D7C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
      }

      else
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0, &qword_26B08D7B0);
      }

      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_26AFB5D30(const void *a1, void *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA8, &qword_26B08D7B8);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB0, &qword_26B08D7C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCC0, qword_26B08D7D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
        (*(*(v4 - 8) + 16))(a2, a1);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
        v7 = *(v6 - 8);
        if ((*(v7 + 48))(a1, 1))
        {
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC80, qword_26B08D768);
          memcpy(a2, a1, *(*(v3 - 8) + 64));
        }

        else
        {
          (*(v7 + 16))(a2, a1, v6);
          (*(v7 + 56))(a2, 0, 1, v6);
        }

        swift_storeEnumTagMultiPayload();
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB8, &qword_26B08D7C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
      }

      else
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0, &qword_26B08D7B0);
      }

      (*(*(v2 - 8) + 16))(a2, a1);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AFB60B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA8, &qword_26B08D7B8);
  if (!swift_getEnumCaseMultiPayload())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB0, &qword_26B08D7C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCC0, qword_26B08D7D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
        (*(*(v2 - 8) + 8))(a1);
      }

      else
      {
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
        v5 = *(v4 - 8);
        if (!(*(v5 + 48))(a1, 1))
        {
          (*(v5 + 8))(a1, v4);
        }
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB8, &qword_26B08D7C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
      }

      else
      {
        v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0, &qword_26B08D7B0);
      }

      (*(*(v1 - 8) + 8))(a1);
    }
  }

  return a1;
}

uint64_t sub_26AFB62F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCC0, qword_26B08D7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(a1, 1))
    {
      (*(v4 + 8))(a1, v3);
    }
  }

  return a1;
}

uint64_t sub_26AFB6424(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB0, &qword_26B08D7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCC0, qword_26B08D7D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
      (*(*(v2 - 8) + 8))(a1);
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
      v5 = *(v4 - 8);
      if (!(*(v5 + 48))(a1, 1))
      {
        (*(v5 + 8))(a1, v4);
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB8, &qword_26B08D7C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
    }

    else
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0, &qword_26B08D7B0);
    }

    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_26AFB6640(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_26AFB66F4(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC80, qword_26B08D768);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AFB6828(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB8, &qword_26B08D7C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0, &qword_26B08D7B0);
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AFB6918()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB6AC4()
{
  v1 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AFB45BC(v2);
}

uint64_t sub_26AFB6B28()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB6CD4()
{
  v1 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_26AFB3930(v2);
}

uint64_t sub_26AFB6D40()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB6EEC()
{
  v1 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_26AFB224C(v2);
}

void *sub_26AFB6F50(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60, &qword_26B08D758);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC80, qword_26B08D768);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AFB7090()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView(0);
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB723C()
{
  v1 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_26AFB2ED0(v2);
}

uint64_t sub_26AFB72C8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 48) < 0x100000000uLL)
    {
      v6 = *(a1 + 48);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130, &unk_26B088940);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 32), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_26AFB7414(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130, &unk_26B088940);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 32), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_26AFB7510(uint64_t a1)
{
  v8 = sub_26AFB76B0(319);
  if (v1 <= 0x3F)
  {
    v8 = sub_26AF7BC6C(319);
    if (v2 <= 0x3F)
    {
      v8 = sub_26AE96B4C(319);
      if (v3 <= 0x3F)
      {
        v8 = type metadata accessor for ReactiveDescriptor(319);
        if (v4 <= 0x3F)
        {
          v8 = sub_26AED59A8(319);
          if (v5 <= 0x3F)
          {
            v8 = sub_26AE96C84(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v8;
}

unint64_t sub_26AFB76B0(uint64_t a1)
{
  v5 = qword_2803DDCD8;
  if (!qword_2803DDCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDCE0, qword_26B08D828);
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DDCD8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_26AFB7754(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26AFB78BC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}