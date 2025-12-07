unint64_t sub_1B07D76A4()
{
  v2 = qword_1EB6DE4B0;
  if (!qword_1EB6DE4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE4B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07D772C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1B07D77CC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MissingBodyDataRequest(0) + 20));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1B07D785C(uint64_t a1)
{
  v4 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v3 - v5;
  sub_1B03D08AC(v1, &v3 - v5);
  v8 = MessageIdentifierSet.count.getter();
  sub_1B03D09B8(v7);
  return v8;
}

uint64_t sub_1B07D7914(uint64_t a1)
{
  v3 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v3 - v4;
  sub_1B03D08AC(v1, &v3 - v4);
  MessageIdentifierSet.min()(v5, &v8);
  sub_1B03D09B8(v6);
  LODWORD(v7) = v8;
  BYTE4(v7) = v9 & 1;
  return v7;
}

uint64_t sub_1B07D79E0(uint64_t a1)
{
  v3 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v3 - v4;
  sub_1B03D08AC(v1, &v3 - v4);
  MessageIdentifierSet.max()(v5, &v8);
  sub_1B03D09B8(v6);
  LODWORD(v7) = v8;
  BYTE4(v7) = v9 & 1;
  return v7;
}

uint64_t sub_1B07D7AAC(uint64_t a1, int a2, uint64_t a3)
{
  v784 = a1;
  v785 = a2;
  v786 = a3;
  v618 = sub_1B074E050;
  v619 = sub_1B07F13D0;
  v620 = sub_1B07F14EC;
  v621 = sub_1B0394C30;
  v622 = sub_1B0394C24;
  v623 = sub_1B074DFFC;
  v624 = sub_1B039BA88;
  v625 = sub_1B039BB94;
  v626 = sub_1B0394C24;
  v627 = sub_1B039BBA0;
  v628 = sub_1B039BC08;
  v629 = 0x786F626C69616DLL;
  v630 = sub_1B06BA324;
  v631 = sub_1B074E0E4;
  v632 = sub_1B039BCF8;
  v633 = sub_1B07F12A4;
  v634 = sub_1B03B0DF8;
  v635 = sub_1B07F1308;
  v636 = sub_1B03B0DF8;
  v637 = sub_1B07F136C;
  v638 = sub_1B03B0DF8;
  v639 = sub_1B07F14E0;
  v640 = sub_1B039BC08;
  v641 = sub_1B07F14E0;
  v642 = sub_1B039BC08;
  v643 = sub_1B0398F5C;
  v644 = sub_1B0398F5C;
  v645 = sub_1B0399178;
  v646 = sub_1B0398F5C;
  v647 = sub_1B0398F5C;
  v648 = sub_1B039BA94;
  v649 = sub_1B0398F5C;
  v650 = sub_1B0398F5C;
  v651 = sub_1B0399178;
  v652 = sub_1B0398F5C;
  v653 = sub_1B0398F5C;
  v654 = sub_1B03991EC;
  v655 = sub_1B0398F5C;
  v656 = sub_1B0398F5C;
  v657 = sub_1B03993BC;
  v658 = sub_1B0398F5C;
  v659 = sub_1B0398F5C;
  v660 = sub_1B039BCEC;
  v661 = sub_1B0398F5C;
  v662 = sub_1B0398F5C;
  v663 = sub_1B0399260;
  v664 = sub_1B0398F5C;
  v665 = sub_1B0398F5C;
  v666 = sub_1B0399260;
  v667 = sub_1B0398F5C;
  v668 = sub_1B0398F5C;
  v669 = sub_1B0399260;
  v670 = sub_1B0398F5C;
  v671 = sub_1B0398F5C;
  v672 = sub_1B03991EC;
  v673 = sub_1B0398F5C;
  v674 = sub_1B0398F5C;
  v675 = sub_1B03991EC;
  v676 = sub_1B074E050;
  v677 = sub_1B07F15E0;
  v678 = sub_1B0394C24;
  v679 = sub_1B074DFFC;
  v680 = sub_1B039BA88;
  v681 = sub_1B0394C24;
  v682 = sub_1B039BBA0;
  v683 = sub_1B039BC08;
  v684 = sub_1B06BA324;
  v685 = sub_1B074E0E4;
  v686 = sub_1B039BCF8;
  v687 = sub_1B07F12A4;
  v688 = sub_1B03B0DF8;
  v689 = sub_1B07F1308;
  v690 = sub_1B03B0DF8;
  v691 = sub_1B074EF98;
  v692 = sub_1B039BCF8;
  v693 = sub_1B0398F5C;
  v694 = sub_1B0398F5C;
  v695 = sub_1B0399178;
  v696 = sub_1B0398F5C;
  v697 = sub_1B0398F5C;
  v698 = sub_1B039BA94;
  v699 = sub_1B0398F5C;
  v700 = sub_1B0398F5C;
  v701 = sub_1B0399178;
  v702 = sub_1B0398F5C;
  v703 = sub_1B0398F5C;
  v704 = sub_1B03991EC;
  v705 = sub_1B0398F5C;
  v706 = sub_1B0398F5C;
  v707 = sub_1B03993BC;
  v708 = sub_1B0398F5C;
  v709 = sub_1B0398F5C;
  v710 = sub_1B039BCEC;
  v711 = sub_1B0398F5C;
  v712 = sub_1B0398F5C;
  v713 = sub_1B0399260;
  v714 = sub_1B0398F5C;
  v715 = sub_1B0398F5C;
  v716 = sub_1B0399260;
  v717 = sub_1B0398F5C;
  v718 = sub_1B0398F5C;
  v719 = sub_1B039BCEC;
  v720 = sub_1B074E050;
  v721 = sub_1B0394C24;
  v722 = sub_1B074DFFC;
  v723 = sub_1B039BA88;
  v724 = sub_1B0394C24;
  v725 = sub_1B039BBA0;
  v726 = sub_1B039BC08;
  v727 = sub_1B06BA324;
  v728 = sub_1B074E0E4;
  v729 = sub_1B039BCF8;
  v730 = sub_1B07F12A4;
  v731 = sub_1B03B0DF8;
  v732 = sub_1B07F1308;
  v733 = sub_1B03B0DF8;
  v734 = sub_1B0398F5C;
  v735 = sub_1B0398F5C;
  v736 = sub_1B0399178;
  v737 = sub_1B0398F5C;
  v738 = sub_1B0398F5C;
  v739 = sub_1B039BA94;
  v740 = sub_1B0398F5C;
  v741 = sub_1B0398F5C;
  v742 = sub_1B0399178;
  v743 = sub_1B0398F5C;
  v744 = sub_1B0398F5C;
  v745 = sub_1B03991EC;
  v746 = sub_1B0398F5C;
  v747 = sub_1B0398F5C;
  v748 = sub_1B03993BC;
  v749 = sub_1B0398F5C;
  v750 = sub_1B0398F5C;
  v751 = sub_1B039BCEC;
  v752 = sub_1B0398F5C;
  v753 = sub_1B0398F5C;
  v754 = sub_1B0399260;
  v755 = sub_1B0398F5C;
  v756 = sub_1B0398F5C;
  v757 = sub_1B0399260;
  v809 = 0;
  v810 = 0;
  v808 = 0;
  v807 = 0;
  v758 = 0;
  v759 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v760 = (*(*(v759 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v759);
  v761 = v346 - v760;
  v767 = 0;
  v762 = *(type metadata accessor for MissingBodyDataRequest(0) - 8);
  v763 = v762;
  v764 = *(v762 + 64);
  v765 = (v764 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v767);
  v766 = v346 - v765;
  v768 = _s6LoggerVMa_1(v3);
  v769 = (*(*(v768 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v767);
  v770 = v346 - v769;
  v771 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v772 = v346 - v771;
  v773 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v774 = v346 - v773;
  v775 = sub_1B0E439A8();
  v776 = *(v775 - 8);
  v777 = v775 - 8;
  v778 = (*(v776 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v775);
  v779 = v346 - v778;
  v780 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v346 - v778);
  v781 = v346 - v780;
  v782 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v346 - v780);
  v783 = v346 - v782;
  v789 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v788 = (*(*(v789 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v787);
  v790 = v346 - v788;
  v809 = v10;
  v810 = v11;
  v808 = v12;
  v807 = v13;
  sub_1B03D08AC(v13, v346 - v788);
  v791 = MessageIdentifierSet.isEmpty.getter();
  sub_1B03D09B8(v790);
  if (v791)
  {
    (*(v776 + 16))(v783, v786, v775);
    sub_1B074B69C(v786, v774);
    sub_1B074B69C(v774, v772);
    sub_1B074E41C(v774, v770);
    v14 = (v772 + *(v768 + 20));
    v562 = *v14;
    v563 = *(v14 + 1);
    v564 = *(v14 + 1);
    v565 = *(v14 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v772);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v561 = 36;
    v585 = 7;
    v15 = swift_allocObject();
    v16 = v563;
    v17 = v564;
    v18 = v565;
    v570 = v15;
    *(v15 + 16) = v562;
    *(v15 + 20) = v16;
    *(v15 + 24) = v17;
    *(v15 + 32) = v18;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = swift_allocObject();
    v20 = v563;
    v21 = v564;
    v22 = v565;
    v560 = v19;
    *(v19 + 16) = v562;
    *(v19 + 20) = v20;
    *(v19 + 24) = v21;
    *(v19 + 32) = v22;

    v584 = 32;
    v23 = swift_allocObject();
    v24 = v560;
    v575 = v23;
    *(v23 + 16) = v720;
    *(v23 + 24) = v24;
    sub_1B0394868();
    sub_1B0394868();

    v25 = swift_allocObject();
    v26 = v563;
    v27 = v564;
    v28 = v565;
    v29 = v25;
    v30 = v770;
    v578 = v29;
    *(v29 + 16) = v562;
    *(v29 + 20) = v26;
    *(v29 + 24) = v27;
    *(v29 + 32) = v28;
    sub_1B074B764(v30);
    sub_1B07F1114(v787, v766);
    v567 = *(v763 + 80);
    v566 = (v567 + 16) & ~v567;
    v580 = swift_allocObject();
    sub_1B07F11DC(v766, v580 + v566);
    sub_1B07F1114(v787, v766);
    v568 = (v567 + 16) & ~v567;
    v586 = swift_allocObject();
    sub_1B07F11DC(v766, v586 + v568);
    v616 = sub_1B0E43988();
    v617 = sub_1B0E45908();
    v582 = 17;
    v589 = swift_allocObject();
    v572 = 16;
    *(v589 + 16) = 16;
    v590 = swift_allocObject();
    v574 = 4;
    *(v590 + 16) = 4;
    v31 = swift_allocObject();
    v569 = v31;
    *(v31 + 16) = v621;
    *(v31 + 24) = 0;
    v32 = swift_allocObject();
    v33 = v569;
    v591 = v32;
    *(v32 + 16) = v721;
    *(v32 + 24) = v33;
    v592 = swift_allocObject();
    *(v592 + 16) = 0;
    v593 = swift_allocObject();
    *(v593 + 16) = 1;
    v34 = swift_allocObject();
    v35 = v570;
    v571 = v34;
    *(v34 + 16) = v722;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v571;
    v594 = v36;
    *(v36 + 16) = v723;
    *(v36 + 24) = v37;
    v595 = swift_allocObject();
    *(v595 + 16) = v572;
    v596 = swift_allocObject();
    *(v596 + 16) = v574;
    v38 = swift_allocObject();
    v573 = v38;
    *(v38 + 16) = v625;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    v40 = v573;
    v597 = v39;
    *(v39 + 16) = v724;
    *(v39 + 24) = v40;
    v598 = swift_allocObject();
    *(v598 + 16) = 0;
    v599 = swift_allocObject();
    *(v599 + 16) = v574;
    v41 = swift_allocObject();
    v42 = v575;
    v576 = v41;
    *(v41 + 16) = v725;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v576;
    v600 = v43;
    *(v43 + 16) = v726;
    *(v43 + 24) = v44;
    v601 = swift_allocObject();
    *(v601 + 16) = 112;
    v602 = swift_allocObject();
    v583 = 8;
    *(v602 + 16) = 8;
    v588 = 24;
    v577 = swift_allocObject();
    *(v577 + 16) = v629;
    v45 = swift_allocObject();
    v46 = v577;
    v603 = v45;
    *(v45 + 16) = v727;
    *(v45 + 24) = v46;
    v604 = swift_allocObject();
    *(v604 + 16) = 37;
    v605 = swift_allocObject();
    *(v605 + 16) = v583;
    v47 = swift_allocObject();
    v48 = v578;
    v579 = v47;
    *(v47 + 16) = v728;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v579;
    v606 = v49;
    *(v49 + 16) = v729;
    *(v49 + 24) = v50;
    v607 = swift_allocObject();
    *(v607 + 16) = 0;
    v608 = swift_allocObject();
    *(v608 + 16) = v583;
    v51 = swift_allocObject();
    v52 = v580;
    v581 = v51;
    *(v51 + 16) = v730;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v581;
    v609 = v53;
    *(v53 + 16) = v731;
    *(v53 + 24) = v54;
    v610 = swift_allocObject();
    *(v610 + 16) = 0;
    v611 = swift_allocObject();
    *(v611 + 16) = v583;
    v55 = swift_allocObject();
    v56 = v586;
    v587 = v55;
    *(v55 + 16) = v732;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v58 = v587;
    v613 = v57;
    *(v57 + 16) = v733;
    *(v57 + 24) = v58;
    v615 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v612 = sub_1B0E46A48();
    v614 = v59;

    v60 = v589;
    v61 = v614;
    *v614 = v734;
    v61[1] = v60;

    v62 = v590;
    v63 = v614;
    v614[2] = v735;
    v63[3] = v62;

    v64 = v591;
    v65 = v614;
    v614[4] = v736;
    v65[5] = v64;

    v66 = v592;
    v67 = v614;
    v614[6] = v737;
    v67[7] = v66;

    v68 = v593;
    v69 = v614;
    v614[8] = v738;
    v69[9] = v68;

    v70 = v594;
    v71 = v614;
    v614[10] = v739;
    v71[11] = v70;

    v72 = v595;
    v73 = v614;
    v614[12] = v740;
    v73[13] = v72;

    v74 = v596;
    v75 = v614;
    v614[14] = v741;
    v75[15] = v74;

    v76 = v597;
    v77 = v614;
    v614[16] = v742;
    v77[17] = v76;

    v78 = v598;
    v79 = v614;
    v614[18] = v743;
    v79[19] = v78;

    v80 = v599;
    v81 = v614;
    v614[20] = v744;
    v81[21] = v80;

    v82 = v600;
    v83 = v614;
    v614[22] = v745;
    v83[23] = v82;

    v84 = v601;
    v85 = v614;
    v614[24] = v746;
    v85[25] = v84;

    v86 = v602;
    v87 = v614;
    v614[26] = v747;
    v87[27] = v86;

    v88 = v603;
    v89 = v614;
    v614[28] = v748;
    v89[29] = v88;

    v90 = v604;
    v91 = v614;
    v614[30] = v749;
    v91[31] = v90;

    v92 = v605;
    v93 = v614;
    v614[32] = v750;
    v93[33] = v92;

    v94 = v606;
    v95 = v614;
    v614[34] = v751;
    v95[35] = v94;

    v96 = v607;
    v97 = v614;
    v614[36] = v752;
    v97[37] = v96;

    v98 = v608;
    v99 = v614;
    v614[38] = v753;
    v99[39] = v98;

    v100 = v609;
    v101 = v614;
    v614[40] = v754;
    v101[41] = v100;

    v102 = v610;
    v103 = v614;
    v614[42] = v755;
    v103[43] = v102;

    v104 = v611;
    v105 = v614;
    v614[44] = v756;
    v105[45] = v104;

    v106 = v613;
    v107 = v614;
    v614[46] = v757;
    v107[47] = v106;
    sub_1B0394964();

    if (os_log_type_enabled(v616, v617))
    {
      v108 = v758;
      v553 = sub_1B0E45D78();
      v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v554 = sub_1B03949A8(0, v552, v552);
      v555 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v556 = &v796;
      v796 = v553;
      v557 = &v795;
      v795 = v554;
      v558 = &v794;
      v794 = v555;
      sub_1B0394A48(3, &v796);
      sub_1B0394A48(8, v556);
      v792 = v734;
      v793 = v589;
      sub_1B03949FC(&v792, v556, v557, v558);
      v559 = v108;
      if (v108)
      {

        __break(1u);
      }

      else
      {
        v792 = v735;
        v793 = v590;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v551 = 0;
        v792 = v736;
        v793 = v591;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v550 = 0;
        v792 = v737;
        v793 = v592;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v549 = 0;
        v792 = v738;
        v793 = v593;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v548 = 0;
        v792 = v739;
        v793 = v594;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v547 = 0;
        v792 = v740;
        v793 = v595;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v546 = 0;
        v792 = v741;
        v793 = v596;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v545 = 0;
        v792 = v742;
        v793 = v597;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v544 = 0;
        v792 = v743;
        v793 = v598;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v543 = 0;
        v792 = v744;
        v793 = v599;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v542 = 0;
        v792 = v745;
        v793 = v600;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v541 = 0;
        v792 = v746;
        v793 = v601;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v540 = 0;
        v792 = v747;
        v793 = v602;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v539 = 0;
        v792 = v748;
        v793 = v603;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v538 = 0;
        v792 = v749;
        v793 = v604;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v537 = 0;
        v792 = v750;
        v793 = v605;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v536 = 0;
        v792 = v751;
        v793 = v606;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v535 = 0;
        v792 = v752;
        v793 = v607;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v534 = 0;
        v792 = v753;
        v793 = v608;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v533 = 0;
        v792 = v754;
        v793 = v609;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v532 = 0;
        v792 = v755;
        v793 = v610;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v531 = 0;
        v792 = v756;
        v793 = v611;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        v530 = 0;
        v792 = v757;
        v793 = v613;
        sub_1B03949FC(&v792, &v796, &v795, &v794);
        _os_log_impl(&dword_1B0389000, v616, v617, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Looking for %ld fragmented messages (in latest %ld).", v553, 0x3Fu);
        sub_1B03998A8(v554, 0, v552);
        sub_1B03998A8(v555, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v616);
    return (*(v776 + 8))(v783, v775);
  }

  else
  {
    sub_1B03D08AC(v787, v790);
    MessageIdentifierSet.ranges.getter(v761);
    sub_1B03D09B8(v790);
    sub_1B07D76A4();
    v529 = sub_1B0E45718();
    sub_1B07D772C(v761);
    if (v529 >= 30)
    {
      (*(v776 + 16))(v779, v786, v775);
      sub_1B074B69C(v786, v774);
      sub_1B074B69C(v774, v772);
      sub_1B074E41C(v774, v770);
      v217 = (v772 + *(v768 + 20));
      v357 = *v217;
      v358 = *(v217 + 1);
      v359 = *(v217 + 1);
      v360 = *(v217 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v772);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v356 = 36;
      v391 = 7;
      v218 = swift_allocObject();
      v219 = v358;
      v220 = v359;
      v221 = v360;
      v370 = v218;
      *(v218 + 16) = v357;
      *(v218 + 20) = v219;
      *(v218 + 24) = v220;
      *(v218 + 32) = v221;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v222 = swift_allocObject();
      v223 = v358;
      v224 = v359;
      v225 = v360;
      v355 = v222;
      *(v222 + 16) = v357;
      *(v222 + 20) = v223;
      *(v222 + 24) = v224;
      *(v222 + 32) = v225;

      v390 = 32;
      v226 = swift_allocObject();
      v227 = v355;
      v374 = v226;
      *(v226 + 16) = v618;
      *(v226 + 24) = v227;
      sub_1B0394868();
      sub_1B0394868();

      v228 = swift_allocObject();
      v229 = v358;
      v230 = v359;
      v231 = v360;
      v232 = v228;
      v233 = v770;
      v377 = v232;
      *(v232 + 16) = v357;
      *(v232 + 20) = v229;
      *(v232 + 24) = v230;
      *(v232 + 32) = v231;
      sub_1B074B764(v233);
      sub_1B07F1114(v787, v766);
      v366 = *(v763 + 80);
      v361 = (v366 + 16) & ~v366;
      v379 = swift_allocObject();
      sub_1B07F11DC(v766, v379 + v361);
      sub_1B07F1114(v787, v766);
      v362 = (v366 + 16) & ~v366;
      v381 = swift_allocObject();
      sub_1B07F11DC(v766, v381 + v362);
      sub_1B07F1114(v787, v766);
      v363 = (v366 + 16) & ~v366;
      v384 = swift_allocObject();
      sub_1B07F11DC(v766, v384 + v363);
      sub_1B07F1114(v787, v766);
      v364 = (v366 + 16) & ~v366;
      v365 = swift_allocObject();
      sub_1B07F11DC(v766, v365 + v364);

      v234 = swift_allocObject();
      v235 = v365;
      v386 = v234;
      *(v234 + 16) = v619;
      *(v234 + 24) = v235;

      sub_1B07F1114(v787, v766);
      v367 = (v366 + 16) & ~v366;
      v368 = swift_allocObject();
      sub_1B07F11DC(v766, v368 + v367);

      v236 = swift_allocObject();
      v237 = v368;
      v392 = v236;
      *(v236 + 16) = v620;
      *(v236 + 24) = v237;

      v430 = sub_1B0E43988();
      v431 = sub_1B0E45908();
      v388 = 17;
      v394 = swift_allocObject();
      v372 = 16;
      *(v394 + 16) = 16;
      v395 = swift_allocObject();
      v389 = 4;
      *(v395 + 16) = 4;
      v238 = swift_allocObject();
      v369 = v238;
      *(v238 + 16) = v621;
      *(v238 + 24) = 0;
      v239 = swift_allocObject();
      v240 = v369;
      v396 = v239;
      *(v239 + 16) = v622;
      *(v239 + 24) = v240;
      v397 = swift_allocObject();
      *(v397 + 16) = 0;
      v398 = swift_allocObject();
      *(v398 + 16) = 1;
      v241 = swift_allocObject();
      v242 = v370;
      v371 = v241;
      *(v241 + 16) = v623;
      *(v241 + 24) = v242;
      v243 = swift_allocObject();
      v244 = v371;
      v399 = v243;
      *(v243 + 16) = v624;
      *(v243 + 24) = v244;
      v400 = swift_allocObject();
      *(v400 + 16) = v372;
      v401 = swift_allocObject();
      *(v401 + 16) = v389;
      v245 = swift_allocObject();
      v373 = v245;
      *(v245 + 16) = v625;
      *(v245 + 24) = 0;
      v246 = swift_allocObject();
      v247 = v373;
      v402 = v246;
      *(v246 + 16) = v626;
      *(v246 + 24) = v247;
      v403 = swift_allocObject();
      *(v403 + 16) = 0;
      v404 = swift_allocObject();
      *(v404 + 16) = v389;
      v248 = swift_allocObject();
      v249 = v374;
      v375 = v248;
      *(v248 + 16) = v627;
      *(v248 + 24) = v249;
      v250 = swift_allocObject();
      v251 = v375;
      v405 = v250;
      *(v250 + 16) = v628;
      *(v250 + 24) = v251;
      v406 = swift_allocObject();
      *(v406 + 16) = 112;
      v407 = swift_allocObject();
      v383 = 8;
      *(v407 + 16) = 8;
      v376 = swift_allocObject();
      *(v376 + 16) = v629;
      v252 = swift_allocObject();
      v253 = v376;
      v408 = v252;
      *(v252 + 16) = v630;
      *(v252 + 24) = v253;
      v409 = swift_allocObject();
      *(v409 + 16) = 37;
      v410 = swift_allocObject();
      *(v410 + 16) = v383;
      v254 = swift_allocObject();
      v255 = v377;
      v378 = v254;
      *(v254 + 16) = v631;
      *(v254 + 24) = v255;
      v256 = swift_allocObject();
      v257 = v378;
      v411 = v256;
      *(v256 + 16) = v632;
      *(v256 + 24) = v257;
      v412 = swift_allocObject();
      *(v412 + 16) = 0;
      v413 = swift_allocObject();
      *(v413 + 16) = v383;
      v258 = swift_allocObject();
      v259 = v379;
      v380 = v258;
      *(v258 + 16) = v633;
      *(v258 + 24) = v259;
      v260 = swift_allocObject();
      v261 = v380;
      v414 = v260;
      *(v260 + 16) = v634;
      *(v260 + 24) = v261;
      v415 = swift_allocObject();
      *(v415 + 16) = 0;
      v416 = swift_allocObject();
      *(v416 + 16) = v383;
      v262 = swift_allocObject();
      v263 = v381;
      v382 = v262;
      *(v262 + 16) = v635;
      *(v262 + 24) = v263;
      v264 = swift_allocObject();
      v265 = v382;
      v417 = v264;
      *(v264 + 16) = v636;
      *(v264 + 24) = v265;
      v418 = swift_allocObject();
      *(v418 + 16) = 0;
      v419 = swift_allocObject();
      *(v419 + 16) = v383;
      v266 = swift_allocObject();
      v267 = v384;
      v385 = v266;
      *(v266 + 16) = v637;
      *(v266 + 24) = v267;
      v268 = swift_allocObject();
      v269 = v385;
      v420 = v268;
      *(v268 + 16) = v638;
      *(v268 + 24) = v269;
      v421 = swift_allocObject();
      *(v421 + 16) = 0;
      v422 = swift_allocObject();
      *(v422 + 16) = v389;
      v270 = swift_allocObject();
      v271 = v386;
      v387 = v270;
      *(v270 + 16) = v639;
      *(v270 + 24) = v271;
      v272 = swift_allocObject();
      v273 = v387;
      v423 = v272;
      *(v272 + 16) = v640;
      *(v272 + 24) = v273;
      v424 = swift_allocObject();
      *(v424 + 16) = 0;
      v425 = swift_allocObject();
      *(v425 + 16) = v389;
      v274 = swift_allocObject();
      v275 = v392;
      v393 = v274;
      *(v274 + 16) = v641;
      *(v274 + 24) = v275;
      v276 = swift_allocObject();
      v277 = v393;
      v427 = v276;
      *(v276 + 16) = v642;
      *(v276 + 24) = v277;
      v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v426 = sub_1B0E46A48();
      v428 = v278;

      v279 = v394;
      v280 = v428;
      *v428 = v643;
      v280[1] = v279;

      v281 = v395;
      v282 = v428;
      v428[2] = v644;
      v282[3] = v281;

      v283 = v396;
      v284 = v428;
      v428[4] = v645;
      v284[5] = v283;

      v285 = v397;
      v286 = v428;
      v428[6] = v646;
      v286[7] = v285;

      v287 = v398;
      v288 = v428;
      v428[8] = v647;
      v288[9] = v287;

      v289 = v399;
      v290 = v428;
      v428[10] = v648;
      v290[11] = v289;

      v291 = v400;
      v292 = v428;
      v428[12] = v649;
      v292[13] = v291;

      v293 = v401;
      v294 = v428;
      v428[14] = v650;
      v294[15] = v293;

      v295 = v402;
      v296 = v428;
      v428[16] = v651;
      v296[17] = v295;

      v297 = v403;
      v298 = v428;
      v428[18] = v652;
      v298[19] = v297;

      v299 = v404;
      v300 = v428;
      v428[20] = v653;
      v300[21] = v299;

      v301 = v405;
      v302 = v428;
      v428[22] = v654;
      v302[23] = v301;

      v303 = v406;
      v304 = v428;
      v428[24] = v655;
      v304[25] = v303;

      v305 = v407;
      v306 = v428;
      v428[26] = v656;
      v306[27] = v305;

      v307 = v408;
      v308 = v428;
      v428[28] = v657;
      v308[29] = v307;

      v309 = v409;
      v310 = v428;
      v428[30] = v658;
      v310[31] = v309;

      v311 = v410;
      v312 = v428;
      v428[32] = v659;
      v312[33] = v311;

      v313 = v411;
      v314 = v428;
      v428[34] = v660;
      v314[35] = v313;

      v315 = v412;
      v316 = v428;
      v428[36] = v661;
      v316[37] = v315;

      v317 = v413;
      v318 = v428;
      v428[38] = v662;
      v318[39] = v317;

      v319 = v414;
      v320 = v428;
      v428[40] = v663;
      v320[41] = v319;

      v321 = v415;
      v322 = v428;
      v428[42] = v664;
      v322[43] = v321;

      v323 = v416;
      v324 = v428;
      v428[44] = v665;
      v324[45] = v323;

      v325 = v417;
      v326 = v428;
      v428[46] = v666;
      v326[47] = v325;

      v327 = v418;
      v328 = v428;
      v428[48] = v667;
      v328[49] = v327;

      v329 = v419;
      v330 = v428;
      v428[50] = v668;
      v330[51] = v329;

      v331 = v420;
      v332 = v428;
      v428[52] = v669;
      v332[53] = v331;

      v333 = v421;
      v334 = v428;
      v428[54] = v670;
      v334[55] = v333;

      v335 = v422;
      v336 = v428;
      v428[56] = v671;
      v336[57] = v335;

      v337 = v423;
      v338 = v428;
      v428[58] = v672;
      v338[59] = v337;

      v339 = v424;
      v340 = v428;
      v428[60] = v673;
      v340[61] = v339;

      v341 = v425;
      v342 = v428;
      v428[62] = v674;
      v342[63] = v341;

      v343 = v427;
      v344 = v428;
      v428[64] = v675;
      v344[65] = v343;
      sub_1B0394964();

      if (os_log_type_enabled(v430, v431))
      {
        v345 = v758;
        v348 = sub_1B0E45D78();
        v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v349 = sub_1B03949A8(0, v347, v347);
        v350 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v351 = &v806;
        v806 = v348;
        v352 = &v805;
        v805 = v349;
        v353 = &v804;
        v804 = v350;
        sub_1B0394A48(3, &v806);
        sub_1B0394A48(11, v351);
        v802 = v643;
        v803 = v394;
        sub_1B03949FC(&v802, v351, v352, v353);
        v354 = v345;
        if (v345)
        {

          __break(1u);
        }

        else
        {
          v802 = v644;
          v803 = v395;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[31] = 0;
          v802 = v645;
          v803 = v396;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[30] = 0;
          v802 = v646;
          v803 = v397;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[29] = 0;
          v802 = v647;
          v803 = v398;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[28] = 0;
          v802 = v648;
          v803 = v399;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[27] = 0;
          v802 = v649;
          v803 = v400;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[26] = 0;
          v802 = v650;
          v803 = v401;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[25] = 0;
          v802 = v651;
          v803 = v402;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[24] = 0;
          v802 = v652;
          v803 = v403;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[23] = 0;
          v802 = v653;
          v803 = v404;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[22] = 0;
          v802 = v654;
          v803 = v405;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[21] = 0;
          v802 = v655;
          v803 = v406;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[20] = 0;
          v802 = v656;
          v803 = v407;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[19] = 0;
          v802 = v657;
          v803 = v408;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[18] = 0;
          v802 = v658;
          v803 = v409;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[17] = 0;
          v802 = v659;
          v803 = v410;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[16] = 0;
          v802 = v660;
          v803 = v411;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[15] = 0;
          v802 = v661;
          v803 = v412;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[14] = 0;
          v802 = v662;
          v803 = v413;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[13] = 0;
          v802 = v663;
          v803 = v414;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[12] = 0;
          v802 = v664;
          v803 = v415;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[11] = 0;
          v802 = v665;
          v803 = v416;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[10] = 0;
          v802 = v666;
          v803 = v417;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[9] = 0;
          v802 = v667;
          v803 = v418;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[8] = 0;
          v802 = v668;
          v803 = v419;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[7] = 0;
          v802 = v669;
          v803 = v420;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[6] = 0;
          v802 = v670;
          v803 = v421;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[5] = 0;
          v802 = v671;
          v803 = v422;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[4] = 0;
          v802 = v672;
          v803 = v423;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[3] = 0;
          v802 = v673;
          v803 = v424;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[2] = 0;
          v802 = v674;
          v803 = v425;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          v346[1] = 0;
          v802 = v675;
          v803 = v427;
          sub_1B03949FC(&v802, &v806, &v805, &v804);
          _os_log_impl(&dword_1B0389000, v430, v431, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Looking for %ld fragmented messages (in latest %ld). Excluding %ld UIDs (min %u, max %u", v348, 0x55u);
          sub_1B03998A8(v349, 0, v347);
          sub_1B03998A8(v350, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v430);
      return (*(v776 + 8))(v779, v775);
    }

    else
    {
      (*(v776 + 16))(v781, v786, v775);
      sub_1B074B69C(v786, v774);
      sub_1B074B69C(v774, v772);
      sub_1B074E41C(v774, v770);
      v110 = (v772 + *(v768 + 20));
      v467 = *v110;
      v468 = *(v110 + 1);
      v469 = *(v110 + 1);
      v470 = *(v110 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v772);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v466 = 36;
      v494 = 7;
      v111 = swift_allocObject();
      v112 = v468;
      v113 = v469;
      v114 = v470;
      v477 = v111;
      *(v111 + 16) = v467;
      *(v111 + 20) = v112;
      *(v111 + 24) = v113;
      *(v111 + 32) = v114;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v115 = swift_allocObject();
      v116 = v468;
      v117 = v469;
      v118 = v470;
      v465 = v115;
      *(v115 + 16) = v467;
      *(v115 + 20) = v116;
      *(v115 + 24) = v117;
      *(v115 + 32) = v118;

      v493 = 32;
      v119 = swift_allocObject();
      v120 = v465;
      v482 = v119;
      *(v119 + 16) = v676;
      *(v119 + 24) = v120;
      sub_1B0394868();
      sub_1B0394868();

      v121 = swift_allocObject();
      v122 = v468;
      v123 = v469;
      v124 = v470;
      v125 = v121;
      v126 = v770;
      v485 = v125;
      *(v125 + 16) = v467;
      *(v125 + 20) = v122;
      *(v125 + 24) = v123;
      *(v125 + 32) = v124;
      sub_1B074B764(v126);
      sub_1B07F1114(v787, v766);
      v473 = *(v763 + 80);
      v471 = (v473 + 16) & ~v473;
      v487 = swift_allocObject();
      sub_1B07F11DC(v766, v487 + v471);
      sub_1B07F1114(v787, v766);
      v472 = (v473 + 16) & ~v473;
      v489 = swift_allocObject();
      sub_1B07F11DC(v766, v489 + v472);
      sub_1B07F1114(v787, v766);
      v474 = (v473 + 16) & ~v473;
      v475 = swift_allocObject();
      sub_1B07F11DC(v766, v475 + v474);

      v127 = swift_allocObject();
      v128 = v475;
      v495 = v127;
      *(v127 + 16) = v677;
      *(v127 + 24) = v128;

      v527 = sub_1B0E43988();
      v528 = sub_1B0E45908();
      v491 = 17;
      v497 = swift_allocObject();
      v479 = 16;
      *(v497 + 16) = 16;
      v498 = swift_allocObject();
      v481 = 4;
      *(v498 + 16) = 4;
      v129 = swift_allocObject();
      v476 = v129;
      *(v129 + 16) = v621;
      *(v129 + 24) = 0;
      v130 = swift_allocObject();
      v131 = v476;
      v499 = v130;
      *(v130 + 16) = v678;
      *(v130 + 24) = v131;
      v500 = swift_allocObject();
      *(v500 + 16) = 0;
      v501 = swift_allocObject();
      *(v501 + 16) = 1;
      v132 = swift_allocObject();
      v133 = v477;
      v478 = v132;
      *(v132 + 16) = v679;
      *(v132 + 24) = v133;
      v134 = swift_allocObject();
      v135 = v478;
      v502 = v134;
      *(v134 + 16) = v680;
      *(v134 + 24) = v135;
      v503 = swift_allocObject();
      *(v503 + 16) = v479;
      v504 = swift_allocObject();
      *(v504 + 16) = v481;
      v136 = swift_allocObject();
      v480 = v136;
      *(v136 + 16) = v625;
      *(v136 + 24) = 0;
      v137 = swift_allocObject();
      v138 = v480;
      v505 = v137;
      *(v137 + 16) = v681;
      *(v137 + 24) = v138;
      v506 = swift_allocObject();
      *(v506 + 16) = 0;
      v507 = swift_allocObject();
      *(v507 + 16) = v481;
      v139 = swift_allocObject();
      v140 = v482;
      v483 = v139;
      *(v139 + 16) = v682;
      *(v139 + 24) = v140;
      v141 = swift_allocObject();
      v142 = v483;
      v508 = v141;
      *(v141 + 16) = v683;
      *(v141 + 24) = v142;
      v509 = swift_allocObject();
      *(v509 + 16) = 112;
      v510 = swift_allocObject();
      v492 = 8;
      *(v510 + 16) = 8;
      v484 = swift_allocObject();
      *(v484 + 16) = v629;
      v143 = swift_allocObject();
      v144 = v484;
      v511 = v143;
      *(v143 + 16) = v684;
      *(v143 + 24) = v144;
      v512 = swift_allocObject();
      *(v512 + 16) = 37;
      v513 = swift_allocObject();
      *(v513 + 16) = v492;
      v145 = swift_allocObject();
      v146 = v485;
      v486 = v145;
      *(v145 + 16) = v685;
      *(v145 + 24) = v146;
      v147 = swift_allocObject();
      v148 = v486;
      v514 = v147;
      *(v147 + 16) = v686;
      *(v147 + 24) = v148;
      v515 = swift_allocObject();
      *(v515 + 16) = 0;
      v516 = swift_allocObject();
      *(v516 + 16) = v492;
      v149 = swift_allocObject();
      v150 = v487;
      v488 = v149;
      *(v149 + 16) = v687;
      *(v149 + 24) = v150;
      v151 = swift_allocObject();
      v152 = v488;
      v517 = v151;
      *(v151 + 16) = v688;
      *(v151 + 24) = v152;
      v518 = swift_allocObject();
      *(v518 + 16) = 0;
      v519 = swift_allocObject();
      *(v519 + 16) = v492;
      v153 = swift_allocObject();
      v154 = v489;
      v490 = v153;
      *(v153 + 16) = v689;
      *(v153 + 24) = v154;
      v155 = swift_allocObject();
      v156 = v490;
      v520 = v155;
      *(v155 + 16) = v690;
      *(v155 + 24) = v156;
      v521 = swift_allocObject();
      *(v521 + 16) = 34;
      v522 = swift_allocObject();
      *(v522 + 16) = v492;
      v157 = swift_allocObject();
      v158 = v495;
      v496 = v157;
      *(v157 + 16) = v691;
      *(v157 + 24) = v158;
      v159 = swift_allocObject();
      v160 = v496;
      v524 = v159;
      *(v159 + 16) = v692;
      *(v159 + 24) = v160;
      v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v523 = sub_1B0E46A48();
      v525 = v161;

      v162 = v497;
      v163 = v525;
      *v525 = v693;
      v163[1] = v162;

      v164 = v498;
      v165 = v525;
      v525[2] = v694;
      v165[3] = v164;

      v166 = v499;
      v167 = v525;
      v525[4] = v695;
      v167[5] = v166;

      v168 = v500;
      v169 = v525;
      v525[6] = v696;
      v169[7] = v168;

      v170 = v501;
      v171 = v525;
      v525[8] = v697;
      v171[9] = v170;

      v172 = v502;
      v173 = v525;
      v525[10] = v698;
      v173[11] = v172;

      v174 = v503;
      v175 = v525;
      v525[12] = v699;
      v175[13] = v174;

      v176 = v504;
      v177 = v525;
      v525[14] = v700;
      v177[15] = v176;

      v178 = v505;
      v179 = v525;
      v525[16] = v701;
      v179[17] = v178;

      v180 = v506;
      v181 = v525;
      v525[18] = v702;
      v181[19] = v180;

      v182 = v507;
      v183 = v525;
      v525[20] = v703;
      v183[21] = v182;

      v184 = v508;
      v185 = v525;
      v525[22] = v704;
      v185[23] = v184;

      v186 = v509;
      v187 = v525;
      v525[24] = v705;
      v187[25] = v186;

      v188 = v510;
      v189 = v525;
      v525[26] = v706;
      v189[27] = v188;

      v190 = v511;
      v191 = v525;
      v525[28] = v707;
      v191[29] = v190;

      v192 = v512;
      v193 = v525;
      v525[30] = v708;
      v193[31] = v192;

      v194 = v513;
      v195 = v525;
      v525[32] = v709;
      v195[33] = v194;

      v196 = v514;
      v197 = v525;
      v525[34] = v710;
      v197[35] = v196;

      v198 = v515;
      v199 = v525;
      v525[36] = v711;
      v199[37] = v198;

      v200 = v516;
      v201 = v525;
      v525[38] = v712;
      v201[39] = v200;

      v202 = v517;
      v203 = v525;
      v525[40] = v713;
      v203[41] = v202;

      v204 = v518;
      v205 = v525;
      v525[42] = v714;
      v205[43] = v204;

      v206 = v519;
      v207 = v525;
      v525[44] = v715;
      v207[45] = v206;

      v208 = v520;
      v209 = v525;
      v525[46] = v716;
      v209[47] = v208;

      v210 = v521;
      v211 = v525;
      v525[48] = v717;
      v211[49] = v210;

      v212 = v522;
      v213 = v525;
      v525[50] = v718;
      v213[51] = v212;

      v214 = v524;
      v215 = v525;
      v525[52] = v719;
      v215[53] = v214;
      sub_1B0394964();

      if (os_log_type_enabled(v527, v528))
      {
        v216 = v758;
        v458 = sub_1B0E45D78();
        v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v459 = sub_1B03949A8(0, v457, v457);
        v460 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v461 = &v801;
        v801 = v458;
        v462 = &v800;
        v800 = v459;
        v463 = &v799;
        v799 = v460;
        sub_1B0394A48(3, &v801);
        sub_1B0394A48(9, v461);
        v797 = v693;
        v798 = v497;
        sub_1B03949FC(&v797, v461, v462, v463);
        v464 = v216;
        if (v216)
        {

          __break(1u);
        }

        else
        {
          v797 = v694;
          v798 = v498;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v456 = 0;
          v797 = v695;
          v798 = v499;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v455 = 0;
          v797 = v696;
          v798 = v500;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v454 = 0;
          v797 = v697;
          v798 = v501;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v453 = 0;
          v797 = v698;
          v798 = v502;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v452 = 0;
          v797 = v699;
          v798 = v503;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v451 = 0;
          v797 = v700;
          v798 = v504;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v450 = 0;
          v797 = v701;
          v798 = v505;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v449 = 0;
          v797 = v702;
          v798 = v506;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v448 = 0;
          v797 = v703;
          v798 = v507;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v447 = 0;
          v797 = v704;
          v798 = v508;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v446 = 0;
          v797 = v705;
          v798 = v509;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v445 = 0;
          v797 = v706;
          v798 = v510;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v444 = 0;
          v797 = v707;
          v798 = v511;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v443 = 0;
          v797 = v708;
          v798 = v512;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v442 = 0;
          v797 = v709;
          v798 = v513;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v441 = 0;
          v797 = v710;
          v798 = v514;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v440 = 0;
          v797 = v711;
          v798 = v515;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v439 = 0;
          v797 = v712;
          v798 = v516;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v438 = 0;
          v797 = v713;
          v798 = v517;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v437 = 0;
          v797 = v714;
          v798 = v518;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v436 = 0;
          v797 = v715;
          v798 = v519;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v435 = 0;
          v797 = v716;
          v798 = v520;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v434 = 0;
          v797 = v717;
          v798 = v521;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v433 = 0;
          v797 = v718;
          v798 = v522;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          v432 = 0;
          v797 = v719;
          v798 = v524;
          sub_1B03949FC(&v797, &v801, &v800, &v799);
          _os_log_impl(&dword_1B0389000, v527, v528, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Looking for %ld fragmented messages (in latest %ld). Excluding UIDs %{public}s", v458, 0x49u);
          sub_1B03998A8(v459, 0, v457);
          sub_1B03998A8(v460, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v527);
      return (*(v776 + 8))(v781, v775);
    }
  }
}

int *sub_1B07DEE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v46 = a3;
  v53 = a1;
  v52 = a2;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v60 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v48 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v18 - v48;
  v50 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v18 - v48);
  v51 = &v18 - v50;
  v54 = sub_1B0E43308();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v53);
  v58 = &v18 - v57;
  v65 = v7;
  v64 = v8;
  v63 = v3;
  v59 = [v7 URLString];
  if (v59)
  {
    v45 = v59;
    v40 = v59;
    v41 = sub_1B0E44AD8();
    v42 = v9;
    MEMORY[0x1E69E5920](v40);
    v43 = v41;
    v44 = v42;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v38 = v44;
  v39 = v43;
  if (v44)
  {
    v36 = v39;
    v37 = v38;
    v33 = v38;
    v34 = sub_1B0E44AC8();

    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v10 = v58;
  v30 = v35;
  sub_1B03D08AC(v52, v51);
  sub_1B0A62478(v51, v10);
  v31 = sub_1B0E43258();
  (*(v55 + 8))(v58, v54);
  v32 = type metadata accessor for MissingBodyDataRequest(0);
  v11 = v52 + v32[5];
  v12 = *v11;
  LOBYTE(v11) = *(v11 + 8);
  v61 = v12;
  v62 = v11 & 1;
  if (v11)
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v29 = v61;
  }

  v28 = [v47 newestUIDsMissingBodyDataForMailbox:v30 excluding:v31 inLatest:v29 limit:*(v52 + v32[6]) maximumMessagesToScan:*(v52 + v32[7])];
  MEMORY[0x1E69E5920](v31);
  MEMORY[0x1E69E5920](v30);
  if (v28)
  {
    v27 = v28;
    v26 = v28;
    v60 = v28;
    v25 = sub_1B07DF3A8();
    sub_1B07DF5E8(v51);
    sub_1B07DF96C(v49);
    v13 = [v26 messagesScannedInFilesystemCount];
    sub_1B07CF5C4(v25, v51, v49, v13, v46);
    return MEMORY[0x1E69E5920](v26);
  }

  else
  {
    v24 = 0;
    v23 = sub_1B0E46A48();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    v19 = sub_1B0E46A48();
    v21 = sub_1B041C1E8();
    v22 = &type metadata for UID;
    MessageIdentifierSet.init(arrayLiteral:)(v19, &type metadata for UID, v21, v15);
    v16 = sub_1B0E46A48();
    MessageIdentifierSet.init(arrayLiteral:)(v16, v22, v21, v17);
    return sub_1B07CF5C4(v23, v51, v49, v24, v46);
  }
}

uint64_t sub_1B07DF3A8()
{
  v10 = v0;
  v7 = [v0 messagesMissingBodyData];
  if (v7)
  {
    sub_1B07F1764();
    v5 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v7);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v4 = v6;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v9 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2350, &qword_1B0E9F3D0);
  sub_1B07F1654();
  v3 = sub_1B0E44F58();
  sub_1B039E440(&v9);
  v8 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2358, &qword_1B0E9C5F0);
  sub_1B07F16DC();
  v2 = sub_1B0E44FF8();
  sub_1B039E440(&v8);
  return v2;
}

uint64_t sub_1B07DF5E8@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v11 = "Fatal error";
  v12 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v13 = "Message/MailboxPersistenceHelper+BodyData.swift";
  v28 = 0;
  v14 = sub_1B0E43308();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v7 - v17;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2360, &qword_1B0E9C5F8);
  v19 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v20 = &v7 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v7 - v23;
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v26 = &v7 - v25;
  v28 = v5;
  v27 = [v5 messagesNotMissingBodyData];
  if (v27)
  {
    v9 = v27;
    v8 = v27;
    sub_1B0E43278();
    (*(v15 + 32))(v20, v18, v14);
    (*(v15 + 56))(v20, 0, 1, v14);
    MEMORY[0x1E69E5920](v8);
  }

  else
  {
    (*(v15 + 56))(v20, 1, 1, v14);
  }

  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B0A626DC(v20, v26);
  sub_1B07DF96C(v24);
  MessageIdentifierSet.union(_:)(v24, v10);
  sub_1B03D09B8(v24);
  return sub_1B03D09B8(v26);
}

uint64_t sub_1B07DF96C@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v6 = "Fatal error";
  v7 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v8 = "Message/MailboxPersistenceHelper+BodyData.swift";
  v18 = 0;
  v9 = sub_1B0E43308();
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  v12 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v4 - v12;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2360, &qword_1B0E9C5F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v14);
  v16 = v4 - v15;
  v18 = v2;
  v17 = [v2 fragmentedMessages];
  if (v17)
  {
    v4[1] = v17;
    v4[0] = v17;
    sub_1B0E43278();
    (*(v10 + 32))(v16, v13, v9);
    (*(v10 + 56))(v16, 0, 1, v9);
    MEMORY[0x1E69E5920](v4[0]);
  }

  else
  {
    (*(v10 + 56))(v16, 1, 1, v9);
  }

  if ((*(v10 + 48))(v16, 1, v9) == 1)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return sub_1B0A626DC(v16, v5);
}

uint64_t sub_1B07DFC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a3;
  v45 = a1;
  v44 = a2;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v52 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v42 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v16 - v42;
  v46 = sub_1B0E43308();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v16 - v49;
  v57 = v6;
  v56 = v7;
  v55 = v3;
  v51 = [v6 URLString];
  if (v51)
  {
    v39 = v51;
    v34 = v51;
    v35 = sub_1B0E44AD8();
    v36 = v8;
    MEMORY[0x1E69E5920](v34);
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v32 = v38;
  v33 = v37;
  if (v38)
  {
    v30 = v33;
    v31 = v32;
    v27 = v32;
    v28 = sub_1B0E44AC8();

    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v9 = v50;
  v24 = v29;
  sub_1B03D08AC(v44, v43);
  sub_1B0A62478(v43, v9);
  v25 = sub_1B0E43258();
  (*(v47 + 8))(v50, v46);
  v26 = type metadata accessor for MissingBodyDataRequest(0);
  v10 = v44 + v26[5];
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  v53 = v11;
  v54 = v10 & 1;
  if (v10)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = v53;
  }

  v22 = [v41 newestUIDsMissingPartsForMailbox:v24 excluding:v25 inLatest:v23 limit:*(v44 + v26[6]) maximumMessagesToScan:*(v44 + v26[7])];
  MEMORY[0x1E69E5920](v25);
  MEMORY[0x1E69E5920](v24);
  if (v22)
  {
    v21 = v22;
    v20 = v22;
    v52 = v22;
    v19 = sub_1B07E00BC();
    sub_1B07E0288(v43);
    v12 = [v20 messagesScannedInFilesystemCount];
    sub_1B07CFC34(v19, v43, v12, v40);
    return MEMORY[0x1E69E5920](v20);
  }

  else
  {
    v18 = 0;
    v17 = sub_1B0E46A48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    v16 = sub_1B0E46A48();
    v14 = sub_1B041C1E8();
    MessageIdentifierSet.init(arrayLiteral:)(v16, &type metadata for UID, v14, v15);
    return sub_1B07CFC34(v17, v43, v18, v40);
  }
}

uint64_t sub_1B07E00BC()
{
  v8 = v0;
  v6 = [v0 fragmentedMessages];
  if (v6)
  {
    sub_1B07F1850();
    v4 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v6);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v7 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2368, &qword_1B0E9C600);
  sub_1B07F17C8();
  v2 = sub_1B0E44F58();
  sub_1B039E440(&v7);
  return v2;
}

uint64_t sub_1B07E0288@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v6 = "Fatal error";
  v7 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v8 = "Message/MailboxPersistenceHelper+BodyData.swift";
  v18 = 0;
  v9 = sub_1B0E43308();
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  v12 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v4 - v12;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2360, &qword_1B0E9C5F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v14);
  v16 = v4 - v15;
  v18 = v2;
  v17 = [v2 nonFragmentedMessages];
  if (v17)
  {
    v4[1] = v17;
    v4[0] = v17;
    sub_1B0E43278();
    (*(v10 + 32))(v16, v13, v9);
    (*(v10 + 56))(v16, 0, 1, v9);
    MEMORY[0x1E69E5920](v4[0]);
  }

  else
  {
    (*(v10 + 56))(v16, 1, 1, v9);
  }

  if ((*(v10 + 48))(v16, 1, v9) == 1)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return sub_1B0A626DC(v16, v5);
}

uint64_t sub_1B07E0544(uint64_t a1)
{
  v17 = a1;
  v22 = 0;
  v31 = 0;
  v30 = 0;
  v27 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v8 - v19;
  v31 = v2;
  v30 = v1;
  v29 = v2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2370, &qword_1B0E9C608);
  v21 = v23;
  v3 = sub_1B07F18B4();
  v5 = sub_1B039CA88(sub_1B07E07B4, v22, v23, &type metadata for UID, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  v24 = 0;
  v25 = v5;
  v28 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
  v11 = sub_1B074B97C();
  sub_1B07F193C();
  sub_1B0E46098();
  v13 = sub_1B07E0808(v20);
  v12 = v13;
  sub_1B03D09B8(v20);
  v27 = v13;
  v26 = v17;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = &v8;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v8 - 4;
  *(&v8 - 2) = v6;
  sub_1B07F19EC();
  v16 = sub_1B0E44F58();
  v9 = v16;

  return v9;
}

uint64_t sub_1B07E07B4@<X0>(void *__src@<X0>, _DWORD *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1B07CF88C();
  *a2 = result;
  return result;
}

uint64_t sub_1B07E0808(uint64_t a1)
{
  v75 = a1;
  v77 = 0;
  v95 = 0;
  v92 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v85 = 0;
  _s21AttachmentPersistenceVMa(0);
  MEMORY[0x1EEE9AC00](v75);
  v71 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v3;
  v96 = v1;
  v72 = static MonotonicTime.now()();
  v95 = v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v73 = v74;
  v76 = sub_1B0721160();
  v94 = sub_1B082A914(v75, v74, v76);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2378, &qword_1B0E9C620);
  sub_1B07F1A74();
  v4 = sub_1B0E44F58();
  v80 = 0;
  v81 = v4;
  v61 = v4;
  sub_1B039E440(&v94);
  v93 = v61;
  v64 = 0;
  v65 = sub_1B07F1AFC();
  v62 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2380, &qword_1B0E9C628);
  v67 = sub_1B043CF70();
  v63 = v67;
  sub_1B07F1B60();
  v5 = sub_1B0E44718();
  v68 = 0;
  v69 = v5;
  v54 = v5;
  v92 = v5;
  v91 = v5;
  v55 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v21[-4];
  v21[-2] = sub_1B07E3BE4;
  v21[-1] = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2388, &qword_1B0E9C630);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2390, &qword_1B0E9C638);
  sub_1B07F1C14();
  v6 = sub_1B0E44F58();
  v59 = 0;
  v60 = v6;
  v51 = v6;
  v90 = v6;

  v7 = sub_1B0E446E8();
  v52 = 0;
  v53 = v7;
  v47 = v7;

  v89 = v47;
  sub_1B07C93A8(v71);
  v87[1] = v51;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2398, &qword_1B0E9C640);
  v8 = sub_1B07F1CC0();
  v10 = sub_1B039CA88(sub_1B07E48EC, 0, v48, &unk_1F26C8F98, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  v49 = 0;
  v50 = v10;
  v87[0] = v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2318, &qword_1B0E9C478);
  v11 = sub_1B07CACA0();
  v39 = v87;
  v40 = sub_1B07CA940(v87, v38, v11);
  sub_1B039E440(v39);
  sub_1B07CDB7C(v71);
  v86 = v40;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v42 = &v21[-4];
  v21[-2] = v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2320, &unk_1B0E9C480);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23A0, &qword_1B0E9C648);
  sub_1B07CAD98();
  v13 = sub_1B0E44F58();
  v45 = 0;
  v46 = v13;
  v31 = v13;

  sub_1B039E440(&v86);
  v85 = v31;
  v84 = v31;
  v32 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v33 = &v21[-4];
  v21[-2] = sub_1B07E4B04;
  v21[-1] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23A8, &qword_1B0E9C650);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23B0, &qword_1B0E9C658);
  v14 = sub_1B07F1DA0();
  v16 = sub_1B039CA88(sub_1B07F1D70, v33, v34, v35, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  v36 = 0;
  v37 = v16;
  v83 = v16;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23B8, &qword_1B0E9C660);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23C0, &qword_1B0E9C668);
  sub_1B07F1E28();
  v17 = sub_1B0E44718();
  v29 = 0;
  v30 = v17;
  v24 = v17;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v88 = v24;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v18 = v24;
  v25 = &v21[-6];
  v21[-4] = v51;
  v21[-3] = v18;
  v21[-2] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23C8, &qword_1B0E9C670);
  v26 = sub_1B0E44F58();
  v21[0] = v26;

  v82 = v21[0];
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23D0, &qword_1B0E9C678);
  sub_1B07F1EE0();
  v22 = sub_1B0E445E8();
  sub_1B039E440(&v88);

  sub_1B07E15F4(v70, v72, v75);
  return v22;
}

void *sub_1B07E128C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  v23 = a2;
  v19 = sub_1B07CF88C();
  sub_1B043CF70();
  sub_1B0E44778();
  v12 = v20;
  v13 = v21;
  v14 = v22;
  if (v22 == 1)
  {
    memset(v18, 0, 56);
    v18[7] = 1;
    return memcpy(a3, v18, 0x40uLL);
  }

  else
  {
    v4 = __dst[0];
    v5 = __dst[1];
    v6 = __dst[2];
    v7 = BYTE1(__dst[2]);
    v8 = __dst[3];
    v9 = __dst[4];
    sub_1B07F200C(v21);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v15) = v6 & 1;
    HIBYTE(v15) = v7;
    sub_1B07F3D8C(v4, v5, v15, v8, v9, v12, v13, v14, v24);
    memcpy(v16, v24, sizeof(v16));
    memcpy(v17, v16, sizeof(v17));
    memcpy(a3, v17, 0x40uLL);
    sub_1B07F2124(v13);
  }
}

uint64_t sub_1B07E14B4(unsigned int a1)
{
  v9 = a1;
  v22 = 0;
  v21 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v8 = &v5 - v6;
  v22 = v2;
  v21 = v1;
  v7 = &v20;
  v20 = v2;
  v3 = sub_1B041C1E8();
  v10 = &type metadata for UID;
  MessageIdentifierSet.init(_:)(v7, &type metadata for UID, v3);
  v12 = sub_1B07E0808(v8);
  sub_1B03D09B8(v8);
  v11 = &v16;
  v16 = v9;
  sub_1B043CF70();
  sub_1B0E44778();
  v13 = v17;
  v14 = v18;
  v15 = v19;

  return v13;
}

uint64_t sub_1B07E15F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v152 = a1;
  v153 = a2;
  v156 = a3;
  v145 = sub_1B074E050;
  v161 = sub_1B074EF18;
  v163 = sub_1B0394C30;
  v164 = sub_1B0394C24;
  v166 = sub_1B074DFFC;
  v168 = sub_1B039BA88;
  v171 = sub_1B039BB94;
  v172 = sub_1B0394C24;
  v175 = sub_1B039BBA0;
  v177 = sub_1B039BC08;
  v180 = sub_1B06BA324;
  v182 = sub_1B074E0E4;
  v184 = sub_1B039BCF8;
  v186 = sub_1B07F3870;
  v188 = sub_1B074E950;
  v190 = sub_1B07F3878;
  v192 = sub_1B03B0DF8;
  v196 = sub_1B074EF98;
  v200 = sub_1B039BCF8;
  v202 = sub_1B0398F5C;
  v204 = sub_1B0398F5C;
  v206 = sub_1B0399178;
  v208 = sub_1B0398F5C;
  v210 = sub_1B0398F5C;
  v212 = sub_1B039BA94;
  v214 = sub_1B0398F5C;
  v216 = sub_1B0398F5C;
  v218 = sub_1B0399178;
  v220 = sub_1B0398F5C;
  v222 = sub_1B0398F5C;
  v224 = sub_1B03991EC;
  v226 = sub_1B0398F5C;
  v228 = sub_1B0398F5C;
  v230 = sub_1B03993BC;
  v232 = sub_1B0398F5C;
  v234 = sub_1B0398F5C;
  v236 = sub_1B039BCEC;
  v238 = sub_1B0398F5C;
  v240 = sub_1B0398F5C;
  v242 = sub_1B074E9C8;
  v244 = sub_1B0398F5C;
  v246 = sub_1B0398F5C;
  v248 = sub_1B0399260;
  v250 = sub_1B0398F5C;
  v252 = sub_1B0398F5C;
  v255 = sub_1B039BCEC;
  v268 = 0;
  v267 = 0;
  v266 = 0;
  v129 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v130 = *(v3 - 8);
  v154 = v130;
  v158 = *(v130 + 64);
  v131 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v160 = v120 - v131;
  v132 = 0;
  v140 = sub_1B0E439A8();
  v138 = *(v140 - 8);
  v139 = v140 - 8;
  v133 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v132);
  v4 = v120 - v133;
  v134 = v120 - v133;
  v143 = _s6LoggerVMa_1(v5);
  v136 = *(*(v143 - 8) + 64);
  v135 = (v136 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v152);
  v144 = v120 - v135;
  v137 = (v136 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v141 = v120 - v137;
  v268 = v7;
  v267 = v8;
  v266 = v9;
  v142 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
  sub_1B074B69C(v7 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v120 - v137);
  (*(v138 + 16))(v4, v141, v140);
  sub_1B074B764(v141);

  sub_1B074B69C(v152 + *v142, v144);
  v10 = (v144 + *(v143 + 20));
  v148 = *v10;
  v149 = *(v10 + 1);
  v150 = *(v10 + 1);
  v151 = *(v10 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v144);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v147 = 36;
  v198 = 7;
  v11 = swift_allocObject();
  v12 = v149;
  v13 = v150;
  v14 = v151;
  v167 = v11;
  *(v11 + 16) = v148;
  *(v11 + 20) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v14;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = swift_allocObject();
  v16 = v149;
  v17 = v150;
  v18 = v151;
  v146 = v15;
  *(v15 + 16) = v148;
  *(v15 + 20) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v18;

  v197 = 32;
  v19 = swift_allocObject();
  v20 = v146;
  v176 = v19;
  *(v19 + 16) = v145;
  *(v19 + 24) = v20;
  sub_1B0394868();
  sub_1B0394868();

  v21 = swift_allocObject();
  v22 = v149;
  v23 = v150;
  v24 = v151;
  v183 = v21;
  *(v21 + 16) = v148;
  *(v21 + 20) = v22;
  *(v21 + 24) = v23;
  *(v21 + 32) = v24;

  v179 = 24;
  v25 = swift_allocObject();
  v26 = v160;
  v27 = v25;
  v28 = v156;
  v187 = v27;
  *(v27 + 16) = v153;
  sub_1B03D08AC(v28, v26);
  v157 = *(v154 + 80);
  v155 = (v157 + 16) & ~v157;
  v191 = swift_allocObject();
  sub_1B074BA2C(v160, v191 + v155);
  sub_1B03D08AC(v156, v160);
  v159 = (v157 + 16) & ~v157;
  v162 = swift_allocObject();
  sub_1B074BA2C(v160, v162 + v159);

  v29 = swift_allocObject();
  v30 = v162;
  v199 = v29;
  *(v29 + 16) = v161;
  *(v29 + 24) = v30;

  v259 = sub_1B0E43988();
  v260 = sub_1B0E458C8();
  v194 = 17;
  v203 = swift_allocObject();
  v170 = 16;
  *(v203 + 16) = 16;
  v205 = swift_allocObject();
  v174 = 4;
  *(v205 + 16) = 4;
  v31 = swift_allocObject();
  v165 = v31;
  *(v31 + 16) = v163;
  *(v31 + 24) = 0;
  v32 = swift_allocObject();
  v33 = v165;
  v207 = v32;
  *(v32 + 16) = v164;
  *(v32 + 24) = v33;
  v209 = swift_allocObject();
  *(v209 + 16) = 0;
  v211 = swift_allocObject();
  *(v211 + 16) = 1;
  v34 = swift_allocObject();
  v35 = v167;
  v169 = v34;
  *(v34 + 16) = v166;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v169;
  v213 = v36;
  *(v36 + 16) = v168;
  *(v36 + 24) = v37;
  v215 = swift_allocObject();
  *(v215 + 16) = v170;
  v217 = swift_allocObject();
  *(v217 + 16) = v174;
  v38 = swift_allocObject();
  v173 = v38;
  *(v38 + 16) = v171;
  *(v38 + 24) = 0;
  v39 = swift_allocObject();
  v40 = v173;
  v219 = v39;
  *(v39 + 16) = v172;
  *(v39 + 24) = v40;
  v221 = swift_allocObject();
  *(v221 + 16) = 0;
  v223 = swift_allocObject();
  *(v223 + 16) = v174;
  v41 = swift_allocObject();
  v42 = v176;
  v178 = v41;
  *(v41 + 16) = v175;
  *(v41 + 24) = v42;
  v43 = swift_allocObject();
  v44 = v178;
  v225 = v43;
  *(v43 + 16) = v177;
  *(v43 + 24) = v44;
  v227 = swift_allocObject();
  *(v227 + 16) = 112;
  v229 = swift_allocObject();
  v195 = 8;
  *(v229 + 16) = 8;
  v181 = swift_allocObject();
  *(v181 + 16) = 0x786F626C69616DLL;
  v45 = swift_allocObject();
  v46 = v181;
  v231 = v45;
  *(v45 + 16) = v180;
  *(v45 + 24) = v46;
  v233 = swift_allocObject();
  *(v233 + 16) = 37;
  v235 = swift_allocObject();
  *(v235 + 16) = v195;
  v47 = swift_allocObject();
  v48 = v183;
  v185 = v47;
  *(v47 + 16) = v182;
  *(v47 + 24) = v48;
  v49 = swift_allocObject();
  v50 = v185;
  v237 = v49;
  *(v49 + 16) = v184;
  *(v49 + 24) = v50;
  v239 = swift_allocObject();
  *(v239 + 16) = 0;
  v241 = swift_allocObject();
  *(v241 + 16) = v195;
  v51 = swift_allocObject();
  v52 = v187;
  v189 = v51;
  *(v51 + 16) = v186;
  *(v51 + 24) = v52;
  v53 = swift_allocObject();
  v54 = v189;
  v243 = v53;
  *(v53 + 16) = v188;
  *(v53 + 24) = v54;
  v245 = swift_allocObject();
  *(v245 + 16) = 0;
  v247 = swift_allocObject();
  *(v247 + 16) = v195;
  v55 = swift_allocObject();
  v56 = v191;
  v193 = v55;
  *(v55 + 16) = v190;
  *(v55 + 24) = v56;
  v57 = swift_allocObject();
  v58 = v193;
  v249 = v57;
  *(v57 + 16) = v192;
  *(v57 + 24) = v58;
  v251 = swift_allocObject();
  *(v251 + 16) = 34;
  v253 = swift_allocObject();
  *(v253 + 16) = v195;
  v59 = swift_allocObject();
  v60 = v199;
  v201 = v59;
  *(v59 + 16) = v196;
  *(v59 + 24) = v60;
  v61 = swift_allocObject();
  v62 = v201;
  v256 = v61;
  *(v61 + 16) = v200;
  *(v61 + 24) = v62;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v254 = sub_1B0E46A48();
  v257 = v63;

  v64 = v203;
  v65 = v257;
  *v257 = v202;
  v65[1] = v64;

  v66 = v205;
  v67 = v257;
  v257[2] = v204;
  v67[3] = v66;

  v68 = v207;
  v69 = v257;
  v257[4] = v206;
  v69[5] = v68;

  v70 = v209;
  v71 = v257;
  v257[6] = v208;
  v71[7] = v70;

  v72 = v211;
  v73 = v257;
  v257[8] = v210;
  v73[9] = v72;

  v74 = v213;
  v75 = v257;
  v257[10] = v212;
  v75[11] = v74;

  v76 = v215;
  v77 = v257;
  v257[12] = v214;
  v77[13] = v76;

  v78 = v217;
  v79 = v257;
  v257[14] = v216;
  v79[15] = v78;

  v80 = v219;
  v81 = v257;
  v257[16] = v218;
  v81[17] = v80;

  v82 = v221;
  v83 = v257;
  v257[18] = v220;
  v83[19] = v82;

  v84 = v223;
  v85 = v257;
  v257[20] = v222;
  v85[21] = v84;

  v86 = v225;
  v87 = v257;
  v257[22] = v224;
  v87[23] = v86;

  v88 = v227;
  v89 = v257;
  v257[24] = v226;
  v89[25] = v88;

  v90 = v229;
  v91 = v257;
  v257[26] = v228;
  v91[27] = v90;

  v92 = v231;
  v93 = v257;
  v257[28] = v230;
  v93[29] = v92;

  v94 = v233;
  v95 = v257;
  v257[30] = v232;
  v95[31] = v94;

  v96 = v235;
  v97 = v257;
  v257[32] = v234;
  v97[33] = v96;

  v98 = v237;
  v99 = v257;
  v257[34] = v236;
  v99[35] = v98;

  v100 = v239;
  v101 = v257;
  v257[36] = v238;
  v101[37] = v100;

  v102 = v241;
  v103 = v257;
  v257[38] = v240;
  v103[39] = v102;

  v104 = v243;
  v105 = v257;
  v257[40] = v242;
  v105[41] = v104;

  v106 = v245;
  v107 = v257;
  v257[42] = v244;
  v107[43] = v106;

  v108 = v247;
  v109 = v257;
  v257[44] = v246;
  v109[45] = v108;

  v110 = v249;
  v111 = v257;
  v257[46] = v248;
  v111[47] = v110;

  v112 = v251;
  v113 = v257;
  v257[48] = v250;
  v113[49] = v112;

  v114 = v253;
  v115 = v257;
  v257[50] = v252;
  v115[51] = v114;

  v116 = v256;
  v117 = v257;
  v257[52] = v255;
  v117[53] = v116;
  sub_1B0394964();

  if (os_log_type_enabled(v259, v260))
  {
    v118 = v129;
    v122 = sub_1B0E45D78();
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v123 = sub_1B03949A8(0, v121, v121);
    v124 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v125 = &v265;
    v265 = v122;
    v126 = &v264;
    v264 = v123;
    v127 = &v263;
    v263 = v124;
    sub_1B0394A48(3, &v265);
    sub_1B0394A48(9, v125);
    v261 = v202;
    v262 = v203;
    sub_1B03949FC(&v261, v125, v126, v127);
    v128 = v118;
    if (v118)
    {

      __break(1u);
    }

    else
    {
      v261 = v204;
      v262 = v205;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[25] = 0;
      v261 = v206;
      v262 = v207;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[24] = 0;
      v261 = v208;
      v262 = v209;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[23] = 0;
      v261 = v210;
      v262 = v211;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[22] = 0;
      v261 = v212;
      v262 = v213;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[21] = 0;
      v261 = v214;
      v262 = v215;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[20] = 0;
      v261 = v216;
      v262 = v217;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[19] = 0;
      v261 = v218;
      v262 = v219;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[18] = 0;
      v261 = v220;
      v262 = v221;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[17] = 0;
      v261 = v222;
      v262 = v223;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[16] = 0;
      v261 = v224;
      v262 = v225;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[15] = 0;
      v261 = v226;
      v262 = v227;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[14] = 0;
      v261 = v228;
      v262 = v229;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[13] = 0;
      v261 = v230;
      v262 = v231;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[12] = 0;
      v261 = v232;
      v262 = v233;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[11] = 0;
      v261 = v234;
      v262 = v235;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[10] = 0;
      v261 = v236;
      v262 = v237;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[9] = 0;
      v261 = v238;
      v262 = v239;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[8] = 0;
      v261 = v240;
      v262 = v241;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[7] = 0;
      v261 = v242;
      v262 = v243;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[6] = 0;
      v261 = v244;
      v262 = v245;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[5] = 0;
      v261 = v246;
      v262 = v247;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[4] = 0;
      v261 = v248;
      v262 = v249;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[3] = 0;
      v261 = v250;
      v262 = v251;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[2] = 0;
      v261 = v252;
      v262 = v253;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      v120[1] = 0;
      v261 = v255;
      v262 = v256;
      sub_1B03949FC(&v261, &v265, &v264, &v263);
      _os_log_impl(&dword_1B0389000, v259, v260, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] checkWithoutCacheForMissingParts() took %f ms (%ld '%{public}s')", v122, 0x49u);
      sub_1B03998A8(v123, 0, v121);
      sub_1B03998A8(v124, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v259);
  return (*(v138 + 8))(v134, v140);
}

void *sub_1B07E3A90@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v11 = 0;
  v5 = *a1;
  v11 = v5;
  v8 = [v5 uid];
  v6 = sub_1B041C1E8();
  v2 = sub_1B07467B8();
  result = MessageIdentifier.init<A>(exactly:)(&v8, &type metadata for UID, MEMORY[0x1E69E7668], v6, v2, &v9);
  v7 = v9;
  if (v10)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    result = MEMORY[0x1E69E5928](v5);
    *a2 = v7;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B07E3B88@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;
  result = MEMORY[0x1E69E5928](*a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1B07E3BE4(unsigned int a1, id a2)
{
  sub_1B0825730([a2 globalMessageID]);
  if (v2)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1B07E3CA0@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, *(a1 + 1));
  *a3 = result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1B07E3D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v48 = a3;
  v68 = a1;
  v67 = a2;
  v50 = sub_1B07E46B8;
  v51 = sub_1B07E473C;
  v52 = sub_1B07E47F4;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v88 = 0;
  v84 = 0;
  v83[0] = 0;
  v81[0] = 0;
  v81[1] = 0;
  v78 = 0;
  v65 = 0;
  v53 = type metadata accessor for Message(0);
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v57 = v23 - v56;
  v58 = sub_1B0E443C8();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v62 = v23 - v61;
  v63 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v64 = v23 - v63;
  v88 = v23 - v63;
  v72 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(v5);
  v66 = (*(*(v72 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v73 = v23 - v66;
  v69 = _s31PreviouslyDownloadedMessageDataVMa(v6);
  v70 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v68);
  v71 = v23 - v70;
  v87 = v23 - v70;
  v86 = *v8;
  v85 = v9;
  v10 = [v86 downloadedMessageData];
  sub_1B08259E4(v10, v71);
  sub_1B07AF5B8(v71, v73);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v12 = v58;
      v13 = v73;
      v14 = v59;
      *v48 = 1;
      (*(v14 + 8))(v13, v12);
      sub_1B075ECD0(v71);
      result = v49;
      v47 = v49;
      return result;
    case 1:
      v17 = v57;
      (*(v59 + 32))(v64, v73, v58);
      v88 = v64;
      (*(v59 + 16))(v62);
      Message.init(_:)(v62, v17);
      v42 = *(v67 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mimeCache);

      v43 = Message.findPartsMissingData(cache:)(v42);

      (*(v54 + 8))(v57, v53);
      v84 = v43;
      v83[1] = v43;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
      sub_1B07AFB60();
      v18 = v49;
      result = sub_1B0E44F48();
      v45 = v18;
      v46 = result;
      if (v18)
      {
        __break(1u);
      }

      else
      {
        if (v46)
        {
          *v48 = 0;

          (*(v59 + 8))(v64, v58);
          sub_1B075ECD0(v71);
          result = v45;
          v47 = v45;
          return result;
        }

        v82[1] = v43;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2490, &qword_1B0E9CC30);
        v19 = sub_1B07B0A94();
        v20 = v45;
        result = sub_1B039CA88(v51, 0, v44, v38, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v39);
        v40 = v20;
        v41 = result;
        if (!v20)
        {
          v35 = v82;
          v82[0] = v41;
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2498, &qword_1B0E9CC38);
          v34 = sub_1B07167A8();
          sub_1B07F3CCC();
          v21 = v40;
          result = sub_1B0E44718();
          v36 = v21;
          v37 = result;
          if (!v21)
          {
            v83[0] = v37;
            v30 = *&v71[*(v69 + 20)];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v80 = v30;
            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
            sub_1B07AFBE8();
            sub_1B0E45798();
            for (i = v36; ; i = v28)
            {
              v28 = i;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24A0, &unk_1B0E9CC40);
              sub_1B0E46518();
              v29 = v79;
              if (!v79)
              {
                break;
              }

              v27 = v29;
              v24 = v29;
              v78 = v29;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v23[2] = v76;
              v76[0] = 1;
              memset(&v76[1], 0, 24);
              v77 = 3;
              v23[1] = &v75;
              v75 = v24;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2440, qword_1B0E9C7F8);
              sub_1B0E44788();
            }

            sub_1B039E440(v81);
            v25 = v83;
            v26 = v83[0];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v22 = v25;
            *v48 = v26;
            sub_1B039E440(v22);

            (*(v59 + 8))(v64, v58);
            sub_1B075ECD0(v71);
            result = v28;
            v47 = v28;
            return result;
          }

LABEL_21:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_21;
    case 2:
      v11 = v71;
      *v48 = 0;
      sub_1B075ECD0(v11);
      result = v49;
      v47 = v49;
      break;
    default:
      v15 = v71;
      if (EnumCaseMultiPayload == 3)
      {
        *v48 = 2;
        sub_1B075ECD0(v15);
        result = v49;
      }

      else
      {
        *v48 = 1;
        result = sub_1B075ECD0(v15);
      }

      v47 = v49;
      break;
  }

  return result;
}

BOOL sub_1B07E46B8(uint64_t a1)
{
  memcpy(__dst, (a1 + 8), 0x21uLL);
  v5 = a1;
  sub_1B07F3B58(__dst, v4);
  v3 = SparsePartInfo.Status.isEmpty.getter();
  sub_1B07F3BD4(__dst);
  return !v3;
}

void sub_1B07E473C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = *(a1 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v2;
  sub_1B07B0B1C(v3, v4, v5, v6, v8);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
}

void sub_1B07E47F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v15[5], 0, 0x21uLL);
  memset(v15, 0, 0x21uLL);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v15[5] = *a1;
  v15[6] = v3;
  v15[7] = v4;
  v15[8] = v5;
  LOBYTE(v15[9]) = v6;
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15[0] = v9;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  LOBYTE(v15[4]) = v14;
  sub_1B07B0B1C(v9, v10, v11, v12, v14);
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v14;
}

void sub_1B07E4918(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v6 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2398, &qword_1B0E9C640);
  sub_1B07F3914();
  sub_1B0E44FB8();
  if (v7)
  {

    __break(1u);
  }

  else
  {

    if (v9)
    {
      v3 = 0;
      v4 = 1;
    }

    else
    {
      v3 = v8;
      v4 = 0;
    }

    if (v4)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *a3 = v3;
      a3[1] = v6;
    }
  }
}

uint64_t sub_1B07E4B04(unsigned int a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2330, &qword_1B0E9C498);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2480, &qword_1B0E9CC20);
  v2 = sub_1B07CC574();
  sub_1B039CA88(sub_1B07E4C9C, 0, v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2488, &qword_1B0E9CC28);
  sub_1B07167A8();
  sub_1B07F3C14();
  sub_1B0E44718();

  return a1;
}

void *sub_1B07E4C9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v30 = a1;
  v37 = 0;
  v36 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v26 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v12 - v26;
  v27 = 0;
  v33 = sub_1B0E42E68();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v28 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v12 - v28;
  v37 = &v12 - v28;
  v36 = v3;
  v5 = _s30MessagePersistedAttachmentInfoV7ElementVMa(v4);
  sub_1B071C180(v30 + *(v5 + 20), v34);
  if ((*(v31 + 48))(v34, 1, v33) == 1)
  {
    sub_1B06E3800(v34);
    v23 = v25;
  }

  else
  {
    (*(v31 + 32))(v29, v34, v33);
    v6 = v25;
    v7 = sub_1B0E42D98();
    v20 = v6;
    v21 = v7;
    v22 = v6;
    if (v6)
    {
      v13 = 0;

      v18 = 2;
      v19 = v13;
    }

    else
    {
      v18 = v21 & 1;
      v19 = 0;
    }

    v17 = v19;
    v35 = v18;
    if (v18 == 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v35;
    }

    if (v16)
    {
      sub_1B074E7A8(v30, v24);
      v8 = v31;
      v9 = v33;
      v10 = v29;
      *(v24 + 8) = 0;
      (*(v8 + 8))(v10, v9);
      result = v17;
      v15 = v17;
      return result;
    }

    (*(v31 + 8))(v29, v33);
    v23 = v17;
  }

  v14 = v23;
  sub_1B074E7A8(v30, v24);
  result = v14;
  *(v24 + 8) = 1;
  v15 = result;
  return result;
}

uint64_t sub_1B07E500C@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, *(a1 + 1));
  *a3 = result;
  *(a3 + 8) = v4;
  return result;
}

void sub_1B07E5064(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
}

void sub_1B07E50B0(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v129 = a4;
  v128 = a3;
  v130 = a2;
  v124 = a1;
  v125 = a5;
  v175 = 0;
  v126 = 0;
  v174 = 0;
  v173 = 0;
  v172 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0u;
  v152 = 0u;
  v143 = 0;
  v141 = 0;
  v140 = 0;
  v137 = 0;
  v131 = *a1;
  v127 = v131;
  v175 = v131;
  v174 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v173 = v128;
  v172 = v129;
  v168 = v130;
  v135 = v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2398, &qword_1B0E9C640);
  sub_1B07F3914();
  sub_1B0E44FB8();
  v134 = v133;
  if (v133)
  {
    __break(1u);
    goto LABEL_50;
  }

  v122 = v169;
  v123 = v170;
  if (v171)
  {
    v119 = 0;
    v120 = 1;
  }

  else
  {
    v121 = v123;
    v119 = v123;
    v120 = 0;
  }

  v118 = v119;
  if (v120)
  {
    v5 = v134;
    v6 = v125;
    *v125 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 1;
    v116 = v5;
LABEL_48:
    v28[1] = v116;
    sub_1B039E440(&v173);
    return;
  }

  v117 = v118;
  v167 = v118;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v164 = v7;
  v165 = v8;
  v166 = v9;
  v112 = v173;
  v162 = v127;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23B8, &qword_1B0E9C660);
  v111 = v113;
  v114 = sub_1B043CF70();
  sub_1B0E44778();
  v115 = v163;
  if (!v163)
  {
    v109 = v134;
    goto LABEL_13;
  }

  v110 = v115;
  v103 = v115;
  v106 = v134;
  v137 = v115;
  v136 = v115;
  v104 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v105 = v25;
  v26 = sub_1B07E5CB8;
  v27 = 0;
  sub_1B07F3AD0();
  v10 = v106;
  v11 = sub_1B0E44F58();
  v107 = v10;
  v108 = v11;
  if (v10)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v166 = v108;

  v109 = v107;
LABEL_13:
  v101 = v109;
  v160 = v127;
  sub_1B0E44778();
  v102 = v161;
  if (v161 == 3)
  {
    v99 = v101;
LABEL_33:
    v71 = v99;
    v158 = v127;
    sub_1B0E44778();
    v72 = v159;
    if (v159 == 3)
    {
      v69 = v71;
    }

    else
    {
      v70 = v72;
      v68 = v70;
      if (v70 >= 3)
      {
        v67 = v68;
        v64 = v68;
        v157 = v68;
        v66 = v166;
        v65 = v166;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v66)
        {
          v63 = v65;
          v58 = v65;
          v156 = v65;
          v61 = sub_1B07167A8();
          v59 = v61;
          v60 = &type metadata for SectionSpecifier.Part;
          v155 = sub_1B0E44588();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0E445C8();
          v154 = v178;
          v153 = v177;
          v152 = v176;
          for (i = v71; ; i = v51)
          {
            v51 = i;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2478, &unk_1B0E9CC10);
            sub_1B0E446D8();
            v52 = v146;
            v53 = v147;
            v54 = v148;
            v55 = v149;
            v56 = v150;
            v57 = v151;
            if (!v146)
            {
              break;
            }

            v45 = v52;
            v46 = v53;
            v47 = v54;
            v48 = v55;
            v49 = v56;
            v50 = v57;
            v33 = v57;
            v34 = v56;
            v35 = v55;
            v36 = v54;
            v37 = v53;
            v38 = v52;
            v179 = v53;
            v180 = v54;
            v181 = v55;
            v182 = v56;
            v183 = v57;
            v143 = v52;
            if (!SparsePartInfo.Status.isEmpty.getter())
            {
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v142 = v38;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
              sub_1B0E454D8();
            }

            sub_1B07B0B7C(v37, v36, v35, v34, v33);
          }

          sub_1B06B91B0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v145 = v58;
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
          sub_1B07AFA50();
          v43 = &type metadata for SectionSpecifier.Part;
          v40 = sub_1B0E45598();
          v41 = v155;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v42 = sub_1B0E45418();

          v144 = v42;
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
          sub_1B07B0968();
          v166 = sub_1B0E45378();

          sub_1B039E440(&v155);

          v69 = v51;
        }

        else
        {

          v69 = v71;
        }
      }

      else
      {
        sub_1B07C936C(v68);
        v69 = v71;
      }
    }

    v32 = v69;
    v29 = v164;
    v30 = v165;
    v31 = v166;
    sub_1B07F200C(v165);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v21 = v29;
    v22 = v30;
    v23 = v125;
    v24 = v31;
    *v125 = v127;
    v23[1] = v21;
    v23[2] = v22;
    v23[3] = v24;
    sub_1B07F399C(&v164);
    v116 = v32;
    goto LABEL_48;
  }

  v100 = v102;
  v98 = v100;
  v141 = v100;
  if (!v100)
  {
    v95 = &type metadata for SectionSpecifier.Part;
    v94 = 0;
    v12 = sub_1B0E46A48();
    v13 = v165;
    v165 = v12;
    sub_1B07F2124(v13);
    v166 = sub_1B0E46A48();

    v96 = v101;
LABEL_32:
    v73 = v96;
    sub_1B07C936C(v98);
    v99 = v73;
    goto LABEL_33;
  }

  if (v98 == 1)
  {
    v20 = v165;
    v165 = 1;
    sub_1B07F2124(v20);
    v96 = v101;
    goto LABEL_32;
  }

  if (v98 == 2)
  {
    v76 = v166;
    v75 = v166;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v76)
    {
      v74 = v75;
    }

    else
    {
      v166 = sub_1B0E46A48();
    }

    v96 = v101;
    goto LABEL_32;
  }

  v97 = v98;
  v85 = v98;
  v90 = v101;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v140 = v85;
  v139 = v85;
  v86 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v88 = v25;
  v26 = sub_1B07E5D74;
  v27 = 0;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2440, qword_1B0E9C7F8);
  v87 = v89;
  v14 = sub_1B07F3A1C();
  v15 = v90;
  v91 = v14;
  v16 = sub_1B0E44F58();
  v92 = v15;
  v93 = v16;
  if (v15)
  {
    goto LABEL_51;
  }

  v17 = v165;
  v165 = v93;
  sub_1B07F2124(v17);
  v84 = v166;
  v83 = v166;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v84)
  {
    v82 = v83;

    v81 = v92;
LABEL_26:
    v77 = v81;

    v96 = v77;
    goto LABEL_32;
  }

  v18 = v92;
  v138 = v85;
  v78 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v26 = sub_1B07E5E90;
  v27 = 0;
  v19 = sub_1B0E44F58();
  v79 = v18;
  v80 = v19;
  if (!v18)
  {
    v166 = v80;

    v81 = v79;
    goto LABEL_26;
  }

LABEL_52:
  __break(1u);
}

uint64_t sub_1B07E5CB8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return a1;
}

uint64_t sub_1B07E5D1C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(a1 + 8) & 1);
  *a3 = result;
  return result;
}

uint64_t sub_1B07E5D74(uint64_t a1, const void *a2)
{
  v8 = a1;
  v7 = a2;
  sub_1B07F3B58(a2, v6);
  memcpy(__dst, a2, 0x21uLL);
  if (LOBYTE(__dst[4]) == 1)
  {
    __dst[5] = __dst[0];
    v10 = __dst[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return a1;
  }

  else
  {
    sub_1B07F3BD4(a2);
    return 0;
  }
}

uint64_t sub_1B07E5E1C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, _BYTE *)@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  memcpy(__dst, a1 + 1, 0x21uLL);
  result = a2(v4, __dst);
  *a3 = result;
  return result;
}

uint64_t sub_1B07E5E90(uint64_t a1, const void *a2)
{
  v8 = a1;
  v7 = a2;
  sub_1B07F3B58(a2, v6);
  memcpy(__dst, a2, 0x21uLL);
  if (LOBYTE(__dst[4]) == 2)
  {

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return a1;
  }

  else
  {
    sub_1B07F3BD4(a2);
    return 0;
  }
}

void *sub_1B07E5F30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v5 = *a1;
  v16 = v5;
  v13 = 0;
  v15 = 0;
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  v2 = type metadata accessor for MFMailMessageLibraryUIDMessageSize(0);
  sub_1B03B0BBC(&v13, sub_1B07F3D54, v8, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v7, v7);
  if (v6)
  {
    result = MEMORY[0x1E69E5920](v5);
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v5);
    v10 = v13;
    v11 = v14;
    v12 = v15;
    sub_1B07E6190(v13, v14, v15, v17);
    return memcpy(a2, v17, 0x28uLL);
  }

  return result;
}

id sub_1B07E6090(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1B0E45E58();
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return [a3 getValue:v4 size:sub_1B0E450E8()];
}

void *sub_1B07E6190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v27[5] = a1;
  v27[6] = a2;
  v27[7] = a3;
  result = sub_1B0825730(a1);
  v20 = result;
  if (v5)
  {
    v15 = 0;
    v16 = 0;
    v17 = 512;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    UID.init(rawValue:)();
    MessageToDownload.init(message:size:bodyStructure:)();
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    LOBYTE(v25) = v13 & 1;
    HIBYTE(v25) = v14;
    sub_1B07CF9DC(v11, v12, v25, v10, v20, v27);
    result = memcpy(__b, v27, sizeof(__b));
    v15 = LODWORD(v27[0]);
    v16 = v27[1];
    v17 = v27[2] & 1 | ((BYTE1(v27[2]) & 1) << 8);
    v18 = v27[3];
    v19 = v27[4];
  }

  *a4 = v15;
  a4[1] = v16;
  a4[2] = v17;
  a4[3] = v18;
  a4[4] = v19;
  return result;
}

BOOL sub_1B07E6498(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v7, a2, sizeof(v7));
  v6 = sub_1B07CF88C();
  v5 = sub_1B07CF88C();
  v2 = sub_1B041C1E8();
  return static MessageIdentifier.< infix(_:_:)(&v6, &v5, &type metadata for UID, v2);
}

void *sub_1B07E6548@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1B07E65B0(v3, v5);
  return memcpy(a2, v5, 0x28uLL);
}

uint64_t sub_1B07E65B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  [a1 uidAndSize];
  sub_1B07E6190(v15, v16, v17, v19);
  memcpy(__dst, v19, sizeof(__dst));
  if ((__dst[2] & 0xFF00) == 0x200)
  {
    result = MEMORY[0x1E69E5920](a1);
    v8 = 0;
    v9 = 0;
    v10 = 512;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    memcpy(v22, __dst, sizeof(v22));
    sub_1B07CF9DC(LODWORD(v22[0]), v22[1], v22[2] & 0xFF01, v22[3], v22[4], v20);
    v3 = LODWORD(v20[0]);
    v4 = v20[1];
    v6 = v20[3];
    v7 = v20[4];
    memcpy(__b, v20, sizeof(__b));
    v5 = v20[2] & 1 | ((BYTE1(v20[2]) & 1) << 8);
    result = MEMORY[0x1E69E5920](a1);
    v8 = v3;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v12 = v7;
  }

  *a2 = v8;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = v12;
  return result;
}

uint64_t sub_1B07E67D0(unsigned int a1, unsigned int a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v634 = a1;
  v641 = a2;
  v627 = a3;
  v628 = a4;
  v629 = a5;
  v633 = a6;
  v630 = a7;
  v631 = a8;
  v642 = a9;
  v632 = a10;
  v513 = sub_1B074E050;
  v514 = sub_1B07F1F68;
  v515 = sub_1B07F1F80;
  v516 = sub_1B07F2048;
  v517 = sub_1B0394C30;
  v518 = sub_1B0394C24;
  v519 = sub_1B074DFFC;
  v520 = sub_1B039BA88;
  v521 = sub_1B039BB94;
  v522 = sub_1B0394C24;
  v523 = sub_1B039BBA0;
  v524 = sub_1B039BC08;
  v525 = 0x786F626C69616DLL;
  v526 = sub_1B06BA324;
  v527 = sub_1B074E0E4;
  v528 = sub_1B039BCF8;
  v529 = sub_1B07F1F74;
  v530 = sub_1B039BCF8;
  v531 = sub_1B03FB274;
  v532 = sub_1B039BCF8;
  v533 = sub_1B03F7AE0;
  v534 = sub_1B039BC08;
  v535 = sub_1B07F2058;
  v536 = sub_1B039BCF8;
  v537 = sub_1B0398F5C;
  v538 = sub_1B0398F5C;
  v539 = sub_1B0399178;
  v540 = sub_1B0398F5C;
  v541 = sub_1B0398F5C;
  v542 = sub_1B039BA94;
  v543 = sub_1B0398F5C;
  v544 = sub_1B0398F5C;
  v545 = sub_1B0399178;
  v546 = sub_1B0398F5C;
  v547 = sub_1B0398F5C;
  v548 = sub_1B03991EC;
  v549 = sub_1B0398F5C;
  v550 = sub_1B0398F5C;
  v551 = sub_1B03993BC;
  v552 = sub_1B0398F5C;
  v553 = sub_1B0398F5C;
  v554 = sub_1B039BCEC;
  v555 = sub_1B0398F5C;
  v556 = sub_1B0398F5C;
  v557 = sub_1B039BCEC;
  v558 = sub_1B0398F5C;
  v559 = sub_1B0398F5C;
  v560 = sub_1B039BCEC;
  v561 = sub_1B0398F5C;
  v562 = sub_1B0398F5C;
  v563 = sub_1B03991EC;
  v564 = sub_1B0398F5C;
  v565 = sub_1B0398F5C;
  v566 = sub_1B039BCEC;
  v567 = sub_1B074E050;
  v568 = sub_1B07F1F68;
  v569 = sub_1B07F1F80;
  v570 = sub_1B07F2048;
  v571 = sub_1B0394C24;
  v572 = sub_1B074DFFC;
  v573 = sub_1B039BA88;
  v574 = sub_1B0394C24;
  v575 = sub_1B039BBA0;
  v576 = sub_1B039BC08;
  v577 = sub_1B06BA324;
  v578 = sub_1B074E0E4;
  v579 = sub_1B039BCF8;
  v580 = sub_1B07F1F74;
  v581 = sub_1B039BCF8;
  v582 = sub_1B03FB274;
  v583 = sub_1B039BCF8;
  v584 = sub_1B03F7AE0;
  v585 = sub_1B039BC08;
  v586 = sub_1B07F2058;
  v587 = sub_1B039BCF8;
  v588 = sub_1B0398F5C;
  v589 = sub_1B0398F5C;
  v590 = sub_1B0399178;
  v591 = sub_1B0398F5C;
  v592 = sub_1B0398F5C;
  v593 = sub_1B039BA94;
  v594 = sub_1B0398F5C;
  v595 = sub_1B0398F5C;
  v596 = sub_1B0399178;
  v597 = sub_1B0398F5C;
  v598 = sub_1B0398F5C;
  v599 = sub_1B03991EC;
  v600 = sub_1B0398F5C;
  v601 = sub_1B0398F5C;
  v602 = sub_1B03993BC;
  v603 = sub_1B0398F5C;
  v604 = sub_1B0398F5C;
  v605 = sub_1B039BCEC;
  v606 = sub_1B0398F5C;
  v607 = sub_1B0398F5C;
  v608 = sub_1B039BCEC;
  v609 = sub_1B0398F5C;
  v610 = sub_1B0398F5C;
  v611 = sub_1B039BCEC;
  v612 = sub_1B0398F5C;
  v613 = sub_1B0398F5C;
  v614 = sub_1B03991EC;
  v615 = sub_1B0398F5C;
  v616 = sub_1B0398F5C;
  v617 = sub_1B039BCEC;
  v666 = 0;
  v663 = 0;
  v664 = 0;
  v665 = 0;
  v662 = 0;
  v661 = 0;
  v658 = 0;
  v659 = 0;
  v660 = 0;
  v657 = 0;
  v656 = 0;
  v618 = 0;
  v619 = 0;
  v620 = _s6LoggerVMa_1(0);
  v621 = (*(*(v620 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v622 = &v290 - v621;
  v623 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v624 = &v290 - v623;
  v625 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v626 = &v290 - v625;
  v635 = sub_1B0E439A8();
  v636 = *(v635 - 8);
  v637 = v635 - 8;
  v639 = *(v636 + 64);
  v638 = (v639 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v634);
  v640 = &v290 - v638;
  MEMORY[0x1EEE9AC00](v15);
  v643 = &v290 - v16;
  v666 = v17 & 1;
  LOBYTE(v663) = v641;
  v664 = v18;
  v665 = v19;
  v662 = v20;
  v661 = v21;
  v658 = v22;
  v659 = v23;
  v660 = v642;
  v657 = v24;
  v656 = v10;
  v644 = v667;
  memcpy(v667, v21, 0xB1uLL);
  if (sub_1B075FACC(v667) == 1)
  {
    (*(v636 + 16))(v640, v632, v635);
    sub_1B074B69C(v632, v626);
    sub_1B074B69C(v626, v624);
    sub_1B074E41C(v626, v622);
    v157 = (v624 + *(v620 + 20));
    v333 = *v157;
    v334 = *(v157 + 1);
    v335 = *(v157 + 1);
    v336 = *(v157 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v624);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v332 = 36;
    v362 = 7;
    v158 = swift_allocObject();
    v159 = v334;
    v160 = v335;
    v161 = v336;
    v342 = v158;
    *(v158 + 16) = v333;
    *(v158 + 20) = v159;
    *(v158 + 24) = v160;
    *(v158 + 32) = v161;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v162 = swift_allocObject();
    v163 = v334;
    v164 = v335;
    v165 = v336;
    v331 = v162;
    *(v162 + 16) = v333;
    *(v162 + 20) = v163;
    *(v162 + 24) = v164;
    *(v162 + 32) = v165;

    v361 = 32;
    v166 = swift_allocObject();
    v167 = v331;
    v346 = v166;
    *(v166 + 16) = v513;
    *(v166 + 24) = v167;
    sub_1B0394868();
    sub_1B0394868();

    v168 = swift_allocObject();
    v169 = v334;
    v170 = v335;
    v171 = v336;
    v172 = v168;
    v173 = v622;
    v349 = v172;
    *(v172 + 16) = v333;
    *(v172 + 20) = v169;
    *(v172 + 24) = v170;
    *(v172 + 32) = v171;
    sub_1B074B764(v173);
    v359 = 17;
    v337 = swift_allocObject();
    v341 = 1;
    *(v337 + 16) = v634 & 1;

    v174 = swift_allocObject();
    v175 = v337;
    v351 = v174;
    *(v174 + 16) = v514;
    *(v174 + 24) = v175;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v176 = swift_allocObject();
    v177 = v627;
    v178 = v628;
    v338 = v176;
    *(v176 + 16) = v641;
    *(v176 + 24) = v177;
    *(v176 + 32) = v178;

    v179 = swift_allocObject();
    v180 = v338;
    v353 = v179;
    *(v179 + 16) = v515;
    *(v179 + 24) = v180;

    v181 = swift_allocObject();
    v182 = v631;
    v356 = v181;
    *(v181 + 16) = v629;
    sub_1B07F200C(v182);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v183 = swift_allocObject();
    v184 = v631;
    v185 = v642;
    v339 = v183;
    v183[2] = v630;
    v183[3] = v184;
    v183[4] = v185;

    v186 = swift_allocObject();
    v187 = v339;
    v363 = v186;
    *(v186 + 16) = v516;
    *(v186 + 24) = v187;

    v398 = sub_1B0E43988();
    v399 = sub_1B0E458E8();
    v365 = swift_allocObject();
    v344 = 16;
    *(v365 + 16) = 16;
    v366 = swift_allocObject();
    v355 = 4;
    *(v366 + 16) = 4;
    v188 = swift_allocObject();
    v340 = v188;
    *(v188 + 16) = v517;
    *(v188 + 24) = 0;
    v189 = swift_allocObject();
    v190 = v340;
    v367 = v189;
    *(v189 + 16) = v518;
    *(v189 + 24) = v190;
    v368 = swift_allocObject();
    *(v368 + 16) = 0;
    v369 = swift_allocObject();
    *(v369 + 16) = v341;
    v191 = swift_allocObject();
    v192 = v342;
    v343 = v191;
    *(v191 + 16) = v519;
    *(v191 + 24) = v192;
    v193 = swift_allocObject();
    v194 = v343;
    v370 = v193;
    *(v193 + 16) = v520;
    *(v193 + 24) = v194;
    v371 = swift_allocObject();
    *(v371 + 16) = v344;
    v372 = swift_allocObject();
    *(v372 + 16) = v355;
    v195 = swift_allocObject();
    v345 = v195;
    *(v195 + 16) = v521;
    *(v195 + 24) = 0;
    v196 = swift_allocObject();
    v197 = v345;
    v373 = v196;
    *(v196 + 16) = v522;
    *(v196 + 24) = v197;
    v374 = swift_allocObject();
    *(v374 + 16) = 0;
    v375 = swift_allocObject();
    *(v375 + 16) = v355;
    v198 = swift_allocObject();
    v199 = v346;
    v347 = v198;
    *(v198 + 16) = v523;
    *(v198 + 24) = v199;
    v200 = swift_allocObject();
    v201 = v347;
    v376 = v200;
    *(v200 + 16) = v524;
    *(v200 + 24) = v201;
    v377 = swift_allocObject();
    *(v377 + 16) = 112;
    v378 = swift_allocObject();
    v360 = 8;
    *(v378 + 16) = 8;
    v348 = swift_allocObject();
    *(v348 + 16) = v525;
    v202 = swift_allocObject();
    v203 = v348;
    v379 = v202;
    *(v202 + 16) = v526;
    *(v202 + 24) = v203;
    v380 = swift_allocObject();
    *(v380 + 16) = 37;
    v381 = swift_allocObject();
    *(v381 + 16) = v360;
    v204 = swift_allocObject();
    v205 = v349;
    v350 = v204;
    *(v204 + 16) = v527;
    *(v204 + 24) = v205;
    v206 = swift_allocObject();
    v207 = v350;
    v382 = v206;
    *(v206 + 16) = v528;
    *(v206 + 24) = v207;
    v383 = swift_allocObject();
    v358 = 34;
    *(v383 + 16) = 34;
    v384 = swift_allocObject();
    *(v384 + 16) = v360;
    v208 = swift_allocObject();
    v209 = v351;
    v352 = v208;
    *(v208 + 16) = v529;
    *(v208 + 24) = v209;
    v210 = swift_allocObject();
    v211 = v352;
    v385 = v210;
    *(v210 + 16) = v530;
    *(v210 + 24) = v211;
    v386 = swift_allocObject();
    *(v386 + 16) = v358;
    v387 = swift_allocObject();
    *(v387 + 16) = v360;
    v212 = swift_allocObject();
    v213 = v353;
    v354 = v212;
    *(v212 + 16) = v531;
    *(v212 + 24) = v213;
    v214 = swift_allocObject();
    v215 = v354;
    v388 = v214;
    *(v214 + 16) = v532;
    *(v214 + 24) = v215;
    v389 = swift_allocObject();
    *(v389 + 16) = 0;
    v390 = swift_allocObject();
    *(v390 + 16) = v355;
    v216 = swift_allocObject();
    v217 = v356;
    v357 = v216;
    *(v216 + 16) = v533;
    *(v216 + 24) = v217;
    v218 = swift_allocObject();
    v219 = v357;
    v391 = v218;
    *(v218 + 16) = v534;
    *(v218 + 24) = v219;
    v392 = swift_allocObject();
    *(v392 + 16) = v358;
    v393 = swift_allocObject();
    *(v393 + 16) = v360;
    v220 = swift_allocObject();
    v221 = v363;
    v364 = v220;
    *(v220 + 16) = v535;
    *(v220 + 24) = v221;
    v222 = swift_allocObject();
    v223 = v364;
    v395 = v222;
    *(v222 + 16) = v536;
    *(v222 + 24) = v223;
    v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v394 = sub_1B0E46A48();
    v396 = v224;

    v225 = v365;
    v226 = v396;
    *v396 = v537;
    v226[1] = v225;

    v227 = v366;
    v228 = v396;
    v396[2] = v538;
    v228[3] = v227;

    v229 = v367;
    v230 = v396;
    v396[4] = v539;
    v230[5] = v229;

    v231 = v368;
    v232 = v396;
    v396[6] = v540;
    v232[7] = v231;

    v233 = v369;
    v234 = v396;
    v396[8] = v541;
    v234[9] = v233;

    v235 = v370;
    v236 = v396;
    v396[10] = v542;
    v236[11] = v235;

    v237 = v371;
    v238 = v396;
    v396[12] = v543;
    v238[13] = v237;

    v239 = v372;
    v240 = v396;
    v396[14] = v544;
    v240[15] = v239;

    v241 = v373;
    v242 = v396;
    v396[16] = v545;
    v242[17] = v241;

    v243 = v374;
    v244 = v396;
    v396[18] = v546;
    v244[19] = v243;

    v245 = v375;
    v246 = v396;
    v396[20] = v547;
    v246[21] = v245;

    v247 = v376;
    v248 = v396;
    v396[22] = v548;
    v248[23] = v247;

    v249 = v377;
    v250 = v396;
    v396[24] = v549;
    v250[25] = v249;

    v251 = v378;
    v252 = v396;
    v396[26] = v550;
    v252[27] = v251;

    v253 = v379;
    v254 = v396;
    v396[28] = v551;
    v254[29] = v253;

    v255 = v380;
    v256 = v396;
    v396[30] = v552;
    v256[31] = v255;

    v257 = v381;
    v258 = v396;
    v396[32] = v553;
    v258[33] = v257;

    v259 = v382;
    v260 = v396;
    v396[34] = v554;
    v260[35] = v259;

    v261 = v383;
    v262 = v396;
    v396[36] = v555;
    v262[37] = v261;

    v263 = v384;
    v264 = v396;
    v396[38] = v556;
    v264[39] = v263;

    v265 = v385;
    v266 = v396;
    v396[40] = v557;
    v266[41] = v265;

    v267 = v386;
    v268 = v396;
    v396[42] = v558;
    v268[43] = v267;

    v269 = v387;
    v270 = v396;
    v396[44] = v559;
    v270[45] = v269;

    v271 = v388;
    v272 = v396;
    v396[46] = v560;
    v272[47] = v271;

    v273 = v389;
    v274 = v396;
    v396[48] = v561;
    v274[49] = v273;

    v275 = v390;
    v276 = v396;
    v396[50] = v562;
    v276[51] = v275;

    v277 = v391;
    v278 = v396;
    v396[52] = v563;
    v278[53] = v277;

    v279 = v392;
    v280 = v396;
    v396[54] = v564;
    v280[55] = v279;

    v281 = v393;
    v282 = v396;
    v396[56] = v565;
    v282[57] = v281;

    v283 = v395;
    v284 = v396;
    v396[58] = v566;
    v284[59] = v283;
    sub_1B0394964();

    if (os_log_type_enabled(v398, v399))
    {
      v285 = v618;
      v324 = sub_1B0E45D78();
      v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v325 = sub_1B03949A8(0, v323, v323);
      v326 = sub_1B03949A8(4, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v327 = &v655;
      v655 = v324;
      v328 = &v654;
      v654 = v325;
      v329 = &v653;
      v653 = v326;
      sub_1B0394A48(3, &v655);
      sub_1B0394A48(10, v327);
      v651 = v537;
      v652 = v365;
      sub_1B03949FC(&v651, v327, v328, v329);
      v330 = v285;
      if (v285)
      {

        __break(1u);
      }

      else
      {
        v651 = v538;
        v652 = v366;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v322 = 0;
        v651 = v539;
        v652 = v367;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v321 = 0;
        v651 = v540;
        v652 = v368;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v320 = 0;
        v651 = v541;
        v652 = v369;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v319 = 0;
        v651 = v542;
        v652 = v370;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v318 = 0;
        v651 = v543;
        v652 = v371;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v317 = 0;
        v651 = v544;
        v652 = v372;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v316 = 0;
        v651 = v545;
        v652 = v373;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v315 = 0;
        v651 = v546;
        v652 = v374;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v314 = 0;
        v651 = v547;
        v652 = v375;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v313 = 0;
        v651 = v548;
        v652 = v376;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v312 = 0;
        v651 = v549;
        v652 = v377;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v311 = 0;
        v651 = v550;
        v652 = v378;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v310 = 0;
        v651 = v551;
        v652 = v379;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v309 = 0;
        v651 = v552;
        v652 = v380;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v308 = 0;
        v651 = v553;
        v652 = v381;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v307 = 0;
        v651 = v554;
        v652 = v382;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v306 = 0;
        v651 = v555;
        v652 = v383;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v305 = 0;
        v651 = v556;
        v652 = v384;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v304 = 0;
        v651 = v557;
        v652 = v385;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v303 = 0;
        v651 = v558;
        v652 = v386;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v302 = 0;
        v651 = v559;
        v652 = v387;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v301 = 0;
        v651 = v560;
        v652 = v388;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v300 = 0;
        v651 = v561;
        v652 = v389;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v299 = 0;
        v651 = v562;
        v652 = v390;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v298 = 0;
        v651 = v563;
        v652 = v391;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v297 = 0;
        v651 = v564;
        v652 = v392;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v296 = 0;
        v651 = v565;
        v652 = v393;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        v295 = 0;
        v651 = v566;
        v652 = v395;
        sub_1B03949FC(&v651, &v655, &v654, &v653);
        _os_log_impl(&dword_1B0389000, v398, v399, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Failed to parse bodystructure from server. Falling back to downloading complete message. Download pass: %{public}s, user initiated: %{public}s, message size: %u, missing parts: %{public}s", v324, 0x4Fu);
        sub_1B03998A8(v325, 0, v323);
        sub_1B03998A8(v326, 4, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v398);
    (*(v636 + 8))(v640, v635);
    v293 = &type metadata for SectionSpecifier.Part;
    v292 = sub_1B0E46A48();
    v291 = v286;
    sub_1B0E46A48();
    SectionSpecifier.Part.init(arrayLiteral:)();
    *v291 = v287;
    sub_1B0394964();
    v294 = v288;
    sub_1B07167A8();
    return sub_1B0E45438();
  }

  else
  {
    memcpy(__dst, v667, 0xB1uLL);
    sub_1B07169CC(__dst, &v650);
    if (BodyStructure.containsMultipartPartWithMissingBoundary.getter())
    {
      (*(v636 + 16))(v643, v632, v635);
      sub_1B074B69C(v632, v626);
      sub_1B074B69C(v626, v624);
      sub_1B074E41C(v626, v622);
      v25 = (v624 + *(v620 + 20));
      v443 = *v25;
      v444 = *(v25 + 1);
      v445 = *(v25 + 1);
      v446 = *(v25 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v624);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v442 = 36;
      v472 = 7;
      v26 = swift_allocObject();
      v27 = v444;
      v28 = v445;
      v29 = v446;
      v452 = v26;
      *(v26 + 16) = v443;
      *(v26 + 20) = v27;
      *(v26 + 24) = v28;
      *(v26 + 32) = v29;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v30 = swift_allocObject();
      v31 = v444;
      v32 = v445;
      v33 = v446;
      v441 = v30;
      *(v30 + 16) = v443;
      *(v30 + 20) = v31;
      *(v30 + 24) = v32;
      *(v30 + 32) = v33;

      v471 = 32;
      v34 = swift_allocObject();
      v35 = v441;
      v456 = v34;
      *(v34 + 16) = v567;
      *(v34 + 24) = v35;
      sub_1B0394868();
      sub_1B0394868();

      v36 = swift_allocObject();
      v37 = v444;
      v38 = v445;
      v39 = v446;
      v40 = v36;
      v41 = v622;
      v459 = v40;
      *(v40 + 16) = v443;
      *(v40 + 20) = v37;
      *(v40 + 24) = v38;
      *(v40 + 32) = v39;
      sub_1B074B764(v41);
      v469 = 17;
      v447 = swift_allocObject();
      v451 = 1;
      *(v447 + 16) = v634 & 1;

      v42 = swift_allocObject();
      v43 = v447;
      v461 = v42;
      *(v42 + 16) = v568;
      *(v42 + 24) = v43;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v44 = swift_allocObject();
      v45 = v627;
      v46 = v628;
      v448 = v44;
      *(v44 + 16) = v641;
      *(v44 + 24) = v45;
      *(v44 + 32) = v46;

      v47 = swift_allocObject();
      v48 = v448;
      v463 = v47;
      *(v47 + 16) = v569;
      *(v47 + 24) = v48;

      v49 = swift_allocObject();
      v50 = v631;
      v466 = v49;
      *(v49 + 16) = v629;
      sub_1B07F200C(v50);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v51 = swift_allocObject();
      v52 = v631;
      v53 = v642;
      v449 = v51;
      v51[2] = v630;
      v51[3] = v52;
      v51[4] = v53;

      v54 = swift_allocObject();
      v55 = v449;
      v473 = v54;
      *(v54 + 16) = v570;
      *(v54 + 24) = v55;

      v508 = sub_1B0E43988();
      v509 = sub_1B0E458E8();
      v475 = swift_allocObject();
      v454 = 16;
      *(v475 + 16) = 16;
      v476 = swift_allocObject();
      v465 = 4;
      *(v476 + 16) = 4;
      v56 = swift_allocObject();
      v450 = v56;
      *(v56 + 16) = v517;
      *(v56 + 24) = 0;
      v57 = swift_allocObject();
      v58 = v450;
      v477 = v57;
      *(v57 + 16) = v571;
      *(v57 + 24) = v58;
      v478 = swift_allocObject();
      *(v478 + 16) = 0;
      v479 = swift_allocObject();
      *(v479 + 16) = v451;
      v59 = swift_allocObject();
      v60 = v452;
      v453 = v59;
      *(v59 + 16) = v572;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v453;
      v480 = v61;
      *(v61 + 16) = v573;
      *(v61 + 24) = v62;
      v481 = swift_allocObject();
      *(v481 + 16) = v454;
      v482 = swift_allocObject();
      *(v482 + 16) = v465;
      v63 = swift_allocObject();
      v455 = v63;
      *(v63 + 16) = v521;
      *(v63 + 24) = 0;
      v64 = swift_allocObject();
      v65 = v455;
      v483 = v64;
      *(v64 + 16) = v574;
      *(v64 + 24) = v65;
      v484 = swift_allocObject();
      *(v484 + 16) = 0;
      v485 = swift_allocObject();
      *(v485 + 16) = v465;
      v66 = swift_allocObject();
      v67 = v456;
      v457 = v66;
      *(v66 + 16) = v575;
      *(v66 + 24) = v67;
      v68 = swift_allocObject();
      v69 = v457;
      v486 = v68;
      *(v68 + 16) = v576;
      *(v68 + 24) = v69;
      v487 = swift_allocObject();
      *(v487 + 16) = 112;
      v488 = swift_allocObject();
      v470 = 8;
      *(v488 + 16) = 8;
      v458 = swift_allocObject();
      *(v458 + 16) = v525;
      v70 = swift_allocObject();
      v71 = v458;
      v489 = v70;
      *(v70 + 16) = v577;
      *(v70 + 24) = v71;
      v490 = swift_allocObject();
      *(v490 + 16) = 37;
      v491 = swift_allocObject();
      *(v491 + 16) = v470;
      v72 = swift_allocObject();
      v73 = v459;
      v460 = v72;
      *(v72 + 16) = v578;
      *(v72 + 24) = v73;
      v74 = swift_allocObject();
      v75 = v460;
      v492 = v74;
      *(v74 + 16) = v579;
      *(v74 + 24) = v75;
      v493 = swift_allocObject();
      v468 = 34;
      *(v493 + 16) = 34;
      v494 = swift_allocObject();
      *(v494 + 16) = v470;
      v76 = swift_allocObject();
      v77 = v461;
      v462 = v76;
      *(v76 + 16) = v580;
      *(v76 + 24) = v77;
      v78 = swift_allocObject();
      v79 = v462;
      v495 = v78;
      *(v78 + 16) = v581;
      *(v78 + 24) = v79;
      v496 = swift_allocObject();
      *(v496 + 16) = v468;
      v497 = swift_allocObject();
      *(v497 + 16) = v470;
      v80 = swift_allocObject();
      v81 = v463;
      v464 = v80;
      *(v80 + 16) = v582;
      *(v80 + 24) = v81;
      v82 = swift_allocObject();
      v83 = v464;
      v498 = v82;
      *(v82 + 16) = v583;
      *(v82 + 24) = v83;
      v499 = swift_allocObject();
      *(v499 + 16) = 0;
      v500 = swift_allocObject();
      *(v500 + 16) = v465;
      v84 = swift_allocObject();
      v85 = v466;
      v467 = v84;
      *(v84 + 16) = v584;
      *(v84 + 24) = v85;
      v86 = swift_allocObject();
      v87 = v467;
      v501 = v86;
      *(v86 + 16) = v585;
      *(v86 + 24) = v87;
      v502 = swift_allocObject();
      *(v502 + 16) = v468;
      v503 = swift_allocObject();
      *(v503 + 16) = v470;
      v88 = swift_allocObject();
      v89 = v473;
      v474 = v88;
      *(v88 + 16) = v586;
      *(v88 + 24) = v89;
      v90 = swift_allocObject();
      v91 = v474;
      v505 = v90;
      *(v90 + 16) = v587;
      *(v90 + 24) = v91;
      v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v504 = sub_1B0E46A48();
      v506 = v92;

      v93 = v475;
      v94 = v506;
      *v506 = v588;
      v94[1] = v93;

      v95 = v476;
      v96 = v506;
      v506[2] = v589;
      v96[3] = v95;

      v97 = v477;
      v98 = v506;
      v506[4] = v590;
      v98[5] = v97;

      v99 = v478;
      v100 = v506;
      v506[6] = v591;
      v100[7] = v99;

      v101 = v479;
      v102 = v506;
      v506[8] = v592;
      v102[9] = v101;

      v103 = v480;
      v104 = v506;
      v506[10] = v593;
      v104[11] = v103;

      v105 = v481;
      v106 = v506;
      v506[12] = v594;
      v106[13] = v105;

      v107 = v482;
      v108 = v506;
      v506[14] = v595;
      v108[15] = v107;

      v109 = v483;
      v110 = v506;
      v506[16] = v596;
      v110[17] = v109;

      v111 = v484;
      v112 = v506;
      v506[18] = v597;
      v112[19] = v111;

      v113 = v485;
      v114 = v506;
      v506[20] = v598;
      v114[21] = v113;

      v115 = v486;
      v116 = v506;
      v506[22] = v599;
      v116[23] = v115;

      v117 = v487;
      v118 = v506;
      v506[24] = v600;
      v118[25] = v117;

      v119 = v488;
      v120 = v506;
      v506[26] = v601;
      v120[27] = v119;

      v121 = v489;
      v122 = v506;
      v506[28] = v602;
      v122[29] = v121;

      v123 = v490;
      v124 = v506;
      v506[30] = v603;
      v124[31] = v123;

      v125 = v491;
      v126 = v506;
      v506[32] = v604;
      v126[33] = v125;

      v127 = v492;
      v128 = v506;
      v506[34] = v605;
      v128[35] = v127;

      v129 = v493;
      v130 = v506;
      v506[36] = v606;
      v130[37] = v129;

      v131 = v494;
      v132 = v506;
      v506[38] = v607;
      v132[39] = v131;

      v133 = v495;
      v134 = v506;
      v506[40] = v608;
      v134[41] = v133;

      v135 = v496;
      v136 = v506;
      v506[42] = v609;
      v136[43] = v135;

      v137 = v497;
      v138 = v506;
      v506[44] = v610;
      v138[45] = v137;

      v139 = v498;
      v140 = v506;
      v506[46] = v611;
      v140[47] = v139;

      v141 = v499;
      v142 = v506;
      v506[48] = v612;
      v142[49] = v141;

      v143 = v500;
      v144 = v506;
      v506[50] = v613;
      v144[51] = v143;

      v145 = v501;
      v146 = v506;
      v506[52] = v614;
      v146[53] = v145;

      v147 = v502;
      v148 = v506;
      v506[54] = v615;
      v148[55] = v147;

      v149 = v503;
      v150 = v506;
      v506[56] = v616;
      v150[57] = v149;

      v151 = v505;
      v152 = v506;
      v506[58] = v617;
      v152[59] = v151;
      sub_1B0394964();

      if (os_log_type_enabled(v508, v509))
      {
        v153 = v618;
        v434 = sub_1B0E45D78();
        v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v435 = sub_1B03949A8(0, v433, v433);
        v436 = sub_1B03949A8(4, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v437 = &v649;
        v649 = v434;
        v438 = &v648;
        v648 = v435;
        v439 = &v647;
        v647 = v436;
        sub_1B0394A48(3, &v649);
        sub_1B0394A48(10, v437);
        v645 = v588;
        v646 = v475;
        sub_1B03949FC(&v645, v437, v438, v439);
        v440 = v153;
        if (v153)
        {

          __break(1u);
        }

        else
        {
          v645 = v589;
          v646 = v476;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v432 = 0;
          v645 = v590;
          v646 = v477;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v431 = 0;
          v645 = v591;
          v646 = v478;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v430 = 0;
          v645 = v592;
          v646 = v479;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v429 = 0;
          v645 = v593;
          v646 = v480;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v428 = 0;
          v645 = v594;
          v646 = v481;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v427 = 0;
          v645 = v595;
          v646 = v482;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v426 = 0;
          v645 = v596;
          v646 = v483;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v425 = 0;
          v645 = v597;
          v646 = v484;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v424 = 0;
          v645 = v598;
          v646 = v485;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v423 = 0;
          v645 = v599;
          v646 = v486;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v422 = 0;
          v645 = v600;
          v646 = v487;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v421 = 0;
          v645 = v601;
          v646 = v488;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v420 = 0;
          v645 = v602;
          v646 = v489;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v419 = 0;
          v645 = v603;
          v646 = v490;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v418 = 0;
          v645 = v604;
          v646 = v491;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v417 = 0;
          v645 = v605;
          v646 = v492;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v416 = 0;
          v645 = v606;
          v646 = v493;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v415 = 0;
          v645 = v607;
          v646 = v494;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v414 = 0;
          v645 = v608;
          v646 = v495;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v413 = 0;
          v645 = v609;
          v646 = v496;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v412 = 0;
          v645 = v610;
          v646 = v497;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v411 = 0;
          v645 = v611;
          v646 = v498;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v410 = 0;
          v645 = v612;
          v646 = v499;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v409 = 0;
          v645 = v613;
          v646 = v500;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v408 = 0;
          v645 = v614;
          v646 = v501;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v407 = 0;
          v645 = v615;
          v646 = v502;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v406 = 0;
          v645 = v616;
          v646 = v503;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          v405 = 0;
          v645 = v617;
          v646 = v505;
          sub_1B03949FC(&v645, &v649, &v648, &v647);
          _os_log_impl(&dword_1B0389000, v508, v509, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] bodystructure is missing boundary info for some or all multipart parts. Download pass: %{public}s, user initiated: %{public}s, message size: %u, missing parts: %{public}s", v434, 0x4Fu);
          sub_1B03998A8(v435, 0, v433);
          sub_1B03998A8(v436, 4, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v508);
      (*(v636 + 8))(v643, v635);
      v402 = &type metadata for SectionSpecifier.Part;
      v401 = sub_1B0E46A48();
      v400 = v154;
      sub_1B0E46A48();
      SectionSpecifier.Part.init(arrayLiteral:)();
      *v400 = v155;
      sub_1B0394964();
      v403 = v156;
      sub_1B07167A8();
      v404 = sub_1B0E45438();
      sub_1B075E648(__dst);
      return v404;
    }

    else
    {
      v510 = __dst;
      v511 = sub_1B07EA65C(v634 & 1, v641, v627, v628 & 1, v629, __dst, v630, v631, v642, v632);
      sub_1B075E648(v510);
      return v511;
    }
  }
}

uint64_t sub_1B07EA5B4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a1;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1B07EA604@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1B07F200C(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a1;
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1B07EA65C(int a1, unsigned int a2, uint64_t a3, int a4, unsigned int a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v216 = a1;
  v219 = a2;
  v220 = a3;
  v221 = a4;
  v224 = a5;
  v193 = a6;
  v225 = a7;
  v226 = a8;
  v227 = a9;
  v200 = a10;
  v204 = sub_1B074E050;
  v213 = sub_1B07F2168;
  v217 = sub_1B07F1F68;
  v222 = sub_1B07F1F80;
  v228 = sub_1B07F2048;
  v230 = sub_1B0394C30;
  v231 = sub_1B0394C24;
  v234 = sub_1B074DFFC;
  v236 = sub_1B039BA88;
  v239 = sub_1B039BB94;
  v240 = sub_1B0394C24;
  v242 = sub_1B039BBA0;
  v244 = sub_1B039BC08;
  v247 = sub_1B06BA324;
  v249 = sub_1B074E0E4;
  v251 = sub_1B039BCF8;
  v253 = sub_1B07F2160;
  v255 = sub_1B039BCF8;
  v257 = sub_1B07F2170;
  v259 = sub_1B039BCF8;
  v261 = sub_1B07F1F74;
  v263 = sub_1B039BCF8;
  v265 = sub_1B03FB274;
  v267 = sub_1B039BCF8;
  v270 = sub_1B03F7AE0;
  v272 = sub_1B039BC08;
  v277 = sub_1B07F2058;
  v281 = sub_1B039BCF8;
  v284 = sub_1B0398F5C;
  v286 = sub_1B0398F5C;
  v288 = sub_1B0399178;
  v290 = sub_1B0398F5C;
  v292 = sub_1B0398F5C;
  v294 = sub_1B039BA94;
  v296 = sub_1B0398F5C;
  v298 = sub_1B0398F5C;
  v300 = sub_1B0399178;
  v302 = sub_1B0398F5C;
  v304 = sub_1B0398F5C;
  v306 = sub_1B03991EC;
  v308 = sub_1B0398F5C;
  v310 = sub_1B0398F5C;
  v312 = sub_1B03993BC;
  v314 = sub_1B0398F5C;
  v316 = sub_1B0398F5C;
  v318 = sub_1B039BCEC;
  v320 = sub_1B0398F5C;
  v322 = sub_1B0398F5C;
  v324 = sub_1B039BCEC;
  v326 = sub_1B0398F5C;
  v328 = sub_1B0398F5C;
  v330 = sub_1B039BCEC;
  v332 = sub_1B0398F5C;
  v334 = sub_1B0398F5C;
  v336 = sub_1B039BCEC;
  v338 = sub_1B0398F5C;
  v340 = sub_1B0398F5C;
  v342 = sub_1B039BCEC;
  v344 = sub_1B0398F5C;
  v346 = sub_1B0398F5C;
  v348 = sub_1B03991EC;
  v350 = sub_1B0398F5C;
  v352 = sub_1B0398F5C;
  v355 = sub_1B039BCEC;
  v378 = 0;
  v375 = 0;
  v376 = 0;
  v377 = 0;
  v374 = 0;
  v373 = 0;
  v370 = 0;
  v371 = 0;
  v372 = 0;
  v369 = 0;
  v368 = 0;
  v367 = 0;
  v366 = 0;
  v187 = 0;
  v188 = 0;
  v202 = _s6LoggerVMa_1(0);
  v189 = (*(*(v202 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v210 = v178 - v189;
  v190 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v203 = v178 - v190;
  v191 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v201 = v178 - v191;
  v199 = sub_1B0E439A8();
  v197 = *(v199 - 8);
  v198 = v199 - 8;
  MEMORY[0x1EEE9AC00](v220);
  v194 = v178 - v15;
  v233 = 1;
  v215 = 1;
  v378 = v216 & 1;
  LOBYTE(v375) = v16;
  v376 = v17;
  v377 = v18;
  v374 = v19;
  v373 = v20;
  v370 = v21;
  v371 = v22;
  v372 = v227;
  v369 = v23;
  v368 = v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07F200C(v226);
  v192 = sub_1B07F3E0C(v226);
  sub_1B07F2124(v226);
  v212 = sub_1B07ED894(v216 & 1, v219, v220, v221 & 1, v192);
  v367 = v212;
  v195 = sub_1B07EDA4C(v212, v224, v193, v219, v220, v221 & 1, v225, v226, v227);
  v24 = sub_1B07166F8();
  v25 = v194;
  v196 = v24;
  sub_1B07167A8();
  v211 = sub_1B0E45418();

  v366 = v211;
  (*(v197 + 16))(v25, v200, v199);
  sub_1B074B69C(v200, v201);
  sub_1B074B69C(v201, v203);
  sub_1B074E41C(v201, v210);
  v26 = (v203 + *(v202 + 20));
  v206 = *v26;
  v207 = *(v26 + 1);
  v208 = *(v26 + 1);
  v209 = *(v26 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v203);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v283 = 36;
  v279 = 7;
  v27 = swift_allocObject();
  v28 = v207;
  v29 = v208;
  v30 = v209;
  v235 = v27;
  *(v27 + 16) = v206;
  *(v27 + 20) = v28;
  *(v27 + 24) = v29;
  *(v27 + 32) = v30;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = swift_allocObject();
  v32 = v207;
  v33 = v208;
  v34 = v209;
  v205 = v31;
  *(v31 + 16) = v206;
  *(v31 + 20) = v32;
  *(v31 + 24) = v33;
  *(v31 + 32) = v34;

  v278 = 32;
  v35 = swift_allocObject();
  v36 = v205;
  v243 = v35;
  *(v35 + 16) = v204;
  *(v35 + 24) = v36;
  sub_1B0394868();
  sub_1B0394868();

  v37 = swift_allocObject();
  v38 = v207;
  v39 = v208;
  v40 = v209;
  v41 = v37;
  v42 = v210;
  v250 = v41;
  *(v41 + 16) = v206;
  *(v41 + 20) = v38;
  *(v41 + 24) = v39;
  *(v41 + 32) = v40;
  sub_1B074B764(v42);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v246 = 24;
  v254 = swift_allocObject();
  *(v254 + 16) = v211;
  v275 = 17;
  v214 = swift_allocObject();
  *(v214 + 16) = v212;

  v43 = swift_allocObject();
  v44 = v214;
  v258 = v43;
  *(v43 + 16) = v213;
  *(v43 + 24) = v44;

  v218 = swift_allocObject();
  *(v218 + 16) = v216 & v215;

  v45 = swift_allocObject();
  v46 = v218;
  v262 = v45;
  *(v45 + 16) = v217;
  *(v45 + 24) = v46;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47 = swift_allocObject();
  v48 = v220;
  v49 = v221;
  v223 = v47;
  *(v47 + 16) = v219;
  *(v47 + 24) = v48;
  *(v47 + 32) = v49;

  v50 = swift_allocObject();
  v51 = v223;
  v266 = v50;
  *(v50 + 16) = v222;
  *(v50 + 24) = v51;

  v52 = swift_allocObject();
  v53 = v226;
  v271 = v52;
  *(v52 + 16) = v224;
  sub_1B07F200C(v53);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v54 = swift_allocObject();
  v55 = v226;
  v56 = v227;
  v229 = v54;
  v54[2] = v225;
  v54[3] = v55;
  v54[4] = v56;

  v57 = swift_allocObject();
  v58 = v229;
  v280 = v57;
  *(v57 + 16) = v228;
  *(v57 + 24) = v58;

  v359 = sub_1B0E43988();
  v360 = sub_1B0E458D8();
  v285 = swift_allocObject();
  v238 = 16;
  *(v285 + 16) = 16;
  v287 = swift_allocObject();
  v269 = 4;
  *(v287 + 16) = 4;
  v59 = swift_allocObject();
  v232 = v59;
  *(v59 + 16) = v230;
  *(v59 + 24) = 0;
  v60 = swift_allocObject();
  v61 = v232;
  v289 = v60;
  *(v60 + 16) = v231;
  *(v60 + 24) = v61;
  v291 = swift_allocObject();
  *(v291 + 16) = 0;
  v293 = swift_allocObject();
  *(v293 + 16) = v233;
  v62 = swift_allocObject();
  v63 = v235;
  v237 = v62;
  *(v62 + 16) = v234;
  *(v62 + 24) = v63;
  v64 = swift_allocObject();
  v65 = v237;
  v295 = v64;
  *(v64 + 16) = v236;
  *(v64 + 24) = v65;
  v297 = swift_allocObject();
  *(v297 + 16) = v238;
  v299 = swift_allocObject();
  *(v299 + 16) = v269;
  v66 = swift_allocObject();
  v241 = v66;
  *(v66 + 16) = v239;
  *(v66 + 24) = 0;
  v67 = swift_allocObject();
  v68 = v241;
  v301 = v67;
  *(v67 + 16) = v240;
  *(v67 + 24) = v68;
  v303 = swift_allocObject();
  *(v303 + 16) = 0;
  v305 = swift_allocObject();
  *(v305 + 16) = v269;
  v69 = swift_allocObject();
  v70 = v243;
  v245 = v69;
  *(v69 + 16) = v242;
  *(v69 + 24) = v70;
  v71 = swift_allocObject();
  v72 = v245;
  v307 = v71;
  *(v71 + 16) = v244;
  *(v71 + 24) = v72;
  v309 = swift_allocObject();
  *(v309 + 16) = 112;
  v311 = swift_allocObject();
  v276 = 8;
  *(v311 + 16) = 8;
  v248 = swift_allocObject();
  *(v248 + 16) = 0x786F626C69616DLL;
  v73 = swift_allocObject();
  v74 = v248;
  v313 = v73;
  *(v73 + 16) = v247;
  *(v73 + 24) = v74;
  v315 = swift_allocObject();
  *(v315 + 16) = 37;
  v317 = swift_allocObject();
  *(v317 + 16) = v276;
  v75 = swift_allocObject();
  v76 = v250;
  v252 = v75;
  *(v75 + 16) = v249;
  *(v75 + 24) = v76;
  v77 = swift_allocObject();
  v78 = v252;
  v319 = v77;
  *(v77 + 16) = v251;
  *(v77 + 24) = v78;
  v321 = swift_allocObject();
  *(v321 + 16) = 32;
  v323 = swift_allocObject();
  *(v323 + 16) = v276;
  v79 = swift_allocObject();
  v80 = v254;
  v256 = v79;
  *(v79 + 16) = v253;
  *(v79 + 24) = v80;
  v81 = swift_allocObject();
  v82 = v256;
  v325 = v81;
  *(v81 + 16) = v255;
  *(v81 + 24) = v82;
  v327 = swift_allocObject();
  v274 = 34;
  *(v327 + 16) = 34;
  v329 = swift_allocObject();
  *(v329 + 16) = v276;
  v83 = swift_allocObject();
  v84 = v258;
  v260 = v83;
  *(v83 + 16) = v257;
  *(v83 + 24) = v84;
  v85 = swift_allocObject();
  v86 = v260;
  v331 = v85;
  *(v85 + 16) = v259;
  *(v85 + 24) = v86;
  v333 = swift_allocObject();
  *(v333 + 16) = v274;
  v335 = swift_allocObject();
  *(v335 + 16) = v276;
  v87 = swift_allocObject();
  v88 = v262;
  v264 = v87;
  *(v87 + 16) = v261;
  *(v87 + 24) = v88;
  v89 = swift_allocObject();
  v90 = v264;
  v337 = v89;
  *(v89 + 16) = v263;
  *(v89 + 24) = v90;
  v339 = swift_allocObject();
  *(v339 + 16) = v274;
  v341 = swift_allocObject();
  *(v341 + 16) = v276;
  v91 = swift_allocObject();
  v92 = v266;
  v268 = v91;
  *(v91 + 16) = v265;
  *(v91 + 24) = v92;
  v93 = swift_allocObject();
  v94 = v268;
  v343 = v93;
  *(v93 + 16) = v267;
  *(v93 + 24) = v94;
  v345 = swift_allocObject();
  *(v345 + 16) = 0;
  v347 = swift_allocObject();
  *(v347 + 16) = v269;
  v95 = swift_allocObject();
  v96 = v271;
  v273 = v95;
  *(v95 + 16) = v270;
  *(v95 + 24) = v96;
  v97 = swift_allocObject();
  v98 = v273;
  v349 = v97;
  *(v97 + 16) = v272;
  *(v97 + 24) = v98;
  v351 = swift_allocObject();
  *(v351 + 16) = v274;
  v353 = swift_allocObject();
  *(v353 + 16) = v276;
  v99 = swift_allocObject();
  v100 = v280;
  v282 = v99;
  *(v99 + 16) = v277;
  *(v99 + 24) = v100;
  v101 = swift_allocObject();
  v102 = v282;
  v356 = v101;
  *(v101 + 16) = v281;
  *(v101 + 24) = v102;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v354 = sub_1B0E46A48();
  v357 = v103;

  v104 = v285;
  v105 = v357;
  *v357 = v284;
  v105[1] = v104;

  v106 = v287;
  v107 = v357;
  v357[2] = v286;
  v107[3] = v106;

  v108 = v289;
  v109 = v357;
  v357[4] = v288;
  v109[5] = v108;

  v110 = v291;
  v111 = v357;
  v357[6] = v290;
  v111[7] = v110;

  v112 = v293;
  v113 = v357;
  v357[8] = v292;
  v113[9] = v112;

  v114 = v295;
  v115 = v357;
  v357[10] = v294;
  v115[11] = v114;

  v116 = v297;
  v117 = v357;
  v357[12] = v296;
  v117[13] = v116;

  v118 = v299;
  v119 = v357;
  v357[14] = v298;
  v119[15] = v118;

  v120 = v301;
  v121 = v357;
  v357[16] = v300;
  v121[17] = v120;

  v122 = v303;
  v123 = v357;
  v357[18] = v302;
  v123[19] = v122;

  v124 = v305;
  v125 = v357;
  v357[20] = v304;
  v125[21] = v124;

  v126 = v307;
  v127 = v357;
  v357[22] = v306;
  v127[23] = v126;

  v128 = v309;
  v129 = v357;
  v357[24] = v308;
  v129[25] = v128;

  v130 = v311;
  v131 = v357;
  v357[26] = v310;
  v131[27] = v130;

  v132 = v313;
  v133 = v357;
  v357[28] = v312;
  v133[29] = v132;

  v134 = v315;
  v135 = v357;
  v357[30] = v314;
  v135[31] = v134;

  v136 = v317;
  v137 = v357;
  v357[32] = v316;
  v137[33] = v136;

  v138 = v319;
  v139 = v357;
  v357[34] = v318;
  v139[35] = v138;

  v140 = v321;
  v141 = v357;
  v357[36] = v320;
  v141[37] = v140;

  v142 = v323;
  v143 = v357;
  v357[38] = v322;
  v143[39] = v142;

  v144 = v325;
  v145 = v357;
  v357[40] = v324;
  v145[41] = v144;

  v146 = v327;
  v147 = v357;
  v357[42] = v326;
  v147[43] = v146;

  v148 = v329;
  v149 = v357;
  v357[44] = v328;
  v149[45] = v148;

  v150 = v331;
  v151 = v357;
  v357[46] = v330;
  v151[47] = v150;

  v152 = v333;
  v153 = v357;
  v357[48] = v332;
  v153[49] = v152;

  v154 = v335;
  v155 = v357;
  v357[50] = v334;
  v155[51] = v154;

  v156 = v337;
  v157 = v357;
  v357[52] = v336;
  v157[53] = v156;

  v158 = v339;
  v159 = v357;
  v357[54] = v338;
  v159[55] = v158;

  v160 = v341;
  v161 = v357;
  v357[56] = v340;
  v161[57] = v160;

  v162 = v343;
  v163 = v357;
  v357[58] = v342;
  v163[59] = v162;

  v164 = v345;
  v165 = v357;
  v357[60] = v344;
  v165[61] = v164;

  v166 = v347;
  v167 = v357;
  v357[62] = v346;
  v167[63] = v166;

  v168 = v349;
  v169 = v357;
  v357[64] = v348;
  v169[65] = v168;

  v170 = v351;
  v171 = v357;
  v357[66] = v350;
  v171[67] = v170;

  v172 = v353;
  v173 = v357;
  v357[68] = v352;
  v173[69] = v172;

  v174 = v356;
  v175 = v357;
  v357[70] = v355;
  v175[71] = v174;
  sub_1B0394964();

  if (os_log_type_enabled(v359, v360))
  {
    v176 = v187;
    v180 = sub_1B0E45D78();
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v181 = sub_1B03949A8(0, v179, v179);
    v182 = sub_1B03949A8(6, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v183 = &v365;
    v365 = v180;
    v184 = &v364;
    v364 = v181;
    v185 = &v363;
    v363 = v182;
    sub_1B0394A48(3, &v365);
    sub_1B0394A48(12, v183);
    v361 = v284;
    v362 = v285;
    sub_1B03949FC(&v361, v183, v184, v185);
    v186 = v176;
    if (v176)
    {

      __break(1u);
    }

    else
    {
      v361 = v286;
      v362 = v287;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[34] = 0;
      v361 = v288;
      v362 = v289;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[33] = 0;
      v361 = v290;
      v362 = v291;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[32] = 0;
      v361 = v292;
      v362 = v293;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[31] = 0;
      v361 = v294;
      v362 = v295;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[30] = 0;
      v361 = v296;
      v362 = v297;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[29] = 0;
      v361 = v298;
      v362 = v299;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[28] = 0;
      v361 = v300;
      v362 = v301;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[27] = 0;
      v361 = v302;
      v362 = v303;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[26] = 0;
      v361 = v304;
      v362 = v305;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[25] = 0;
      v361 = v306;
      v362 = v307;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[24] = 0;
      v361 = v308;
      v362 = v309;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[23] = 0;
      v361 = v310;
      v362 = v311;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[22] = 0;
      v361 = v312;
      v362 = v313;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[21] = 0;
      v361 = v314;
      v362 = v315;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[20] = 0;
      v361 = v316;
      v362 = v317;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[19] = 0;
      v361 = v318;
      v362 = v319;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[18] = 0;
      v361 = v320;
      v362 = v321;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[17] = 0;
      v361 = v322;
      v362 = v323;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[16] = 0;
      v361 = v324;
      v362 = v325;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[15] = 0;
      v361 = v326;
      v362 = v327;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[14] = 0;
      v361 = v328;
      v362 = v329;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[13] = 0;
      v361 = v330;
      v362 = v331;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[12] = 0;
      v361 = v332;
      v362 = v333;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[11] = 0;
      v361 = v334;
      v362 = v335;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[10] = 0;
      v361 = v336;
      v362 = v337;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[9] = 0;
      v361 = v338;
      v362 = v339;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[8] = 0;
      v361 = v340;
      v362 = v341;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[7] = 0;
      v361 = v342;
      v362 = v343;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[6] = 0;
      v361 = v344;
      v362 = v345;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[5] = 0;
      v361 = v346;
      v362 = v347;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[4] = 0;
      v361 = v348;
      v362 = v349;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[3] = 0;
      v361 = v350;
      v362 = v351;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[2] = 0;
      v361 = v352;
      v362 = v353;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v178[1] = 0;
      v361 = v355;
      v362 = v356;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      _os_log_impl(&dword_1B0389000, v359, v360, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Will request sections {%s}, plan: %{public}s, download pass: %{public}s, user initiated: %{public}s, message size: %u, missing parts: %{public}s", v180, 0x63u);
      sub_1B03998A8(v181, 0, v179);
      sub_1B03998A8(v182, 6, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v359);
  (*(v197 + 8))(v194, v199);
  return v211;
}

uint64_t sub_1B07ED894(char a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23F0, &qword_1B0E9C680);
  if (a2 == 2 || (a2 & 1) != 0)
  {
    if (a1)
    {
      if (a5)
      {
        v6 = 2;
        goto LABEL_15;
      }

      if (a2 == 2 || (a2 & 1) != 0)
      {
        v6 = 1;
        goto LABEL_15;
      }

      sub_1B0E46A68();
      __break(1u);
    }

    if (a2 == 2 || (a2 & 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      sub_1B0E46A68();
      __break(1u);
    }
  }

  else
  {
    v6 = 2;
  }

LABEL_15:

  return v6;
}

unint64_t sub_1B07EDA4C(char a1, unsigned int a2, uint64_t *a3, unsigned __int8 a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a9;
  v33 = v9;
  v15 = sub_1B07EDE90();
  v26 = BodyStructure.partsForHTMLBody(missingParts:additionalParts:)(0, v15);
  v27 = v10;

  v31 = v26;
  v32 = v27;
  sub_1B0E46A48();
  v16 = v11;
  sub_1B0E46A48();
  SectionSpecifier.Part.init(arrayLiteral:)();
  *v16 = v12;
  sub_1B0394964();
  sub_1B07167A8();
  sub_1B0E434B8();
  v21 = sub_1B0E434D8();

  v30[184] = v21 & 1;
  sub_1B07169CC(a3, v30);
  sub_1B07F200C(a8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = sub_1B07EDEAC(a3, a7, a8, a9);
  v25 = v13;
  v29 = sub_1B07EDF94(v21 & 1, a1, v9, v26, v27, a2, v24, v13, a7, a8, a9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = sub_1B07EF018(v29, a5, v24, v25);

  return v28;
}

uint64_t sub_1B07EDCEC(uint64_t a1)
{
  v6[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  v1 = sub_1B07F37E8();
  v6[0] = sub_1B039CA88(sub_1B07AA064, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v5);
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v3 = sub_1B0E448E8();

  sub_1B039E440(v6);
  return v3;
}

uint64_t sub_1B07EDEAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = BodyStructure.singlePartsWithSizes.getter();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07EF85C(v9, a2, a3, a4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B07F2124(a3);

  sub_1B075E648(a1);
  sub_1B07F22C0();
  return v9;
}

uint64_t sub_1B07EDF94(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  if (a2)
  {
    if (a2 != 1)
    {
LABEL_8:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = sub_1B07EE6C4(a6, a7, a9, a10, a11);

      return v12;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = sub_1B07EE460(a6, a7, a9, a10, a11);

    return v13;
  }

  else
  {
    if (a1)
    {
      goto LABEL_8;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = sub_1B07EE154(a4, a5, a6, a7, a9, a10, a11);

    return v14;
  }
}

uint64_t sub_1B07EE154(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  sub_1B07F200C(a6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a6 > 1 && a7)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07167A8();
    sub_1B07AFA50();
    sub_1B0E45598();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E454B8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    sub_1B07B0968();
    sub_1B0E434C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26E0, &qword_1B0E9C688);
    sub_1B07F22F8();
    v9 = sub_1B0E45598();

    sub_1B07F2124(a6);

    return v9;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26E0, &qword_1B0E9C688);
    sub_1B07167A8();
    sub_1B07F22F8();
    v8 = sub_1B0E45598();
    sub_1B07F2124(a6);

    return v8;
  }
}

uint64_t sub_1B07EE460(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07167A8();
    sub_1B07AFA50();
    v10 = sub_1B0E45598();

    return v10;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
    sub_1B07F2380();
    sub_1B0E46398();
    v5 = sub_1B07F2408();
    sub_1B039CA88(sub_1B07EF324, 0, v9, &type metadata for SectionSpecifier.Part, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07167A8();
    sub_1B07AFA50();
    v7 = sub_1B0E45598();

    return v7;
  }
}

uint64_t sub_1B07EE6C4(unsigned int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v92 = a5;
  v98 = a4;
  v93 = a3;
  v94 = a2;
  v95 = a1;
  v96 = 0;
  v123[1] = 0;
  v123[0] = 0;
  v122 = 0;
  v121[0] = 0;
  v118 = 0;
  v97 = 0;
  v114 = 0;
  v111 = 0;
  v106 = 0u;
  v105 = 0u;
  v101 = 0;
  v124 = a1;
  v123[5] = a2;
  v123[2] = a3;
  v123[3] = a4;
  v123[4] = a5;
  sub_1B07F200C(a4);
  if (v98 < 2)
  {
    v99 = sub_1B07EF368(v94);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    v87 = sub_1B07167A8();
    sub_1B07AFA50();
    v89 = sub_1B0E45598();
    v88 = v89;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v123[0] = v89;
    v90 = v89;
  }

  else
  {
    v91 = v98;
    v83 = v98;
    v122 = v98;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v121[1] = v98;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    v82 = sub_1B07167A8();
    sub_1B07AFA50();
    v84 = sub_1B0E45598();
    v85 = v84;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v123[0] = v84;

    v90 = v84;
  }

  v79 = v90;
  v80 = sub_1B07EF490(v93, v98, v92);
  if (v80)
  {
    v78 = v80;
    v74 = v80;
    v101 = v80;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v100 = v80;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    v73 = sub_1B07167A8();
    sub_1B07AFA50();
    v75 = sub_1B0E45598();
    v76 = v75;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v121[0] = v75;

    v77 = v75;
  }

  else
  {
    v120 = sub_1B07EF510(v94);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    v69 = sub_1B07167A8();
    sub_1B07AFA50();
    v71 = sub_1B0E45598();
    v70 = v71;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v121[0] = v71;
    v77 = v71;
  }

  v66 = v77;
  v65 = sub_1B07167A8();
  v67 = sub_1B0E454F8();

  if (v67)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v62 = sub_1B0E454A8();

    v63 = v62 > 10;

    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  v61 = v64;

  if (v64)
  {
    v5 = v97;
    v57 = &type metadata for SectionSpecifier.Part;
    v56 = sub_1B0E46A48();
    v55 = v6;
    sub_1B0E46A48();
    SectionSpecifier.Part.init(arrayLiteral:)();
    *v55 = v7;
    sub_1B0394964();
    v58 = sub_1B0E45438();
    sub_1B039E440(v121);
    sub_1B039E440(v123);
    v59 = v58;
    v60 = v5;
    return v59;
  }

  v53 = v121[0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v54 = sub_1B0E454A8();

  if (v54 >= 11)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v108 = v121[0];
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    v43 = sub_1B07B0968();
    sub_1B07B09F0();
    v45 = sub_1B0E45078();
    sub_1B039E440(&v108);
    v107 = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07AFBE8();
    sub_1B0E45738();
    v47 = *(&v109 + 1);
    v51 = v109;
    v48 = v110;
    v105 = v109;
    v106 = v110;
    v49 = v123[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_unknownObjectRetain();
    v102 = v51;
    v103 = v47;
    v104 = v48;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2408, &qword_1B0E9C6A8);
    sub_1B07F2540();
    v52 = sub_1B0E454B8();
    swift_unknownObjectRelease();
    sub_1B039E440(v121);
    sub_1B039E440(v123);
    v59 = v52;
    v60 = v97;
    return v59;
  }

  v37 = v123[0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = v121[0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v119 = v121[0];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B07B0968();
  v40 = &type metadata for SectionSpecifier.Part;
  v41 = sub_1B0E454B8();
  v39 = v41;
  v118 = v41;
  v42 = sub_1B0E452A8();
  if (sub_1B0E454A8() >= v42)
  {
    v8 = v97;
    v34 = &type metadata for SectionSpecifier.Part;
    v33 = sub_1B0E46A48();
    v32 = v9;
    sub_1B0E46A48();
    SectionSpecifier.Part.init(arrayLiteral:)();
    *v32 = v10;
    sub_1B0394964();
    v35 = sub_1B0E45438();

    sub_1B039E440(v121);
    sub_1B039E440(v123);
    v59 = v35;
    v60 = v8;
    return v59;
  }

  v11 = v97;
  v116 = v94;
  v115 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = &v18;
  MEMORY[0x1EEE9AC00](&v18);
  v29 = v17;
  v17[2] = v12;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
  sub_1B07F24B8();
  sub_1B0E44FD8();
  v31 = v11;

  v26 = v117;
  v114 = v117;
  v112 = v95;
  v113 = 0;
  result = v95;
  v27 = v95;
  v25 = v95;
  v23 = v95;
  v111 = v95;
  v14 = __OFADD__(v117, 20000);
  v24 = v117 + 20000;
  if (!v14)
  {
    if (v23 < v24)
    {
      v21 = &type metadata for SectionSpecifier.Part;
      v20 = sub_1B0E46A48();
      v19 = v15;
      sub_1B0E46A48();
      SectionSpecifier.Part.init(arrayLiteral:)();
      *v19 = v16;
      sub_1B0394964();
      v22 = sub_1B0E45438();

      sub_1B039E440(v121);
      sub_1B039E440(v123);
      v59 = v22;
    }

    else
    {
      sub_1B039E440(v121);
      sub_1B039E440(v123);
      v59 = v39;
    }

    v60 = v31;
    return v59;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B07EF018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = a1;
  v18[4] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v17 = sub_1B07EF9B0(a3, a4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v17)
  {
    sub_1B07167A8();
    v13 = sub_1B0E454F8() ^ 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  if (v13)
  {
    sub_1B0E46A48();
    v11 = v4;
    sub_1B0E46A48();
    *v5 = 1;
    sub_1B0394964();
    SectionSpecifier.Part.init(arrayLiteral:)();
    *v11 = v6;
    sub_1B0394964();
    sub_1B07167A8();
    return sub_1B0E45438();
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18[1] = a2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    sub_1B07167A8();
    v9 = sub_1B07B0968();
    v18[0] = sub_1B0E454B8();
    v10 = sub_1B07EFB54(v18, a3, a4, v8, v9);
    sub_1B039E440(v18);
    return v10;
  }
}

void sub_1B07EF324(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
}

uint64_t sub_1B07EF368(uint64_t a1)
{
  v7[2] = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7[1] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
  sub_1B07F2380();
  v7[0] = sub_1B0E46398();
  v1 = sub_1B07F2408();
  v4 = sub_1B039CA88(sub_1B07EF324, 0, v6, &type metadata for SectionSpecifier.Part, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v3);
  sub_1B039E440(v7);
  return v4;
}

uint64_t sub_1B07EF490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B07EF510(uint64_t a1)
{
  v7[2] = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7[1] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
  sub_1B07F2380();
  v7[0] = sub_1B0E46398();
  v1 = sub_1B07F2408();
  v4 = sub_1B039CA88(sub_1B07EF324, 0, v6, &type metadata for SectionSpecifier.Part, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v3);
  sub_1B039E440(v7);
  return v4;
}

uint64_t sub_1B07EF638(void *a1, void *a2, uint64_t a3)
{
  v11 = 0;
  v10 = 0;
  v12 = a1;
  v7 = *a2;
  v6 = a2[1];
  v11 = a2;
  v10 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = v7;
  sub_1B07167A8();
  v8 = sub_1B0E45528();
  sub_1B039E440(&v9);
  result = v8;
  if (v8)
  {
    if (__OFADD__(*a1, v6))
    {
      __break(1u);
    }

    else
    {
      *a1 += v6;
    }
  }

  return result;
}

BOOL sub_1B07EF710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07F36F8();
  v7 = sub_1B0E45368();

  if (v7)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07167A8();
    v6 = sub_1B0E45478();

    return (v6 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B07EF85C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1B07167A8();
  sub_1B0E44588();
  sub_1B07F200C(a3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B07F24B8();
  sub_1B0E44FD8();
  sub_1B07F2124(a3);

  return v6;
}

uint64_t sub_1B07EF9B0(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
  sub_1B07F2408();
  sub_1B0E45728();
  if (v7 && (, _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v6 = sub_1B0E452A8(), , v6 == 1))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E46A48();
    SectionSpecifier.Part.init(arrayLiteral:)();
    v4 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v7, v2);

    v5 = v4;
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1B07EFB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B07EFBD8(a1, a2, a3, a4, a5);
  v8 = sub_1B07F04C0(v9, a2, a3);

  return v8;
}

uint64_t sub_1B07EFBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v63 = a4;
  v48 = a3;
  v50 = a2;
  v60 = a1;
  v49 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v78 = 0;
  v64 = 0;
  v76[1] = 0;
  v76[0] = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v85 = a4;
  v47 = *(a4 - 8);
  v59 = v47;
  MEMORY[0x1EEE9AC00](0);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = v52;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v61 = &v14 - v54;
  v55 = &v14 - v54;
  v84 = &v14 - v54;
  v83 = v7;
  v81 = v8;
  v82 = v9;
  v56 = &type metadata for SectionSpecifier.Part;
  v57 = sub_1B0E46A48();
  v58 = sub_1B07167A8();
  v80 = sub_1B0E45438();
  (*(v59 + 16))(v6, v60, v63);
  sub_1B0E44F08();
  for (i = v64; ; i = v17)
  {
    v45 = i;
    swift_getAssociatedConformanceWitness();
    sub_1B0E45E38();
    v46 = v79;
    if (!v79)
    {
      (*(v53 + 8))(v55, AssociatedTypeWitness);
      v15 = v80;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B039E440(&v80);
      return v15;
    }

    v44 = v46;
    v42.array._rawValue = v46;
    v78 = v46;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v77[2] = v42.array._rawValue;
    v43 = sub_1B0E45528();

    if (v43 & 1) != 0 || (v40 = v80, _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v77[1] = v42.array._rawValue, v41 = sub_1B0E45528(), , (v41))
    {

      v17 = v45;
      continue;
    }

    v10 = v45;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v77[0] = v50;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v35 = &v14;
    MEMORY[0x1EEE9AC00](&v14);
    v33 = &v14 - 4;
    *(&v14 - 2) = v11;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
    v32 = v34;
    sub_1B07F24B8();
    v12 = sub_1B0E45028();
    v36 = v10;
    v37 = v12;
    v38 = v35;
    rawValue = v42.array._rawValue;
    if (v10)
    {
      break;
    }

    v31 = v37;

    sub_1B039E440(v77);
    if (v31)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v66 = v42.array._rawValue;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
      sub_1B0E454D8();

      v30 = v36;
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v75 = v50;
      sub_1B07F2408();
      sub_1B0E45798();
      for (j = v36; ; j = v25)
      {
        v25 = j;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2418, &qword_1B0E9C6B0);
        sub_1B0E46518();
        v26 = v72;
        v27 = v73;
        v28 = v74;
        if (!v72)
        {
          break;
        }

        v22 = v26;
        v23 = v27;
        v24 = v28;
        v20 = v26;
        v69 = v26;
        v70 = v27;
        v71 = v28 & 1;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v21 = SectionSpecifier.Part.isSubPart(of:)(v42);

        if (!v21 || (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v68 = v20, v18 = &v68, v19 = sub_1B0E45528(), sub_1B039E440(v18), , (v19 & 1) != 0))
        {
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v67 = v20;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
          sub_1B0E454D8();
        }
      }

      sub_1B039E440(v76);
      v30 = v25;
    }

    v16 = v30;

    v17 = v16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B07F04C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v67 = a2;
  v69 = a1;
  v68 = 0;
  v95 = 0;
  v94 = 0;
  v73 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v98[3] = a1;
  v98[1] = a2;
  v98[2] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v98[0] = v69;
  v70 = &type metadata for SectionSpecifier.Part;
  v71 = sub_1B0E46A48();
  v72 = sub_1B07167A8();
  v97 = sub_1B0E45438();
  for (i = 0; ; i = v10)
  {
    v63 = i;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    sub_1B0E45548();
    v65 = v96;
    if (!v96)
    {
      v9[0] = v97;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B039E440(&v97);
      sub_1B039E440(v98);
      return v9[0];
    }

    v62 = v65;
    v59 = v65;
    v95 = v65;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v94 = v59;
    v60 = v59;
    for (j = v63; ; j = v19)
    {
      v57 = j;
      v93 = v60;
      sub_1B0E46A48();
      SectionSpecifier.Part.init(arrayLiteral:)();
      v92 = v3;
      v58 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v93, v3);
      sub_1B039E440(&v92);
      sub_1B039E440(&v93);
      if (v58)
      {
        break;
      }

      v48 = v94;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      rawValue = SectionSpecifier.Part.dropLast()().array._rawValue;
      v49 = rawValue;

      v90 = rawValue;
      v51 = 0;
      v89 = 0;
      v88 = 0;
      sub_1B07F0B58(rawValue, v67, v66);
      v82 = v85;
      v83 = v86;
      v84 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2420, &qword_1B0E9C6B8);
      sub_1B0E46638();
      v52 = v51;
      v53 = v51;
      v54 = v51;
      v55 = v51;
      for (k = v57; ; k = v26)
      {
        v38 = k;
        v39 = v55;
        v40 = v54;
        v42 = v53;
        v41 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2428, &qword_1B0E9C6C0);
        sub_1B0E46648();
        v43 = v79;
        v44 = v80;
        result = v81;
        v45 = v81;
        v46 = v41;
        v47 = v42;
        if (!v79)
        {
          break;
        }

        v35 = v43;
        v36 = v44;
        v37 = v45;
        v32 = v44;
        v33 = v43;
        v76 = v43;
        v77 = v44;
        v78 = v45 & 1;
        v5 = __OFADD__(v39, v44);
        v34 = v39 + v44;
        if (v5)
        {
          goto LABEL_30;
        }

        v89 = v34;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v75 = v33;
        v30 = &v75;
        v31 = sub_1B0E45528();
        sub_1B039E440(v30);
        result = v31;
        if (v31)
        {
          v27 = v41;
          v28 = v40;
        }

        else
        {
          v6 = __OFADD__(v40, v32);
          v29 = v40 + v32;
          if (v6)
          {
            goto LABEL_31;
          }

          v88 = v29;
          v27 = v29;
          v28 = v29;
        }

        v25 = v28;
        v24 = v27;
        v26 = v38;

        v52 = v24;
        v53 = v34;
        v54 = v25;
        v55 = v34;
      }

      v22 = v47;
      v21 = v46;
      sub_1B07F2650();
      v23 = v49;
      if (v22 > 499999)
      {
        v18 = v23;
LABEL_24:

        v17 = v38;
        goto LABEL_26;
      }

      v20 = v49;
      if (v21 > 19999)
      {
        v18 = v20;
        goto LABEL_24;
      }

      v19 = v38;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v94 = v49;

      v60 = v49;
    }

    v17 = v57;
LABEL_26:
    v7 = v17;
    v11 = v94;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v91 = v11;
    sub_1B0E454D8();

    v12 = v98[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = v9;
    MEMORY[0x1EEE9AC00](v9);
    v9[-2] = &v94;
    v8 = sub_1B0E454C8();
    v14 = v7;
    v15 = v8;
    v16 = v13;
    if (v7)
    {
      break;
    }

    v9[1] = v15;
    v10 = 0;
    sub_1B0E45558();

    sub_1B039E440(&v94);
  }

  result = v16;
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B07F0AEC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v4, a2);

  return v5 & 1;
}

uint64_t sub_1B07F0B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[4] = a1;
  v9[2] = a2;
  v9[3] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
  v4 = sub_1B07F24B8();
  MEMORY[0x1B27270C0](v9, v6, v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(swift_allocObject() + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2430, &qword_1B0E9C6C8);
  sub_1B07F2690();
  sub_1B0E46738();
}

BOOL sub_1B07F0C8C(uint64_t a1, void **a2)
{
  of.array._rawValue = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = SectionSpecifier.Part.isSubPart(of:)(of);

  return v4;
}

BOOL sub_1B07F0CFC(uint64_t a1, NIOIMAPCore2::SectionSpecifier::Part a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = SectionSpecifier.Part.isSubPart(of:)(a2);

  return v4;
}

void sub_1B07F0D60(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v12 = 0;
  v20 = a1;
  v10 = *a2;
  v5 = *(a2 + 16);
  v19 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  if (v5)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (a5)
    {
      v12 = a5;
      v11[1] = a5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11[0] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
      sub_1B07AFA50();
      sub_1B07F3770();
      v7 = sub_1B0E450A8();
      sub_1B039E440(v11);
      if ((v7 & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
        sub_1B0E454D8();
      }
    }
  }

  else
  {
    sub_1B07F200C(a4);
    if (a4 <= 1)
    {
      sub_1B07F2124(a4);
    }

    else
    {
      v15 = a4;
      v14[1] = a4;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v14[0] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
      sub_1B07AFA50();
      sub_1B07F3770();
      v6 = sub_1B0E450A8();
      sub_1B039E440(v14);
      if ((v6 & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
        sub_1B0E454D8();
      }
    }
  }
}

double sub_1B07F109C(uint64_t a1)
{
  v1 = static MonotonicTime.now()();
  MonotonicTime.seconds(since:)(a1, v1);
  return v2 * 1000.0;
}

uint64_t sub_1B07F1114(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = type metadata accessor for MissingBodyDataRequest(0);
  result = a2;
  v5 = a1 + v3[5];
  v6 = a2 + v3[5];
  *v6 = *v5;
  *(v6 + 8) = *(v5 + 8);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  return result;
}

uint64_t sub_1B07F11DC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for MissingBodyDataRequest(0);
  result = a2;
  v5 = a1 + v3[5];
  v6 = a2 + v3[5];
  *v6 = *v5;
  *(v6 + 8) = *(v5 + 8);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  return result;
}

uint64_t sub_1B07F12A4()
{
  v1 = *(type metadata accessor for MissingBodyDataRequest(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07D7794(v2);
}

uint64_t sub_1B07F1308()
{
  v1 = *(type metadata accessor for MissingBodyDataRequest(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07D77CC(v2);
}

uint64_t sub_1B07F136C()
{
  v1 = *(type metadata accessor for MissingBodyDataRequest(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07D785C(v2);
}

uint64_t sub_1B07F13D0()
{
  v1 = *(type metadata accessor for MissingBodyDataRequest(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07D7914(v2);
}

uint64_t sub_1B07F1434(uint64_t (*a1)(void))
{
  v6 = a1();
  if ((v6 & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    v5[0] = v6;
    v3 = sub_1B07467B8();
    v1 = sub_1B041C1E8();
    BinaryInteger.init<A>(_:)(v5, MEMORY[0x1E69E7668], &type metadata for UID, v3, v1);
    return v5[1];
  }
}

uint64_t sub_1B07F14EC()
{
  v1 = *(type metadata accessor for MissingBodyDataRequest(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07D79E0(v2);
}

uint64_t sub_1B07F15E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MissingBodyDataRequest(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B07404E0(v3, a1);
}

unint64_t sub_1B07F1654()
{
  v2 = qword_1EB6DAE40;
  if (!qword_1EB6DAE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2350, &qword_1B0E9F3D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F16DC()
{
  v2 = qword_1EB6DB178;
  if (!qword_1EB6DB178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2358, &qword_1B0E9C5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB178);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1764()
{
  v2 = qword_1EB6DA5C8;
  if (!qword_1EB6DA5C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA5C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B07F17C8()
{
  v2 = qword_1EB6DAF70;
  if (!qword_1EB6DAF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2368, &qword_1B0E9C600);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1850()
{
  v2 = qword_1EB6DAA58;
  if (!qword_1EB6DAA58)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAA58);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B07F18B4()
{
  v2 = qword_1EB6DB0D0;
  if (!qword_1EB6DB0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2370, &qword_1B0E9C608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F193C()
{
  v2 = qword_1EB6DB548;
  if (!qword_1EB6DB548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2610, &unk_1B0E9C610);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F19EC()
{
  v2 = qword_1EB6DB0D8;
  if (!qword_1EB6DB0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2370, &qword_1B0E9C608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1A74()
{
  v2 = qword_1EB6DAFD0;
  if (!qword_1EB6DAFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2620, &unk_1B0E9DD90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1AFC()
{
  v2 = qword_1EB6DAB40;
  if (!qword_1EB6DAB40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAB40);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B07F1B60()
{
  v2 = qword_1EB6DB4F8;
  if (!qword_1EB6DB4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2380, &qword_1B0E9C628);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1C14()
{
  v2 = qword_1EB6DB788;
  if (!qword_1EB6DB788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2388, &qword_1B0E9C630);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1CC0()
{
  v2 = qword_1EB6DB520;
  if (!qword_1EB6DB520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2398, &qword_1B0E9C640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1DA0()
{
  v2 = qword_1EB6DB500;
  if (!qword_1EB6DB500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E23A8, &qword_1B0E9C650);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1E28()
{
  v2 = qword_1EB6DB508;
  if (!qword_1EB6DB508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E23C0, &qword_1B0E9C668);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1EE0()
{
  v2 = qword_1EB6DB518;
  if (!qword_1EB6DB518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E23D0, &qword_1B0E9C678);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB518);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1F94()
{
  v2 = qword_1EB6E23D8;
  if (!qword_1EB6E23D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E23D8);
    return WitnessTable;
  }

  return v2;
}

double sub_1B07F200C(unint64_t a1)
{
  if (a1 > 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B07F2058()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B07F20AC();

  return sub_1B03F7B1C(v4, v3, &unk_1F26C8828, v1);
}

unint64_t sub_1B07F20AC()
{
  v2 = qword_1EB6E23E0;
  if (!qword_1EB6E23E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E23E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2124(unint64_t result)
{
  if (result > 1)
  {
  }

  return result;
}

uint64_t sub_1B07F2170()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B07F21C8();

  return sub_1B03F7B1C(v4, v3, &unk_1F26C0A00, v1);
}

unint64_t sub_1B07F21C8()
{
  v2 = qword_1EB6E23E8;
  if (!qword_1EB6E23E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E23E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2244()
{
  v2 = qword_1EB6E23F8;
  if (!qword_1EB6E23F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E23F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F22F8()
{
  v2 = qword_1EB6DC950;
  if (!qword_1EB6DC950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E26E0, &qword_1B0E9C688);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC950);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2380()
{
  v2 = qword_1EB6DB5F8;
  if (!qword_1EB6DB5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2408()
{
  v2 = qword_1EB6DB600;
  if (!qword_1EB6DB600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB600);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F24B8()
{
  v2 = qword_1EB6DB608;
  if (!qword_1EB6DB608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2540()
{
  v2 = qword_1EB6E2410;
  if (!qword_1EB6E2410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2408, &qword_1B0E9C6A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2690()
{
  v2 = qword_1EB6DA530;
  if (!qword_1EB6DA530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2430, &qword_1B0E9C6C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2718()
{
  v2 = qword_1EB6E2438;
  if (!qword_1EB6E2438)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2438);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F27E4(uint64_t a1)
{
  v4 = sub_1B07F28CC(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_1B043B29C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1B07F28CC(uint64_t a1)
{
  v5 = qword_1EB6DB180;
  if (!qword_1EB6DB180)
  {
    v4 = sub_1B0E45358();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DB180);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B07F29B0(uint64_t a1)
{
  v4 = sub_1B07F2A8C(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_1B043B29C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1B07F2A8C(uint64_t a1)
{
  v5 = qword_1EB6DB0E0;
  if (!qword_1EB6DB0E0)
  {
    v4 = sub_1B0E45358();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DB0E0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1B07F2B24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 40))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *(a1 + 17) - 2;
      if (v2 < 0)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B07F2C1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B07F2E48(uint64_t a1)
{
  v4 = sub_1B043B29C(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_1B07F2F30(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1B07F2F30(uint64_t a1)
{
  v5 = qword_1EB6DACD0;
  if (!qword_1EB6DACD0)
  {
    v4 = sub_1B0E45D88();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DACD0);
      return v2;
    }
  }

  return v5;
}

uint64_t get_enum_tag_for_layout_string_7Message24MailboxPersistenceHelperC32checkWithoutCacheForMissingParts4uidsSDy12NIOIMAPCore23UIDVAC0iaJ0VGAF0A13IdentifierSetVyAHG_tF10PartStatusL_O(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_1B07F3124(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFC && *(a1 + 8))
    {
      v5 = *a1 + 2147483644;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 3;
      if (v4 - 3 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B07F3270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    if (a3 > 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1B07F34CC()
{
  v2 = qword_1EB6E2448;
  if (!qword_1EB6E2448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2420, &qword_1B0E9C6B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F356C()
{
  v2 = qword_1EB6E2450;
  if (!qword_1EB6E2450)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F3600()
{
  v2 = qword_1EB6E2458;
  if (!qword_1EB6E2458)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2458);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F367C()
{
  v2 = qword_1EB6E2460;
  if (!qword_1EB6E2460)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F36F8()
{
  v2 = qword_1EB6E2468;
  if (!qword_1EB6E2468)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F3770()
{
  v2 = qword_1EB6DE658;
  if (!qword_1EB6DE658)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F37E8()
{
  v2 = qword_1EB6E2470;
  if (!qword_1EB6E2470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2470);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07F3878()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);

  return sub_1B07F10DC();
}

unint64_t sub_1B07F3914()
{
  v2 = qword_1EB6DB528;
  if (!qword_1EB6DB528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2398, &qword_1B0E9C640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB528);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07F399C(uint64_t a1)
{
  if (*(a1 + 8) > 1uLL)
  {
  }

  return a1;
}

unint64_t sub_1B07F3A1C()
{
  v2 = qword_1EB6DB7A0;
  if (!qword_1EB6DB7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2440, qword_1B0E9C7F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F3AD0()
{
  v2 = qword_1EB6DB7A8;
  if (!qword_1EB6DB7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E23B8, &qword_1B0E9C660);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07F3B58(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1B07B0B1C(*a1, v4, v5, v6, v7);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_1B07F3C14()
{
  v2 = qword_1EB6DB5B8;
  if (!qword_1EB6DB5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2488, &qword_1B0E9CC28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F3CCC()
{
  v2 = qword_1EB6DB5B0;
  if (!qword_1EB6DB5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2498, &qword_1B0E9CC38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5B0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B07F3D8C@<X0>(int a1@<W0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  LODWORD(__src[0]) = a1;
  __src[1] = a2;
  LOWORD(__src[2]) = a3 & 0xFF01;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  __src[6] = a7;
  __src[7] = a8;
  return memcpy(a9, __src, 0x40uLL);
}

char *sub_1B07F3E68@<X0>(char *a1@<X8>)
{
  v8 = a1;
  v9 = 0;
  v5 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v2 - v3;
  v9 = &v2 - v3;
  v4 = v10;
  sub_1B07F476C(v10);
  memcpy(v7, v4, 0x2AuLL);
  sub_1B07F4A54(&v7[*(v5 + 20)]);
  v6 = *(v5 + 24);
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  return sub_1B08203F4(v7, v8);
}

uint64_t sub_1B07F3F74(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = a1[1];

  *a2 = v5;
  *(a2 + 8) = v6;
  v7 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 16) = v7;
  v8 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 24) = v8;
  *(a2 + 32) = a1[4];
  *(a2 + 40) = *(a1 + 20);
  v24 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v9 = *(v24 + 20);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);

  v20 = (a2 + v9);
  *v20 = v10;
  v20[1] = v11;
  v12 = *(a1 + v9 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[2] = v12;
  v13 = *(a1 + v9 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[3] = v13;
  v14 = *(a1 + v9 + 32);
  v15 = *(a1 + v9 + 40);

  v20[4] = v14;
  v20[5] = v15;
  v16 = *(a1 + v9 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[6] = v16;
  v17 = *(a1 + v9 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[7] = v17;
  v19 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v18 = *(v19 + 24);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v23 = *(*(v22 - 8) + 16);
  v23(a2 + v9 + v18, a1 + v9 + v18);
  v2 = *(v19 + 28);
  v3 = a2 + v9 + v2;
  *v3 = *(a1 + v9 + v2);
  *(v3 + 8) = *(a1 + v9 + v2 + 8);
  (v23)(a2 + *(v24 + 24), a1 + *(v24 + 24), v22);
  return a2;
}

uint64_t _s19CachedMailboxValuesV15MissingBodyDataVMa(uint64_t a1)
{
  v2 = qword_1EB6DBC30;
  if (!qword_1EB6DBC30)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(uint64_t a1)
{
  v2 = qword_1EB6DBC50;
  if (!qword_1EB6DBC50)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B07F42D4(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(_s19CachedMailboxValuesV15MissingBodyDataVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v4 = v3 - v3[0];
  sub_1B07F3F74(v1, v3 - v3[0]);
  sub_1B07F436C(v4, v3[1]);
  return sub_1B07F45A0(v5);
}

uint64_t sub_1B07F436C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;

  *(a2 + 16) = *(a1 + 16);

  *(a2 + 24) = *(a1 + 24);

  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v15 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v10 = (a1 + *(v15 + 20));
  v3 = *(v10 + 1);
  v11 = (a2 + *(v15 + 20));
  *v11 = *v10;
  *(v11 + 1) = v3;

  *(v11 + 2) = *(v10 + 2);

  *(v11 + 3) = *(v10 + 3);

  v4 = *(v10 + 5);
  *(v11 + 4) = *(v10 + 4);
  *(v11 + 5) = v4;

  *(v11 + 6) = *(v10 + 6);

  *(v11 + 7) = *(v10 + 7);

  v9 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v8 = *(v9 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v14 = *(*(v13 - 8) + 40);
  v14(&v11[v8], &v10[v8]);
  v5 = &v10[*(v9 + 28)];
  v6 = &v11[*(v9 + 28)];
  *v6 = *v5;
  *(v6 + 4) = *(v5 + 4);
  (v14)(a2 + *(v15 + 24), a1 + *(v15 + 24), v13);
  return a2;
}

uint64_t sub_1B07F45A0(uint64_t a1)
{

  v4 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v2 = a1 + *(v4 + 20);

  v3 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v6 = *(*(v5 - 8) + 8);
  (v6)(v2 + v3);
  v6(a1 + *(v4 + 24), v5);
  return a1;
}

char *sub_1B07F46DC@<X0>(char *a1@<X8>)
{
  v5 = a1;
  v6 = 0;
  v1 = _s19CachedMailboxValuesVMa(0);
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v3 - v3;
  v6 = &v3 - v3;
  sub_1B07F3E68(&v3 - v3);
  return sub_1B08203F4(v4, v5);
}

uint64_t sub_1B07F476C@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, 0x2AuLL);
  sub_1B08207A0();
  v9 = KeyedSequence.init(element:key:)(&unk_1F26C8718, sub_1B07F5164, 0, &type metadata for UID, &unk_1F26C8718);
  v5 = v1;
  v6 = v2;
  v7 = v3;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[0] = v9;
  __b[1] = v5;
  __b[2] = v6;
  __b[3] = v7;
  __b[4] = 0;
  LOWORD(__b[5]) = 256;
  sub_1B07F4A10();
  result = v9;
  *a1 = v9;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 41) = 1;
  return result;
}

uint64_t sub_1B07F48B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  *(a2 + 8) = v4;
  v5 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 16) = v5;
  v7 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 24) = v7;
  *(a2 + 32) = a1[4];
  *(a2 + 40) = *(a1 + 20);
  return result;
}

void sub_1B07F494C(uint64_t *a1)
{
  sub_1B07F48B4(a1, v3);
  sub_1B07F498C(a1, v1);
  sub_1B07F4A10();
}

uint64_t sub_1B07F498C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;

  *(a2 + 16) = *(a1 + 16);

  *(a2 + 24) = *(a1 + 24);

  result = a2;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  return result;
}

void sub_1B07F4A10()
{
}

char *sub_1B07F4A54@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v28 = 0;
  v25 = sub_1B07F531C;
  v27 = sub_1B07F5164;
  v34 = 0;
  v31 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v24 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v32 = (&v23 - v24);
  v34 = &v23 - v24;
  v26 = sub_1B08207A0();
  v30 = &type metadata for UID;
  v1 = KeyedSequence.init(element:key:)(&unk_1F26C87A0, v25, v28, &type metadata for UID, &unk_1F26C87A0);
  v2 = v32;
  v4 = v3;
  v5 = v27;
  v7 = v6;
  v8 = v28;
  v10 = v9;
  v11 = v30;
  *v32 = v1;
  v2[1] = v4;
  v2[2] = v7;
  v2[3] = v10;
  v12 = KeyedSequence.init(element:key:)(&unk_1F26C0960, v5, v8, v11, &unk_1F26C0960);
  v13 = v32;
  v14 = v12;
  v15 = v31;
  v32[4] = v14;
  v13[5] = v16;
  v13[6] = v17;
  v13[7] = v18;
  v29 = *(v15 + 24);
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  v19 = v32;
  v20 = v33;
  v21 = v32 + *(v31 + 28);
  *v21 = 0;
  v21[8] = 0;
  v21[9] = 1;
  return sub_1B0824E30(v19, v20);
}

char *sub_1B07F4C24(char *a1, char *a2)
{
  v7 = *a1;
  v8 = *(a1 + 1);

  *a2 = v7;
  *(a2 + 1) = v8;
  v9 = *(a1 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 2) = v9;
  v10 = *(a1 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 3) = v10;
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);

  *(a2 + 4) = v11;
  *(a2 + 5) = v12;
  v13 = *(a1 + 6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 6) = v13;
  v14 = *(a1 + 7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 7) = v14;
  v16 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v15 = *(v16 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 16))(&a2[v15], &a1[v15]);
  result = a2;
  v4 = *(v16 + 28);
  v5 = &a1[v4];
  v6 = &a2[v4];
  *v6 = *v5;
  *(v6 + 4) = *(v5 + 4);
  return result;
}

uint64_t sub_1B07F4DB0(uint64_t a1)
{
  v8 = a1;
  v6 = 0;
  v5 = (*(*(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v5;
  sub_1B07F4C24(v2, &v5 - v5);
  v3 = _s19CachedMailboxValuesV15MissingBodyDataVMa(v6);
  sub_1B07F4E58(v7, (v1 + *(v3 + 20)));
  return sub_1B07F4FB8(v8);
}

char *sub_1B07F4E58(char *a1, char *a2)
{
  v2 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 1) = v2;

  *(a2 + 2) = *(a1 + 2);

  *(a2 + 3) = *(a1 + 3);

  v3 = *(a1 + 5);
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 5) = v3;

  *(a2 + 6) = *(a1 + 6);

  *(a2 + 7) = *(a1 + 7);

  v9 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v8 = *(v9 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v4 - 8) + 40))(&a2[v8], &a1[v8]);
  result = a2;
  v6 = &a1[*(v9 + 28)];
  v7 = &a2[*(v9 + 28)];
  *v7 = *v6;
  *(v7 + 4) = *(v6 + 4);
  return result;
}

uint64_t sub_1B07F4FB8(uint64_t a1)
{

  v3 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1B07F50B4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  v3 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  sub_1B074F0FC(v7, v1 + *(v3 + 24));
  return sub_1B03D09B8(v8);
}

uint64_t sub_1B07F5164@<X0>(void *__src@<X0>, _DWORD *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1B07CF88C();
  *a2 = result;
  return result;
}

uint64_t sub_1B07F51B0()
{
  v2 = *v0;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07F5210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t sub_1B07F52E8(uint64_t result, __int16 a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  *(v2 + 41) = HIBYTE(a2) & 1;
  return result;
}

uint64_t sub_1B07F531C@<X0>(void *__src@<X0>, _DWORD *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1B07CF88C();
  *a2 = result;
  return result;
}

uint64_t sub_1B07F5368()
{
  v2 = *(v0 + 32);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07F53C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

uint64_t sub_1B07F54A4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  v3 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  sub_1B074F0FC(v7, v1 + *(v3 + 24));
  return sub_1B03D09B8(v8);
}

uint64_t sub_1B07F55A8(uint64_t a1, __int16 a2)
{
  v6 = a2;
  v7 = HIBYTE(a2);
  result = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v4 = v2 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = v6;
  *(v4 + 9) = v7 & 1;
  return result;
}

uint64_t sub_1B07F5614()
{
  v2 = *(v0 + 40);
  sub_1B07F200C(*(v0 + 48));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07F5660(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B07F200C(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = v3[6];
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  sub_1B07F2124(v4);

  sub_1B07F2124(a2);
}

BOOL sub_1B07F56D8(unsigned int *a1, unsigned int *a2)
{
  LOBYTE(v14) = a1[4] & 1;
  HIBYTE(v14) = *(a1 + 17);
  LOBYTE(v13) = a2[4] & 1;
  HIBYTE(v13) = *(a2 + 17);
  if (static MessageToDownload.__derived_struct_equals(_:_:)(*a1, *(a1 + 1), v14, *a2, *(a2 + 1), v13))
  {
    if (sub_1B07FF948(*(a1 + 3), *(a2 + 3)))
    {
      if (sub_1B07FF948(*(a1 + 4), *(a2 + 4)))
      {
        v4 = *(a1 + 5);
        v8 = *(a1 + 6);
        v9 = *(a1 + 7);
        sub_1B07F200C(v8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v5 = *(a2 + 5);
        v6 = *(a2 + 6);
        v7 = *(a2 + 7);
        sub_1B07F200C(v6);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v10 = sub_1B07F5C9C(v4, v8, v9, v5, v6, v7);
        sub_1B07F2124(v6);

        sub_1B07F2124(v8);

        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B07F58A8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_1B07F56D8(__dst, v5);
}

unint64_t sub_1B07F593C(unint64_t a1)
{
  sub_1B07F200C(a1);
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  sub_1B07F2124(v2);
  return sub_1B07F2124(a1);
}

uint64_t sub_1B07F5978(unint64_t a1, unint64_t a2)
{
  sub_1B07F200C(a1);
  sub_1B07F200C(a2);
  if (!a1)
  {
    if (!a2)
    {
      sub_1B07F2124(0);
      sub_1B07F2124(0);
      v3 = 1;
      return v3 & 1;
    }

LABEL_12:
    sub_1B07F2124(a1);
    sub_1B07F2124(a2);
    v3 = 0;
    return v3 & 1;
  }

  if (a1 == 1)
  {
    if (a2 == 1)
    {
      sub_1B07F2124(1uLL);
      sub_1B07F2124(1uLL);
      v3 = 1;
      return v3 & 1;
    }

    goto LABEL_12;
  }

  if (a2 <= 1)
  {
    goto LABEL_12;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07F3770();
  if (sub_1B0E45368())
  {

    sub_1B07F2124(a1);
    sub_1B07F2124(a2);
    v3 = 1;
  }

  else
  {

    sub_1B07F2124(a1);
    sub_1B07F2124(a2);
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1B07F5B3C(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!a1)
  {
    if (!a2)
    {

      v3 = 1;
      return v3 & 1;
    }

LABEL_9:

    v3 = 0;
    return v3 & 1;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07F3770();
  if (sub_1B0E45368())
  {

    v3 = 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

BOOL sub_1B07F5C9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (sub_1B07FF948(a1, a4))
  {
    sub_1B07F200C(a2);
    sub_1B07F200C(a5);
    v9 = sub_1B07F5978(a2, a5);
    sub_1B07F2124(a5);
    sub_1B07F2124(a2);
    if (v9)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v8 = sub_1B07F5B3C(a3, a6);

      return (v8 & 1) != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B07F5E48(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v11[2] = a1;
  v11[1] = a2;
  v16 = *(a2 + 8);
  sub_1B074E7A8(&v16, v11);
  v10[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B07B0968();
  sub_1B0E45378();
  v15 = *(a2 + 24);
  sub_1B074E7A8(&v15, v10);
  sub_1B0E45378();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v9 = v2;
  v7 = v3;
  v8 = v4;
  sub_1B07F200C(v3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = v9;
  v13 = v7;
  v14 = v8;
  sub_1B074E868();
  sub_1B07F399C(&v12);
  return v9;
}

uint64_t sub_1B07F5F8C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1320 = v1;
  v1322 = v2;
  v1321 = v3;
  v1340 = v4;
  v1339 = v5;
  v1080 = sub_1B074E050;
  v1081 = sub_1B03F7AE0;
  v1082 = sub_1B0394C30;
  v1083 = sub_1B0394C24;
  v1084 = sub_1B074DFFC;
  v1085 = sub_1B039BA88;
  v1086 = sub_1B039BB94;
  v1087 = sub_1B0394C24;
  v1088 = sub_1B039BBA0;
  v1089 = sub_1B039BC08;
  v1090 = 0x786F626C69616DLL;
  v1091 = sub_1B06BA324;
  v1092 = sub_1B074E0E4;
  v1093 = sub_1B039BCF8;
  v1094 = sub_1B07AB020;
  v1095 = sub_1B039BC08;
  v1096 = sub_1B0398F5C;
  v1097 = sub_1B0398F5C;
  v1098 = sub_1B0399178;
  v1099 = sub_1B0398F5C;
  v1100 = sub_1B0398F5C;
  v1101 = sub_1B039BA94;
  v1102 = sub_1B0398F5C;
  v1103 = sub_1B0398F5C;
  v1104 = sub_1B0399178;
  v1105 = sub_1B0398F5C;
  v1106 = sub_1B0398F5C;
  v1107 = sub_1B03991EC;
  v1108 = sub_1B0398F5C;
  v1109 = sub_1B0398F5C;
  v1110 = sub_1B03993BC;
  v1111 = sub_1B0398F5C;
  v1112 = sub_1B0398F5C;
  v1113 = sub_1B039BCEC;
  v1114 = sub_1B0398F5C;
  v1115 = sub_1B0398F5C;
  v1116 = sub_1B03991EC;
  v1117 = sub_1B074E050;
  v1118 = sub_1B03F7AE0;
  v1119 = sub_1B07AD09C;
  v1120 = sub_1B0394C24;
  v1121 = sub_1B074DFFC;
  v1122 = sub_1B039BA88;
  v1123 = sub_1B0394C24;
  v1124 = sub_1B039BBA0;
  v1125 = sub_1B039BC08;
  v1126 = sub_1B06BA324;
  v1127 = sub_1B074E0E4;
  v1128 = sub_1B039BCF8;
  v1129 = sub_1B07AB020;
  v1130 = sub_1B039BC08;
  v1131 = sub_1B0820100;
  v1132 = sub_1B039BCF8;
  v1133 = sub_1B0398F5C;
  v1134 = sub_1B0398F5C;
  v1135 = sub_1B0399178;
  v1136 = sub_1B0398F5C;
  v1137 = sub_1B0398F5C;
  v1138 = sub_1B039BA94;
  v1139 = sub_1B0398F5C;
  v1140 = sub_1B0398F5C;
  v1141 = sub_1B0399178;
  v1142 = sub_1B0398F5C;
  v1143 = sub_1B0398F5C;
  v1144 = sub_1B03991EC;
  v1145 = sub_1B0398F5C;
  v1146 = sub_1B0398F5C;
  v1147 = sub_1B03993BC;
  v1148 = sub_1B0398F5C;
  v1149 = sub_1B0398F5C;
  v1150 = sub_1B039BCEC;
  v1151 = sub_1B0398F5C;
  v1152 = sub_1B0398F5C;
  v1153 = sub_1B03991EC;
  v1154 = sub_1B0398F5C;
  v1155 = sub_1B0398F5C;
  v1156 = sub_1B039BCEC;
  v1157 = sub_1B074E050;
  v1158 = sub_1B03F7AE0;
  v1159 = sub_1B0394C24;
  v1160 = sub_1B074DFFC;
  v1161 = sub_1B039BA88;
  v1162 = sub_1B0394C24;
  v1163 = sub_1B039BBA0;
  v1164 = sub_1B039BC08;
  v1165 = sub_1B06BA324;
  v1166 = sub_1B074E0E4;
  v1167 = sub_1B039BCF8;
  v1168 = sub_1B07AB020;
  v1169 = sub_1B039BC08;
  v1170 = sub_1B0398F5C;
  v1171 = sub_1B0398F5C;
  v1172 = sub_1B0399178;
  v1173 = sub_1B0398F5C;
  v1174 = sub_1B0398F5C;
  v1175 = sub_1B039BA94;
  v1176 = sub_1B0398F5C;
  v1177 = sub_1B0398F5C;
  v1178 = sub_1B0399178;
  v1179 = sub_1B0398F5C;
  v1180 = sub_1B0398F5C;
  v1181 = sub_1B03991EC;
  v1182 = sub_1B0398F5C;
  v1183 = sub_1B0398F5C;
  v1184 = sub_1B03993BC;
  v1185 = sub_1B0398F5C;
  v1186 = sub_1B0398F5C;
  v1187 = sub_1B039BCEC;
  v1188 = sub_1B0398F5C;
  v1189 = sub_1B0398F5C;
  v1190 = sub_1B03991EC;
  v1191 = sub_1B074E050;
  v1192 = sub_1B03F7AE0;
  v1193 = sub_1B07AD09C;
  v1194 = sub_1B07AD09C;
  v1195 = sub_1B0394C24;
  v1196 = sub_1B074DFFC;
  v1197 = sub_1B039BA88;
  v1198 = sub_1B0394C24;
  v1199 = sub_1B039BBA0;
  v1200 = sub_1B039BC08;
  v1201 = sub_1B06BA324;
  v1202 = sub_1B074E0E4;
  v1203 = sub_1B039BCF8;
  v1204 = sub_1B07AB020;
  v1205 = sub_1B039BC08;
  v1206 = sub_1B0820100;
  v1207 = sub_1B039BCF8;
  v1208 = sub_1B0820100;
  v1209 = sub_1B039BCF8;
  v1210 = sub_1B0398F5C;
  v1211 = sub_1B0398F5C;
  v1212 = sub_1B0399178;
  v1213 = sub_1B0398F5C;
  v1214 = sub_1B0398F5C;
  v1215 = sub_1B039BA94;
  v1216 = sub_1B0398F5C;
  v1217 = sub_1B0398F5C;
  v1218 = sub_1B0399178;
  v1219 = sub_1B0398F5C;
  v1220 = sub_1B0398F5C;
  v1221 = sub_1B03991EC;
  v1222 = sub_1B0398F5C;
  v1223 = sub_1B0398F5C;
  v1224 = sub_1B03993BC;
  v1225 = sub_1B0398F5C;
  v1226 = sub_1B0398F5C;
  v1227 = sub_1B039BCEC;
  v1228 = sub_1B0398F5C;
  v1229 = sub_1B0398F5C;
  v1230 = sub_1B03991EC;
  v1231 = sub_1B0398F5C;
  v1232 = sub_1B0398F5C;
  v1233 = sub_1B039BCEC;
  v1234 = sub_1B0398F5C;
  v1235 = sub_1B0398F5C;
  v1236 = sub_1B039BCEC;
  v1237 = sub_1B074E050;
  v1238 = sub_1B03F7AE0;
  v1239 = sub_1B0394C24;
  v1240 = sub_1B074DFFC;
  v1241 = sub_1B039BA88;
  v1242 = sub_1B0394C24;
  v1243 = sub_1B039BBA0;
  v1244 = sub_1B039BC08;
  v1245 = sub_1B06BA324;
  v1246 = sub_1B074E0E4;
  v1247 = sub_1B039BCF8;
  v1248 = sub_1B07AB020;
  v1249 = sub_1B039BC08;
  v1250 = sub_1B0398F5C;
  v1251 = sub_1B0398F5C;
  v1252 = sub_1B0399178;
  v1253 = sub_1B0398F5C;
  v1254 = sub_1B0398F5C;
  v1255 = sub_1B039BA94;
  v1256 = sub_1B0398F5C;
  v1257 = sub_1B0398F5C;
  v1258 = sub_1B0399178;
  v1259 = sub_1B0398F5C;
  v1260 = sub_1B0398F5C;
  v1261 = sub_1B03991EC;
  v1262 = sub_1B0398F5C;
  v1263 = sub_1B0398F5C;
  v1264 = sub_1B03993BC;
  v1265 = sub_1B0398F5C;
  v1266 = sub_1B0398F5C;
  v1267 = sub_1B039BCEC;
  v1268 = sub_1B0398F5C;
  v1269 = sub_1B0398F5C;
  v1270 = sub_1B03991EC;
  v1271 = sub_1B074E050;
  v1272 = sub_1B03F7AE0;
  v1273 = sub_1B07AD09C;
  v1274 = sub_1B0394C24;
  v1275 = sub_1B074DFFC;
  v1276 = sub_1B039BA88;
  v1277 = sub_1B0394C24;
  v1278 = sub_1B039BBA0;
  v1279 = sub_1B039BC08;
  v1280 = sub_1B06BA324;
  v1281 = sub_1B074E0E4;
  v1282 = sub_1B039BCF8;
  v1283 = sub_1B07AB020;
  v1284 = sub_1B039BC08;
  v1285 = sub_1B0820100;
  v1286 = sub_1B039BCF8;
  v1287 = sub_1B0398F5C;
  v1288 = sub_1B0398F5C;
  v1289 = sub_1B0399178;
  v1290 = sub_1B0398F5C;
  v1291 = sub_1B0398F5C;
  v1292 = sub_1B039BA94;
  v1293 = sub_1B0398F5C;
  v1294 = sub_1B0398F5C;
  v1295 = sub_1B0399178;
  v1296 = sub_1B0398F5C;
  v1297 = sub_1B0398F5C;
  v1298 = sub_1B03991EC;
  v1299 = sub_1B0398F5C;
  v1300 = sub_1B0398F5C;
  v1301 = sub_1B03993BC;
  v1302 = sub_1B0398F5C;
  v1303 = sub_1B0398F5C;
  v1304 = sub_1B039BCEC;
  v1305 = sub_1B0398F5C;
  v1306 = sub_1B0398F5C;
  v1307 = sub_1B03991EC;
  v1308 = sub_1B0398F5C;
  v1309 = sub_1B0398F5C;
  v1310 = sub_1B039BCEC;
  v1380 = 0;
  v1379 = 0;
  v1376 = 0;
  v1377 = 0;
  v1378 = 0;
  v1375 = 0;
  v1374 = 0;
  v1311 = 0;
  v1362 = 0;
  v1356 = 0;
  v1312 = 0;
  v1313 = _s6LoggerVMa_1(0);
  v1314 = (*(*(v1313 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v1315 = v591 - v1314;
  v1316 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v1317 = v591 - v1316;
  v1318 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v1319 = v591 - v1318;
  v1323 = sub_1B0E439A8();
  v1324 = *(v1323 - 8);
  v1325 = v1323 - 8;
  v1335 = *(v1324 + 64);
  v1326 = (v1335 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1340);
  v1327 = v591 - v1326;
  v1328 = (v1335 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v1329 = v591 - v1328;
  v1330 = (v1335 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v1331 = v591 - v1330;
  v1332 = (v1335 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v1333 = v591 - v1332;
  v1334 = (v1335 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v1336 = v591 - v1334;
  v1337 = (v1335 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v1338 = v591 - v1337;
  v1380 = v15;
  v1379 = v16;
  v1376 = v17;
  v1377 = v18;
  v1378 = v19;
  sub_1B07F200C(v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v1340)
  {
    if (v1340 == 1)
    {
      (*(v1324 + 16))(v1338, v1322, v1323);
      sub_1B074B69C(v1322, v1319);
      sub_1B074B69C(v1319, v1317);
      sub_1B074E41C(v1319, v1315);
      v20 = (v1317 + *(v1313 + 20));
      v1031 = *v20;
      v1032 = *(v20 + 1);
      v1033 = *(v20 + 1);
      v1034 = *(v20 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v1317);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1030 = 36;
      v1050 = 7;
      v21 = swift_allocObject();
      v22 = v1032;
      v23 = v1033;
      v24 = v1034;
      v1037 = v21;
      *(v21 + 16) = v1031;
      *(v21 + 20) = v22;
      *(v21 + 24) = v23;
      *(v21 + 32) = v24;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v25 = swift_allocObject();
      v26 = v1032;
      v27 = v1033;
      v28 = v1034;
      v1029 = v25;
      *(v25 + 16) = v1031;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;

      v1049 = 32;
      v29 = swift_allocObject();
      v30 = v1029;
      v1041 = v29;
      *(v29 + 16) = v1080;
      *(v29 + 24) = v30;
      sub_1B0394868();
      sub_1B0394868();

      v31 = swift_allocObject();
      v32 = v1032;
      v33 = v1033;
      v34 = v1034;
      v35 = v31;
      v36 = v1315;
      v1045 = v35;
      *(v35 + 16) = v1031;
      *(v35 + 20) = v32;
      *(v35 + 24) = v33;
      *(v35 + 32) = v34;
      sub_1B074B764(v36);
      v1035 = swift_allocObject();
      *(v1035 + 16) = v1320;

      v37 = swift_allocObject();
      v38 = v1035;
      v1051 = v37;
      *(v37 + 16) = v1081;
      *(v37 + 24) = v38;

      v1077 = sub_1B0E43988();
      v1078 = sub_1B0E45908();
      v1047 = 17;
      v1053 = swift_allocObject();
      v1039 = 16;
      *(v1053 + 16) = 16;
      v1054 = swift_allocObject();
      v1048 = 4;
      *(v1054 + 16) = 4;
      v39 = swift_allocObject();
      v1036 = v39;
      *(v39 + 16) = v1082;
      *(v39 + 24) = 0;
      v40 = swift_allocObject();
      v41 = v1036;
      v1055 = v40;
      *(v40 + 16) = v1083;
      *(v40 + 24) = v41;
      v1056 = swift_allocObject();
      *(v1056 + 16) = 0;
      v1057 = swift_allocObject();
      *(v1057 + 16) = 1;
      v42 = swift_allocObject();
      v43 = v1037;
      v1038 = v42;
      *(v42 + 16) = v1084;
      *(v42 + 24) = v43;
      v44 = swift_allocObject();
      v45 = v1038;
      v1058 = v44;
      *(v44 + 16) = v1085;
      *(v44 + 24) = v45;
      v1059 = swift_allocObject();
      *(v1059 + 16) = v1039;
      v1060 = swift_allocObject();
      *(v1060 + 16) = v1048;
      v46 = swift_allocObject();
      v1040 = v46;
      *(v46 + 16) = v1086;
      *(v46 + 24) = 0;
      v47 = swift_allocObject();
      v48 = v1040;
      v1061 = v47;
      *(v47 + 16) = v1087;
      *(v47 + 24) = v48;
      v1062 = swift_allocObject();
      *(v1062 + 16) = 0;
      v1063 = swift_allocObject();
      *(v1063 + 16) = v1048;
      v49 = swift_allocObject();
      v50 = v1041;
      v1042 = v49;
      *(v49 + 16) = v1088;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v1042;
      v1064 = v51;
      *(v51 + 16) = v1089;
      *(v51 + 24) = v52;
      v1065 = swift_allocObject();
      *(v1065 + 16) = 112;
      v1066 = swift_allocObject();
      v1044 = 8;
      *(v1066 + 16) = 8;
      v1043 = swift_allocObject();
      *(v1043 + 16) = v1090;
      v53 = swift_allocObject();
      v54 = v1043;
      v1067 = v53;
      *(v53 + 16) = v1091;
      *(v53 + 24) = v54;
      v1068 = swift_allocObject();
      *(v1068 + 16) = 37;
      v1069 = swift_allocObject();
      *(v1069 + 16) = v1044;
      v55 = swift_allocObject();
      v56 = v1045;
      v1046 = v55;
      *(v55 + 16) = v1092;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v1046;
      v1070 = v57;
      *(v57 + 16) = v1093;
      *(v57 + 24) = v58;
      v1071 = swift_allocObject();
      *(v1071 + 16) = 0;
      v1072 = swift_allocObject();
      *(v1072 + 16) = v1048;
      v59 = swift_allocObject();
      v60 = v1051;
      v1052 = v59;
      *(v59 + 16) = v1094;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v1052;
      v1074 = v61;
      *(v61 + 16) = v1095;
      *(v61 + 24) = v62;
      v1076 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v1073 = sub_1B0E46A48();
      v1075 = v63;

      v64 = v1053;
      v65 = v1075;
      *v1075 = v1096;
      v65[1] = v64;

      v66 = v1054;
      v67 = v1075;
      v1075[2] = v1097;
      v67[3] = v66;

      v68 = v1055;
      v69 = v1075;
      v1075[4] = v1098;
      v69[5] = v68;

      v70 = v1056;
      v71 = v1075;
      v1075[6] = v1099;
      v71[7] = v70;

      v72 = v1057;
      v73 = v1075;
      v1075[8] = v1100;
      v73[9] = v72;

      v74 = v1058;
      v75 = v1075;
      v1075[10] = v1101;
      v75[11] = v74;

      v76 = v1059;
      v77 = v1075;
      v1075[12] = v1102;
      v77[13] = v76;

      v78 = v1060;
      v79 = v1075;
      v1075[14] = v1103;
      v79[15] = v78;

      v80 = v1061;
      v81 = v1075;
      v1075[16] = v1104;
      v81[17] = v80;

      v82 = v1062;
      v83 = v1075;
      v1075[18] = v1105;
      v83[19] = v82;

      v84 = v1063;
      v85 = v1075;
      v1075[20] = v1106;
      v85[21] = v84;

      v86 = v1064;
      v87 = v1075;
      v1075[22] = v1107;
      v87[23] = v86;

      v88 = v1065;
      v89 = v1075;
      v1075[24] = v1108;
      v89[25] = v88;

      v90 = v1066;
      v91 = v1075;
      v1075[26] = v1109;
      v91[27] = v90;

      v92 = v1067;
      v93 = v1075;
      v1075[28] = v1110;
      v93[29] = v92;

      v94 = v1068;
      v95 = v1075;
      v1075[30] = v1111;
      v95[31] = v94;

      v96 = v1069;
      v97 = v1075;
      v1075[32] = v1112;
      v97[33] = v96;

      v98 = v1070;
      v99 = v1075;
      v1075[34] = v1113;
      v99[35] = v98;

      v100 = v1071;
      v101 = v1075;
      v1075[36] = v1114;
      v101[37] = v100;

      v102 = v1072;
      v103 = v1075;
      v1075[38] = v1115;
      v103[39] = v102;

      v104 = v1074;
      v105 = v1075;
      v1075[40] = v1116;
      v105[41] = v104;
      sub_1B0394964();

      if (os_log_type_enabled(v1077, v1078))
      {
        v106 = v1311;
        v1022 = sub_1B0E45D78();
        v1021 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v1023 = sub_1B03949A8(0, v1021, v1021);
        v1024 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v1025 = &v1345;
        v1345 = v1022;
        v1026 = &v1344;
        v1344 = v1023;
        v1027 = &v1343;
        v1343 = v1024;
        sub_1B0394A48(3, &v1345);
        sub_1B0394A48(7, v1025);
        v1341 = v1096;
        v1342 = v1053;
        sub_1B03949FC(&v1341, v1025, v1026, v1027);
        v1028 = v106;
        if (v106)
        {

          __break(1u);
        }

        else
        {
          v1341 = v1097;
          v1342 = v1054;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1020 = 0;
          v1341 = v1098;
          v1342 = v1055;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1019 = 0;
          v1341 = v1099;
          v1342 = v1056;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1018 = 0;
          v1341 = v1100;
          v1342 = v1057;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1017 = 0;
          v1341 = v1101;
          v1342 = v1058;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1016 = 0;
          v1341 = v1102;
          v1342 = v1059;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1015 = 0;
          v1341 = v1103;
          v1342 = v1060;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1014 = 0;
          v1341 = v1104;
          v1342 = v1061;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1013 = 0;
          v1341 = v1105;
          v1342 = v1062;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1012 = 0;
          v1341 = v1106;
          v1342 = v1063;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1011 = 0;
          v1341 = v1107;
          v1342 = v1064;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1010 = 0;
          v1341 = v1108;
          v1342 = v1065;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1009 = 0;
          v1341 = v1109;
          v1342 = v1066;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1008 = 0;
          v1341 = v1110;
          v1342 = v1067;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1007 = 0;
          v1341 = v1111;
          v1342 = v1068;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1006 = 0;
          v1341 = v1112;
          v1342 = v1069;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1005 = 0;
          v1341 = v1113;
          v1342 = v1070;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1004 = 0;
          v1341 = v1114;
          v1342 = v1071;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1003 = 0;
          v1341 = v1115;
          v1342 = v1072;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          v1002 = 0;
          v1341 = v1116;
          v1342 = v1074;
          sub_1B03949FC(&v1341, &v1345, &v1344, &v1343);
          _os_log_impl(&dword_1B0389000, v1077, v1078, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u: All parts are missing.", v1022, 0x31u);
          sub_1B03998A8(v1023, 0, v1021);
          sub_1B03998A8(v1024, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v1077);
      (*(v1324 + 8))(v1338, v1323);
    }

    else
    {
      v1079 = v1340;
      v835 = v1079;
      if (v1339)
      {
        v834 = v1339;
        v745 = v1339;
        v1375 = v835;
        v1374 = v1339;
        v1373[1] = v835;
        v743 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
        v744 = sub_1B07AFBE8();
        v746 = sub_1B0E45748();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v746)
        {
          v1363 = v745;
          v742 = sub_1B0E45748();
        }

        else
        {
          v742 = 0;
        }

        v741 = v742;

        if (v741)
        {
          (*(v1324 + 16))(v1329, v1322, v1323);
          sub_1B074B69C(v1322, v1319);
          sub_1B074B69C(v1319, v1317);
          sub_1B074E41C(v1319, v1315);
          v393 = (v1317 + *(v1313 + 20));
          v693 = *v393;
          v694 = *(v393 + 1);
          v695 = *(v393 + 1);
          v696 = *(v393 + 4);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B074B764(v1317);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v692 = 36;
          v712 = 7;
          v394 = swift_allocObject();
          v395 = v694;
          v396 = v695;
          v397 = v696;
          v699 = v394;
          *(v394 + 16) = v693;
          *(v394 + 20) = v395;
          *(v394 + 24) = v396;
          *(v394 + 32) = v397;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v398 = swift_allocObject();
          v399 = v694;
          v400 = v695;
          v401 = v696;
          v691 = v398;
          *(v398 + 16) = v693;
          *(v398 + 20) = v399;
          *(v398 + 24) = v400;
          *(v398 + 32) = v401;

          v711 = 32;
          v402 = swift_allocObject();
          v403 = v691;
          v703 = v402;
          *(v402 + 16) = v1237;
          *(v402 + 24) = v403;
          sub_1B0394868();
          sub_1B0394868();

          v404 = swift_allocObject();
          v405 = v694;
          v406 = v695;
          v407 = v696;
          v408 = v404;
          v409 = v1315;
          v707 = v408;
          *(v408 + 16) = v693;
          *(v408 + 20) = v405;
          *(v408 + 24) = v406;
          *(v408 + 32) = v407;
          sub_1B074B764(v409);
          v697 = swift_allocObject();
          *(v697 + 16) = v1320;

          v410 = swift_allocObject();
          v411 = v697;
          v713 = v410;
          *(v410 + 16) = v1238;
          *(v410 + 24) = v411;

          v739 = sub_1B0E43988();
          v740 = sub_1B0E45908();
          v709 = 17;
          v715 = swift_allocObject();
          v701 = 16;
          *(v715 + 16) = 16;
          v716 = swift_allocObject();
          v710 = 4;
          *(v716 + 16) = 4;
          v412 = swift_allocObject();
          v698 = v412;
          *(v412 + 16) = v1082;
          *(v412 + 24) = 0;
          v413 = swift_allocObject();
          v414 = v698;
          v717 = v413;
          *(v413 + 16) = v1239;
          *(v413 + 24) = v414;
          v718 = swift_allocObject();
          *(v718 + 16) = 0;
          v719 = swift_allocObject();
          *(v719 + 16) = 1;
          v415 = swift_allocObject();
          v416 = v699;
          v700 = v415;
          *(v415 + 16) = v1240;
          *(v415 + 24) = v416;
          v417 = swift_allocObject();
          v418 = v700;
          v720 = v417;
          *(v417 + 16) = v1241;
          *(v417 + 24) = v418;
          v721 = swift_allocObject();
          *(v721 + 16) = v701;
          v722 = swift_allocObject();
          *(v722 + 16) = v710;
          v419 = swift_allocObject();
          v702 = v419;
          *(v419 + 16) = v1086;
          *(v419 + 24) = 0;
          v420 = swift_allocObject();
          v421 = v702;
          v723 = v420;
          *(v420 + 16) = v1242;
          *(v420 + 24) = v421;
          v724 = swift_allocObject();
          *(v724 + 16) = 0;
          v725 = swift_allocObject();
          *(v725 + 16) = v710;
          v422 = swift_allocObject();
          v423 = v703;
          v704 = v422;
          *(v422 + 16) = v1243;
          *(v422 + 24) = v423;
          v424 = swift_allocObject();
          v425 = v704;
          v726 = v424;
          *(v424 + 16) = v1244;
          *(v424 + 24) = v425;
          v727 = swift_allocObject();
          *(v727 + 16) = 112;
          v728 = swift_allocObject();
          v706 = 8;
          *(v728 + 16) = 8;
          v705 = swift_allocObject();
          *(v705 + 16) = v1090;
          v426 = swift_allocObject();
          v427 = v705;
          v729 = v426;
          *(v426 + 16) = v1245;
          *(v426 + 24) = v427;
          v730 = swift_allocObject();
          *(v730 + 16) = 37;
          v731 = swift_allocObject();
          *(v731 + 16) = v706;
          v428 = swift_allocObject();
          v429 = v707;
          v708 = v428;
          *(v428 + 16) = v1246;
          *(v428 + 24) = v429;
          v430 = swift_allocObject();
          v431 = v708;
          v732 = v430;
          *(v430 + 16) = v1247;
          *(v430 + 24) = v431;
          v733 = swift_allocObject();
          *(v733 + 16) = 0;
          v734 = swift_allocObject();
          *(v734 + 16) = v710;
          v432 = swift_allocObject();
          v433 = v713;
          v714 = v432;
          *(v432 + 16) = v1248;
          *(v432 + 24) = v433;
          v434 = swift_allocObject();
          v435 = v714;
          v736 = v434;
          *(v434 + 16) = v1249;
          *(v434 + 24) = v435;
          v738 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v735 = sub_1B0E46A48();
          v737 = v436;

          v437 = v715;
          v438 = v737;
          *v737 = v1250;
          v438[1] = v437;

          v439 = v716;
          v440 = v737;
          v737[2] = v1251;
          v440[3] = v439;

          v441 = v717;
          v442 = v737;
          v737[4] = v1252;
          v442[5] = v441;

          v443 = v718;
          v444 = v737;
          v737[6] = v1253;
          v444[7] = v443;

          v445 = v719;
          v446 = v737;
          v737[8] = v1254;
          v446[9] = v445;

          v447 = v720;
          v448 = v737;
          v737[10] = v1255;
          v448[11] = v447;

          v449 = v721;
          v450 = v737;
          v737[12] = v1256;
          v450[13] = v449;

          v451 = v722;
          v452 = v737;
          v737[14] = v1257;
          v452[15] = v451;

          v453 = v723;
          v454 = v737;
          v737[16] = v1258;
          v454[17] = v453;

          v455 = v724;
          v456 = v737;
          v737[18] = v1259;
          v456[19] = v455;

          v457 = v725;
          v458 = v737;
          v737[20] = v1260;
          v458[21] = v457;

          v459 = v726;
          v460 = v737;
          v737[22] = v1261;
          v460[23] = v459;

          v461 = v727;
          v462 = v737;
          v737[24] = v1262;
          v462[25] = v461;

          v463 = v728;
          v464 = v737;
          v737[26] = v1263;
          v464[27] = v463;

          v465 = v729;
          v466 = v737;
          v737[28] = v1264;
          v466[29] = v465;

          v467 = v730;
          v468 = v737;
          v737[30] = v1265;
          v468[31] = v467;

          v469 = v731;
          v470 = v737;
          v737[32] = v1266;
          v470[33] = v469;

          v471 = v732;
          v472 = v737;
          v737[34] = v1267;
          v472[35] = v471;

          v473 = v733;
          v474 = v737;
          v737[36] = v1268;
          v474[37] = v473;

          v475 = v734;
          v476 = v737;
          v737[38] = v1269;
          v476[39] = v475;

          v477 = v736;
          v478 = v737;
          v737[40] = v1270;
          v478[41] = v477;
          sub_1B0394964();

          if (os_log_type_enabled(v739, v740))
          {
            v479 = v1311;
            v684 = sub_1B0E45D78();
            v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v685 = sub_1B03949A8(0, v683, v683);
            v686 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v687 = &v1368;
            v1368 = v684;
            v688 = &v1367;
            v1367 = v685;
            v689 = &v1366;
            v1366 = v686;
            sub_1B0394A48(3, &v1368);
            sub_1B0394A48(7, v687);
            v1364 = v1250;
            v1365 = v715;
            sub_1B03949FC(&v1364, v687, v688, v689);
            v690 = v479;
            if (v479)
            {

              __break(1u);
            }

            else
            {
              v1364 = v1251;
              v1365 = v716;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v682 = 0;
              v1364 = v1252;
              v1365 = v717;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v681 = 0;
              v1364 = v1253;
              v1365 = v718;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v680 = 0;
              v1364 = v1254;
              v1365 = v719;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v679 = 0;
              v1364 = v1255;
              v1365 = v720;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v678 = 0;
              v1364 = v1256;
              v1365 = v721;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v677 = 0;
              v1364 = v1257;
              v1365 = v722;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v676 = 0;
              v1364 = v1258;
              v1365 = v723;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v675 = 0;
              v1364 = v1259;
              v1365 = v724;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v674 = 0;
              v1364 = v1260;
              v1365 = v725;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v673 = 0;
              v1364 = v1261;
              v1365 = v726;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v672 = 0;
              v1364 = v1262;
              v1365 = v727;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v671 = 0;
              v1364 = v1263;
              v1365 = v728;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v670 = 0;
              v1364 = v1264;
              v1365 = v729;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v669 = 0;
              v1364 = v1265;
              v1365 = v730;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v668 = 0;
              v1364 = v1266;
              v1365 = v731;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v667 = 0;
              v1364 = v1267;
              v1365 = v732;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v666 = 0;
              v1364 = v1268;
              v1365 = v733;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v665 = 0;
              v1364 = v1269;
              v1365 = v734;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              v664 = 0;
              v1364 = v1270;
              v1365 = v736;
              sub_1B03949FC(&v1364, &v1368, &v1367, &v1366);
              _os_log_impl(&dword_1B0389000, v739, v740, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u: Nothing missing.", v684, 0x31u);
              sub_1B03998A8(v685, 0, v683);
              sub_1B03998A8(v686, 1, MEMORY[0x1E69E7CA0] + 8);
              sub_1B0E45D58();
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v739);
          (*(v1324 + 8))(v1329, v1323);
        }

        else
        {
          (*(v1324 + 16))(v1327, v1322, v1323);
          sub_1B074B69C(v1322, v1319);
          sub_1B074B69C(v1319, v1317);
          sub_1B074E41C(v1319, v1315);
          v480 = (v1317 + *(v1313 + 20));
          v602 = *v480;
          v603 = *(v480 + 1);
          v604 = *(v480 + 1);
          v605 = *(v480 + 4);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B074B764(v1317);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v601 = 36;
          v629 = 7;
          v481 = swift_allocObject();
          v482 = v603;
          v483 = v604;
          v484 = v605;
          v610 = v481;
          *(v481 + 16) = v602;
          *(v481 + 20) = v482;
          *(v481 + 24) = v483;
          *(v481 + 32) = v484;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v485 = swift_allocObject();
          v486 = v603;
          v487 = v604;
          v488 = v605;
          v600 = v485;
          *(v485 + 16) = v602;
          *(v485 + 20) = v486;
          *(v485 + 24) = v487;
          *(v485 + 32) = v488;

          v628 = 32;
          v489 = swift_allocObject();
          v490 = v600;
          v614 = v489;
          *(v489 + 16) = v1191;
          *(v489 + 24) = v490;
          sub_1B0394868();
          sub_1B0394868();

          v491 = swift_allocObject();
          v492 = v603;
          v493 = v604;
          v494 = v605;
          v495 = v491;
          v496 = v1315;
          v618 = v495;
          *(v495 + 16) = v602;
          *(v495 + 20) = v492;
          *(v495 + 24) = v493;
          *(v495 + 32) = v494;
          sub_1B074B764(v496);
          v606 = swift_allocObject();
          *(v606 + 16) = v1320;

          v497 = swift_allocObject();
          v498 = v606;
          v621 = v497;
          *(v497 + 16) = v1192;
          *(v497 + 24) = v498;

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v616 = 24;
          v607 = swift_allocObject();
          *(v607 + 16) = v835;

          v499 = swift_allocObject();
          v500 = v607;
          v623 = v499;
          *(v499 + 16) = v1193;
          *(v499 + 24) = v500;

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v608 = swift_allocObject();
          *(v608 + 16) = v745;

          v501 = swift_allocObject();
          v502 = v608;
          v630 = v501;
          *(v501 + 16) = v1194;
          *(v501 + 24) = v502;

          v662 = sub_1B0E43988();
          v663 = sub_1B0E45908();
          v626 = 17;
          v632 = swift_allocObject();
          v612 = 16;
          *(v632 + 16) = 16;
          v633 = swift_allocObject();
          v620 = 4;
          *(v633 + 16) = 4;
          v503 = swift_allocObject();
          v609 = v503;
          *(v503 + 16) = v1082;
          *(v503 + 24) = 0;
          v504 = swift_allocObject();
          v505 = v609;
          v634 = v504;
          *(v504 + 16) = v1195;
          *(v504 + 24) = v505;
          v635 = swift_allocObject();
          *(v635 + 16) = 0;
          v636 = swift_allocObject();
          *(v636 + 16) = 1;
          v506 = swift_allocObject();
          v507 = v610;
          v611 = v506;
          *(v506 + 16) = v1196;
          *(v506 + 24) = v507;
          v508 = swift_allocObject();
          v509 = v611;
          v637 = v508;
          *(v508 + 16) = v1197;
          *(v508 + 24) = v509;
          v638 = swift_allocObject();
          *(v638 + 16) = v612;
          v639 = swift_allocObject();
          *(v639 + 16) = v620;
          v510 = swift_allocObject();
          v613 = v510;
          *(v510 + 16) = v1086;
          *(v510 + 24) = 0;
          v511 = swift_allocObject();
          v512 = v613;
          v640 = v511;
          *(v511 + 16) = v1198;
          *(v511 + 24) = v512;
          v641 = swift_allocObject();
          *(v641 + 16) = 0;
          v642 = swift_allocObject();
          *(v642 + 16) = v620;
          v513 = swift_allocObject();
          v514 = v614;
          v615 = v513;
          *(v513 + 16) = v1199;
          *(v513 + 24) = v514;
          v515 = swift_allocObject();
          v516 = v615;
          v643 = v515;
          *(v515 + 16) = v1200;
          *(v515 + 24) = v516;
          v644 = swift_allocObject();
          *(v644 + 16) = 112;
          v645 = swift_allocObject();
          v627 = 8;
          *(v645 + 16) = 8;
          v617 = swift_allocObject();
          *(v617 + 16) = v1090;
          v517 = swift_allocObject();
          v518 = v617;
          v646 = v517;
          *(v517 + 16) = v1201;
          *(v517 + 24) = v518;
          v647 = swift_allocObject();
          *(v647 + 16) = 37;
          v648 = swift_allocObject();
          *(v648 + 16) = v627;
          v519 = swift_allocObject();
          v520 = v618;
          v619 = v519;
          *(v519 + 16) = v1202;
          *(v519 + 24) = v520;
          v521 = swift_allocObject();
          v522 = v619;
          v649 = v521;
          *(v521 + 16) = v1203;
          *(v521 + 24) = v522;
          v650 = swift_allocObject();
          *(v650 + 16) = 0;
          v651 = swift_allocObject();
          *(v651 + 16) = v620;
          v523 = swift_allocObject();
          v524 = v621;
          v622 = v523;
          *(v523 + 16) = v1204;
          *(v523 + 24) = v524;
          v525 = swift_allocObject();
          v526 = v622;
          v652 = v525;
          *(v525 + 16) = v1205;
          *(v525 + 24) = v526;
          v653 = swift_allocObject();
          v625 = 34;
          *(v653 + 16) = 34;
          v654 = swift_allocObject();
          *(v654 + 16) = v627;
          v527 = swift_allocObject();
          v528 = v623;
          v624 = v527;
          *(v527 + 16) = v1206;
          *(v527 + 24) = v528;
          v529 = swift_allocObject();
          v530 = v624;
          v655 = v529;
          *(v529 + 16) = v1207;
          *(v529 + 24) = v530;
          v656 = swift_allocObject();
          *(v656 + 16) = v625;
          v657 = swift_allocObject();
          *(v657 + 16) = v627;
          v531 = swift_allocObject();
          v532 = v630;
          v631 = v531;
          *(v531 + 16) = v1208;
          *(v531 + 24) = v532;
          v533 = swift_allocObject();
          v534 = v631;
          v659 = v533;
          *(v533 + 16) = v1209;
          *(v533 + 24) = v534;
          v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v658 = sub_1B0E46A48();
          v660 = v535;

          v536 = v632;
          v537 = v660;
          *v660 = v1210;
          v537[1] = v536;

          v538 = v633;
          v539 = v660;
          v660[2] = v1211;
          v539[3] = v538;

          v540 = v634;
          v541 = v660;
          v660[4] = v1212;
          v541[5] = v540;

          v542 = v635;
          v543 = v660;
          v660[6] = v1213;
          v543[7] = v542;

          v544 = v636;
          v545 = v660;
          v660[8] = v1214;
          v545[9] = v544;

          v546 = v637;
          v547 = v660;
          v660[10] = v1215;
          v547[11] = v546;

          v548 = v638;
          v549 = v660;
          v660[12] = v1216;
          v549[13] = v548;

          v550 = v639;
          v551 = v660;
          v660[14] = v1217;
          v551[15] = v550;

          v552 = v640;
          v553 = v660;
          v660[16] = v1218;
          v553[17] = v552;

          v554 = v641;
          v555 = v660;
          v660[18] = v1219;
          v555[19] = v554;

          v556 = v642;
          v557 = v660;
          v660[20] = v1220;
          v557[21] = v556;

          v558 = v643;
          v559 = v660;
          v660[22] = v1221;
          v559[23] = v558;

          v560 = v644;
          v561 = v660;
          v660[24] = v1222;
          v561[25] = v560;

          v562 = v645;
          v563 = v660;
          v660[26] = v1223;
          v563[27] = v562;

          v564 = v646;
          v565 = v660;
          v660[28] = v1224;
          v565[29] = v564;

          v566 = v647;
          v567 = v660;
          v660[30] = v1225;
          v567[31] = v566;

          v568 = v648;
          v569 = v660;
          v660[32] = v1226;
          v569[33] = v568;

          v570 = v649;
          v571 = v660;
          v660[34] = v1227;
          v571[35] = v570;

          v572 = v650;
          v573 = v660;
          v660[36] = v1228;
          v573[37] = v572;

          v574 = v651;
          v575 = v660;
          v660[38] = v1229;
          v575[39] = v574;

          v576 = v652;
          v577 = v660;
          v660[40] = v1230;
          v577[41] = v576;

          v578 = v653;
          v579 = v660;
          v660[42] = v1231;
          v579[43] = v578;

          v580 = v654;
          v581 = v660;
          v660[44] = v1232;
          v581[45] = v580;

          v582 = v655;
          v583 = v660;
          v660[46] = v1233;
          v583[47] = v582;

          v584 = v656;
          v585 = v660;
          v660[48] = v1234;
          v585[49] = v584;

          v586 = v657;
          v587 = v660;
          v660[50] = v1235;
          v587[51] = v586;

          v588 = v659;
          v589 = v660;
          v660[52] = v1236;
          v589[53] = v588;
          sub_1B0394964();

          if (os_log_type_enabled(v662, v663))
          {
            v590 = v1311;
            v593 = sub_1B0E45D78();
            v592 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v594 = sub_1B03949A8(0, v592, v592);
            v595 = sub_1B03949A8(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v596 = v1373;
            v1373[0] = v593;
            v597 = &v1372;
            v1372 = v594;
            v598 = &v1371;
            v1371 = v595;
            sub_1B0394A48(3, v1373);
            sub_1B0394A48(9, v596);
            v1369 = v1210;
            v1370 = v632;
            sub_1B03949FC(&v1369, v596, v597, v598);
            v599 = v590;
            if (v590)
            {

              __break(1u);
            }

            else
            {
              v1369 = v1211;
              v1370 = v633;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[25] = 0;
              v1369 = v1212;
              v1370 = v634;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[24] = 0;
              v1369 = v1213;
              v1370 = v635;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[23] = 0;
              v1369 = v1214;
              v1370 = v636;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[22] = 0;
              v1369 = v1215;
              v1370 = v637;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[21] = 0;
              v1369 = v1216;
              v1370 = v638;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[20] = 0;
              v1369 = v1217;
              v1370 = v639;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[19] = 0;
              v1369 = v1218;
              v1370 = v640;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[18] = 0;
              v1369 = v1219;
              v1370 = v641;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[17] = 0;
              v1369 = v1220;
              v1370 = v642;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[16] = 0;
              v1369 = v1221;
              v1370 = v643;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[15] = 0;
              v1369 = v1222;
              v1370 = v644;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[14] = 0;
              v1369 = v1223;
              v1370 = v645;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[13] = 0;
              v1369 = v1224;
              v1370 = v646;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[12] = 0;
              v1369 = v1225;
              v1370 = v647;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[11] = 0;
              v1369 = v1226;
              v1370 = v648;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[10] = 0;
              v1369 = v1227;
              v1370 = v649;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[9] = 0;
              v1369 = v1228;
              v1370 = v650;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[8] = 0;
              v1369 = v1229;
              v1370 = v651;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[7] = 0;
              v1369 = v1230;
              v1370 = v652;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[6] = 0;
              v1369 = v1231;
              v1370 = v653;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[5] = 0;
              v1369 = v1232;
              v1370 = v654;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[4] = 0;
              v1369 = v1233;
              v1370 = v655;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[3] = 0;
              v1369 = v1234;
              v1370 = v656;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[2] = 0;
              v1369 = v1235;
              v1370 = v657;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              v591[1] = 0;
              v1369 = v1236;
              v1370 = v659;
              sub_1B03949FC(&v1369, v1373, &v1372, &v1371);
              _os_log_impl(&dword_1B0389000, v662, v663, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u: Missing non-attachment {%{public}s}, missing attachment {%{public}s}.", v593, 0x45u);
              sub_1B03998A8(v594, 0, v592);
              sub_1B03998A8(v595, 3, MEMORY[0x1E69E7CA0] + 8);
              sub_1B0E45D58();
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v662);
          (*(v1324 + 8))(v1327, v1323);
        }
      }

      else
      {
        v1362 = v835;
        (*(v1324 + 16))(v1331, v1322, v1323);
        sub_1B074B69C(v1322, v1319);
        sub_1B074B69C(v1319, v1317);
        sub_1B074E41C(v1319, v1315);
        v294 = (v1317 + *(v1313 + 20));
        v779 = *v294;
        v780 = *(v294 + 1);
        v781 = *(v294 + 1);
        v782 = *(v294 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v1317);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v778 = 36;
        v801 = 7;
        v295 = swift_allocObject();
        v296 = v780;
        v297 = v781;
        v298 = v782;
        v786 = v295;
        *(v295 + 16) = v779;
        *(v295 + 20) = v296;
        *(v295 + 24) = v297;
        *(v295 + 32) = v298;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v299 = swift_allocObject();
        v300 = v780;
        v301 = v781;
        v302 = v782;
        v777 = v299;
        *(v299 + 16) = v779;
        *(v299 + 20) = v300;
        *(v299 + 24) = v301;
        *(v299 + 32) = v302;

        v800 = 32;
        v303 = swift_allocObject();
        v304 = v777;
        v790 = v303;
        *(v303 + 16) = v1271;
        *(v303 + 24) = v304;
        sub_1B0394868();
        sub_1B0394868();

        v305 = swift_allocObject();
        v306 = v780;
        v307 = v781;
        v308 = v782;
        v309 = v305;
        v310 = v1315;
        v793 = v309;
        *(v309 + 16) = v779;
        *(v309 + 20) = v306;
        *(v309 + 24) = v307;
        *(v309 + 32) = v308;
        sub_1B074B764(v310);
        v783 = swift_allocObject();
        *(v783 + 16) = v1320;

        v311 = swift_allocObject();
        v312 = v783;
        v796 = v311;
        *(v311 + 16) = v1272;
        *(v311 + 24) = v312;

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v804 = 24;
        v784 = swift_allocObject();
        *(v784 + 16) = v835;

        v313 = swift_allocObject();
        v314 = v784;
        v802 = v313;
        *(v313 + 16) = v1273;
        *(v313 + 24) = v314;

        v832 = sub_1B0E43988();
        v833 = sub_1B0E45908();
        v798 = 17;
        v805 = swift_allocObject();
        v788 = 16;
        *(v805 + 16) = 16;
        v806 = swift_allocObject();
        v795 = 4;
        *(v806 + 16) = 4;
        v315 = swift_allocObject();
        v785 = v315;
        *(v315 + 16) = v1082;
        *(v315 + 24) = 0;
        v316 = swift_allocObject();
        v317 = v785;
        v807 = v316;
        *(v316 + 16) = v1274;
        *(v316 + 24) = v317;
        v808 = swift_allocObject();
        *(v808 + 16) = 0;
        v809 = swift_allocObject();
        *(v809 + 16) = 1;
        v318 = swift_allocObject();
        v319 = v786;
        v787 = v318;
        *(v318 + 16) = v1275;
        *(v318 + 24) = v319;
        v320 = swift_allocObject();
        v321 = v787;
        v810 = v320;
        *(v320 + 16) = v1276;
        *(v320 + 24) = v321;
        v811 = swift_allocObject();
        *(v811 + 16) = v788;
        v812 = swift_allocObject();
        *(v812 + 16) = v795;
        v322 = swift_allocObject();
        v789 = v322;
        *(v322 + 16) = v1086;
        *(v322 + 24) = 0;
        v323 = swift_allocObject();
        v324 = v789;
        v813 = v323;
        *(v323 + 16) = v1277;
        *(v323 + 24) = v324;
        v814 = swift_allocObject();
        *(v814 + 16) = 0;
        v815 = swift_allocObject();
        *(v815 + 16) = v795;
        v325 = swift_allocObject();
        v326 = v790;
        v791 = v325;
        *(v325 + 16) = v1278;
        *(v325 + 24) = v326;
        v327 = swift_allocObject();
        v328 = v791;
        v816 = v327;
        *(v327 + 16) = v1279;
        *(v327 + 24) = v328;
        v817 = swift_allocObject();
        *(v817 + 16) = 112;
        v818 = swift_allocObject();
        v799 = 8;
        *(v818 + 16) = 8;
        v792 = swift_allocObject();
        *(v792 + 16) = v1090;
        v329 = swift_allocObject();
        v330 = v792;
        v819 = v329;
        *(v329 + 16) = v1280;
        *(v329 + 24) = v330;
        v820 = swift_allocObject();
        *(v820 + 16) = 37;
        v821 = swift_allocObject();
        *(v821 + 16) = v799;
        v331 = swift_allocObject();
        v332 = v793;
        v794 = v331;
        *(v331 + 16) = v1281;
        *(v331 + 24) = v332;
        v333 = swift_allocObject();
        v334 = v794;
        v822 = v333;
        *(v333 + 16) = v1282;
        *(v333 + 24) = v334;
        v823 = swift_allocObject();
        *(v823 + 16) = 0;
        v824 = swift_allocObject();
        *(v824 + 16) = v795;
        v335 = swift_allocObject();
        v336 = v796;
        v797 = v335;
        *(v335 + 16) = v1283;
        *(v335 + 24) = v336;
        v337 = swift_allocObject();
        v338 = v797;
        v825 = v337;
        *(v337 + 16) = v1284;
        *(v337 + 24) = v338;
        v826 = swift_allocObject();
        *(v826 + 16) = 34;
        v827 = swift_allocObject();
        *(v827 + 16) = v799;
        v339 = swift_allocObject();
        v340 = v802;
        v803 = v339;
        *(v339 + 16) = v1285;
        *(v339 + 24) = v340;
        v341 = swift_allocObject();
        v342 = v803;
        v829 = v341;
        *(v341 + 16) = v1286;
        *(v341 + 24) = v342;
        v831 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v828 = sub_1B0E46A48();
        v830 = v343;

        v344 = v805;
        v345 = v830;
        *v830 = v1287;
        v345[1] = v344;

        v346 = v806;
        v347 = v830;
        v830[2] = v1288;
        v347[3] = v346;

        v348 = v807;
        v349 = v830;
        v830[4] = v1289;
        v349[5] = v348;

        v350 = v808;
        v351 = v830;
        v830[6] = v1290;
        v351[7] = v350;

        v352 = v809;
        v353 = v830;
        v830[8] = v1291;
        v353[9] = v352;

        v354 = v810;
        v355 = v830;
        v830[10] = v1292;
        v355[11] = v354;

        v356 = v811;
        v357 = v830;
        v830[12] = v1293;
        v357[13] = v356;

        v358 = v812;
        v359 = v830;
        v830[14] = v1294;
        v359[15] = v358;

        v360 = v813;
        v361 = v830;
        v830[16] = v1295;
        v361[17] = v360;

        v362 = v814;
        v363 = v830;
        v830[18] = v1296;
        v363[19] = v362;

        v364 = v815;
        v365 = v830;
        v830[20] = v1297;
        v365[21] = v364;

        v366 = v816;
        v367 = v830;
        v830[22] = v1298;
        v367[23] = v366;

        v368 = v817;
        v369 = v830;
        v830[24] = v1299;
        v369[25] = v368;

        v370 = v818;
        v371 = v830;
        v830[26] = v1300;
        v371[27] = v370;

        v372 = v819;
        v373 = v830;
        v830[28] = v1301;
        v373[29] = v372;

        v374 = v820;
        v375 = v830;
        v830[30] = v1302;
        v375[31] = v374;

        v376 = v821;
        v377 = v830;
        v830[32] = v1303;
        v377[33] = v376;

        v378 = v822;
        v379 = v830;
        v830[34] = v1304;
        v379[35] = v378;

        v380 = v823;
        v381 = v830;
        v830[36] = v1305;
        v381[37] = v380;

        v382 = v824;
        v383 = v830;
        v830[38] = v1306;
        v383[39] = v382;

        v384 = v825;
        v385 = v830;
        v830[40] = v1307;
        v385[41] = v384;

        v386 = v826;
        v387 = v830;
        v830[42] = v1308;
        v387[43] = v386;

        v388 = v827;
        v389 = v830;
        v830[44] = v1309;
        v389[45] = v388;

        v390 = v829;
        v391 = v830;
        v830[46] = v1310;
        v391[47] = v390;
        sub_1B0394964();

        if (os_log_type_enabled(v832, v833))
        {
          v392 = v1311;
          v770 = sub_1B0E45D78();
          v769 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v771 = sub_1B03949A8(0, v769, v769);
          v772 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v773 = &v1361;
          v1361 = v770;
          v774 = &v1360;
          v1360 = v771;
          v775 = &v1359;
          v1359 = v772;
          sub_1B0394A48(3, &v1361);
          sub_1B0394A48(8, v773);
          v1357 = v1287;
          v1358 = v805;
          sub_1B03949FC(&v1357, v773, v774, v775);
          v776 = v392;
          if (v392)
          {

            __break(1u);
          }

          else
          {
            v1357 = v1288;
            v1358 = v806;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v768 = 0;
            v1357 = v1289;
            v1358 = v807;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v767 = 0;
            v1357 = v1290;
            v1358 = v808;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v766 = 0;
            v1357 = v1291;
            v1358 = v809;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v765 = 0;
            v1357 = v1292;
            v1358 = v810;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v764 = 0;
            v1357 = v1293;
            v1358 = v811;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v763 = 0;
            v1357 = v1294;
            v1358 = v812;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v762 = 0;
            v1357 = v1295;
            v1358 = v813;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v761 = 0;
            v1357 = v1296;
            v1358 = v814;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v760 = 0;
            v1357 = v1297;
            v1358 = v815;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v759 = 0;
            v1357 = v1298;
            v1358 = v816;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v758 = 0;
            v1357 = v1299;
            v1358 = v817;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v757 = 0;
            v1357 = v1300;
            v1358 = v818;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v756 = 0;
            v1357 = v1301;
            v1358 = v819;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v755 = 0;
            v1357 = v1302;
            v1358 = v820;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v754 = 0;
            v1357 = v1303;
            v1358 = v821;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v753 = 0;
            v1357 = v1304;
            v1358 = v822;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v752 = 0;
            v1357 = v1305;
            v1358 = v823;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v751 = 0;
            v1357 = v1306;
            v1358 = v824;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v750 = 0;
            v1357 = v1307;
            v1358 = v825;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v749 = 0;
            v1357 = v1308;
            v1358 = v826;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v748 = 0;
            v1357 = v1309;
            v1358 = v827;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            v747 = 0;
            v1357 = v1310;
            v1358 = v829;
            sub_1B03949FC(&v1357, &v1361, &v1360, &v1359);
            _os_log_impl(&dword_1B0389000, v832, v833, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u: Missing non-attachment {%{public}s}, missing attachment parts are unknown.", v770, 0x3Bu);
            sub_1B03998A8(v771, 0, v769);
            sub_1B03998A8(v772, 2, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v832);
        (*(v1324 + 8))(v1331, v1323);
      }
    }
  }

  else if (v1339)
  {
    v1001 = v1339;
    v873 = v1339;
    v1356 = v1339;
    (*(v1324 + 16))(v1333, v1322, v1323);
    sub_1B074B69C(v1322, v1319);
    sub_1B074B69C(v1319, v1317);
    sub_1B074E41C(v1319, v1315);
    v195 = (v1317 + *(v1313 + 20));
    v868 = *v195;
    v869 = *(v195 + 1);
    v870 = *(v195 + 1);
    v871 = *(v195 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1317);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v867 = 36;
    v891 = 7;
    v196 = swift_allocObject();
    v197 = v869;
    v198 = v870;
    v199 = v871;
    v876 = v196;
    *(v196 + 16) = v868;
    *(v196 + 20) = v197;
    *(v196 + 24) = v198;
    *(v196 + 32) = v199;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v200 = swift_allocObject();
    v201 = v869;
    v202 = v870;
    v203 = v871;
    v866 = v200;
    *(v200 + 16) = v868;
    *(v200 + 20) = v201;
    *(v200 + 24) = v202;
    *(v200 + 32) = v203;

    v890 = 32;
    v204 = swift_allocObject();
    v205 = v866;
    v880 = v204;
    *(v204 + 16) = v1117;
    *(v204 + 24) = v205;
    sub_1B0394868();
    sub_1B0394868();

    v206 = swift_allocObject();
    v207 = v869;
    v208 = v870;
    v209 = v871;
    v210 = v206;
    v211 = v1315;
    v883 = v210;
    *(v210 + 16) = v868;
    *(v210 + 20) = v207;
    *(v210 + 24) = v208;
    *(v210 + 32) = v209;
    sub_1B074B764(v211);
    v872 = swift_allocObject();
    *(v872 + 16) = v1320;

    v212 = swift_allocObject();
    v213 = v872;
    v886 = v212;
    *(v212 + 16) = v1118;
    *(v212 + 24) = v213;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v894 = 24;
    v874 = swift_allocObject();
    *(v874 + 16) = v873;

    v214 = swift_allocObject();
    v215 = v874;
    v892 = v214;
    *(v214 + 16) = v1119;
    *(v214 + 24) = v215;

    v922 = sub_1B0E43988();
    v923 = sub_1B0E45908();
    v888 = 17;
    v895 = swift_allocObject();
    v878 = 16;
    *(v895 + 16) = 16;
    v896 = swift_allocObject();
    v885 = 4;
    *(v896 + 16) = 4;
    v216 = swift_allocObject();
    v875 = v216;
    *(v216 + 16) = v1082;
    *(v216 + 24) = 0;
    v217 = swift_allocObject();
    v218 = v875;
    v897 = v217;
    *(v217 + 16) = v1120;
    *(v217 + 24) = v218;
    v898 = swift_allocObject();
    *(v898 + 16) = 0;
    v899 = swift_allocObject();
    *(v899 + 16) = 1;
    v219 = swift_allocObject();
    v220 = v876;
    v877 = v219;
    *(v219 + 16) = v1121;
    *(v219 + 24) = v220;
    v221 = swift_allocObject();
    v222 = v877;
    v900 = v221;
    *(v221 + 16) = v1122;
    *(v221 + 24) = v222;
    v901 = swift_allocObject();
    *(v901 + 16) = v878;
    v902 = swift_allocObject();
    *(v902 + 16) = v885;
    v223 = swift_allocObject();
    v879 = v223;
    *(v223 + 16) = v1086;
    *(v223 + 24) = 0;
    v224 = swift_allocObject();
    v225 = v879;
    v903 = v224;
    *(v224 + 16) = v1123;
    *(v224 + 24) = v225;
    v904 = swift_allocObject();
    *(v904 + 16) = 0;
    v905 = swift_allocObject();
    *(v905 + 16) = v885;
    v226 = swift_allocObject();
    v227 = v880;
    v881 = v226;
    *(v226 + 16) = v1124;
    *(v226 + 24) = v227;
    v228 = swift_allocObject();
    v229 = v881;
    v906 = v228;
    *(v228 + 16) = v1125;
    *(v228 + 24) = v229;
    v907 = swift_allocObject();
    *(v907 + 16) = 112;
    v908 = swift_allocObject();
    v889 = 8;
    *(v908 + 16) = 8;
    v882 = swift_allocObject();
    *(v882 + 16) = v1090;
    v230 = swift_allocObject();
    v231 = v882;
    v909 = v230;
    *(v230 + 16) = v1126;
    *(v230 + 24) = v231;
    v910 = swift_allocObject();
    *(v910 + 16) = 37;
    v911 = swift_allocObject();
    *(v911 + 16) = v889;
    v232 = swift_allocObject();
    v233 = v883;
    v884 = v232;
    *(v232 + 16) = v1127;
    *(v232 + 24) = v233;
    v234 = swift_allocObject();
    v235 = v884;
    v912 = v234;
    *(v234 + 16) = v1128;
    *(v234 + 24) = v235;
    v913 = swift_allocObject();
    *(v913 + 16) = 0;
    v914 = swift_allocObject();
    *(v914 + 16) = v885;
    v236 = swift_allocObject();
    v237 = v886;
    v887 = v236;
    *(v236 + 16) = v1129;
    *(v236 + 24) = v237;
    v238 = swift_allocObject();
    v239 = v887;
    v915 = v238;
    *(v238 + 16) = v1130;
    *(v238 + 24) = v239;
    v916 = swift_allocObject();
    *(v916 + 16) = 34;
    v917 = swift_allocObject();
    *(v917 + 16) = v889;
    v240 = swift_allocObject();
    v241 = v892;
    v893 = v240;
    *(v240 + 16) = v1131;
    *(v240 + 24) = v241;
    v242 = swift_allocObject();
    v243 = v893;
    v919 = v242;
    *(v242 + 16) = v1132;
    *(v242 + 24) = v243;
    v921 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v918 = sub_1B0E46A48();
    v920 = v244;

    v245 = v895;
    v246 = v920;
    *v920 = v1133;
    v246[1] = v245;

    v247 = v896;
    v248 = v920;
    v920[2] = v1134;
    v248[3] = v247;

    v249 = v897;
    v250 = v920;
    v920[4] = v1135;
    v250[5] = v249;

    v251 = v898;
    v252 = v920;
    v920[6] = v1136;
    v252[7] = v251;

    v253 = v899;
    v254 = v920;
    v920[8] = v1137;
    v254[9] = v253;

    v255 = v900;
    v256 = v920;
    v920[10] = v1138;
    v256[11] = v255;

    v257 = v901;
    v258 = v920;
    v920[12] = v1139;
    v258[13] = v257;

    v259 = v902;
    v260 = v920;
    v920[14] = v1140;
    v260[15] = v259;

    v261 = v903;
    v262 = v920;
    v920[16] = v1141;
    v262[17] = v261;

    v263 = v904;
    v264 = v920;
    v920[18] = v1142;
    v264[19] = v263;

    v265 = v905;
    v266 = v920;
    v920[20] = v1143;
    v266[21] = v265;

    v267 = v906;
    v268 = v920;
    v920[22] = v1144;
    v268[23] = v267;

    v269 = v907;
    v270 = v920;
    v920[24] = v1145;
    v270[25] = v269;

    v271 = v908;
    v272 = v920;
    v920[26] = v1146;
    v272[27] = v271;

    v273 = v909;
    v274 = v920;
    v920[28] = v1147;
    v274[29] = v273;

    v275 = v910;
    v276 = v920;
    v920[30] = v1148;
    v276[31] = v275;

    v277 = v911;
    v278 = v920;
    v920[32] = v1149;
    v278[33] = v277;

    v279 = v912;
    v280 = v920;
    v920[34] = v1150;
    v280[35] = v279;

    v281 = v913;
    v282 = v920;
    v920[36] = v1151;
    v282[37] = v281;

    v283 = v914;
    v284 = v920;
    v920[38] = v1152;
    v284[39] = v283;

    v285 = v915;
    v286 = v920;
    v920[40] = v1153;
    v286[41] = v285;

    v287 = v916;
    v288 = v920;
    v920[42] = v1154;
    v288[43] = v287;

    v289 = v917;
    v290 = v920;
    v920[44] = v1155;
    v290[45] = v289;

    v291 = v919;
    v292 = v920;
    v920[46] = v1156;
    v292[47] = v291;
    sub_1B0394964();

    if (os_log_type_enabled(v922, v923))
    {
      v293 = v1311;
      v859 = sub_1B0E45D78();
      v858 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v860 = sub_1B03949A8(0, v858, v858);
      v861 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v862 = &v1355;
      v1355 = v859;
      v863 = &v1354;
      v1354 = v860;
      v864 = &v1353;
      v1353 = v861;
      sub_1B0394A48(3, &v1355);
      sub_1B0394A48(8, v862);
      v1351 = v1133;
      v1352 = v895;
      sub_1B03949FC(&v1351, v862, v863, v864);
      v865 = v293;
      if (v293)
      {

        __break(1u);
      }

      else
      {
        v1351 = v1134;
        v1352 = v896;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v857 = 0;
        v1351 = v1135;
        v1352 = v897;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v856 = 0;
        v1351 = v1136;
        v1352 = v898;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v855 = 0;
        v1351 = v1137;
        v1352 = v899;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v854 = 0;
        v1351 = v1138;
        v1352 = v900;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v853 = 0;
        v1351 = v1139;
        v1352 = v901;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v852 = 0;
        v1351 = v1140;
        v1352 = v902;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v851 = 0;
        v1351 = v1141;
        v1352 = v903;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v850 = 0;
        v1351 = v1142;
        v1352 = v904;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v849 = 0;
        v1351 = v1143;
        v1352 = v905;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v848 = 0;
        v1351 = v1144;
        v1352 = v906;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v847 = 0;
        v1351 = v1145;
        v1352 = v907;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v846 = 0;
        v1351 = v1146;
        v1352 = v908;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v845 = 0;
        v1351 = v1147;
        v1352 = v909;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v844 = 0;
        v1351 = v1148;
        v1352 = v910;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v843 = 0;
        v1351 = v1149;
        v1352 = v911;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v842 = 0;
        v1351 = v1150;
        v1352 = v912;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v841 = 0;
        v1351 = v1151;
        v1352 = v913;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v840 = 0;
        v1351 = v1152;
        v1352 = v914;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v839 = 0;
        v1351 = v1153;
        v1352 = v915;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v838 = 0;
        v1351 = v1154;
        v1352 = v916;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v837 = 0;
        v1351 = v1155;
        v1352 = v917;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        v836 = 0;
        v1351 = v1156;
        v1352 = v919;
        sub_1B03949FC(&v1351, &v1355, &v1354, &v1353);
        _os_log_impl(&dword_1B0389000, v922, v923, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u: Missing non-attachment are unknown, missing attachment {%{public}s}.", v859, 0x3Bu);
        sub_1B03998A8(v860, 0, v858);
        sub_1B03998A8(v861, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v922);
    (*(v1324 + 8))(v1333, v1323);
  }

  else
  {
    (*(v1324 + 16))(v1336, v1322, v1323);
    sub_1B074B69C(v1322, v1319);
    sub_1B074B69C(v1319, v1317);
    sub_1B074E41C(v1319, v1315);
    v108 = (v1317 + *(v1313 + 20));
    v953 = *v108;
    v954 = *(v108 + 1);
    v955 = *(v108 + 1);
    v956 = *(v108 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1317);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v952 = 36;
    v972 = 7;
    v109 = swift_allocObject();
    v110 = v954;
    v111 = v955;
    v112 = v956;
    v959 = v109;
    *(v109 + 16) = v953;
    *(v109 + 20) = v110;
    *(v109 + 24) = v111;
    *(v109 + 32) = v112;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v113 = swift_allocObject();
    v114 = v954;
    v115 = v955;
    v116 = v956;
    v951 = v113;
    *(v113 + 16) = v953;
    *(v113 + 20) = v114;
    *(v113 + 24) = v115;
    *(v113 + 32) = v116;

    v971 = 32;
    v117 = swift_allocObject();
    v118 = v951;
    v963 = v117;
    *(v117 + 16) = v1157;
    *(v117 + 24) = v118;
    sub_1B0394868();
    sub_1B0394868();

    v119 = swift_allocObject();
    v120 = v954;
    v121 = v955;
    v122 = v956;
    v123 = v119;
    v124 = v1315;
    v967 = v123;
    *(v123 + 16) = v953;
    *(v123 + 20) = v120;
    *(v123 + 24) = v121;
    *(v123 + 32) = v122;
    sub_1B074B764(v124);
    v957 = swift_allocObject();
    *(v957 + 16) = v1320;

    v125 = swift_allocObject();
    v126 = v957;
    v973 = v125;
    *(v125 + 16) = v1158;
    *(v125 + 24) = v126;

    v999 = sub_1B0E43988();
    v1000 = sub_1B0E45908();
    v969 = 17;
    v975 = swift_allocObject();
    v961 = 16;
    *(v975 + 16) = 16;
    v976 = swift_allocObject();
    v970 = 4;
    *(v976 + 16) = 4;
    v127 = swift_allocObject();
    v958 = v127;
    *(v127 + 16) = v1082;
    *(v127 + 24) = 0;
    v128 = swift_allocObject();
    v129 = v958;
    v977 = v128;
    *(v128 + 16) = v1159;
    *(v128 + 24) = v129;
    v978 = swift_allocObject();
    *(v978 + 16) = 0;
    v979 = swift_allocObject();
    *(v979 + 16) = 1;
    v130 = swift_allocObject();
    v131 = v959;
    v960 = v130;
    *(v130 + 16) = v1160;
    *(v130 + 24) = v131;
    v132 = swift_allocObject();
    v133 = v960;
    v980 = v132;
    *(v132 + 16) = v1161;
    *(v132 + 24) = v133;
    v981 = swift_allocObject();
    *(v981 + 16) = v961;
    v982 = swift_allocObject();
    *(v982 + 16) = v970;
    v134 = swift_allocObject();
    v962 = v134;
    *(v134 + 16) = v1086;
    *(v134 + 24) = 0;
    v135 = swift_allocObject();
    v136 = v962;
    v983 = v135;
    *(v135 + 16) = v1162;
    *(v135 + 24) = v136;
    v984 = swift_allocObject();
    *(v984 + 16) = 0;
    v985 = swift_allocObject();
    *(v985 + 16) = v970;
    v137 = swift_allocObject();
    v138 = v963;
    v964 = v137;
    *(v137 + 16) = v1163;
    *(v137 + 24) = v138;
    v139 = swift_allocObject();
    v140 = v964;
    v986 = v139;
    *(v139 + 16) = v1164;
    *(v139 + 24) = v140;
    v987 = swift_allocObject();
    *(v987 + 16) = 112;
    v988 = swift_allocObject();
    v966 = 8;
    *(v988 + 16) = 8;
    v965 = swift_allocObject();
    *(v965 + 16) = v1090;
    v141 = swift_allocObject();
    v142 = v965;
    v989 = v141;
    *(v141 + 16) = v1165;
    *(v141 + 24) = v142;
    v990 = swift_allocObject();
    *(v990 + 16) = 37;
    v991 = swift_allocObject();
    *(v991 + 16) = v966;
    v143 = swift_allocObject();
    v144 = v967;
    v968 = v143;
    *(v143 + 16) = v1166;
    *(v143 + 24) = v144;
    v145 = swift_allocObject();
    v146 = v968;
    v992 = v145;
    *(v145 + 16) = v1167;
    *(v145 + 24) = v146;
    v993 = swift_allocObject();
    *(v993 + 16) = 0;
    v994 = swift_allocObject();
    *(v994 + 16) = v970;
    v147 = swift_allocObject();
    v148 = v973;
    v974 = v147;
    *(v147 + 16) = v1168;
    *(v147 + 24) = v148;
    v149 = swift_allocObject();
    v150 = v974;
    v996 = v149;
    *(v149 + 16) = v1169;
    *(v149 + 24) = v150;
    v998 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v995 = sub_1B0E46A48();
    v997 = v151;

    v152 = v975;
    v153 = v997;
    *v997 = v1170;
    v153[1] = v152;

    v154 = v976;
    v155 = v997;
    v997[2] = v1171;
    v155[3] = v154;

    v156 = v977;
    v157 = v997;
    v997[4] = v1172;
    v157[5] = v156;

    v158 = v978;
    v159 = v997;
    v997[6] = v1173;
    v159[7] = v158;

    v160 = v979;
    v161 = v997;
    v997[8] = v1174;
    v161[9] = v160;

    v162 = v980;
    v163 = v997;
    v997[10] = v1175;
    v163[11] = v162;

    v164 = v981;
    v165 = v997;
    v997[12] = v1176;
    v165[13] = v164;

    v166 = v982;
    v167 = v997;
    v997[14] = v1177;
    v167[15] = v166;

    v168 = v983;
    v169 = v997;
    v997[16] = v1178;
    v169[17] = v168;

    v170 = v984;
    v171 = v997;
    v997[18] = v1179;
    v171[19] = v170;

    v172 = v985;
    v173 = v997;
    v997[20] = v1180;
    v173[21] = v172;

    v174 = v986;
    v175 = v997;
    v997[22] = v1181;
    v175[23] = v174;

    v176 = v987;
    v177 = v997;
    v997[24] = v1182;
    v177[25] = v176;

    v178 = v988;
    v179 = v997;
    v997[26] = v1183;
    v179[27] = v178;

    v180 = v989;
    v181 = v997;
    v997[28] = v1184;
    v181[29] = v180;

    v182 = v990;
    v183 = v997;
    v997[30] = v1185;
    v183[31] = v182;

    v184 = v991;
    v185 = v997;
    v997[32] = v1186;
    v185[33] = v184;

    v186 = v992;
    v187 = v997;
    v997[34] = v1187;
    v187[35] = v186;

    v188 = v993;
    v189 = v997;
    v997[36] = v1188;
    v189[37] = v188;

    v190 = v994;
    v191 = v997;
    v997[38] = v1189;
    v191[39] = v190;

    v192 = v996;
    v193 = v997;
    v997[40] = v1190;
    v193[41] = v192;
    sub_1B0394964();

    if (os_log_type_enabled(v999, v1000))
    {
      v194 = v1311;
      v944 = sub_1B0E45D78();
      v943 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v945 = sub_1B03949A8(0, v943, v943);
      v946 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v947 = &v1350;
      v1350 = v944;
      v948 = &v1349;
      v1349 = v945;
      v949 = &v1348;
      v1348 = v946;
      sub_1B0394A48(3, &v1350);
      sub_1B0394A48(7, v947);
      v1346 = v1170;
      v1347 = v975;
      sub_1B03949FC(&v1346, v947, v948, v949);
      v950 = v194;
      if (v194)
      {

        __break(1u);
      }

      else
      {
        v1346 = v1171;
        v1347 = v976;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v942 = 0;
        v1346 = v1172;
        v1347 = v977;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v941 = 0;
        v1346 = v1173;
        v1347 = v978;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v940 = 0;
        v1346 = v1174;
        v1347 = v979;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v939 = 0;
        v1346 = v1175;
        v1347 = v980;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v938 = 0;
        v1346 = v1176;
        v1347 = v981;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v937 = 0;
        v1346 = v1177;
        v1347 = v982;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v936 = 0;
        v1346 = v1178;
        v1347 = v983;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v935 = 0;
        v1346 = v1179;
        v1347 = v984;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v934 = 0;
        v1346 = v1180;
        v1347 = v985;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v933 = 0;
        v1346 = v1181;
        v1347 = v986;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v932 = 0;
        v1346 = v1182;
        v1347 = v987;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v931 = 0;
        v1346 = v1183;
        v1347 = v988;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v930 = 0;
        v1346 = v1184;
        v1347 = v989;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v929 = 0;
        v1346 = v1185;
        v1347 = v990;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v928 = 0;
        v1346 = v1186;
        v1347 = v991;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v927 = 0;
        v1346 = v1187;
        v1347 = v992;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v926 = 0;
        v1346 = v1188;
        v1347 = v993;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v925 = 0;
        v1346 = v1189;
        v1347 = v994;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        v924 = 0;
        v1346 = v1190;
        v1347 = v996;
        sub_1B03949FC(&v1346, &v1350, &v1349, &v1348);
        _os_log_impl(&dword_1B0389000, v999, v1000, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u: Missing part(s) are unknown.", v944, 0x31u);
        sub_1B03998A8(v945, 0, v943);
        sub_1B03998A8(v946, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v999);
    return (*(v1324 + 8))(v1336, v1323);
  }
}